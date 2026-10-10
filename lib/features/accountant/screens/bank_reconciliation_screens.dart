import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/accounting.dart';
import '../../../core/models/accounting_entries.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/accounting_entries_providers.dart';
import '../services/accounting_entries_service.dart';
import 'accountant_page_scaffold.dart';
import 'accounting_entry_widgets.dart';
import 'accounting_widgets.dart';

StatusBadge _reconBadge(String status) => status == 'RECONCILED'
    ? const StatusBadge(label: 'Reconciled', variant: BadgeVariant.success, icon: Icons.lock_outline)
    : const StatusBadge(label: 'Open', variant: BadgeVariant.warning);

/// Bank reconciliation — match the bank account's book entries against the
/// bank statement as of a date. Lines are ticked off as cleared; once the
/// adjusted bank balance equals the book balance the reconciliation can be
/// closed (locked).
class BankReconciliationsScreen extends ConsumerWidget {
  const BankReconciliationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(reconciliationsProvider);
    return AccountantPageScaffold(
      title: 'Bank Reconciliation',
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final id = await showAcctFormSheet<String>(context, (_) => const _NewReconForm());
          if (id != null && context.mounted) {
            invalidateBooks(ref);
            context.push('/accountant/bank-reconciliation/$id');
          }
        },
        icon: const Icon(Icons.add),
        label: const Text('New reconciliation'),
      ),
      body: AsyncValueView<List<BankReconciliationSummary>>(
        value: value,
        onRetry: () => ref.invalidate(reconciliationsProvider),
        data: (rows) => ResponsiveListView(
          onRefresh: () => ref.refresh(reconciliationsProvider.future),
          children: [
            if (rows.isEmpty)
              const EmptyCard(
                icon: Icons.account_balance_outlined,
                title: 'No reconciliations yet',
                message: 'Start one with the bank statement balance for a date.',
              )
            else
              DividedCard(
                children: [
                  for (final r in rows)
                    ListTile(
                      onTap: () => context.push('/accountant/bank-reconciliation/${r.reconciliationId}'),
                      title: Text(r.account == null ? 'Bank account' : '${r.account!.accountCode} · ${r.account!.accountName}'),
                      subtitle: Text('As of ${formatDate(r.asOfDate)} · statement ${formatAmount(r.bankStatementBalance)}'),
                      trailing: _reconBadge(r.status),
                    ),
                ],
              ),
            const SizedBox(height: 72),
          ],
        ),
      ),
    );
  }
}

class _NewReconForm extends StatefulWidget {
  const _NewReconForm();

  @override
  State<_NewReconForm> createState() => _NewReconFormState();
}

class _NewReconFormState extends State<_NewReconForm> {
  String? _account;
  DateTime _asOf = today();
  final _balance = TextEditingController();
  final _notes = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _balance.dispose();
    _notes.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final balance = Decimal.tryParse(_balance.text.trim());
    if (_account == null || balance == null) return setState(() => _error = 'Pick the bank account and enter the statement balance.');
    setState(() {
      _busy = true;
      _error = null;
    });
    final r = await AccountingEntriesService()
        .createReconciliation(accountId: _account!, asOf: _asOf, statementBalance: balance, notes: _notes.text);
    if (!mounted) return;
    switch (r) {
      case Ok(:final value):
        Navigator.of(context).pop(value);
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
        const Text('New bank reconciliation', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        const SizedBox(height: 16),
        AccountPicker(
          label: 'Bank account',
          value: _account,
          where: (LedgerAccount a) => a.accountSubtype == 'BANK',
          enabled: !_busy,
          onChanged: (v) => setState(() => _account = v),
        ),
        const SizedBox(height: 12),
        EntryDateField(label: 'Statement date', date: _asOf, enabled: !_busy, onChanged: (d) => setState(() => _asOf = d)),
        const SizedBox(height: 12),
        MoneyField(controller: _balance, label: 'Closing balance on the bank statement', enabled: !_busy),
        const SizedBox(height: 12),
        TextField(controller: _notes, enabled: !_busy, decoration: const InputDecoration(labelText: 'Notes (optional)')),
        FormError(_error),
        const SizedBox(height: 16),
        SheetActions(busy: _busy, onSubmit: _save, submitLabel: 'Start'),
      ],
    );
  }
}

/// One reconciliation: book vs statement, outstanding lines (tick to mark
/// cleared), cleared lines (tick to move back), and Close once balanced.
class BankReconciliationDetailScreen extends ConsumerStatefulWidget {
  const BankReconciliationDetailScreen({super.key, required this.reconciliationId});

  final String reconciliationId;

  @override
  ConsumerState<BankReconciliationDetailScreen> createState() => _BankReconciliationDetailScreenState();
}

class _BankReconciliationDetailScreenState extends ConsumerState<BankReconciliationDetailScreen> {
  final _toClear = <String>{};
  final _toUnclear = <String>{};
  bool _busy = false;

  Future<void> _apply({required bool clear}) async {
    final ids = (clear ? _toClear : _toUnclear).toList();
    setState(() => _busy = true);
    final service = AccountingEntriesService();
    final r = clear ? await service.clearLines(widget.reconciliationId, ids) : await service.unclearLines(widget.reconciliationId, ids);
    if (!mounted) return;
    setState(() {
      _busy = false;
      if (r is Ok) (clear ? _toClear : _toUnclear).clear();
    });
    switch (r) {
      case Ok():
        ref.invalidate(reconciliationProvider(widget.reconciliationId));
        showSnack(context, clear ? '${ids.length} marked cleared' : '${ids.length} moved back to outstanding');
      case Err(:final failure):
        showSnack(context, failure.userMessage);
    }
  }

