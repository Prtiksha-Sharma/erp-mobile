import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_finance.dart';
import '../../../core/models/admin_finance_reports.dart';

/// A `from`/`to` date filter as `YYYY-MM-DD` strings ('' = unset), the
/// web's `from_date`/`to_date` DatePicker values. A record, so it is
/// value-equal and can key a `.family` provider.
typedef FeeReportRange = ({String from, String to});

/// Payment History filters (AdminFeePaymentHistoryReportPage).
typedef PaymentHistoryQuery = ({String classId, String receiptNo, String paymentMode, String from, String to});

/// Online Payments filters (AdminFeeOnlinePaymentsReportPage).
typedef OnlinePaymentsQuery = ({String status, String from, String to});

/// `YYYY-MM-DD` for a picked calendar day (the web DatePicker's value).
String financeIsoDate(DateTime d) =>
    '${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

/// Every `/admin/fees/*` call the web's features/fees services make
/// (adminFeeDashboardService, adminFeeCategoryService, adminFeeHeadService,
/// adminFeeStructureService, adminFeeConcessionService,
/// adminTransportFeeRateService, adminFeeReportService), plus the two
/// pickers: GET /admin/transport/routes (useAdminRouteOptions) and the
/// active-session lookup the web gets from Redux.
///
/// Mutations are School-Admin-only on the backend (fees.router.js re-adds
/// `authorize('School Admin')`); blank optional params are omitted, the
/// same way the web's hooks spread them in only when set.
class AdminFeesService {
  Dio get _dio => DioClient.instance.dio;

