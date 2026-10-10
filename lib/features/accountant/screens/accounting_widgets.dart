import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';

import '../../../core/models/accounting.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/status_badge.dart';
import '../services/accountant_service.dart' show apiDay;
import 'accountant_page_scaffold.dart';

/// Shared bits for the accounting report screens.

/// Indian financial year to date: 1 April (this year, or last year before
/// April) → today. The default period for every from/to report.
DateTimeRange financialYearToDate() {
  final t = today();
  final startYear = t.month >= 4 ? t.year : t.year - 1;
  return DateTimeRange(start: DateTime(startYear, 4), end: t);
}

({String from, String to}) periodKey(DateTimeRange r) => (from: apiDay(r.start), to: apiDay(r.end));

String _day(DateTime d) => formatDate(DateTime.utc(d.year, d.month, d.day));

/// From–to chip with quick presets (this month, this FY, last FY) and a
/// custom range picker.
class PeriodChip extends StatelessWidget {
  const PeriodChip({super.key, required this.range, required this.onChanged});

  final DateTimeRange range;
  final ValueChanged<DateTimeRange> onChanged;

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      avatar: const Icon(Icons.date_range_outlined, size: 18),
      label: Text('${_day(range.start)} – ${_day(range.end)}'),
      onPressed: () => _pick(context),
    );
  }

  Future<void> _pick(BuildContext context) async {
    final t = today();
    final fy = financialYearToDate();
    final lastFy = DateTimeRange(start: DateTime(fy.start.year - 1, 4), end: DateTime(fy.start.year, 3, 31));
    final presets = <String, DateTimeRange>{
      'This month': DateTimeRange(start: DateTime(t.year, t.month), end: t),
      'This financial year': fy,
      'Last financial year': lastFy,
    };
    final choice = await showModalBottomSheet<Object>(
      context: context,
      showDragHandle: true,
      builder: (sheet) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (final p in presets.entries)
              ListTile(
                title: Text(p.key),
                subtitle: Text('${_day(p.value.start)} – ${_day(p.value.end)}'),
                onTap: () => Navigator.of(sheet).pop(p.value),
              ),
            ListTile(
              leading: const Icon(Icons.edit_calendar_outlined),
              title: const Text('Custom range…'),
              onTap: () => Navigator.of(sheet).pop('custom'),
            ),
          ],
        ),
      ),
    );
    if (!context.mounted || choice == null) return;
    if (choice is DateTimeRange) return onChanged(choice);
    final picked = await showDateRangePicker(
      context: context,
      initialDateRange: range,
      firstDate: DateTime(2020),
      lastDate: t,
    );
    if (picked != null) onChanged(DateTimeRange(start: picked.start, end: picked.end));
  }
}

/// "As of" date chip for point-in-time reports.
class AsOfChip extends StatelessWidget {
  const AsOfChip({super.key, required this.date, required this.onChanged});

  final DateTime date;
  final ValueChanged<DateTime> onChanged;

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      avatar: const Icon(Icons.event_outlined, size: 18),
      label: Text('As of ${_day(date)}'),
      onPressed: () async {
        final picked = await showDatePicker(context: context, initialDate: date, firstDate: DateTime(2020), lastDate: today());
        if (picked != null) onChanged(DateTime(picked.year, picked.month, picked.day));
      },
    );
  }
}

/// A debit − credit balance as `₹1,234.00 Dr` / `₹1,234.00 Cr`.
String drCr(Decimal v) {
  if (v == Decimal.zero) return formatAmount(Decimal.zero);
  return v > Decimal.zero ? '${formatAmount(v)} Dr' : '${formatAmount(-v)} Cr';
}

/// MANUAL -> Journal, RECEIPT_VOUCHER -> Receipt voucher, etc.
String entryTypeLabel(String? t) => switch (t) {
      'MANUAL' => 'Journal',
      'SYSTEM_FEE_RECEIPT' => 'Fee receipt',
      'DEBIT_CREDIT_NOTE' => 'Debit/credit note',
      null => '—',
      _ => humanizeEnum(t),
    };

BadgeVariant entryTypeVariant(String? t) => switch (t) {
      'RECEIPT_VOUCHER' || 'SYSTEM_FEE_RECEIPT' => BadgeVariant.success,
      'PAYMENT_VOUCHER' => BadgeVariant.danger,
      'CONTRA' => BadgeVariant.info,
      'DEBIT_CREDIT_NOTE' => BadgeVariant.warning,
      _ => BadgeVariant.violet,
    };

/// A label · value row used in report summaries.
class SummaryRow extends StatelessWidget {
  const SummaryRow(this.label, this.value, {super.key, this.bold = false, this.color});

  final String label;
  final String value;
  final bool bold;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(fontWeight: bold ? FontWeight.w700 : FontWeight.w500, fontSize: bold ? 16 : null, color: color);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Text(label, style: TextStyle(fontWeight: bold ? FontWeight.w700 : null))),
          const SizedBox(width: 12),
          Flexible(child: Text(value, style: style, textAlign: TextAlign.end)),
        ],
      ),
    );
  }
}

/// A card summarising totals — rows of [SummaryRow].
class SummaryCard extends StatelessWidget {
  const SummaryCard({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: scheme.primaryContainer.withValues(alpha: 0.35),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(padding: const EdgeInsets.fromLTRB(16, 12, 16, 12), child: Column(children: children)),
    );
  }
}

/// A "balanced / not balanced" badge.
StatusBadge balancedBadge(bool ok, {String yes = 'Balanced', String no = 'Not balanced'}) =>
    ok ? StatusBadge(label: yes, variant: BadgeVariant.success, icon: Icons.check) : StatusBadge(label: no, variant: BadgeVariant.danger);

/// An account group (P&L income, balance-sheet assets, …): title, one row
/// per account with its section-signed net, and the total.
class AccountGroupCard extends StatelessWidget {
  const AccountGroupCard({super.key, required this.title, required this.group, this.emptyText = 'No accounts', this.extra = const []});

  final String title;
  final AccountGroup group;
  final String emptyText;
  final List<Widget> extra;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionLabel(title, trailing: Text(formatAmount(group.total), style: const TextStyle(fontWeight: FontWeight.w700))),
        if ((group.description ?? '').isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(group.description!, style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 13)),
          ),
        DividedCard(
          children: [
            if (group.accounts.isEmpty && extra.isEmpty)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(emptyText, style: TextStyle(color: scheme.onSurfaceVariant)),
              ),
            for (final a in group.accounts)
              ListTile(
                dense: true,
                title: Text(a.accountName),
                subtitle: Text(a.accountCode),
                trailing: Text(
                  formatAmount(a.net),
                  style: TextStyle(fontWeight: FontWeight.w600, color: a.net < Decimal.zero ? AppColors.danger : null),
                ),
              ),
            ...extra,
          ],
        ),
      ],
    );
  }
}
