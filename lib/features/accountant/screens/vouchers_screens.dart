import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/accountant.dart' show feePaymentModes;
import '../../../core/models/accounting_entries.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/info_field.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../providers/accounting_entries_providers.dart';
import '../services/accountant_service.dart' show apiDay;
import '../services/accounting_entries_service.dart';
import 'accountant_page_scaffold.dart';
import 'accounting_entry_widgets.dart';
import 'accounting_widgets.dart';
import 'journal_entries_screens.dart' show EntryRow;

Widget _cell(String label, String? value, {bool wide = false}) =>
    SizedBox(width: wide ? 320 : 150, child: InfoField(label: label, value: value));

String _acct(dynamic a) => a == null ? '—' : '${a.accountCode} · ${a.accountName}';

/// Shared scaffold for a voucher list: period chip, optional filter chips,
/// count, rows, and a "New" FAB.
class _VoucherList extends StatelessWidget {
  const _VoucherList({
    required this.title,
    required this.range,
    required this.onRange,
    required this.newLabel,
    required this.onNew,
    required this.body,
    this.filters,
  });

  final String title;
  final DateTimeRange range;
  final ValueChanged<DateTimeRange> onRange;
  final String newLabel;
  final VoidCallback onNew;
  final Widget body;
  final Widget? filters;

  @override
  Widget build(BuildContext context) {
    return AccountantPageScaffold(
      title: title,
      floatingActionButton: FloatingActionButton.extended(onPressed: onNew, icon: const Icon(Icons.add), label: Text(newLabel)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(alignment: Alignment.centerLeft, child: PeriodChip(range: range, onChanged: onRange)),
                if (filters != null) ...[const SizedBox(height: 8), filters!],
              ],
            ),
          ),
          Expanded(child: body),
        ],
      ),
    );
  }
}

Widget _rows(BuildContext context, int count, List<Widget> rows, String empty) => ResponsiveListView(
      children: [
        SectionLabel('$count record${count == 1 ? '' : 's'}'),
        if (rows.isEmpty) EmptyCard(icon: Icons.receipt_long_outlined, title: empty) else DividedCard(children: rows),
        const SizedBox(height: 72),
      ],
    );

ListTile _voucherTile(BuildContext context, {
  required String no,
  required String party,
  required DateTime? date,
  required Decimal amount,
  required String path,
  String? status,
  String? extra,
}) =>
    ListTile(
      onTap: () => context.push(path),
      title: Text(party.isEmpty ? no : party, overflow: TextOverflow.ellipsis),
      subtitle: Text([no, formatDate(date), ?extra].join(' · ')),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(formatAmount(amount), style: const TextStyle(fontWeight: FontWeight.w700)),
          if (status != null) entryStatusBadge(status),
        ],
      ),
    );

// ═══ Contra entries ══════════════════════════════════════════════════════

/// Contra — transfers between the school's own cash / bank accounts
/// (deposit cash, withdraw cash, bank-to-bank). Posted immediately; the
/// backend has no cancel for these.
class ContraEntriesScreen extends ConsumerStatefulWidget {
  const ContraEntriesScreen({super.key});

  @override
  ConsumerState<ContraEntriesScreen> createState() => _ContraEntriesScreenState();
}

class _ContraEntriesScreenState extends ConsumerState<ContraEntriesScreen> {
  DateTimeRange _range = financialYearToDate();

  @override
  Widget build(BuildContext context) {
    final key = periodKey(_range);
    return _VoucherList(
      title: 'Contra Entries',
      range: _range,
      onRange: (r) => setState(() => _range = r),
      newLabel: 'New transfer',
      onNew: () async {
        final saved = await showAcctFormSheet<bool>(context, (_) => const _ContraForm());
        if (saved == true && context.mounted) {
          invalidateBooks(ref);
          showSnack(context, 'Transfer posted');
        }
      },
      body: AsyncValueView<List<JournalEntry>>(
        value: ref.watch(contraEntriesProvider(key)),
        onRetry: () => ref.invalidate(contraEntriesProvider(key)),
        data: (rows) => _rows(
          context,
          rows.length,
          [for (final e in rows) EntryRow(entry: e, path: '/accountant/journal-entries/${e.entryId}')],
          'No transfers in this period',
        ),
      ),
    );
  }
}

