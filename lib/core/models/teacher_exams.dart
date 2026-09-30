import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'academic_refs.dart';
import 'student_brief.dart';
import 'student_exams.dart';

part 'teacher_exams.freezed.dart';
part 'teacher_exams.g.dart';

/// GET /teacher/exams — teacher/examMarks.service.js#listMyExams: exams the
/// teacher has at least one schedule for, newest first, with
/// `exam_types` and `academic_sessions` included.
@freezed
abstract class TeacherExam with _$TeacherExam {
  const factory TeacherExam({
    @JsonKey(name: 'exam_id') required String examId,
    @JsonKey(name: 'exam_name') required String examName,
    @JsonKey(name: 'start_date') DateTime? startDate,
    @JsonKey(name: 'end_date') DateTime? endDate,
    @JsonKey(name: 'exam_types') ExamTypeRef? examType,
    @JsonKey(name: 'academic_sessions') SessionRef? session,
  }) = _TeacherExam;

  factory TeacherExam.fromJson(Map<String, dynamic> json) => _$TeacherExamFromJson(json);
}

/// GET /teacher/exam-marks/status?exam_id= — teacher/examMarks.service.js
/// #getMyEntryStatus: one row per own exam schedule, already flattened.
@freezed
abstract class MarksEntryStatus with _$MarksEntryStatus {
  const factory MarksEntryStatus({
    @JsonKey(name: 'exam_schedule_id') required String examScheduleId,
    @JsonKey(name: 'class_name') String? className,
    @JsonKey(name: 'section_name') String? sectionName,
    @JsonKey(name: 'subject_id') String? subjectId,
    @JsonKey(name: 'subject_name') String? subjectName,
    @JsonKey(name: 'total_students') @Default(0) int totalStudents,
    @JsonKey(name: 'entered_count') @Default(0) int enteredCount,
    @JsonKey(name: 'pending_count') @Default(0) int pendingCount,
  }) = _MarksEntryStatus;

  factory MarksEntryStatus.fromJson(Map<String, dynamic> json) => _$MarksEntryStatusFromJson(json);
}

/// GET /teacher/exam-schedules/:id/marks (and PATCH /teacher/exam-marks/:id,
/// which returns the same row without `students`) —
/// teacher/examMarks.service.js#listMarks. `attendance_status` is
/// PENDING | PRESENT | ABSENT (utils/examMarksAttendance.js); `marks_obtained`
/// is a Prisma Decimal string. No max_marks here — the server validates.
@freezed
abstract class ExamMarkEntry with _$ExamMarkEntry {
  const factory ExamMarkEntry({
    @JsonKey(name: 'mark_id') required String markId,
    @JsonKey(name: 'exam_schedule_id') String? examScheduleId,
    @JsonKey(name: 'student_id') String? studentId,
    @JsonKey(name: 'marks_obtained') @NullableDecimalConverter() Decimal? marksObtained,
    @JsonKey(name: 'is_absent') @Default(false) bool isAbsent,
    @JsonKey(name: 'attendance_status') @Default('PENDING') String attendanceStatus,
    String? grade,
    String? remarks,
    @JsonKey(name: 'students') StudentBrief? student,
  }) = _ExamMarkEntry;

  factory ExamMarkEntry.fromJson(Map<String, dynamic> json) => _$ExamMarkEntryFromJson(json);
}
