import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/accounting_entries.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/accounting_entries_providers.dart';
import '../services/accountant_service.dart' show apiDay;
import '../services/accounting_entries_service.dart';
import 'accountant_page_scaffold.dart';
import 'accounting_entry_widgets.dart';
import 'accounting_widgets.dart';

/// Journal entries — GET .../journal-entries (all types: manual entries and
/// the ones vouchers / fee receipts post automatically), filtered by status.
/// New entries are manual and start as DRAFT.
class JournalEntriesScreen extends ConsumerStatefulWidget {
  const JournalEntriesScreen({super.key});

  @override
  ConsumerState<JournalEntriesScreen> createState() => _JournalEntriesScreenState();
}

class _JournalEntriesScreenState extends ConsumerState<JournalEntriesScreen> {
  DateTimeRange _range = financialYearToDate();
  String? _status;

  FilteredPeriod get _key => (from: apiDay(_range.start), to: apiDay(_range.end), filter: _status);

  @override
  Widget build(BuildContext context) {
    final value = ref.watch(journalEntriesProvider(_key));
    return AccountantPageScaffold(
      title: 'Journal Entries',
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push('/accountant/journal-entries/new'),
        icon: const Icon(Icons.add),
        label: const Text('New entry'),
      ),
      body: AsyncValueView<List<JournalEntry>>(
        value: value,
        onRetry: () => ref.invalidate(journalEntriesProvider(_key)),
        data: (rows) => ResponsiveListView(
          onRefresh: () => ref.refresh(journalEntriesProvider(_key).future),
          children: [
            PeriodChip(range: _range, onChanged: (r) => setState(() => _range = r)),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final s in const [null, 'DRAFT', 'POSTED', 'REVERSED'])
                  ChoiceChip(
                    label: Text(s == null ? 'All' : humanizeEnum(s)),
                    selected: _status == s,
                    onSelected: (_) => setState(() => _status = s),
                  ),
              ],
            ),
            const SizedBox(height: 16),
            SectionLabel('${rows.length} entr${rows.length == 1 ? 'y' : 'ies'}'),
            if (rows.isEmpty)
              const EmptyCard(icon: Icons.edit_note_outlined, title: 'No journal entries in this period')
            else
              DividedCard(children: [for (final e in rows) EntryRow(entry: e, path: '/accountant/journal-entries/${e.entryId}')]),
            const SizedBox(height: 72),
          ],
        ),
      ),
    );
  }
}

/// A journal entry row (also used for contra entries).
class EntryRow extends StatelessWidget {
  const EntryRow({super.key, required this.entry, this.path});

  final JournalEntry entry;
  final String? path;

  @override
  Widget build(BuildContext context) {
    final e = entry;
    final scheme = Theme.of(context).colorScheme;
    return ListTile(
      onTap: path == null ? null : () => context.push(path!),
      title: Text(e.voucherNo, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text(
        [formatDate(e.entryDate), entryTypeLabel(e.entryType), if ((e.narration ?? '').isNotEmpty) e.narration!].join(' · '),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: scheme.onSurfaceVariant),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(formatAmount(e.total), style: const TextStyle(fontWeight: FontWeight.w700)),
          entryStatusBadge(e.status),
        ],
      ),
    );
  }
}

/// One journal entry — lines, and Post (DRAFT) / Reverse (POSTED manual).
class JournalEntryDetailScreen extends ConsumerWidget {
  const JournalEntryDetailScreen({super.key, required this.entryId});