class _ContraForm extends StatefulWidget {
  const _ContraForm();

  @override
  State<_ContraForm> createState() => _ContraFormState();
}

class _ContraFormState extends State<_ContraForm> {
  DateTime _date = today();
  String? _from;
  String? _to;
  final _amount = TextEditingController();
  final _narration = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _amount.dispose();
    _narration.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final amount = positiveMoney(_amount);
    if (_from == null || _to == null || amount == null) return setState(() => _error = 'Pick both accounts and enter an amount.');
    if (_from == _to) return setState(() => _error = 'From and To must be different accounts.');
    setState(() {
      _busy = true;
      _error = null;
    });
    final r = await AccountingEntriesService()
        .createContraEntry(date: _date, fromAccountId: _from!, toAccountId: _to!, amount: amount, narration: _narration.text);
    if (!mounted) return;
    switch (r) {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('New transfer (contra)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        const SizedBox(height: 4),
        Text('Move money between the school\'s own cash and bank accounts. Posted immediately.',
            style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant)),
        const SizedBox(height: 16),
        EntryDateField(date: _date, enabled: !_busy, onChanged: (d) => setState(() => _date = d)),
        const SizedBox(height: 12),
        AccountPicker(label: 'From (money leaves)', value: _from, where: isCashOrBank, enabled: !_busy, onChanged: (v) => setState(() => _from = v)),
        const SizedBox(height: 12),
        AccountPicker(label: 'To (money arrives)', value: _to, where: isCashOrBank, enabled: !_busy, onChanged: (v) => setState(() => _to = v)),
        const SizedBox(height: 12),
        MoneyField(controller: _amount, label: 'Amount', enabled: !_busy),
        const SizedBox(height: 12),
        TextField(controller: _narration, enabled: !_busy, decoration: const InputDecoration(labelText: 'Narration (optional)', hintText: 'e.g. Cash deposited into bank')),
        FormError(_error),
        const SizedBox(height: 16),
        SheetActions(busy: _busy, onSubmit: _save, submitLabel: 'Post transfer'),
      ],
    );
  }
}

// ═══ Payment vouchers ════════════════════════════════════════════════════

/// Payment vouchers — money paid out of cash / bank against an expense (or
/// payable) account, with optional GST / TDS. Cancelling posts a reversal.
class PaymentVouchersScreen extends ConsumerStatefulWidget {
  const PaymentVouchersScreen({super.key});

  @override
  ConsumerState<PaymentVouchersScreen> createState() => _PaymentVouchersScreenState();
}

class _PaymentVouchersScreenState extends ConsumerState<PaymentVouchersScreen> {
  DateTimeRange _range = financialYearToDate();
  String? _status;

  @override
  Widget build(BuildContext context) {
    final key = (from: apiDay(_range.start), to: apiDay(_range.end), filter: _status);
    return _VoucherList(
      title: 'Payment Vouchers',
      range: _range,
      onRange: (r) => setState(() => _range = r),
      newLabel: 'New payment',
      onNew: () => context.push('/accountant/payment-vouchers/new'),
      filters: Wrap(
        spacing: 8,
        children: [
          for (final s in const [null, 'ACTIVE', 'CANCELLED'])
            ChoiceChip(
              label: Text(s == null ? 'All' : (s == 'ACTIVE' ? 'Posted' : 'Cancelled')),
              selected: _status == s,
              onSelected: (_) => setState(() => _status = s),
            ),
        ],
      ),
      body: AsyncValueView<List<PaymentVoucher>>(
        value: ref.watch(paymentVouchersProvider(key)),
        onRetry: () => ref.invalidate(paymentVouchersProvider(key)),
        data: (rows) => _rows(
          context,
          rows.length,
          [
            for (final v in rows)
              _voucherTile(
                context,
                no: v.voucherNo,
                party: v.payeeName,
                date: v.entryDate,
                amount: v.amount,
                status: v.status,
                extra: v.expenseAccount?.accountName,
                path: '/accountant/payment-vouchers/${v.voucherId}',
              ),
          ],
          'No payment vouchers in this period',
        ),
      ),
    );
  }
}

