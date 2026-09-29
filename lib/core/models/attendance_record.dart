import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_record.freezed.dart';
part 'attendance_record.g.dart';

/// Verified live against GET /parent/children/:studentId/attendance — see
/// teacher/attendance.service.js:21 STATUS_VALUES for the authoritative
/// list. `unknown` is a deliberate escape hatch, not a bug: if the backend
/// ever adds a 6th status, this renders it distinctly instead of crashing
/// the whole Attendance screen (json_serializable's unknownEnumValue).
enum AttendanceStatus {
  @JsonValue('PRESENT')
  present,
  @JsonValue('ABSENT')
  absent,
  @JsonValue('LATE')
  late,
  @JsonValue('HALF_DAY')
  halfDay,
  @JsonValue('WEEK_OFF')
  weekOff,
  unknown,
}

/// Colors match the web app's own design tokens (apps/platform CLAUDE.md
/// :root block) so the mobile app stays visually consistent with the
/// brand, not an arbitrary Material palette pick.
extension AttendanceStatusDisplay on AttendanceStatus {
  String get label => switch (this) {
        AttendanceStatus.present => 'Present',
        AttendanceStatus.absent => 'Absent',
        AttendanceStatus.late => 'Late',
        AttendanceStatus.halfDay => 'Half Day',
        AttendanceStatus.weekOff => 'Week Off',
        AttendanceStatus.unknown => 'Unknown',
      };

  Color get color => switch (this) {
        AttendanceStatus.present => const Color(0xFF16A34A), // --color-success
        AttendanceStatus.absent => const Color(0xFFDC2626), // --color-danger
        AttendanceStatus.late => const Color(0xFFD97706), // --color-warning
        AttendanceStatus.halfDay => const Color(0xFFEA580C), // distinct from late/absent
        AttendanceStatus.weekOff => const Color(0xFF94A3B8), // --color-text-muted
        AttendanceStatus.unknown => const Color(0xFF64748B),
      };
}

/// Deliberately leaner than the full student_attendance row (see
/// prisma/schema.prisma) — student_id/marked_by/session_id/created_at are
/// backend bookkeeping the UI never renders, so they're left out rather
/// than modeled and ignored.
@freezed
abstract class AttendanceRecord with _$AttendanceRecord {
  const factory AttendanceRecord({
    @JsonKey(name: 'attendance_id') required String attendanceId,
    @JsonKey(name: 'attendance_date') required DateTime attendanceDate,
    @JsonKey(name: 'status', unknownEnumValue: AttendanceStatus.unknown)
    required AttendanceStatus status,
    @JsonKey(name: 'remarks') String? remarks,
    // The date part is meaningless here (epoch 1970-01-01 — @db.Time
    // column, verified live) — only ever read the time-of-day, see
    // checkInTimeOfDay below.
    @JsonKey(name: 'check_in_time') DateTime? checkInTime,
  }) = _AttendanceRecord;

  factory AttendanceRecord.fromJson(Map<String, dynamic> json) =>
      _$AttendanceRecordFromJson(json);
}

extension AttendanceRecordDisplay on AttendanceRecord {
  TimeOfDay? get checkInTimeOfDay {
    final t = checkInTime;
    if (t == null) return null;
    return TimeOfDay(hour: t.hour, minute: t.minute);
  }
}
