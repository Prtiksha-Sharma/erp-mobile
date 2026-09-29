import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'subject_ref.dart';

part 'homework_submission.freezed.dart';
part 'homework_submission.g.dart';

/// Shared by both `status` (raw — only ever PENDING/SUBMITTED in practice)
/// and `effective_status` (server-computed — adds MISSING when a PENDING
/// item's due_date has passed; see student/homework.service.js
/// #withEffectiveStatus). One enum for both since `status` never actually
/// carries MISSING itself.
enum HomeworkStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('SUBMITTED')
  submitted,
  @JsonValue('MISSING')
  missing,
  unknown,
}

extension HomeworkStatusDisplay on HomeworkStatus {
  String get label => switch (this) {
        HomeworkStatus.pending => 'Pending',
        HomeworkStatus.submitted => 'Submitted',
        HomeworkStatus.missing => 'Missing',
        HomeworkStatus.unknown => 'Unknown',
      };

  // Same palette as attendance_record.dart — kept consistent across the app.
  Color get color => switch (this) {
        HomeworkStatus.pending => const Color(0xFFD97706), // --color-warning
        HomeworkStatus.submitted => const Color(0xFF16A34A), // --color-success
        HomeworkStatus.missing => const Color(0xFFDC2626), // --color-danger
        HomeworkStatus.unknown => const Color(0xFF64748B),
      };
}

/// The assigning teacher — the API only ever returns their login username,
/// never a display name (verified live: `users: { user_id, username }`,
/// no staff_accounts.full_name join). Not fixable client-side — the
/// screen shows this username as-is, there's no better name to show.
@freezed
abstract class TeacherRef with _$TeacherRef {
  const factory TeacherRef({
    required String username,
  }) = _TeacherRef;

  factory TeacherRef.fromJson(Map<String, dynamic> json) => _$TeacherRefFromJson(json);
}

@freezed
abstract class HomeworkInfo with _$HomeworkInfo {
  const factory HomeworkInfo({
    required String title,
    String? description,
    @JsonKey(name: 'due_date') required DateTime dueDate,
    @JsonKey(name: 'assigned_date') required DateTime assignedDate,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
    @JsonKey(name: 'academic_subjects') required SubjectRef subject,
    @JsonKey(name: 'users') required TeacherRef assignedBy,
  }) = _HomeworkInfo;

  factory HomeworkInfo.fromJson(Map<String, dynamic> json) => _$HomeworkInfoFromJson(json);
}

/// Matches GET /parent/children/:studentId/homework and .../assignments —
/// verified live, identical shape for both (only `academic_homework.type`
/// differs, and the UI doesn't need it since the two endpoints already
/// tell us which list we're in). Parent is read-only here — confirmed no
/// submit/withdraw route exists on parent.router.js, unlike the student's
/// own homework screen.
@freezed
abstract class HomeworkSubmission with _$HomeworkSubmission {
  const factory HomeworkSubmission({
    @JsonKey(name: 'submission_id') required String submissionId,
    @JsonKey(name: 'homework_id') required String homeworkId,
    @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.unknown)
    required HomeworkStatus status,
    @JsonKey(name: 'effective_status', unknownEnumValue: HomeworkStatus.unknown)
    required HomeworkStatus effectiveStatus,
    @JsonKey(name: 'submitted_at') DateTime? submittedAt,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
    String? remark,
    @JsonKey(name: 'remarked_at') DateTime? remarkedAt,
    @JsonKey(name: 'academic_homework') required HomeworkInfo homework,
  }) = _HomeworkSubmission;

  factory HomeworkSubmission.fromJson(Map<String, dynamic> json) =>
      _$HomeworkSubmissionFromJson(json);
}
