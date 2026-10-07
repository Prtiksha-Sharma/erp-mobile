import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_staff.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/error_view.dart';
import '../../../ui/widgets/external_link_button.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/school_admin_providers.dart';
import '../services/staff_directory_service.dart';
import 'school_admin_page_scaffold.dart';

/// The Employee Details tabs that hold multi-record data — web
/// QualificationTab / ExperienceTab / DocumentsTab / SalaryStructureTab and
/// their Add/Edit modals. School Admin always manages (canManage), so the
/// write controls are always shown.

String _sizeError(int bytes) => 'That file is ${(bytes / 1024).toStringAsFixed(0)} KB — the limit is 500 KB.';
const _typeError = 'Only JPG, PNG or PDF files are allowed.';
const _fileHint = 'Click to choose a file (JPG, PNG or PDF, max 500 KB)';

/// Shared tab frame: loading / error-with-retry / data, pull-to-refresh,
/// and the right-aligned primary button above the list.
class _RecordTab<T> extends StatelessWidget {
  const _RecordTab({
    required this.value,
    required this.loadingLabel,
    required this.onRetry,
    required this.onRefresh,
    required this.action,
    required this.builder,
  });

  final AsyncValue<T> value;
  final String loadingLabel;
  final VoidCallback onRetry;
  final Future<void> Function() onRefresh;
  final Widget action;
  final Widget Function(T data) builder;

  @override
  Widget build(BuildContext context) {
    return value.when(
      skipLoadingOnRefresh: true,
      loading: () => LoadingView(label: loadingLabel),
      error: (err, _) => ErrorView(message: describeError(err), onRetry: onRetry),
      data: (data) => ResponsiveListView(
        onRefresh: onRefresh,
        children: [
          Align(alignment: Alignment.centerRight, child: action),
          const SizedBox(height: 12),
          builder(data),
        ],
      ),
    );
  }
}

Widget _rowIcon(IconData icon, String tooltip, Color hover, VoidCallback onTap) => IconButton(
  tooltip: tooltip,
  onPressed: onTap,
  icon: Icon(icon, size: 20, color: AppColors.textMuted),
  style: IconButton.styleFrom(hoverColor: hover.withValues(alpha: 0.08)),
);

// ── Qualification ────────────────────────────────────────────────────────

class QualificationTab extends ConsumerWidget {
  const QualificationTab({super.key, required this.staffId});

  final String staffId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = staffQualificationsProvider(staffId);
    return _RecordTab<List<StaffQualification>>(
      value: ref.watch(provider),
      loadingLabel: 'Loading qualifications…',
      onRetry: () => ref.invalidate(provider),
      onRefresh: () => ref.refresh(provider.future).then<void>((_) {}, onError: (_) {}),
      action: FilledButton.icon(
        onPressed: () => _openQualification(context, staffId),
        icon: const Icon(Icons.add, size: 18),
        label: const Text('Add Qualification'),
      ),
      builder: (list) => list.isEmpty
          ? const SectionCard(
              child: EmptyState(
                icon: Icons.school_outlined,
                title: 'No qualifications added yet.',
                message: 'Click "Add Qualification" to record this employee\'s education history.',
              ),
            )
          : DividedCard(
              children: [for (final q in list) _QualificationRow(staffId: staffId, record: q)],
            ),
    );
  }
}

class _QualificationRow extends ConsumerWidget {
  const _QualificationRow({required this.staffId, required this.record});

  final String staffId;
  final StaffQualification record;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final r = record;
    final score = r.percentage != null
        ? '${r.percentage}%'
        : r.cgpa != null
        ? 'CGPA ${r.cgpa}'
        : ((r.grade?.isNotEmpty ?? false) ? r.grade : null);
    final years = [r.startYear, r.endYear ?? r.passingYear].whereType<int>().join(' – ');
    final yearScore = [if (years.isNotEmpty) years, ?score].join(' · ');
    final where = [r.institutionName, r.universityBoard].where((s) => s != null && s.isNotEmpty).join(', ');

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 14, 4, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  r.qualificationName,
                  style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                ),
                if (r.specialization?.isNotEmpty ?? false)
                  Text(r.specialization!, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                Text(
                  where.isEmpty ? 'Institution not provided' : where,
                  style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
                ),
                Text(
                  yearScore.isEmpty ? 'No year/score provided' : yearScore,
                  style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                ),
                if (r.certificateUrl != null)
                  ExternalLinkButton(
                    label: 'View Certificate',
                    url: r.certificateUrl!,
                    icon: Icons.description_outlined,
                  ),
              ],
            ),
          ),
          _rowIcon(
            Icons.edit_outlined,
            'Edit qualification',
            AppColors.primary,
            () => _openQualification(context, staffId, r),
          ),
          _rowIcon(Icons.delete_outline, 'Delete qualification', AppColors.danger, () {
            showConfirmDialog(
              context,
              title: 'Delete Qualification',
              confirmLabel: 'Delete',
              dangerous: true,
              message: 'Are you sure you want to delete "${r.qualificationName}"? This cannot be undone.',
              action: () async {
                final res = await StaffDirectoryService().deleteQualification(staffId, r.qualificationId);
                if (res case Err(:final failure)) return failureMessage(failure, 'Failed to delete qualification.');
                ref.invalidate(staffQualificationsProvider(staffId));
                return null;
              },
            );
          }),
        ],
      ),
    );
  }
}

