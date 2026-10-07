import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'academic_refs.dart';
import 'staff_self_service.dart';
import 'student_brief.dart';
import 'subject_ref.dart';

part 'admin_overview.freezed.dart';
part 'admin_overview.g.dart';

// ═══ Admin Dashboard (web features/dashboard/pages/AdminDashboardPage.jsx) ═══

/// GET /admin/dashboard/stats — admin/dashboard/dashboard.service.js
/// #getDashboardStats: `{ students, applications, transport }`.
/// `transport` is null when the account has no institution_id.
@freezed
abstract class AdminDashboardStats with _$AdminDashboardStats {
  const factory AdminDashboardStats({
    DashboardStudentStats? students,
    DashboardApplicationStats? applications,
    DashboardTransportStats? transport,
  }) = _AdminDashboardStats;

  factory AdminDashboardStats.fromJson(Map<String, dynamic> json) => _$AdminDashboardStatsFromJson(json);
}

/// `students` — `total` is every student row of the institution,
/// `total_active` the ACTIVE ones; `active`/`inactive` come from
/// student/reports.service.js#getActiveInactiveCounts,
/// `class_wise_strength` from #getStrengthReport and `gender_distribution`
/// (`{ Male: n, Female: n, UNKNOWN: n, ... }`) from #getGenderReport.
@freezed
abstract class DashboardStudentStats with _$DashboardStudentStats {
  const factory DashboardStudentStats({
    @Default(0) int total,
    @JsonKey(name: 'total_active') @Default(0) int totalActive,
    @Default(0) int active,
    @Default(0) int inactive,
    @JsonKey(name: 'class_wise_strength')
    @Default(<DashboardClassStrength>[])
    List<DashboardClassStrength> classWiseStrength,
    @JsonKey(name: 'gender_distribution') @Default(<String, int>{}) Map<String, int> genderDistribution,
  }) = _DashboardStudentStats;

  factory DashboardStudentStats.fromJson(Map<String, dynamic> json) => _$DashboardStudentStatsFromJson(json);
}

/// One reports.service.js#getStrengthReport row: `{ class_id, class_name,
/// total }` — class_id null / class_name 'Unassigned' for students with no
/// current class.
@freezed
abstract class DashboardClassStrength with _$DashboardClassStrength {
  const factory DashboardClassStrength({
    @JsonKey(name: 'class_id') String? classId,
    @JsonKey(name: 'class_name') String? className,
    @Default(0) int total,
  }) = _DashboardClassStrength;

  factory DashboardClassStrength.fromJson(Map<String, dynamic> json) => _$DashboardClassStrengthFromJson(json);
}

/// `applications` — counts plus `by_status` (`{ <application_status>: n }`,
/// a groupBy over admission_applications.application_status).
@freezed
abstract class DashboardApplicationStats with _$DashboardApplicationStats {
  const factory DashboardApplicationStats({
    @Default(0) int total,
    @Default(0) int submitted,
    @Default(0) int approved,
    @Default(0) int rejected,
    @Default(0) int enrolled,
    @JsonKey(name: 'by_status') @Default(<String, int>{}) Map<String, int> byStatus,
  }) = _DashboardApplicationStats;

  factory DashboardApplicationStats.fromJson(Map<String, dynamic> json) => _$DashboardApplicationStatsFromJson(json);
}

/// `transport` — admin/transport/overview.service.js#getTransportStats.
@freezed
abstract class DashboardTransportStats with _$DashboardTransportStats {
  const factory DashboardTransportStats({
    @JsonKey(name: 'total_buses') @Default(0) int totalBuses,
    @JsonKey(name: 'active_buses') @Default(0) int activeBuses,
    @JsonKey(name: 'total_drivers') @Default(0) int totalDrivers,
    @JsonKey(name: 'active_drivers') @Default(0) int activeDrivers,
    @JsonKey(name: 'students_on_transport') @Default(0) int studentsOnTransport,
    @JsonKey(name: 'delays_flagged_today') @Default(0) int delaysFlaggedToday,
  }) = _DashboardTransportStats;

