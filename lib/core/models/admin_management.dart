import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'academic_refs.dart';

part 'admin_management.freezed.dart';
part 'admin_management.g.dart';

// ── Teacher Management (web features/teachers) ───────────────────────────

/// GET /admin/staff/class-teacher/dashboard — admin/staff/
/// classTeacherInsights.service.js#getDashboardCards. `session_id` is the
/// session the counts were computed for: the institution's active session
/// when none is passed (resolveActiveSession). The app has no
/// session context of its own (the web gets it from /schools/by-slug), so
/// this is also where Teacher Management learns which session it's in.
@freezed
abstract class ClassTeacherDashboard with _$ClassTeacherDashboard {
  const factory ClassTeacherDashboard({
    @JsonKey(name: 'session_id') required String sessionId,
    @JsonKey(name: 'total_teachers') @Default(0) int totalTeachers,
    @JsonKey(name: 'total_class_teachers') @Default(0) int totalClassTeachers,
    @JsonKey(name: 'teachers_without_class_assignment') @Default(0) int teachersWithoutClassAssignment,
    // { ATTENDANCE_STATUS | 'NOT_MARKED': count } — not shown on the web.
    @JsonKey(name: 'today_teacher_attendance') @Default(<String, int>{}) Map<String, int> todayTeacherAttendance,
    @JsonKey(name: 'leave_requests_pending') @Default(0) int leaveRequestsPending,
    @JsonKey(name: 'recently_assigned_class_teachers')
    @Default(<RecentClassTeacherAssignment>[])
    List<RecentClassTeacherAssignment> recentlyAssigned,
  }) = _ClassTeacherDashboard;

  factory ClassTeacherDashboard.fromJson(Map<String, dynamic> json) => _$ClassTeacherDashboardFromJson(json);
}

@freezed
abstract class RecentClassTeacherAssignment with _$RecentClassTeacherAssignment {
  const factory RecentClassTeacherAssignment({
    @JsonKey(name: 'assignment_id') required String assignmentId,
    @JsonKey(name: 'teacher_name') String? teacherName,
    @JsonKey(name: 'employee_code') String? employeeCode,
    @JsonKey(name: 'class_name') String? className,
    @JsonKey(name: 'section_name') String? sectionName,
    @JsonKey(name: 'assigned_at') DateTime? assignedAt,
  }) = _RecentClassTeacherAssignment;

  factory RecentClassTeacherAssignment.fromJson(Map<String, dynamic> json) =>
      _$RecentClassTeacherAssignmentFromJson(json);
}

/// GET /admin/staff/class-teacher-assignments?session_id= — admin/staff/
/// classTeacher.service.js#listClassTeacherAssignments (the whole row +
/// `staff_accounts { staff_id, full_name, employee_code, designation,
/// contact_number, profile_photo_url }`, `classes`, `sections`,
/// `academic_sessions { session_id, session_name }`).
@freezed
abstract class ClassTeacherAssignmentRecord with _$ClassTeacherAssignmentRecord {
  const factory ClassTeacherAssignmentRecord({
    @JsonKey(name: 'assignment_id') required String assignmentId,
    @JsonKey(name: 'staff_id') String? staffId,
    @JsonKey(name: 'class_id') String? classId,
    @JsonKey(name: 'section_id') String? sectionId,
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'staff_accounts') ClassTeacherStaffRef? staff,
    @JsonKey(name: 'classes') ClassRef? classRef,
    @JsonKey(name: 'sections') SectionRef? sectionRef,
    @JsonKey(name: 'academic_sessions') AssignmentSessionRef? session,
  }) = _ClassTeacherAssignmentRecord;

  factory ClassTeacherAssignmentRecord.fromJson(Map<String, dynamic> json) =>
      _$ClassTeacherAssignmentRecordFromJson(json);
}

@freezed
abstract class ClassTeacherStaffRef with _$ClassTeacherStaffRef {
  const factory ClassTeacherStaffRef({
    @JsonKey(name: 'staff_id') String? staffId,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'employee_code') String? employeeCode,
    String? designation,
    @JsonKey(name: 'contact_number') String? contactNumber,
    @JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,
  }) = _ClassTeacherStaffRef;

  factory ClassTeacherStaffRef.fromJson(Map<String, dynamic> json) => _$ClassTeacherStaffRefFromJson(json);
}