  Future<List<T>> _list<T>(
    String path,
    T Function(Map<String, dynamic>) fromJson, [
    Map<String, dynamic>? params,
  ]) async {
    final res = await _dio.get(path, queryParameters: params);
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<Map<String, dynamic>> _object(String path, [Map<String, dynamic>? params]) async {
    final res = await _dio.get(path, queryParameters: params);
    return res.data['data'] as Map<String, dynamic>;
  }

  static Map<String, dynamic> _params(Map<String, String?> raw) => {
    for (final e in raw.entries)
      if (e.value != null && e.value!.isNotEmpty) e.key: e.value,
  };

  // ── Dashboard / lookups ────────────────────────────────────────────────

  Future<Result<AdminFeeDashboard>> getDashboard() =>
      guard(() async => AdminFeeDashboard.fromJson(await _object('/admin/fees/dashboard')));

  /// The active session (id + name) — see [FinanceActiveSession].
  Future<Result<FinanceActiveSession>> getActiveSession() =>
      guard(() async => FinanceActiveSession.fromJson(await _object('/admin/staff/class-teacher/overview')));

  Future<Result<List<FinanceRouteOption>>> getRoutes() =>
      guard(() => _list('/admin/transport/routes', FinanceRouteOption.fromJson));

  // ── Fee Categories ─────────────────────────────────────────────────────

  Future<Result<List<AdminFeeCategory>>> listCategories({bool? isActive}) => guard(
    () => _list('/admin/fees/categories', AdminFeeCategory.fromJson, _params({'is_active': isActive?.toString()})),
  );

  Future<Result<void>> createCategory(String name) =>
      guard(() async => _dio.post('/admin/fees/categories', data: {'category_name': name}));

  Future<Result<void>> updateCategory(String id, String name) =>
      guard(() async => _dio.patch('/admin/fees/categories/$id', data: {'category_name': name}));

  /// Soft deactivate (is_active = false).
  Future<Result<void>> deactivateCategory(String id) => guard(() async => _dio.delete('/admin/fees/categories/$id'));

  // ── Fee Heads ──────────────────────────────────────────────────────────

  Future<Result<List<AdminFeeHead>>> listHeads({bool? isActive}) =>
      guard(() => _list('/admin/fees/heads', AdminFeeHead.fromJson, _params({'is_active': isActive?.toString()})));

  Future<Result<void>> createHead(String name) =>
      guard(() async => _dio.post('/admin/fees/heads', data: {'fee_head_name': name}));

  Future<Result<void>> updateHead(String id, String name) =>
      guard(() async => _dio.patch('/admin/fees/heads/$id', data: {'fee_head_name': name}));

  Future<Result<void>> deactivateHead(String id) => guard(() async => _dio.delete('/admin/fees/heads/$id'));

  // ── Fee Structures ─────────────────────────────────────────────────────

  Future<Result<List<AdminFeeStructure>>> listStructures({String? classId, String? sessionId}) => guard(
    () => _list(
      '/admin/fees/structures',
      AdminFeeStructure.fromJson,
      _params({'class_id': classId, 'session_id': sessionId}),
    ),
  );

  /// [amount] is the typed text (the web sends `Number(form.amount)`).
  Future<Result<void>> createStructure({
    required String classId,
    required String sessionId,
    required String feeHeadId,
    String? feeCategoryId,
    required num amount,
    String? dueDate,
  }) => guard(
    () async => _dio.post(
      '/admin/fees/structures',
      data: {
        'class_id': classId,
        'session_id': sessionId,
        'fee_head_id': feeHeadId,
        if (feeCategoryId != null && feeCategoryId.isNotEmpty) 'fee_category_id': feeCategoryId,
        'amount': amount,
        if (dueDate != null && dueDate.isNotEmpty) 'due_date': dueDate,
      },
    ),
  );

  /// Only amount / due_date are editable (PATCH ignores identity fields).
  Future<Result<void>> updateStructure(String id, {required num amount, String? dueDate}) => guard(
    () async => _dio.patch(
      '/admin/fees/structures/$id',
      data: {'amount': amount, if (dueDate != null && dueDate.isNotEmpty) 'due_date': dueDate},
    ),
  );

  /// 409s once a receipt item links to the structure.
  Future<Result<void>> deleteStructure(String id) => guard(() async => _dio.delete('/admin/fees/structures/$id'));

  // ── Scholarships & Discounts ───────────────────────────────────────────

  Future<Result<List<AdminFeeConcession>>> listConcessions() =>
      guard(() => _list('/admin/fees/concessions', AdminFeeConcession.fromJson));

  Future<Result<void>> createConcession({
    required String name,
    required String concessionType,
    required String calculationType,
    required num value,
  }) => guard(
    () async => _dio.post(
      '/admin/fees/concessions',
      data: {'name': name, 'concession_type': concessionType, 'calculation_type': calculationType, 'value': value},
    ),
  );

  /// concession_type is identity — not sent on edit (same as the web).
  Future<Result<void>> updateConcession(
    String id, {
    required String name,
    required String calculationType,
    required num value,
  }) => guard(
    () async => _dio.patch(
      '/admin/fees/concessions/$id',
      data: {'name': name, 'calculation_type': calculationType, 'value': value},
    ),
  );

  Future<Result<void>> deactivateConcession(String id) => guard(() async => _dio.delete('/admin/fees/concessions/$id'));

  // ── Transport Fee Rates ────────────────────────────────────────────────

  Future<Result<List<AdminTransportFeeRate>>> listTransportRates({String? routeId, String? sessionId}) => guard(
    () => _list(
      '/admin/fees/transport-rates',
      AdminTransportFeeRate.fromJson,
      _params({'route_id': routeId, 'session_id': sessionId}),
    ),
  );

  Future<Result<void>> createTransportRate({
    required String routeId,
    String? stopId,
    required String sessionId,
    required String feeHeadId,
    required num amount,
  }) => guard(
    () async => _dio.post(
      '/admin/fees/transport-rates',
      data: {
        'route_id': routeId,
        if (stopId != null && stopId.isNotEmpty) 'stop_id': stopId,
        'session_id': sessionId,
        'fee_head_id': feeHeadId,
        'amount': amount,
      },
    ),
  );

  Future<Result<void>> updateTransportRate(String id, {required num amount}) =>
      guard(() async => _dio.patch('/admin/fees/transport-rates/$id', data: {'amount': amount}));

  Future<Result<void>> deleteTransportRate(String id) =>
      guard(() async => _dio.delete('/admin/fees/transport-rates/$id'));

  // ── Reports ────────────────────────────────────────────────────────────

  Future<Result<List<AdminFeeReceipt>>> getPaymentHistory(PaymentHistoryQuery q) => guard(
    () => _list(
      '/admin/fees/reports/payment-history',
      AdminFeeReceipt.fromJson,
      _params({
        'class_id': q.classId,
        'receipt_no': q.receiptNo,
        'payment_mode': q.paymentMode,
        'from_date': q.from,
        'to_date': q.to,
      }),
    ),
  );

  Future<Result<FeeCollectionReport>> getCollection(FeeReportRange r) => guard(
    () async => FeeCollectionReport.fromJson(
      await _object('/admin/fees/reports/collection', _params({'from_date': r.from, 'to_date': r.to})),
    ),
  );

  Future<Result<FeeCollectionReport>> getDailyCollection(String date) => guard(
    () async =>
        FeeCollectionReport.fromJson(await _object('/admin/fees/reports/daily-collection', _params({'date': date}))),
  );

  Future<Result<List<ClassWiseCollectionRow>>> getClassWiseCollection(FeeReportRange r) => guard(
    () => _list(
      '/admin/fees/reports/class-wise-collection',
      ClassWiseCollectionRow.fromJson,
      _params({'from_date': r.from, 'to_date': r.to}),
    ),
  );

  Future<Result<OutstandingFeeReport>> getOutstanding(String classId) => guard(
    () async =>
        OutstandingFeeReport.fromJson(await _object('/admin/fees/reports/outstanding', _params({'class_id': classId}))),
  );

  Future<Result<List<ScholarshipAssignment>>> getScholarships() =>
      guard(() => _list('/admin/fees/reports/scholarships', ScholarshipAssignment.fromJson));

  Future<Result<List<AdminOnlinePayment>>> getOnlinePayments(OnlinePaymentsQuery q) => guard(
    () => _list(
      '/admin/fees/online-payments',
      AdminOnlinePayment.fromJson,
      _params({'payment_status': q.status, 'from_date': q.from, 'to_date': q.to}),
    ),
  );

  Future<Result<FeeRefundReport>> getRefunds(FeeReportRange r) => guard(
    () async => FeeRefundReport.fromJson(
      await _object('/admin/fees/reports/refunds', _params({'from_date': r.from, 'to_date': r.to})),
    ),
  );
}
