import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';

part 'staff_self_service.freezed.dart';
part 'staff_self_service.g.dart';

/// GET /teacher/my-attendance?period= — teacher/myAttendance.service.js:
/// `{ from, to, total, data }` over the staff member's own staff_attendance
/// rows. Distinct from the student AttendanceSummary: staff_attendance has
/// no check_in_time, and its status column (PRESENT / ABSENT / HALF_DAY /
/// ON_LEAVE per the web's STATUS_VARIANT) is not the student enum, so it
/// stays a String.
@freezed
abstract class StaffAttendanceSummary with _$StaffAttendanceSummary {
  const factory StaffAttendanceSummary({
    DateTime? from,
    DateTime? to,
    @Default(0) int total,
    @Default(<StaffAttendanceRecord>[]) List<StaffAttendanceRecord> data,
  }) = _StaffAttendanceSummary;

  factory StaffAttendanceSummary.fromJson(Map<String, dynamic> json) => _$StaffAttendanceSummaryFromJson(json);
}

@freezed
abstract class StaffAttendanceRecord with _$StaffAttendanceRecord {
  const factory StaffAttendanceRecord({
    @JsonKey(name: 'attendance_id') required String attendanceId,
    @JsonKey(name: 'attendance_date') required DateTime attendanceDate,
    required String status,
    String? remarks,
  }) = _StaffAttendanceRecord;

  factory StaffAttendanceRecord.fromJson(Map<String, dynamic> json) => _$StaffAttendanceRecordFromJson(json);
}

extension StaffAttendanceStats on StaffAttendanceSummary {
  int get presentCount => data.where((r) => r.status == 'PRESENT').length;

  /// Present ÷ recorded days × 100, or null when nothing is recorded — the
  /// web dashboard/profile's attendancePct.
  double? get presentPercent => data.isEmpty ? null : presentCount / data.length * 100;
}

/// GET/POST /teacher/my-leaves and PATCH …/:id/cancel —
/// teacher/myLeaves.service.js (raw staff_leaves rows). `total_days` is a
/// Prisma Decimal string; `status` is PENDING / APPROVED / REJECTED /
/// CANCELLED.
@freezed
abstract class StaffLeave with _$StaffLeave {
  const factory StaffLeave({
    @JsonKey(name: 'leave_id') required String leaveId,
    @JsonKey(name: 'leave_type') required String leaveType,
    @JsonKey(name: 'from_date') required DateTime fromDate,
    @JsonKey(name: 'to_date') required DateTime toDate,
    @JsonKey(name: 'total_days') @LooseNumConverter() num? totalDays,
    String? reason,
    String? status,
    String? remarks,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _StaffLeave;

  factory StaffLeave.fromJson(Map<String, dynamic> json) => _$StaffLeaveFromJson(json);
}
