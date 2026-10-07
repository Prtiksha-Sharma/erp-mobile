// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_school_life_events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminSchoolEvent _$AdminSchoolEventFromJson(Map<String, dynamic> json) =>
    _AdminSchoolEvent(
      eventId: json['event_id'] as String,
      eventName: json['event_name'] as String,
      description: json['description'] as String?,
      eventDate: json['event_date'] == null
          ? null
          : DateTime.parse(json['event_date'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      approvalStatus: json['approval_status'] as String? ?? 'PENDING',
    );

Map<String, dynamic> _$AdminSchoolEventToJson(_AdminSchoolEvent instance) =>
    <String, dynamic>{
      'event_id': instance.eventId,
      'event_name': instance.eventName,
      'description': instance.description,
      'event_date': instance.eventDate?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'approval_status': instance.approvalStatus,
    };

_AdminSchoolEventPage _$AdminSchoolEventPageFromJson(
  Map<String, dynamic> json,
) => _AdminSchoolEventPage(
  total: (json['total'] as num?)?.toInt() ?? 0,
  page: (json['page'] as num?)?.toInt() ?? 1,
  limit: (json['limit'] as num?)?.toInt() ?? 20,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => AdminSchoolEvent.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AdminSchoolEvent>[],
);

Map<String, dynamic> _$AdminSchoolEventPageToJson(
  _AdminSchoolEventPage instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
  'data': instance.data,
};

_AdminSchoolActivity _$AdminSchoolActivityFromJson(Map<String, dynamic> json) =>
    _AdminSchoolActivity(
      activityId: json['activity_id'] as String,
      activityName: json['activity_name'] as String,
      description: json['description'] as String?,
      activityType: json['activity_type'] as String?,
      targetAudience: json['target_audience'] as String? ?? 'BOTH',
      activityDate: json['activity_date'] == null
          ? null
          : DateTime.parse(json['activity_date'] as String),
      venue: json['venue'] as String?,
      participantCount: (json['participant_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$AdminSchoolActivityToJson(
  _AdminSchoolActivity instance,
) => <String, dynamic>{
  'activity_id': instance.activityId,
  'activity_name': instance.activityName,
  'description': instance.description,
  'activity_type': instance.activityType,
  'target_audience': instance.targetAudience,
  'activity_date': instance.activityDate?.toIso8601String(),
  'venue': instance.venue,
  'participant_count': instance.participantCount,
};

_AdminSchoolActivityPage _$AdminSchoolActivityPageFromJson(
  Map<String, dynamic> json,
) => _AdminSchoolActivityPage(
  total: (json['total'] as num?)?.toInt() ?? 0,
  page: (json['page'] as num?)?.toInt() ?? 1,
  limit: (json['limit'] as num?)?.toInt() ?? 20,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => AdminSchoolActivity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AdminSchoolActivity>[],
);

Map<String, dynamic> _$AdminSchoolActivityPageToJson(
  _AdminSchoolActivityPage instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
  'data': instance.data,
};

_ParticipantStaffRef _$ParticipantStaffRefFromJson(Map<String, dynamic> json) =>
    _ParticipantStaffRef(
      staffId: json['staff_id'] as String?,
      employeeCode: json['employee_code'] as String?,
      fullName: json['full_name'] as String?,
    );

Map<String, dynamic> _$ParticipantStaffRefToJson(
  _ParticipantStaffRef instance,
) => <String, dynamic>{
  'staff_id': instance.staffId,
  'employee_code': instance.employeeCode,
  'full_name': instance.fullName,
};

_ActivityParticipant _$ActivityParticipantFromJson(Map<String, dynamic> json) =>
    _ActivityParticipant(
      participantId: json['participant_id'] as String,
      participantType: json['participant_type'] as String,
      result: json['result'] as String?,
      remarks: json['remarks'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      student: json['student'] == null
          ? null
          : StudentBrief.fromJson(json['student'] as Map<String, dynamic>),
      staff: json['staff'] == null
          ? null
          : ParticipantStaffRef.fromJson(json['staff'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActivityParticipantToJson(
  _ActivityParticipant instance,
) => <String, dynamic>{
  'participant_id': instance.participantId,
  'participant_type': instance.participantType,
  'result': instance.result,
  'remarks': instance.remarks,
  'created_at': instance.createdAt?.toIso8601String(),
  'student': instance.student,
  'staff': instance.staff,
};

_AddParticipantsResult _$AddParticipantsResultFromJson(
  Map<String, dynamic> json,
) => _AddParticipantsResult(
  added: (json['added'] as num?)?.toInt() ?? 0,
  skippedStudents:
      (json['skipped_students'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  skippedStaff:
      (json['skipped_staff'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
);

Map<String, dynamic> _$AddParticipantsResultToJson(
  _AddParticipantsResult instance,
) => <String, dynamic>{
  'added': instance.added,
  'skipped_students': instance.skippedStudents,
  'skipped_staff': instance.skippedStaff,
};