Future<void> _openQualification(BuildContext context, String staffId, [StaffQualification? editing]) =>
    showAdminFormSheet<void>(context, (_) => _QualificationForm(staffId: staffId, editing: editing));

class _QualificationForm extends ConsumerStatefulWidget {
  const _QualificationForm({required this.staffId, this.editing});

  final String staffId;
  final StaffQualification? editing;

  @override
  ConsumerState<_QualificationForm> createState() => _QualificationFormState();
}

class _QualificationFormState extends ConsumerState<_QualificationForm> {
  late final Map<String, TextEditingController> _c = {
    'qualification_name': TextEditingController(text: widget.editing?.qualificationName),
    'specialization': TextEditingController(text: widget.editing?.specialization),
    'institution_name': TextEditingController(text: widget.editing?.institutionName),
    'university_board': TextEditingController(text: widget.editing?.universityBoard),
    'start_year': TextEditingController(text: widget.editing?.startYear?.toString()),
    'passing_year': TextEditingController(text: widget.editing?.passingYear?.toString()),
    'percentage': TextEditingController(text: widget.editing?.percentage),
    'cgpa': TextEditingController(text: widget.editing?.cgpa),
    'grade': TextEditingController(text: widget.editing?.grade),
  };
  UploadFile? _file;
  String? _fileError;
  bool _saving = false;
  String? _saveError;

  @override
  void dispose() {
    for (final c in _c.values) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _pick() async {
    final (file, error) = await pickUploadFile(
      mimeByExtension: staffFileMimeTypes,
      maxBytes: staffFileMaxBytes,
      typeError: _typeError,
      sizeError: _sizeError,
    );
    if (!mounted || (file == null && error == null)) return;
    setState(() {
      _fileError = error;
      if (file != null) _file = file;
    });
  }

  Future<void> _save() async {
    // The web's submit silently no-ops without a name.
    if (_c['qualification_name']!.text.trim().isEmpty) return;
    setState(() {
      _saving = true;
      _saveError = null;
    });
    final editing = widget.editing;
    final result = await StaffDirectoryService().saveQualification(
      widget.staffId,
      qualificationId: editing?.qualificationId,
      fields: {for (final e in _c.entries) e.key: e.value.text},
      certificate: _file,
    );
    if (!mounted) return;
    switch (result) {
      case Ok():
        ref.invalidate(staffQualificationsProvider(widget.staffId));
        Navigator.of(context).pop();
      case Err(:final failure):
        setState(() {
          _saving = false;
          _saveError = failureMessage(
            failure,
            editing == null ? 'Failed to add qualification.' : 'Failed to update qualification.',
          );
        });
    }
  }

  InputDecoration _d(String label, {String? hint}) =>
      InputDecoration(labelText: label, hintText: hint, border: const OutlineInputBorder());

  @override
  Widget build(BuildContext context) {
    const gap = SizedBox(height: 14);
    const number = TextInputType.numberWithOptions(decimal: true);
    final editing = widget.editing;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        SheetTitle(editing != null ? 'Edit Qualification' : 'Add Qualification'),
        TextField(
          controller: _c['qualification_name'],
          decoration: _d('Qualification Name *', hint: 'e.g. B.Ed, M.Sc Physics'),
        ),
        gap,
        TextField(
          controller: _c['specialization'],
          decoration: _d('Specialization', hint: 'e.g. Mathematics'),
        ),
        gap,
        TextField(controller: _c['institution_name'], decoration: _d('Institution Name')),
        gap,
        TextField(controller: _c['university_board'], decoration: _d('University / Board')),
        gap,
        FieldPair(
          first: TextField(
            controller: _c['start_year'],
            keyboardType: TextInputType.number,
            decoration: _d('Start Year'),
          ),
          second: TextField(
            controller: _c['passing_year'],
            keyboardType: TextInputType.number,
            decoration: _d('End / Passing Year'),
          ),
        ),
        gap,
        FieldPair(
          first: TextField(controller: _c['percentage'], keyboardType: number, decoration: _d('Percentage')),
          second: TextField(controller: _c['cgpa'], keyboardType: number, decoration: _d('CGPA')),
        ),
        gap,
        TextField(controller: _c['grade'], decoration: _d('Grade')),
        gap,
        FilePickBox(
          label: 'Certificate',
          text: _file?.name ?? editing?.certificateFileName ?? _fileHint,
          onTap: _saving ? null : _pick,
          errorText: _fileError,
        ),
        if (_saveError != null) ...[const SizedBox(height: 12), FormErrorText(_saveError!)],
        SheetActions(
          busy: _saving,
          onSubmit: _save,
          submitLabel: editing != null ? 'Save Changes' : 'Add Qualification',
        ),
      ],
    );
  }
}

