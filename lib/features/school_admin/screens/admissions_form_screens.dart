import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/result.dart';
import '../../../core/models/admin_admissions.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../providers/admissions_providers.dart';
import '../providers/school_admin_providers.dart';
import '../services/admissions_service.dart';
import 'admissions_form_state.dart';
import 'admissions_widgets.dart';
import 'school_admin_nav.dart';
import 'school_admin_page_scaffold.dart';

/// New Application (web NewApplicationPage.jsx) and Continue Form (web
/// AdminContinueFormPage.jsx): the six-step admission form an admin fills
/// in on an applicant's behalf. One stepper drives both — the data, steps,
/// payloads and endpoints are shared; the differences are in
/// [AdmissionFormFlow] and below:
///
/// | | New Application | Continue Form |
/// |---|---|---|
/// | Step 1 "Next" | creates the application, then saves basic details | validates only (saved at step 2) |
/// | Class | picked | read-only |
/// | Step 6 | mandatory documents enforced; "Complete Application" | no enforcement; "Submit Application" |
/// | After submit | back to the applications list | to the application detail |
/// | Starts at | step 1 | the first incomplete step |

/// `/school-admin/admissions/new-application`.
class AdmissionNewApplicationScreen extends StatelessWidget {
  const AdmissionNewApplicationScreen({super.key});

  @override
  Widget build(BuildContext context) => const _FormFlow(isNew: true);
}

/// `/school-admin/admissions/applications/:id/continue`.
class AdmissionContinueFormScreen extends ConsumerWidget {
  const AdmissionContinueFormScreen({super.key, required this.applicationId});

  final String applicationId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detail = ref.watch(admissionDetailProvider(applicationId));
    return detail.when(
      skipLoadingOnRefresh: true,
      loading: () => const SchoolAdminPageScaffold(
        title: 'Complete Registration',
        body: LoadingView(label: 'Loading application…'),
      ),
      error: (err, _) => SchoolAdminPageScaffold(
        title: 'Complete Registration',
        body: AdmissionLoadError(
          title: 'Failed to load application.',
          error: err,
          onRetry: () => ref.invalidate(admissionDetailProvider(applicationId)),
        ),
      ),
      // Keyed by id: the form seeds itself once from the loaded application.
      data: (app) => _FormFlow(key: ValueKey(app.applicationId), isNew: false, app: app),
    );
  }
}

class _FormFlow extends ConsumerStatefulWidget {
  const _FormFlow({super.key, required this.isNew, this.app});

  final bool isNew;
  final AdmissionApplicationDetail? app;

  @override
  ConsumerState<_FormFlow> createState() => _FormFlowState();
}

class _FormFlowState extends ConsumerState<_FormFlow> {
  late final AdmissionFormData _d = widget.app == null
      ? AdmissionFormData()
      : AdmissionFormData.fromApplication(widget.app!);
  late int _step = widget.app == null ? 1 : AdmissionFormData.resumeStep(widget.app!);
  late String? _appId = widget.app?.applicationId;
  Map<String, String> _errors = {};
  bool _saving = false;
  String? _error;

  AdmissionFormFlow get _flow => widget.isNew ? AdmissionFormFlow.newApplication : AdmissionFormFlow.continueForm;

  @override
  void dispose() {
    _d.dispose();
    super.dispose();
  }

  void _changed() => setState(() {});

  void _clearError(String key) {
    if (_errors.containsKey(key)) setState(() => _errors = {..._errors}..remove(key));
  }

  void _back() => setState(() {
    _errors = {};
    _error = null;
    _step = (_step - 1).clamp(1, 6);
  });

  void _leave() =>
      context.go(widget.isNew ? SchoolAdminPaths.admissionsApplications : SchoolAdminPaths.admissionsIncomplete);

  /// Runs one save call; shows its error in the banner and stays on the step.
  Future<bool> _save(Future<Result<void>> Function() call, String fallback) async {
    setState(() {
      _saving = true;
      _error = null;
    });
    final res = await call();
    if (!mounted) return false;
    setState(() => _saving = false);
    if (res case Err(:final failure)) {
      setState(() => _error = failureMessage(failure, fallback));
      return false;
    }
    final id = _appId;
    if (id != null) ref.invalidate(admissionDetailProvider(id));
    return true;
  }

