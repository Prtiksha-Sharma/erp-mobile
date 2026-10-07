import 'package:freezed_annotation/freezed_annotation.dart';

import 'academic_refs.dart';
import 'subject_ref.dart';
import 'teacher_homework.dart';

part 'admin_academics.freezed.dart';
part 'admin_academics.g.dart';

/// The institution's active academic session as School Admin sees it —
/// GET /admin/staff/class-teacher/overview
/// (admin/staff/classTeacherInsights.service.js#getOverview →
/// resolveActiveSession: `is_active: true`, newest `created_at` first —
/// the exact rule schools.service.js#getSchoolBySlug uses for the web's
/// Redux `sessionId`/`sessionLabel`). Only the two session fields of that
/// response are read; the per-section rows are ignored.
@freezed
abstract class AcademicsActiveSession with _$AcademicsActiveSession {
  const factory AcademicsActiveSession({
    @JsonKey(name: 'session_id') required String sessionId,
    @JsonKey(name: 'session_name') String? sessionName,
  }) = _AcademicsActiveSession;

  factory AcademicsActiveSession.fromJson(Map<String, dynamic> json) => _$AcademicsActiveSessionFromJson(json);
}

/// GET /admin/academic/subjects — admin/academic/subjects.service.js
/// #listSubjects (whole `academic_subjects` row, no include; sorted by
/// subject_name). Also the POST/PATCH response.
@freezed
abstract class AcademicSubject with _$AcademicSubject {
  const factory AcademicSubject({
    @JsonKey(name: 'subject_id') required String subjectId,
    @JsonKey(name: 'institution_id') String? institutionId,
    @JsonKey(name: 'subject_name') required String subjectName,
    @JsonKey(name: 'subject_code') String? subjectCode,
    @JsonKey(name: 'subject_type') String? subjectType,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _AcademicSubject;

  factory AcademicSubject.fromJson(Map<String, dynamic> json) => _$AcademicSubjectFromJson(json);
}

/// GET /admin/academic/class-subjects — admin/academic/classSubjects.service.js
/// #listClassSubjects (`include { classes { class_id, class_name },
/// academic_subjects { subject_id, subject_name }, academic_sessions
/// { session_id, session_name } }`, newest first).
@freezed
abstract class ClassSubjectAssignment with _$ClassSubjectAssignment {
  const factory ClassSubjectAssignment({
    @JsonKey(name: 'class_subject_id') required String classSubjectId,
    @JsonKey(name: 'class_id') required String classId,
    @JsonKey(name: 'subject_id') required String subjectId,
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'classes') ClassRef? classRef,
    @JsonKey(name: 'academic_subjects') SubjectRef? subject,
    @JsonKey(name: 'academic_sessions') SessionRef? session,
  }) = _ClassSubjectAssignment;

  factory ClassSubjectAssignment.fromJson(Map<String, dynamic> json) => _$ClassSubjectAssignmentFromJson(json);
}

/// `staff_accounts { staff_id, full_name, employee_code, designation,
/// contact_number, profile_photo_url }` — the subject-teacher list's
/// teacher relation (subjectTeachers.service.js#listSubjectTeachers).
@freezed
abstract class AcademicStaffRef with _$AcademicStaffRef {
  const factory AcademicStaffRef({
    @JsonKey(name: 'staff_id') String? staffId,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'employee_code') String? employeeCode,
    String? designation,
    @JsonKey(name: 'contact_number') String? contactNumber,
    @JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,
  }) = _AcademicStaffRef;

  factory AcademicStaffRef.fromJson(Map<String, dynamic> json) => _$AcademicStaffRefFromJson(json);
}

/// GET /admin/academic/subject-teachers — admin/academic/subjectTeachers.service.js
/// #listSubjectTeachers (one row per class + section + subject + session;
/// `include { staff_accounts {…}, classes, sections, academic_subjects,
/// academic_sessions }`, newest first).
@freezed
abstract class SubjectTeacherAssignment with _$SubjectTeacherAssignment {
  const factory SubjectTeacherAssignment({
    @JsonKey(name: 'subject_teacher_id') required String subjectTeacherId,
    @JsonKey(name: 'staff_id') String? staffId,
    @JsonKey(name: 'class_id') String? classId,
    @JsonKey(name: 'section_id') String? sectionId,
    @JsonKey(name: 'subject_id') String? subjectId,
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'staff_accounts') AcademicStaffRef? staff,
    @JsonKey(name: 'classes') ClassRef? classRef,
    @JsonKey(name: 'sections') SectionRef? sectionRef,
    @JsonKey(name: 'academic_subjects') SubjectRef? subject,
    @JsonKey(name: 'academic_sessions') SessionRef? session,
  }) = _SubjectTeacherAssignment;

  factory SubjectTeacherAssignment.fromJson(Map<String, dynamic> json) => _$SubjectTeacherAssignmentFromJson(json);
}

