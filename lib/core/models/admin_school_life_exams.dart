import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'academic_refs.dart';
import 'student_exams.dart';
import 'subject_ref.dart';

part 'admin_school_life_exams.freezed.dart';
part 'admin_school_life_exams.g.dart';

// School Admin → Exams (web features/exams). Every shape below is read off
// edusoft_backend/src/features/admin/academic/*.service.js. Marks and
// percentages are scores, not money, so they stay `num` (Prisma Decimal
// strings and service-computed numbers both parse via LooseNumConverter).
// Reused as-is from other portals (identical wire shape):
// - GET /admin/academic/exam-schedules/:id/marks → `ExamMarkEntry`
//   (teacher_exams.dart; same `include { students { … applicants } }`).
// - GET /admin/academic/exam-marks/status → `MarksEntryStatus`
//   (teacher_exams.dart; same flattened row, minus class/section names).
// - report-card subject rows → `ReportCardSubject` (student_exams.dart).

/// GET /admin/academic/exam-types — examTypes.service.js#listExamTypes
/// (raw `exam_types` rows, ordered by type_name).
@freezed
abstract class AdminExamType with _$AdminExamType {
  const factory AdminExamType({
    @JsonKey(name: 'exam_type_id') required String examTypeId,
    @JsonKey(name: 'type_name') required String typeName,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _AdminExamType;

  factory AdminExamType.fromJson(Map<String, dynamic> json) => _$AdminExamTypeFromJson(json);
}

/// GET /admin/academic/exams — exams.service.js#listExams (`include {
/// exam_types { exam_type_id, type_name }, academic_sessions { session_id,
/// session_name } }`, newest start_date first). Also the bare `exam` row
/// nested in the results/report-card responses (no includes there).
@freezed
abstract class AdminExam with _$AdminExam {
  const factory AdminExam({
    @JsonKey(name: 'exam_id') required String examId,
    @JsonKey(name: 'exam_name') required String examName,
    @JsonKey(name: 'exam_type_id') String? examTypeId,
    @JsonKey(name: 'session_id') String? sessionId,
    // @db.Date — UTC midnight; show with formatDate().
    @JsonKey(name: 'start_date') DateTime? startDate,
    @JsonKey(name: 'end_date') DateTime? endDate,
    @JsonKey(name: 'exam_types') ExamTypeRef? examType,
    @JsonKey(name: 'academic_sessions') SessionRef? session,
  }) = _AdminExam;

  factory AdminExam.fromJson(Map<String, dynamic> json) => _$AdminExamFromJson(json);
}

/// GET /admin/academic/exam-schedules?exam_id= — examSchedules.service.js
/// #listExamSchedules (`include { exams { exam_id, exam_name }, classes
/// { class_id, class_name }, sections { section_id, section_name },
/// academic_subjects { subject_id, subject_name } }`, by exam_date).
/// `max_marks`/`passing_marks` are Prisma Decimal strings; the times are
/// @db.Time (1970-01-01 epoch — read with formatClockTime()).
@freezed
abstract class AdminExamSchedule with _$AdminExamSchedule {
  const factory AdminExamSchedule({
    @JsonKey(name: 'exam_schedule_id') required String examScheduleId,
    @JsonKey(name: 'exam_id') String? examId,
    @JsonKey(name: 'class_id') String? classId,
    @JsonKey(name: 'section_id') String? sectionId,
    @JsonKey(name: 'subject_id') String? subjectId,
    @JsonKey(name: 'exam_date') DateTime? examDate,
    @JsonKey(name: 'start_time') DateTime? startTime,
    @JsonKey(name: 'end_time') DateTime? endTime,
    @JsonKey(name: 'max_marks') @LooseNumConverter() num? maxMarks,
    @JsonKey(name: 'passing_marks') @LooseNumConverter() num? passingMarks,
    String? room,
    @JsonKey(name: 'classes') ClassRef? classRef,
    @JsonKey(name: 'sections') SectionRef? sectionRef,
    @JsonKey(name: 'academic_subjects') SubjectRef? subject,
  }) = _AdminExamSchedule;

  factory AdminExamSchedule.fromJson(Map<String, dynamic> json) => _$AdminExamScheduleFromJson(json);
}

/// One student's computed result — examResults.service.js
/// #buildStudentResults. `total_obtained`/`total_max` are JS numbers;
/// `percentage` is null until every subject is entered; `rank` is null for
/// a partial result; `overall_result` is PASS | FAIL | ABSENT | PENDING
/// (kept a String — an unknown value just renders as a neutral badge).
@freezed
abstract class AdminExamResultStudent with _$AdminExamResultStudent {
  const factory AdminExamResultStudent({
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'admission_no') String? admissionNo,
    @JsonKey(name: 'roll_no') @LooseStringConverter() String? rollNo,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @Default(<ReportCardSubject>[]) List<ReportCardSubject> subjects,
    @JsonKey(name: 'total_obtained') @LooseNumConverter() num? totalObtained,
    @JsonKey(name: 'total_max') @LooseNumConverter() num? totalMax,
    @JsonKey(name: 'all_entered') @Default(false) bool allEntered,
    @LooseNumConverter() num? percentage,
    @JsonKey(name: 'overall_result') String? overallResult,
    @LooseNumConverter() num? rank,
  }) = _AdminExamResultStudent;

  factory AdminExamResultStudent.fromJson(Map<String, dynamic> json) => _$AdminExamResultStudentFromJson(json);
}

extension AdminExamResultStudentName on AdminExamResultStudent {
  /// The web's formatPersonName(): `first last`, blank parts dropped.
  String get fullName => [firstName, lastName].whereType<String>().where((s) => s.trim().isNotEmpty).join(' ');
}

/// GET /admin/academic/exams/:examId/results?class_id=&section_id= —
/// examResults.service.js#getResultSummary. With no schedules for the
/// class/section the backend still answers 200 with `students: []`.
@freezed
abstract class AdminExamResultSummary with _$AdminExamResultSummary {
  const factory AdminExamResultSummary({
    AdminExam? exam,
    @JsonKey(name: 'class_id') String? classId,
    @JsonKey(name: 'section_id') String? sectionId,
    @JsonKey(name: 'is_published') @Default(false) bool isPublished,
    @JsonKey(name: 'class_average_percentage') @LooseNumConverter() num? classAveragePercentage,
    @JsonKey(name: 'pass_percentage') @LooseNumConverter() num? passPercentage,
    @Default(<AdminExamResultStudent>[]) List<AdminExamResultStudent> students,
  }) = _AdminExamResultSummary;