class PaymentVoucherDetailScreen extends ConsumerWidget {
  const PaymentVoucherDetailScreen({super.key, required this.voucherId});

  final String voucherId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(paymentVoucherProvider(voucherId));
    return AccountantPageScaffold(
      title: 'Payment Voucher',
      body: AsyncValueView<PaymentVoucher>(
        value: value,
        onRetry: () => ref.invalidate(paymentVoucherProvider(voucherId)),
        data: (v) => ResponsiveListView(
          onRefresh: () => ref.refresh(paymentVoucherProvider(voucherId).future),
          children: [
            SectionCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderBar(children: [
                    Text(v.voucherNo, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                    entryStatusBadge(v.status),
                  ]),
                  const SizedBox(height: 8),
                  Text(formatAmount(v.amount), style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 12),
                  Wrap(runSpacing: 12, spacing: 24, children: [
                    _cell('Paid to', v.payeeName),
                    _cell('Payee type', humanizeEnum(v.payeeType)),
                    _cell('Date', formatDate(v.entryDate)),
                    _cell('Mode', v.paymentMode == null ? null : paymentModeLabel(v.paymentMode!)),
                    _cell('Expense account', _acct(v.expenseAccount), wide: true),
                    _cell('Paid from', _acct(v.paidFrom), wide: true),
                    if (v.chequeNo != null) _cell('Cheque no.', v.chequeNo),
                    if (v.utr != null) _cell('UTR', v.utr),
                    if (v.gstAmount != null) _cell('GST', formatAmount(v.gstAmount)),
                    if (v.tdsAmount != null) _cell('TDS ${v.tdsSection ?? ''}'.trim(), formatAmount(v.tdsAmount)),
                    if (v.cancelledAt != null) _cell('Cancelled on', formatDateTime(v.cancelledAt)),
                    _cell('Purpose', v.purpose, wide: true),
                  ]),
                ],
              ),
            ),
            if (v.entry != null) ...[const SizedBox(height: 12), JournalLinesCard(entry: v.entry!)],
            if (v.status != 'CANCELLED') ...[
              const SizedBox(height: 20),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(foregroundColor: Theme.of(context).colorScheme.error),
                onPressed: () => _cancel(context, ref, v),
                icon: const Icon(Icons.block),
                label: const Text('Cancel voucher'),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Future<void> _cancel(BuildContext context, WidgetRef ref, PaymentVoucher v) async {
    final ok = await showAcctConfirm(
      context,
      title: 'Cancel ${v.voucherNo}?',
      message: 'A reversing entry will be posted for ${formatAmount(v.amount)} to ${v.payeeName}. This can\'t be undone.',
      confirmLabel: 'Cancel voucher',
      dangerous: true,
      action: () async => switch (await AccountingEntriesService().cancelPaymentVoucher(v.voucherId)) {
        Ok() => null,
        Err(:final failure) => failure.userMessage,
      },
    );
    if (ok && context.mounted) {
      invalidateBooks(ref);
      showSnack(context, '${v.voucherNo} cancelled');
    }
  }
}

/// New payment voucher — POST .../payment-vouchers (posted immediately).
class NewPaymentVoucherScreen extends ConsumerStatefulWidget {
  const NewPaymentVoucherScreen({super.key});

  @override
  ConsumerState<NewPaymentVoucherScreen> createState() => _NewPaymentVoucherScreenState();
}

class _NewPaymentVoucherScreenState extends ConsumerState<NewPaymentVoucherScreen> {
  DateTime _date = today();
  String _payeeType = payeeTypes.first;
  String _mode = feePaymentModes.first;
  String? _expense;
  String? _paidFrom;
  final _payee = TextEditingController();
  final _amount = TextEditingController();
  final _purpose = TextEditingController();
  final _cheque = TextEditingController();
  final _utr = TextEditingController();
  final _gst = TextEditingController();
  final _tdsSection = TextEditingController();
  final _tds = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    for (final c in [_payee, _amount, _purpose, _cheque, _utr, _gst, _tdsSection, _tds]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _save() async {
    final amount = positiveMoney(_amount);
    if (_payee.text.trim().isEmpty || _expense == null || _paidFrom == null || amount == null) {
      return setState(() => _error = 'Enter who was paid, both accounts and an amount above 0.');
    }
    final Decimal? gst, tds;
    try {
      gst = optionalMoney(_gst);
      tds = optionalMoney(_tds);
    } on FormatException {
      return setState(() => _error = 'GST / TDS must be valid amounts.');
    }
    final ok = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Post this payment?'),
        content: Text('${formatAmount(amount)} to ${_payee.text.trim()} will be posted to the books now.'),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(false), child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.of(context).pop(true), child: const Text('Post')),
        ],
      ),
    );
    if (ok != true || !mounted) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    final r = await AccountingEntriesService().createPaymentVoucher(PaymentVoucherInput(
      date: _date,
      payeeType: _payeeType,
      payeeName: _payee.text,
      expenseAccountId: _expense!,
      paidFromAccountId: _paidFrom!,
      amount: amount,
      paymentMode: _mode,
      chequeNo: _cheque.text,
      utr: _utr.text,
      purpose: _purpose.text,
      gstAmount: gst,
      tdsSection: _tdsSection.text,
      tdsAmount: tds,
    ));
    if (!mounted) return;
    switch (r) {
      case Ok(:final value):
        invalidateBooks(ref);
        showSnack(context, 'Payment voucher posted');
        context.pushReplacement('/accountant/payment-vouchers/$value');
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failure.userMessage;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AccountantPageScaffold(
      title: 'New Payment Voucher',
      body: ResponsiveListView(
        children: [
          EntryDateField(date: _date, enabled: !_busy, onChanged: (d) => setState(() => _date = d)),
          const SizedBox(height: 12),
          const Text('Paid to', style: TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          ChoiceRow(options: payeeTypes, value: _payeeType, enabled: !_busy, onChanged: (v) => setState(() => _payeeType = v)),
          const SizedBox(height: 8),
          TextField(controller: _payee, enabled: !_busy, textCapitalization: TextCapitalization.words, decoration: const InputDecoration(labelText: 'Payee name')),
          const SizedBox(height: 12),
          AccountPicker(label: 'Expense / payable account', value: _expense, where: (a) => !isCashOrBank(a), enabled: !_busy, onChanged: (v) => setState(() => _expense = v)),
          const SizedBox(height: 12),
          AccountPicker(label: 'Paid from (cash / bank)', value: _paidFrom, where: isCashOrBank, enabled: !_busy, onChanged: (v) => setState(() => _paidFrom = v)),
          const SizedBox(height: 12),
          MoneyField(controller: _amount, label: 'Amount', enabled: !_busy),
          const SizedBox(height: 12),
          const Text('Payment mode', style: TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          ChoiceRow(options: feePaymentModes, value: _mode, label: paymentModeLabel, enabled: !_busy, onChanged: (v) => setState(() => _mode = v)),
          if (_mode == 'CHEQUE') ...[
            const SizedBox(height: 8),
            TextField(controller: _cheque, enabled: !_busy, decoration: const InputDecoration(labelText: 'Cheque no.')),
          ],
          if (_mode == 'UPI' || _mode == 'ONLINE') ...[
            const SizedBox(height: 8),
            TextField(controller: _utr, enabled: !_busy, decoration: const InputDecoration(labelText: 'UTR / reference')),
          ],
          const SizedBox(height: 12),
          TextField(controller: _purpose, enabled: !_busy, maxLines: 2, decoration: const InputDecoration(labelText: 'Purpose (optional)')),
          const SizedBox(height: 16),
          ExpansionTile(
            tilePadding: EdgeInsets.zero,
            title: const Text('GST / TDS (optional)'),
            children: [
              MoneyField(controller: _gst, label: 'GST amount', enabled: !_busy),
              const SizedBox(height: 8),
              TextField(controller: _tdsSection, enabled: !_busy, decoration: const InputDecoration(labelText: 'TDS section', hintText: 'e.g. 194C')),
              const SizedBox(height: 8),
              MoneyField(controller: _tds, label: 'TDS amount', enabled: !_busy),
              const SizedBox(height: 8),
            ],
          ),
          FormError(_error),
          const SizedBox(height: 16),
          FilledButton.icon(
            onPressed: _busy ? null : _save,
            icon: _busy ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2)) : const Icon(Icons.publish_outlined),
            label: const Text('Post payment'),
          ),
        ],
      ),
    );
  }
}

// ═══ Receipt vouchers ════════════════════════════════════════════════════

/// Receipt vouchers — non-fee money received (donations, grants, misc
/// income) into cash / bank. Posted immediately; no cancel on the backend.
class ReceiptVouchersScreen extends ConsumerStatefulWidget {
  const ReceiptVouchersScreen({super.key});

