// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SchoolNotice _$SchoolNoticeFromJson(Map<String, dynamic> json) =>
    _SchoolNotice(
      noticeId: json['notice_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      noticeDate: json['notice_date'] == null
          ? null
          : DateTime.parse(json['notice_date'] as String),
      attachmentUrl: json['attachment_url'] as String?,
    );

Map<String, dynamic> _$SchoolNoticeToJson(_SchoolNotice instance) =>
    <String, dynamic>{
      'notice_id': instance.noticeId,
      'title': instance.title,
      'description': instance.description,
      'notice_date': instance.noticeDate?.toIso8601String(),
      'attachment_url': instance.attachmentUrl,
    };

_SchoolEvent _$SchoolEventFromJson(Map<String, dynamic> json) => _SchoolEvent(
  eventId: json['event_id'] as String,
  eventName: json['event_name'] as String,
  description: json['description'] as String?,
  eventDate: json['event_date'] == null
      ? null
      : DateTime.parse(json['event_date'] as String),
);

Map<String, dynamic> _$SchoolEventToJson(_SchoolEvent instance) =>
    <String, dynamic>{
      'event_id': instance.eventId,
      'event_name': instance.eventName,
      'description': instance.description,
      'event_date': instance.eventDate?.toIso8601String(),
    };

_SchoolActivity _$SchoolActivityFromJson(Map<String, dynamic> json) =>
    _SchoolActivity(
      activityId: json['activity_id'] as String,
      activityName: json['activity_name'] as String,
      description: json['description'] as String?,
      activityType: json['activity_type'] as String?,
      targetAudience: json['target_audience'] as String?,
      activityDate: json['activity_date'] == null
          ? null
          : DateTime.parse(json['activity_date'] as String),
      venue: json['venue'] as String?,
    );

Map<String, dynamic> _$SchoolActivityToJson(_SchoolActivity instance) =>
    <String, dynamic>{
      'activity_id': instance.activityId,
      'activity_name': instance.activityName,
      'description': instance.description,
      'activity_type': instance.activityType,
      'target_audience': instance.targetAudience,
      'activity_date': instance.activityDate?.toIso8601String(),
      'venue': instance.venue,
    };
