import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/child.dart';

/// GET /parent/children — see
/// edusoft_backend/src/features/parent/children.service.js#listMyChildren.
class ChildrenService {
  Future<Result<List<Child>>> listMyChildren() => guard(() async {
        final res = await DioClient.instance.dio.get('/parent/children');
        final data = res.data['data'] as List;
        return data.map((e) => Child.fromJson(e as Map<String, dynamic>)).toList();
      });
}