  @override
  ConsumerState<ReceiptVouchersScreen> createState() => _ReceiptVouchersScreenState();
}

class _ReceiptVouchersScreenState extends ConsumerState<ReceiptVouchersScreen> {
  DateTimeRange _range = financialYearToDate();

  @override
  Widget build(BuildContext context) {
    final key = periodKey(_range);
    return _VoucherList(
      title: 'Receipt Vouchers',
      range: _range,
      onRange: (r) => setState(() => _range = r),
      newLabel: 'New receipt',
      onNew: () => context.push('/accountant/receipt-vouchers/new'),
      body: AsyncValueView<List<ReceiptVoucher>>(
        value: ref.watch(receiptVouchersProvider(key)),
        onRetry: () => ref.invalidate(receiptVouchersProvider(key)),
        data: (rows) => _rows(
          context,
          rows.length,
          [
            for (final v in rows)
              _voucherTile(
                context,
                no: v.voucherNo,
                party: v.payerName,
                date: v.entryDate,
                amount: v.amount,
                extra: v.incomeAccount?.accountName,
                path: '/accountant/receipt-vouchers/${v.voucherId}',
              ),
          ],
          'No receipt vouchers in this period',
        ),
      ),
    );
  }
}

class ReceiptVoucherDetailScreen extends ConsumerWidget {
  const ReceiptVoucherDetailScreen({super.key, required this.voucherId});