  factory AdminExamResultSummary.fromJson(Map<String, dynamic> json) => _$AdminExamResultSummaryFromJson(json);
}

/// GET /admin/academic/exams/:examId/results/:studentId/report-card —
/// examResults.service.js#getReportCard. Unlike the student endpoint this
/// is the admin preview: it answers even when results aren't published.
@freezed
abstract class AdminReportCard with _$AdminReportCard {
  const factory AdminReportCard({
    AdminExam? exam,
    @JsonKey(name: 'is_published') @Default(false) bool isPublished,
    @JsonKey(name: 'class_average_percentage') @LooseNumConverter() num? classAveragePercentage,
    AdminExamResultStudent? student,
  }) = _AdminReportCard;

  factory AdminReportCard.fromJson(Map<String, dynamic> json) => _$AdminReportCardFromJson(json);
}

/// The institution's active academic session. The web reads it from
/// /schools/by-slug (subdomain-only); mobile reads the same lookup
/// (`is_active: true`, newest `created_at` first — identical tiebreak)
/// from GET /admin/staff/class-teacher/overview →
/// admin/staff/classTeacherInsights.service.js#getOverview, which returns
/// `{ session_id, session_name, … }`. Needed for "Add Exam" (session_id).
@freezed
abstract class ActiveAcademicSession with _$ActiveAcademicSession {
  const factory ActiveAcademicSession({
    @JsonKey(name: 'session_id') required String sessionId,
    @JsonKey(name: 'session_name') String? sessionName,
  }) = _ActiveAcademicSession;

  factory ActiveAcademicSession.fromJson(Map<String, dynamic> json) => _$ActiveAcademicSessionFromJson(json);
}
