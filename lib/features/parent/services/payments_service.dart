import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/payment.dart';

/// POST /parent/children/:studentId/fees/pay-initiate, POST
/// .../fees/pay-installment, and GET /parent/payments/status/:orderId —
/// verified by direct read of parent/payments.controller.js +
/// parent/payments.service.js (this account's token expired before a fresh
/// login could capture these live; field names/shapes are read straight
/// from the controller's own destructuring, not guessed).
class PaymentsService {
  /// Omitting [feeStructureIds] pays every currently-pending item
  /// (payments.service.js#initiate falls back to `items.filter(net_due > 0)`
  /// when the body's feeStructureIds is empty/absent).
  Future<Result<PaymentInitiation>> payDues(String studentId, {List<String>? feeStructureIds}) =>
      guard(() async {
        final res = await DioClient.instance.dio.post(
          '/parent/children/$studentId/fees/pay-initiate',
          data: {'feeStructureIds': ?feeStructureIds},
        );
        return PaymentInitiation.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  Future<Result<PaymentInitiation>> payInstallment(String studentId, String installmentId) =>
      guard(() async {
        final res = await DioClient.instance.dio.post(
          '/parent/children/$studentId/fees/pay-installment',
          data: {'installmentId': installmentId},
        );
        return PaymentInitiation.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  /// [merchantOrderId] as returned by payDues/payInstallment already carries
  /// the `fee-` prefix checkStatusHandler expects — passed straight through.
  Future<Result<PaymentStatusResult>> checkStatus(String merchantOrderId) => guard(() async {
        final res = await DioClient.instance.dio.get('/parent/payments/status/$merchantOrderId');
        return PaymentStatusResult.fromJson(res.data['data'] as Map<String, dynamic>);
      });
}
