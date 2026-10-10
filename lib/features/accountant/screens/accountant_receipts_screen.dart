import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/accountant.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/info_field.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../providers/accountant_providers.dart';
import '../services/accountant_service.dart';
import 'accountant_page_scaffold.dart';

/// A tappable `01 Oct 2026 – 10 Oct 2026` chip that opens a range picker.
class DateRangeChip extends StatelessWidget {
  const DateRangeChip({super.key, required this.range, required this.onChanged});

  final DateTimeRange range;
  final ValueChanged<DateTimeRange> onChanged;

  @override
  Widget build(BuildContext context) {
    String f(DateTime d) => formatDate(DateTime.utc(d.year, d.month, d.day));
    return ActionChip(
      avatar: const Icon(Icons.date_range_outlined, size: 18),
      label: Text(range.start == range.end ? f(range.start) : '${f(range.start)} – ${f(range.end)}'),
      onPressed: () async {
        final picked = await showDateRangePicker(
          context: context,
          initialDateRange: range,
          firstDate: DateTime(2020),
          lastDate: today(),
        );
        if (picked != null) onChanged(DateTimeRange(start: picked.start, end: picked.end));
      },
    );
  }
}

/// This month so far — the default window for every list (the backend
/// doesn't paginate).
DateTimeRange thisMonth() {
  final t = today();
  return DateTimeRange(start: DateTime(t.year, t.month), end: t);
}

/// Receipts — GET /accountant/receipts for a date range (+ payment mode).
/// Status (Paid / Cancelled / Refunded) and receipt-no search filter the
/// loaded list on the device.
class AccountantReceiptsScreen extends ConsumerStatefulWidget {
  const AccountantReceiptsScreen({super.key});

  @override
  ConsumerState<AccountantReceiptsScreen> createState() => _AccountantReceiptsScreenState();
}

class _AccountantReceiptsScreenState extends ConsumerState<AccountantReceiptsScreen> {
  DateTimeRange _range = thisMonth();
  String? _mode;
  String? _status;
  final _search = TextEditingController();
  String _query = '';

  ReceiptQuery get _key => (from: apiDay(_range.start), to: apiDay(_range.end), mode: _mode);

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final value = ref.watch(receiptsProvider(_key));
    return AccountantPageScaffold(
      title: 'Receipts',
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.go('/accountant/collect'),
        icon: const Icon(Icons.point_of_sale_outlined),
        label: const Text('Collect fee'),
      ),
      body: AsyncValueView<List<AcctReceipt>>(
        value: value,
        onRetry: () => ref.invalidate(receiptsProvider(_key)),
        data: (all) {
          final q = _query.toLowerCase();
          final rows = all.where((r) {
            if (_status != null && r.receiptStatus != _status) return false;
            if (q.isEmpty) return true;
            return r.receiptNo.toLowerCase().contains(q) ||
                (r.student?.name.toLowerCase().contains(q) ?? false) ||
                (r.student?.admissionNo?.toLowerCase().contains(q) ?? false);
          }).toList();
          final paidTotal = rows.where((r) => r.isPaid).fold(Decimal.zero, (s, r) => s + r.netAmount);
          return ResponsiveListView(
            onRefresh: () => ref.refresh(receiptsProvider(_key).future),
            children: [
              HeaderBar(
                children: [
                  DateRangeChip(range: _range, onChanged: (r) => setState(() => _range = r)),
                  Text('Paid ${formatAmount(paidTotal)}', style: const TextStyle(fontWeight: FontWeight.w600)),
                ],
              ),
              const SizedBox(height: 12),
              AcctSearchField(
                controller: _search,
                hint: 'Receipt no., student or admission no.',
                onChanged: (v) => setState(() => _query = v.trim()),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final s in const [null, 'PAID', 'CANCELLED', 'REFUNDED'])
                    ChoiceChip(
                      label: Text(s == null ? 'All' : humanizeEnum(s)),
                      selected: _status == s,
                      onSelected: (_) => setState(() => _status = s),
                    ),
                ],
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final m in [null, ...feePaymentModes])
                    FilterChip(
                      label: Text(m == null ? 'Any mode' : paymentModeLabel(m)),
                      selected: _mode == m,
                      onSelected: (_) => setState(() => _mode = m),
                    ),
                ],
              ),
              const SizedBox(height: 16),
              SectionLabel('${rows.length} receipt${rows.length == 1 ? '' : 's'}'),
              if (rows.isEmpty)
                const EmptyCard(icon: Icons.receipt_long_outlined, title: 'No receipts', message: 'Try a wider date range.')
              else
                DividedCard(children: [for (final r in rows) ReceiptRow(receipt: r)]),
              const SizedBox(height: 72),
            ],
          );
        },
      ),
    );
  }
}

