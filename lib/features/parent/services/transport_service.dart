import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/transport_info.dart';

/// GET /parent/children/:studentId/transport — verified live. Unlike
/// every other Parent endpoint so far, the entire `data` payload can be
/// null (no transport assignment exists for this child at all) — handled
/// here explicitly, not left for the model layer to guess at.
class TransportService {
  Future<Result<TransportInfo?>> getChildTransport(String studentId) => guard(() async {
        final res = await DioClient.instance.dio.get('/parent/children/$studentId/transport');
        final data = res.data['data'];
        if (data == null) return null;
        return TransportInfo.fromJson(data as Map<String, dynamic>);
      });
}