// ── Experience ───────────────────────────────────────────────────────────

/// ExperienceTab/AddExperienceModal formatDuration: "2 yrs 3 mos",
/// "0 mos"; null when the range is incomplete or negative.
String? experienceDuration(DateTime? start, DateTime? end, bool isCurrent) {
  if (start == null) return null;
  final to = isCurrent ? DateTime.now() : end;
  if (to == null) return null;
  final months = (to.year - start.year) * 12 + (to.month - start.month);
  if (months < 0) return null;
  final years = months ~/ 12;
  final rem = months % 12;
  return [
    if (years > 0) '$years yr${years > 1 ? 's' : ''}',
    if (rem > 0 || years == 0) '$rem mo${rem != 1 ? 's' : ''}',
  ].join(' ');
}

class ExperienceTab extends ConsumerWidget {
  const ExperienceTab({super.key, required this.staffId});

  final String staffId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = staffExperienceProvider(staffId);
    return _RecordTab<List<StaffExperience>>(
      value: ref.watch(provider),
      loadingLabel: 'Loading experience…',
      onRetry: () => ref.invalidate(provider),
      onRefresh: () => ref.refresh(provider.future).then<void>((_) {}, onError: (_) {}),
      action: FilledButton.icon(
        onPressed: () => _openExperience(context, staffId),
        icon: const Icon(Icons.add, size: 18),
        label: const Text('Add Experience'),
      ),
      builder: (list) => list.isEmpty
          ? const SectionCard(
              child: EmptyState(
                icon: Icons.work_outline,
                title: 'No experience added yet.',
                message: 'Click "Add Experience" to record this employee\'s work history.',
              ),
            )
          : DividedCard(
              children: [for (final e in list) _ExperienceRow(staffId: staffId, record: e)],
            ),
    );
  }
}

class _ExperienceRow extends ConsumerWidget {
  const _ExperienceRow({required this.staffId, required this.record});

  final String staffId;
  final StaffExperience record;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final r = record;
    final duration = experienceDuration(r.startDate, r.endDate, r.isCurrent);
    final role = [r.designation, r.department].where((s) => s != null && s.isNotEmpty).join(' · ');
    final range =
        '${formatDate(r.startDate)} – ${r.isCurrent ? 'Present' : (r.endDate != null ? formatDate(r.endDate) : '—')}'
        '${duration != null ? ' · $duration' : ''}';

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 14, 4, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      r.organizationName,
                      style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                    ),
                    if (r.isCurrent) const StatusBadge(label: 'Current', variant: BadgeVariant.success),
                  ],
                ),
                if (r.designation?.isNotEmpty ?? false)
                  Text(role, style: const TextStyle(fontSize: 13, color: AppColors.textSecondary)),
                Text(range, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                if (r.responsibilities?.isNotEmpty ?? false) ...[
                  const SizedBox(height: 4),
                  Text(r.responsibilities!, style: const TextStyle(fontSize: 13, color: AppColors.textSecondary)),
                ],
                if (r.experienceLetterUrl != null)
                  ExternalLinkButton(
                    label: 'View Experience Letter',
                    url: r.experienceLetterUrl!,
                    icon: Icons.description_outlined,
                  ),
              ],
            ),
          ),
          _rowIcon(
            Icons.edit_outlined,
            'Edit experience',
            AppColors.primary,
            () => _openExperience(context, staffId, r),
          ),
          _rowIcon(Icons.delete_outline, 'Delete experience', AppColors.danger, () {
            showConfirmDialog(
              context,
              title: 'Delete Experience',
              confirmLabel: 'Delete',
              dangerous: true,
              message:
                  'Are you sure you want to delete this record for "${r.organizationName}"? This cannot be undone.',
              action: () async {
                final res = await StaffDirectoryService().deleteExperience(staffId, r.experienceId);
                if (res case Err(:final failure)) return failureMessage(failure, 'Failed to delete experience.');
                ref.invalidate(staffExperienceProvider(staffId));
                return null;
              },
            );
          }),
        ],
      ),
    );
  }
}