  Future<void> _next() async {
    final service = AdmissionsService();
    final Map<String, String> errs = switch (_step) {
      1 => _d.validateStep1(_flow),
      2 => _d.validateStep2(_flow),
      3 => _d.validateStep3(_flow),
      4 => _d.validateStep4(),
      5 => _d.validateStep5(),
      _ => const {},
    };
    setState(() => _errors = errs);
    if (errs.isNotEmpty) return;

    var ok = true;
    switch (_step) {
      case 1:
        if (widget.isNew) {
          // Create the application once, then save step 1's details.
          if (_appId == null) {
            setState(() {
              _saving = true;
              _error = null;
            });
            final created = await service.startApplication(classId: _d.classId);
            if (!mounted) return;
            setState(() => _saving = false);
            switch (created) {
              case Ok(:final value):
                _appId = value.applicationId;
              case Err(:final failure):
                setState(() => _error = failureMessage(failure, 'Unable to create the application. Please try again.'));
                return;
            }
          }
          ok = await _save(
            () => service.saveBasicDetails(_appId!, _d.basicDetailsPayload()),
            'Submission failed. Please try again.',
          );
        }
      case 2:
        ok = await _save(
          () => service.saveBasicDetails(_appId!, _d.basicDetailsPayload()),
          'Submission failed. Please try again.',
        );
      case 3:
        ok = await _save(
          () => service.saveParents(_appId!, _d.parentsPayload()),
          'Failed to save parent details. Please try again.',
        );
      case 4:
        ok = await _save(
          () => service.saveSiblings(_appId!, _d.siblingsPayload()),
          'Failed to save sibling details. Please try again.',
        );
      case 5:
        ok = await _save(
          () => service.savePreviousSchool(_appId!, _d.previousSchoolPayload()),
          'Failed to save previous school details. Please try again.',
        );
    }
    if (ok && mounted) setState(() => _step += 1);
  }

  Future<void> _submit() async {
    final id = _appId;
    if (id == null) return;
    final ok = await _save(() => AdmissionsService().submit(id), 'Failed to submit application. Please try again.');
    if (!ok || !mounted) {
      // New Application reports a failed submit as a toast.
      if (widget.isNew && _error != null && mounted) showSnack(context, _error!);
      return;
    }
    ref.invalidate(admissionListProvider);
    if (widget.isNew) {
      showSnack(context, 'Application submitted successfully!');
      context.go(SchoolAdminPaths.admissionsApplications);
    } else {
      context.go('${SchoolAdminPaths.admissionsApplications}/$id');
    }
  }

  @override
  Widget build(BuildContext context) {
    final app = widget.app;
    final applicantName = [app?.applicant?.firstName, app?.applicant?.lastName].whereType<String>().join(' ');
    final title = widget.isNew ? 'New Application' : (app?.applicationNo ?? 'Complete Registration');

    return SchoolAdminPageScaffold(
      title: title,
      body: ResponsiveListView(
        children: [
          if (widget.isNew) ...[
            PageHeading(
              icon: Icons.person_add_alt_1_outlined,
              title: 'New Application',
              subtitle: 'Register a new applicant for admission',
            ),
            const SizedBox(height: 16),
            _ProgressBanner(step: _step),
          ] else ...[
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 12,
              runSpacing: 8,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
                    ),
                    if (applicantName.isNotEmpty)
                      Text.rich(
                        TextSpan(
                          text: 'Completing on behalf of ',
                          children: [
                            TextSpan(
                              text: applicantName,
                              style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                            ),
                          ],
                        ),
                        style: const TextStyle(color: AppColors.textMuted),
                      ),
                  ],
                ),
                const AdmissionPill(
                  label: 'Admin — completing form',
                  colors: PillColors(AppColors.amber, AppColors.amberLight),
                  large: true,
                ),
              ],
            ),
          ],
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.border),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _StepProgress(step: _step),
                const Divider(height: 1, color: AppColors.border),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                    child: TextButton.icon(
                      style: TextButton.styleFrom(foregroundColor: AppColors.textMuted, padding: EdgeInsets.zero),
                      onPressed: _saving ? null : (_step == 1 ? _leave : _back),
                      icon: const Icon(Icons.arrow_back, size: 16),
                      label: Text(_step == 1 ? 'Cancel' : 'Back'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
                  child: _step == 6
                      ? _DocumentsStep(
                          key: ValueKey('docs-$_appId'),
                          applicationId: _appId!,
                          enforceMandatory: widget.isNew,
                          busy: _saving,
                          error: _error,
                          submitLabel: widget.isNew ? 'Complete Application' : 'Submit Application',
                          submitIcon: widget.isNew ? Icons.check_circle_outline : Icons.send,
                          onSubmit: _submit,
                        )
                      : _stepForm(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _stepForm() {
    final body = switch (_step) {
      1 => _Step1(d: _d, errors: _errors, flow: _flow, onChanged: _changed, onClear: _clearError),
      2 => _Step2(d: _d, errors: _errors, onChanged: _changed, onClear: _clearError),
      3 => _Step3(d: _d, errors: _errors, onChanged: _changed, onClear: _clearError),
      4 => _Step4(d: _d, errors: _errors, onChanged: _changed, onClear: _clearError),
      _ => _Step5(d: _d, errors: _errors, onChanged: _changed, onClear: _clearError),
    };
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (_error != null) ...[_ErrorBanner(_error!), const SizedBox(height: 16)],
        body,
        const SizedBox(height: 20),
        _FormFooter(label: 'Save & Next', icon: Icons.chevron_right, loading: _saving, onPressed: _next),
      ],
    );
  }
}

