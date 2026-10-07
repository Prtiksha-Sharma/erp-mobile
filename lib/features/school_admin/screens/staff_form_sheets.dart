import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_staff.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/school_admin_providers.dart';
import '../services/staff_directory_service.dart';
import 'school_admin_page_scaffold.dart';

/// Gender options (StaffIdentityFields GENDER_OPTIONS).
const _genderOptions = ['Male', 'Female', 'Other'];

/// Every editable field the Add and Edit Staff forms share — the web's
/// useStaffForm EMPTY_FORM / useStaffEditFields fieldsFromStaff.
class _StaffFields {
  _StaffFields([StaffMember? s])
    : fullName = TextEditingController(text: s?.fullName ?? ''),
      designation = TextEditingController(text: s?.designation ?? ''),
      department = TextEditingController(text: s?.department ?? ''),
      contactNumber = TextEditingController(text: s?.contactNumber ?? ''),
      address = TextEditingController(text: s?.address ?? ''),
      qualification = TextEditingController(text: s?.qualification ?? ''),
      workLocation = TextEditingController(text: s?.workLocation ?? ''),
      bankName = TextEditingController(text: s?.bankName ?? ''),
      accountHolderName = TextEditingController(text: s?.accountHolderName ?? ''),
      bankAccountNumber = TextEditingController(text: s?.bankAccountNumber ?? ''),
      ifscCode = TextEditingController(text: s?.ifscCode ?? ''),
      bankBranchName = TextEditingController(text: s?.bankBranchName ?? ''),
      panNumber = TextEditingController(text: s?.panNumber ?? ''),
      aadhaarNumber = TextEditingController(text: s?.aadhaarNumber ?? ''),
      pfUanNumber = TextEditingController(text: s?.pfUanNumber ?? ''),
      esiNumber = TextEditingController(text: s?.esiNumber ?? ''),
      dateOfBirth = calendarDayOf(s?.dateOfBirth),
      confirmationDate = calendarDayOf(s?.confirmationDate),
      gender = s?.gender ?? '',
      reportingToStaffId = s?.reportsTo?.staffId ?? '',
      branchId = s?.branch?.branchId ?? '',
      employeeType = s?.employeeType ?? '',
      pfApplicable = s?.pfApplicable ?? true,
      esiApplicable = s?.esiApplicable ?? false;

  final TextEditingController fullName;
  final TextEditingController designation;
  final TextEditingController department;
  final TextEditingController contactNumber;
  final TextEditingController address;
  final TextEditingController qualification;
  final TextEditingController workLocation;
  final TextEditingController bankName;
  final TextEditingController accountHolderName;
  final TextEditingController bankAccountNumber;
  final TextEditingController ifscCode;
  final TextEditingController bankBranchName;
  final TextEditingController panNumber;
  final TextEditingController aadhaarNumber;
  final TextEditingController pfUanNumber;
  final TextEditingController esiNumber;
  DateTime? dateOfBirth;
  DateTime? confirmationDate;
  String gender;
  String reportingToStaffId;
  String branchId;
  String employeeType;
  bool pfApplicable;
  bool esiApplicable;

  List<TextEditingController> get _controllers => [
    fullName, designation, department, contactNumber, address, qualification, workLocation, bankName, //
    accountHolderName, bankAccountNumber, ifscCode, bankBranchName, panNumber, aadhaarNumber, pfUanNumber,
    esiNumber,
  ];

  void dispose() {
    for (final c in _controllers) {
      c.dispose();
    }
  }

  /// Every identity field keyed by its backend name, as raw text ('' when
  /// blank) — the two forms differ only in how blanks are sent.
  Map<String, Object> _raw() => {
    'designation': designation.text,
    'department': department.text,
    'date_of_birth': dateOfBirth == null ? '' : isoDate(dateOfBirth!),
    'gender': gender,
    'contact_number': contactNumber.text,
    'address': address.text,
    'qualification': qualification.text,
    'reporting_to_staff_id': reportingToStaffId,
    'branch_id': branchId,
    'employee_type': employeeType,
    'confirmation_date': confirmationDate == null ? '' : isoDate(confirmationDate!),
    'work_location': workLocation.text,
    'bank_name': bankName.text,
    'account_holder_name': accountHolderName.text,
    'bank_account_number': bankAccountNumber.text,
    'ifsc_code': ifscCode.text,
    'branch_name': bankBranchName.text,
    'pan_number': panNumber.text,
    'aadhaar_number': aadhaarNumber.text,
    'pf_uan_number': pfUanNumber.text,
    'esi_number': esiNumber.text,
  };

