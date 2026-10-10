import 'dart:async';

import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/accountant.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/accountant_providers.dart';
import '../services/accountant_service.dart';
import 'accountant_page_scaffold.dart';

/// Collect Fee, step 1 — find the student (GET /accountant/students,
/// admission no. / name, 50 rows max). Step 2 is [CollectFeeScreen].
class CollectFeeSearchScreen extends ConsumerStatefulWidget {
  const CollectFeeSearchScreen({super.key});

  @override
  ConsumerState<CollectFeeSearchScreen> createState() => _CollectFeeSearchScreenState();
}

class _CollectFeeSearchScreenState extends ConsumerState<CollectFeeSearchScreen> {
  final _controller = TextEditingController();
  Timer? _debounce;
  String _query = '';

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _onChanged(String v) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 350), () {
      if (mounted) setState(() => _query = v.trim());
    });
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return AccountantPageScaffold(
      title: 'Collect Fee',
      body: ResponsiveListView(
        children: [
          Text('Find the student paying today.', style: TextStyle(color: scheme.onSurfaceVariant)),
          const SizedBox(height: 12),
          AcctSearchField(controller: _controller, hint: 'Admission no. or student name', onChanged: _onChanged),
          const SizedBox(height: 16),
          if (_query.length < 2)
            const EmptyCard(icon: Icons.person_search_outlined, title: 'Search for a student', message: 'Type at least 2 characters.')
          else
            ref.watch(accountantStudentSearchProvider(_query)).when(
                  loading: () => const Padding(padding: EdgeInsets.all(24), child: Center(child: CircularProgressIndicator())),
                  error: (e, _) => EmptyCard(icon: Icons.error_outline, title: "Couldn't search", message: describeError(e)),
                  data: (rows) => rows.isEmpty
                      ? EmptyCard(icon: Icons.person_off_outlined, title: 'No student matches "$_query"')
                      : DividedCard(
                          children: [
                            for (final s in rows)
                              ListTile(
                                leading: CircleAvatar(child: Text(initialsOf(s.name), style: const TextStyle(fontSize: 13))),
                                title: Text(s.name),
                                subtitle: Text([s.admissionNo, s.classLabel, if (s.rollNo != null) 'Roll ${s.rollNo}']
                                    .whereType<String>()
                                    .join(' · ')),
                                trailing: s.studentStatus != null && s.studentStatus != 'ACTIVE'
                                    ? StatusBadge(label: humanizeEnum(s.studentStatus), variant: BadgeVariant.neutral)
                                    : const Icon(Icons.chevron_right),
                                onTap: () => context.push('/accountant/collect/${s.studentId}'),
                              ),
                          ],
                        ),
                ),
        ],
      ),
    );
  }
}

/// One editable line on the collection form — a pending fee item, or an
/// ad-hoc charge the accountant added (no fee_structure_id).
class _Line {
  _Line({required this.feeHeadName, required String amount, required String fine, this.item, this.feeStructureId})
      : amount = TextEditingController(text: amount),
        fine = TextEditingController(text: fine),
        discount = TextEditingController(text: '0');

  final String feeHeadName;
  final AcctPendingItem? item;
  final String? feeStructureId;
  final TextEditingController amount;
  final TextEditingController discount;
  final TextEditingController fine;
  bool selected = false;

  Decimal _d(TextEditingController c) => Decimal.tryParse(c.text.trim().isEmpty ? '0' : c.text.trim()) ?? Decimal.zero;
  Decimal get amountValue => _d(amount);
  Decimal get discountValue => _d(discount);
  Decimal get fineValue => _d(fine);
  Decimal get net => amountValue - discountValue + fineValue;

  /// Null when valid, else what's wrong.
  String? get error {
    for (final c in [amount, discount, fine]) {
      if (c.text.trim().isNotEmpty && Decimal.tryParse(c.text.trim()) == null) return 'Enter a valid number';
    }
    if (amountValue <= Decimal.zero) return 'Amount must be more than 0';
    if (discountValue > amountValue) return 'Discount is more than the amount';
    return null;
  }

