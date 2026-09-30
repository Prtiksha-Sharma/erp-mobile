import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/student_fees.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/stat_tile.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/student_portal_providers.dart';
import '../services/student_portal_service.dart';
import 'student_page_scaffold.dart';

/// Port of MyFeesPage.jsx: Total Paid / Total Pending Due tiles, Pending
/// Dues, Payment Plan, Payment History (expandable receipt line items).
///
/// Payment Plan deliberately follows the backend's real contract — one plan
/// per fee head (`GET /student/fee-plan -> { plans: [...] }`, `POST` needs
/// `fee_head_id`) — the same shape the web *parent* portal's
/// ChildFeesPage uses. The web *student* page still expects an older
/// single-plan shape (`data.plan`, `available_frequencies`) the backend no
/// longer returns, so copying it literally would never show a plan.
class StudentFeesScreen extends ConsumerWidget {
  const StudentFeesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summary = ref.watch(myFeeSummaryProvider);
    final pending = ref.watch(myPendingDuesProvider);

    Future<void> refreshAll() async {
      ref
        ..invalidate(myFeeSummaryProvider)
        ..invalidate(myPendingDuesProvider)
        ..invalidate(myFeePlansProvider)
        ..invalidate(myReceiptsProvider);
      // Only keeps the refresh spinner up until data is back; each section
      // renders its own error state, so a failure here is ignored.
      try {
        await ref.read(myPendingDuesProvider.future);
      } catch (_) {}
    }

    return StudentPageScaffold(
      title: 'Fees',
      body: ResponsiveListView(
        onRefresh: refreshAll,
        children: [
          const PageIntro('Your fee dues and payment history.'),
          ResponsiveGrid(
            minItemWidth: 240,
            minColumns: 2,
            maxColumns: 2,
            children: [
              StatTile(
                value: summary.hasValue ? formatAmount(summary.value!.totalPaid) : '—',
                label: 'Total Paid',
                color: AppColors.success,
              ),
              StatTile(
                value: pending.hasValue ? formatAmount(pending.value!.totalDue) : '—',
                label: 'Total Pending Due',
                color: AppColors.danger,
              ),
            ],
          ),
          const SizedBox(height: 16),
          const _PendingDuesSection(),
          const SizedBox(height: 16),
          const _FeePlanSection(),
          const SizedBox(height: 16),
          const _ReceiptsSection(),
        ],
      ),
    );
  }
}

class _PendingDuesSection extends ConsumerWidget {
  const _PendingDuesSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DividedCard(
      header: const CardHeader('Pending Dues'),
      children: [
        AsyncValueView(
          value: ref.watch(myPendingDuesProvider),
          loadingLabel: 'Loading pending dues…',
          onRetry: () => ref.invalidate(myPendingDuesProvider),
          data: (dues) => dues.items.isEmpty
              ? const EmptyState(
                  icon: Icons.account_balance_wallet_outlined,
                  title: 'No pending dues',
                  message: "You're all caught up — nothing due right now.",
                )
              : Column(
                  children: [
                    for (final (i, item) in dues.items.indexed) ...[
                      if (i > 0) const Divider(height: 1),
                      _MoneyRow(
                        title: item.feeHeadName,
                        subtitle:
                            'Due ${formatDate(item.dueDate)} · ${formatAmount(item.netDue)} of ${formatAmount(item.amount)}',
                        status: item.status,
                        variant: dueStatusVariant(item.status),
                      ),
                    ],
                  ],
                ),
        ),
      ],
    );
  }
}

class _FeePlanSection extends ConsumerStatefulWidget {
  const _FeePlanSection();

  @override
  ConsumerState<_FeePlanSection> createState() => _FeePlanSectionState();
}

class _FeePlanSectionState extends ConsumerState<_FeePlanSection> {
  String? _feeHeadOverride;
  String? _frequency;
  bool _saving = false;
  String? _error;