@freezed
abstract class AssignmentSessionRef with _$AssignmentSessionRef {
  const factory AssignmentSessionRef({
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'session_name') String? sessionName,
  }) = _AssignmentSessionRef;

  factory AssignmentSessionRef.fromJson(Map<String, dynamic> json) => _$AssignmentSessionRefFromJson(json);
}

/// POST /admin/staff/class-teacher-assignments/bulk — classTeacher.service.js
/// #bulkAssignClassTeachers: `{ assigned, failed, results, errors }`.
@freezed
abstract class ClassTeacherBulkResult with _$ClassTeacherBulkResult {
  const factory ClassTeacherBulkResult({
    @Default(0) int assigned,
    @Default(0) int failed,
    @Default(<ClassTeacherBulkError>[]) List<ClassTeacherBulkError> errors,
  }) = _ClassTeacherBulkResult;

  factory ClassTeacherBulkResult.fromJson(Map<String, dynamic> json) => _$ClassTeacherBulkResultFromJson(json);
}

@freezed
abstract class ClassTeacherBulkError with _$ClassTeacherBulkError {
  const factory ClassTeacherBulkError({
    @JsonKey(name: 'class_id') String? classId,
    @JsonKey(name: 'section_id') String? sectionId,
    String? error,
  }) = _ClassTeacherBulkError;

  factory ClassTeacherBulkError.fromJson(Map<String, dynamic> json) => _$ClassTeacherBulkErrorFromJson(json);
}

/// GET /admin/staff/class-teacher-assignments/history?class_id=&section_id=&page=
/// — classTeacher.service.js#getAssignmentHistory: raw audit.audit_logs rows
/// (`module_name: 'Class Teacher Assignment'`), `{ total, page, limit, data }`.
@freezed
abstract class ClassTeacherHistoryPage with _$ClassTeacherHistoryPage {
  const factory ClassTeacherHistoryPage({
    @Default(0) int total,
    @Default(1) int page,
    @Default(50) int limit,
    @Default(<ClassTeacherHistoryLog>[]) List<ClassTeacherHistoryLog> data,
  }) = _ClassTeacherHistoryPage;

  factory ClassTeacherHistoryPage.fromJson(Map<String, dynamic> json) => _$ClassTeacherHistoryPageFromJson(json);
}

/// ASSIGN rows carry the assignment in `new_data`, REMOVE rows in
/// `old_data` (both `{ staff_id, class_id, section_id, session_id }` ids).
@freezed
abstract class ClassTeacherHistoryLog with _$ClassTeacherHistoryLog {
  const factory ClassTeacherHistoryLog({
    @JsonKey(name: 'log_id') required String logId,
    @JsonKey(name: 'action_type') String? actionType,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'old_data') ClassTeacherAuditData? oldData,
    @JsonKey(name: 'new_data') ClassTeacherAuditData? newData,
  }) = _ClassTeacherHistoryLog;

  factory ClassTeacherHistoryLog.fromJson(Map<String, dynamic> json) => _$ClassTeacherHistoryLogFromJson(json);
}

extension ClassTeacherHistoryLogPayload on ClassTeacherHistoryLog {
  /// The assignment this entry is about (web AssignmentHistoryPanel).
  ClassTeacherAuditData? get payload => actionType == 'REMOVE' ? oldData : newData;
}

@freezed
abstract class ClassTeacherAuditData with _$ClassTeacherAuditData {
  const factory ClassTeacherAuditData({
    @JsonKey(name: 'staff_id') String? staffId,
    @JsonKey(name: 'class_id') String? classId,
    @JsonKey(name: 'section_id') String? sectionId,
    @JsonKey(name: 'session_id') String? sessionId,
  }) = _ClassTeacherAuditData;

  factory ClassTeacherAuditData.fromJson(Map<String, dynamic> json) => _$ClassTeacherAuditDataFromJson(json);
}