class ReceiptRow extends StatelessWidget {
  const ReceiptRow({super.key, required this.receipt});

  final AcctReceipt receipt;

  @override
  Widget build(BuildContext context) {
    final r = receipt;
    final scheme = Theme.of(context).colorScheme;
    return ListTile(
      onTap: () => context.push('/accountant/receipts/${r.receiptId}'),
      title: Text(r.student?.name ?? r.receiptNo, overflow: TextOverflow.ellipsis),
      subtitle: Text(
        [r.receiptNo, formatDate(r.receiptDate), paymentModeLabel(r.paymentMode)].join(' · '),
        style: TextStyle(color: scheme.onSurfaceVariant),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            formatAmount(r.netAmount),
            style: TextStyle(
              fontWeight: FontWeight.w700,
              decoration: r.isPaid ? null : TextDecoration.lineThrough,
              color: r.isPaid ? null : scheme.onSurfaceVariant,
            ),
          ),
          if (!r.isPaid) receiptStatusBadge(r.receiptStatus),
        ],
      ),
    );
  }
}

/// GET /accountant/receipts/:id — line items, totals, and (PAID only)
/// cancel / refund. Both are permanent; refund needs a reason.
class ReceiptDetailScreen extends ConsumerWidget {
  const ReceiptDetailScreen({super.key, required this.receiptId});

