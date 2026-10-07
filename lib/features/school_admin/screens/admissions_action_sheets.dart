import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/models/admin_admissions.dart';
import '../../../ui/theme/app_colors.dart';
import '../providers/admissions_providers.dart';
import '../services/admissions_service.dart';
import '../services/staff_directory_service.dart' show isoDate;
import 'admissions_widgets.dart';
import 'school_admin_page_scaffold.dart';

/// The single-application actions of web ApplicationDetailPage.jsx, each as
/// a bottom sheet (the web's Modal): Verify Payment, Schedule Interview,
/// Mark Attendance, Mark Qualified, Final Select, Reject, Register as
/// Student and Verify Document. Every one refreshes the detail and the
/// admissions lists on success and shows the web's toast copy.

void _refresh(WidgetRef ref, String applicationId) {
  ref.invalidate(admissionDetailProvider(applicationId));
  ref.invalidate(admissionListProvider);
}

InputDecoration _decoration(String label, {String? hint}) =>
    InputDecoration(labelText: label, hintText: hint, border: const OutlineInputBorder(), alignLabelWithHint: true);

/// A sentence with the application number in bold (the web's
/// `<strong>` inside the modal copy).
Widget _message(String before, String applicationNo, String after) => Text.rich(
  TextSpan(
    text: before,
    children: [
      TextSpan(
        text: applicationNo,
        style: const TextStyle(fontWeight: FontWeight.w700, color: AppColors.textPrimary),
      ),
      TextSpan(text: after),
    ],
  ),
  style: const TextStyle(color: AppColors.textSecondary),
);

// ── Remarks-only actions ─────────────────────────────────────────────────

class _RemarksSheet extends ConsumerStatefulWidget {
  const _RemarksSheet({
    required this.app,
    required this.title,
    required this.before,
    required this.after,
    required this.hint,
    required this.fallback,
    required this.confirmLabel,
    required this.color,
    required this.successMessage,
    required this.run,
    this.danger = false,
  });

  final AdmissionApplicationDetail app;
  final String title;
  final String before;
  final String after;
  final String hint;

  /// Sent when the remarks field is left blank (the web's `|| 'Cash received'`).
  final String fallback;
  final String confirmLabel;
  final Color color;
  final String successMessage;
  final bool danger;
  final Future<Result<void>> Function(String remarks) run;

  @override
  ConsumerState<_RemarksSheet> createState() => _RemarksSheetState();
}

class _RemarksSheetState extends ConsumerState<_RemarksSheet> {
  final _remarks = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _remarks.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    final text = _remarks.text.trim();
    final res = await widget.run(text.isEmpty ? widget.fallback : text);
    if (!mounted) return;
    switch (res) {
      case Ok():
        _refresh(ref, widget.app.applicationId);
        Navigator.of(context).pop();
        showSnack(context, widget.successMessage);
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failureMessage(failure, 'Something went wrong. Please try again.');
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        SheetTitle(widget.title),
        _message(widget.before, widget.app.applicationNo ?? '', widget.after),
        const SizedBox(height: 14),
        TextField(
          controller: _remarks,
          minLines: 3,
          maxLines: 5,
          decoration: _decoration('Remarks', hint: widget.hint),
        ),
        if (_error != null) ...[const SizedBox(height: 12), FormErrorText(_error!)],
        SheetActions(
          busy: _busy,
          onSubmit: _submit,
          submitLabel: widget.confirmLabel,
          danger: widget.danger,
          color: widget.danger ? null : widget.color,
        ),
      ],
    );
  }
}

Future<void> showVerifyPaymentSheet(BuildContext context, AdmissionApplicationDetail app) => showAdminFormSheet<void>(
  context,
  (_) => _RemarksSheet(
    app: app,
    title: 'Verify Payment',
    before: 'Mark the registration fee for ',
    after: ' as verified. The applicant will proceed to the next stage.',
    hint: 'e.g. Cash received',
    fallback: 'Cash received',
    confirmLabel: 'Confirm Verification',
    color: AppColors.success,
    successMessage: 'Payment verified successfully',
    run: (r) => AdmissionsService().verifyPayment(app.applicationId, r),
  ),
);

