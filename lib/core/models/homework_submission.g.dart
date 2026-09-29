// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework_submission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TeacherRef _$TeacherRefFromJson(Map<String, dynamic> json) =>
    _TeacherRef(username: json['username'] as String);

Map<String, dynamic> _$TeacherRefToJson(_TeacherRef instance) =>
    <String, dynamic>{'username': instance.username};

_HomeworkInfo _$HomeworkInfoFromJson(Map<String, dynamic> json) =>
    _HomeworkInfo(
      title: json['title'] as String,
      description: json['description'] as String?,
      dueDate: DateTime.parse(json['due_date'] as String),
      assignedDate: DateTime.parse(json['assigned_date'] as String),
      attachmentUrl: json['attachment_url'] as String?,
      subject: SubjectRef.fromJson(
        json['academic_subjects'] as Map<String, dynamic>,
      ),
      assignedBy: TeacherRef.fromJson(json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeworkInfoToJson(_HomeworkInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'due_date': instance.dueDate.toIso8601String(),
      'assigned_date': instance.assignedDate.toIso8601String(),
      'attachment_url': instance.attachmentUrl,
      'academic_subjects': instance.subject,
      'users': instance.assignedBy,
    };

_HomeworkSubmission _$HomeworkSubmissionFromJson(Map<String, dynamic> json) =>
    _HomeworkSubmission(
      submissionId: json['submission_id'] as String,
      homeworkId: json['homework_id'] as String,
      status: $enumDecode(
        _$HomeworkStatusEnumMap,
        json['status'],
        unknownValue: HomeworkStatus.unknown,
      ),
      effectiveStatus: $enumDecode(
        _$HomeworkStatusEnumMap,
        json['effective_status'],
        unknownValue: HomeworkStatus.unknown,
      ),
      submittedAt: json['submitted_at'] == null
          ? null
          : DateTime.parse(json['submitted_at'] as String),
      attachmentUrl: json['attachment_url'] as String?,
      remark: json['remark'] as String?,
      remarkedAt: json['remarked_at'] == null
          ? null
          : DateTime.parse(json['remarked_at'] as String),
      homework: HomeworkInfo.fromJson(
        json['academic_homework'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$HomeworkSubmissionToJson(_HomeworkSubmission instance) =>
    <String, dynamic>{
      'submission_id': instance.submissionId,
      'homework_id': instance.homeworkId,
      'status': _$HomeworkStatusEnumMap[instance.status]!,
      'effective_status': _$HomeworkStatusEnumMap[instance.effectiveStatus]!,
      'submitted_at': instance.submittedAt?.toIso8601String(),
      'attachment_url': instance.attachmentUrl,
      'remark': instance.remark,
      'remarked_at': instance.remarkedAt?.toIso8601String(),
      'academic_homework': instance.homework,
    };

const _$HomeworkStatusEnumMap = {
  HomeworkStatus.pending: 'PENDING',
  HomeworkStatus.submitted: 'SUBMITTED',
  HomeworkStatus.missing: 'MISSING',
  HomeworkStatus.unknown: 'unknown',
};