  factory DashboardTransportStats.fromJson(Map<String, dynamic> json) => _$DashboardTransportStatsFromJson(json);
}

/// GET /admin/dashboard/attendance-summary?period=day —
/// student/reports.service.js#getAttendanceSummaryReport: `{ from, to,
/// summary: { <status>: n } }` (a groupBy over student_attendance.status —
/// PRESENT/ABSENT/LATE today, kept open as a map).
@freezed
abstract class DashboardAttendanceToday with _$DashboardAttendanceToday {
  const factory DashboardAttendanceToday({
    DateTime? from,
    DateTime? to,
    @Default(<String, int>{}) Map<String, int> summary,
  }) = _DashboardAttendanceToday;

  factory DashboardAttendanceToday.fromJson(Map<String, dynamic> json) => _$DashboardAttendanceTodayFromJson(json);
}

/// One GET /admin/dashboard/birthdays row — student/reports.service.js
/// #getBirthdays raw SQL: `s.student_id, s.admission_no, s.roll_no,
/// a.first_name, a.middle_name, a.last_name, a.dob, a.gender, a.photo_url,
/// c.class_name, sec.section_name` (the response wraps these in
/// `{ month, day, page, limit, data }`).
@freezed
abstract class DashboardBirthday with _$DashboardBirthday {
  const factory DashboardBirthday({
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'admission_no') String? admissionNo,
    @JsonKey(name: 'roll_no') @LooseStringConverter() String? rollNo,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'middle_name') String? middleName,
    @JsonKey(name: 'last_name') String? lastName,
    DateTime? dob,
    String? gender,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'class_name') String? className,
    @JsonKey(name: 'section_name') String? sectionName,
  }) = _DashboardBirthday;

  factory DashboardBirthday.fromJson(Map<String, dynamic> json) => _$DashboardBirthdayFromJson(json);
}

/// GET /admin/fees/dashboard — admin/fees/dashboard.service.js#getDashboard.
/// Every amount is service-computed (`Number(...)`), so a JSON number.
@freezed
abstract class DashboardFeeSnapshot with _$DashboardFeeSnapshot {
  const factory DashboardFeeSnapshot({
    @JsonKey(name: 'total_fee_collected') @DecimalConverter() required Decimal totalFeeCollected,
    @JsonKey(name: 'todays_collection') @DecimalConverter() required Decimal todaysCollection,
    @JsonKey(name: 'this_month_collection') @DecimalConverter() required Decimal thisMonthCollection,
    @JsonKey(name: 'pending_amount') @DecimalConverter() required Decimal pendingAmount,
    @JsonKey(name: 'students_with_pending_fees') @Default(0) int studentsWithPendingFees,
    @JsonKey(name: 'active_scholarships') @Default(0) int activeScholarships,
  }) = _DashboardFeeSnapshot;

  factory DashboardFeeSnapshot.fromJson(Map<String, dynamic> json) => _$DashboardFeeSnapshotFromJson(json);
}

/// One GET /admin/academic/exams row — admin/academic/exams.service.js
/// #listExams (`findMany` over exams, `include { exam_types { exam_type_id,
/// type_name }, academic_sessions { session_id, session_name } }`, ordered
/// by start_date desc). Only what the Upcoming Exams widget reads.
@freezed
abstract class DashboardExamRow with _$DashboardExamRow {
  const factory DashboardExamRow({
    @JsonKey(name: 'exam_id') required String examId,
    @JsonKey(name: 'exam_name') required String examName,
    @JsonKey(name: 'start_date') DateTime? startDate,
    @JsonKey(name: 'end_date') DateTime? endDate,
    @JsonKey(name: 'exam_types') DashboardExamTypeRef? examType,
  }) = _DashboardExamRow;

  factory DashboardExamRow.fromJson(Map<String, dynamic> json) => _$DashboardExamRowFromJson(json);
}

