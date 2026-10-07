import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/student_brief.dart';
import '../../../core/models/student_profile.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/error_view.dart';
import '../services/finance_fees_service.dart';
import 'school_admin_page_scaffold.dart';

/// Small building blocks shared by the Fees and HR & Payroll screens
/// (area-prefixed so they never clash with another area's helpers).

/// The web's `BackLink` — "‹ Back to {parent}" above a sub-page's title.
class FinanceBackLink extends StatelessWidget {
  const FinanceBackLink({super.key, required this.label, required this.path});

  final String label;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TextButton.icon(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.textMuted,
          padding: const EdgeInsets.symmetric(horizontal: 4),
          visualDensity: VisualDensity.compact,
        ),
        onPressed: () => context.go(path),
        icon: const Icon(Icons.chevron_left, size: 18),
        label: Text('Back to $label'),
      ),
    );
  }
}

/// Loading / error-with-Retry / data for a section *inside* a page whose
/// filters must stay visible (the web's inline Loader / ErrorState).
class FinanceAsyncSection<T> extends StatelessWidget {
  const FinanceAsyncSection({
    super.key,
    required this.value,
    required this.onRetry,
    required this.builder,
    this.loadingLabel,
    this.errorMessage,
  });

  final AsyncValue<T> value;
  final VoidCallback onRetry;
  final Widget Function(T data) builder;
  final String? loadingLabel;

  /// The web page's own ErrorState copy, shown above the failure detail.
  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return value.when(
      skipLoadingOnRefresh: true,
      data: builder,
      loading: () => LoadingView(label: loadingLabel),
      error: (err, _) => ErrorView(
        message: errorMessage == null ? describeError(err) : '$errorMessage\n${describeError(err)}',
        onRetry: onRetry,
      ),
    );
  }
}

/// Search box (the web's SearchInput).
class FinanceSearchField extends StatelessWidget {
  const FinanceSearchField({super.key, required this.controller, required this.hint, required this.onChanged});

  final TextEditingController controller;
  final String hint;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: const Icon(Icons.search),
        border: const OutlineInputBorder(),
        isDense: true,
        suffixIcon: controller.text.isEmpty
            ? null
            : IconButton(
                tooltip: 'Clear',
                icon: const Icon(Icons.clear, size: 18),
                onPressed: () {
                  controller.clear();
                  onChanged('');
                },
              ),
      ),
    );
  }
}

/// The web's From / To DatePicker pair; both optional and clearable.
class FinanceDateRangeFields extends StatelessWidget {
  const FinanceDateRangeFields({super.key, required this.range, required this.onChanged});

  final FeeReportRange range;
  final ValueChanged<FeeReportRange> onChanged;

  @override
  Widget build(BuildContext context) {
    return FieldPair(
      first: DateField(
        label: 'From',
        value: _parse(range.from),
        onPicked: (d) => onChanged((from: financeIsoDate(d), to: range.to)),
        onClear: () => onChanged((from: '', to: range.to)),
      ),
      second: DateField(
        label: 'To',
        value: _parse(range.to),
        onPicked: (d) => onChanged((from: range.from, to: financeIsoDate(d))),
        onClear: () => onChanged((from: range.from, to: '')),
      ),
    );
  }
}

DateTime? _parse(String iso) => iso.isEmpty ? null : DateTime.tryParse(iso);

/// A tinted summary tile (the reports' `rounded-2xl p-5` total tiles).
class FinanceSummaryTile extends StatelessWidget {
  const FinanceSummaryTile({
    super.key,
    required this.label,
    required this.value,
    this.color = AppColors.primary,
    this.background = AppColors.primaryLight,
  });

  final String label;
  final String value;
  final Color color;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label.toUpperCase(),
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, letterSpacing: 0.6, color: color),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
          ),
        ],
      ),
    );
  }
}

/// Icon + title + description navigation row (the web's CatalogRow /
/// report tile).
class FinanceCatalogTile extends StatelessWidget {
  const FinanceCatalogTile({
    super.key,
    required this.icon,
    required this.color,
    required this.background,
    required this.title,
    required this.description,
    required this.onTap,
    this.badge,
  });

  final IconData icon;
  final Color color;
  final Color background;
  final String title;
  final String description;
  final VoidCallback onTap;
  final Widget? badge;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColors.border),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(color: background, borderRadius: BorderRadius.circular(12)),
                child: Icon(icon, size: 20, color: color),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                    ),
                    const SizedBox(height: 2),
                    Text(description, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                    if (badge != null) ...[const SizedBox(height: 6), badge!],
                  ],
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.chevron_right, size: 18, color: AppColors.textMuted),
            ],
          ),
        ),
      ),
    );
  }
}

/// A row's edit/delete icon button (the web's Pencil / Ban / Trash2).
class FinanceRowAction extends StatelessWidget {
  const FinanceRowAction({super.key, required this.icon, required this.tooltip, required this.color, this.onPressed});

  final IconData icon;
  final String tooltip;
  final Color color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => IconButton(
    tooltip: tooltip,
    visualDensity: VisualDensity.compact,
    icon: Icon(icon, size: 20, color: color),
    onPressed: onPressed,
  );
}

/// A small "Label  value" line inside a list card.
class FinanceKeyValue extends StatelessWidget {
  const FinanceKeyValue({super.key, required this.label, required this.value, this.valueColor, this.bold = false});

  final String label;
  final String value;
  final Color? valueColor;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(label, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
          ),
          const SizedBox(width: 12),
          Flexible(
            flex: 2,
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 13,
                fontWeight: bold ? FontWeight.w700 : FontWeight.w500,
                color: valueColor ?? AppColors.textPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// `{admission_no} · {name}` — the reports' Student column
/// (`${admission_no ?? '—'} · ${formatStudentName(applicants) ?? '—'}`).
String financeStudentLabel(StudentBrief? s) => '${s?.admissionNo ?? '—'} · ${s?.applicant?.fullName ?? '—'}';

/// A concession's value: FLAT → rupees, else a percentage (the web's
/// `₹{value}` / `{value}%`).
String financeConcessionValue(String? calculationType, Decimal? value) {
  if (value == null) return '—';
  return calculationType == 'FLAT' ? formatAmount(value) : '$value%';
}

/// Parses an amount/percentage typed into a form (the web's
/// `Number(form.x)`); null when blank or not a number.
num? financeParseNumber(String text) {
  final t = text.trim();
  if (t.isEmpty) return null;
  return num.tryParse(t);
}

/// "Saved/created" snackbar + error mapping shared by the form sheets.
String financeFailure(Failure f, String fallback) => failureMessage(f, fallback);
