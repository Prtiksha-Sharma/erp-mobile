import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/fee_summary.dart';

/// GET/POST /parent/children/:studentId/fee-plan — verified by direct read
/// of parent/feePlan.controller.js + utils/feeInstallments.js#getFeePlan /
/// #selectFeePlan (this test account has no live plans to observe on the
/// wire). Both responses reuse FeePlanEntry as-is: the GET wraps a list of
/// them in `{plans: [...]}`, unwrapped here; the POST returns exactly one
/// entry directly (utils/feeInstallments.js:137-141 / :202-208 — identical
/// `{plan, fee_head_name, installments}` shape either way).
class FeePlanService {
  Future<Result<List<FeePlanEntry>>> getFeePlans(String studentId) => guard(() async {
        final res = await DioClient.instance.dio.get('/parent/children/$studentId/fee-plan');
        final data = res.data['data'] as Map<String, dynamic>;
        final plans = (data['plans'] as List).cast<Map<String, dynamic>>();
        return plans.map(FeePlanEntry.fromJson).toList();
      });

  Future<Result<FeePlanEntry>> selectFeePlan(
    String studentId, {
    required String feeHeadId,
    required String frequency,
  }) =>
      guard(() async {
        final res = await DioClient.instance.dio.post(
          '/parent/children/$studentId/fee-plan',
          data: {'fee_head_id': feeHeadId, 'frequency': frequency},
        );
        return FeePlanEntry.fromJson(res.data['data'] as Map<String, dynamic>);
      });
}
