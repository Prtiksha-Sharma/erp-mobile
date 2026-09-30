import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/grievance_ticket.dart';

/// GET/POST /parent/grievances, GET /parent/grievances/:ticketId,
/// POST /parent/grievances/:ticketId/responses — schema + source derived
/// (see grievance_ticket.dart's own comment on why no live example exists
/// this session).
class GrievancesService {
  Future<Result<List<GrievanceTicket>>> getMyGrievances() => guard(() async {
        final res = await DioClient.instance.dio.get('/parent/grievances');
        final data = res.data['data'] as List;
        return data.map((e) => GrievanceTicket.fromJson(e as Map<String, dynamic>)).toList();
      });

  Future<Result<GrievanceTicket>> getGrievance(String ticketId) => guard(() async {
        final res = await DioClient.instance.dio.get('/parent/grievances/$ticketId');
        return GrievanceTicket.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  Future<Result<GrievanceTicket>> fileGrievance({
    String? studentId,
    String? category,
    required String subject,
    required String description,
    String? priority,
  }) =>
      guard(() async {
        final res = await DioClient.instance.dio.post(
          '/parent/grievances',
          data: {
            'student_id': ?studentId,
            'category': ?category,
            'subject': subject,
            'description': description,
            'priority': ?priority,
          },
        );
        return GrievanceTicket.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  Future<Result<GrievanceResponse>> addResponse(String ticketId, String body) => guard(() async {
        final res = await DioClient.instance.dio.post(
          '/parent/grievances/$ticketId/responses',
          data: {'body': body},
        );
        return GrievanceResponse.fromJson(res.data['data'] as Map<String, dynamic>);
      });
}