/// GET /admin/staff/class-teacher/overview — getOverview: one row per
/// section of the institution with its Class Teacher (or null).
@freezed
abstract class ClassTeacherOverview with _$ClassTeacherOverview {
  const factory ClassTeacherOverview({
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'session_name') String? sessionName,
    @JsonKey(name: 'total_sections') @Default(0) int totalSections,
    @Default(0) int assigned,
    @Default(0) int unassigned,
    @Default(<ClassTeacherOverviewRow>[]) List<ClassTeacherOverviewRow> data,
  }) = _ClassTeacherOverview;

  factory ClassTeacherOverview.fromJson(Map<String, dynamic> json) => _$ClassTeacherOverviewFromJson(json);
}

@freezed
abstract class ClassTeacherOverviewRow with _$ClassTeacherOverviewRow {
  const factory ClassTeacherOverviewRow({
    @JsonKey(name: 'class_id') String? classId,
    @JsonKey(name: 'class_name') String? className,
    @JsonKey(name: 'section_id') required String sectionId,
    @JsonKey(name: 'section_name') String? sectionName,
    @JsonKey(name: 'assignment_id') String? assignmentId,
    // 'ASSIGNED' | 'UNASSIGNED'
    String? status,
    @JsonKey(name: 'class_teacher') OverviewClassTeacher? classTeacher,
  }) = _ClassTeacherOverviewRow;

  factory ClassTeacherOverviewRow.fromJson(Map<String, dynamic> json) => _$ClassTeacherOverviewRowFromJson(json);
}

@freezed
abstract class OverviewClassTeacher with _$OverviewClassTeacher {
  const factory OverviewClassTeacher({
    @JsonKey(name: 'staff_id') String? staffId,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'employee_code') String? employeeCode,
    @JsonKey(name: 'contact_number') String? contactNumber,
    String? email,
    @JsonKey(name: 'employment_status') String? employmentStatus,
    @JsonKey(name: 'account_status') String? accountStatus,
  }) = _OverviewClassTeacher;

  factory OverviewClassTeacher.fromJson(Map<String, dynamic> json) => _$OverviewClassTeacherFromJson(json);
}

/// GET /admin/staff/class-teacher/attendance-monitoring — getAttendanceMonitoring.
@freezed
abstract class ClassTeacherAttendanceMonitoring with _$ClassTeacherAttendanceMonitoring {
  const factory ClassTeacherAttendanceMonitoring({
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'expected_working_days_this_month') int? expectedWorkingDaysThisMonth,
    @Default(<ClassTeacherAttendanceRow>[]) List<ClassTeacherAttendanceRow> data,
  }) = _ClassTeacherAttendanceMonitoring;

  factory ClassTeacherAttendanceMonitoring.fromJson(Map<String, dynamic> json) =>
      _$ClassTeacherAttendanceMonitoringFromJson(json);
}

@freezed
abstract class ClassTeacherAttendanceRow with _$ClassTeacherAttendanceRow {
  const factory ClassTeacherAttendanceRow({
    @JsonKey(name: 'assignment_id') required String assignmentId,
    @JsonKey(name: 'class_name') String? className,
    @JsonKey(name: 'section_name') String? sectionName,
    @JsonKey(name: 'total_students') @Default(0) int totalStudents,
    @JsonKey(name: 'marked_today') @Default(0) int markedToday,
    @JsonKey(name: 'is_fully_marked_today') @Default(false) bool isFullyMarkedToday,
    @JsonKey(name: 'last_marked_date') DateTime? lastMarkedDate,
    @JsonKey(name: 'monthly_completion_pct') @LooseNumConverter() num? monthlyCompletionPct,
  }) = _ClassTeacherAttendanceRow;

  factory ClassTeacherAttendanceRow.fromJson(Map<String, dynamic> json) => _$ClassTeacherAttendanceRowFromJson(json);
}

/// GET /admin/staff/class-teacher/homework-monitoring — getHomeworkMonitoring.
@freezed
abstract class ClassTeacherHomeworkMonitoring with _$ClassTeacherHomeworkMonitoring {
  const factory ClassTeacherHomeworkMonitoring({
    @JsonKey(name: 'session_id') String? sessionId,
    @Default(<ClassTeacherHomeworkRow>[]) List<ClassTeacherHomeworkRow> data,
  }) = _ClassTeacherHomeworkMonitoring;