  void dispose() {
    amount.dispose();
    discount.dispose();
    fine.dispose();
  }
}

/// Plain decimal text: `4000.00` -> `4000`, `12.5` stays.
String _plain(Decimal d) {
  final s = d.toStringAsFixed(2);
  return s.endsWith('.00') ? s.substring(0, s.length - 3) : s;
}

/// Collect Fee, step 2 — GET /accountant/students/:id/fee-summary, then
/// POST /accountant/receipts. Each due line is ticked to pay it; amount
/// defaults to what's still due and the fine to today's suggested late fee
/// (both editable). Totals here are a preview — the server computes the
/// receipt's own totals from the lines sent.
class CollectFeeScreen extends ConsumerStatefulWidget {
  const CollectFeeScreen({super.key, required this.studentId});

  final String studentId;

  @override
  ConsumerState<CollectFeeScreen> createState() => _CollectFeeScreenState();
}

class _CollectFeeScreenState extends ConsumerState<CollectFeeScreen> {
  List<_Line>? _lines;
  String _mode = feePaymentModes.first;
  final _remarks = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    for (final l in _lines ?? const <_Line>[]) {
      l.dispose();
    }
    _remarks.dispose();
    super.dispose();
  }

  void _initLines(FeeCollectionSummary s) {
    if (_lines != null) return;
    _lines = [
      for (final i in s.pendingItems.where((i) => i.netDue > Decimal.zero))
        _Line(
          feeHeadName: i.feeHeadName,
          amount: _plain(i.netDue),
          fine: _plain(i.suggestedFineAmount),
          item: i,
          feeStructureId: i.feeStructureId,
        ),
    ];
  }

  Iterable<_Line> get _selected => (_lines ?? const <_Line>[]).where((l) => l.selected);

  Decimal get _total => _selected.fold(Decimal.zero, (sum, l) => sum + l.net);

  Future<void> _addCharge() async {
    final line = await showAcctFormSheet<_Line>(context, (_) => const _AddChargeForm());
    if (line != null && mounted) setState(() => _lines!.add(line..selected = true));
  }

  Future<void> _collect(FeeCollectionSummary s) async {
    final lines = _selected.toList();
    if (lines.isEmpty) {
      setState(() => _error = 'Tick at least one fee to collect.');
      return;
    }
    final bad = lines.where((l) => l.error != null).firstOrNull;
    if (bad != null) {
      setState(() => _error = '${bad.feeHeadName}: ${bad.error}');
      return;
    }
    setState(() => _error = null);

    final total = _total;
    final ok = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Collect this payment?'),
        content: Text(
          '${formatAmount(total)} from ${s.student.name} by ${paymentModeLabel(_mode)} '
          'for ${lines.length} fee${lines.length == 1 ? '' : 's'}. A receipt will be issued.',
        ),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(false), child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.of(context).pop(true), child: const Text('Collect')),
        ],
      ),
    );
    if (ok != true || !mounted) return;

    setState(() => _busy = true);
    final result = await AccountantService().collectFee(
      studentId: s.student.studentId,
      paymentMode: _mode,
      remarks: _remarks.text,
      lines: [
        for (final l in lines)
          CollectLine(
            feeHeadName: l.feeHeadName,
            amount: l.amountValue.toString(),
            discount: l.discountValue.toString(),
            fine: l.fineValue.toString(),
            feeStructureId: l.feeStructureId,
          ),
      ],
    );
    if (!mounted) return;
    switch (result) {
      case Ok(:final value):
        invalidateFeeData(ref);
        showSnack(context, 'Collected ${formatAmount(value.netAmount)} · ${value.receiptNo}');
        context.pushReplacement('/accountant/receipts/${value.receiptId}');
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failure.userMessage;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final value = ref.watch(feeCollectionSummaryProvider(widget.studentId));
    return AccountantPageScaffold(
      title: 'Collect Fee',
      body: AsyncValueView<FeeCollectionSummary>(
        value: value,
        onRetry: () => ref.invalidate(feeCollectionSummaryProvider(widget.studentId)),
        data: (s) {
          _initLines(s);
          final scheme = Theme.of(context).colorScheme;
          return ResponsiveListView(
            children: [
              _StudentHeader(summary: s),
              const SizedBox(height: 16),
              SectionLabel(
                'Fees to collect',
                trailing: TextButton.icon(
                  onPressed: _busy ? null : _addCharge,
                  icon: const Icon(Icons.add, size: 18),
                  label: const Text('Other charge'),
                ),
              ),
              if (_lines!.isEmpty)
                const EmptyCard(
                  icon: Icons.check_circle_outline,
                  title: 'No dues',
                  message: 'Everything is paid. Use "Other charge" to record a one-off payment.',
                )
              else
                DividedCard(
                  children: [
                    for (final l in _lines!)
                      _LineTile(line: l, enabled: !_busy, onChanged: () => setState(() {})),
                  ],
                ),
              const SizedBox(height: 16),
              const Text('Payment mode', style: TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final m in feePaymentModes)
                    ChoiceChip(
                      label: Text(paymentModeLabel(m)),
                      selected: _mode == m,
                      onSelected: _busy ? null : (_) => setState(() => _mode = m),
                    ),
                ],
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _remarks,
                enabled: !_busy,
                decoration: const InputDecoration(labelText: 'Remarks (optional)', hintText: 'e.g. cheque no., UPI ref'),
              ),
              FormError(_error),
              const SizedBox(height: 16),
              Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                color: scheme.primaryContainer.withValues(alpha: 0.5),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      HeaderBar(
                        children: [
                          Text('${_selected.length} selected', style: TextStyle(color: scheme.onSurfaceVariant)),
                          Text(formatAmount(_total), style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
                        ],
                      ),
                      const SizedBox(height: 12),
                      FilledButton.icon(
                        onPressed: _busy || _selected.isEmpty ? null : () => _collect(s),
                        icon: _busy
                            ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
                            : const Icon(Icons.point_of_sale_outlined),
                        label: Text(_selected.isEmpty ? 'Select fees to collect' : 'Collect ${formatAmount(_total)}'),
                      ),
                    ],
                  ),
                ),
              ),
              if (s.previousPayments.isNotEmpty) ...[
                const SizedBox(height: 20),
                const SectionLabel('Recent receipts'),
                DividedCard(
                  children: [
                    for (final r in s.previousPayments.take(5))
                      ListTile(
                        title: Text(r.receiptNo),
                        subtitle: Text('${formatDate(r.receiptDate)} · ${paymentModeLabel(r.paymentMode)}'),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(formatAmount(r.netAmount), style: const TextStyle(fontWeight: FontWeight.w600)),
                            if (!r.isPaid) receiptStatusBadge(r.receiptStatus),
                          ],
                        ),
                        onTap: () => context.push('/accountant/receipts/${r.receiptId}'),
                      ),
                  ],
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}

