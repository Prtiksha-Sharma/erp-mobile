import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/accounting.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/accounting_providers.dart';
import '../services/accountant_service.dart' show apiDay;
import 'accountant_page_scaffold.dart';
import 'accounting_widgets.dart';

/// Chart of accounts — GET /admin/accounting/chart-of-accounts. Read-only
/// (School Admin owns account setup); grouped by account type.
class ChartOfAccountsScreen extends ConsumerStatefulWidget {
  const ChartOfAccountsScreen({super.key});

  @override
  ConsumerState<ChartOfAccountsScreen> createState() => _ChartOfAccountsScreenState();
}

class _ChartOfAccountsScreenState extends ConsumerState<ChartOfAccountsScreen> {
  String? _type;

  @override
  Widget build(BuildContext context) {
    final value = ref.watch(chartOfAccountsProvider);
    return AccountantPageScaffold(
      title: 'Chart of Accounts',
      body: AsyncValueView<List<LedgerAccount>>(
        value: value,
        onRetry: () => ref.invalidate(chartOfAccountsProvider),
        data: (all) {
          final types = [for (final t in accountTypes) if (_type == null || _type == t) t];
          return ResponsiveListView(
            onRefresh: () => ref.refresh(chartOfAccountsProvider.future),
            children: [
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final t in [null, ...accountTypes])
                    ChoiceChip(
                      label: Text(t == null ? 'All (${all.length})' : humanizeEnum(t)),
                      selected: _type == t,
                      onSelected: (_) => setState(() => _type = t),
                    ),
                ],
              ),
              const SizedBox(height: 16),
              if (all.isEmpty)
                const EmptyCard(icon: Icons.account_tree_outlined, title: 'No accounts set up', message: 'The School Admin sets up the chart of accounts.'),
              for (final t in types)
                if (all.any((a) => a.accountType == t)) ...[
                  SectionLabel(humanizeEnum(t)),
                  DividedCard(
                    children: [
                      for (final a in all.where((a) => a.accountType == t))
                        ListTile(
                          title: Text(a.accountName),
                          subtitle: Text([
                            a.accountCode,
                            if (a.accountSubtype != null) humanizeEnum(a.accountSubtype),
                            if (a.openingBalance != Decimal.zero) 'Opening ${formatAmount(a.openingBalance)} ${a.openingBalanceSide ?? ''}',
                          ].join(' · ')),
                          trailing: !a.isActive
                              ? const StatusBadge(label: 'Inactive', variant: BadgeVariant.neutral)
                              : a.isSystemAccount
                                  ? const StatusBadge(label: 'System', variant: BadgeVariant.info)
                                  : null,
                        ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
            ],
          );
        },
      ),
    );
  }
}

/// General ledger — pick an account, then GET .../ledger/:id?from&to:
/// opening balance, every posted line with its running balance, closing.
class GeneralLedgerScreen extends ConsumerStatefulWidget {
  const GeneralLedgerScreen({super.key});

  @override
  ConsumerState<GeneralLedgerScreen> createState() => _GeneralLedgerScreenState();
}

class _GeneralLedgerScreenState extends ConsumerState<GeneralLedgerScreen> {
  String? _accountId;
  DateTimeRange _range = financialYearToDate();

  @override
  Widget build(BuildContext context) {
    final accounts = ref.watch(chartOfAccountsProvider);
    return AccountantPageScaffold(
      title: 'General Ledger',
      body: AsyncValueView<List<LedgerAccount>>(
        value: accounts,
        onRetry: () => ref.invalidate(chartOfAccountsProvider),
        data: (list) {
          final active = list.where((a) => a.isActive).toList();
          _accountId ??= active.where((a) => a.accountSubtype == 'CASH').firstOrNull?.accountId ?? active.firstOrNull?.accountId;
          final key = _accountId == null ? null : (accountId: _accountId!, from: apiDay(_range.start), to: apiDay(_range.end));
          return ResponsiveListView(
            onRefresh: () async {
              if (key != null) ref.invalidate(ledgerProvider(key));
            },
            children: [
              DropdownButtonFormField<String>(
                initialValue: _accountId,
                isExpanded: true,
                decoration: const InputDecoration(labelText: 'Account'),
                items: [
                  for (final a in active) DropdownMenuItem(value: a.accountId, child: Text(a.label, overflow: TextOverflow.ellipsis)),
                ],
                onChanged: (v) => setState(() => _accountId = v),
              ),
              const SizedBox(height: 12),
              PeriodChip(range: _range, onChanged: (r) => setState(() => _range = r)),
              const SizedBox(height: 16),
              if (key == null)
                const EmptyCard(icon: Icons.account_tree_outlined, title: 'No accounts set up')
              else
                ref.watch(ledgerProvider(key)).when(
                      loading: () => const Padding(padding: EdgeInsets.all(24), child: Center(child: CircularProgressIndicator())),
                      error: (e, _) => EmptyCard(icon: Icons.error_outline, title: "Couldn't load the ledger", message: describeError(e)),
                      data: (l) => Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SummaryCard(
                            children: [
                              SummaryRow('Opening balance', drCr(l.openingBalance)),
                              SummaryRow('Total debit', formatAmount(l.totalDebit)),
                              SummaryRow('Total credit', formatAmount(l.totalCredit)),
                              const Divider(),
                              SummaryRow('Closing balance', drCr(l.closingBalance), bold: true),
                            ],
                          ),
                          const SizedBox(height: 16),
                          SectionLabel('${l.lines.length} entr${l.lines.length == 1 ? 'y' : 'ies'}'),
                          if (l.lines.isEmpty)
                            const EmptyCard(icon: Icons.receipt_long_outlined, title: 'No entries in this period')
                          else
                            DividedCard(children: [for (final line in l.lines) BookLineTile(line: line)]),
                        ],
                      ),
                    ),
            ],
          );
        },
      ),
    );
  }
}