  factory ClassTeacherHomeworkMonitoring.fromJson(Map<String, dynamic> json) =>
      _$ClassTeacherHomeworkMonitoringFromJson(json);
}

@freezed
abstract class ClassTeacherHomeworkRow with _$ClassTeacherHomeworkRow {
  const factory ClassTeacherHomeworkRow({
    @JsonKey(name: 'assignment_id') required String assignmentId,
    @JsonKey(name: 'class_name') String? className,
    @JsonKey(name: 'section_name') String? sectionName,
    @JsonKey(name: 'homework_given_today') @Default(0) int homeworkGivenToday,
    @JsonKey(name: 'pending_homework') @Default(0) int pendingHomework,
    @JsonKey(name: 'last_homework_date') DateTime? lastHomeworkDate,
    @JsonKey(name: 'submission_completion_pct') @LooseNumConverter() num? submissionCompletionPct,
  }) = _ClassTeacherHomeworkRow;

  factory ClassTeacherHomeworkRow.fromJson(Map<String, dynamic> json) => _$ClassTeacherHomeworkRowFromJson(json);
}

/// GET /admin/staff/class-teacher/performance-monitoring?exam_id= —
/// getClassPerformanceMonitoring. `exam` is null when the session has no
/// exam yet (every row's percentages are then null too).
@freezed
abstract class ClassTeacherPerformanceMonitoring with _$ClassTeacherPerformanceMonitoring {
  const factory ClassTeacherPerformanceMonitoring({
    @JsonKey(name: 'session_id') String? sessionId,
    ManagementExamOption? exam,
    @Default(<ClassTeacherPerformanceRow>[]) List<ClassTeacherPerformanceRow> data,
  }) = _ClassTeacherPerformanceMonitoring;

  factory ClassTeacherPerformanceMonitoring.fromJson(Map<String, dynamic> json) =>
      _$ClassTeacherPerformanceMonitoringFromJson(json);
}

@freezed
abstract class ClassTeacherPerformanceRow with _$ClassTeacherPerformanceRow {
  const factory ClassTeacherPerformanceRow({
    @JsonKey(name: 'assignment_id') required String assignmentId,
    @JsonKey(name: 'class_name') String? className,
    @JsonKey(name: 'section_name') String? sectionName,
    @JsonKey(name: 'class_average_percentage') @LooseNumConverter() num? classAveragePercentage,
    @JsonKey(name: 'pass_percentage') @LooseNumConverter() num? passPercentage,
  }) = _ClassTeacherPerformanceRow;

  factory ClassTeacherPerformanceRow.fromJson(Map<String, dynamic> json) => _$ClassTeacherPerformanceRowFromJson(json);
}

/// An exam picker entry — GET /admin/academic/exams (academic/
/// exams.service.js#listExams returns the whole exam row + exam_types +
/// academic_sessions; the picker reads only id + name), also the
/// performance-monitoring `exam { exam_id, exam_name }`.
@freezed
abstract class ManagementExamOption with _$ManagementExamOption {
  const factory ManagementExamOption({
    @JsonKey(name: 'exam_id') required String examId,
    @JsonKey(name: 'exam_name') required String examName,
  }) = _ManagementExamOption;

  factory ManagementExamOption.fromJson(Map<String, dynamic> json) => _$ManagementExamOptionFromJson(json);
}

/// GET /admin/staff/class-teacher/:assignmentId/students —
/// getStudentsUnderClassTeacher (ACTIVE students of that class/section).
@freezed
abstract class ClassTeacherRosterStats with _$ClassTeacherRosterStats {
  const factory ClassTeacherRosterStats({
    @JsonKey(name: 'class_id') String? classId,
    @JsonKey(name: 'section_id') String? sectionId,
    @JsonKey(name: 'session_id') String? sessionId,
    @Default(0) int total,
    @Default(0) int boys,
    @Default(0) int girls,
    @JsonKey(name: 'new_admissions') @Default(0) int newAdmissions,
    @JsonKey(name: 'pending_documents') @Default(0) int pendingDocuments,
    @JsonKey(name: 'students_on_leave_today') @Default(0) int studentsOnLeaveToday,
  }) = _ClassTeacherRosterStats;