  final String entryId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(journalEntryProvider(entryId));
    return AccountantPageScaffold(
      title: 'Journal Entry',
      body: AsyncValueView<JournalEntry>(
        value: value,
        onRetry: () => ref.invalidate(journalEntryProvider(entryId)),
        data: (e) {
          final scheme = Theme.of(context).colorScheme;
          return ResponsiveListView(
            onRefresh: () => ref.refresh(journalEntryProvider(entryId).future),
            children: [
              SectionCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderBar(
                      children: [
                        Text(e.voucherNo, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                        StatusBadge(label: entryTypeLabel(e.entryType), variant: entryTypeVariant(e.entryType)),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text(formatDate(e.entryDate), style: TextStyle(color: scheme.onSurfaceVariant)),
                    if ((e.narration ?? '').isNotEmpty) ...[
                      const SizedBox(height: 6),
                      Text(e.narration!),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 12),
              JournalLinesCard(entry: e),
              const SizedBox(height: 8),
              Align(alignment: Alignment.centerRight, child: Text('Total ${formatAmount(e.total)}', style: const TextStyle(fontWeight: FontWeight.w700))),
              if (e.isDraft) ...[
                const SizedBox(height: 20),
                FilledButton.icon(
                  onPressed: () => _post(context, ref, e),
                  icon: const Icon(Icons.publish_outlined),
                  label: const Text('Post to books'),
                ),
                const SizedBox(height: 8),
                Text('A draft has no effect on the books until it is posted. Posting is permanent.',
                    style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 13)),
              ],
              if (e.canReverse) ...[
                const SizedBox(height: 20),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(foregroundColor: scheme.error),
                  onPressed: () => _reverse(context, ref, e),
                  icon: const Icon(Icons.undo),
                  label: const Text('Reverse entry'),
                ),
              ],
              if (e.status == 'POSTED' && !e.canReverse) ...[
                const SizedBox(height: 16),
                Text('Posted automatically by ${entryTypeLabel(e.entryType).toLowerCase()} — correct it from there, '
                    'or with a debit/credit note.',
                    style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 13)),
              ],
            ],
          );
        },
      ),
    );
  }

  Future<void> _post(BuildContext context, WidgetRef ref, JournalEntry e) async {
    final ok = await showAcctConfirm(
      context,
      title: 'Post ${e.voucherNo}?',
      message: '${formatAmount(e.total)} will be posted to the books. Posted entries can\'t be edited — only reversed.',
      confirmLabel: 'Post',
      action: () async => switch (await AccountingEntriesService().postJournalEntry(e.entryId)) {
        Ok() => null,
        Err(:final failure) => failure.userMessage,
      },
    );
    if (ok && context.mounted) {
      invalidateBooks(ref);
      showSnack(context, '${e.voucherNo} posted');
    }
  }

  Future<void> _reverse(BuildContext context, WidgetRef ref, JournalEntry e) async {
    final ok = await showAcctConfirm(
      context,
      title: 'Reverse ${e.voucherNo}?',
      message: 'A new entry with debits and credits swapped will be posted, and this one marked reversed. '
          'This can\'t be undone.',
      confirmLabel: 'Reverse',
      dangerous: true,
      action: () async => switch (await AccountingEntriesService().reverseJournalEntry(e.entryId)) {
        Ok() => null,
        Err(:final failure) => failure.userMessage,
      },
    );
    if (ok && context.mounted) {
      invalidateBooks(ref);
      showSnack(context, '${e.voucherNo} reversed');
    }
  }
}

class _LineDraft {
  String? accountId;
  bool isDebit;
  final amount = TextEditingController();
  final narration = TextEditingController();

  _LineDraft({required this.isDebit});

  Decimal get value => Decimal.tryParse(amount.text.trim()) ?? Decimal.zero;

  void dispose() {
    amount.dispose();
    narration.dispose();
  }
}

/// New manual journal entry — POST .../journal-entries (DRAFT), optionally
/// posted straight away. Needs 2+ lines, each one debit or credit, and the
/// debits must equal the credits.
class NewJournalEntryScreen extends ConsumerStatefulWidget {
  const NewJournalEntryScreen({super.key});

  @override
  ConsumerState<NewJournalEntryScreen> createState() => _NewJournalEntryScreenState();
}

