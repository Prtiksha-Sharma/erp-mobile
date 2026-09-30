import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/models/leave_record.dart';
import '../services/leaves_service.dart';

/// Keyed by studentId (Pillar 1 — re-fetch on child switch).
final leavesProvider = FutureProvider.family<List<LeaveRecord>, String>(
  (ref, studentId) async {
    final result = await LeavesService().getChildLeaves(studentId);
    return switch (result) {
      Ok(:final value) => value,
      Err(:final failure) => throw failure,
    };
  },
);