class _StudentHeader extends StatelessWidget {
  const _StudentHeader({required this.summary});

  final FeeCollectionSummary summary;

  @override
  Widget build(BuildContext context) {
    final s = summary.student;
    final scheme = Theme.of(context).colorScheme;
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(radius: 24, child: Text(initialsOf(s.name))),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(s.name, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
                    Text(
                      [s.admissionNo, s.classLabel, if (s.rollNo != null) 'Roll ${s.rollNo}'].whereType<String>().join(' · '),
                      style: TextStyle(color: scheme.onSurfaceVariant),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          HeaderBar(
            children: [
              Text('Total due', style: TextStyle(color: scheme.onSurfaceVariant)),
              Text(
                formatAmount(summary.totalDue),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: summary.totalDue > Decimal.zero ? AppColors.danger : AppColors.success,
                ),
              ),
            ],
          ),
          if (summary.feeCategory?.categoryName != null || summary.scholarships.isNotEmpty) ...[
            const SizedBox(height: 8),
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                if (summary.feeCategory?.categoryName != null)
                  StatusBadge(label: summary.feeCategory!.categoryName!, variant: BadgeVariant.info),
                for (final sc in summary.scholarships)
                  StatusBadge(
                    label: [
                      sc.concession?.name ?? 'Concession',
                      if (sc.concession != null)
                        sc.concession!.calculationType == 'PERCENTAGE'
                            ? '${_plain(sc.concession!.value)}%'
                            : formatAmount(sc.concession!.value),
                    ].join(' · '),
                    variant: BadgeVariant.violet,
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class _LineTile extends StatelessWidget {
  const _LineTile({required this.line, required this.enabled, required this.onChanged});

  final _Line line;
  final bool enabled;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final i = line.item;
    final money = [FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}'))];
    InputDecoration deco(String label) =>
        InputDecoration(labelText: label, isDense: true, prefixText: '₹ ', border: const OutlineInputBorder());
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 8, 12, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CheckboxListTile(
            value: line.selected,
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: enabled
                ? (v) {
                    line.selected = v ?? false;
                    onChanged();
                  }
                : null,
            title: Text(line.feeHeadName, style: const TextStyle(fontWeight: FontWeight.w600)),
            subtitle: Text(
              i == null
                  ? 'Other charge'
                  : [
                      'Due ${formatAmount(i.netDue)}',
                      if (i.dueDate != null) 'by ${formatDate(i.dueDate)}',
                      if (i.paidAmount > Decimal.zero) 'paid ${formatAmount(i.paidAmount)}',
                    ].join(' · '),
              style: TextStyle(color: scheme.onSurfaceVariant),
            ),
            secondary: i == null
                ? null
                : switch (i.status) {
                    'OVERDUE' => const StatusBadge(label: 'Overdue', variant: BadgeVariant.danger),
                    'PARTIALLY_PAID' => const StatusBadge(label: 'Partly paid', variant: BadgeVariant.warning),
                    _ => const StatusBadge(label: 'Due', variant: BadgeVariant.primary),
                  },
          ),
          if (line.selected) ...[
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  SizedBox(
                    width: 130,
                    child: TextField(
                      controller: line.amount,
                      enabled: enabled,
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: money,
                      onChanged: (_) => onChanged(),
                      decoration: deco('Amount'),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    child: TextField(
                      controller: line.discount,
                      enabled: enabled,
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: money,
                      onChanged: (_) => onChanged(),
                      decoration: deco('Discount'),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    child: TextField(
                      controller: line.fine,
                      enabled: enabled,
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: money,
                      onChanged: (_) => onChanged(),
                      decoration: deco('Late fee'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                line.error ?? 'Line total ${formatAmount(line.net)}',
                style: TextStyle(color: line.error != null ? scheme.error : scheme.onSurfaceVariant, fontSize: 13),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _AddChargeForm extends StatefulWidget {
  const _AddChargeForm();

  @override
  State<_AddChargeForm> createState() => _AddChargeFormState();
}

class _AddChargeFormState extends State<_AddChargeForm> {
  final _name = TextEditingController();
  final _amount = TextEditingController();
  String? _error;

  @override
  void dispose() {
    _name.dispose();
    _amount.dispose();
    super.dispose();
  }

  void _add() {
    final amount = Decimal.tryParse(_amount.text.trim());
    if (_name.text.trim().isEmpty || amount == null || amount <= Decimal.zero) {
      setState(() => _error = 'Enter what the charge is for and an amount above 0.');
      return;
    }
    Navigator.of(context).pop(_Line(feeHeadName: _name.text.trim(), amount: _plain(amount), fine: '0'));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Add other charge', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        const SizedBox(height: 4),
        Text('For a one-off payment that isn\'t in the fee structure.',
            style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant)),
        const SizedBox(height: 16),
        TextField(
          controller: _name,
          autofocus: true,
          textCapitalization: TextCapitalization.words,
          decoration: const InputDecoration(labelText: 'Charge for', hintText: 'e.g. ID card replacement'),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _amount,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}'))],
          decoration: const InputDecoration(labelText: 'Amount', prefixText: '₹ '),
        ),
        FormError(_error),
        const SizedBox(height: 16),
        SheetActions(busy: false, onSubmit: _add, submitLabel: 'Add'),
      ],
    );
  }
}