// ── Chrome ───────────────────────────────────────────────────────────────

class _ErrorBanner extends StatelessWidget {
  const _ErrorBanner(this.message);

  final String message;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(color: AppColors.dangerBg, borderRadius: BorderRadius.circular(12)),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.error_outline, size: 18, color: AppColors.danger),
        const SizedBox(width: 10),
        Expanded(
          child: Text(message, style: const TextStyle(color: AppColors.danger)),
        ),
      ],
    ),
  );
}

class _FormFooter extends StatelessWidget {
  const _FormFooter({required this.label, required this.icon, required this.loading, required this.onPressed});

  final String label;
  final IconData icon;
  final bool loading;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Divider(height: 1, color: AppColors.border),
        const SizedBox(height: 12),
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          runSpacing: 10,
          spacing: 12,
          children: [
            const Text.rich(
              TextSpan(
                text: 'Fields marked ',
                children: [
                  TextSpan(
                    text: '*',
                    style: TextStyle(color: AppColors.danger, fontWeight: FontWeight.w600),
                  ),
                  TextSpan(text: ' are mandatory'),
                ],
              ),
              style: TextStyle(fontSize: 12, color: AppColors.textMuted),
            ),
            FilledButton.icon(
              onPressed: loading ? null : onPressed,
              icon: loading
                  ? const SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                    )
                  : Icon(icon, size: 18),
              label: Text(loading ? 'Please wait…' : label),
            ),
          ],
        ),
      ],
    );
  }
}

/// StepProgress: numbered circles joined by lines; labels from tablet width,
/// otherwise just the active step's name underneath.
class _StepProgress extends StatelessWidget {
  const _StepProgress({required this.step});

  final int step;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
      child: LayoutBuilder(
        builder: (context, c) {
          final labels = c.maxWidth >= 760;
          Widget circle(int n) {
            final done = n < step;
            final active = n == step;
            return Container(
              width: 26,
              height: 26,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: done ? AppColors.success : (active ? AppColors.primary : AppColors.border),
              ),
              child: done
                  ? const Icon(Icons.check, size: 14, color: Colors.white)
                  : Text(
                      '$n',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: active ? Colors.white : AppColors.textMuted,
                      ),
                    ),
            );
          }

          final row = Row(
            children: [
              for (var n = 1; n <= 6; n++) ...[
                circle(n),
                if (labels) ...[
                  const SizedBox(width: 6),
                  Flexible(
                    child: Text(
                      admissionStepLabels[n - 1],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: n == step ? FontWeight.w700 : FontWeight.w400,
                        color: n == step ? AppColors.textPrimary : AppColors.textMuted,
                      ),
                    ),
                  ),
                ],
                if (n < 6)
                  Expanded(
                    child: Container(
                      height: 1,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      color: n < step ? AppColors.success : AppColors.border,
                    ),
                  ),
              ],
            ],
          );
          if (labels) return row;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              row,
              const SizedBox(height: 10),
              Text(
                'Step $step of 6 · ${admissionStepLabels[step - 1]}',
                style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
              ),
            ],
          );
        },
      ),
    );
  }
}

/// NewApplicationPage's brand-gradient progress banner.
class _ProgressBanner extends StatelessWidget {
  const _ProgressBanner({required this.step});

  final int step;

