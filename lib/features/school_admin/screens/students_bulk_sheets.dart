import 'dart:convert';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/models/admin_students.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../providers/school_admin_providers.dart';
import '../services/students_service.dart';
import 'school_admin_page_scaffold.dart';

// The bulk modals of the web's StudentsListPage (AssignClassModal,
// PromoteModal, DeactivateModal, GenerateIdCardModal,
// GenerateCertificateModal, ExportStudentsModal) as bottom sheets. Every
// one returns true once a result was shown, so the list clears its
// selection (the web's `onDone`).

String _students(int n) => '$n student${n != 1 ? 's' : ''}';

/// GenerateCertificateModal CERT_TYPES.
const _certTypes = <(String, String)>[
  ('bonafide', 'Bonafide Certificate'),
  ('character', 'Character Certificate'),
  ('study', 'Study Certificate'),
  ('leaving', 'Leaving Certificate'),
  ('promotion', 'Promotion Certificate'),
];

String _certLabel(String type) => _certTypes.where((t) => t.$1 == type).map((t) => t.$2).firstOrNull ?? '';

String _sel(Map<String, Object?> v, String key) => (v[key] as String?) ?? '';

// ── One bulk call's outcome ──────────────────────────────────────────────

/// One section of a result view (Assign to Class shows a class and a
/// section section).
class StudentBulkOutcome {
  const StudentBulkOutcome({
    this.label,
    required this.result,
    required this.successText,
    this.noun = 'student',
    this.promoted = false,
    this.extra,
  });

  final String? label;
  final AdminStudentBulkResult result;
  final String successText;

  /// What the success line counts (`3 ID cards generated successfully`).
  final String noun;

  /// Bulk promote reports `promoted` instead of `succeeded`.
  final bool promoted;

  /// Per-student detail drawn under the success line (ID cards, certificates).
  final Widget? extra;

  int get count => promoted ? result.promoted : result.succeeded;
}

/// BulkResultSection.
class _OutcomeView extends StatelessWidget {
  const _OutcomeView(this.outcome);

  final StudentBulkOutcome outcome;

  @override
  Widget build(BuildContext context) {
    final count = outcome.count;
    final failed = outcome.result.failed;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (outcome.label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              outcome.label!.toUpperCase(),
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.8,
                color: AppColors.textMuted,
              ),
            ),
          ),
        if (count > 0) ...[
          _StatusLine(
            icon: Icons.check_circle_outline,
            color: AppColors.success,
            text: '$count ${outcome.noun}${count != 1 ? 's' : ''} ${outcome.successText}',
          ),
          if (outcome.extra != null) Padding(padding: const EdgeInsets.only(top: 8), child: outcome.extra),
        ],
        if (failed > 0) ...[
          if (count > 0) const SizedBox(height: 12),
          _StatusLine(icon: Icons.cancel_outlined, color: AppColors.danger, text: '${_students(failed)} failed'),
          if (outcome.result.errors.isNotEmpty)
            Container(
              margin: const EdgeInsets.only(top: 8),
              constraints: const BoxConstraints(maxHeight: 160),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: AppColors.dangerBg, borderRadius: BorderRadius.circular(12)),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (final e in outcome.result.errors)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Text(
                          '${_shortId(e.studentId)} — ${_firstLine(e.error)}',
                          style: const TextStyle(fontSize: 12, color: AppColors.danger),
                        ),
                      ),
                  ],
                ),
              ),
            ),
        ],
        if (count == 0 && failed == 0) const Text('Nothing was changed.', style: TextStyle(color: AppColors.textMuted)),
      ],
    );
  }

  /// `String(e.error).split('\n')[0].slice(0, 80)`.
  static String _firstLine(String? error) {
    final line = (error ?? '').split('\n').first;
    return line.length > 80 ? line.substring(0, 80) : line;
  }

  static String _shortId(String? id) =>
      id == null || id.isEmpty ? '—' : '${id.substring(0, id.length < 8 ? id.length : 8)}…';
}

