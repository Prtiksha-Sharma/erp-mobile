import 'package:freezed_annotation/freezed_annotation.dart';

import 'attendance_record.dart';

part 'attendance_summary.freezed.dart';
part 'attendance_summary.g.dart';

/// Matches GET /parent/children/:studentId/attendance's data envelope
/// exactly — { from, to, total, data }. All four field names are
/// unambiguous between snake_case and camelCase (single words), so no
/// @JsonKey needed here, unlike attendance_record.dart's fields.
@freezed
abstract class AttendanceSummary with _$AttendanceSummary {
  const factory AttendanceSummary({
    required DateTime from,
    required DateTime to,
    required int total,
    required List<AttendanceRecord> data,
  }) = _AttendanceSummary;

  factory AttendanceSummary.fromJson(Map<String, dynamic> json) =>
      _$AttendanceSummaryFromJson(json);
}

extension AttendanceSummaryStats on AttendanceSummary {
  /// Counts per status, in a fixed display order — only non-zero counts
  /// should be rendered (see ParentAttendanceScreen), computed here once
  /// rather than in the widget.
  Map<AttendanceStatus, int> get countsByStatus {
    final counts = <AttendanceStatus, int>{};
    for (final record in data) {
      counts[record.status] = (counts[record.status] ?? 0) + 1;
    }
    return counts;
  }
}