/// One ledger / cash-book line: voucher, date, narration, Dr or Cr amount
/// and the running balance.
class BookLineTile extends StatelessWidget {
  const BookLineTile({super.key, required this.line});

  final BookLine line;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isDebit = line.debitAmount > Decimal.zero;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(line.voucherNo, style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(
                  [formatDate(line.entryDate), entryTypeLabel(line.entryType)].join(' · '),
                  style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 13),
                ),
                if ((line.lineNarration ?? line.narration ?? '').isNotEmpty)
                  Text(line.lineNarration ?? line.narration!,
                      maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 13)),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${formatAmount(isDebit ? line.debitAmount : line.creditAmount)} ${isDebit ? 'Dr' : 'Cr'}',
                style: TextStyle(fontWeight: FontWeight.w700, color: isDebit ? AppColors.success : AppColors.danger),
              ),
              Text('Bal ${drCr(line.runningBalance)}', style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}

/// Trial balance — GET .../trial-balance?as_of: every account's debit /
/// credit totals and balance; total debits must equal total credits.
class TrialBalanceScreen extends ConsumerStatefulWidget {
  const TrialBalanceScreen({super.key});

  @override
  ConsumerState<TrialBalanceScreen> createState() => _TrialBalanceScreenState();
}

class _TrialBalanceScreenState extends ConsumerState<TrialBalanceScreen> {
  DateTime _asOf = today();

  @override
  Widget build(BuildContext context) {
    final key = apiDay(_asOf);
    final value = ref.watch(trialBalanceProvider(key));
    return AccountantPageScaffold(
      title: 'Trial Balance',
      body: AsyncValueView<TrialBalance>(
        value: value,
        onRetry: () => ref.invalidate(trialBalanceProvider(key)),
        data: (tb) {
          final scheme = Theme.of(context).colorScheme;
          return ResponsiveListView(
            onRefresh: () => ref.refresh(trialBalanceProvider(key).future),
            children: [
              HeaderBar(children: [AsOfChip(date: _asOf, onChanged: (d) => setState(() => _asOf = d)), balancedBadge(tb.tieOut)]),
              const SizedBox(height: 12),
              SummaryCard(
                children: [
                  SummaryRow('Total debit', formatAmount(tb.totalDebit), bold: true),
                  SummaryRow('Total credit', formatAmount(tb.totalCredit), bold: true),
                  if (!tb.tieOut)
                    SummaryRow('Difference', formatAmount((tb.totalDebit - tb.totalCredit).abs()), color: AppColors.danger),
                ],
              ),
              const SizedBox(height: 16),
              if (tb.accounts.isEmpty)
                const EmptyCard(icon: Icons.balance_outlined, title: 'No posted entries yet')
              else
                DividedCard(
                  children: [
                    for (final a in tb.accounts)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(a.accountName, style: const TextStyle(fontWeight: FontWeight.w600)),
                                  Text('${a.accountCode} · ${humanizeEnum(a.accountType)}',
                                      style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 13)),
                                  Text('Dr ${formatAmount(a.totalDebit)} · Cr ${formatAmount(a.totalCredit)}',
                                      style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 13)),
                                ],
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(drCr(a.net), style: const TextStyle(fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                  ],
                ),
            ],
          );
        },
      ),
    );
  }
}