  final String voucherId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(receiptVoucherProvider(voucherId));
    return AccountantPageScaffold(
      title: 'Receipt Voucher',
      body: AsyncValueView<ReceiptVoucher>(
        value: value,
        onRetry: () => ref.invalidate(receiptVoucherProvider(voucherId)),
        data: (v) => ResponsiveListView(
          onRefresh: () => ref.refresh(receiptVoucherProvider(voucherId).future),
          children: [
            SectionCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(v.voucherNo, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 8),
                  Text(formatAmount(v.amount), style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 12),
                  Wrap(runSpacing: 12, spacing: 24, children: [
                    _cell('Received from', v.payerName),
                    _cell('Payer type', humanizeEnum(v.payerType)),
                    _cell('Date', formatDate(v.entryDate)),
                    _cell('Mode', v.paymentMode == null ? null : paymentModeLabel(v.paymentMode!)),
                    _cell('Received in', _acct(v.receivedIn), wide: true),
                    _cell('Income account', _acct(v.incomeAccount), wide: true),
                    if (v.chequeNo != null) _cell('Cheque no.', v.chequeNo),
                    if (v.utr != null) _cell('UTR', v.utr),
                    if (v.gstAmount != null) _cell('GST', formatAmount(v.gstAmount)),
                    _cell('Description', v.sourceDescription, wide: true),
                  ]),
                ],
              ),
            ),
            if (v.entry != null) ...[const SizedBox(height: 12), JournalLinesCard(entry: v.entry!)],
          ],
        ),
      ),
    );
  }
}

class NewReceiptVoucherScreen extends ConsumerStatefulWidget {
  const NewReceiptVoucherScreen({super.key});