  /// Create payload: blank fields omitted (useStaffForm's `...(x && {...})`).
  Map<String, dynamic> createFields() => {
    for (final e in _raw().entries)
      if ((e.value as String).isNotEmpty) e.key: e.value,
    'pf_applicable': pfApplicable,
    'esi_applicable': esiApplicable,
  };

  /// Edit payload: every field sent, blank → null (useStaffEditFields).
  Map<String, dynamic> updateFields() => {
    'full_name': fullName.text,
    for (final e in _raw().entries) e.key: (e.value as String).isEmpty ? null : e.value,
    'pf_applicable': pfApplicable,
    'esi_applicable': esiApplicable,
  };
}

class _UpperCaseFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) =>
      newValue.copyWith(text: newValue.text.toUpperCase());
}

InputDecoration _input(String label, {String? hint, String? error}) =>
    InputDecoration(labelText: label, hintText: hint, errorText: error, border: const OutlineInputBorder());

/// StaffIdentityFields.jsx — the identity/contact/employment/bank/statutory
/// fields both staff forms share.
class _StaffIdentityFields extends ConsumerWidget {
  const _StaffIdentityFields({required this.f, required this.onChanged, this.excludeStaffId});

  final _StaffFields f;
  final VoidCallback onChanged;
  final String? excludeStaffId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reportingTo = (ref.watch(reportingToOptionsProvider).value ?? const <StaffMember>[])
        .where((s) => s.staffId != excludeStaffId)
        .map((s) => (s.staffId, s.fullName))
        .toList();
    final branches = ref.watch(schoolBranchesProvider).value ?? const [];
    const gap = SizedBox(height: 14);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: f.designation,
          decoration: _input('Designation', hint: 'e.g. Designation of Staff'),
        ),
        gap,
        TextField(
          controller: f.department,
          decoration: _input('Department', hint: 'e.g. Science, Administration'),
        ),
        gap,
        FieldPair(
          first: DateField(
            label: 'Date of Birth',
            value: f.dateOfBirth,
            onPicked: (d) {
              f.dateOfBirth = d;
              onChanged();
            },
            onClear: () {
              f.dateOfBirth = null;
              onChanged();
            },
          ),
          second: OptionSelect(
            label: 'Gender',
            value: f.gender,
            placeholder: 'Select…',
            options: [for (final g in _genderOptions) (g, g)],
            onChanged: (v) {
              f.gender = v;
              onChanged();
            },
          ),
        ),
        gap,
        TextField(
          controller: f.contactNumber,
          keyboardType: TextInputType.phone,
          decoration: _input('Contact Number', hint: 'e.g. 9XXXXXXXXX'),
        ),
        gap,
        TextField(
          controller: f.address,
          decoration: _input('Address', hint: 'Current address'),
        ),
        gap,
        TextField(
          controller: f.qualification,
          decoration: _input('Qualification', hint: 'e.g. M.Sc, B.Ed'),
        ),
        gap,
        OptionSelect(
          label: 'Reporting To',
          value: f.reportingToStaffId,
          placeholder: 'No one selected',
          options: reportingTo,
          onChanged: (v) {
            f.reportingToStaffId = v;
            onChanged();
          },
        ),
        if (branches.isNotEmpty) ...[
          gap,
          OptionSelect(
            label: 'Branch',
            value: f.branchId,
            placeholder: 'Select branch',
            options: [for (final b in branches) (b.branchId, b.branchName)],
            onChanged: (v) {
              f.branchId = v;
              onChanged();
            },
          ),
        ],
        const FormSectionLabel('Employment Info'),
        gap,
        FieldPair(
          first: OptionSelect(
            label: 'Employee Type',
            value: f.employeeType,
            placeholder: 'Select type',
            options: [for (final t in employeeTypeOptions) (t, t)],
            onChanged: (v) {
              f.employeeType = v;
              onChanged();
            },
          ),
          second: DateField(
            label: 'Confirmation Date',
            value: f.confirmationDate,
            onPicked: (d) {
              f.confirmationDate = d;
              onChanged();
            },
            onClear: () {
              f.confirmationDate = null;
              onChanged();
            },
          ),
        ),
        gap,
        TextField(
          controller: f.workLocation,
          decoration: _input('Work Location', hint: 'e.g. Main Campus'),
        ),
        const FormSectionLabel('Bank Info'),
        gap,
        TextField(
          controller: f.bankName,
          decoration: _input('Bank Name', hint: 'e.g. HDFC Bank'),
        ),
        gap,
        TextField(
          controller: f.accountHolderName,
          decoration: _input('Account Holder Name', hint: 'Name as per bank records'),
        ),
        gap,
        FieldPair(
          first: TextField(
            controller: f.bankAccountNumber,
            keyboardType: TextInputType.number,
            decoration: _input('Account Number'),
          ),
          second: TextField(
            controller: f.ifscCode,
            inputFormatters: [_UpperCaseFormatter()],
            decoration: _input('IFSC Code', hint: 'e.g. HDFC0001234'),
          ),
        ),
        gap,
        TextField(controller: f.bankBranchName, decoration: _input('Bank Branch')),
        const FormSectionLabel('Statutory Info'),
        gap,
        FieldPair(
          first: TextField(
            controller: f.panNumber,
            inputFormatters: [_UpperCaseFormatter()],
            decoration: _input('PAN Number', hint: 'e.g. ABCDE1234F'),
          ),
          second: TextField(
            controller: f.aadhaarNumber,
            keyboardType: TextInputType.number,
            decoration: _input('Aadhaar Number', hint: '12-digit number'),
          ),
        ),
        gap,
        TextField(controller: f.pfUanNumber, decoration: _input('UAN Number')),
        const SizedBox(height: 4),
        Wrap(
          spacing: 16,
          children: [
            _CheckRow(
              label: 'PF Applicable',
              value: f.pfApplicable,
              onChanged: (v) {
                f.pfApplicable = v;
                onChanged();
              },
            ),
            _CheckRow(
              label: 'ESI Applicable',
              value: f.esiApplicable,
              onChanged: (v) {
                f.esiApplicable = v;
                onChanged();
              },
            ),
          ],
        ),
        if (f.esiApplicable) ...[
          const SizedBox(height: 4),
          TextField(controller: f.esiNumber, decoration: _input('ESI Number')),
        ],
        const SizedBox(height: 10),
        const Text(
          'Statutory rates (PF/ESI percentages, PT slabs) are configured separately under Payroll Settings, not per employee.',
          style: TextStyle(color: AppColors.textMuted, fontSize: 12),
        ),
      ],
    );
  }
}