  @override
  Widget build(BuildContext context) {
    final completed = step - 1;
    final pct = (completed / 6 * 100).round();
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
      decoration: BoxDecoration(gradient: AppColors.brandGradient, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ADMIN — NEW APPLICANT',
                      style: TextStyle(fontSize: 11, letterSpacing: 0.8, color: Colors.white54),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Online Application Form',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text.rich(
                    TextSpan(
                      text: '$completed',
                      style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w800, color: Colors.white),
                      children: const [
                        TextSpan(
                          text: '/6',
                          style: TextStyle(fontSize: 16, color: Colors.white54),
                        ),
                      ],
                    ),
                  ),
                  const Text('sections done', style: TextStyle(fontSize: 12, color: Colors.white54)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(999),
                  child: LinearProgressIndicator(
                    value: completed / 6,
                    minHeight: 6,
                    backgroundColor: Colors.white24,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                '$pct%',
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white70),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ── Field helpers ────────────────────────────────────────────────────────

/// A text field bound to the form data, with the web's inline error under it.
class _F extends StatelessWidget {
  const _F({
    required this.d,
    required this.errors,
    required this.onClear,
    required this.field,
    required this.label,
    this.hint,
    this.keyboard,
    this.maxLength,
    this.maxLines = 1,
  });

  final AdmissionFormData d;
  final Map<String, String> errors;
  final void Function(String key) onClear;
  final String field;
  final String label;
  final String? hint;
  final TextInputType? keyboard;
  final int? maxLength;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: d.c(field),
      keyboardType: keyboard,
      maxLength: maxLength,
      maxLines: maxLines,
      onChanged: (_) => onClear(field),
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: const OutlineInputBorder(),
        errorText: errors[field],
        counterText: '',
        alignLabelWithHint: maxLines > 1,
      ),
    );
  }
}

Widget _gap([double h = 14]) => SizedBox(height: h);

// ── Steps 1–5 ────────────────────────────────────────────────────────────

class _Step1 extends ConsumerWidget {
  const _Step1({
    required this.d,
    required this.errors,
    required this.flow,
    required this.onChanged,
    required this.onClear,
  });

  final AdmissionFormData d;
  final Map<String, String> errors;
  final AdmissionFormFlow flow;
  final VoidCallback onChanged;
  final void Function(String) onClear;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _F f(String key, String label, {String? hint, TextInputType? keyboard, int? maxLength}) => _F(
      d: d,
      errors: errors,
      onClear: onClear,
      field: key,
      label: label,
      hint: hint,
      keyboard: keyboard,
      maxLength: maxLength,
    );

    final names = LayoutBuilder(
      builder: (context, c) {
        final fields = [f('firstName', 'First Name *'), f('middleName', 'Middle Name'), f('lastName', 'Last Name *')];
        if (c.maxWidth < 520) {
          return Column(
            children: [
              for (final (i, w) in fields.indexed) ...[if (i > 0) _gap(), w],
            ],
          );
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final (i, w) in fields.indexed) ...[if (i > 0) const SizedBox(width: 12), Expanded(child: w)],
          ],
        );
      },
    );

    final Widget classField;
    if (flow == AdmissionFormFlow.newApplication) {
      final classes = ref.watch(adminClassOptionsProvider);
      classField = classes.when(
        skipLoadingOnRefresh: true,
        loading: () => const LoadingView(compact: true),
        error: (_, _) => const _ErrorBanner('Could not load classes. Pull down on the previous page to retry.'),
        data: (list) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OptionSelect(
              label: 'Class Applying For *',
              value: d.classId,
              placeholder: list.isEmpty ? 'No classes available' : 'Select Class',
              options: [for (final c in list) (c.classId, c.className)],
              onChanged: (v) {
                d.classId = v;
                onClear('class');
                onChanged();
              },
            ),
            if (errors['class'] != null)
              Padding(padding: const EdgeInsets.only(top: 4, left: 12), child: FormErrorText(errors['class']!)),
          ],
        ),
      );
    } else {
      classField = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InputDecorator(
            decoration: const InputDecoration(
              labelText: 'Class Applied For',
              border: OutlineInputBorder(),
              enabled: false,
            ),
            child: Text(
              d.className.isEmpty ? 'See application details' : d.className,
              style: const TextStyle(color: AppColors.textMuted),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 4, left: 12),
            child: Text(
              'Class cannot be changed from this form',
              style: TextStyle(fontSize: 12, color: AppColors.textMuted),
            ),
          ),
        ],
      );
    }

    final today = DateTime.now();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        names,
        _gap(),
        classField,
        _gap(),
        DateField(
          label: 'Date of Birth *',
          value: d.dob,
          errorText: errors['dob'],
          firstDate: DateTime(1990),
          lastDate: today,
          initialDate: DateTime(today.year - 8),
          onPicked: (v) {
            d.dob = v;
            onClear('dob');
            onChanged();
          },
        ),
        _gap(),
        FieldPair(
          first: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OptionSelect(
                label: 'Gender *',
                value: d.gender,
                placeholder: 'Select Gender',
                options: [for (final g in genders) (g, g)],
                onChanged: (v) {
                  d.gender = v;
                  onClear('gender');
                  onChanged();
                },
              ),
              if (errors['gender'] != null)
                Padding(padding: const EdgeInsets.only(top: 4, left: 12), child: FormErrorText(errors['gender']!)),
            ],
          ),
          second: f('phone', 'Phone No *', hint: '+91 98765 43210', keyboard: TextInputType.phone, maxLength: 15),
        ),
        _gap(),
        f('email', 'Email ID', hint: 'applicant@example.com', keyboard: TextInputType.emailAddress),
      ],
    );
  }
}

