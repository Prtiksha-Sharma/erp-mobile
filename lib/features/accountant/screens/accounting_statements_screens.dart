import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

/// Profit & loss — GET .../reports/profit-and-loss?from&to: income and
/// expense accounts and the net result for the period.
class ProfitAndLossScreen extends ConsumerStatefulWidget {
  const ProfitAndLossScreen({super.key});

  @override
  ConsumerState<ProfitAndLossScreen> createState() => _ProfitAndLossScreenState();
}

class _ProfitAndLossScreenState extends ConsumerState<ProfitAndLossScreen> {
  DateTimeRange _range = financialYearToDate();

  @override
  Widget build(BuildContext context) {
    final key = periodKey(_range);
    final value = ref.watch(profitAndLossProvider(key));
    return AccountantPageScaffold(
      title: 'Profit & Loss',
      body: AsyncValueView<ProfitAndLoss>(
        value: value,
        onRetry: () => ref.invalidate(profitAndLossProvider(key)),
        data: (pl) => ResponsiveListView(
          onRefresh: () => ref.refresh(profitAndLossProvider(key).future),
          children: [
            PeriodChip(range: _range, onChanged: (r) => setState(() => _range = r)),
            const SizedBox(height: 12),
            SummaryCard(
              children: [
                SummaryRow('Income', formatAmount(pl.income.total)),
                SummaryRow('Expenses', formatAmount(pl.expenses.total)),
                const Divider(),
                SummaryRow(
                  pl.isProfit ? 'Net profit' : 'Net loss',
                  formatAmount(pl.netProfit.abs()),
                  bold: true,
                  color: pl.isProfit ? AppColors.success : AppColors.danger,
                ),
              ],
            ),
            const SizedBox(height: 16),
            AccountGroupCard(title: 'Income', group: pl.income, emptyText: 'No income in this period'),
            const SizedBox(height: 16),
            AccountGroupCard(title: 'Expenses', group: pl.expenses, emptyText: 'No expenses in this period'),
          ],
        ),
      ),
    );
  }
}

/// Balance sheet — GET .../reports/balance-sheet?as_of: assets against
/// liabilities + equity (equity includes the period's net income).
class BalanceSheetScreen extends ConsumerStatefulWidget {
  const BalanceSheetScreen({super.key});

  @override
  ConsumerState<BalanceSheetScreen> createState() => _BalanceSheetScreenState();
}

class _BalanceSheetScreenState extends ConsumerState<BalanceSheetScreen> {
  DateTime _asOf = today();

  @override
  Widget build(BuildContext context) {
    final key = apiDay(_asOf);
    final value = ref.watch(balanceSheetProvider(key));
    return AccountantPageScaffold(
      title: 'Balance Sheet',
      body: AsyncValueView<BalanceSheet>(
        value: value,
        onRetry: () => ref.invalidate(balanceSheetProvider(key)),
        data: (bs) => ResponsiveListView(
          onRefresh: () => ref.refresh(balanceSheetProvider(key).future),
          children: [
            HeaderBar(children: [AsOfChip(date: _asOf, onChanged: (d) => setState(() => _asOf = d)), balancedBadge(bs.isBalanced)]),
            const SizedBox(height: 12),
            SummaryCard(
              children: [
                SummaryRow('Total assets', formatAmount(bs.assets.total), bold: true),
                SummaryRow('Liabilities', formatAmount(bs.liabilities.total)),
                SummaryRow('Equity', formatAmount(bs.equity.total)),
                const Divider(),
                SummaryRow('Liabilities + equity', formatAmount(bs.totalLiabilitiesAndEquity), bold: true),
              ],
            ),
            const SizedBox(height: 16),
            AccountGroupCard(title: 'Assets', group: bs.assets),
            const SizedBox(height: 16),
            AccountGroupCard(title: 'Liabilities', group: bs.liabilities, emptyText: 'No liabilities'),
            const SizedBox(height: 16),
            AccountGroupCard(
              title: 'Equity',
              group: bs.equity,
              emptyText: 'No equity accounts',
              extra: [
                if (bs.equity.netIncome != null)
                  ListTile(
                    dense: true,
                    title: const Text('Net income (current period)'),
                    subtitle: const Text('From profit & loss'),
                    trailing: Text(
                      formatAmount(bs.equity.netIncome),
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: bs.equity.netIncome! < Decimal.zero ? AppColors.danger : AppColors.success,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Outstanding — GET .../reports/outstanding?as_of: receivables (owed to
/// the school) vs payables (owed by it).
class OutstandingScreen extends ConsumerStatefulWidget {
  const OutstandingScreen({super.key});

  @override
  ConsumerState<OutstandingScreen> createState() => _OutstandingScreenState();
}

class _OutstandingScreenState extends ConsumerState<OutstandingScreen> {
  DateTime _asOf = today();

  @override
  Widget build(BuildContext context) {
    final key = apiDay(_asOf);
    final value = ref.watch(outstandingProvider(key));
    return AccountantPageScaffold(
      title: 'Outstanding',
      body: AsyncValueView<OutstandingReport>(
        value: value,
        onRetry: () => ref.invalidate(outstandingProvider(key)),
        data: (o) {
          final positive = o.netPosition >= Decimal.zero;
          return ResponsiveListView(
            onRefresh: () => ref.refresh(outstandingProvider(key).future),
            children: [
              AsOfChip(date: _asOf, onChanged: (d) => setState(() => _asOf = d)),
              const SizedBox(height: 12),
              SummaryCard(
                children: [
                  SummaryRow('Receivables', formatAmount(o.receivables.total)),
                  SummaryRow('Payables', formatAmount(o.payables.total)),
                  const Divider(),
                  SummaryRow('Net position', formatAmount(o.netPosition), bold: true, color: positive ? AppColors.success : AppColors.danger),
                ],
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: StatusBadge(
                  label: positive ? 'More owed to the school than by it' : 'The school owes more than it is owed',
                  variant: positive ? BadgeVariant.success : BadgeVariant.warning,
                ),
              ),
              const SizedBox(height: 16),
              AccountGroupCard(title: 'Receivables', group: o.receivables, emptyText: 'Nothing receivable'),
              const SizedBox(height: 16),
              AccountGroupCard(title: 'Payables', group: o.payables, emptyText: 'Nothing payable'),
            ],
          );
        },
      ),
    );
  }
}
