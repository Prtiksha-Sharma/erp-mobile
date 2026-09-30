import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/activity_item.dart';
import '../../../core/models/calendar_entry.dart';
import '../../../core/models/event_item.dart';

/// GET /parent/{events,calendar,activities} and
/// GET /parent/children/:studentId/activities — all verified live except
/// calendar, whose live response was a genuinely empty array (see
/// calendar_entry.dart's own comment on why that model is schema-derived).
class SchoolUpdatesService {
  Future<Result<List<EventItem>>> getEvents() => guard(() async {
        final res = await DioClient.instance.dio.get('/parent/events');
        final data = res.data['data'] as List;
        return data.map((e) => EventItem.fromJson(e as Map<String, dynamic>)).toList();
      });

  Future<Result<List<CalendarEntry>>> getCalendar() => guard(() async {
        final res = await DioClient.instance.dio.get('/parent/calendar');
        final data = res.data['data'] as List;
        return data.map((e) => CalendarEntry.fromJson(e as Map<String, dynamic>)).toList();
      });

  Future<Result<List<ActivityItem>>> getActivities() => guard(() async {
        final res = await DioClient.instance.dio.get('/parent/activities');
        final data = res.data['data'] as List;
        return data.map((e) => ActivityItem.fromJson(e as Map<String, dynamic>)).toList();
      });

  Future<Result<List<ActivityParticipation>>> getChildActivities(String studentId) => guard(() async {
        final res = await DioClient.instance.dio.get('/parent/children/$studentId/activities');
        final data = res.data['data'] as List;
        return data.map((e) => ActivityParticipation.fromJson(e as Map<String, dynamic>)).toList();
      });
}