class _StatusLine extends StatelessWidget {
  const _StatusLine({required this.icon, required this.color, required this.text});

  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Icon(icon, size: 18, color: color),
      const SizedBox(width: 8),
      Expanded(
        child: Text(
          text,
          style: TextStyle(color: color, fontWeight: FontWeight.w600),
        ),
      ),
    ],
  );
}

// ── The generic sheet ────────────────────────────────────────────────────

/// form (optional) → confirm (optional) → result. [onConfirm] gets the
/// field values and returns every section of the result, or the failure
/// shown in place of it.
Future<bool> showStudentBulkSheet(
  BuildContext context, {
  required String title,
  required int count,
  required String confirmLabel,
  required Future<Result<List<StudentBulkOutcome>>> Function(Map<String, Object?> values) onConfirm,
  required String resultTitle,
  String? intro,
  bool dangerous = false,
  Color? color,
  Widget Function(BuildContext context, Map<String, Object?> values, VoidCallback changed)? fieldsBuilder,
  bool Function(Map<String, Object?> values)? canContinue,

  /// Set for an action that needs a confirm step (Promote, Deactivate, ID cards).
  String Function(Map<String, Object?> values)? confirmText,
  String fallbackError = 'Something went wrong. Please try again.',
}) async {
  final done = await showAdminFormSheet<bool>(
    context,
    (_) => _StudentBulkSheet(
      title: title,
      count: count,
      confirmLabel: confirmLabel,
      onConfirm: onConfirm,
      resultTitle: resultTitle,
      intro: intro,
      dangerous: dangerous,
      color: color,
      fieldsBuilder: fieldsBuilder,
      canContinue: canContinue,
      confirmText: confirmText,
      fallbackError: fallbackError,
    ),
  );
  return done ?? false;
}

enum _Stage { form, confirm, result }

class _StudentBulkSheet extends StatefulWidget {
  const _StudentBulkSheet({
    required this.title,
    required this.count,
    required this.confirmLabel,
    required this.onConfirm,
    required this.resultTitle,
    required this.intro,
    required this.dangerous,
    required this.color,
    required this.fieldsBuilder,
    required this.canContinue,
    required this.confirmText,
    required this.fallbackError,
  });

  final String title;
  final int count;
  final String confirmLabel;
  final Future<Result<List<StudentBulkOutcome>>> Function(Map<String, Object?> values) onConfirm;
  final String resultTitle;
  final String? intro;
  final bool dangerous;
  final Color? color;
  final Widget Function(BuildContext, Map<String, Object?>, VoidCallback)? fieldsBuilder;
  final bool Function(Map<String, Object?>)? canContinue;
  final String Function(Map<String, Object?>)? confirmText;
  final String fallbackError;

  @override
  State<_StudentBulkSheet> createState() => _StudentBulkSheetState();
}

class _StudentBulkSheetState extends State<_StudentBulkSheet> {
  final Map<String, Object?> _values = {};
  late _Stage _stage = widget.fieldsBuilder == null ? _Stage.confirm : _Stage.form;
  bool _pending = false;
  List<StudentBulkOutcome>? _outcomes;
  String? _error;

  bool get _ok => widget.canContinue?.call(_values) ?? true;

