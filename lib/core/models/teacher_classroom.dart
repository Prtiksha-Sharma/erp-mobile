import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'academic_refs.dart';
import 'attendance_record.dart';
import 'student_profile.dart';

part 'teacher_classroom.freezed.dart';
part 'teacher_classroom.g.dart';

// Class Teacher-only shapes (teacher/teacher.router.js, authorize('Class Teacher')).

/// GET /teacher/attendance?date= — teacher/attendance.service.js
/// #getMyClassAttendance: `{ date, is_holiday, total, data }`, one row per
/// student across the teacher's assigned section(s), with that date's
/// student_attendance record (or null when not marked yet).
@freezed
abstract class ClassAttendanceRoster with _$ClassAttendanceRoster {
  const factory ClassAttendanceRoster({
    DateTime? date,
    @JsonKey(name: 'is_holiday') @Default(false) bool isHoliday,
    @Default(0) int total,
    @Default(<RosterStudent>[]) List<RosterStudent> data,
  }) = _ClassAttendanceRoster;

  factory ClassAttendanceRoster.fromJson(Map<String, dynamic> json) => _$ClassAttendanceRosterFromJson(json);
}

@freezed
abstract class RosterStudent with _$RosterStudent {
  const factory RosterStudent({
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'admission_no') String? admissionNo,
    @JsonKey(name: 'roll_no') @LooseStringConverter() String? rollNo,
    @JsonKey(name: 'applicants') ApplicantInfo? applicant,
    @JsonKey(name: 'current_class') ClassRef? currentClass,
    @JsonKey(name: 'current_section') SectionRef? currentSection,
    AttendanceRecord? attendance,
  }) = _RosterStudent;

  factory RosterStudent.fromJson(Map<String, dynamic> json) => _$RosterStudentFromJson(json);
}

/// GET /teacher/my-class/students?search= — teacher/myClass.service.js
/// #getMyClassStudents: `{ total, data }` of already-flattened rows (the
/// service builds `name`, `parent_name`, `attendance_pct`, etc. itself).
/// `fee_status` is the latest receipt's status or `NO_RECORD`.
@freezed
abstract class MyClassRoster with _$MyClassRoster {
  const factory MyClassRoster({
    @Default(0) int total,
    @Default(<MyClassStudent>[]) List<MyClassStudent> data,
  }) = _MyClassRoster;

  factory MyClassRoster.fromJson(Map<String, dynamic> json) => _$MyClassRosterFromJson(json);
}

@freezed
abstract class MyClassStudent with _$MyClassStudent {
  const factory MyClassStudent({
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'admission_no') String? admissionNo,
    @JsonKey(name: 'roll_no') @LooseStringConverter() String? rollNo,
    required String name,
    String? gender,
    DateTime? dob,
    @JsonKey(name: 'parent_name') String? parentName,
    @JsonKey(name: 'contact_number') String? contactNumber,
    @JsonKey(name: 'attendance_pct') @LooseNumConverter() num? attendancePct,
    @JsonKey(name: 'fee_status') String? feeStatus,
    @JsonKey(name: 'bus_route') String? busRoute,
  }) = _MyClassStudent;

  factory MyClassStudent.fromJson(Map<String, dynamic> json) => _$MyClassStudentFromJson(json);
}

/// GET /teacher/my-class/students/:id/performance —
/// teacher/myClass.service.js#getStudentPerformance. `month` is `YYYY-MM`;
/// marks are Prisma Decimals (JSON strings) shown as-is.
@freezed
abstract class StudentPerformance with _$StudentPerformance {
  const factory StudentPerformance({
    @JsonKey(name: 'student_id') String? studentId,
    @JsonKey(name: 'attendance_trend') @Default(<AttendanceTrendPoint>[]) List<AttendanceTrendPoint> attendanceTrend,
    @JsonKey(name: 'exam_summary') @Default(<ExamSummaryRow>[]) List<ExamSummaryRow> examSummary,
  }) = _StudentPerformance;

  factory StudentPerformance.fromJson(Map<String, dynamic> json) => _$StudentPerformanceFromJson(json);
}

@freezed
abstract class AttendanceTrendPoint with _$AttendanceTrendPoint {
  const factory AttendanceTrendPoint({
    required String month,
    @JsonKey(name: 'attendance_pct') @LooseNumConverter() num? attendancePct,
  }) = _AttendanceTrendPoint;

  factory AttendanceTrendPoint.fromJson(Map<String, dynamic> json) => _$AttendanceTrendPointFromJson(json);
}

@freezed
abstract class ExamSummaryRow with _$ExamSummaryRow {
  const factory ExamSummaryRow({
    @JsonKey(name: 'exam_name') String? examName,
    @JsonKey(name: 'subject_name') String? subjectName,
    @JsonKey(name: 'marks_obtained') @LooseStringConverter() String? marksObtained,
    @JsonKey(name: 'max_marks') @LooseStringConverter() String? maxMarks,
    @JsonKey(name: 'attendance_status') String? attendanceStatus,
    String? grade,
  }) = _ExamSummaryRow;

  factory ExamSummaryRow.fromJson(Map<String, dynamic> json) => _$ExamSummaryRowFromJson(json);
}

/// GET /teacher/my-class/birthdays — teacher/myClass.service.js
/// #getMyClassBirthdays: `{ today, upcoming }` (upcoming = next 30 days,
/// soonest first).
@freezed
abstract class ClassBirthdays with _$ClassBirthdays {
  const factory ClassBirthdays({
    @Default(<BirthdayEntry>[]) List<BirthdayEntry> today,
    @Default(<BirthdayEntry>[]) List<BirthdayEntry> upcoming,
  }) = _ClassBirthdays;

  factory ClassBirthdays.fromJson(Map<String, dynamic> json) => _$ClassBirthdaysFromJson(json);
}

@freezed
abstract class BirthdayEntry with _$BirthdayEntry {
  const factory BirthdayEntry({
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'admission_no') String? admissionNo,
    required String name,
    DateTime? dob,
    @JsonKey(name: 'days_away') @Default(0) int daysAway,
  }) = _BirthdayEntry;

  factory BirthdayEntry.fromJson(Map<String, dynamic> json) => _$BirthdayEntryFromJson(json);
}
