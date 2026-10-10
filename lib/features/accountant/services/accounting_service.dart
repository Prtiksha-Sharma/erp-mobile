import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/accounting.dart';
import 'accountant_service.dart' show apiDay;

/// The accounting books — `/accountant/accounting/*` reports (read-only,
/// open to Accountant / School Admin / Principal on the backend) plus the
/// chart of accounts, which lives under `/admin/accounting` (the Accountant
/// may read it; School Admin owns it). Dates are `YYYY-MM-DD`; `from`/`to`
/// and `as_of` are both inclusive server-side.
class AccountingService {
  Dio get _dio => DioClient.instance.dio;

  Future<T> _one<T>(String path, T Function(Map<String, dynamic>) fromJson, {Map<String, dynamic>? query}) async {
    final res = await _dio.get(path, queryParameters: query);
    return fromJson(res.data['data'] as Map<String, dynamic>);
  }

  Map<String, dynamic> _range(DateTime from, DateTime to) => {'from': apiDay(from), 'to': apiDay(to)};

  Future<Result<List<LedgerAccount>>> chartOfAccounts() => guard(() async {
        final res = await _dio.get('/admin/accounting/chart-of-accounts');
        final data = res.data['data'] as List? ?? const [];
        return data.map((e) => LedgerAccount.fromJson(e as Map<String, dynamic>)).toList();
      });

  Future<Result<LedgerReport>> ledger(String accountId, DateTime from, DateTime to) =>
      guard(() => _one('/accountant/accounting/ledger/$accountId', LedgerReport.fromJson, query: _range(from, to)));

  Future<Result<TrialBalance>> trialBalance(DateTime asOf) => guard(
        () => _one('/accountant/accounting/trial-balance', TrialBalance.fromJson, query: {'as_of': apiDay(asOf)}),
      );

  Future<Result<ProfitAndLoss>> profitAndLoss(DateTime from, DateTime to) => guard(
        () => _one('/accountant/accounting/reports/profit-and-loss', ProfitAndLoss.fromJson, query: _range(from, to)),
      );

  Future<Result<BalanceSheet>> balanceSheet(DateTime asOf) => guard(
        () => _one('/accountant/accounting/reports/balance-sheet', BalanceSheet.fromJson, query: {'as_of': apiDay(asOf)}),
      );

  Future<Result<OutstandingReport>> outstanding(DateTime asOf) => guard(
        () => _one('/accountant/accounting/reports/outstanding', OutstandingReport.fromJson, query: {'as_of': apiDay(asOf)}),
      );

  Future<Result<DayBook>> dayBook(DateTime from, DateTime to) =>
      guard(() => _one('/accountant/accounting/reports/day-book', DayBook.fromJson, query: _range(from, to)));

  Future<Result<CashBankBook>> cashBook(DateTime from, DateTime to) =>
      guard(() => _one('/accountant/accounting/reports/cash-book', CashBankBook.fromJson, query: _range(from, to)));

  Future<Result<CashBankBook>> bankBook(DateTime from, DateTime to) =>
      guard(() => _one('/accountant/accounting/reports/bank-book', CashBankBook.fromJson, query: _range(from, to)));

  Future<Result<GstReport>> gst(DateTime from, DateTime to) =>
      guard(() => _one('/accountant/accounting/reports/gst', GstReport.fromJson, query: _range(from, to)));

  Future<Result<TdsReport>> tds(DateTime from, DateTime to) =>
      guard(() => _one('/accountant/accounting/reports/tds', TdsReport.fromJson, query: _range(from, to)));
}