  Future<void> _submit() async {
    setState(() => _pending = true);
    final res = await widget.onConfirm(_values);
    if (!mounted) return;
    setState(() {
      _pending = false;
      _stage = _Stage.result;
      switch (res) {
        case Ok(:final value):
          _outcomes = value;
        case Err(:final failure):
          _error = failureMessage(failure, widget.fallbackError);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> children;
    switch (_stage) {
      case _Stage.form:
        children = [
          SheetTitle(widget.title),
          Text('${_students(widget.count)} selected', style: const TextStyle(color: AppColors.textMuted)),
          if (widget.intro != null) _Notice(widget.intro!, danger: false),
          if (widget.fieldsBuilder != null)
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: widget.fieldsBuilder!(context, _values, () => setState(() {})),
            ),
          if (widget.confirmText != null)
            SheetActions(
              busy: false,
              onSubmit: _ok ? () => setState(() => _stage = _Stage.confirm) : null,
              submitLabel: 'Next: Confirm →',
            )
          else
            SheetActions(
              busy: _pending,
              onSubmit: _ok ? _submit : null,
              submitLabel: widget.confirmLabel,
              danger: widget.dangerous,
              color: widget.color,
            ),
        ];
      case _Stage.confirm:
        final hasForm = widget.fieldsBuilder != null;
        children = [
          SheetTitle(widget.title),
          _Notice(widget.confirmText?.call(_values) ?? widget.intro ?? '', danger: widget.dangerous || hasForm),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Wrap(
              alignment: WrapAlignment.end,
              spacing: 8,
              runSpacing: 8,
              children: [
                TextButton(
                  onPressed: _pending
                      ? null
                      : () => hasForm ? setState(() => _stage = _Stage.form) : Navigator.of(context).pop(),
                  child: Text(hasForm ? '← Back' : 'Cancel'),
                ),
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: widget.color ?? (widget.dangerous ? AppColors.danger : null),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: _pending ? null : _submit,
                  child: _pending
                      ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
                      : Text(widget.confirmLabel),
                ),
              ],
            ),
          ),
        ];
      case _Stage.result:
        children = [
          SheetTitle(widget.resultTitle),
          if (_error != null)
            Text(
              _error!,
              style: const TextStyle(color: AppColors.danger, fontWeight: FontWeight.w600),
            )
          else
            for (final (i, o) in (_outcomes ?? const <StudentBulkOutcome>[]).indexed) ...[
              if (i > 0) const SizedBox(height: 16),
              _OutcomeView(o),
            ],
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: FilledButton(onPressed: () => Navigator.of(context).pop(true), child: const Text('Done')),
            ),
          ),
        ];
    }
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, mainAxisSize: MainAxisSize.min, children: children);
  }
}

class _Notice extends StatelessWidget {
  const _Notice(this.text, {required this.danger});

  final String text;
  final bool danger;

  @override
  Widget build(BuildContext context) => Container(
    margin: const EdgeInsets.only(top: 12),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: danger ? AppColors.dangerBg : AppColors.primaryLight,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          danger ? Icons.warning_amber_rounded : Icons.info_outline,
          size: 18,
          color: danger ? AppColors.danger : AppColors.primary,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(text, style: const TextStyle(color: AppColors.textSecondary)),
        ),
      ],
    ),
  );
}

// ── Class / section fields (Assign to Class, Promote) ────────────────────

/// Class (required) and Section (optional, once the class has any). The
/// chosen names are kept in [values] for the Promote confirm copy.
class _ClassSectionFields extends ConsumerWidget {
  const _ClassSectionFields({required this.values, required this.changed});

  final Map<String, Object?> values;
  final VoidCallback changed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final classes = ref.watch(adminClassOptionsProvider);
    final classId = _sel(values, 'classId');
    final sectionId = _sel(values, 'sectionId');
    final sections = classes.value?.where((c) => c.classId == classId).firstOrNull?.sections ?? const [];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        OptionSelect(
          label: 'Class *',
          value: classId,
          placeholder: classes.isLoading ? 'Loading classes…' : 'Select a class',
          options: [for (final c in classes.value ?? const []) (c.classId, c.className)],
          onChanged: (v) {
            values['classId'] = v;
            values['className'] = classes.value?.where((c) => c.classId == v).map((c) => c.className).firstOrNull ?? '';
            values['sectionId'] = '';
            values['sectionName'] = '';
            changed();
          },
        ),
        if (sections.isNotEmpty) ...[
          const SizedBox(height: 12),
          OptionSelect(
            label: 'Section',
            value: sectionId,
            placeholder: 'Select a section (optional)',
            options: [for (final s in sections) (s.sectionId ?? '', s.sectionName ?? '—')],
            onChanged: (v) {
              values['sectionId'] = v;
              values['sectionName'] =
                  sections.where((x) => x.sectionId == v).map((x) => x.sectionName).firstOrNull ?? '';
              changed();
            },
          ),
        ],
      ],
    );
  }
}

// ── The five bulk actions ────────────────────────────────────────────────

