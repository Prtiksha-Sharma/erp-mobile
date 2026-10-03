import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/fee_summary.dart';
import '../../../core/utils/currency_format.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/children_provider.dart' show activeChildProvider;
import '../providers/fee_plan_provider.dart';
import '../providers/fees_provider.dart';
import '../services/fee_plan_service.dart';
import '../services/payments_service.dart';
import '../utils/launch_payment.dart';
import 'parent_page_scaffold.dart';

const _frequencies = ['MONTHLY', 'QUARTERLY', 'HALF_YEARLY', 'YEARLY'];

String _frequencyLabel(String f) => switch (f) {
      'MONTHLY' => 'Monthly',
      'QUARTERLY' => 'Quarterly',
      'HALF_YEARLY' => 'Half-Yearly',
      'YEARLY' => 'Yearly',
      _ => f,
    };

/// Lets a parent spread one pending fee head's due across installments
/// (POST .../fee-plan) and pay off individual installments of an existing
/// plan (POST .../fees/pay-installment) — the two endpoints
/// utils/feeInstallments.js exposes beyond the plain "pay everything now"
/// path on ParentFeesScreen itself.
class FeePlanScreen extends ConsumerWidget {
  const FeePlanScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeChild = ref.watch(activeChildProvider);

    if (activeChild == null) {
      return const ParentPageScaffold(
        title: 'Fee Payment Plans',
        body: Center(child: Text('Select a child from Home first.')),
      );
    }

    final studentId = activeChild.studentId;
    final plansAsync = ref.watch(feePlansProvider(studentId));
    final summaryAsync = ref.watch(feeSummaryProvider(studentId));

    return ParentPageScaffold(
      title: 'Fee Payment Plans',
      body: plansAsync.when(
        data: (plans) => summaryAsync.when(
          data: (summary) => _FeePlanBody(
            studentId: studentId,
            plans: plans,
            pendingItems: summary.pendingItems,
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, _) => ErrorView(
            message: describeError(err),
            onRetry: () => ref.invalidate(feeSummaryProvider(studentId)),
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => ErrorView(
          message: describeError(err),
          onRetry: () => ref.invalidate(feePlansProvider(studentId)),
        ),
      ),
    );
  }
}

class _FeePlanBody extends ConsumerStatefulWidget {
  const _FeePlanBody({required this.studentId, required this.plans, required this.pendingItems});

  final String studentId;
  final List<FeePlanEntry> plans;
  final List<PendingFeeItem> pendingItems;

  @override
  ConsumerState<_FeePlanBody> createState() => _FeePlanBodyState();
}

class _FeePlanBodyState extends ConsumerState<_FeePlanBody> {
  String? _selectedFeeHeadId;
  String _frequency = _frequencies.first;
  bool _isSubmitting = false;
  Failure? _error;

  List<PendingFeeItem> get _unplannedItems {
    final plannedNames = widget.plans.map((p) => p.feeHeadName).toSet();
    return widget.pendingItems
        .where((i) => !plannedNames.contains(i.feeHeadName) && i.netDue > Decimal.zero)
        .toList();
  }

  Future<void> _createPlan() async {
    final feeHeadId = _selectedFeeHeadId;
    if (feeHeadId == null) return;

    setState(() {
      _isSubmitting = true;
      _error = null;
    });

    final result = await FeePlanService().selectFeePlan(
      widget.studentId,
      feeHeadId: feeHeadId,
      frequency: _frequency,
    );

    if (!mounted) return;

    switch (result) {
      case Ok():
        ref.invalidate(feePlansProvider(widget.studentId));
        setState(() {
          _isSubmitting = false;
          _selectedFeeHeadId = null;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Payment plan created.')),
        );
      case Err(:final failure):
        setState(() {
          _isSubmitting = false;
          _error = failure;
        });
    }
  }

  Future<void> _payInstallment(FeeInstallment installment) async {
    final result = await PaymentsService().payInstallment(widget.studentId, installment.installmentId);
    if (!mounted) return;

    switch (result) {
      case Ok(:final value):
        await launchPayment(context, studentId: widget.studentId, initiation: value);
      case Err(:final failure):
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(failure.userMessage)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('d MMM yyyy');
    final unplanned = _unplannedItems;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        if (widget.plans.isNotEmpty) ...[
          Text('Active Plans', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          ...widget.plans.map((plan) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: _PlanCard(plan: plan, dateFormat: dateFormat, onPay: _payInstallment),
              )),
          const SizedBox(height: 12),
        ],
        Text('Start a New Plan', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        if (unplanned.isEmpty)
          const Text('Every pending fee already has a payment plan, or nothing is due.')
        else
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                DropdownButtonFormField<String>(
                  initialValue: _selectedFeeHeadId,
                  decoration: const InputDecoration(labelText: 'Fee'),
                  items: unplanned
                      .map((i) => DropdownMenuItem(value: i.feeHeadId, child: Text(i.feeHeadName)))
                      .toList(),
                  onChanged: (v) => setState(() => _selectedFeeHeadId = v),
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<String>(
                  initialValue: _frequency,
                  decoration: const InputDecoration(labelText: 'Frequency'),
                  items: _frequencies
                      .map((f) => DropdownMenuItem(value: f, child: Text(_frequencyLabel(f))))
                      .toList(),
                  onChanged: (v) => setState(() => _frequency = v ?? _frequency),
                ),
                if (_error != null) ...[
                  const SizedBox(height: 12),
                  Text(_error!.userMessage, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                ],
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: (_selectedFeeHeadId == null || _isSubmitting) ? null : _createPlan,
                    child: _isSubmitting
                        ? const SizedBox(
                            height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2))
                        : const Text('Create Plan'),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class _PlanCard extends StatelessWidget {
  const _PlanCard({required this.plan, required this.dateFormat, required this.onPay});

  final FeePlanEntry plan;
  final DateFormat dateFormat;
  final void Function(FeeInstallment) onPay;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 6, offset: const Offset(0, 2))],
      ),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(plan.feeHeadName, style: const TextStyle(fontWeight: FontWeight.bold)),
              ),
              Text(_frequencyLabel(plan.plan.frequency), style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          const Divider(height: 20),
          ...plan.installments.map(
            (inst) => _InstallmentTile(installment: inst, dateFormat: dateFormat, onPay: () => onPay(inst)),
          ),
        ],
      ),
    );
  }
}

class _InstallmentTile extends StatelessWidget {
  const _InstallmentTile({required this.installment, required this.dateFormat, required this.onPay});

  final FeeInstallment installment;
  final DateFormat dateFormat;
  final VoidCallback onPay;

  @override
  Widget build(BuildContext context) {
    final canPay = installment.balance > Decimal.zero;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(installment.periodLabel),
                Text(
                  'Due ${dateFormat.format(installment.dueDate)} • ${installment.status.label}',
                  style: TextStyle(fontSize: 11, color: installment.status.color),
                ),
              ],
            ),
          ),
          Text(formatCurrency(installment.balance), style: const TextStyle(fontWeight: FontWeight.bold)),
          if (canPay) ...[
            const SizedBox(width: 4),
            TextButton(onPressed: onPay, child: const Text('Pay')),
          ],
        ],
      ),
    );
  }
}
