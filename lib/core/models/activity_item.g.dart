// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActivityItem _$ActivityItemFromJson(Map<String, dynamic> json) =>
    _ActivityItem(
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

Map<String, dynamic> _$ActivityItemToJson(_ActivityItem instance) =>
    <String, dynamic>{
      'activity_id': instance.activityId,
      'activity_name': instance.activityName,
      'description': instance.description,
      'activity_type': instance.activityType,
      'target_audience': instance.targetAudience,
      'activity_date': instance.activityDate?.toIso8601String(),
      'venue': instance.venue,
    };

_ActivityParticipationInfo _$ActivityParticipationInfoFromJson(
  Map<String, dynamic> json,
) => _ActivityParticipationInfo(
  activityId: json['activity_id'] as String,
  activityName: json['activity_name'] as String,
  description: json['description'] as String?,
  activityType: json['activity_type'] as String?,
  activityDate: json['activity_date'] == null
      ? null
      : DateTime.parse(json['activity_date'] as String),
  venue: json['venue'] as String?,
);

Map<String, dynamic> _$ActivityParticipationInfoToJson(
  _ActivityParticipationInfo instance,
) => <String, dynamic>{
  'activity_id': instance.activityId,
  'activity_name': instance.activityName,
  'description': instance.description,
  'activity_type': instance.activityType,
  'activity_date': instance.activityDate?.toIso8601String(),
  'venue': instance.venue,
};

_ActivityParticipation _$ActivityParticipationFromJson(
  Map<String, dynamic> json,
) => _ActivityParticipation(
  participantId: json['participant_id'] as String,
  result: json['result'] as String?,
  remarks: json['remarks'] as String?,
  activity: ActivityParticipationInfo.fromJson(
    json['activity'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ActivityParticipationToJson(
  _ActivityParticipation instance,
) => <String, dynamic>{
  'participant_id': instance.participantId,
  'result': instance.result,
  'remarks': instance.remarks,
  'activity': instance.activity,
};