/// AssignClassModal — class first, then (only if picked) the section.
Future<bool> showAssignClassSheet(BuildContext context, List<String> ids) => showStudentBulkSheet(
  context,
  title: 'Assign to Class',
  count: ids.length,
  confirmLabel: 'Assign Students',
  resultTitle: 'Assignment Complete',
  fallbackError: 'Assignment failed. Please try again.',
  fieldsBuilder: (_, values, changed) => _ClassSectionFields(values: values, changed: changed),
  canContinue: (v) => _sel(v, 'classId').isNotEmpty,
  onConfirm: (v) async {
    final service = AdminStudentsService();
    final AdminStudentBulkResult classResult;
    switch (await service.bulkAssignClass(ids, _sel(v, 'classId'))) {
      case Ok(:final value):
        classResult = value;
      case Err(:final failure):
        return Err(failure);
    }
    final outcomes = [
      StudentBulkOutcome(label: 'Class Assignment', result: classResult, successText: 'assigned successfully'),
    ];
    if (_sel(v, 'sectionId').isNotEmpty) {
      switch (await service.bulkAssignSection(ids, _sel(v, 'sectionId'))) {
        case Ok(:final value):
          outcomes.add(
            StudentBulkOutcome(label: 'Section Assignment', result: value, successText: 'assigned successfully'),
          );
        case Err(:final failure):
          return Err(failure);
      }
    }
    return Ok(outcomes);
  },
);

/// PromoteModal — the target session is the active one (read-only).
Future<bool> showPromoteSheet(
  BuildContext context,
  List<String> ids, {
  required String sessionId,
  String? sessionLabel,
}) => showStudentBulkSheet(
  context,
  title: 'Promote Students',
  count: ids.length,
  confirmLabel: 'Promote Students',
  resultTitle: 'Promotion Complete',
  fallbackError: 'Promotion failed. Please try again.',
  color: AppColors.amber,
  intro: 'Students will be promoted into the current session${sessionLabel == null ? '' : ' ($sessionLabel)'}.',
  fieldsBuilder: (_, values, changed) => _ClassSectionFields(values: values, changed: changed),
  canContinue: (v) => _sel(v, 'classId').isNotEmpty,
  confirmText: (v) {
    final section = _sel(v, 'sectionName');
    return 'This will permanently promote ${_students(ids.length)} to ${_sel(v, 'className')}'
        '${section.isEmpty ? '' : ' — $section'} in the current session. This action cannot be undone.';
  },
  onConfirm: (v) async {
    final res = await AdminStudentsService().bulkPromote(
      ids,
      sessionId: sessionId,
      classId: _sel(v, 'classId'),
      sectionId: _sel(v, 'sectionId').isEmpty ? null : _sel(v, 'sectionId'),
    );
    return switch (res) {
      Ok(:final value) => Ok([StudentBulkOutcome(result: value, successText: 'promoted successfully', promoted: true)]),
      Err(:final failure) => Err(failure),
    };
  },
);

/// DeactivateModal.
Future<bool> showDeactivateSheet(BuildContext context, List<String> ids) => showStudentBulkSheet(
  context,
  title: 'Deactivate Students',
  count: ids.length,
  confirmLabel: 'Deactivate Students',
  resultTitle: 'Deactivation Complete',
  fallbackError: 'Deactivation failed. Please try again.',
  dangerous: true,
  confirmText: (_) =>
      'This will set ${_students(ids.length)} to INACTIVE. Their records will be preserved but they will no longer appear as active students.',
  onConfirm: (_) async => switch (await AdminStudentsService().bulkDeactivate(ids)) {
    Ok(:final value) => Ok([StudentBulkOutcome(result: value, successText: 'deactivated successfully')]),
    Err(:final failure) => Err(failure),
  },
);

