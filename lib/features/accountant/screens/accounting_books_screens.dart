import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/accounting.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/accounting_providers.dart';
import 'accountant_page_scaffold.dart';
import 'accounting_accounts_screens.dart' show BookLineTile;
import 'accounting_widgets.dart';

/// Day book — GET .../reports/day-book?from&to: every posted voucher in the
/// period with its lines. Filter chips by voucher type run on the device.
class DayBookScreen extends ConsumerStatefulWidget {
  const DayBookScreen({super.key});

  @override
  ConsumerState<DayBookScreen> createState() => _DayBookScreenState();
}

class _DayBookScreenState extends ConsumerState<DayBookScreen> {
  DateTimeRange _range = financialYearToDate();
  String? _type;

  @override
  Widget build(BuildContext context) {
    final key = periodKey(_range);
    final value = ref.watch(dayBookProvider(key));
    return AccountantPageScaffold(
      title: 'Day Book',
      body: AsyncValueView<DayBook>(
        value: value,
        onRetry: () => ref.invalidate(dayBookProvider(key)),
        data: (db) {
          final types = db.entries.map((e) => e.entryType).toSet().toList()..sort();
          final rows = _type == null ? db.entries : db.entries.where((e) => e.entryType == _type).toList();
          return ResponsiveListView(
            onRefresh: () => ref.refresh(dayBookProvider(key).future),
            children: [
              PeriodChip(range: _range, onChanged: (r) => setState(() => _range = r)),
              const SizedBox(height: 12),
              SummaryCard(
                children: [
                  SummaryRow('Vouchers', '${db.entries.length}'),
                  SummaryRow('Total debit', formatAmount(db.totalDebit), bold: true),
                  SummaryRow('Total credit', formatAmount(db.totalCredit), bold: true),
                ],
              ),
              if (types.length > 1) ...[
                const SizedBox(height: 12),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (final t in [null, ...types])
                      ChoiceChip(
                        label: Text(t == null ? 'All' : entryTypeLabel(t)),
                        selected: _type == t,
                        onSelected: (_) => setState(() => _type = t),
                      ),
                  ],
                ),
              ],
              const SizedBox(height: 16),
              if (rows.isEmpty)
                const EmptyCard(icon: Icons.menu_book_outlined, title: 'No vouchers in this period')
              else
                DividedCard(children: [for (final e in rows) _DayBookTile(entry: e)]),
            ],
          );
        },
      ),
    );
  }
}

class _DayBookTile extends StatelessWidget {
  const _DayBookTile({required this.entry});

  final DayBookEntry entry;

  @override
  Widget build(BuildContext context) {
    final e = entry;
    final scheme = Theme.of(context).colorScheme;
    return ExpansionTile(
      shape: const Border(),
      collapsedShape: const Border(),
      title: Text(e.voucherNo, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text(
        [formatDate(e.entryDate), if ((e.narration ?? '').isNotEmpty) e.narration!].join(' · '),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(formatAmount(e.totalDebit), style: const TextStyle(fontWeight: FontWeight.w700)),
          StatusBadge(label: entryTypeLabel(e.entryType), variant: entryTypeVariant(e.entryType)),
        ],
      ),
      childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
      children: [
        for (final l in e.lines)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Row(
              children: [
                Expanded(
                  child: Text('${l.accountCode} · ${l.accountName}', style: TextStyle(color: scheme.onSurfaceVariant)),
                ),
                Text(
                  l.debitAmount > Decimal.zero ? '${formatAmount(l.debitAmount)} Dr' : '${formatAmount(l.creditAmount)} Cr',
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

/// Cash book / bank book — GET .../reports/cash-book or bank-book?from&to:
/// each cash (or bank) account with its opening balance, lines and closing.
class CashBankBookScreen extends ConsumerStatefulWidget {
  const CashBankBookScreen({super.key, required this.bank});

  /// true = bank book, false = cash book.
  final bool bank;

  @override
  ConsumerState<CashBankBookScreen> createState() => _CashBankBookScreenState();
}

class _CashBankBookScreenState extends ConsumerState<CashBankBookScreen> {
  DateTimeRange _range = financialYearToDate();

  @override
  Widget build(BuildContext context) {
    final key = periodKey(_range);
    final provider = widget.bank ? bankBookProvider(key) : cashBookProvider(key);
    final value = ref.watch(provider);
    final noun = widget.bank ? 'bank' : 'cash';
    return AccountantPageScaffold(
      title: widget.bank ? 'Bank Book' : 'Cash Book',
      body: AsyncValueView<CashBankBook>(
        value: value,
        onRetry: () => ref.invalidate(provider),
        data: (b) => ResponsiveListView(
          onRefresh: () => ref.refresh(provider.future),
          children: [
            PeriodChip(range: _range, onChanged: (r) => setState(() => _range = r)),
            const SizedBox(height: 12),
            SummaryCard(
              children: [
                SummaryRow('Opening balance', drCr(b.totalOpeningBalance)),
                SummaryRow('Received (Dr)', formatAmount(b.totalDebit)),
                SummaryRow('Paid out (Cr)', formatAmount(b.totalCredit)),
                const Divider(),
                SummaryRow('Closing balance', drCr(b.totalClosingBalance), bold: true),
              ],
            ),
            const SizedBox(height: 16),
            if (b.accounts.isEmpty)
              EmptyCard(icon: Icons.account_balance_outlined, title: 'No $noun accounts set up')
            else
              for (final a in b.accounts) ...[
                SectionLabel('${a.accountCode} · ${a.accountName}', trailing: Text(drCr(a.closingBalance), style: const TextStyle(fontWeight: FontWeight.w700))),
                DividedCard(
                  children: [
                    ListTile(dense: true, title: const Text('Opening balance'), trailing: Text(drCr(a.openingBalance))),
                    if (a.lines.isEmpty)
                      const ListTile(dense: true, title: Text('No entries in this period'))
                    else
                      for (final line in a.lines) BookLineTile(line: line),
                    ListTile(
                      dense: true,
                      title: const Text('Closing balance', style: TextStyle(fontWeight: FontWeight.w700)),
                      trailing: Text(drCr(a.closingBalance), style: const TextStyle(fontWeight: FontWeight.w700)),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
          ],
        ),
      ),
    );
  }
}
