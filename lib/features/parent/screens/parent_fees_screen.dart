import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/fee_summary.dart';
import '../../../core/utils/currency_format.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/children_provider.dart' show activeChildProvider;
import '../providers/fees_provider.dart';
import '../services/payments_service.dart';
import '../utils/launch_payment.dart';
import 'parent_page_scaffold.dart';

class ParentFeesScreen extends ConsumerWidget {
  const ParentFeesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeChild = ref.watch(activeChildProvider);

    if (activeChild == null) {
      return const ParentPageScaffold(
        title: 'Fees',
        body: Center(child: Text('Select a child from Home first.')),
      );
    }

    final summaryAsync = ref.watch(feeSummaryProvider(activeChild.studentId));

    return ParentPageScaffold(
      title: 'Fees',
      actions: [
        IconButton(
          icon: const Icon(Icons.calendar_month_outlined),
          tooltip: 'Fee Payment Plans',
          onPressed: () => context.push('/parent/fees/fee-plan'),
        ),
      ],
      body: summaryAsync.when(
        data: (summary) => _FeeSummaryView(summary: summary, studentId: activeChild.studentId),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => ErrorView(
          message: describeError(err),
          onRetry: () => ref.invalidate(feeSummaryProvider(activeChild.studentId)),
        ),
      ),
    );
  }
}

class _FeeSummaryView extends StatelessWidget {
  const _FeeSummaryView({required this.summary, required this.studentId});

  final FeeSummary summary;
  final String studentId;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final hasDue = summary.totalDue > Decimal.zero;
    final dateFormat = DateFormat('d MMM yyyy');

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: hasDue ? const Color(0xFFFEF2F2) : const Color(0xFFDCFCE7),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Icon(
                hasDue ? Icons.error_outline : Icons.check_circle_outline,
                color: hasDue ? const Color(0xFFDC2626) : const Color(0xFF16A34A),
                size: 32,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Total Due', style: Theme.of(context).textTheme.bodyMedium),
                    Text(
                      formatCurrency(summary.totalDue),
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: hasDue ? const Color(0xFFDC2626) : const Color(0xFF16A34A),
                      ),
                    ),
                  ],
                ),
              ),
              if (summary.feeCategory != null)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(color: scheme.surface, borderRadius: BorderRadius.circular(10)),
                  child: Text(summary.feeCategory!.categoryName, style: Theme.of(context).textTheme.bodySmall),
                ),
            ],
          ),
        ),
        if (hasDue) ...[
          const SizedBox(height: 12),
          _PayAllDuesButton(studentId: studentId),
        ],
        if (summary.pendingItems.isNotEmpty) ...[
          const SizedBox(height: 20),
          Text('Pending Dues', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          ...summary.pendingItems.map((item) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: _PendingItemCard(item: item, dateFormat: dateFormat),
              )),
        ],
        if (summary.scholarships.isNotEmpty) ...[
          const SizedBox(height: 20),
          Text('Scholarships & Concessions', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          ...summary.scholarships.map((s) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: _ScholarshipCard(scholarship: s),
              )),
        ],
        const SizedBox(height: 20),
        Text('Payment History', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        if (summary.previousPayments.isEmpty)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text('No payments recorded yet.'),
          )
        else
          ...summary.previousPayments.map((receipt) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: _ReceiptCard(
                  receipt: receipt,
                  dateFormat: dateFormat,
                  onTap: () => context.go(
                    '/parent/fees/receipts/${receipt.receiptId}',
                    extra: studentId,
                  ),
                ),
              )),
      ],
    );
  }
}

class _PendingItemCard extends StatelessWidget {
  const _PendingItemCard({required this.item, required this.dateFormat});

  final PendingFeeItem item;
  final DateFormat dateFormat;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border(left: BorderSide(color: item.status.color, width: 4)),
        boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 6, offset: const Offset(0, 2))],
      ),
      padding: const EdgeInsets.all(14),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.feeHeadName, style: const TextStyle(fontWeight: FontWeight.bold)),
                if (item.dueDate != null)
                  Text('Due ${dateFormat.format(item.dueDate!)}', style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(formatCurrency(item.netDue), style: TextStyle(fontWeight: FontWeight.bold, color: item.status.color)),
              Text(item.status.label, style: TextStyle(fontSize: 11, color: item.status.color)),
            ],
          ),
        ],
      ),
    );
  }
}

class _ScholarshipCard extends StatelessWidget {
  const _ScholarshipCard({required this.scholarship});

  final Scholarship scholarship;

  @override
  Widget build(BuildContext context) {
    final info = scholarship.feeConcessions;
    final valueLabel =
        info.calculationType == 'PERCENTAGE' ? '${info.value}%' : formatCurrency(info.value);
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFEDE9FE),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(14),
      child: Row(
        children: [
          const Icon(Icons.card_giftcard_outlined, color: Color(0xFF7C3AED)),
          const SizedBox(width: 12),
          Expanded(child: Text(info.name, style: const TextStyle(fontWeight: FontWeight.bold))),
          Text(valueLabel, style: const TextStyle(color: Color(0xFF7C3AED), fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class _ReceiptCard extends StatelessWidget {
  const _ReceiptCard({required this.receipt, required this.dateFormat, required this.onTap});

  final FeeReceipt receipt;
  final DateFormat dateFormat;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.receipt_long_outlined)),
        title: Text(receipt.receiptNo),
        subtitle: Text('${dateFormat.format(receipt.receiptDate)} • ${receipt.paymentMode ?? ''}'),
        trailing: Text(formatCurrency(receipt.netAmount), style: const TextStyle(fontWeight: FontWeight.bold)),
        onTap: onTap,
      ),
    );
  }
}

/// Pays every currently-pending item in one shot (payDues with no
/// feeStructureIds filter) — the simple, default path; picking specific
/// fee heads to pay individually isn't offered, matching the "everything
/// due" framing of the Total Due card itself.
class _PayAllDuesButton extends StatefulWidget {
  const _PayAllDuesButton({required this.studentId});

  final String studentId;

  @override
  State<_PayAllDuesButton> createState() => _PayAllDuesButtonState();
}

class _PayAllDuesButtonState extends State<_PayAllDuesButton> {
  bool _isSubmitting = false;

  Future<void> _pay() async {
    setState(() => _isSubmitting = true);
    final result = await PaymentsService().payDues(widget.studentId);
    if (!mounted) return;

    switch (result) {
      case Ok(:final value):
        setState(() => _isSubmitting = false);
        await launchPayment(context, studentId: widget.studentId, initiation: value);
      case Err(:final failure):
        setState(() => _isSubmitting = false);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(failure.userMessage)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton.icon(
        onPressed: _isSubmitting ? null : _pay,
        icon: _isSubmitting
            ? const SizedBox(height: 16, width: 16, child: CircularProgressIndicator(strokeWidth: 2))
            : const Icon(Icons.payment_outlined),
        label: const Text('Pay Now'),
      ),
    );
  }
}
