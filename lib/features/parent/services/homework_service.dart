import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/homework_submission.dart';

/// GET /parent/children/:studentId/{homework,assignments} — verified live,
/// identical response shape for both, hence one model and one parse helper
/// shared by two thin methods.
class HomeworkService {
  Future<Result<List<HomeworkSubmission>>> getChildHomework(String studentId) =>
      _fetch('/parent/children/$studentId/homework');

  Future<Result<List<HomeworkSubmission>>> getChildAssignments(String studentId) =>
      _fetch('/parent/children/$studentId/assignments');

  Future<Result<List<HomeworkSubmission>>> _fetch(String path) => guard(() async {
        final res = await DioClient.instance.dio.get(path);
        final data = res.data['data'] as List;
        return data.map((e) => HomeworkSubmission.fromJson(e as Map<String, dynamic>)).toList();
      });
}