class _NewJournalEntryScreenState extends ConsumerState<NewJournalEntryScreen> {
  DateTime _date = today();
  final _narration = TextEditingController();
  final _lines = [_LineDraft(isDebit: true), _LineDraft(isDebit: false)];
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _narration.dispose();
    for (final l in _lines) {
      l.dispose();
    }
    super.dispose();
  }

  Decimal get _debits => _lines.where((l) => l.isDebit).fold(Decimal.zero, (s, l) => s + l.value);
  Decimal get _credits => _lines.where((l) => !l.isDebit).fold(Decimal.zero, (s, l) => s + l.value);
  bool get _balanced => _debits == _credits && _debits > Decimal.zero;

  String? _validate() {
    if (_narration.text.trim().isEmpty) return 'Enter a narration.';
    for (final (i, l) in _lines.indexed) {
      if (l.accountId == null) return 'Line ${i + 1}: pick an account.';
      if (l.value <= Decimal.zero) return 'Line ${i + 1}: enter an amount above 0.';
    }
    if (!_balanced) return 'Debits (${formatAmount(_debits)}) must equal credits (${formatAmount(_credits)}).';
    return null;
  }

  Future<void> _save({required bool post}) async {
    final error = _validate();
    if (error != null) return setState(() => _error = error);
    setState(() {
      _busy = true;
      _error = null;
    });
    final service = AccountingEntriesService();
    final created = await service.createJournalEntry(
      date: _date,
      narration: _narration.text,
      lines: [
        for (final l in _lines) JournalLineInput(accountId: l.accountId!, amount: l.value, isDebit: l.isDebit, narration: l.narration.text),
      ],
    );
    if (!mounted) return;
    switch (created) {
      case Err(:final failure):
        return setState(() {
          _busy = false;
          _error = failure.userMessage;
        });
      case Ok(:final value):
        var message = 'Draft saved';
        if (post) {
          final posted = await service.postJournalEntry(value);
          message = posted is Ok ? 'Entry posted' : 'Draft saved, but posting failed — open it to try again';
        }
        if (!mounted) return;
        invalidateBooks(ref);
        showSnack(context, message);
        context.pushReplacement('/accountant/journal-entries/$value');
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return AccountantPageScaffold(
      title: 'New Journal Entry',
      body: ResponsiveListView(
        children: [
          EntryDateField(date: _date, enabled: !_busy, onChanged: (d) => setState(() => _date = d)),
          const SizedBox(height: 12),
          TextField(
            controller: _narration,
            enabled: !_busy,
            maxLines: 2,
            textCapitalization: TextCapitalization.sentences,
            decoration: const InputDecoration(labelText: 'Narration', hintText: 'What is this entry for?'),
          ),
          const SizedBox(height: 16),
          SectionLabel(
            'Lines',
            trailing: TextButton.icon(
              onPressed: _busy ? null : () => setState(() => _lines.add(_LineDraft(isDebit: _debits <= _credits))),
              icon: const Icon(Icons.add, size: 18),
              label: const Text('Add line'),
            ),
          ),
          for (final (i, l) in _lines.indexed) ...[
            SectionCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  HeaderBar(
                    children: [
                      SegmentedButton<bool>(
                        showSelectedIcon: false,
                        segments: const [
                          ButtonSegment(value: true, label: Text('Debit')),
                          ButtonSegment(value: false, label: Text('Credit')),
                        ],
                        selected: {l.isDebit},
                        onSelectionChanged: _busy ? null : (v) => setState(() => l.isDebit = v.first),
                      ),
                      if (_lines.length > 2)
                        IconButton(
                          tooltip: 'Remove line',
                          onPressed: _busy
                              ? null
                              : () => setState(() {
                                    _lines.removeAt(i).dispose();
                                  }),
                          icon: const Icon(Icons.delete_outline),
                        ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  AccountPicker(
                    label: 'Account',
                    value: l.accountId,
                    enabled: !_busy,
                    onChanged: (v) => setState(() => l.accountId = v),
                  ),
                  const SizedBox(height: 8),
                  MoneyField(controller: l.amount, label: 'Amount', enabled: !_busy, onChanged: (_) => setState(() {})),
                  const SizedBox(height: 8),
                  TextField(
                    controller: l.narration,
                    enabled: !_busy,
                    decoration: const InputDecoration(labelText: 'Line note (optional)'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
          SummaryCard(
            children: [
              SummaryRow('Total debit', formatAmount(_debits)),
              SummaryRow('Total credit', formatAmount(_credits)),
              const Divider(),
              SummaryRow(
                _balanced ? 'Balanced' : 'Difference',
                _balanced ? '✓' : formatAmount((_debits - _credits).abs()),
                bold: true,
                color: _balanced ? AppColors.success : AppColors.danger,
              ),
            ],
          ),
          FormError(_error),
          const SizedBox(height: 16),
          Wrap(
            alignment: WrapAlignment.end,
            spacing: 10,
            runSpacing: 10,
            children: [
              OutlinedButton(onPressed: _busy ? null : () => _save(post: false), child: const Text('Save as draft')),
              FilledButton.icon(
                onPressed: _busy ? null : () => _save(post: true),
                icon: _busy
                    ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
                    : const Icon(Icons.publish_outlined),
                label: const Text('Save & post'),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text('Posting is permanent — save as a draft if you want to check it first.',
              style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 13)),
        ],
      ),
    );
  }
}