class _Step2 extends StatelessWidget {
  const _Step2({required this.d, required this.errors, required this.onChanged, required this.onClear});

  final AdmissionFormData d;
  final Map<String, String> errors;
  final VoidCallback onChanged;
  final void Function(String) onClear;

  @override
  Widget build(BuildContext context) {
    _F f(String key, String label, {String? hint, TextInputType? keyboard}) =>
        _F(d: d, errors: errors, onClear: onClear, field: key, label: label, hint: hint, keyboard: keyboard);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FieldPair(
          first: OptionSelect(
            label: 'Blood Group',
            value: d.bloodGroup,
            placeholder: 'Select Blood Group',
            options: [for (final b in bloodGroups) (b, b)],
            onChanged: (v) {
              d.bloodGroup = v;
              onChanged();
            },
          ),
          second: f('nationality', 'Nationality *', hint: 'e.g. Indian'),
        ),
        _gap(),
        FieldPair(
          first: f('motherTongue', 'Mother Tongue', hint: 'e.g. Hindi'),
          second: f('caste', 'Caste', hint: 'e.g. General'),
        ),
        _gap(),
        f('aadhaarNo', 'Aadhaar Number', hint: '12-digit Aadhaar number', keyboard: TextInputType.number),
        _gap(),
        f('birthCertificateNo', 'Birth Certificate Number', hint: 'e.g. BC2012/001'),
      ],
    );
  }
}

class _Step3 extends StatelessWidget {
  const _Step3({required this.d, required this.errors, required this.onChanged, required this.onClear});

  final AdmissionFormData d;
  final Map<String, String> errors;
  final VoidCallback onChanged;
  final void Function(String) onClear;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final blocks = [
          _ParentBlock(
            prefix: 'father',
            title: "Father's Details",
            d: d,
            errors: errors,
            onChanged: onChanged,
            onClear: onClear,
          ),
          _ParentBlock(
            prefix: 'mother',
            title: "Mother's Details",
            d: d,
            errors: errors,
            onChanged: onChanged,
            onClear: onClear,
          ),
        ];
        if (c.maxWidth < 760) {
          return Column(children: [blocks[0], const SizedBox(height: 24), blocks[1]]);
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: blocks[0]),
            const SizedBox(width: 20),
            Expanded(child: blocks[1]),
          ],
        );
      },
    );
  }
}

class _ParentBlock extends StatelessWidget {
  const _ParentBlock({
    required this.prefix,
    required this.title,
    required this.d,
    required this.errors,
    required this.onChanged,
    required this.onClear,
  });

  final String prefix;
  final String title;
  final AdmissionFormData d;
  final Map<String, String> errors;
  final VoidCallback onChanged;
  final void Function(String) onClear;

