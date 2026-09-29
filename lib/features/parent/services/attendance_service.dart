import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/attendance_summary.dart';

/// GET /parent/children/:studentId/attendance — verified live (see
/// parent-attendance planning notes: real response shape, real status
/// vocabulary, both confirmed against the running backend, not assumed
/// from reading source alone).
class AttendanceService {
  Future<Result<AttendanceSummary>> getChildAttendance(
    String studentId, {
    String period = 'month',
    String? date,
  }) =>
      guard(() async {
        final res = await DioClient.instance.dio.get(
          '/parent/children/$studentId/attendance',
          queryParameters: {
            'period': period,
            'date': ?date,
          },
        );
        return AttendanceSummary.fromJson(res.data['data'] as Map<String, dynamic>);
      });
}