  final String receiptId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(receiptDetailProvider(receiptId));
    return AccountantPageScaffold(
      title: 'Receipt',
      body: AsyncValueView<AcctReceipt>(
        value: value,
        onRetry: () => ref.invalidate(receiptDetailProvider(receiptId)),
        data: (r) {
          final scheme = Theme.of(context).colorScheme;
          Widget totalRow(String label, Decimal v, {bool bold = false, Color? color}) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  children: [
                    Expanded(child: Text(label, style: TextStyle(fontWeight: bold ? FontWeight.w700 : null))),
                    Text(formatAmount(v),
                        style: TextStyle(fontWeight: bold ? FontWeight.w700 : FontWeight.w500, fontSize: bold ? 17 : null, color: color)),
                  ],
                ),
              );
          return ResponsiveListView(
            onRefresh: () => ref.refresh(receiptDetailProvider(receiptId).future),
            children: [
              SectionCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderBar(
                      children: [
                        Text(r.receiptNo, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        receiptStatusBadge(r.receiptStatus),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Wrap(
                      runSpacing: 12,
                      spacing: 24,
                      children: [
                        _cell('Student', r.student?.name),
                        _cell('Admission no.', r.student?.admissionNo),
                        _cell('Class', r.className),
                        _cell('Date', formatDate(r.receiptDate)),
                        _cell('Payment mode', paymentModeLabel(r.paymentMode)),
                        if (r.cancelledAt != null) _cell('Cancelled on', formatDateTime(r.cancelledAt)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              const SectionLabel('Items'),
              DividedCard(
                children: [
                  for (final i in r.items)
                    ListTile(
                      title: Text(i.feeHeadName),
                      subtitle: (i.discountAmount > Decimal.zero || i.fineAmount > Decimal.zero)
                          ? Text([
                              formatAmount(i.amount),
                              if (i.discountAmount > Decimal.zero) '− ${formatAmount(i.discountAmount)} discount',
                              if (i.fineAmount > Decimal.zero) '+ ${formatAmount(i.fineAmount)} late fee',
                            ].join(' '))
                          : null,
                      trailing: Text(formatAmount(i.netAmount), style: const TextStyle(fontWeight: FontWeight.w600)),
                    ),
                ],
              ),
              const SizedBox(height: 12),
              SectionCard(
                child: Column(
                  children: [
                    totalRow('Amount', r.totalAmount),
                    if (r.discountAmount > Decimal.zero) totalRow('Discount', -r.discountAmount, color: AppColors.success),
                    if (r.fineAmount > Decimal.zero) totalRow('Late fee', r.fineAmount, color: AppColors.warning),
                    const Divider(),
                    totalRow(r.isPaid ? 'Net paid' : 'Net amount', r.netAmount, bold: true),
                  ],
                ),
              ),
              if ((r.remarks ?? '').isNotEmpty) ...[
                const SizedBox(height: 12),
                SectionCard(
                  title: 'Remarks',
                  icon: Icons.notes_outlined,
                  child: Text(r.remarks!, style: TextStyle(color: scheme.onSurfaceVariant)),
                ),
              ],
              if (r.isPaid) ...[
                const SizedBox(height: 20),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    OutlinedButton.icon(
                      onPressed: () => _refund(context, ref, r),
                      icon: const Icon(Icons.undo),
                      label: const Text('Refund'),
                    ),
                    OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(foregroundColor: scheme.error),
                      onPressed: () => _cancel(context, ref, r),
                      icon: const Icon(Icons.block),
                      label: const Text('Cancel receipt'),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text('Cancelling or refunding is permanent and can\'t be undone.',
                    style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 13)),
              ],
            ],
          );
        },
      ),
    );
  }

  Widget _cell(String label, String? value) => SizedBox(width: 150, child: InfoField(label: label, value: value));

  Future<void> _cancel(BuildContext context, WidgetRef ref, AcctReceipt r) async {
    final ok = await showAcctConfirm(
      context,
      title: 'Cancel receipt ${r.receiptNo}?',
      message: '${formatAmount(r.netAmount)} from ${r.student?.name ?? 'this student'} will be marked cancelled. '
          'The fee becomes due again. This can\'t be undone.',
      confirmLabel: 'Cancel receipt',
      dangerous: true,
      action: () async => switch (await AccountantService().cancelReceipt(r.receiptId)) {
        Ok() => null,
        Err(:final failure) => failure.userMessage,
      },
    );
    if (ok && context.mounted) {
      invalidateFeeData(ref);
      showSnack(context, 'Receipt ${r.receiptNo} cancelled');
    }
  }

  Future<void> _refund(BuildContext context, WidgetRef ref, AcctReceipt r) async {
    final ok = await showAcctFormSheet<bool>(context, (_) => _RefundForm(receipt: r));
    if (ok == true && context.mounted) {
      invalidateFeeData(ref);
      showSnack(context, 'Receipt ${r.receiptNo} refunded');
    }
  }
}

class _RefundForm extends StatefulWidget {
  const _RefundForm({required this.receipt});

  final AcctReceipt receipt;

  @override
  State<_RefundForm> createState() => _RefundFormState();
}

class _RefundFormState extends State<_RefundForm> {
  final _reason = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _reason.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_reason.text.trim().isEmpty) {
      setState(() => _error = 'A refund reason is required.');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    final result = await AccountantService().refundReceipt(widget.receipt.receiptId, _reason.text);
    if (!mounted) return;
    switch (result) {
      case Ok():
        Navigator.of(context).pop(true);
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failure.userMessage;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final r = widget.receipt;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Refund ${r.receiptNo}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        const SizedBox(height: 4),
        Text(
          'Marks ${formatAmount(r.netAmount)} as refunded to ${r.student?.name ?? 'the student'}. '
          'Hand over the money separately. This can\'t be undone.',
          style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _reason,
          enabled: !_busy,
          autofocus: true,
          maxLines: 2,
          decoration: const InputDecoration(labelText: 'Reason for refund'),
        ),
        FormError(_error),
        const SizedBox(height: 16),
        SheetActions(busy: _busy, onSubmit: _save, submitLabel: 'Refund'),
      ],
    );
  }
}