Future<void> _openExperience(BuildContext context, String staffId, [StaffExperience? editing]) =>
    showAdminFormSheet<void>(context, (_) => _ExperienceForm(staffId: staffId, editing: editing));

class _ExperienceForm extends ConsumerStatefulWidget {
  const _ExperienceForm({required this.staffId, this.editing});

  final String staffId;
  final StaffExperience? editing;

  @override
  ConsumerState<_ExperienceForm> createState() => _ExperienceFormState();
}

class _ExperienceFormState extends ConsumerState<_ExperienceForm> {
  late final _org = TextEditingController(text: widget.editing?.organizationName);
  late final _designation = TextEditingController(text: widget.editing?.designation);
  late final _department = TextEditingController(text: widget.editing?.department);
  late final _responsibilities = TextEditingController(text: widget.editing?.responsibilities);
  late final _description = TextEditingController(text: widget.editing?.description);
  late String _employmentType = widget.editing?.employmentType ?? '';
  late DateTime? _start = calendarDayOf(widget.editing?.startDate);
  late DateTime? _end = calendarDayOf(widget.editing?.endDate);
  late bool _isCurrent = widget.editing?.isCurrent ?? false;
  UploadFile? _file;
  String? _fileError;
  bool _saving = false;
  String? _saveError;

  @override
  void dispose() {
    for (final c in [_org, _designation, _department, _responsibilities, _description]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _pick() async {
    final (file, error) = await pickUploadFile(
      mimeByExtension: staffFileMimeTypes,
      maxBytes: staffFileMaxBytes,
      typeError: _typeError,
      sizeError: _sizeError,
    );
    if (!mounted || (file == null && error == null)) return;
    setState(() {
      _fileError = error;
      if (file != null) _file = file;
    });
  }

  Future<void> _save() async {
    // The web's submit silently no-ops without these two.
    if (_org.text.trim().isEmpty || _start == null) return;
    setState(() {
      _saving = true;
      _saveError = null;
    });
    final editing = widget.editing;
    final result = await StaffDirectoryService().saveExperience(
      widget.staffId,
      experienceId: editing?.experienceId,
      fields: {
        'organization_name': _org.text,
        'start_date': isoDate(_start!),
        'is_current': _isCurrent ? 'true' : 'false',
        if (!_isCurrent && _end != null) 'end_date': isoDate(_end!),
        if (_designation.text.isNotEmpty) 'designation': _designation.text,
        if (_department.text.isNotEmpty) 'department': _department.text,
        if (_employmentType.isNotEmpty) 'employment_type': _employmentType,
        if (_responsibilities.text.isNotEmpty) 'responsibilities': _responsibilities.text,
        if (_description.text.isNotEmpty) 'description': _description.text,
      },
      letter: _file,
    );
    if (!mounted) return;
    switch (result) {
      case Ok():
        ref.invalidate(staffExperienceProvider(widget.staffId));
        Navigator.of(context).pop();
      case Err(:final failure):
        setState(() {
          _saving = false;
          _saveError = failureMessage(
            failure,
            editing == null ? 'Failed to add experience.' : 'Failed to update experience.',
          );
        });
    }
  }

  InputDecoration _d(String label, {String? hint}) =>
      InputDecoration(labelText: label, hintText: hint, border: const OutlineInputBorder());

  @override
  Widget build(BuildContext context) {
    const gap = SizedBox(height: 14);
    final editing = widget.editing;
    final duration = experienceDuration(_start, _end, _isCurrent);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        SheetTitle(editing != null ? 'Edit Experience' : 'Add Experience'),
        TextField(
          controller: _org,
          decoration: _d('Organization Name *', hint: 'e.g. ABC Public School'),
        ),
        gap,
        FieldPair(
          first: TextField(controller: _designation, decoration: _d('Designation')),
          second: TextField(controller: _department, decoration: _d('Department')),
        ),
        gap,
        OptionSelect(
          label: 'Employment Type',
          value: _employmentType,
          placeholder: 'Select type',
          options: [for (final t in employeeTypeOptions) (t, t)],
          onChanged: (v) => setState(() => _employmentType = v),
        ),
        gap,
        FieldPair(
          first: DateField(label: 'Start Date *', value: _start, onPicked: (d) => setState(() => _start = d)),
          second: _isCurrent
              ? InputDecorator(
                  decoration: _d('End Date'),
                  child: const Text('Present', style: TextStyle(color: AppColors.textMuted)),
                )
              : DateField(
                  label: 'End Date',
                  value: _end,
                  onPicked: (d) => setState(() => _end = d),
                  onClear: () => setState(() => _end = null),
                ),
        ),
        const SizedBox(height: 4),
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 8,
          children: [
            InkWell(
              onTap: () => setState(() => _isCurrent = !_isCurrent),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Checkbox(value: _isCurrent, onChanged: (v) => setState(() => _isCurrent = v ?? false)),
                  const Text('Currently Working Here', style: TextStyle(color: AppColors.textSecondary)),
                ],
              ),
            ),
            if (duration != null)
              Text('Duration: $duration', style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
          ],
        ),
        gap,
        TextField(controller: _responsibilities, decoration: _d('Responsibilities'), maxLines: null),
        gap,
        TextField(controller: _description, decoration: _d('Description'), maxLines: null),
        gap,
        FilePickBox(
          label: 'Experience Letter',
          text: _file?.name ?? editing?.experienceLetterFileName ?? _fileHint,
          onTap: _saving ? null : _pick,
          errorText: _fileError,
        ),
        if (_saveError != null) ...[const SizedBox(height: 12), FormErrorText(_saveError!)],
        SheetActions(busy: _saving, onSubmit: _save, submitLabel: editing != null ? 'Save Changes' : 'Add Experience'),
      ],
    );
  }
}