class _CheckRow extends StatelessWidget {
  const _CheckRow({required this.label, required this.value, required this.onChanged});

  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => onChanged(!value),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(value: value, onChanged: (v) => onChanged(v ?? false)),
          Flexible(
            child: Text(label, style: const TextStyle(color: AppColors.textSecondary)),
          ),
          const SizedBox(width: 4),
        ],
      ),
    );
  }
}

// ── Add Staff (AddStaffModal + useStaffForm) ─────────────────────────────

/// Opens Add Staff; [initialRoles] pre-ticks roles (the web's
/// `?addRole=Librarian` deep link). Resolves true once an account was made.
Future<bool> showAddStaffSheet(BuildContext context, {List<String> initialRoles = const []}) async {
  final created = await showAdminFormSheet<bool>(context, (_) => _AddStaffForm(initialRoles: initialRoles));
  return created ?? false;
}

class _AddStaffForm extends ConsumerStatefulWidget {
  const _AddStaffForm({required this.initialRoles});

  final List<String> initialRoles;

  @override
  ConsumerState<_AddStaffForm> createState() => _AddStaffFormState();
}

class _AddStaffFormState extends ConsumerState<_AddStaffForm> {
  final _f = _StaffFields();
  final _email = TextEditingController();
  final _mobile = TextEditingController();
  late final Set<String> _roles = {...widget.initialRoles};
  DateTime? _dateOfJoining;
  Map<String, String> _errors = {};
  bool _saving = false;
  String? _saveError;
  StaffCredentials? _credentials;

