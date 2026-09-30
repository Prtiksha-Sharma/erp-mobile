import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_feed.freezed.dart';
part 'school_feed.g.dart';

/// Read-only institution-wide feeds (raw rows, no includes).

/// GET /teacher/notices — teacher/notices.service.js (active notices,
/// newest `notice_date` first).
@freezed
abstract class SchoolNotice with _$SchoolNotice {
  const factory SchoolNotice({
    @JsonKey(name: 'notice_id') required String noticeId,
    required String title,
    String? description,
    @JsonKey(name: 'notice_date') DateTime? noticeDate,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
  }) = _SchoolNotice;

  factory SchoolNotice.fromJson(Map<String, dynamic> json) => _$SchoolNoticeFromJson(json);
}

/// GET /teacher/events — teacher/events.service.js. Prisma `@map`s the
/// underlying activity_* columns, so the wire names are event_*.
@freezed
abstract class SchoolEvent with _$SchoolEvent {
  const factory SchoolEvent({
    @JsonKey(name: 'event_id') required String eventId,
    @JsonKey(name: 'event_name') required String eventName,
    String? description,
    @JsonKey(name: 'event_date') DateTime? eventDate,
  }) = _SchoolEvent;

  factory SchoolEvent.fromJson(Map<String, dynamic> json) => _$SchoolEventFromJson(json);
}

/// GET /teacher/activities — teacher/activities.service.js
/// (school_activities; `target_audience` defaults to BOTH).
@freezed
abstract class SchoolActivity with _$SchoolActivity {
  const factory SchoolActivity({
    @JsonKey(name: 'activity_id') required String activityId,
    @JsonKey(name: 'activity_name') required String activityName,
    String? description,
    @JsonKey(name: 'activity_type') String? activityType,
    @JsonKey(name: 'target_audience') String? targetAudience,
    @JsonKey(name: 'activity_date') DateTime? activityDate,
    String? venue,
  }) = _SchoolActivity;

  factory SchoolActivity.fromJson(Map<String, dynamic> json) => _$SchoolActivityFromJson(json);
}
