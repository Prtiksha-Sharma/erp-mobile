import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/accounting.dart';
import '../../../core/models/accounting_entries.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/accounting_providers.dart';
import 'accountant_page_scaffold.dart';

/// Shared form pieces for the accounting entry screens.

bool isCashOrBank(LedgerAccount a) => a.accountSubtype == 'CASH' || a.accountSubtype == 'BANK';

/// Dropdown over the chart of accounts (active accounts only), narrowed by
/// [where] — e.g. cash/bank only for "paid from", non-cash/bank for the
/// expense side, mirroring what the backend accepts.
class AccountPicker extends ConsumerWidget {
  const AccountPicker({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    this.where,
    this.enabled = true,
  });

  final String label;
  final String? value;
  final ValueChanged<String?> onChanged;
  final bool Function(LedgerAccount a)? where;
  final bool enabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(chartOfAccountsProvider).when(
          loading: () => const LinearProgressIndicator(),
          error: (e, _) => Text(describeError(e), style: TextStyle(color: Theme.of(context).colorScheme.error)),
          data: (all) {
            final options = all.where((a) => a.isActive && (where?.call(a) ?? true)).toList();
            if (options.isEmpty) {
              return InputDecorator(
                decoration: InputDecoration(labelText: label),
                child: const Text('No matching accounts — ask the School Admin to set them up'),
              );
            }
            return DropdownButtonFormField<String>(
              initialValue: options.any((a) => a.accountId == value) ? value : null,
              isExpanded: true,
              decoration: InputDecoration(labelText: label),
              items: [
                for (final a in options)
                  DropdownMenuItem(value: a.accountId, child: Text(a.label, overflow: TextOverflow.ellipsis)),
              ],
              onChanged: enabled ? onChanged : null,
            );
          },
        );
  }
}

final _moneyFormatter = FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}'));

/// A rupee amount field (2 decimals).
class MoneyField extends StatelessWidget {
  const MoneyField({super.key, required this.controller, required this.label, this.enabled = true, this.onChanged});

  final TextEditingController controller;
  final String label;
  final bool enabled;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      enabled: enabled,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      inputFormatters: [_moneyFormatter],
      onChanged: onChanged,
      decoration: InputDecoration(labelText: label, prefixText: '₹ '),
    );
  }
}

/// Parses an optional money field: blank -> null, invalid -> throws.
Decimal? optionalMoney(TextEditingController c) {
  final t = c.text.trim();
  if (t.isEmpty) return null;
  return Decimal.parse(t);
}

/// Parses a required positive amount, or null if missing / zero / invalid.
Decimal? positiveMoney(TextEditingController c) {
  final v = Decimal.tryParse(c.text.trim());
  return v == null || v <= Decimal.zero ? null : v;
}

/// Entry-date row: label + a tappable date (defaults to today, no future).
class EntryDateField extends StatelessWidget {
  const EntryDateField({super.key, required this.date, required this.onChanged, this.label = 'Date', this.enabled = true});

  final DateTime date;
  final ValueChanged<DateTime> onChanged;
  final String label;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return HeaderBar(
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
        DatePickerChip(
          date: date,
          lastDate: today(),
          onChanged: enabled ? (d) => onChanged(DateTime(d.year, d.month, d.day)) : (_) {},
        ),
      ],
    );
  }
}

/// A row of choice chips over enum-ish string values.
class ChoiceRow extends StatelessWidget {
  const ChoiceRow({super.key, required this.options, required this.value, required this.onChanged, this.enabled = true, this.label});

  final List<String> options;
  final String value;
  final ValueChanged<String> onChanged;
  final bool enabled;
  final String Function(String)? label;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final o in options)
          ChoiceChip(
            label: Text(label?.call(o) ?? humanizeEnum(o)),
            selected: value == o,
            onSelected: enabled ? (_) => onChanged(o) : null,
          ),
      ],
    );
  }
}

/// DRAFT / POSTED / REVERSED / ACTIVE / CANCELLED -> badge.
StatusBadge entryStatusBadge(String status) => switch (status) {
      'DRAFT' => const StatusBadge(label: 'Draft', variant: BadgeVariant.warning),
      'POSTED' || 'ACTIVE' => const StatusBadge(label: 'Posted', variant: BadgeVariant.success),
      'REVERSED' => const StatusBadge(label: 'Reversed', variant: BadgeVariant.neutral),
      'CANCELLED' => const StatusBadge(label: 'Cancelled', variant: BadgeVariant.neutral),
      _ => StatusBadge(label: humanizeEnum(status)),
    };

/// The journal lines behind a voucher / entry — account, Dr or Cr amount.
class JournalLinesCard extends StatelessWidget {
  const JournalLinesCard({super.key, required this.entry});

  final JournalEntry entry;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionLabel('Journal ${entry.voucherNo}', trailing: entryStatusBadge(entry.status)),
        DividedCard(
          children: [
            for (final l in entry.lines)
              ListTile(
                dense: true,
                title: Text(l.account == null ? 'Account' : '${l.account!.accountCode} · ${l.account!.accountName}'),
                subtitle: (l.lineNarration ?? '').isEmpty ? null : Text(l.lineNarration!, style: TextStyle(color: scheme.onSurfaceVariant)),
                trailing: Text(
                  l.debitAmount > Decimal.zero ? '${formatAmount(l.debitAmount)} Dr' : '${formatAmount(l.creditAmount)} Cr',
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
