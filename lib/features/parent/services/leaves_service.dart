import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/leave_record.dart';

/// GET/POST /parent/children/:studentId/leaves — verified live. No
/// cancel/withdraw route exists for Parent (confirmed in parent.router.js
/// — only GET and POST are mounted), so this service has no third method.
class LeavesService {
  Future<Result<List<LeaveRecord>>> getChildLeaves(String studentId) => guard(() async {
        final res = await DioClient.instance.dio.get('/parent/children/$studentId/leaves');
        final data = res.data['data'] as List;
        return data.map((e) => LeaveRecord.fromJson(e as Map<String, dynamic>)).toList();
      });

  Future<Result<LeaveRecord>> applyLeave(
    String studentId, {
    required String leaveType,
    required DateTime fromDate,
    required DateTime toDate,
    required String reason,
    String? attachmentUrl,
  }) =>
      guard(() async {
        final res = await DioClient.instance.dio.post(
          '/parent/children/$studentId/leaves',
          data: {
            'leave_type': leaveType,
            'from_date': fromDate.toIso8601String().split('T').first,
            'to_date': toDate.toIso8601String().split('T').first,
            'reason': reason,
            'attachment_url': ?attachmentUrl,
          },
        );
        return LeaveRecord.fromJson(res.data['data'] as Map<String, dynamic>);
      });
}
