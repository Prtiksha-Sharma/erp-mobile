import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/models/homework_submission.dart';
import '../services/homework_service.dart';

/// Two family providers, both keyed by studentId (Pillar 1 — re-fetch on
/// child switch). Kept as two rather than one parameterized-by-type
/// provider since the endpoints themselves are already the distinguishing
/// factor — no need for an extra enum param to thread through.
final homeworkProvider = FutureProvider.family<List<HomeworkSubmission>, String>(
  (ref, studentId) async {
    final result = await HomeworkService().getChildHomework(studentId);
    return switch (result) {
      Ok(:final value) => value,
      Err(:final failure) => throw failure,
    };
  },
);

final assignmentsProvider = FutureProvider.family<List<HomeworkSubmission>, String>(
  (ref, studentId) async {
    final result = await HomeworkService().getChildAssignments(studentId);
    return switch (result) {
      Ok(:final value) => value,
      Err(:final failure) => throw failure,
    };
  },
);
