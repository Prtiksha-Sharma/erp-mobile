import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/teacher_profile.dart';
import '../../../core/models/teacher_summary.dart';

/// GET /parent/children/:studentId/teachers and GET /parent/teachers/:staffId
/// — both verified live. The second is NOT child-scoped (a parent can view
/// any teacher at the school, confirmed from parent.router.js's own
/// comment), so it takes staffId alone, no studentId.
class TeachersService {
  Future<Result<ChildTeachers>> getChildTeachers(String studentId) => guard(() async {
        final res = await DioClient.instance.dio.get('/parent/children/$studentId/teachers');
        return ChildTeachers.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  Future<Result<TeacherProfile>> getTeacherProfile(String staffId) => guard(() async {
        final res = await DioClient.instance.dio.get('/parent/teachers/$staffId');
        return TeacherProfile.fromJson(res.data['data'] as Map<String, dynamic>);
      });
}