@freezed
abstract class DashboardExamTypeRef with _$DashboardExamTypeRef {
  const factory DashboardExamTypeRef({
    @JsonKey(name: 'exam_type_id') String? examTypeId,
    @JsonKey(name: 'type_name') String? typeName,
  }) = _DashboardExamTypeRef;

  factory DashboardExamTypeRef.fromJson(Map<String, dynamic> json) => _$DashboardExamTypeRefFromJson(json);
}

/// One GET /admin/academic/homework?from=&to= row — admin/academic/
/// homework.service.js#listHomework (`include { classes { class_id,
/// class_name }, sections { section_id, section_name }, academic_subjects
/// { subject_id, subject_name }, ... }`, ordered by due_date desc).
@freezed
abstract class DashboardHomeworkRow with _$DashboardHomeworkRow {
  const factory DashboardHomeworkRow({
    @JsonKey(name: 'homework_id') required String homeworkId,
    @Default('') String title,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    String? type,
    @JsonKey(name: 'classes') ClassRef? classRef,
    @JsonKey(name: 'sections') SectionRef? sectionRef,
    @JsonKey(name: 'academic_subjects') SubjectRef? subject,
  }) = _DashboardHomeworkRow;

  factory DashboardHomeworkRow.fromJson(Map<String, dynamic> json) => _$DashboardHomeworkRowFromJson(json);
}

/// GET /admin/dashboard/exam-summary — admin/dashboard/dashboard.service.js
/// #getExamSummary (all zeros when there's no active session).
@freezed
abstract class DashboardExamSummary with _$DashboardExamSummary {
  const factory DashboardExamSummary({
    @JsonKey(name: 'total_exams') @Default(0) int totalExams,
    @JsonKey(name: 'upcoming_exams') @Default(0) int upcomingExams,
    @JsonKey(name: 'completed_exams') @Default(0) int completedExams,
    @JsonKey(name: 'results_published') @Default(0) int resultsPublished,
    @JsonKey(name: 'results_pending_publish') @Default(0) int resultsPendingPublish,
  }) = _DashboardExamSummary;

  factory DashboardExamSummary.fromJson(Map<String, dynamic> json) => _$DashboardExamSummaryFromJson(json);
}

// ═══ Staff attendance (web AdminMarkStaffAttendancePage.jsx) ═══

/// GET /admin/staff/attendance/daily-report?date= — admin/staff/
/// attendance.service.js#getDailyReport: `{ date, total, data }`, one row
/// per non-deleted staff_accounts row (`select { staff_id, full_name,
/// employee_code, designation }`, by full_name) with that day's
/// staff_attendance row (or null) under `attendance`.
@freezed
abstract class StaffDailyAttendance with _$StaffDailyAttendance {
  const factory StaffDailyAttendance({
    DateTime? date,
    @Default(0) int total,
    @Default(<StaffDailyAttendanceRow>[]) List<StaffDailyAttendanceRow> data,
  }) = _StaffDailyAttendance;

  factory StaffDailyAttendance.fromJson(Map<String, dynamic> json) => _$StaffDailyAttendanceFromJson(json);
}

/// `attendance` is the raw staff_attendance row — reuses
/// [StaffAttendanceRecord] (attendance_id, attendance_date, status,
/// remarks); status stays a String (PRESENT/ABSENT/HALF_DAY/ON_LEAVE).
@freezed
abstract class StaffDailyAttendanceRow with _$StaffDailyAttendanceRow {
  const factory StaffDailyAttendanceRow({
    @JsonKey(name: 'staff_id') required String staffId,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'employee_code') String? employeeCode,
    String? designation,
    StaffAttendanceRecord? attendance,
  }) = _StaffDailyAttendanceRow;

  factory StaffDailyAttendanceRow.fromJson(Map<String, dynamic> json) => _$StaffDailyAttendanceRowFromJson(json);
}