  factory ClassTeacherRosterStats.fromJson(Map<String, dynamic> json) => _$ClassTeacherRosterStatsFromJson(json);
}

/// GET /admin/staff/reports/workload — admin/staff/reports.service.js
/// #getWorkloadReport (sorted by periods_per_week desc).
@freezed
abstract class TeacherWorkloadRow with _$TeacherWorkloadRow {
  const factory TeacherWorkloadRow({
    @JsonKey(name: 'staff_id') required String staffId,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'employee_code') String? employeeCode,
    String? designation,
    @JsonKey(name: 'periods_per_week') @Default(0) int periodsPerWeek,
    @JsonKey(name: 'sections_taught') @Default(0) int sectionsTaught,
  }) = _TeacherWorkloadRow;

  factory TeacherWorkloadRow.fromJson(Map<String, dynamic> json) => _$TeacherWorkloadRowFromJson(json);
}

/// GET /admin/staff/reports/homework-status — #getHomeworkStatusReport.
@freezed
abstract class TeacherHomeworkStatusRow with _$TeacherHomeworkStatusRow {
  const factory TeacherHomeworkStatusRow({
    @JsonKey(name: 'staff_id') required String staffId,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'employee_code') String? employeeCode,
    @JsonKey(name: 'assigned_count') @Default(0) int assignedCount,
    @JsonKey(name: 'total_submissions') @Default(0) int totalSubmissions,
    @JsonKey(name: 'graded_submissions') @Default(0) int gradedSubmissions,
    @JsonKey(name: 'pending_submissions') @Default(0) int pendingSubmissions,
  }) = _TeacherHomeworkStatusRow;

  factory TeacherHomeworkStatusRow.fromJson(Map<String, dynamic> json) => _$TeacherHomeworkStatusRowFromJson(json);
}

/// GET /admin/staff/reports/marks-entry-status?exam_id= — #getMarksEntryStatusReport.
@freezed
abstract class TeacherMarksEntryRow with _$TeacherMarksEntryRow {
  const factory TeacherMarksEntryRow({
    @JsonKey(name: 'staff_id') required String staffId,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'employee_code') String? employeeCode,
    @JsonKey(name: 'class_name') String? className,
    @JsonKey(name: 'section_name') String? sectionName,
    @JsonKey(name: 'subject_name') String? subjectName,
    @JsonKey(name: 'total_students') @Default(0) int totalStudents,
    @JsonKey(name: 'entered_count') @Default(0) int enteredCount,
    @JsonKey(name: 'pending_count') @Default(0) int pendingCount,
  }) = _TeacherMarksEntryRow;

  factory TeacherMarksEntryRow.fromJson(Map<String, dynamic> json) => _$TeacherMarksEntryRowFromJson(json);
}

// ── Principal Management (web features/principals) ───────────────────────

/// GET /admin/principal-activity?limit= — admin/principalActivity/
/// principalActivity.service.js#getPrincipalActivity: principal remarks
/// (student + staff) and event approvals merged, newest first, capped.
/// `activity_type` is REMARK | RECOMMENDED_ACTION | EVENT_APPROVAL;
/// `target_type` STUDENT | STAFF | EVENT.
@freezed
abstract class PrincipalActivityItem with _$PrincipalActivityItem {
  const factory PrincipalActivityItem({
    @JsonKey(name: 'activity_type') String? activityType,
    @JsonKey(name: 'target_type') String? targetType,
    @JsonKey(name: 'target_id') String? targetId,
    @JsonKey(name: 'target_name') String? targetName,
    @JsonKey(name: 'remark_text') String? remarkText,
    @JsonKey(name: 'performed_by') String? performedBy,
    DateTime? timestamp,
  }) = _PrincipalActivityItem;

  factory PrincipalActivityItem.fromJson(Map<String, dynamic> json) => _$PrincipalActivityItemFromJson(json);
}
