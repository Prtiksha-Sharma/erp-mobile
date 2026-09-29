import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/models/attendance_summary.dart';
import '../services/attendance_service.dart';

/// Keyed by (studentId, period) using a Dart 3 record — the actual
/// multi-child correctness test this slice exists to prove (Pillar 1):
/// switching child OR period always re-fetches under the right key,
/// never shows stale data under a new label. A `family` provider, not a
/// single shared provider re-pointed on switch, is what guarantees this.
final attendanceProvider = FutureProvider.family<
    AttendanceSummary, ({String studentId, String period})>((ref, params) async {
  final result = await AttendanceService().getChildAttendance(
    params.studentId,
    period: params.period,
  );
  return switch (result) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
});