Future<void> showFinalSelectSheet(BuildContext context, AdmissionApplicationDetail app) => showAdminFormSheet<void>(
  context,
  (_) => _RemarksSheet(
    app: app,
    title: 'Confirm Final Selection',
    before: 'Mark ',
    after: " as final selected. This will confirm the applicant's seat.",
    hint: 'e.g. Confirmed seat',
    fallback: 'Confirmed seat',
    confirmLabel: 'Confirm Final Selection',
    color: AppColors.teal,
    successMessage: 'Applicant marked as final selected',
    run: (r) => AdmissionsService().finalSelect(app.applicationId, r),
  ),
);

Future<void> showQualifySheet(BuildContext context, AdmissionApplicationDetail app) => showAdminFormSheet<void>(
  context,
  (_) => _RemarksSheet(
    app: app,
    title: 'Mark as Qualified',
    before: 'Mark ',
    after: ' as qualified. The applicant will proceed to the final selection stage.',
    hint: 'e.g. Passed interview',
    fallback: 'Qualified after interview',
    confirmLabel: 'Confirm Qualification',
    color: AppColors.rose,
    successMessage: 'Applicant marked as qualified',
    run: (r) => AdmissionsService().qualify(app.applicationId, r),
  ),
);

Future<void> showRejectSheet(BuildContext context, AdmissionApplicationDetail app) => showAdminFormSheet<void>(
  context,
  (_) => _RemarksSheet(
    app: app,
    title: 'Reject Application',
    before: 'Reject ',
    after: '. This will mark the application as rejected.',
    hint: 'e.g. Does not meet eligibility criteria',
    fallback: 'Application rejected',
    confirmLabel: 'Confirm Rejection',
    color: AppColors.danger,
    danger: true,
    successMessage: 'Application rejected',
    run: (r) => AdmissionsService().reject(app.applicationId, r),
  ),
);

// ── Schedule interview ───────────────────────────────────────────────────

Future<void> showScheduleInterviewSheet(BuildContext context, AdmissionApplicationDetail app) =>
    showAdminFormSheet<void>(context, (_) => _ScheduleSheet(app: app));

class _ScheduleSheet extends ConsumerStatefulWidget {
  const _ScheduleSheet({required this.app});

  final AdmissionApplicationDetail app;

  @override
  ConsumerState<_ScheduleSheet> createState() => _ScheduleSheetState();
}

class _ScheduleSheetState extends ConsumerState<_ScheduleSheet> {
  DateTime? _date;
  TimeOfDay? _time;
  bool _busy = false;
  String? _error;

  Future<void> _submit() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    final res = await AdmissionsService().scheduleInterview(
      widget.app.applicationId,
      isoDate(_date!),
      TimeField.hhmm(_time!),
    );
    if (!mounted) return;
    switch (res) {
      case Ok():
        _refresh(ref, widget.app.applicationId);
        Navigator.of(context).pop();
        showSnack(context, 'Interview scheduled successfully');
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failureMessage(failure, 'Something went wrong. Please try again.');
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SheetTitle('Schedule Interview'),
        _message('Schedule an interview for ', widget.app.applicationNo ?? '', '.'),
        const SizedBox(height: 14),
        DateField(label: 'Interview Date *', value: _date, onPicked: (d) => setState(() => _date = d)),
        const SizedBox(height: 14),
        TimeField(label: 'Interview Time *', value: _time, onPicked: (t) => setState(() => _time = t)),
        if (_error != null) ...[const SizedBox(height: 12), FormErrorText(_error!)],
        SheetActions(
          busy: _busy,
          onSubmit: (_date != null && _time != null) ? _submit : null,
          submitLabel: 'Confirm Schedule',
          color: AppColors.emerald,
        ),
      ],
    );
  }
}

// ── Mark attendance ──────────────────────────────────────────────────────

Future<void> showAttendanceSheet(BuildContext context, AdmissionApplicationDetail app) =>
    showAdminFormSheet<void>(context, (_) => _AttendanceSheet(app: app));

class _AttendanceSheet extends ConsumerStatefulWidget {
  const _AttendanceSheet({required this.app});

  final AdmissionApplicationDetail app;

  @override
  ConsumerState<_AttendanceSheet> createState() => _AttendanceSheetState();
}