  @override
  void dispose() {
    _f.dispose();
    _email.dispose();
    _mobile.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final errors = <String, String>{
      if (_f.fullName.text.trim().isEmpty) 'fullName': 'Full name is required',
      if (_roles.isEmpty) 'roles': 'Select at least one role',
      if (_dateOfJoining == null) 'dateOfJoining': 'Date of joining is required',
    };
    setState(() => _errors = errors);
    if (errors.isNotEmpty) return;

    setState(() {
      _saving = true;
      _saveError = null;
    });
    final result = await StaffDirectoryService().createStaff({
      'full_name': _f.fullName.text,
      'roles': _roles.toList(),
      'date_of_joining': isoDate(_dateOfJoining!),
      if (_email.text.isNotEmpty) 'email': _email.text,
      if (_mobile.text.isNotEmpty) 'mobile_no': _mobile.text,
      ..._f.createFields(),
    });
    if (!mounted) return;
    switch (result) {
      case Ok(:final value):
        ref.invalidate(staffListProvider);
        ref.invalidate(staffSummaryProvider);
        ref.invalidate(reportingToOptionsProvider);
        setState(() {
          _saving = false;
          _credentials = value;
        });
      case Err(:final failure):
        setState(() {
          _saving = false;
          _saveError = failureMessage(failure, 'Failed to create staff account.');
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final creds = _credentials;
    if (creds != null) return _CredentialsView(creds: creds);

    final rolesAsync = ref.watch(adminRolesProvider);
    const gap = SizedBox(height: 14);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SheetTitle('Add Staff'),
        TextField(
          controller: _f.fullName,
          decoration: _input("Full Name *", hint: "Enter staff member's full name", error: _errors['fullName']),
          onChanged: (_) {
            if (_errors.containsKey('fullName')) setState(() => _errors = {..._errors}..remove('fullName'));
          },
        ),
        gap,
        const Text(
          'Role(s) *',
          style: TextStyle(fontWeight: FontWeight.w500, color: AppColors.textSecondary),
        ),
        const SizedBox(height: 4),
        rolesAsync.when(
          skipLoadingOnRefresh: true,
          loading: () => const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2)),
                SizedBox(width: 8),
                Text('Loading roles…', style: TextStyle(color: AppColors.textMuted)),
              ],
            ),
          ),
          error: (err, _) => ErrorView(message: describeError(err), onRetry: () => ref.invalidate(adminRolesProvider)),
          data: (roles) {
            final assignable = roles.where((r) => assignableStaffRoles.contains(r.roleName)).toList();
            return LayoutBuilder(
              builder: (context, c) {
                final w = (c.maxWidth - 8) / 2;
                return Wrap(
                  spacing: 8,
                  children: [
                    for (final r in assignable)
                      SizedBox(
                        width: w,
                        child: _CheckRow(
                          label: r.roleName,
                          value: _roles.contains(r.roleName),
                          onChanged: (v) => setState(() {
                            v ? _roles.add(r.roleName) : _roles.remove(r.roleName);
                            _errors = {..._errors}..remove('roles');
                          }),
                        ),
                      ),
                  ],
                );
              },
            );
          },
        ),
        if (_errors['roles'] != null) FormErrorText(_errors['roles']!),
        gap,
        DateField(
          label: 'Date of Joining *',
          value: _dateOfJoining,
          errorText: _errors['dateOfJoining'],
          onPicked: (d) => setState(() {
            _dateOfJoining = d;
            _errors = {..._errors}..remove('dateOfJoining');
          }),
        ),
        gap,
        TextField(
          controller: _email,
          keyboardType: TextInputType.emailAddress,
          decoration: _input('Email', hint: 'Enter email address'),
        ),
        gap,
        TextField(
          controller: _mobile,
          keyboardType: TextInputType.phone,
          decoration: _input('Mobile Number', hint: 'e.g. 9XXXXXXXXX'),
        ),
        gap,
        _StaffIdentityFields(f: _f, onChanged: () => setState(() {})),
        if (_saveError != null) ...[const SizedBox(height: 12), FormErrorText(_saveError!)],
        SheetActions(busy: _saving, onSubmit: _save, submitLabel: 'Create Staff Account'),
      ],
    );
  }
}

