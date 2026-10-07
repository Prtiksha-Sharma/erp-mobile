import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_finance.dart';
import '../../../core/models/admin_finance_payroll.dart';
import '../../../core/models/admin_finance_reports.dart';
import '../services/finance_fees_service.dart';
import '../services/finance_payroll_service.dart';

/// Read providers for Fees (web features/fees hooks) and HR & Payroll
/// (web features/payroll hooks). Each watches the logged-in userId so a
/// different admin on the same device re-fetches; failures are thrown as
/// the Failure itself, same as school_admin_providers.dart.
Future<T> _fees<T>(Ref ref, Future<Result<T>> Function(AdminFeesService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return _unwrap(await call(AdminFeesService()));
}

Future<T> _payroll<T>(Ref ref, Future<Result<T>> Function(AdminPayrollService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return _unwrap(await call(AdminPayrollService()));
}

T _unwrap<T>(Result<T> result) => switch (result) {
  Ok(:final value) => value,
  Err(:final failure) => throw failure,
};

// ── Fees: dashboard + lookups ────────────────────────────────────────────

final feeDashboardProvider = FutureProvider<AdminFeeDashboard>((ref) => _fees(ref, (s) => s.getDashboard()));

/// The active academic session (the web's Redux `sessionId`/`sessionLabel`).
/// `null` when the school has none — the backend answers that with a 400
/// ("No active academic session found for your institution"), which is a
/// state, not an error, for the lists that only *filter* by session.
final financeActiveSessionProvider = FutureProvider<FinanceActiveSession?>((ref) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  final result = await AdminFeesService().getActiveSession();
  return switch (result) {
    Ok(:final value) => value,
    Err(failure: ValidationFailure()) => null,
    Err(:final failure) => throw failure,
  };
});

/// The session to filter session-scoped lists by — like the web, no
/// filter when the session isn't known.
Future<String?> _sessionFilter(Ref ref) async {
  try {
    return (await ref.watch(financeActiveSessionProvider.future))?.sessionId;
  } catch (_) {
    return null;
  }
}

/// useAdminRouteOptions — GET /admin/transport/routes.
final financeRouteOptionsProvider = FutureProvider<List<FinanceRouteOption>>((ref) => _fees(ref, (s) => s.getRoutes()));

// ── Fees: catalog ────────────────────────────────────────────────────────

/// useAdminFeeCategoryList({ isActive }) — `null` lists every category.
final feeCategoriesProvider = FutureProvider.family<List<AdminFeeCategory>, bool?>(
  (ref, isActive) => _fees(ref, (s) => s.listCategories(isActive: isActive)),
);

/// useAdminFeeHeadList({ isActive }).
final feeHeadsProvider = FutureProvider.family<List<AdminFeeHead>, bool?>(
  (ref, isActive) => _fees(ref, (s) => s.listHeads(isActive: isActive)),
);

/// useAdminFeeStructureList({ classId, sessionId }) — keyed by class id
/// ('' = all classes); scoped to the active session.
final feeStructuresProvider = FutureProvider.family<List<AdminFeeStructure>, String>((ref, classId) async {
  final sessionId = await _sessionFilter(ref);
  return _fees(ref, (s) => s.listStructures(classId: classId, sessionId: sessionId));
});

final feeConcessionsProvider = FutureProvider<List<AdminFeeConcession>>(
  (ref) => _fees(ref, (s) => s.listConcessions()),
);

/// useAdminTransportFeeRateList({ routeId, sessionId }) — keyed by route id.
final transportFeeRatesProvider = FutureProvider.family<List<AdminTransportFeeRate>, String>((ref, routeId) async {
  final sessionId = await _sessionFilter(ref);
  return _fees(ref, (s) => s.listTransportRates(routeId: routeId, sessionId: sessionId));
});

// ── Fees: reports ────────────────────────────────────────────────────────

final feePaymentHistoryProvider = FutureProvider.family<List<AdminFeeReceipt>, PaymentHistoryQuery>(
  (ref, q) => _fees(ref, (s) => s.getPaymentHistory(q)),
);

final feeCollectionReportProvider = FutureProvider.family<FeeCollectionReport, FeeReportRange>(
  (ref, r) => _fees(ref, (s) => s.getCollection(r)),
);

/// Keyed by `YYYY-MM-DD`.
final feeDailyCollectionProvider = FutureProvider.family<FeeCollectionReport, String>(
  (ref, date) => _fees(ref, (s) => s.getDailyCollection(date)),
);

final feeClassWiseCollectionProvider = FutureProvider.family<List<ClassWiseCollectionRow>, FeeReportRange>(
  (ref, r) => _fees(ref, (s) => s.getClassWiseCollection(r)),
);

/// Keyed by class id ('' = all classes).
final feeOutstandingReportProvider = FutureProvider.family<OutstandingFeeReport, String>(
  (ref, classId) => _fees(ref, (s) => s.getOutstanding(classId)),
);

final feeScholarshipReportProvider = FutureProvider<List<ScholarshipAssignment>>(
  (ref) => _fees(ref, (s) => s.getScholarships()),
);

final feeOnlinePaymentsProvider = FutureProvider.family<List<AdminOnlinePayment>, OnlinePaymentsQuery>(
  (ref, q) => _fees(ref, (s) => s.getOnlinePayments(q)),
);

final feeRefundReportProvider = FutureProvider.family<FeeRefundReport, FeeReportRange>(
  (ref, r) => _fees(ref, (s) => s.getRefunds(r)),
);

// ── HR & Payroll ─────────────────────────────────────────────────────────

final payrollSettingsProvider = FutureProvider<PayrollSettings>((ref) => _payroll(ref, (s) => s.getSettings()));

final payrollTemplatesProvider = FutureProvider<List<PayrollSalaryTemplate>>(
  (ref) => _payroll(ref, (s) => s.listTemplates()),
);

/// usePayslips(month, year).
final payslipsProvider = FutureProvider.family<List<Payslip>, ({int month, int year})>(
  (ref, p) => _payroll(ref, (s) => s.listPayslips(month: p.month, year: p.year)),
);