  @override
  ConsumerState<NewReceiptVoucherScreen> createState() => _NewReceiptVoucherScreenState();
}

class _NewReceiptVoucherScreenState extends ConsumerState<NewReceiptVoucherScreen> {
  DateTime _date = today();
  String _payerType = payerTypes.first;
  String _mode = feePaymentModes.first;
  String? _receivedIn;
  String? _income;
  final _payer = TextEditingController();
  final _amount = TextEditingController();
  final _description = TextEditingController();
  final _cheque = TextEditingController();
  final _utr = TextEditingController();
  final _gst = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    for (final c in [_payer, _amount, _description, _cheque, _utr, _gst]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _save() async {
    final amount = positiveMoney(_amount);
    if (_payer.text.trim().isEmpty || _receivedIn == null || _income == null || amount == null) {
      return setState(() => _error = 'Enter who paid, both accounts and an amount above 0.');
    }
    final Decimal? gst;
    try {
      gst = optionalMoney(_gst);
    } on FormatException {
      return setState(() => _error = 'GST must be a valid amount.');
    }
    final ok = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Post this receipt?'),
        content: Text('${formatAmount(amount)} from ${_payer.text.trim()} will be posted to the books now.'),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(false), child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.of(context).pop(true), child: const Text('Post')),
        ],
      ),
    );
    if (ok != true || !mounted) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    final r = await AccountingEntriesService().createReceiptVoucher(ReceiptVoucherInput(
      date: _date,
      payerType: _payerType,
      payerName: _payer.text,
      receivedInAccountId: _receivedIn!,
      incomeAccountId: _income!,
      amount: amount,
      paymentMode: _mode,
      chequeNo: _cheque.text,
      utr: _utr.text,
      description: _description.text,
      gstAmount: gst,
    ));
    if (!mounted) return;
    switch (r) {
      case Ok(:final value):
        invalidateBooks(ref);
        showSnack(context, 'Receipt voucher posted');
        context.pushReplacement('/accountant/receipt-vouchers/$value');
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failure.userMessage;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AccountantPageScaffold(
      title: 'New Receipt Voucher',
      body: ResponsiveListView(
        children: [
          EntryDateField(date: _date, enabled: !_busy, onChanged: (d) => setState(() => _date = d)),
          const SizedBox(height: 12),
          const Text('Received from', style: TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          ChoiceRow(options: payerTypes, value: _payerType, enabled: !_busy, onChanged: (v) => setState(() => _payerType = v)),
          const SizedBox(height: 8),
          TextField(controller: _payer, enabled: !_busy, textCapitalization: TextCapitalization.words, decoration: const InputDecoration(labelText: 'Payer name')),
          const SizedBox(height: 12),
          AccountPicker(label: 'Received in (cash / bank)', value: _receivedIn, where: isCashOrBank, enabled: !_busy, onChanged: (v) => setState(() => _receivedIn = v)),
          const SizedBox(height: 12),
          AccountPicker(label: 'Income account', value: _income, where: (a) => !isCashOrBank(a), enabled: !_busy, onChanged: (v) => setState(() => _income = v)),
          const SizedBox(height: 12),
          MoneyField(controller: _amount, label: 'Amount', enabled: !_busy),
          const SizedBox(height: 12),
          const Text('Payment mode', style: TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          ChoiceRow(options: feePaymentModes, value: _mode, label: paymentModeLabel, enabled: !_busy, onChanged: (v) => setState(() => _mode = v)),
          if (_mode == 'CHEQUE') ...[
            const SizedBox(height: 8),
            TextField(controller: _cheque, enabled: !_busy, decoration: const InputDecoration(labelText: 'Cheque no.')),
          ],
          if (_mode == 'UPI' || _mode == 'ONLINE') ...[
            const SizedBox(height: 8),
            TextField(controller: _utr, enabled: !_busy, decoration: const InputDecoration(labelText: 'UTR / reference')),
          ],
          const SizedBox(height: 12),
          TextField(controller: _description, enabled: !_busy, maxLines: 2, decoration: const InputDecoration(labelText: 'Description (optional)')),
          const SizedBox(height: 12),
          MoneyField(controller: _gst, label: 'GST amount (optional)', enabled: !_busy),
          FormError(_error),
          const SizedBox(height: 16),
          FilledButton.icon(
            onPressed: _busy ? null : _save,
            icon: _busy ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2)) : const Icon(Icons.publish_outlined),
            label: const Text('Post receipt'),
          ),
        ],
      ),
    );
  }
}

