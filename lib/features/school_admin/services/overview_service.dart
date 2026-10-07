import 'package:decimal/decimal.dart';
import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_overview.dart';
import '../../../core/models/school_feed.dart';
import '../../../core/utils/json_converters.dart';

/// Every call behind the School Admin "overview" pages — the web's
/// dashboard/services (dashboardService.js + the five adminDashboard*
/// copies), attendance/services/attendanceAdminService.js +
/// attendanceStaffAdminService.js and audit-logs/services/auditLogsService.js.
/// Every route is School-Admin-callable (dashboard.router.js has no
/// authorize() beyond authenticate; fees/notices/academic/staff/student
/// routers all list 'School Admin'). Institution scoping comes from the JWT.
class AdminOverviewService {
  Dio get _dio => DioClient.instance.dio;

  Map<String, dynamic> _map(Response res) => res.data['data'] as Map<String, dynamic>? ?? const {};

  List<T> _list<T>(Object? raw, T Function(Map<String, dynamic>) fromJson) =>
      (raw as List? ?? const []).map((e) => fromJson(e as Map<String, dynamic>)).toList();

  // ── Dashboard ──────────────────────────────────────────────────────────

  Future<Result<AdminDashboardStats>> getStats() => guard(() async {
    final res = await _dio.get('/admin/dashboard/stats');
    return AdminDashboardStats.fromJson(_map(res));
  });

  /// `period=day` — today's student attendance counts.
  Future<Result<DashboardAttendanceToday>> getAttendanceToday() => guard(() async {
    final res = await _dio.get('/admin/dashboard/attendance-summary', queryParameters: {'period': 'day'});
    return DashboardAttendanceToday.fromJson(_map(res));
  });

  /// `{ "YYYY-MM": totalCollected }` over every month with PAID receipts
  /// (service-computed numbers).
  Future<Result<Map<String, Decimal>>> getFeeCollectionByMonth() => guard(() async {
    final res = await _dio.get('/admin/dashboard/fee-summary', queryParameters: {'period': 'month'});
    return {for (final e in _map(res).entries) e.key: parseDecimal(e.value) ?? Decimal.zero};
  });

  /// Students whose birthday is [day] (the web passes today's month/day
  /// explicitly, limit 10).
  Future<Result<List<DashboardBirthday>>> getBirthdays(DateTime day) => guard(() async {
    final res = await _dio.get(
      '/admin/dashboard/birthdays',
      queryParameters: {'month': day.month, 'day': day.day, 'limit': 10},
    );
    return _list(_map(res)['data'], DashboardBirthday.fromJson);
  });

  Future<Result<DashboardFeeSnapshot>> getFeeSnapshot() => guard(() async {
    final res = await _dio.get('/admin/fees/dashboard');
    return DashboardFeeSnapshot.fromJson(_map(res));
  });

  /// The 4 latest active notices (useDashboardNotices: page 1, limit 4,
  /// is_active true).
  Future<Result<List<SchoolNotice>>> getLatestNotices() => guard(() async {
    final res = await _dio.get('/admin/notices', queryParameters: {'page': 1, 'limit': 4, 'is_active': true});
    return _list(_map(res)['data'], SchoolNotice.fromJson);
  });

  /// Every exam of the institution — the widget filters "upcoming" itself
  /// (the endpoint has no date filter). The web also sends its Redux
  /// session_id; mobile has no session source, so all sessions come back.
  Future<Result<List<DashboardExamRow>>> getExams() => guard(() async {
    final res = await _dio.get('/admin/academic/exams');
    return _list(res.data['data'], DashboardExamRow.fromJson);
  });

  /// Homework (and assignments — no type filter, like the web) due between
  /// [from] and [to] (`YYYY-MM-DD`).
  Future<Result<List<DashboardHomeworkRow>>> getHomeworkDue({required String from, required String to}) =>
      guard(() async {
        final res = await _dio.get('/admin/academic/homework', queryParameters: {'from': from, 'to': to});
        return _list(res.data['data'], DashboardHomeworkRow.fromJson);
      });

  Future<Result<DashboardExamSummary>> getExamSummary() => guard(() async {
    final res = await _dio.get('/admin/dashboard/exam-summary');
    return DashboardExamSummary.fromJson(_map(res));
  });

  // ── Staff attendance ───────────────────────────────────────────────────

  /// [date] is `YYYY-MM-DD` (required — there's no useful default for a
  /// marking screen).
  Future<Result<StaffDailyAttendance>> getStaffDailyAttendance(String date) => guard(() async {
    final res = await _dio.get('/admin/staff/attendance/daily-report', queryParameters: {'date': date});
    return StaffDailyAttendance.fromJson(_map(res));
  });

  /// `records`: `[{ staff_id, status, remarks }]` — upserts each one.
  Future<Result<StaffBulkMarkResult>> bulkMarkStaffAttendance(String date, List<Map<String, dynamic>> records) =>
      guard(() async {
        final res = await _dio.post(
          '/admin/staff/attendance/bulk-mark',
          data: {'attendance_date': date, 'records': records},
        );
        return StaffBulkMarkResult.fromJson(_map(res));
      });

  /// Corrects an already-marked record: `{ status }` or `{ remarks }`.
  Future<Result<void>> editStaffAttendance(String attendanceId, Map<String, dynamic> payload) =>
      guard(() async => _dio.patch('/admin/staff/attendance/$attendanceId', data: payload));

  // ── Student attendance report ──────────────────────────────────────────

  Future<Result<OverviewAttendanceReport>> getAttendanceReport({
    required String from,
    required String to,
    String classId = '',
    String sectionId = '',
    int page = 1,
    int limit = 20,
  }) => guard(() async {
    final res = await _dio.get(
      '/admin/students/attendance/report',
      queryParameters: {
        'from': from,
        'to': to,
        if (classId.isNotEmpty) 'class_id': classId,
        if (sectionId.isNotEmpty) 'section_id': sectionId,
        'page': page,
        'limit': limit,
      },
    );
    return OverviewAttendanceReport.fromJson(_map(res));
  });

  // ── Activity logs ──────────────────────────────────────────────────────

  Future<Result<ActivityLogPage>> getActivityLogs({int page = 1, String module = ''}) => guard(() async {
    final res = await _dio.get(
      '/admin/students/audit/activity-logs',
      queryParameters: {'page': page, 'limit': 50, if (module.isNotEmpty) 'module': module},
    );
    return ActivityLogPage.fromJson(_map(res));
  });
}