class _AttendanceSheetState extends ConsumerState<_AttendanceSheet> {
  bool _busy = false;
  String? _error;

  Future<void> _mark(String status) async {
    setState(() {
      _busy = true;
      _error = null;
    });
    final res = await AdmissionsService().markAttendance(widget.app.applicationId, status);
    if (!mounted) return;
    switch (res) {
      case Ok():
        _refresh(ref, widget.app.applicationId);
        Navigator.of(context).pop();
        showSnack(context, 'Applicant marked as ${status.toLowerCase()}');
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failureMessage(failure, 'Something went wrong. Please try again.');
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget option(String status, Color fg, Color bg) => Expanded(
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          foregroundColor: fg,
          backgroundColor: bg,
          side: BorderSide(color: fg),
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
        onPressed: _busy ? null : () => _mark(status),
        icon: _busy
            ? const SizedBox(width: 14, height: 14, child: CircularProgressIndicator(strokeWidth: 2))
            : const Icon(Icons.how_to_reg_outlined, size: 16),
        label: Text(status),
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SheetTitle('Mark Interview Attendance'),
        _message('Record attendance for ', widget.app.applicationNo ?? '', ' at the interview.'),
        if (_error != null) ...[const SizedBox(height: 12), FormErrorText(_error!)],
        const SizedBox(height: 16),
        Row(
          children: [
            option('Present', AppColors.emerald, AppColors.emeraldLight),
            const SizedBox(width: 12),
            option('Absent', AppColors.danger, AppColors.dangerBg),
          ],
        ),
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(onPressed: _busy ? null : () => Navigator.of(context).pop(), child: const Text('Cancel')),
        ),
      ],
    );
  }
}

// ── Verify document ──────────────────────────────────────────────────────

Future<void> showVerifyDocumentSheet(BuildContext context, AdmissionApplicationDetail app, AdmissionDocument doc) =>
    showAdminFormSheet<void>(context, (_) => _VerifyDocumentSheet(app: app, doc: doc));

class _VerifyDocumentSheet extends ConsumerStatefulWidget {
  const _VerifyDocumentSheet({required this.app, required this.doc});

  final AdmissionApplicationDetail app;
  final AdmissionDocument doc;

  @override
  ConsumerState<_VerifyDocumentSheet> createState() => _VerifyDocumentSheetState();
}

class _VerifyDocumentSheetState extends ConsumerState<_VerifyDocumentSheet> {
  String _status = 'Verified';
  final _remarks = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _remarks.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    final text = _remarks.text.trim();
    final res = await AdmissionsService().verifyDocument(
      widget.doc.documentId,
      _status,
      text.isEmpty ? 'Document checked' : text,
    );
    if (!mounted) return;
    switch (res) {
      case Ok():
        _refresh(ref, widget.app.applicationId);
        Navigator.of(context).pop();
        showSnack(context, 'Document verification status updated');
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failureMessage(failure, 'Failed to verify document.');
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SheetTitle('Verify Document'),
        OptionSelect(
          label: 'Verification Status *',
          value: _status,
          options: const [('Pending', 'Pending'), ('Verified', 'Verified'), ('Rejected', 'Rejected')],
          onChanged: (v) => setState(() => _status = v),
        ),
        const SizedBox(height: 14),
        TextField(
          controller: _remarks,
          minLines: 3,
          maxLines: 5,
          decoration: _decoration('Remarks (optional)', hint: 'e.g. Original document checked'),
        ),
        if (_error != null) ...[const SizedBox(height: 12), FormErrorText(_error!)],
        SheetActions(busy: _busy, onSubmit: _submit, submitLabel: 'Confirm'),
      ],
    );
  }
}

// ── Register as student ──────────────────────────────────────────────────

Future<void> showRegisterSheet(BuildContext context, AdmissionApplicationDetail app) =>
    showAdminFormSheet<void>(context, (_) => _RegisterSheet(app: app, pageContext: context));

class _RegisterSheet extends ConsumerStatefulWidget {
  const _RegisterSheet({required this.app, required this.pageContext});

  final AdmissionApplicationDetail app;

  /// The page behind the sheet — it outlives the sheet, so the credentials
  /// are shown on it after the sheet closes.
  final BuildContext pageContext;

  @override
  ConsumerState<_RegisterSheet> createState() => _RegisterSheetState();
}

