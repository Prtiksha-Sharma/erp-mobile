import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_lookups.dart';

/// Lookups shared by several School Admin areas.
class AdminLookupsService {
  Dio get _dio => DioClient.instance.dio;

  /// Classes with their sections — GET /admin/students/classes.
  Future<Result<List<AdminClassOption>>> getClasses() => guard(() async {
    final res = await _dio.get('/admin/students/classes');
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => AdminClassOption.fromJson(e as Map<String, dynamic>)).toList();
  });
}