// ── Documents ────────────────────────────────────────────────────────────

/// shared/constants/documentTypeOptions.js.
const _documentTypeOptions = [
  'Resume', 'Bank Details', 'PAN Card', 'Aadhaar Card', 'Educational Certificate', //
  'Experience Letter', 'Offer Letter', 'Address Proof', 'Other',
];

BadgeVariant _documentVariant(String status) => switch (status) {
  'VERIFIED' => BadgeVariant.success,
  'REJECTED' => BadgeVariant.danger,
  _ => BadgeVariant.warning,
};

class DocumentsTab extends ConsumerWidget {
  const DocumentsTab({super.key, required this.staffId});

  final String staffId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = staffDocumentsProvider(staffId);
    return _RecordTab<List<StaffDocument>>(
      value: ref.watch(provider),
      loadingLabel: 'Loading documents…',
      onRetry: () => ref.invalidate(provider),
      onRefresh: () => ref.refresh(provider.future).then<void>((_) {}, onError: (_) {}),
      action: FilledButton.icon(
        onPressed: () => showAdminFormSheet<void>(context, (_) => _UploadDocumentForm(staffId: staffId)),
        icon: const Icon(Icons.add, size: 18),
        label: const Text('Upload Document'),
      ),
      builder: (docs) => docs.isEmpty
          ? const SectionCard(
              child: EmptyState(
                icon: Icons.description_outlined,
                title: 'No documents uploaded yet.',
                message: 'Click "Upload Document" to add one on this employee\'s behalf.',
              ),
            )
          : DividedCard(
              children: [for (final d in docs) _DocumentRow(staffId: staffId, doc: d)],
            ),
    );
  }
}

class _DocumentRow extends ConsumerWidget {
  const _DocumentRow({required this.staffId, required this.doc});

  final String staffId;
  final StaffDocument doc;

  Future<String?> _run(WidgetRef ref, Future<Result<void>> call, String fallback) async {
    final res = await call;
    if (res case Err(:final failure)) return failureMessage(failure, fallback);
    ref.invalidate(staffDocumentsProvider(staffId));
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = doc.verificationStatus ?? 'PENDING';
    final service = StaffDirectoryService();
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 14, 4, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doc.documentName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                    ),
                    Text(
                      '${(doc.fileName?.isNotEmpty ?? false) ? doc.fileName : 'No file'} · Uploaded ${formatDate(doc.uploadedAt)}',
                      style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                    ),
                    if (status == 'REJECTED' && (doc.remarks?.isNotEmpty ?? false))
                      Text('Reason: ${doc.remarks}', style: const TextStyle(fontSize: 12, color: AppColors.danger)),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: StatusBadge(label: status, variant: _documentVariant(status)),
              ),
            ],
          ),
          Row(
            children: [
              if (doc.fileUrl != null)
                ExternalLinkButton(label: 'View File', url: doc.fileUrl!, icon: Icons.description_outlined),
              const Spacer(),
              if (status == 'PENDING') ...[
                _rowIcon(Icons.check, 'Verify document', AppColors.success, () async {
                  final error = await _run(
                    ref,
                    service.verifyDocument(staffId, doc.documentId),
                    'Failed to verify document.',
                  );
                  if (error != null && context.mounted) showSnack(context, error);
                }),
                _rowIcon(Icons.close, 'Reject document', AppColors.danger, () {
                  showAdminFormSheet<void>(context, (_) => _RejectDocumentForm(staffId: staffId, doc: doc));
                }),
              ],
              _rowIcon(Icons.delete_outline, 'Delete document', AppColors.danger, () {
                showConfirmDialog(
                  context,
                  title: 'Delete Document',
                  confirmLabel: 'Delete',
                  dangerous: true,
                  message: 'Are you sure you want to delete "${doc.documentName}"? This cannot be undone.',
                  action: () =>
                      _run(ref, service.deleteDocument(staffId, doc.documentId), 'Failed to delete document.'),
                );
              }),
            ],
          ),
        ],
      ),
    );
  }
}