  @override
  Widget build(BuildContext context) {
    _F f(String suffix, String label, {String? hint, TextInputType? keyboard, int? maxLength, int maxLines = 1}) => _F(
      d: d,
      errors: errors,
      onClear: onClear,
      field: '$prefix$suffix',
      label: label,
      hint: hint,
      keyboard: keyboard,
      maxLength: maxLength,
      maxLines: maxLines,
    );
    Widget select(String suffix, String label, String placeholder, List<String> options) => OptionSelect(
      label: label,
      value: d.parentSelect['$prefix$suffix'] ?? '',
      placeholder: placeholder,
      options: [for (final o in options) (o, o)],
      onChanged: (v) {
        d.parentSelect['$prefix$suffix'] = v;
        onChanged();
      },
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15, color: AppColors.textPrimary),
        ),
        const Divider(height: 20, color: AppColors.border),
        FieldPair(first: f('FirstName', 'First Name *'), second: f('LastName', 'Last Name *')),
        _gap(),
        f('Aadhaar', 'Aadhaar Number *', hint: '12-digit Aadhaar', keyboard: TextInputType.number, maxLength: 14),
        _gap(),
        f('Mobile', 'Contact No. *', hint: '+91 98765 43210', keyboard: TextInputType.phone, maxLength: 15),
        _gap(),
        f('Email', 'Email', hint: 'email@example.com', keyboard: TextInputType.emailAddress),
        _gap(),
        FieldPair(
          first: select('Qualification', 'Qualification', 'Select Qualification', qualifications),
          second: select('Occupation', 'Occupation', 'Select Occupation', occupations),
        ),
        _gap(),
        f('Designation', 'Designation', hint: 'e.g. Project Manager'),
        _gap(),
        f('Organization', 'Organisation', hint: 'Company / Institution'),
        _gap(),
        f('OfficeAddress', 'Office Address', hint: 'Office / work address', maxLines: 2),
        _gap(),
        f('AnnualIncome', 'Annual Income (₹)', hint: 'e.g. 1200000', keyboard: TextInputType.number),
        const SizedBox(height: 6),
        InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {
            d.alumni[prefix] = !(d.alumni[prefix] ?? false);
            onChanged();
          },
          child: Row(
            children: [
              Checkbox(
                value: d.alumni[prefix] ?? false,
                onChanged: (v) {
                  d.alumni[prefix] = v ?? false;
                  onChanged();
                },
              ),
              const Expanded(
                child: Text('Is alumni of this institution', style: TextStyle(color: AppColors.textSecondary)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Step4 extends StatelessWidget {
  const _Step4({required this.d, required this.errors, required this.onChanged, required this.onClear});

  final AdmissionFormData d;
  final Map<String, String> errors;
  final VoidCallback onChanged;
  final void Function(String) onClear;

  @override
  Widget build(BuildContext context) {
    Widget choice(String label, bool value) {
      final selected = d.hasSibling == value;
      return selected
          ? FilledButton(
              onPressed: () {
                d.setHasSibling(value);
                onClear('siblingName1');
                onChanged();
              },
              child: Text(label),
            )
          : OutlinedButton(
              onPressed: () {
                d.setHasSibling(value);
                onClear('siblingName1');
                onChanged();
              },
              child: Text(label),
            );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Does the applicant have siblings currently enrolled in this institution?',
          style: TextStyle(fontWeight: FontWeight.w500, color: AppColors.textSecondary),
        ),
        const SizedBox(height: 10),
        Wrap(spacing: 12, children: [choice('Yes', true), choice('No', false)]),
        if (d.hasSibling)
          for (final i in [1, 2, 3]) ...[
            const SizedBox(height: 16),
            const Divider(height: 1, color: AppColors.border),
            const SizedBox(height: 12),
            Text.rich(
              TextSpan(
                text: 'SIBLING $i',
                children: [
                  if (i == 1)
                    const TextSpan(
                      text: ' *',
                      style: TextStyle(color: AppColors.danger),
                    ),
                ],
              ),
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.6,
                color: AppColors.textMuted,
              ),
            ),
            const SizedBox(height: 8),
            FieldPair(
              first: _F(
                d: d,
                errors: errors,
                onClear: onClear,
                field: 'siblingName$i',
                label: 'Full Name',
                hint: 'Student full name',
              ),
              second: _F(
                d: d,
                errors: errors,
                onClear: onClear,
                field: 'siblingRollNo$i',
                label: 'Roll / Admission No.',
                hint: 'e.g. ROLL001',
              ),
            ),
          ],
      ],
    );
  }
}

class _Step5 extends StatelessWidget {
  const _Step5({required this.d, required this.errors, required this.onChanged, required this.onClear});

  final AdmissionFormData d;
  final Map<String, String> errors;
  final VoidCallback onChanged;
  final void Function(String) onClear;

  @override
  Widget build(BuildContext context) {
    _F f(String key, String label, {String? hint, TextInputType? keyboard}) =>
        _F(d: d, errors: errors, onClear: onClear, field: key, label: label, hint: hint, keyboard: keyboard);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        f('schoolName', 'School Name *', hint: 'e.g. City Primary School'),
        _gap(),
        FieldPair(
          first: f('schoolBoard', 'Board', hint: 'e.g. CBSE / ICSE / State Board'),
          second: f('passingYear', 'Passing Year', hint: 'e.g. 2024', keyboard: TextInputType.number),
        ),
        _gap(),
        FieldPair(
          first: f(
            'schoolPct',
            'Percentage (%)',
            hint: 'e.g. 88.5',
            keyboard: const TextInputType.numberWithOptions(decimal: true),
          ),
          second: f('schoolGrade', 'Grade', hint: 'e.g. A'),
        ),
        _gap(),
        f('tcNumber', 'Transfer Certificate (TC) Number', hint: 'e.g. TC2024/001'),
      ],
    );
  }
}