  Future<void> _save(String feeHeadId) async {
    final frequency = _frequency;
    if (frequency == null) return;
    setState(() {
      _saving = true;
      _error = null;
    });
    final result = await StudentPortalService().selectMyFeePlan(feeHeadId: feeHeadId, frequency: frequency);
    if (!mounted) return;
    switch (result) {
      case Ok():
        ref.invalidate(myFeePlansProvider);
        setState(() {
          _saving = false;
          _frequency = null;
        });
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Payment plan saved.')));
      case Err(:final failure):
        setState(() {
          _saving = false;
          _error = failure.userMessage;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final duesAsync = ref.watch(myPendingDuesProvider);
    final plansAsync = ref.watch(myFeePlansProvider);

    Widget body;
    if (duesAsync.isLoading || plansAsync.isLoading) {
      body = const LoadingView(label: 'Loading payment plan…', compact: true);
    } else if (plansAsync.hasError || duesAsync.hasError) {
      body = AsyncValueView(
        value: plansAsync.hasError ? plansAsync : duesAsync,
        onRetry: () => ref
          ..invalidate(myFeePlansProvider)
          ..invalidate(myPendingDuesProvider),
        data: (_) => const SizedBox.shrink(),
      );
    } else {
      body = _buildPlan(duesAsync.value!, plansAsync.value!);
    }

    return DividedCard(header: const CardHeader('Payment Plan'), children: [body]);
  }

  Widget _buildPlan(PendingDues dues, List<FeePlanEntry> plans) {
    // One option per fee head that still has something due (a fee head can
    // appear on more than one due row, e.g. per-term structures).
    final payable = <String, PendingDueItem>{};
    for (final item in dues.items) {
      if (item.netDue.sign > 0) payable.putIfAbsent(item.feeHeadId, () => item);
    }

    if (payable.isEmpty && plans.isEmpty) {
      return const EmptyState(
        icon: Icons.event_repeat_outlined,
        title: 'No payment plan set',
        message: "Choose how often you'd like to pay your pending dues.",
      );
    }

    final options = <String, String>{
      for (final p in plans) p.plan.feeHeadId: p.feeHeadName,
      for (final item in payable.values) item.feeHeadId: '${item.feeHeadName} (${formatAmount(item.netDue)} due)',
    };
    final selectedId = options.containsKey(_feeHeadOverride) ? _feeHeadOverride! : options.keys.first;
    final entry = plans.where((p) => p.plan.feeHeadId == selectedId).firstOrNull;
    final canChange = payable.containsKey(selectedId);

    final feePicker = DropdownButtonFormField<String>(
      initialValue: selectedId,
      isExpanded: true,
      decoration: const InputDecoration(labelText: 'Fee', border: OutlineInputBorder()),
      items: [
        for (final o in options.entries)
          DropdownMenuItem(value: o.key, child: Text(o.value, overflow: TextOverflow.ellipsis)),
      ],
      onChanged: _saving
          ? null
          : (v) => setState(() {
                _feeHeadOverride = v;
                _frequency = null;
                _error = null;
              }),
    );
    final frequencyPicker = DropdownButtonFormField<String>(
      key: ValueKey('freq-$selectedId-${entry?.plan.frequency}'),
      initialValue: _frequency,
      isExpanded: true,
      decoration: InputDecoration(
        labelText: entry == null ? 'Choose frequency…' : 'Change frequency…',
        border: const OutlineInputBorder(),
      ),
      items: [for (final f in feePlanFrequencies) DropdownMenuItem(value: f, child: Text(humanizeEnum(f)))],
      onChanged: _saving || !canChange
          ? null
          : (v) => setState(() {
                _frequency = v;
                _error = null;
              }),
    );
    final saveButton = FilledButton(
      onPressed: _saving || _frequency == null || !canChange ? null : () => _save(selectedId),
      child: _saving
          ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
          : Text(entry == null ? 'Set Plan' : 'Change Plan'),
    );

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LayoutBuilder(
            builder: (context, c) => c.maxWidth >= Breakpoints.medium
                ? Row(
                    children: [
                      Expanded(flex: 3, child: feePicker),
                      const SizedBox(width: 12),
                      Expanded(flex: 2, child: frequencyPicker),
                      const SizedBox(width: 12),
                      saveButton,
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [feePicker, const SizedBox(height: 12), frequencyPicker, const SizedBox(height: 12), saveButton],
                  ),
          ),
          if (_error != null) ...[
            const SizedBox(height: 10),
            Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          ],
          const SizedBox(height: 16),
          if (entry == null)
            const EmptyState(
              icon: Icons.event_repeat_outlined,
              title: 'No payment plan set',
              message: "Choose how often you'd like to pay your pending dues.",
            )
          else ...[
            Text(
              'Current plan: ${humanizeEnum(entry.plan.frequency)}',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 8),
            DividedCard(
              children: [
                for (final inst in entry.installments)
                  _MoneyRow(
                    title: inst.periodLabel,
                    subtitle:
                        'Due ${formatDate(inst.dueDate)} · ${formatAmount(inst.balance)} of ${formatAmount(inst.amount)}',
                    status: inst.status,
                    variant: dueStatusVariant(inst.status),
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class _ReceiptsSection extends ConsumerStatefulWidget {
  const _ReceiptsSection();

  @override
  ConsumerState<_ReceiptsSection> createState() => _ReceiptsSectionState();
}

class _ReceiptsSectionState extends ConsumerState<_ReceiptsSection> {
  String? _expandedId;

  @override
  Widget build(BuildContext context) {
    final muted = Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.outline);
    return DividedCard(
      header: const CardHeader('Payment History'),
      children: [
        AsyncValueView(
          value: ref.watch(myReceiptsProvider),
          loadingLabel: 'Loading payment history…',
          onRetry: () => ref.invalidate(myReceiptsProvider),
          data: (receipts) => receipts.isEmpty
              ? const EmptyState(
                  icon: Icons.receipt_long_outlined,
                  title: 'No payments yet',
                  message: 'Fee receipts will appear here once a payment is recorded.',
                )
              : Column(
                  children: [
                    for (final (i, r) in receipts.indexed) ...[
                      if (i > 0) const Divider(height: 1),
                      InkWell(
                        onTap: () => setState(() => _expandedId = _expandedId == r.receiptId ? null : r.receiptId),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(r.receiptNo, style: const TextStyle(fontWeight: FontWeight.w600)),
                                    Text(
                                      [formatDate(r.receiptDate), ?r.paymentMode].join(' · '),
                                      style: muted,
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(formatAmount(r.netAmount), style: const TextStyle(fontWeight: FontWeight.w600)),
                                  const SizedBox(height: 4),
                                  StatusBadge(
                                    label: r.receiptStatus ?? 'PAID',
                                    variant: receiptStatusVariant(r.receiptStatus),
                                  ),
                                ],
                              ),
                              Icon(
                                _expandedId == r.receiptId ? Icons.expand_less : Icons.expand_more,
                                color: Theme.of(context).colorScheme.outline,
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (_expandedId == r.receiptId) _ReceiptItems(receipt: r),
                    ],
                  ],
                ),
        ),
      ],
    );
  }
}

/// The receipts list already carries each receipt's line items; the detail
/// endpoint (web's ReceiptDetail) is only called if the list came back
/// without them.
class _ReceiptItems extends ConsumerWidget {
  const _ReceiptItems({required this.receipt});

  final FeeReceipt receipt;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (receipt.items.isNotEmpty) return _itemList(context, receipt.items);
    final detail = ref.watch(myReceiptDetailProvider(receipt.receiptId));
    return detail.when(
      data: (d) => _itemList(context, d.items),
      loading: () => const LoadingView(label: 'Loading receipt…', compact: true),
      error: (err, _) => Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        child: Text(describeError(err), style: TextStyle(color: Theme.of(context).colorScheme.error)),
      ),
    );
  }

  Widget _itemList(BuildContext context, List<FeeReceiptItem> items) {
    final scheme = Theme.of(context).colorScheme;
    final style = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
      child: Column(
        children: [
          for (final item in items)
            Container(
              margin: const EdgeInsets.only(top: 6),
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(border: Border(left: BorderSide(color: scheme.outlineVariant, width: 2))),
              child: Row(
                children: [
                  Expanded(child: Text(item.feeHeadName, style: style)),
                  Text(formatAmount(item.netAmount), style: style?.copyWith(color: scheme.outline)),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _MoneyRow extends StatelessWidget {
  const _MoneyRow({required this.title, required this.subtitle, required this.status, required this.variant});

  final String title;
  final String subtitle;
  final String status;
  final BadgeVariant variant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.outline),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          StatusBadge(label: status, variant: variant),
        ],
      ),
    );
  }
}