/// GenerateIdCardModal — lists each card's number and expiry.
Future<bool> showIdCardSheet(BuildContext context, List<String> ids) => showStudentBulkSheet(
  context,
  title: 'Generate ID Cards',
  count: ids.length,
  confirmLabel: 'Generate ID Cards',
  resultTitle: 'ID Card Generation Complete',
  fallbackError: 'ID card generation failed. Please try again.',
  color: AppColors.teal,
  confirmText: (_) =>
      'ID cards will be generated for ${_students(ids.length)}. Students who already have a valid, non-expired card will have their existing card returned. New cards are valid for 1 year from today.',
  onConfirm: (_) async => switch (await AdminStudentsService().bulkGenerateIdCards(ids)) {
    Ok(:final value) => Ok([
      StudentBulkOutcome(
        result: value,
        noun: 'ID card',
        successText: 'generated successfully',
        extra: _IdCardList(value.results),
      ),
    ]),
    Err(:final failure) => Err(failure),
  },
);

class _IdCardList extends StatelessWidget {
  const _IdCardList(this.items);

  final List<AdminStudentBulkItem> items;

  @override
  Widget build(BuildContext context) => Container(
    constraints: const BoxConstraints(maxHeight: 220),
    decoration: BoxDecoration(color: AppColors.successBg, borderRadius: BorderRadius.circular(12)),
    child: ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.all(12),
      itemCount: items.length,
      separatorBuilder: (_, _) => const Divider(height: 12, color: AppColors.border),
      itemBuilder: (_, i) {
        final r = items[i].result;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              r?.studentName ?? '—',
              style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
            ),
            Text(
              '${r?.cardNumber ?? '—'}  ·  Expires ${formatDate(r?.expiryDate)}',
              style: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
            ),
          ],
        );
      },
    ),
  );
}

/// GenerateCertificateModal — form, then the generated certificate text.
Future<bool> showCertificateSheet(BuildContext context, List<String> ids) => showStudentBulkSheet(
  context,
  title: 'Generate Certificates',
  count: ids.length,
  confirmLabel: 'Generate',
  resultTitle: 'Certificate Generation Complete',
  fallbackError: 'Certificate generation failed. Please try again.',
  color: AppColors.violet,
  fieldsBuilder: (_, values, changed) => OptionSelect(
    label: 'Certificate Type *',
    value: _sel(values, 'type'),
    placeholder: 'Select a certificate type',
    options: _certTypes,
    onChanged: (v) {
      values['type'] = v;
      changed();
    },
  ),
  canContinue: (v) => _sel(v, 'type').isNotEmpty,
  onConfirm: (v) async {
    final type = _sel(v, 'type');
    return switch (await AdminStudentsService().bulkGenerateCertificates(ids, type)) {
      Ok(:final value) => Ok([
        StudentBulkOutcome(
          result: value,
          noun: 'certificate',
          successText: 'generated successfully',
          extra: _CertificateList(value.results, _certLabel(type)),
        ),
      ]),
      Err(:final failure) => Err(failure),
    };
  },
);

class _CertificateList extends StatelessWidget {
  const _CertificateList(this.items, this.label);

  final List<AdminStudentBulkItem> items;
  final String label;

  @override
  Widget build(BuildContext context) => Container(
    constraints: const BoxConstraints(maxHeight: 260),
    decoration: BoxDecoration(color: AppColors.successBg, borderRadius: BorderRadius.circular(12)),
    child: ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.all(12),
      itemCount: items.length,
      separatorBuilder: (_, _) => const Divider(height: 16, color: AppColors.border),
      itemBuilder: (_, i) {
        final s = items[i].result?.student;
        final classSection = [s?.className, s?.sectionName].whereType<String>().where((e) => e.isNotEmpty).join(' - ');
        final meta = [s?.admissionNo, classSection].whereType<String>().where((e) => e.isNotEmpty).join(' · ');
        final content = items[i].result?.content;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              s?.name ?? '—',
              style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
            ),
            Text(label, style: const TextStyle(fontSize: 12, color: AppColors.violet)),
            if (meta.isNotEmpty) Text(meta, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
            if (content != null)
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(content, style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
              ),
          ],
        );
      },
    ),
  );
}

// ── Export CSV ───────────────────────────────────────────────────────────

/// toStudentCsvRow's columns.
const _csvHeaders = [
  'Admission No',
  'Full Name',
  'Gender',
  'Date of Birth',
  'Contact No',
  'Email',
  'Class',
  'Section',
  'Roll No',
  'Status',
  'Admission Date',
];

