import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/fee_summary.dart';
import '../../../core/utils/currency_format.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/fees_provider.dart';

class ReceiptDetailScreen extends ConsumerWidget {
  const ReceiptDetailScreen({super.key, required this.studentId, required this.receiptId});

  final String studentId;
  final String receiptId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final receiptAsync = ref.watch(receiptDetailProvider((studentId: studentId, receiptId: receiptId)));

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      appBar: AppBar(title: const Text('Receipt')),
      body: receiptAsync.when(
        data: (receipt) => _ReceiptView(receipt: receipt),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => ErrorView(
          message: describeError(err),
          onRetry: () => ref.invalidate(receiptDetailProvider((studentId: studentId, receiptId: receiptId))),
        ),
      ),
    );
  }
}

class _ReceiptView extends StatelessWidget {
  const _ReceiptView({required this.receipt});

  final FeeReceipt receipt;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final dateFormat = DateFormat('d MMM yyyy');

    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: scheme.primaryContainer, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Text(receipt.receiptNo,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: scheme.onPrimaryContainer)),
              const SizedBox(height: 6),
              Text(dateFormat.format(receipt.receiptDate), style: TextStyle(color: scheme.onPrimaryContainer)),
              const SizedBox(height: 12),
              Text(
                formatCurrency(receipt.netAmount),
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: scheme.onPrimaryContainer),
              ),
              if (receipt.paymentMode != null || receipt.receiptStatus != null) ...[
                const SizedBox(height: 6),
                Text(
                  [receipt.paymentMode, receipt.receiptStatus].where((s) => s != null).join(' • '),
                  style: TextStyle(color: scheme.onPrimaryContainer.withValues(alpha: 0.75)),
                ),
              ],
            ],
          ),
        ),
        const SizedBox(height: 20),
        Text('Items', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        ...receipt.items.map((item) => Card(
              margin: const EdgeInsets.only(bottom: 8),
              child: ListTile(
                title: Text(item.feeHeadName),
                subtitle: item.remarks != null && item.remarks!.isNotEmpty ? Text(item.remarks!) : null,
                trailing: Text(formatCurrency(item.netAmount), style: const TextStyle(fontWeight: FontWeight.bold)),
              ),
            )),
        if (receipt.remarks != null && receipt.remarks!.isNotEmpty) ...[
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: scheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(receipt.remarks!, style: const TextStyle(fontStyle: FontStyle.italic)),
          ),
        ],
      ],
    );
  }
}
