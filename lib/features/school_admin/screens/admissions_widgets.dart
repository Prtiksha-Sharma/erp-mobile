import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_admissions.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/section_card.dart';
import 'school_admin_page_scaffold.dart';

/// Shared building blocks of the admissions pipeline pages
/// (web features/admissions/): status pills, the applicant row card (the
/// web's table row), the bulk-selection bar and the bulk confirm → result
/// sheet (BulkActionBar / BulkActionModal / BulkResultPanel).

// ── Status pills (the web pages' APP_STATUS / PAY_STATUS tables) ─────────

/// Explicit (foreground, background) pairs rather than [BadgeVariant], so
/// the emerald / rose / teal tints the web uses survive.
class PillColors {
  const PillColors(this.foreground, this.background);

  final Color foreground;
  final Color background;
}

const _neutralPill = PillColors(AppColors.textMuted, AppColors.pageBg);

/// application_status → pill. The backend also writes values the web's
/// maps don't know ('Payment Verified', 'Payment Rejected', 'Enrolled'),
/// which fall back to neutral instead of breaking.
PillColors applicationStatusColors(String? status) => switch (status) {
  'Draft' => const PillColors(AppColors.amber, AppColors.amberLight),
  'Submitted' => const PillColors(AppColors.primary, AppColors.primaryLight),
  'Registered' || 'Under Review' => const PillColors(AppColors.violet, AppColors.violetLight),
  'Called For Interview' || 'Shortlisted' => const PillColors(AppColors.emerald, AppColors.emeraldLight),
  'Approved' => const PillColors(AppColors.success, AppColors.successBg),
  'Rejected' => const PillColors(AppColors.danger, AppColors.dangerBg),
  'Qualified' => const PillColors(AppColors.rose, AppColors.roseLight),
  'Final Selected' => const PillColors(AppColors.teal, AppColors.tealLight),
  _ => _neutralPill,
};

/// payment_status → pill.
PillColors paymentStatusColors(String? status) => switch (status) {
  'Pending' => const PillColors(AppColors.amber, AppColors.amberLight),
  'Success' || 'Paid' => const PillColors(AppColors.primary, AppColors.primaryLight),
  'Verified' => const PillColors(AppColors.success, AppColors.successBg),
  'Failed' || 'Rejected' => const PillColors(AppColors.danger, AppColors.dangerBg),
  _ => _neutralPill, // Refunded, unknown
};

/// document verification_status → pill.
PillColors documentStatusColors(String? status) => switch (status) {
  'Verified' => const PillColors(AppColors.success, AppColors.successBg),
  'Rejected' => const PillColors(AppColors.danger, AppColors.dangerBg),
  'Pending' => const PillColors(AppColors.amber, AppColors.amberLight),
  _ => _neutralPill,
};

class AdmissionPill extends StatelessWidget {
  const AdmissionPill({super.key, required this.label, required this.colors, this.icon, this.large = false});

  final String label;
  final PillColors colors;
  final IconData? icon;

  /// The detail page's bigger header pill.
  final bool large;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: large ? 12 : 10, vertical: large ? 5 : 4),
      decoration: BoxDecoration(color: colors.background, borderRadius: BorderRadius.circular(999)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[Icon(icon, size: 12, color: colors.foreground), const SizedBox(width: 4)],
          Flexible(
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: colors.foreground, fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

AdmissionPill applicationStatusPill(String? status, {bool large = false}) =>
    AdmissionPill(label: status ?? '—', colors: applicationStatusColors(status), large: large);

AdmissionPill paymentStatusPill(String? status, {bool large = false}) =>
    AdmissionPill(label: status ?? '—', colors: paymentStatusColors(status), large: large);

/// The primary-tinted class chip (`bg-primary-light text-primary`).
class ClassChip extends StatelessWidget {
  const ClassChip(this.name, {super.key});

  final String? name;

  @override
  Widget build(BuildContext context) {
    if (name == null || name!.isEmpty) return const Text('—', style: TextStyle(color: AppColors.textMuted));
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(color: AppColors.primaryLight, borderRadius: BorderRadius.circular(8)),
      child: Text(
        name!,
        style: const TextStyle(color: AppColors.primary, fontSize: 12, fontWeight: FontWeight.w600),
      ),
    );
  }
}

/// The web's ApplicantAvatar: a rounded square with the initial — rose for
/// female, primary otherwise, muted when there's no name. [accent] swaps
/// the named colour (the Incomplete page uses amber).
class ApplicantAvatar extends StatelessWidget {
  const ApplicantAvatar({super.key, required this.name, this.gender, this.size = 36, this.accent, this.photoUrl});

  final String? name;
  final String? gender;
  final double size;
  final Color? accent;

  /// Shown instead of the initial when present (the applicant profile).
  final String? photoUrl;

  @override
  Widget build(BuildContext context) {
    final named = name != null && name!.isNotEmpty;
    if (photoUrl != null && photoUrl!.isNotEmpty) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(size * 0.28),
        child: SizedBox(
          width: size,
          height: size,
          child: CachedNetworkImage(imageUrl: photoUrl!, fit: BoxFit.cover),
        ),
      );
    }
    final color = !named
        ? AppColors.textMuted
        : (accent ?? (gender?.toLowerCase() == 'female' ? AppColors.rose : AppColors.primary));
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(size * 0.28)),
      child: Text(
        named ? name!.characters.first.toUpperCase() : '?',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: size * 0.42),
      ),
    );
  }
}