/// POST /admin/staff/attendance/bulk-mark — attendance.service.js
/// #bulkMarkAttendance: `{ marked, failed, results, errors }` (a partial
/// success is normal: each record is upserted on its own).
@freezed
abstract class StaffBulkMarkResult with _$StaffBulkMarkResult {
  const factory StaffBulkMarkResult({
    @Default(0) int marked,
    @Default(0) int failed,
    @Default(<StaffBulkMarkError>[]) List<StaffBulkMarkError> errors,
  }) = _StaffBulkMarkResult;

  factory StaffBulkMarkResult.fromJson(Map<String, dynamic> json) => _$StaffBulkMarkResultFromJson(json);
}

@freezed
abstract class StaffBulkMarkError with _$StaffBulkMarkError {
  const factory StaffBulkMarkError({
    @JsonKey(name: 'staff_id') String? staffId,
    String? error,
  }) = _StaffBulkMarkError;

  factory StaffBulkMarkError.fromJson(Map<String, dynamic> json) => _$StaffBulkMarkErrorFromJson(json);
}

// ═══ Student attendance report (web AdminAttendanceReportPage.jsx) ═══

/// GET /admin/students/attendance/report — admin/student/attendance.service.js
/// #getClassAttendanceReport: `{ from, to, summary: { <status>: n }, total,
/// page, limit, data }` (paginated server-side, default limit 20, max 100).
@freezed
abstract class OverviewAttendanceReport with _$OverviewAttendanceReport {
  const factory OverviewAttendanceReport({
    DateTime? from,
    DateTime? to,
    @Default(<String, int>{}) Map<String, int> summary,
    @Default(0) int total,
    @Default(1) int page,
    @Default(20) int limit,
    @Default(<OverviewAttendanceRow>[]) List<OverviewAttendanceRow> data,
  }) = _OverviewAttendanceReport;

  factory OverviewAttendanceReport.fromJson(Map<String, dynamic> json) => _$OverviewAttendanceReportFromJson(json);
}

/// One student_attendance row with `include { students { student_id,
/// admission_no, applicants { first_name, last_name } } }`.
@freezed
abstract class OverviewAttendanceRow with _$OverviewAttendanceRow {
  const factory OverviewAttendanceRow({
    @JsonKey(name: 'attendance_id') required String attendanceId,
    @JsonKey(name: 'attendance_date') DateTime? attendanceDate,
    @Default('') String status,
    String? remarks,
    @JsonKey(name: 'students') StudentBrief? student,
  }) = _OverviewAttendanceRow;

  factory OverviewAttendanceRow.fromJson(Map<String, dynamic> json) => _$OverviewAttendanceRowFromJson(json);
}

// ═══ Activity logs (web features/audit-logs/pages/ActivityLogsPage.jsx) ═══

/// GET /admin/students/audit/activity-logs — admin/student/audit.service.js
/// #getActivityLogs: `{ total, page, limit, data }` over audit.audit_logs
/// (full rows, created_at desc; `module` filters by exact module_name, else
/// every module starting with "Student").
@freezed
abstract class ActivityLogPage with _$ActivityLogPage {
  const factory ActivityLogPage({
    @Default(0) int total,
    @Default(1) int page,
    @Default(50) int limit,
    @Default(<ActivityLogEntry>[]) List<ActivityLogEntry> data,
  }) = _ActivityLogPage;

  factory ActivityLogPage.fromJson(Map<String, dynamic> json) => _$ActivityLogPageFromJson(json);
}

/// One audit_logs row. `old_data`/`new_data` are free-form Json columns
/// (an object in practice, but kept as whatever arrives).
@freezed
abstract class ActivityLogEntry with _$ActivityLogEntry {
  const factory ActivityLogEntry({
    @JsonKey(name: 'log_id') required String logId,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'module_name') String? moduleName,
    @JsonKey(name: 'action_type') String? actionType,
    @JsonKey(name: 'record_id') String? recordId,
    @JsonKey(name: 'old_data') Object? oldData,
    @JsonKey(name: 'new_data') Object? newData,
    @JsonKey(name: 'ip_address') String? ipAddress,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _ActivityLogEntry;

  factory ActivityLogEntry.fromJson(Map<String, dynamic> json) => _$ActivityLogEntryFromJson(json);
}
