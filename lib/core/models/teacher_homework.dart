import 'package:freezed_annotation/freezed_annotation.dart';

import 'academic_refs.dart';
import 'student_brief.dart';
import 'subject_ref.dart';
import 'timetable_entry.dart';

part 'teacher_homework.freezed.dart';
part 'teacher_homework.g.dart';

/// GET /teacher/homework and /teacher/assignments —
/// teacher/homework.service.js#listMyHomework: the teacher's own
/// academic_homework rows (`type` HOMEWORK | ASSIGNMENT) with
/// classes/sections/academic_subjects and a slim `submissions` list
/// (`{ submission_id, status }` only) used for the dashboard's
/// "Submitted" badge.
@freezed
abstract class TeacherHomework with _$TeacherHomework {
  const factory TeacherHomework({
    @JsonKey(name: 'homework_id') required String homeworkId,
    String? type,
    @JsonKey(name: 'class_id') required String classId,
    @JsonKey(name: 'section_id') required String sectionId,
    @JsonKey(name: 'subject_id') required String subjectId,
    @JsonKey(name: 'session_id') String? sessionId,
    required String title,
    String? description,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
    @JsonKey(name: 'assigned_date') DateTime? assignedDate,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @JsonKey(name: 'classes') ClassRef? classRef,
    @JsonKey(name: 'sections') SectionRef? sectionRef,
    @JsonKey(name: 'academic_subjects') SubjectRef? subject,
    @Default(<SubmissionStatusRef>[]) List<SubmissionStatusRef> submissions,
  }) = _TeacherHomework;

  factory TeacherHomework.fromJson(Map<String, dynamic> json) => _$TeacherHomeworkFromJson(json);
}

@freezed
abstract class SubmissionStatusRef with _$SubmissionStatusRef {
  const factory SubmissionStatusRef({
    @JsonKey(name: 'submission_id') required String submissionId,
    String? status,
  }) = _SubmissionStatusRef;

  factory SubmissionStatusRef.fromJson(Map<String, dynamic> json) => _$SubmissionStatusRefFromJson(json);
}

/// GET /teacher/{homework,assignments}/:id/submissions —
/// teacher/homework.service.js#getSubmissions: every student's submission
/// row (pre-created as PENDING when the work is assigned) plus the
/// server-computed `effective_status` (PENDING past the due date → MISSING).
/// Statuses stay Strings so an unexpected value still renders.
@freezed
abstract class TeacherSubmission with _$TeacherSubmission {
  const factory TeacherSubmission({
    @JsonKey(name: 'submission_id') required String submissionId,
    @JsonKey(name: 'homework_id') String? homeworkId,
    String? status,
    @JsonKey(name: 'effective_status') String? effectiveStatus,
    @JsonKey(name: 'submitted_at') DateTime? submittedAt,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
    String? remark,
    @JsonKey(name: 'remarked_at') DateTime? remarkedAt,
    @JsonKey(name: 'students') StudentBrief? student,
  }) = _TeacherSubmission;

  factory TeacherSubmission.fromJson(Map<String, dynamic> json) => _$TeacherSubmissionFromJson(json);
}

/// GET /teacher/{homework,assignments}/:id/comments —
/// teacher/homework.service.js#listComments (append-only thread; author via
/// `users { user_id, username, staff_account { full_name } }`).
@freezed
abstract class HomeworkComment with _$HomeworkComment {
  const factory HomeworkComment({
    @JsonKey(name: 'comment_id') required String commentId,
    @JsonKey(name: 'comment_text') required String commentText,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'users') CommentAuthor? author,
  }) = _HomeworkComment;

  factory HomeworkComment.fromJson(Map<String, dynamic> json) => _$HomeworkCommentFromJson(json);
}

@freezed
abstract class CommentAuthor with _$CommentAuthor {
  const factory CommentAuthor({
    @JsonKey(name: 'user_id') String? userId,
    String? username,
    @JsonKey(name: 'staff_account') TeacherNameRef? staffAccount,
  }) = _CommentAuthor;

  factory CommentAuthor.fromJson(Map<String, dynamic> json) => _$CommentAuthorFromJson(json);
}