class _UploadDocumentForm extends ConsumerStatefulWidget {
  const _UploadDocumentForm({required this.staffId});

  final String staffId;

  @override
  ConsumerState<_UploadDocumentForm> createState() => _UploadDocumentFormState();
}

class _UploadDocumentFormState extends ConsumerState<_UploadDocumentForm> {
  final _customName = TextEditingController();
  String _type = '';
  UploadFile? _file;
  String? _fileError;
  bool _saving = false;
  String? _saveError;

  @override
  void dispose() {
    _customName.dispose();
    super.dispose();
  }

  Future<void> _pick() async {
    final (file, error) = await pickUploadFile(
      mimeByExtension: staffFileMimeTypes,
      maxBytes: staffFileMaxBytes,
      typeError: _typeError,
      sizeError: _sizeError,
    );
    if (!mounted || (file == null && error == null)) return;
    setState(() {
      _fileError = error;
      if (file != null) _file = file;
    });
  }

  Future<void> _save() async {
    if (_type.isEmpty) return setState(() => _fileError = 'Please choose a document type.');
    if (_type == 'Other' && _customName.text.trim().isEmpty) {
      return setState(() => _fileError = 'Please name this document.');
    }
    if (_file == null) return setState(() => _fileError = 'Please choose a file to upload.');
    setState(() {
      _fileError = null;
      _saving = true;
      _saveError = null;
    });
    final result = await StaffDirectoryService().uploadDocument(
      widget.staffId,
      documentName: _type == 'Other' ? _customName.text.trim() : _type,
      file: _file!,
    );
    if (!mounted) return;
    switch (result) {
      case Ok():
        ref.invalidate(staffDocumentsProvider(widget.staffId));
        Navigator.of(context).pop();
      case Err(:final failure):
        setState(() {
          _saving = false;
          _saveError = failureMessage(failure, 'Failed to upload document.');
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SheetTitle('Upload Document'),
        OptionSelect(
          label: 'Document Type *',
          value: _type,
          placeholder: 'Select document type',
          options: [for (final t in _documentTypeOptions) (t, t)],
          onChanged: (v) => setState(() => _type = v),
        ),
        if (_type == 'Other') ...[
          const SizedBox(height: 14),
          TextField(
            controller: _customName,
            decoration: const InputDecoration(
              labelText: 'Document Name *',
              hintText: 'e.g. Relieving Letter',
              border: OutlineInputBorder(),
            ),
          ),
        ],
        const SizedBox(height: 14),
        FilePickBox(
          label: 'File',
          text: _file?.name ?? _fileHint,
          onTap: _saving ? null : _pick,
          errorText: _fileError,
        ),
        if (_saveError != null) ...[const SizedBox(height: 12), FormErrorText(_saveError!)],
        SheetActions(busy: _saving, onSubmit: _save, submitLabel: 'Upload'),
      ],
    );
  }
}

class _RejectDocumentForm extends ConsumerStatefulWidget {
  const _RejectDocumentForm({required this.staffId, required this.doc});

  final String staffId;
  final StaffDocument doc;

  @override
  ConsumerState<_RejectDocumentForm> createState() => _RejectDocumentFormState();
}

class _RejectDocumentFormState extends ConsumerState<_RejectDocumentForm> {
  final _remarks = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _remarks.dispose();
    super.dispose();
  }