/// AddStaffModal's "Staff Account Created" step — the generated password
/// is shown once.
class _CredentialsView extends StatelessWidget {
  const _CredentialsView({required this.creds});

  final StaffCredentials creds;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SheetTitle('Staff Account Created'),
        Row(
          children: [
            const Icon(Icons.check_circle_outline, size: 18, color: AppColors.success),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                "${creds.fullName}'s login was created.",
                style: const TextStyle(color: AppColors.success, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        const SizedBox(height: 14),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.pageBg,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.border),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Username', style: TextStyle(color: AppColors.textMuted, fontSize: 12)),
              const SizedBox(height: 2),
              SelectableText(creds.username, style: const TextStyle(fontFamily: 'monospace', fontSize: 15)),
              const SizedBox(height: 12),
              const Text('Temporary Password', style: TextStyle(color: AppColors.textMuted, fontSize: 12)),
              const SizedBox(height: 2),
              SelectableText(
                creds.password,
                style: const TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'Copy these now and share them with ${creds.fullName} — this password will not be shown again.',
          style: const TextStyle(color: AppColors.textMuted, fontSize: 12),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Wrap(
            alignment: WrapAlignment.end,
            spacing: 8,
            children: [
              OutlinedButton.icon(
                icon: const Icon(Icons.copy, size: 16),
                label: const Text('Copy'),
                onPressed: () async {
                  await Clipboard.setData(ClipboardData(text: '${creds.username} / ${creds.password}'));
                  if (context.mounted) showSnack(context, 'Copied to clipboard.');
                },
              ),
              FilledButton(onPressed: () => Navigator.of(context).pop(true), child: const Text('Done')),
            ],
          ),
        ),
      ],
    );
  }
}

// ── Edit Staff (EditStaffModal + useStaffEditFields) ─────────────────────

/// Roles and employee code aren't editable — PATCH /admin/staff/:id only
/// accepts identity/contact/payroll-profile fields. Resolves true on save.
Future<bool> showEditStaffSheet(BuildContext context, String staffId) async {
  final saved = await showAdminFormSheet<bool>(context, (_) => _EditStaffLoader(staffId: staffId));
  return saved ?? false;
}

class _EditStaffLoader extends ConsumerWidget {
  const _EditStaffLoader({required this.staffId});

  final String staffId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final staff = ref.watch(staffDetailProvider(staffId));
    return staff.when(
      skipLoadingOnRefresh: true,
      loading: () => const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SheetTitle('Edit Staff'),
          LoadingView(label: 'Loading staff record…'),
        ],
      ),
      error: (err, _) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SheetTitle('Edit Staff'),
          ErrorView(message: describeError(err), onRetry: () => ref.invalidate(staffDetailProvider(staffId))),
        ],
      ),
      // Keyed by staff id: the form seeds itself once from real data.
      data: (s) => _EditStaffForm(key: ValueKey(s.staffId), staff: s),
    );
  }
}

class _EditStaffForm extends ConsumerStatefulWidget {
  const _EditStaffForm({super.key, required this.staff});

  final StaffMember staff;

  @override
  ConsumerState<_EditStaffForm> createState() => _EditStaffFormState();
}

class _EditStaffFormState extends ConsumerState<_EditStaffForm> {
  late final _f = _StaffFields(widget.staff);
  String? _nameError;
  bool _saving = false;
  String? _saveError;

