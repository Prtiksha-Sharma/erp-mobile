// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_homework.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TeacherHomework _$TeacherHomeworkFromJson(
  Map<String, dynamic> json,
) => _TeacherHomework(
  homeworkId: json['homework_id'] as String,
  type: json['type'] as String?,
  classId: json['class_id'] as String,
  sectionId: json['section_id'] as String,
  subjectId: json['subject_id'] as String,
  sessionId: json['session_id'] as String?,
  title: json['title'] as String,
  description: json['description'] as String?,
  attachmentUrl: json['attachment_url'] as String?,
  assignedDate: json['assigned_date'] == null
      ? null
      : DateTime.parse(json['assigned_date'] as String),
  dueDate: json['due_date'] == null
      ? null
      : DateTime.parse(json['due_date'] as String),
  classRef: json['classes'] == null
      ? null
      : ClassRef.fromJson(json['classes'] as Map<String, dynamic>),
  sectionRef: json['sections'] == null
      ? null
      : SectionRef.fromJson(json['sections'] as Map<String, dynamic>),
  subject: json['academic_subjects'] == null
      ? null
      : SubjectRef.fromJson(json['academic_subjects'] as Map<String, dynamic>),
  submissions:
      (json['submissions'] as List<dynamic>?)
          ?.map((e) => SubmissionStatusRef.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <SubmissionStatusRef>[],
);

Map<String, dynamic> _$TeacherHomeworkToJson(_TeacherHomework instance) =>
    <String, dynamic>{
      'homework_id': instance.homeworkId,
      'type': instance.type,
      'class_id': instance.classId,
      'section_id': instance.sectionId,
      'subject_id': instance.subjectId,
      'session_id': instance.sessionId,
      'title': instance.title,
      'description': instance.description,
      'attachment_url': instance.attachmentUrl,
      'assigned_date': instance.assignedDate?.toIso8601String(),
      'due_date': instance.dueDate?.toIso8601String(),
      'classes': instance.classRef,
      'sections': instance.sectionRef,
      'academic_subjects': instance.subject,
      'submissions': instance.submissions,
    };

_SubmissionStatusRef _$SubmissionStatusRefFromJson(Map<String, dynamic> json) =>
    _SubmissionStatusRef(
      submissionId: json['submission_id'] as String,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$SubmissionStatusRefToJson(
  _SubmissionStatusRef instance,
) => <String, dynamic>{
  'submission_id': instance.submissionId,
  'status': instance.status,
};

_TeacherSubmission _$TeacherSubmissionFromJson(Map<String, dynamic> json) =>
    _TeacherSubmission(
      submissionId: json['submission_id'] as String,
      homeworkId: json['homework_id'] as String?,
      status: json['status'] as String?,
      effectiveStatus: json['effective_status'] as String?,
      submittedAt: json['submitted_at'] == null
          ? null
          : DateTime.parse(json['submitted_at'] as String),
      attachmentUrl: json['attachment_url'] as String?,
      remark: json['remark'] as String?,
      remarkedAt: json['remarked_at'] == null
          ? null
          : DateTime.parse(json['remarked_at'] as String),
      student: json['students'] == null
          ? null
          : StudentBrief.fromJson(json['students'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TeacherSubmissionToJson(_TeacherSubmission instance) =>
    <String, dynamic>{
      'submission_id': instance.submissionId,
      'homework_id': instance.homeworkId,
      'status': instance.status,
      'effective_status': instance.effectiveStatus,
      'submitted_at': instance.submittedAt?.toIso8601String(),
      'attachment_url': instance.attachmentUrl,
      'remark': instance.remark,
      'remarked_at': instance.remarkedAt?.toIso8601String(),
      'students': instance.student,
    };

_HomeworkComment _$HomeworkCommentFromJson(Map<String, dynamic> json) =>
    _HomeworkComment(
      commentId: json['comment_id'] as String,
      commentText: json['comment_text'] as String,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      author: json['users'] == null
          ? null
          : CommentAuthor.fromJson(json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeworkCommentToJson(_HomeworkComment instance) =>
    <String, dynamic>{
      'comment_id': instance.commentId,
      'comment_text': instance.commentText,
      'created_at': instance.createdAt?.toIso8601String(),
      'users': instance.author,
    };

_CommentAuthor _$CommentAuthorFromJson(Map<String, dynamic> json) =>
    _CommentAuthor(
      userId: json['user_id'] as String?,
      username: json['username'] as String?,
      staffAccount: json['staff_account'] == null
          ? null
          : TeacherNameRef.fromJson(
              json['staff_account'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$CommentAuthorToJson(_CommentAuthor instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'username': instance.username,
      'staff_account': instance.staffAccount,
    };
