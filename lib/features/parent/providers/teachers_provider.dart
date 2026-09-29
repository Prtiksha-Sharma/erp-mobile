import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/models/teacher_profile.dart';
import '../../../core/models/teacher_summary.dart';
import '../services/teachers_service.dart';

/// Keyed by studentId (Pillar 1 — re-fetch on child switch).
final childTeachersProvider = FutureProvider.family<ChildTeachers, String>(
  (ref, studentId) async {
    final result = await TeachersService().getChildTeachers(studentId);
    return switch (result) {
      Ok(:final value) => value,
      Err(:final failure) => throw failure,
    };
  },
);

/// Keyed by staffId, not studentId — a teacher profile isn't child-scoped
/// (see TeachersService's own comment).
final teacherProfileProvider = FutureProvider.family<TeacherProfile, String>(
  (ref, staffId) async {
    final result = await TeachersService().getTeacherProfile(staffId);
    return switch (result) {
      Ok(:final value) => value,
      Err(:final failure) => throw failure,
    };
  },
);