// ═══ Debit / credit notes ════════════════════════════════════════════════

/// Debit / credit notes — corrections (overcharges, refunds, write-offs)
/// posted as a two-line entry. Posted immediately; no cancel on the backend.
class NotesScreen extends ConsumerStatefulWidget {
  const NotesScreen({super.key});

  @override
  ConsumerState<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends ConsumerState<NotesScreen> {
  DateTimeRange _range = financialYearToDate();
  String? _type;

  @override
  Widget build(BuildContext context) {
    final key = (from: apiDay(_range.start), to: apiDay(_range.end), filter: _type);
    return _VoucherList(
      title: 'Debit / Credit Notes',
      range: _range,
      onRange: (r) => setState(() => _range = r),
      newLabel: 'New note',
      onNew: () => context.push('/accountant/notes/new'),
      filters: Wrap(
        spacing: 8,
        children: [
          for (final t in const [null, 'DEBIT', 'CREDIT'])
            ChoiceChip(
              label: Text(t == null ? 'All' : '${humanizeEnum(t)} notes'),
              selected: _type == t,
              onSelected: (_) => setState(() => _type = t),
            ),
        ],
      ),
      body: AsyncValueView<List<DebitCreditNote>>(
        value: ref.watch(notesProvider(key)),
        onRetry: () => ref.invalidate(notesProvider(key)),
        data: (rows) => _rows(
          context,
          rows.length,
          [
            for (final n in rows)
              _voucherTile(
                context,
                no: n.noteNo,
                party: n.partyName,
                date: n.entryDate,
                amount: n.amount,
                extra: '${humanizeEnum(n.noteType)} note',
                path: '/accountant/notes/${n.noteId}',
              ),
          ],
          'No notes in this period',
        ),
      ),
    );
  }
}

class NoteDetailScreen extends ConsumerWidget {
  const NoteDetailScreen({super.key, required this.noteId});

  final String noteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(noteProvider(noteId));
    return AccountantPageScaffold(
      title: 'Debit / Credit Note',
      body: AsyncValueView<DebitCreditNote>(
        value: value,
        onRetry: () => ref.invalidate(noteProvider(noteId)),
        data: (n) => ResponsiveListView(
          onRefresh: () => ref.refresh(noteProvider(noteId).future),
          children: [
            SectionCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderBar(children: [
                    Text(n.noteNo, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                    Text('${humanizeEnum(n.noteType)} note', style: const TextStyle(fontWeight: FontWeight.w600)),
                  ]),
                  const SizedBox(height: 8),
                  Text(formatAmount(n.amount), style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 12),
                  Wrap(runSpacing: 12, spacing: 24, children: [
                    _cell('Party', n.partyName),
                    _cell('Party type', humanizeEnum(n.partyType)),
                    _cell('Date', formatDate(n.entryDate)),
                    if (n.partyReference != null) _cell('Reference', n.partyReference),
                    _cell('Debit account', _acct(n.debitAccount), wide: true),
                    _cell('Credit account', _acct(n.creditAccount), wide: true),
                    if (n.gstAmount != null) _cell('GST', formatAmount(n.gstAmount)),
                    _cell('Reason', n.reason, wide: true),
                  ]),
                ],
              ),
            ),
            if (n.entry != null) ...[const SizedBox(height: 12), JournalLinesCard(entry: n.entry!)],
          ],
        ),
      ),
    );
  }
}

class NewNoteScreen extends ConsumerStatefulWidget {
  const NewNoteScreen({super.key});

  @override
  ConsumerState<NewNoteScreen> createState() => _NewNoteScreenState();
}