/// The date the web's admissions pages print: `12 Sep 2026`, or `—`.
String admissionDate(DateTime? d) => d == null ? '—' : formatDate(d);

/// `12 Sep 2026, 14:05` — the web's formatDateTime on these pages.
String admissionDateTime(DateTime? d) {
  if (d == null) return '—';
  final l = d.toLocal();
  return '${formatDate(l)}, ${l.hour.toString().padLeft(2, '0')}:${l.minute.toString().padLeft(2, '0')}';
}

/// `₹1,500.00`, or null so the caller can show `—`.
String? admissionFee(AdmissionApplicationRow row) =>
    row.registrationFee == null ? null : formatAmount(row.registrationFee);

// ── Row card ─────────────────────────────────────────────────────────────

/// A labelled value inside a row card; a null [value] shows `—`.
class RowField {
  const RowField(this.label, {this.text, this.child});

  final String label;
  final String? text;
  final Widget? child;
}

/// One application on a list page (the web's table row): optional
/// checkbox, the application number + date, the status pill, the applicant,
/// then the page's own labelled fields, then optional actions.
class AdmissionRowCard extends StatelessWidget {
  const AdmissionRowCard({
    super.key,
    required this.row,
    required this.dateText,
    required this.fields,
    this.status,
    this.selected = false,
    this.onToggle,
    this.onTap,
    this.actions,
    this.avatarAccent,
    this.applicantExtra,
    this.tint,
  });

  final AdmissionApplicationRow row;

  /// The small date under the application number (varies per page).
  final String dateText;
  final List<RowField> fields;

  /// The pill beside the application number; null to omit.
  final Widget? status;
  final bool selected;

  /// Null hides the checkbox (the page isn't selectable).
  final VoidCallback? onToggle;
  final VoidCallback? onTap;
  final Widget? actions;
  final Color? avatarAccent;

  /// Replaces the applicant's phone line (the Incomplete page keeps it).
  final Widget? applicantExtra;

  /// Hover/selected wash colour; the Rejected page uses danger.
  final Color? tint;