  Future<void> _reject() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    final res = await StaffDirectoryService().rejectDocument(
      widget.staffId,
      widget.doc.documentId,
      _remarks.text.trim(),
    );
    if (!mounted) return;
    switch (res) {
      case Ok():
        ref.invalidate(staffDocumentsProvider(widget.staffId));
        Navigator.of(context).pop();
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failureMessage(failure, 'Failed to reject document.');
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SheetTitle('Reject Document'),
        Text.rich(
          TextSpan(
            text: 'Rejecting ',
            children: [
              TextSpan(
                text: widget.doc.documentName,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              const TextSpan(text: ' — let the employee know why so they can re-upload.'),
            ],
          ),
          style: const TextStyle(color: AppColors.textSecondary),
        ),
        const SizedBox(height: 14),
        TextField(
          controller: _remarks,
          minLines: 3,
          maxLines: 5,
          decoration: const InputDecoration(
            labelText: 'Reason (optional)',
            hintText: 'e.g. Document is unreadable, please re-upload a clearer scan.',
            border: OutlineInputBorder(),
            alignLabelWithHint: true,
          ),
        ),
        if (_error != null) ...[const SizedBox(height: 12), FormErrorText(_error!)],
        SheetActions(busy: _busy, onSubmit: _reject, submitLabel: 'Reject', danger: true),
      ],
    );
  }
}

// ── Salary Structure ─────────────────────────────────────────────────────

final _twelve = Decimal.fromInt(12);
Decimal _monthly(Decimal annual) => (annual / _twelve).toDecimal(scaleOnInfinitePrecision: 2);
Decimal _percentOf(Decimal pct, Decimal amount) =>
    (pct * amount / Decimal.fromInt(100)).toDecimal(scaleOnInfinitePrecision: 2);

class SalaryStructureTab extends ConsumerWidget {
  const SalaryStructureTab({super.key, required this.staffId});

  final String staffId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = staffSalaryStructureProvider(staffId);
    final assignment = ref.watch(provider).value;
    return _RecordTab<SalaryStructureAssignment?>(
      value: ref.watch(provider),
      loadingLabel: 'Loading salary structure…',
      onRetry: () => ref.invalidate(provider),
      onRefresh: () => ref.refresh(provider.future).then<void>((_) {}, onError: (_) {}),
      action: FilledButton.icon(
        onPressed: () =>
            showAdminFormSheet<void>(context, (_) => _AssignSalaryForm(staffId: staffId, current: assignment)),
        icon: const Icon(Icons.edit_outlined, size: 18),
        label: Text(assignment != null ? 'Change Structure' : 'Assign Structure'),
      ),
      builder: (a) => a == null
          ? const SectionCard(
              child: EmptyState(
                icon: Icons.account_balance_wallet_outlined,
                title: 'No salary structure assigned yet.',
                message: 'Click "Assign Structure" to set this employee\'s salary template and CTC.',
              ),
            )
          : _SalaryBody(a: a),
    );
  }
}

class _SalaryBody extends StatelessWidget {
  const _SalaryBody({required this.a});

  final SalaryStructureAssignment a;

  @override
  Widget build(BuildContext context) {
    Widget figure(String label, String value) => SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
          ),
        ],
      ),
    );
    Widget line(String label, String value, {Color? color, bool strong = false, Widget? sub}) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    color: strong ? AppColors.textPrimary : AppColors.textSecondary,
                    fontWeight: strong ? FontWeight.w600 : FontWeight.w400,
                  ),
                ),
                ?sub,
              ],
            ),
          ),
          const SizedBox(width: 12),
          Text(
            value,
            style: TextStyle(
              color: color ?? AppColors.textPrimary,
              fontWeight: strong ? FontWeight.w700 : FontWeight.w500,
              fontSize: strong ? 16 : 14,
            ),
          ),
        ],
      ),
    );
    Widget header(String text) => Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
      ),
    );
    final t = a.takeHomeEstimate;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ResponsiveGrid(
          minItemWidth: 200,
          maxColumns: 3,
          children: [
            figure('Template', a.template.templateName),
            figure('Annual CTC', formatAmount(a.ctcAmount)),
            figure('Effective From', formatDate(a.effectiveFrom)),
          ],
        ),
        const SizedBox(height: 16),
        DividedCard(
          header: header('Monthly Earning Breakdown'),
          children: [
            for (final c in a.template.components)
              line(
                c.componentName,
                '${formatAmount(_monthly(c.computedAmount ?? _percentOf(c.percentageOfCtc, a.ctcAmount)))}/mo',
                sub: Text(
                  '(${c.percentageOfCtc}% of CTC)',
                  style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                ),
              ),
          ],
        ),
        if (t != null) ...[
          const SizedBox(height: 16),
          DividedCard(
            header: header('Estimated Take Home Salary'),
            children: [
              line('Monthly Gross', formatAmount(t.monthlyGross)),
              line('PF Deduction', '− ${formatAmount(t.pfAmount)}', color: AppColors.danger),
              line('ESI Deduction', '− ${formatAmount(t.esiAmount)}', color: AppColors.danger),
              line('Professional Tax', '− ${formatAmount(t.ptAmount)}', color: AppColors.danger),
              line('TDS', '− ${formatAmount(t.tdsAmount)}', color: AppColors.danger),
              ColoredBox(
                color: AppColors.successBg,
                child: line(
                  'Take Home Salary (per month)',
                  formatAmount(t.takeHomeSalary),
                  color: AppColors.success,
                  strong: true,
                ),
              ),
            ],
          ),
        ],
        const SizedBox(height: 12),
        const Text(
          "This is an estimate using current statutory rates and doesn't account for that month's leave deduction — "
          'the actual figure on a generated payslip (Payroll → Generate Payslips) may differ slightly.',
          style: TextStyle(fontSize: 12, color: AppColors.textMuted),
        ),
      ],
    );
  }
}

