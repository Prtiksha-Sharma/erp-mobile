import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/models/timetable_entry.dart';
import '../services/timetable_service.dart';

/// Keyed by studentId (Pillar 1 — re-fetch on child switch).
final timetableProvider = FutureProvider.family<List<TimetableEntry>, String>(
  (ref, studentId) async {
    final result = await TimetableService().getChildTimetable(studentId);
    return switch (result) {
      Ok(:final value) => value,
      Err(:final failure) => throw failure,
    };
  },
);