/// GET /admin/academic/timetable — admin/academic/timetable.service.js
/// #listTimetable (the whole `academic_timetable_entries` row + `classes`,
/// `sections`, `academic_subjects { subject_id, subject_name }`,
/// `staff_accounts { staff_id, full_name }`). Unlike the parent/student/
/// teacher [TimetableEntry] this keeps the raw `subject_id`/`staff_id`
/// the edit form pre-fills from. `start_time`/`end_time` are `@db.Time`
/// (1970-01-01 epoch, only UTC HH:mm is real); `period_type` is a plain
/// VarChar ("CLASS" / "BREAK"), kept as a String so an unknown value can't
/// crash the grid. `day_of_week`: 1 = Monday … 7 = Sunday.
@freezed
abstract class AdminTimetableEntry with _$AdminTimetableEntry {
  const factory AdminTimetableEntry({
    @JsonKey(name: 'timetable_entry_id') required String timetableEntryId,
    @JsonKey(name: 'class_id') String? classId,
    @JsonKey(name: 'section_id') String? sectionId,
    @JsonKey(name: 'subject_id') String? subjectId,
    @JsonKey(name: 'staff_id') String? staffId,
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'day_of_week') required int dayOfWeek,
    @JsonKey(name: 'period_number') required int periodNumber,
    @JsonKey(name: 'start_time') DateTime? startTime,
    @JsonKey(name: 'end_time') DateTime? endTime,
    String? room,
    @JsonKey(name: 'period_type') @Default('CLASS') String periodType,
    @JsonKey(name: 'break_label') String? breakLabel,
    @JsonKey(name: 'classes') ClassRef? classRef,
    @JsonKey(name: 'sections') SectionRef? sectionRef,
    @JsonKey(name: 'academic_subjects') SubjectRef? subject,
    @JsonKey(name: 'staff_accounts') AcademicStaffRef? staff,
  }) = _AdminTimetableEntry;

  factory AdminTimetableEntry.fromJson(Map<String, dynamic> json) => _$AdminTimetableEntryFromJson(json);
}

extension AdminTimetableEntryX on AdminTimetableEntry {
  bool get isBreak => periodType == 'BREAK';
}

/// GET/PATCH /admin/academic/timetable/settings — timetable.service.js
/// #getTimetableSettings (`institutions.select { working_days }`,
/// Int[] of 1–7).
@freezed
abstract class TimetableSettings with _$TimetableSettings {
  const factory TimetableSettings({
    @JsonKey(name: 'working_days') @Default(<int>[1, 2, 3, 4, 5, 6]) List<int> workingDays,
  }) = _TimetableSettings;

  factory TimetableSettings.fromJson(Map<String, dynamic> json) => _$TimetableSettingsFromJson(json);
}

/// `users { user_id, username }` — the lesson plan's author
/// (lessonPlans.service.js; `users` has no full_name column).
@freezed
abstract class LessonPlanAuthor with _$LessonPlanAuthor {
  const factory LessonPlanAuthor({@JsonKey(name: 'user_id') String? userId, String? username}) = _LessonPlanAuthor;

  factory LessonPlanAuthor.fromJson(Map<String, dynamic> json) => _$LessonPlanAuthorFromJson(json);
}

/// GET /admin/academic/lesson-plans — admin/academic/lessonPlans.service.js
/// #listLessonPlans (whole `academic_lesson_plans` row + `classes`,
/// `sections`, `academic_subjects`, `users { user_id, username }`, newest
/// first). `status` is free text (DB default "PLANNED"), kept a String.
/// `planned_date` is `@db.Date`.
@freezed
abstract class AdminLessonPlan with _$AdminLessonPlan {
  const factory AdminLessonPlan({
    @JsonKey(name: 'lesson_plan_id') required String lessonPlanId,
    @JsonKey(name: 'class_id') String? classId,
    @JsonKey(name: 'section_id') String? sectionId,
    @JsonKey(name: 'subject_id') String? subjectId,
    @JsonKey(name: 'session_id') String? sessionId,
    required String topic,
    String? description,
    @JsonKey(name: 'planned_date') DateTime? plannedDate,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
    String? status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'classes') ClassRef? classRef,
    @JsonKey(name: 'sections') SectionRef? sectionRef,
    @JsonKey(name: 'academic_subjects') SubjectRef? subject,
    @JsonKey(name: 'users') LessonPlanAuthor? author,
  }) = _AdminLessonPlan;

  factory AdminLessonPlan.fromJson(Map<String, dynamic> json) => _$AdminLessonPlanFromJson(json);
}

/// GET /admin/academic/homework and /admin/academic/assignments —
/// admin/academic/homework.service.js#listHomework (whole
/// `academic_homework` row + `classes`, `sections`, `academic_subjects`,
/// `users { user_id, username, staff_account { full_name } }` (same shape
/// as the comment author, so [CommentAuthor] is reused) and
/// `submissions { submission_id, status }`; newest due date first).
/// `assigned_date`/`due_date` are `@db.Date`.
@freezed
abstract class AdminHomeworkRecord with _$AdminHomeworkRecord {
  const factory AdminHomeworkRecord({
    @JsonKey(name: 'homework_id') required String homeworkId,
    String? type,
    @JsonKey(name: 'class_id') String? classId,
    @JsonKey(name: 'section_id') String? sectionId,
    @JsonKey(name: 'subject_id') String? subjectId,
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'assigned_by') String? assignedBy,
    required String title,
    String? description,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
    @JsonKey(name: 'assigned_date') DateTime? assignedDate,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @JsonKey(name: 'classes') ClassRef? classRef,
    @JsonKey(name: 'sections') SectionRef? sectionRef,
    @JsonKey(name: 'academic_subjects') SubjectRef? subject,
    @JsonKey(name: 'users') CommentAuthor? assignedByUser,
    @Default(<SubmissionStatusRef>[]) List<SubmissionStatusRef> submissions,
  }) = _AdminHomeworkRecord;

  factory AdminHomeworkRecord.fromJson(Map<String, dynamic> json) => _$AdminHomeworkRecordFromJson(json);
}
