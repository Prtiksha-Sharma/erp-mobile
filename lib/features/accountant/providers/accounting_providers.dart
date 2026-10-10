import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/result.dart';
import '../../../core/models/accounting.dart';
import '../services/accounting_service.dart';

/// Read providers for the accounting reports. Watch the logged-in userId
/// (re-fetch on account switch); keyed by `YYYY-MM-DD` strings so equal
/// periods share a cache entry.
Future<T> _load<T>(Ref ref, Future<Result<T>> Function(AccountingService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return switch (await call(AccountingService())) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
}

DateTime _d(String ymd) => DateTime.parse(ymd);

typedef PeriodKey = ({String from, String to});

/// Loaded once and shared by the chart-of-accounts screen and the ledger's
/// account picker.
final chartOfAccountsProvider = FutureProvider<List<LedgerAccount>>((ref) => _load(ref, (s) => s.chartOfAccounts()));

final ledgerProvider = FutureProvider.family<LedgerReport, ({String accountId, String from, String to})>(
  (ref, k) => _load(ref, (s) => s.ledger(k.accountId, _d(k.from), _d(k.to))),
);

final trialBalanceProvider = FutureProvider.family<TrialBalance, String>(
  (ref, asOf) => _load(ref, (s) => s.trialBalance(_d(asOf))),
);

final profitAndLossProvider = FutureProvider.family<ProfitAndLoss, PeriodKey>(
  (ref, k) => _load(ref, (s) => s.profitAndLoss(_d(k.from), _d(k.to))),
);

final balanceSheetProvider = FutureProvider.family<BalanceSheet, String>(
  (ref, asOf) => _load(ref, (s) => s.balanceSheet(_d(asOf))),
);

final outstandingProvider = FutureProvider.family<OutstandingReport, String>(
  (ref, asOf) => _load(ref, (s) => s.outstanding(_d(asOf))),
);

final dayBookProvider = FutureProvider.family<DayBook, PeriodKey>(
  (ref, k) => _load(ref, (s) => s.dayBook(_d(k.from), _d(k.to))),
);

final cashBookProvider = FutureProvider.family<CashBankBook, PeriodKey>(
  (ref, k) => _load(ref, (s) => s.cashBook(_d(k.from), _d(k.to))),
);

final bankBookProvider = FutureProvider.family<CashBankBook, PeriodKey>(
  (ref, k) => _load(ref, (s) => s.bankBook(_d(k.from), _d(k.to))),
);

final gstReportProvider = FutureProvider.family<GstReport, PeriodKey>(
  (ref, k) => _load(ref, (s) => s.gst(_d(k.from), _d(k.to))),
);

final tdsReportProvider = FutureProvider.family<TdsReport, PeriodKey>(
  (ref, k) => _load(ref, (s) => s.tds(_d(k.from), _d(k.to))),
);