// ── Step 6: documents ────────────────────────────────────────────────────

class _DocumentsStep extends ConsumerStatefulWidget {
  const _DocumentsStep({
    super.key,
    required this.applicationId,
    required this.enforceMandatory,
    required this.busy,
    required this.error,
    required this.submitLabel,
    required this.submitIcon,
    required this.onSubmit,
  });

  final String applicationId;

  /// New Application refuses to submit until every mandatory document is
  /// uploaded; the Continue Form doesn't.
  final bool enforceMandatory;
  final bool busy;
  final String? error;
  final String submitLabel;
  final IconData submitIcon;
  final VoidCallback onSubmit;

  @override
  ConsumerState<_DocumentsStep> createState() => _DocumentsStepState();
}

class _DocumentsStepState extends ConsumerState<_DocumentsStep> {
  final Set<String> _uploading = {};
  final Set<String> _deleting = {};
  final Map<String, String> _fileErrors = {};
  String? _error;
  String? _submitError;

  Future<void> _upload(String typeId) async {
    final (file, pickError) = await pickUploadFile(
      mimeByExtension: staffFileMimeTypes,
      maxBytes: staffFileMaxBytes,
      typeError: 'Only JPG, PNG or PDF files are allowed.',
      sizeError: (_) => 'File must be under 500 KB',
    );
    if (!mounted || (file == null && pickError == null)) return;
    if (file == null) return setState(() => _fileErrors[typeId] = pickError!);
    setState(() {
      _fileErrors.remove(typeId);
      _uploading.add(typeId);
    });
    final res = await AdmissionsService().uploadDocument(widget.applicationId, documentTypeId: typeId, file: file);
    if (!mounted) return;
    setState(() {
      _uploading.remove(typeId);
      if (res case Err(:final failure)) _fileErrors[typeId] = failureMessage(failure, 'Upload failed');
    });
    if (res is Ok) ref.invalidate(admissionDocumentsProvider(widget.applicationId));
  }

  Future<void> _delete(String documentId) async {
    setState(() => _deleting.add(documentId));
    final res = await AdmissionsService().deleteDocument(widget.applicationId, documentId);
    if (!mounted) return;
    setState(() {
      _deleting.remove(documentId);
      if (res case Err(:final failure)) _error = failureMessage(failure, 'Failed to remove document');
    });
    if (res is Ok) ref.invalidate(admissionDocumentsProvider(widget.applicationId));
  }

  void _submit(List<AdmissionDocumentType> types, Map<String, AdmissionDocument> uploaded) {
    if (_uploading.isNotEmpty) {
      return setState(() => _submitError = 'Please wait for all uploads to complete before proceeding.');
    }
    if (widget.enforceMandatory) {
      final missing = types.where((t) => t.isMandatory == true && !uploaded.containsKey(t.documentTypeId)).toList();
      if (missing.isNotEmpty) {
        return setState(
          () => _submitError =
              'Please upload the following required documents: ${missing.map((t) => t.documentName).join(', ')}',
        );
      }
    }
    setState(() => _submitError = null);
    widget.onSubmit();
  }

