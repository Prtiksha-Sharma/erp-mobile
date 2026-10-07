import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'student_brief.dart';

part 'admin_school_life_records.freezed.dart';
part 'admin_school_life_records.g.dart';

// School Admin → Discipline Records / Student Leaves / Staff Leaves (web
// features/discipline, features/leaves). Statuses/severities stay Strings
// and map to a BadgeVariant on screen, so an unknown value never crashes.

/// One row of GET /admin/students/discipline — admin/student/
/// discipline.service.js#listDisciplineRecords (raw
/// `student_discipline_records` row + `include { students { student_id,
/// admission_no, applicants { first_name, last_name } } }`). `severity` is
/// MINOR | MODERATE | MAJOR, `status` OPEN | RESOLVED.
@freezed
abstract class AdminDisciplineRow with _$AdminDisciplineRow {
  const factory AdminDisciplineRow({
    @JsonKey(name: 'discipline_id') required String disciplineId,
    @JsonKey(name: 'student_id') String? studentId,
    // @db.Date — UTC midnight.
    @JsonKey(name: 'incident_date') DateTime? incidentDate,
    @JsonKey(name: 'incident_type') required String incidentType,
    String? description,
    String? severity,
    @JsonKey(name: 'action_taken') String? actionTaken,
    String? status,
    @JsonKey(name: 'resolved_at') DateTime? resolvedAt,
    String? remarks,
    @JsonKey(name: 'students') StudentBrief? student,
  }) = _AdminDisciplineRow;

  factory AdminDisciplineRow.fromJson(Map<String, dynamic> json) => _$AdminDisciplineRowFromJson(json);
}

/// `{ total, page, limit, data }` of GET /admin/students/discipline.
@freezed
abstract class AdminDisciplinePage with _$AdminDisciplinePage {
  const factory AdminDisciplinePage({
    @Default(0) int total,
    @Default(1) int page,
    @Default(20) int limit,
    @Default(<AdminDisciplineRow>[]) List<AdminDisciplineRow> data,
  }) = _AdminDisciplinePage;

  factory AdminDisciplinePage.fromJson(Map<String, dynamic> json) => _$AdminDisciplinePageFromJson(json);
}

/// One row of GET /admin/students/leaves — admin/student/leaves.service.js
/// #listLeaves (raw `student_leaves` row + the same `students` include as
/// discipline). Read-only for School Admin: the Class Teacher approves.
/// `total_days` is a Prisma Decimal string; `status` PENDING | APPROVED |
/// REJECTED.
@freezed
abstract class AdminStudentLeaveRow with _$AdminStudentLeaveRow {
  const factory AdminStudentLeaveRow({
    @JsonKey(name: 'leave_id') required String leaveId,
    @JsonKey(name: 'student_id') String? studentId,
    @JsonKey(name: 'leave_type') String? leaveType,
    @JsonKey(name: 'from_date') DateTime? fromDate,
    @JsonKey(name: 'to_date') DateTime? toDate,
    @JsonKey(name: 'total_days') @LooseNumConverter() num? totalDays,
    String? reason,
    String? status,
    @JsonKey(name: 'approved_at') DateTime? approvedAt,
    String? remarks,
    @JsonKey(name: 'students') StudentBrief? student,
  }) = _AdminStudentLeaveRow;

  factory AdminStudentLeaveRow.fromJson(Map<String, dynamic> json) => _$AdminStudentLeaveRowFromJson(json);
}

@freezed
abstract class AdminStudentLeavePage with _$AdminStudentLeavePage {
  const factory AdminStudentLeavePage({
    @Default(0) int total,
    @Default(1) int page,
    @Default(20) int limit,
    @Default(<AdminStudentLeaveRow>[]) List<AdminStudentLeaveRow> data,
  }) = _AdminStudentLeavePage;

  factory AdminStudentLeavePage.fromJson(Map<String, dynamic> json) => _$AdminStudentLeavePageFromJson(json);
}

/// `staff_accounts { staff_id, full_name, employee_code, designation }` —
/// the include on admin/staff/leaves.service.js#listLeaves.
@freezed
abstract class LeaveStaffRef with _$LeaveStaffRef {
  const factory LeaveStaffRef({
    @JsonKey(name: 'staff_id') String? staffId,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'employee_code') String? employeeCode,
    String? designation,
  }) = _LeaveStaffRef;

  factory LeaveStaffRef.fromJson(Map<String, dynamic> json) => _$LeaveStaffRefFromJson(json);
}

/// One row of GET /admin/staff/leaves — admin/staff/leaves.service.js
/// #listLeaves (raw `staff_leaves` row + `staff_accounts`). School Admin
/// approves/rejects PENDING ones (PATCH …/:leaveId/{approve,reject}).
@freezed
abstract class AdminStaffLeaveRow with _$AdminStaffLeaveRow {
  const factory AdminStaffLeaveRow({
    @JsonKey(name: 'leave_id') required String leaveId,
    @JsonKey(name: 'staff_id') String? staffId,
    @JsonKey(name: 'leave_type') String? leaveType,
    @JsonKey(name: 'from_date') DateTime? fromDate,
    @JsonKey(name: 'to_date') DateTime? toDate,
    @JsonKey(name: 'total_days') @LooseNumConverter() num? totalDays,
    String? reason,
    String? status,
    @JsonKey(name: 'approved_at') DateTime? approvedAt,
    String? remarks,
    @JsonKey(name: 'staff_accounts') LeaveStaffRef? staff,
  }) = _AdminStaffLeaveRow;

  factory AdminStaffLeaveRow.fromJson(Map<String, dynamic> json) => _$AdminStaffLeaveRowFromJson(json);
}

@freezed
abstract class AdminStaffLeavePage with _$AdminStaffLeavePage {
  const factory AdminStaffLeavePage({
    @Default(0) int total,
    @Default(1) int page,
    @Default(20) int limit,
    @Default(<AdminStaffLeaveRow>[]) List<AdminStaffLeaveRow> data,
  }) = _AdminStaffLeavePage;

  factory AdminStaffLeavePage.fromJson(Map<String, dynamic> json) => _$AdminStaffLeavePageFromJson(json);
}
