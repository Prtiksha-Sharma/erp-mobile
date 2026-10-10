import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/models/accountant.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/info_field.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../providers/accountant_providers.dart';
import '../services/accountant_service.dart';
import 'accountant_page_scaffold.dart';
import 'accountant_receipts_screen.dart' show DateRangeChip, thisMonth;

/// Online payments — parents' gateway transactions
/// (GET /accountant/online-payments, read-only) for a date range, filtered
/// by status. A Success row links to the receipt it created.
class AccountantOnlinePaymentsScreen extends ConsumerStatefulWidget {
  const AccountantOnlinePaymentsScreen({super.key});

  @override
  ConsumerState<AccountantOnlinePaymentsScreen> createState() => _AccountantOnlinePaymentsScreenState();
}

class _AccountantOnlinePaymentsScreenState extends ConsumerState<AccountantOnlinePaymentsScreen> {
  DateTimeRange _range = thisMonth();
  String? _status;

  OnlinePaymentQuery get _key => (from: apiDay(_range.start), to: apiDay(_range.end), status: _status);

  @override
  Widget build(BuildContext context) {
    final value = ref.watch(onlinePaymentsProvider(_key));
    return AccountantPageScaffold(
      title: 'Online Payments',
      body: AsyncValueView<List<AcctOnlinePayment>>(
        value: value,
        onRetry: () => ref.invalidate(onlinePaymentsProvider(_key)),
        data: (rows) {
          final success = rows.where((p) => p.paymentStatus.toUpperCase() == 'SUCCESS').fold(Decimal.zero, (s, p) => s + p.amount);
          return ResponsiveListView(
            onRefresh: () => ref.refresh(onlinePaymentsProvider(_key).future),
            children: [
              HeaderBar(
                children: [
                  DateRangeChip(range: _range, onChanged: (r) => setState(() => _range = r)),
                  Text('Received ${formatAmount(success)}', style: const TextStyle(fontWeight: FontWeight.w600)),
                ],
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final s in const [null, 'Pending', 'Success', 'Failed'])
                    ChoiceChip(
                      label: Text(s ?? 'All'),
                      selected: _status == s,
                      onSelected: (_) => setState(() => _status = s),
                    ),
                ],
              ),
              const SizedBox(height: 16),
              if (rows.isEmpty)
                const EmptyCard(icon: Icons.account_balance_wallet_outlined, title: 'No online payments in this period')
              else
                DividedCard(
                  children: [
                    for (final p in rows)
                      ListTile(
                        onTap: () => context.push('/accountant/online-payments/${p.paymentId}'),
                        title: Text(p.student?.name ?? 'Student', overflow: TextOverflow.ellipsis),
                        subtitle: Text([
                          formatDateTime(p.paymentDate ?? p.createdAt),
                          if (p.gatewayName != null) p.gatewayName!,
                        ].join(' · ')),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(formatAmount(p.amount), style: const TextStyle(fontWeight: FontWeight.w700)),
                            paymentStatusBadge(p.paymentStatus),
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

/// GET /accountant/online-payments/:id.
class OnlinePaymentDetailScreen extends ConsumerWidget {
  const OnlinePaymentDetailScreen({super.key, required this.paymentId});

  final String paymentId;

  Widget _cell(String label, String? value, {bool wide = false}) =>
      SizedBox(width: wide ? 320 : 150, child: InfoField(label: label, value: value));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(onlinePaymentDetailProvider(paymentId));
    return AccountantPageScaffold(
      title: 'Online Payment',
      body: AsyncValueView<AcctOnlinePayment>(
        value: value,
        onRetry: () => ref.invalidate(onlinePaymentDetailProvider(paymentId)),
        data: (p) {
          final parentName = [p.parent?.firstName, p.parent?.lastName].whereType<String>().join(' ');
          return ResponsiveListView(
            onRefresh: () => ref.refresh(onlinePaymentDetailProvider(paymentId).future),
            children: [
              SectionCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderBar(
                      children: [
                        Text(formatAmount(p.amount), style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
                        paymentStatusBadge(p.paymentStatus),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Wrap(
                      runSpacing: 12,
                      spacing: 24,
                      children: [
                        _cell('Student', p.student?.name),
                        _cell('Admission no.', p.student?.admissionNo),
                        _cell('Started', formatDateTime(p.createdAt)),
                        _cell('Paid on', p.paymentDate == null ? null : formatDateTime(p.paymentDate)),
                        _cell('Gateway', p.gatewayName),
                        _cell('Method', p.paymentMethod),
                        _cell('Transaction ID', p.transactionId, wide: true),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              SectionCard(
                title: 'Parent',
                icon: Icons.person_outline,
                child: Wrap(
                  runSpacing: 12,
                  spacing: 24,
                  children: [
                    _cell('Name', parentName.isEmpty ? null : parentName),
                    _cell('Mobile', p.parent?.mobileNo),
                    _cell('Email', p.parent?.email, wide: true),
                  ],
                ),
              ),
              if (p.items.isNotEmpty) ...[
                const SizedBox(height: 12),
                const SectionLabel('Fees in this payment'),
                DividedCard(
                  children: [
                    for (final i in p.items)
                      ListTile(
                        title: Text(i.feeHeadName),
                        subtitle: i.dueDate == null ? null : Text('Due ${formatDate(i.dueDate)}'),
                        trailing: Text(formatAmount(i.netDue), style: const TextStyle(fontWeight: FontWeight.w600)),
                      ),
                  ],
                ),
              ],
              if (p.receiptId != null) ...[
                const SizedBox(height: 16),
                OutlinedButton.icon(
                  onPressed: () => context.push('/accountant/receipts/${p.receiptId}'),
                  icon: const Icon(Icons.receipt_long_outlined),
                  label: const Text('View receipt'),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
