import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/fee_summary.dart';

/// GET /parent/children/:studentId/fees and
/// GET /parent/children/:studentId/fees/receipts/:receiptId — verified
/// live (see fee_summary.dart's own field-by-field verification notes).
class FeesService {
  Future<Result<FeeSummary>> getChildFeeSummary(String studentId) => guard(() async {
        final res = await DioClient.instance.dio.get('/parent/children/$studentId/fees');
        return FeeSummary.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  Future<Result<FeeReceipt>> getReceipt(String studentId, String receiptId) => guard(() async {
        final res =
            await DioClient.instance.dio.get('/parent/children/$studentId/fees/receipts/$receiptId');
        return FeeReceipt.fromJson(res.data['data'] as Map<String, dynamic>);
      });
}