class _RegisterSheetState extends ConsumerState<_RegisterSheet> {
  DateTime? _date;
  final _roll = TextEditingController();
  final _remarks = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _roll.dispose();
    _remarks.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    final res = await AdmissionsService().register(
      widget.app.applicationId,
      admissionDate: isoDate(_date!),
      rollNo: _roll.text.trim().isEmpty ? null : _roll.text.trim(),
      remarks: _remarks.text.trim().isEmpty ? null : _remarks.text.trim(),
    );
    if (!mounted) return;
    switch (res) {
      case Ok(:final value):
        _refresh(ref, widget.app.applicationId);
        Navigator.of(context).pop();
        final page = widget.pageContext;
        if (!page.mounted) return;
        showSnack(page, 'Student registered successfully');
        // The generated password is shown once, here (the web's
        // CredentialsModal, which its page never actually opens).
        await showCredentialsSheet(page, value);
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failureMessage(failure, 'Something went wrong. Please try again.');
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SheetTitle('Register as Student'),
        _message('Register ', widget.app.applicationNo ?? '', ' as an active student. This action cannot be undone.'),
        const SizedBox(height: 14),
        DateField(label: 'Admission Date *', value: _date, onPicked: (d) => setState(() => _date = d)),
        const SizedBox(height: 14),
        TextField(
          controller: _roll,
          decoration: _decoration('Roll No (optional)', hint: 'e.g. 1011'),
        ),
        const SizedBox(height: 14),
        TextField(
          controller: _remarks,
          minLines: 2,
          maxLines: 4,
          decoration: _decoration('Remarks (optional)', hint: 'e.g. New admission 2025-26'),
        ),
        if (_error != null) ...[const SizedBox(height: 12), FormErrorText(_error!)],
        SheetActions(
          busy: _busy,
          onSubmit: _date == null ? null : _submit,
          submitLabel: 'Confirm Registration',
          color: AppColors.success,
        ),
      ],
    );
  }
}

/// "Student Login Credentials" — shown once, right after registration.
Future<void> showCredentialsSheet(BuildContext context, AdmissionRegistrationResult result) =>
    showAdminFormSheet<void>(context, (_) => _CredentialsSheet(result: result));

class _CredentialsSheet extends StatelessWidget {
  const _CredentialsSheet({required this.result});

  final AdmissionRegistrationResult result;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SheetTitle('Student Login Credentials'),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(color: AppColors.amberLight, borderRadius: BorderRadius.circular(12)),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.key_outlined, size: 18, color: AppColors.amber),
              SizedBox(width: 10),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    text: 'This password is shown ',
                    children: [
                      TextSpan(
                        text: 'only once',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      TextSpan(
                        text:
                            '. Share it with the student now — it cannot be retrieved again after closing this dialog.',
                      ),
                    ],
                  ),
                  style: TextStyle(color: AppColors.textSecondary),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 14),
        _CopyField(label: 'Admission No. / Username', value: result.username ?? result.admissionNo ?? ''),
        const SizedBox(height: 12),
        _CopyField(label: 'Password', value: result.password ?? ''),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: FilledButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Done')),
          ),
        ),
      ],
    );
  }
}

class _CopyField extends StatefulWidget {
  const _CopyField({required this.label, required this.value});

  final String label;
  final String value;

  @override
  State<_CopyField> createState() => _CopyFieldState();
}

class _CopyFieldState extends State<_CopyField> {
  bool _copied = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.fromLTRB(12, 4, 4, 4),
          decoration: BoxDecoration(
            color: AppColors.pageBg,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.border),
          ),
          child: Row(
            children: [
              Expanded(
                child: SelectableText(widget.value, style: const TextStyle(fontFamily: 'monospace', fontSize: 15)),
              ),
              TextButton.icon(
                onPressed: () async {
                  await Clipboard.setData(ClipboardData(text: widget.value));
                  if (!mounted) return;
                  setState(() => _copied = true);
                  await Future<void>.delayed(const Duration(milliseconds: 1500));
                  if (mounted) setState(() => _copied = false);
                },
                icon: Icon(_copied ? Icons.check : Icons.copy, size: 14),
                label: Text(_copied ? 'Copied' : 'Copy'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