  @override
  Widget build(BuildContext context) {
    final types = ref.watch(admissionDocumentTypesProvider);
    final docs = ref.watch(admissionDocumentsProvider(widget.applicationId));
    final banner = widget.error ?? _error ?? _submitError;

    final Widget list;
    if ((types.isLoading && !types.hasValue) || (docs.isLoading && !docs.hasValue)) {
      list = const LoadingView(label: 'Loading document list…', compact: true);
    } else if (types.hasError || docs.hasError) {
      list = AdmissionLoadError(
        title: 'Failed to load documents.',
        error: (types.error ?? docs.error)!,
        onRetry: () {
          ref.invalidate(admissionDocumentTypesProvider);
          ref.invalidate(admissionDocumentsProvider(widget.applicationId));
        },
      );
    } else {
      final typeList = types.value ?? const <AdmissionDocumentType>[];
      final uploaded = {
        for (final d in docs.value ?? const <AdmissionDocument>[])
          if (d.documentTypeId != null) d.documentTypeId!: d,
      };
      list = typeList.isEmpty
          ? const Text(
              'No document types have been configured for this school.',
              style: TextStyle(color: AppColors.textMuted, fontStyle: FontStyle.italic),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.border),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      for (final (i, t) in typeList.indexed) ...[
                        if (i > 0) const Divider(height: 1, color: AppColors.border),
                        _DocumentRow(
                          type: t,
                          doc: uploaded[t.documentTypeId],
                          uploading: _uploading.contains(t.documentTypeId),
                          deleting: _deleting.contains(uploaded[t.documentTypeId]?.documentId),
                          error: _fileErrors[t.documentTypeId],
                          onUpload: () => _upload(t.documentTypeId!),
                          onDelete: () => _delete(uploaded[t.documentTypeId]!.documentId),
                        ),
                      ],
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                if (banner != null) ...[_ErrorBanner(banner), const SizedBox(height: 16)],
                _FormFooter(
                  label: widget.submitLabel,
                  icon: widget.submitIcon,
                  loading: widget.busy,
                  onPressed: () => _submit(typeList, uploaded),
                ),
              ],
            );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (banner != null && types.isLoading) ...[_ErrorBanner(banner), const SizedBox(height: 16)],
        const Text(
          'Required Documents',
          style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
        ),
        const SizedBox(height: 4),
        const Text(
          'Upload each required document. JPG, PNG or PDF — max 500 KB per file.',
          style: TextStyle(fontSize: 12, color: AppColors.textMuted),
        ),
        const SizedBox(height: 14),
        list,
      ],
    );
  }
}

class _DocumentRow extends StatelessWidget {
  const _DocumentRow({
    required this.type,
    required this.doc,
    required this.uploading,
    required this.deleting,
    required this.error,
    required this.onUpload,
    required this.onDelete,
  });

  final AdmissionDocumentType type;
  final AdmissionDocument? doc;
  final bool uploading;
  final bool deleting;
  final String? error;
  final VoidCallback onUpload;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final isUploaded = doc != null;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Icon(
                isUploaded ? Icons.check_circle : Icons.circle_outlined,
                size: 18,
                color: isUploaded ? AppColors.success : AppColors.border,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 8,
                      children: [
                        Text(
                          type.documentName ?? '—',
                          style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                        ),
                        if (type.isMandatory == true)
                          const Text(
                            'Required',
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.danger),
                          ),
                      ],
                    ),
                    if (isUploaded && doc!.fileName != null)
                      Text(
                        doc!.fileName!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                      ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              if (isUploaded)
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.danger,
                    side: const BorderSide(color: AppColors.danger),
                    visualDensity: VisualDensity.compact,
                  ),
                  onPressed: deleting ? null : onDelete,
                  icon: deleting
                      ? const SizedBox(width: 12, height: 12, child: CircularProgressIndicator(strokeWidth: 2))
                      : const Icon(Icons.delete_outline, size: 14),
                  label: Text(deleting ? 'Removing…' : 'Remove'),
                )
              else
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(visualDensity: VisualDensity.compact),
                  onPressed: uploading ? null : onUpload,
                  icon: uploading
                      ? const SizedBox(width: 12, height: 12, child: CircularProgressIndicator(strokeWidth: 2))
                      : const Icon(Icons.upload_outlined, size: 14),
                  label: Text(uploading ? 'Uploading…' : 'Upload'),
                ),
            ],
          ),
          if (error != null)
            Padding(
              padding: const EdgeInsets.only(top: 6, left: 28),
              child: Text(error!, style: const TextStyle(fontSize: 12, color: AppColors.danger)),
            ),
        ],
      ),
    );
  }
}