  @override
  Widget build(BuildContext context) {
    final a = row.applicant;
    final name = a?.fullName;
    final phone = a?.contactNo;

    final header = Row(
      children: [
        if (onToggle != null)
          SizedBox(
            width: 36,
            height: 36,
            child: Checkbox(
              value: selected,
              onChanged: (_) => onToggle!(),
              visualDensity: VisualDensity.compact,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                row.applicationNo ?? '—',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontFamily: 'monospace',
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              Text(dateText, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
            ],
          ),
        ),
        if (status != null) ...[const SizedBox(width: 8), Flexible(child: status!)],
      ],
    );

    final applicant = Row(
      children: [
        ApplicantAvatar(name: name, gender: a?.gender, accent: avatarAccent),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name ?? 'Not provided',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
              ),
              if (phone != null && phone.isNotEmpty)
                Row(
                  children: [
                    const Icon(Icons.phone_outlined, size: 12, color: AppColors.textMuted),
                    const SizedBox(width: 4),
                    Flexible(
                      child: Text(
                        phone,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                      ),
                    ),
                  ],
                ),
              ?applicantExtra,
            ],
          ),
        ),
      ],
    );

    final body = Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 14, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          header,
          const SizedBox(height: 10),
          applicant,
          if (fields.isNotEmpty) ...[
            const SizedBox(height: 12),
            LayoutBuilder(
              builder: (context, c) {
                final cols = c.maxWidth >= 380 ? 2 : 1;
                final w = (c.maxWidth - 12 * (cols - 1)) / cols;
                return Wrap(
                  spacing: 12,
                  runSpacing: 10,
                  children: [
                    for (final f in fields)
                      SizedBox(
                        width: w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(f.label.toUpperCase(), style: _overline),
                            const SizedBox(height: 3),
                            f.child ??
                                Text(
                                  (f.text == null || f.text!.isEmpty) ? '—' : f.text!,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: (f.text == null || f.text!.isEmpty)
                                        ? AppColors.textMuted
                                        : AppColors.textSecondary,
                                  ),
                                ),
                          ],
                        ),
                      ),
                  ],
                );
              },
            ),
          ],
          if (actions != null) ...[
            const SizedBox(height: 10),
            Align(alignment: Alignment.centerRight, child: actions!),
          ],
        ],
      ),
    );

    final wash = tint ?? AppColors.primaryLight;
    return Material(
      color: selected ? wash : Colors.white,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: selected ? AppColors.primary : AppColors.border),
      ),
      child: onTap == null ? body : InkWell(onTap: onTap, child: body),
    );
  }
}

const _overline = TextStyle(
  fontSize: 10.5,
  fontWeight: FontWeight.w600,
  letterSpacing: 0.6,
  color: AppColors.textMuted,
);

/// Class chip with an optional session line under it.
Widget classWithSession(AdmissionApplicationRow row) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    ClassChip(row.classRef?.className),
    if (row.session?.sessionName != null) ...[
      const SizedBox(height: 3),
      Text(row.session!.sessionName!, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
    ],
  ],
);

// ── Bulk bar ─────────────────────────────────────────────────────────────

class BulkAction {
  const BulkAction({required this.label, required this.icon, required this.onTap, this.danger = false});

  final String label;
  final IconData icon;
  final VoidCallback onTap;
  final bool danger;
}

/// The web's BulkActionBar, pinned to the bottom of the page: "N selected",
/// the page's actions and Clear. [overCap] disables the actions and shows
/// the web's cap message.
class BulkBar extends StatelessWidget {
  const BulkBar({
    super.key,
    required this.count,
    required this.noun,
    required this.actions,
    required this.onClear,
    required this.overCap,
    this.busy = false,
  });

  final int count;

  /// `applicant` or `application` — the page's own wording.
  final String noun;
  final List<BulkAction> actions;
  final VoidCallback onClear;
  final bool overCap;
  final bool busy;

  @override
  Widget build(BuildContext context) {
    if (count == 0) return const SizedBox.shrink();
    return Material(
      color: AppColors.primaryLight,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: AppColors.primary)),
        ),
        padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
        child: SafeArea(
          top: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Wrap(
                spacing: 8,
                runSpacing: 8,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    '$count $noun${count != 1 ? 's' : ''} selected',
                    style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.primary),
                  ),
                  for (final a in actions)
                    FilledButton.icon(
                      style: FilledButton.styleFrom(
                        backgroundColor: a.danger ? AppColors.danger : AppColors.primary,
                        visualDensity: VisualDensity.compact,
                      ),
                      onPressed: overCap || busy ? null : a.onTap,
                      icon: Icon(a.icon, size: 16),
                      label: Text(a.label),
                    ),
                  TextButton(
                    onPressed: onClear,
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.textMuted,
                      visualDensity: VisualDensity.compact,
                    ),
                    child: const Text('Clear'),
                  ),
                ],
              ),
              if (overCap)
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    'You can act on at most 200 ${noun}s at a time — $count selected.',
                    style: const TextStyle(fontSize: 12, color: AppColors.danger),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

// ── Bulk sheet (BulkActionModal + BulkResultPanel) ───────────────────────