  @override
  void dispose() {
    _f.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_f.fullName.text.trim().isEmpty) {
      setState(() => _nameError = 'Full name is required');
      return;
    }
    setState(() {
      _saving = true;
      _saveError = null;
    });
    final id = widget.staff.staffId;
    final result = await StaffDirectoryService().updateStaff(id, _f.updateFields());
    if (!mounted) return;
    switch (result) {
      case Ok():
        ref.invalidate(staffListProvider);
        ref.invalidate(staffDetailProvider(id));
        ref.invalidate(reportingToOptionsProvider);
        Navigator.of(context).pop(true);
      case Err(:final failure):
        setState(() {
          _saving = false;
          _saveError = failureMessage(failure, 'Failed to update staff member.');
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final code = widget.staff.employeeCode;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        SheetTitle(code != null ? 'Edit Staff — $code' : 'Edit Staff'),
        TextField(
          controller: _f.fullName,
          decoration: _input('Full Name *', hint: "Enter staff member's full name", error: _nameError),
          onChanged: (_) {
            if (_nameError != null) setState(() => _nameError = null);
          },
        ),
        const SizedBox(height: 14),
        _StaffIdentityFields(f: _f, excludeStaffId: widget.staff.staffId, onChanged: () => setState(() {})),
        if (_saveError != null) ...[const SizedBox(height: 12), FormErrorText(_saveError!)],
        SheetActions(busy: _saving, onSubmit: _save, submitLabel: 'Save Changes'),
      ],
    );
  }
}

// ── Reset Password (StaffResetPasswordModal) ─────────────────────────────

Future<void> showResetStaffPasswordSheet(BuildContext context, {required String userId, required String staffName}) =>
    showAdminFormSheet<void>(context, (_) => _ResetPasswordForm(userId: userId, staffName: staffName));

class _ResetPasswordForm extends StatefulWidget {
  const _ResetPasswordForm({required this.userId, required this.staffName});

  final String userId;
  final String staffName;

  @override
  State<_ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<_ResetPasswordForm> {
  final _password = TextEditingController();
  final _confirm = TextEditingController();
  String? _error;
  bool _busy = false;
  bool _done = false;

  @override
  void dispose() {
    _password.dispose();
    _confirm.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (_password.text.length < 8) return setState(() => _error = 'Password must be at least 8 characters.');
    if (_password.text != _confirm.text) return setState(() => _error = 'Passwords do not match.');
    setState(() {
      _error = null;
      _busy = true;
    });
    final result = await StaffDirectoryService().resetPassword(widget.userId, _password.text);
    if (!mounted) return;
    setState(() {
      _busy = false;
      switch (result) {
        case Ok():
          _done = true;
        case Err(:final failure):
          _error = failureMessage(failure, 'Failed to reset password.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_done) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SheetTitle('Reset Staff Password'),
          const Row(
            children: [
              Icon(Icons.check_circle_outline, size: 18, color: AppColors.success),
              SizedBox(width: 8),
              Text(
                'Password reset successfully.',
                style: TextStyle(color: AppColors.success, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            "${widget.staffName}'s password has been updated to the one you entered. "
            "Share it with them directly — it won't be shown here again.",
            style: const TextStyle(color: AppColors.textSecondary),
          ),
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

    final ready = _password.text.isNotEmpty && _confirm.text.isNotEmpty;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SheetTitle('Reset Staff Password'),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(color: AppColors.amberLight, borderRadius: BorderRadius.circular(12)),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.error_outline, size: 18, color: AppColors.amber),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  "This also signs out every existing session for this account — they'll need the new password to log back in.",
                  style: TextStyle(color: AppColors.amber),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 14),
        Text.rich(
          TextSpan(
            text: 'Set a new login password for ',
            children: [
              TextSpan(
                text: widget.staffName,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              const TextSpan(text: '.'),
            ],
          ),
          style: const TextStyle(color: AppColors.textSecondary),
        ),
        const SizedBox(height: 14),
        TextField(
          controller: _password,
          obscureText: true,
          autofillHints: const [AutofillHints.newPassword],
          decoration: _input('New password', hint: 'New password (min. 8 characters)'),
          onChanged: (_) => setState(() {}),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _confirm,
          obscureText: true,
          decoration: _input('Confirm password'),
          onChanged: (_) => setState(() {}),
        ),
        if (_error != null) ...[const SizedBox(height: 12), FormErrorText(_error!)],
        SheetActions(
          busy: _busy,
          onSubmit: ready ? _submit : null,
          submitLabel: 'Reset Password',
          color: AppColors.amber,
        ),
      ],
    );
  }
}