List<String> _csvRow(AdminStudentRow s) {
  final a = s.applicant;
  return [
    s.admissionNo,
    a?.fullName ?? '',
    a?.gender ?? '',
    a?.dob == null ? '' : formatDate(a!.dob),
    a?.contactNo ?? '',
    a?.emailId ?? '',
    s.currentClass?.className ?? '',
    s.currentSection?.sectionName ?? '',
    s.rollNo ?? '',
    s.studentStatus ?? '',
    s.admissionDate == null ? '' : formatDate(s.admissionDate),
  ];
}

/// downloadCsv's escaping: quote values with a comma, quote or newline.
String _csvCell(String v) =>
    v.contains(',') || v.contains('"') || v.contains('\n') ? '"${v.replaceAll('"', '""')}"' : v;

/// The CSV of [rows] (header + one line per student).
String studentsCsv(List<AdminStudentRow> rows) =>
    [_csvHeaders, ...rows.map(_csvRow)].map((r) => r.map(_csvCell).join(',')).join('\n');

/// ExportStudentsModal. The endpoint exports by filter, not by id, so the
/// rows matching the list's filters are fetched and narrowed to the
/// selection here.
Future<bool> showExportSheet(BuildContext context, List<String> ids, StudentsQuery filters) async {
  final done = await showAdminFormSheet<bool>(context, (_) => _ExportSheet(ids: ids, filters: filters));
  return done ?? false;
}

class _ExportSheet extends StatefulWidget {
  const _ExportSheet({required this.ids, required this.filters});

  final List<String> ids;
  final StudentsQuery filters;

  @override
  State<_ExportSheet> createState() => _ExportSheetState();
}

class _ExportSheetState extends State<_ExportSheet> {
  bool _pending = false;
  String? _error;
  bool _empty = false;
  int? _exported;

  bool get _finished => _error != null || _empty || _exported != null;

  Future<void> _export() async {
    setState(() => _pending = true);
    final res = await AdminStudentsService().exportStudents(widget.filters);
    if (!mounted) return;
    switch (res) {
      case Err(:final failure):
        setState(() {
          _pending = false;
          _error = failureMessage(failure, 'Export failed. Please try again.');
        });
      case Ok(:final value):
        final wanted = widget.ids.toSet();
        final students = value.where((s) => wanted.contains(s.studentId)).toList();
        if (students.isEmpty) {
          setState(() {
            _pending = false;
            _empty = true;
          });
          return;
        }
        final now = DateTime.now();
        final day = '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
        try {
          final saved = await FilePicker.saveFile(
            fileName: 'students_export_$day.csv',
            bytes: Uint8List.fromList(utf8.encode(studentsCsv(students))),
            mimeType: 'text/csv',
          );
          if (!mounted) return;
          // Dismissing the save dialog leaves the sheet as it was.
          setState(() {
            _pending = false;
            if (saved != null) _exported = students.length;
          });
        } catch (_) {
          if (!mounted) return;
          setState(() {
            _pending = false;
            _error = 'Export failed. Please try again.';
          });
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SheetTitle('Export Students'),
        if (!_finished) ...[
          Text(
            '${_students(widget.ids.length)} selected · CSV format',
            style: const TextStyle(color: AppColors.textMuted),
          ),
          SheetActions(busy: _pending, onSubmit: _export, submitLabel: 'Export as CSV', color: AppColors.emerald),
        ] else ...[
          if (_error != null)
            Text(
              _error!,
              style: const TextStyle(color: AppColors.danger, fontWeight: FontWeight.w600),
            ),
          if (_empty)
            const Text(
              'No student records were returned for the selected IDs.',
              style: TextStyle(color: AppColors.textSecondary),
            ),
          if (_exported != null)
            Text(
              '${_students(_exported!)} exported. Your CSV file has been saved.',
              style: const TextStyle(color: AppColors.success, fontWeight: FontWeight.w600),
            ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: FilledButton(
                onPressed: () => Navigator.of(context).pop(_exported != null),
                child: const Text('Done'),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
