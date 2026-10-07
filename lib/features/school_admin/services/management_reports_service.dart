import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_management_reports.dart';

/// Every call the web's reports/services/reportsService.js makes except the
/// attendance report (another area's page) — backend admin/student/
/// student.router.js `/reports/*` + `/leaves`, all open to School Admin.
class AdminReportsService {
  Dio get _dio => DioClient.instance.dio;

  Map<String, dynamic> _map(Response<dynamic> res) => (res.data['data'] as Map?)?.cast<String, dynamic>() ?? const {};

  /// `{ STATUS: count }` — getStatusSummary.
  Future<Result<Map<String, int>>> getStudentStatus() => guard(() async {
    final res = await _dio.get('/admin/students/reports/status');
    return _counts(_map(res));
  });

  /// `{ gender: count }` — getGenderReport (missing gender buckets as UNKNOWN).
  Future<Result<Map<String, int>>> getGender() => guard(() async {
    final res = await _dio.get('/admin/students/reports/gender');
    return _counts(_map(res));
  });

  Future<Result<List<ClassStrengthRow>>> getClassStrength() => guard(() async {
    final res = await _dio.get('/admin/students/reports/strength');
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => ClassStrengthRow.fromJson(e as Map<String, dynamic>)).toList();
  });

  Future<Result<List<PromotionReportRow>>> getPromotions() => guard(() async {
    final res = await _dio.get('/admin/students/reports/promotion');
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => PromotionReportRow.fromJson(e as Map<String, dynamic>)).toList();
  });

  /// Same params as the web's useBirthdayReport (`day` only when chosen).
  Future<Result<BirthdayReportPage>> getBirthdays({required int month, int? day, int page = 1}) => guard(() async {
    final res = await _dio.get(
      '/admin/students/reports/birthday',
      queryParameters: {'month': month, 'page': page, 'limit': 20, 'day': ?day},
    );
    return BirthdayReportPage.fromJson(_map(res));
  });

  /// The web also sends `status`/`page`/`limit`, which getAdmissionReport
  /// ignores — it always returns every student, so filtering and paging
  /// happen on the device (see the Admission Report screen).
  Future<Result<AdmissionReportResult>> getAdmissions() => guard(() async {
    final res = await _dio.get('/admin/students/reports/admission');
    return AdmissionReportResult.fromJson(_map(res));
  });

  Future<Result<StudentProfileReport>> getStudentProfile(String studentId) => guard(() async {
    final res = await _dio.get('/admin/students/reports/profile/$studentId');
    return StudentProfileReport.fromJson(_map(res));
  });

  /// GET /admin/students/leaves — the same list the Leaves page uses.
  Future<Result<LeaveReportPage>> getLeaves(LeaveReportQuery q) => guard(() async {
    final res = await _dio.get('/admin/students/leaves', queryParameters: q.toParams());
    return LeaveReportPage.fromJson(_map(res));
  });

  static Map<String, int> _counts(Map<String, dynamic> raw) => {
    for (final e in raw.entries) e.key: (e.value is num ? (e.value as num).toInt() : int.tryParse('${e.value}') ?? 0),
  };
}

/// useLeaveReport's params; value-equal so it can key a family provider.
class LeaveReportQuery {
  const LeaveReportQuery({this.status = '', this.leaveType = '', this.page = 1, this.limit = 20});

  final String status;
  final String leaveType;
  final int page;
  final int limit;

  LeaveReportQuery copyWith({String? status, String? leaveType, int? page}) => LeaveReportQuery(
    status: status ?? this.status,
    leaveType: leaveType ?? this.leaveType,
    page: page ?? this.page,
    limit: limit,
  );

  Map<String, dynamic> toParams() => {
    'page': page,
    'limit': limit,
    if (status.isNotEmpty) 'status': status,
    if (leaveType.isNotEmpty) 'leave_type': leaveType,
  };

  @override
  bool operator ==(Object other) =>
      other is LeaveReportQuery &&
      other.status == status &&
      other.leaveType == leaveType &&
      other.page == page &&
      other.limit == limit;

  @override
  int get hashCode => Object.hash(status, leaveType, page, limit);
}

/// useBirthdayReport's params.
typedef BirthdayReportQuery = ({int month, int? day, int page});