/// Opens the bulk confirm → result sheet. Resolves true once a result was
/// shown (the web's `onClose(completed)`), so the caller clears its
/// selection. [fieldsBuilder] draws extra fields on the confirm step into
/// the shared [values] map; [confirmEnabled] gates the confirm button.
Future<bool> showBulkActionSheet(
  BuildContext context, {
  required String title,
  required String warningText,
  required String confirmLabel,
  required String successText,
  required Future<Result<AdmissionBulkResult>> Function(Map<String, Object?> values) onConfirm,
  bool dangerous = false,
  Widget Function(BuildContext context, Map<String, Object?> values, VoidCallback changed)? fieldsBuilder,
  bool Function(Map<String, Object?> values)? confirmEnabled,
  Map<String, Object?> initialValues = const {},
}) async {
  final completed = await showAdminFormSheet<bool>(
    context,
    (_) => _BulkSheet(
      title: title,
      warningText: warningText,
      confirmLabel: confirmLabel,
      successText: successText,
      onConfirm: onConfirm,
      dangerous: dangerous,
      fieldsBuilder: fieldsBuilder,
      confirmEnabled: confirmEnabled,
      initialValues: initialValues,
    ),
  );
  return completed ?? false;
}

class _BulkSheet extends StatefulWidget {
  const _BulkSheet({
    required this.title,
    required this.warningText,
    required this.confirmLabel,
    required this.successText,
    required this.onConfirm,
    required this.dangerous,
    required this.fieldsBuilder,
    required this.confirmEnabled,
    required this.initialValues,
  });

  final String title;
  final String warningText;
  final String confirmLabel;
  final String successText;
  final Future<Result<AdmissionBulkResult>> Function(Map<String, Object?> values) onConfirm;
  final bool dangerous;
  final Widget Function(BuildContext context, Map<String, Object?> values, VoidCallback changed)? fieldsBuilder;
  final bool Function(Map<String, Object?> values)? confirmEnabled;
  final Map<String, Object?> initialValues;

  @override
  State<_BulkSheet> createState() => _BulkSheetState();
}

class _BulkSheetState extends State<_BulkSheet> {
  late final Map<String, Object?> _values = {...widget.initialValues};
  bool _pending = false;
  bool _done = false;
  AdmissionBulkResult? _result;
  String? _error;

  Future<void> _confirm() async {
    setState(() => _pending = true);
    final res = await widget.onConfirm(_values);
    if (!mounted) return;
    setState(() {
      _pending = false;
      _done = true;
      switch (res) {
        case Ok(:final value):
          _result = value;
        case Err(:final failure):
          _error = failureMessage(failure, 'Something went wrong. Please try again.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> children;
    if (!_done) {
      children = [
        SheetTitle(widget.title),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.dangerous) ...[
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(color: AppColors.dangerBg, shape: BoxShape.circle),
                child: const Icon(Icons.warning_amber_rounded, size: 20, color: AppColors.danger),
              ),
              const SizedBox(width: 14),
            ],
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(widget.warningText, style: const TextStyle(color: AppColors.textSecondary)),
              ),
            ),
          ],
        ),
        if (widget.fieldsBuilder != null)
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: widget.fieldsBuilder!(context, _values, () => setState(() {})),
          ),
        SheetActions(
          busy: _pending,
          onSubmit: (widget.confirmEnabled?.call(_values) ?? true) ? _confirm : null,
          submitLabel: widget.confirmLabel,
          danger: widget.dangerous,
        ),
      ];
    } else {
      children = [
        SheetTitle(widget.title),
        _BulkResult(result: _result, error: _error, successText: widget.successText),
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

/// BulkResultPanel: the partial-success shape every bulk route returns, or
/// the whole-request error.
class _BulkResult extends StatelessWidget {
  const _BulkResult({required this.result, required this.error, required this.successText});

  final AdmissionBulkResult? result;
  final String? error;
  final String successText;

  @override
  Widget build(BuildContext context) {
    if (error != null) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.cancel_outlined, size: 18, color: AppColors.danger),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              error!,
              style: const TextStyle(color: AppColors.danger, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      );
    }
    final succeeded = result?.succeeded ?? const <String>[];
    final failed = result?.failed ?? const <AdmissionBulkFailure>[];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (succeeded.isNotEmpty)
          Row(
            children: [
              const Icon(Icons.check_circle_outline, size: 18, color: AppColors.success),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  '${succeeded.length} applicant${succeeded.length != 1 ? 's' : ''} $successText',
                  style: const TextStyle(color: AppColors.success, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        if (failed.isNotEmpty) ...[
          if (succeeded.isNotEmpty) const SizedBox(height: 12),
          Row(
            children: [
              const Icon(Icons.cancel_outlined, size: 18, color: AppColors.danger),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  '${failed.length} applicant${failed.length != 1 ? 's' : ''} failed',
                  style: const TextStyle(color: AppColors.danger, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            constraints: const BoxConstraints(maxHeight: 160),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(color: AppColors.dangerBg, borderRadius: BorderRadius.circular(12)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (final f in failed)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '${(f.applicationId ?? '').padRight(8).substring(0, 8).trim()}…',
                              style: const TextStyle(fontFamily: 'monospace'),
                            ),
                            TextSpan(text: ' — ${f.reason ?? ''}'),
                          ],
                        ),
                        style: const TextStyle(fontSize: 12, color: AppColors.danger),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
        if (succeeded.isEmpty && failed.isEmpty)
          const Text('Nothing was changed.', style: TextStyle(color: AppColors.textMuted)),
      ],
    );
  }
}

// ── Detail-page building blocks (also used by the applicant profile) ────

/// A white card with an icon + title header (the detail page's SectionCard).
class AdmissionSection extends StatelessWidget {
  const AdmissionSection({super.key, required this.title, required this.icon, required this.child});

  final String title;
  final IconData icon;
  final Widget child;

  @override
  Widget build(BuildContext context) => SectionCard(title: title, icon: icon, child: child);
}

/// "No … information provided" amber pill.
class MissingPill extends StatelessWidget {
  const MissingPill(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) => Align(
    alignment: Alignment.centerLeft,
    child: AdmissionPill(label: text, colors: const PillColors(AppColors.amber, AppColors.amberLight), large: true),
  );
}

/// Label-over-value with the web's overline label; null shows `—`.
class OverlineField extends StatelessWidget {
  const OverlineField(this.label, this.value, {super.key});

  final String label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    final present = value != null && value!.trim().isNotEmpty;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label.toUpperCase(), style: _overline),
        const SizedBox(height: 3),
        Text(present ? value! : '—', style: TextStyle(color: present ? AppColors.textPrimary : AppColors.textMuted)),
      ],
    );
  }
}