class _AssignSalaryForm extends ConsumerStatefulWidget {
  const _AssignSalaryForm({required this.staffId, this.current});

  final String staffId;
  final SalaryStructureAssignment? current;

  @override
  ConsumerState<_AssignSalaryForm> createState() => _AssignSalaryFormState();
}

class _AssignSalaryFormState extends ConsumerState<_AssignSalaryForm> {
  late String _templateId = widget.current?.templateId ?? '';
  late final _ctc = TextEditingController(text: widget.current?.ctcAmount.toString() ?? '');
  late DateTime? _effectiveFrom = calendarDayOf(widget.current?.effectiveFrom);
  bool _saving = false;
  String? _saveError;

  @override
  void dispose() {
    _ctc.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final ctc = num.tryParse(_ctc.text.trim());
    // The web's submit silently no-ops without a template and amount.
    if (_templateId.isEmpty || _ctc.text.trim().isEmpty) return;
    setState(() {
      _saving = true;
      _saveError = null;
    });
    final result = await StaffDirectoryService().assignSalaryStructure(
      widget.staffId,
      templateId: _templateId,
      ctcAmount: ctc ?? 0,
      effectiveFrom: _effectiveFrom == null ? null : isoDate(_effectiveFrom!),
    );
    if (!mounted) return;
    switch (result) {
      case Ok():
        ref.invalidate(staffSalaryStructureProvider(widget.staffId));
        Navigator.of(context).pop();
      case Err(:final failure):
        setState(() {
          _saving = false;
          _saveError = failureMessage(failure, 'Failed to assign salary structure.');
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final templates = ref.watch(salaryTemplatesProvider);
    final isChange = widget.current != null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        SheetTitle(isChange ? 'Change Salary Structure' : 'Assign Salary Structure'),
        templates.when(
          skipLoadingOnRefresh: true,
          loading: () => const LoadingView(label: 'Loading salary templates…'),
          error: (err, _) =>
              ErrorView(message: describeError(err), onRetry: () => ref.invalidate(salaryTemplatesProvider)),
          data: (list) {
            if (list.isEmpty) {
              return const Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: Text(
                  'No salary templates exist yet — create one under Payroll → Salary Templates first.',
                  style: TextStyle(color: AppColors.textMuted),
                ),
              );
            }
            final selected = list.where((t) => t.templateId == _templateId).firstOrNull;
            final ctc = Decimal.tryParse(_ctc.text.trim());
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                OptionSelect(
                  label: 'Salary Template *',
                  value: _templateId,
                  placeholder: 'Select a template',
                  options: [for (final t in list) (t.templateId, t.templateName)],
                  onChanged: (v) => setState(() => _templateId = v),
                ),
                const SizedBox(height: 14),
                TextField(
                  controller: _ctc,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  onChanged: (_) => setState(() {}),
                  decoration: const InputDecoration(
                    labelText: 'CTC Amount (₹/year) *',
                    hintText: 'e.g. 600000',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 14),
                DateField(
                  label: 'Effective From',
                  value: _effectiveFrom,
                  onPicked: (d) => setState(() => _effectiveFrom = d),
                  onClear: () => setState(() => _effectiveFrom = null),
                ),
                if (selected != null && ctc != null && ctc > Decimal.zero) ...[
                  const SizedBox(height: 14),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.pageBg,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.border),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Preview breakdown', style: TextStyle(fontSize: 12, color: AppColors.textMuted)),
                        const SizedBox(height: 4),
                        for (final c in selected.components)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '${c.componentName} (${c.percentageOfCtc}%)',
                                    style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
                                  ),
                                ),
                                Text(
                                  formatAmount(_percentOf(c.percentageOfCtc, ctc)),
                                  style: const TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
                if (_saveError != null) ...[const SizedBox(height: 12), FormErrorText(_saveError!)],
                SheetActions(busy: _saving, onSubmit: _save, submitLabel: isChange ? 'Save Changes' : 'Assign'),
              ],
            );
          },
        ),
      ],
    );
  }
}
