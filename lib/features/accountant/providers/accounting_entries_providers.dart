import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/result.dart';
import '../../../core/models/accounting_entries.dart';
import '../services/accounting_entries_service.dart';
import 'accounting_providers.dart';

/// Read providers for the accounting entry screens (Phase 3). Same
/// conventions as accounting_providers.dart: watch the userId, key periods
/// by `YYYY-MM-DD` strings.
Future<T> _load<T>(Ref ref, Future<Result<T>> Function(AccountingEntriesService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return switch (await call(AccountingEntriesService())) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
}

DateTime _d(String ymd) => DateTime.parse(ymd);

typedef FilteredPeriod = ({String from, String to, String? filter});

/// `filter` = status (DRAFT / POSTED / REVERSED) or null.
final journalEntriesProvider = FutureProvider.family<List<JournalEntry>, FilteredPeriod>(
  (ref, k) => _load(ref, (s) => s.listJournalEntries(from: _d(k.from), to: _d(k.to), status: k.filter)),
);

final journalEntryProvider = FutureProvider.family<JournalEntry, String>(
  (ref, id) => _load(ref, (s) => s.getJournalEntry(id)),
);

final contraEntriesProvider = FutureProvider.family<List<JournalEntry>, PeriodKey>(
  (ref, k) => _load(ref, (s) => s.listContraEntries(from: _d(k.from), to: _d(k.to))),
);

/// `filter` = status (ACTIVE / CANCELLED) or null.
final paymentVouchersProvider = FutureProvider.family<List<PaymentVoucher>, FilteredPeriod>(
  (ref, k) => _load(ref, (s) => s.listPaymentVouchers(from: _d(k.from), to: _d(k.to), status: k.filter)),
);

final paymentVoucherProvider = FutureProvider.family<PaymentVoucher, String>(
  (ref, id) => _load(ref, (s) => s.getPaymentVoucher(id)),
);

final receiptVouchersProvider = FutureProvider.family<List<ReceiptVoucher>, PeriodKey>(
  (ref, k) => _load(ref, (s) => s.listReceiptVouchers(from: _d(k.from), to: _d(k.to))),
);

final receiptVoucherProvider = FutureProvider.family<ReceiptVoucher, String>(
  (ref, id) => _load(ref, (s) => s.getReceiptVoucher(id)),
);

/// `filter` = note type (DEBIT / CREDIT) or null.
final notesProvider = FutureProvider.family<List<DebitCreditNote>, FilteredPeriod>(
  (ref, k) => _load(ref, (s) => s.listNotes(from: _d(k.from), to: _d(k.to), noteType: k.filter)),
);

final noteProvider = FutureProvider.family<DebitCreditNote, String>((ref, id) => _load(ref, (s) => s.getNote(id)));

final reconciliationsProvider =
    FutureProvider<List<BankReconciliationSummary>>((ref) => _load(ref, (s) => s.listReconciliations()));

final reconciliationProvider = FutureProvider.family<BankReconciliation, String>(
  (ref, id) => _load(ref, (s) => s.getReconciliation(id)),
);

/// Every write changes the books, so refresh the entry lists AND the Phase 2
/// reports that read them.
void invalidateBooks(WidgetRef ref) {
  ref
    ..invalidate(journalEntriesProvider)
    ..invalidate(journalEntryProvider)
    ..invalidate(contraEntriesProvider)
    ..invalidate(paymentVouchersProvider)
    ..invalidate(paymentVoucherProvider)
    ..invalidate(receiptVouchersProvider)
    ..invalidate(receiptVoucherProvider)
    ..invalidate(notesProvider)
    ..invalidate(noteProvider)
    ..invalidate(reconciliationsProvider)
    ..invalidate(reconciliationProvider)
    ..invalidate(ledgerProvider)
    ..invalidate(trialBalanceProvider)
    ..invalidate(profitAndLossProvider)
    ..invalidate(balanceSheetProvider)
    ..invalidate(outstandingProvider)
    ..invalidate(dayBookProvider)
    ..invalidate(cashBookProvider)
    ..invalidate(bankBookProvider)
    ..invalidate(gstReportProvider)
    ..invalidate(tdsReportProvider);
}