/// A responsive grid of [OverlineField]s (1–3 columns).
class FieldGrid extends StatelessWidget {
  const FieldGrid({super.key, required this.children, this.minColumnWidth = 200});

  final List<Widget> children;
  final double minColumnWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final cols = (c.maxWidth / minColumnWidth).floor().clamp(1, 3);
        final w = (c.maxWidth - 24 * (cols - 1)) / cols;
        return Wrap(
          spacing: 24,
          runSpacing: 16,
          children: [for (final f in children) SizedBox(width: w, child: f)],
        );
      },
    );
  }
}

/// A bordered inner card (parent / address / school cards).
class InnerCard extends StatelessWidget {
  const InnerCard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: AppColors.border),
    ),
    child: child,
  );
}

/// The shared load-failure message (the web's per-page "Failed to load …").
String loadFailureMessage(Object error, String fallback) =>
    error is Failure ? failureMessage(error, fallback) : fallback;

/// The web's `<input type="time">`: a tappable field that opens a time
/// picker; the value is sent as `HH:MM`.
class TimeField extends StatelessWidget {
  const TimeField({super.key, required this.label, required this.value, required this.onPicked, this.errorText});

  final String label;
  final TimeOfDay? value;
  final ValueChanged<TimeOfDay> onPicked;
  final String? errorText;

  /// `09:05` — what the backend's interview_time validator accepts.
  static String hhmm(TimeOfDay t) => '${t.hour.toString().padLeft(2, '0')}:${t.minute.toString().padLeft(2, '0')}';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(4),
      onTap: () async {
        final picked = await showTimePicker(context: context, initialTime: value ?? TimeOfDay.now());
        if (picked != null) onPicked(picked);
      },
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
          errorText: errorText,
          suffixIcon: const Icon(Icons.schedule, size: 18),
        ),
        child: Text(value == null ? 'Select time' : hhmm(value!)),
      ),
    );
  }
}

/// The web pages' load-failure block: a headline ("Failed to load
/// applications."), the server's message under it, and Retry.
class AdmissionLoadError extends StatelessWidget {
  const AdmissionLoadError({super.key, required this.title, required this.error, required this.onRetry});

  final String title;
  final Object error;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, color: AppColors.danger),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 4),
            Text(
              loadFailureMessage(error, 'Please try again.'),
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.textMuted, fontSize: 12),
            ),
            const SizedBox(height: 12),
            TextButton.icon(onPressed: onRetry, icon: const Icon(Icons.refresh, size: 16), label: const Text('Retry')),
          ],
        ),
      ),
    );
  }
}