class _NewNoteScreenState extends ConsumerState<NewNoteScreen> {
  DateTime _date = today();
  String _noteType = 'DEBIT';
  String _partyType = notePartyTypes.first;
  String? _debit;
  String? _credit;
  final _party = TextEditingController();
  final _reference = TextEditingController();
  final _amount = TextEditingController();
  final _reason = TextEditingController();
  final _gst = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    for (final c in [_party, _reference, _amount, _reason, _gst]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _save() async {
    final amount = positiveMoney(_amount);
    if (_party.text.trim().isEmpty || _debit == null || _credit == null || amount == null) {
      return setState(() => _error = 'Enter the party, both accounts and an amount above 0.');
    }
    if (_debit == _credit) return setState(() => _error = 'Debit and credit accounts must be different.');
    final Decimal? gst;
    try {
      gst = optionalMoney(_gst);
    } on FormatException {
      return setState(() => _error = 'GST must be a valid amount.');
    }
    final ok = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Post this ${_noteType.toLowerCase()} note?'),
        content: Text('${formatAmount(amount)} for ${_party.text.trim()} will be posted to the books now.'),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(false), child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.of(context).pop(true), child: const Text('Post')),
        ],
      ),
    );
    if (ok != true || !mounted) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    final r = await AccountingEntriesService().createNote(NoteInput(
      noteType: _noteType,
      date: _date,
      partyType: _partyType,
      partyName: _party.text,
      partyReference: _reference.text,
      debitAccountId: _debit!,
      creditAccountId: _credit!,
      amount: amount,
      reason: _reason.text,
      gstAmount: gst,
    ));
    if (!mounted) return;
    switch (r) {
      case Ok(:final value):
        invalidateBooks(ref);
        showSnack(context, '${humanizeEnum(_noteType)} note posted');
        context.pushReplacement('/accountant/notes/$value');
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failure.userMessage;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AccountantPageScaffold(
      title: 'New Debit / Credit Note',
      body: ResponsiveListView(
        children: [
          SegmentedButton<String>(
            showSelectedIcon: false,
            segments: const [
              ButtonSegment(value: 'DEBIT', label: Text('Debit note')),
              ButtonSegment(value: 'CREDIT', label: Text('Credit note')),
            ],
            selected: {_noteType},
            onSelectionChanged: _busy ? null : (v) => setState(() => _noteType = v.first),
          ),
          const SizedBox(height: 12),
          EntryDateField(date: _date, enabled: !_busy, onChanged: (d) => setState(() => _date = d)),
          const SizedBox(height: 12),
          const Text('Party', style: TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          ChoiceRow(options: notePartyTypes, value: _partyType, enabled: !_busy, onChanged: (v) => setState(() => _partyType = v)),
          const SizedBox(height: 8),
          TextField(controller: _party, enabled: !_busy, textCapitalization: TextCapitalization.words, decoration: const InputDecoration(labelText: 'Party name')),
          const SizedBox(height: 8),
          TextField(controller: _reference, enabled: !_busy, decoration: const InputDecoration(labelText: 'Reference (optional)', hintText: 'e.g. invoice no.')),
          const SizedBox(height: 12),
          AccountPicker(label: 'Debit account', value: _debit, enabled: !_busy, onChanged: (v) => setState(() => _debit = v)),
          const SizedBox(height: 12),
          AccountPicker(label: 'Credit account', value: _credit, enabled: !_busy, onChanged: (v) => setState(() => _credit = v)),
          const SizedBox(height: 12),
          MoneyField(controller: _amount, label: 'Amount', enabled: !_busy),
          const SizedBox(height: 12),
          TextField(controller: _reason, enabled: !_busy, maxLines: 2, decoration: const InputDecoration(labelText: 'Reason (optional)')),
          const SizedBox(height: 12),
          MoneyField(controller: _gst, label: 'GST amount (optional)', enabled: !_busy),
          FormError(_error),
          const SizedBox(height: 16),
          FilledButton.icon(
            onPressed: _busy ? null : _save,
            icon: _busy ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2)) : const Icon(Icons.publish_outlined),
            label: Text('Post ${_noteType.toLowerCase()} note'),
          ),
        ],
      ),
    );
  }
}