  Future<void> _close(BankReconciliation rec) async {
    final ok = await showAcctConfirm(
      context,
      title: 'Close this reconciliation?',
      message: 'The books and the bank statement agree. Closing locks it — lines can\'t be changed afterwards.',
      confirmLabel: 'Close',
      action: () async => switch (await AccountingEntriesService().closeReconciliation(rec.reconciliationId)) {
        Ok() => null,
        Err(:final failure) => failure.userMessage,
      },
    );
    if (ok && mounted) {
      invalidateBooks(ref);
      showSnack(context, 'Reconciliation closed');
    }
  }

  @override
  Widget build(BuildContext context) {
    final value = ref.watch(reconciliationProvider(widget.reconciliationId));
    return AccountantPageScaffold(
      title: 'Bank Reconciliation',
      body: AsyncValueView<BankReconciliation>(
        value: value,
        onRetry: () => ref.invalidate(reconciliationProvider(widget.reconciliationId)),
        data: (rec) {
          final scheme = Theme.of(context).colorScheme;
          final outstanding = rec.outstanding?.lines ?? const <BookLine>[];
          final cleared = rec.cleared?.lines ?? const <BookLine>[];
          final locked = rec.isClosed || _busy;
          return ResponsiveListView(
            onRefresh: () => ref.refresh(reconciliationProvider(widget.reconciliationId).future),
            children: [
              HeaderBar(children: [
                Text('As of ${formatDate(rec.asOfDate)}', style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
                _reconBadge(rec.status),
              ]),
              const SizedBox(height: 12),
              SummaryCard(
                children: [
                  SummaryRow('Balance as per books', drCr(rec.bookBalance)),
                  SummaryRow('Balance as per bank statement', formatAmount(rec.bankStatementBalance)),
                  SummaryRow('+ Deposits in transit', formatAmount(rec.outstanding?.depositsInTransit)),
                  SummaryRow('− Payments not yet cleared', formatAmount(rec.outstanding?.outstandingPayments)),
                  SummaryRow('Adjusted bank balance', formatAmount(rec.adjustedBankBalance)),
                  const Divider(),
                  SummaryRow(
                    rec.isBalanced ? 'Balanced' : 'Difference',
                    rec.isBalanced ? '✓' : formatAmount(rec.difference.abs()),
                    bold: true,
                    color: rec.isBalanced ? AppColors.success : AppColors.danger,
                  ),
                ],
              ),
              if ((rec.notes ?? '').isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(rec.notes!, style: TextStyle(color: scheme.onSurfaceVariant)),
              ],
              const SizedBox(height: 16),
              SectionLabel(
                'Outstanding (${outstanding.length})',
                trailing: rec.isClosed || _toClear.isEmpty
                    ? null
                    : FilledButton.tonal(
                        onPressed: locked ? null : () => _apply(clear: true),
                        child: Text('Mark ${_toClear.length} cleared'),
                      ),
              ),
              Text('Book entries not yet seen on the bank statement. Tick the ones that are.',
                  style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 13)),
              const SizedBox(height: 8),
              if (outstanding.isEmpty)
                const EmptyCard(icon: Icons.check_circle_outline, title: 'Nothing outstanding')
              else
                DividedCard(
                  children: [
                    for (final l in outstanding)
                      _ReconLineTile(
                        line: l,
                        checked: _toClear.contains(l.lineId),
                        enabled: !locked,
                        onChanged: (v) => setState(() => v ? _toClear.add(l.lineId!) : _toClear.remove(l.lineId)),
                      ),
                  ],
                ),
              const SizedBox(height: 16),
              SectionLabel(
                'Cleared (${cleared.length})',
                trailing: rec.isClosed || _toUnclear.isEmpty
                    ? null
                    : OutlinedButton(
                        onPressed: locked ? null : () => _apply(clear: false),
                        child: Text('Move ${_toUnclear.length} back'),
                      ),
              ),
              if (cleared.isEmpty)
                const EmptyCard(icon: Icons.receipt_long_outlined, title: 'Nothing cleared yet')
              else
                DividedCard(
                  children: [
                    for (final l in cleared)
                      _ReconLineTile(
                        line: l,
                        checked: _toUnclear.contains(l.lineId),
                        enabled: !locked,
                        onChanged: (v) => setState(() => v ? _toUnclear.add(l.lineId!) : _toUnclear.remove(l.lineId)),
                      ),
                  ],
                ),
              if (!rec.isClosed) ...[
                const SizedBox(height: 20),
                FilledButton.icon(
                  onPressed: rec.isBalanced && !_busy ? () => _close(rec) : null,
                  icon: const Icon(Icons.lock_outline),
                  label: const Text('Close reconciliation'),
                ),
                if (!rec.isBalanced) ...[
                  const SizedBox(height: 8),
                  Text('Clear the matching entries (or correct the statement balance) until the difference is zero.',
                      style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 13)),
                ],
              ],
            ],
          );
        },
      ),
    );
  }
}

class _ReconLineTile extends StatelessWidget {
  const _ReconLineTile({required this.line, required this.checked, required this.enabled, required this.onChanged});

  final BookLine line;
  final bool checked;
  final bool enabled;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final isDebit = line.debitAmount > Decimal.zero;
    return CheckboxListTile(
      value: checked,
      onChanged: enabled && line.lineId != null ? (v) => onChanged(v ?? false) : null,
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(line.voucherNo, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text(
        [formatDate(line.entryDate), if ((line.lineNarration ?? line.narration ?? '').isNotEmpty) line.lineNarration ?? line.narration!].join(' · '),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      secondary: Text(
        '${formatAmount(isDebit ? line.debitAmount : line.creditAmount)} ${isDebit ? 'in' : 'out'}',
        style: TextStyle(fontWeight: FontWeight.w700, color: isDebit ? AppColors.success : AppColors.danger),
      ),
    );
  }
}
