import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/timetable_entry.dart';

/// GET /parent/children/:studentId/timetable — verified live. Flat array,
/// no wrapper envelope (same shape as Homework, unlike Attendance's
/// {from,to,total,data}).
class TimetableService {
  Future<Result<List<TimetableEntry>>> getChildTimetable(String studentId) => guard(() async {
        final res = await DioClient.instance.dio.get('/parent/children/$studentId/timetable');
        final data = res.data['data'] as List;
        return data.map((e) => TimetableEntry.fromJson(e as Map<String, dynamic>)).toList();
      });
}
