import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/models/activity_item.dart';
import '../../../core/models/calendar_entry.dart';
import '../../../core/models/event_item.dart';
import '../services/school_updates_service.dart';

/// Events, Calendar, and the institution-wide Activities feed are NOT
/// child-scoped (same content regardless of which child is active) — plain
/// providers, not families. Only childActivitiesProvider needs the
/// studentId key (Pillar 1).

final eventsProvider = FutureProvider<List<EventItem>>((ref) async {
  final result = await SchoolUpdatesService().getEvents();
  return switch (result) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
});

final calendarProvider = FutureProvider<List<CalendarEntry>>((ref) async {
  final result = await SchoolUpdatesService().getCalendar();
  return switch (result) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
});

final activitiesProvider = FutureProvider<List<ActivityItem>>((ref) async {
  final result = await SchoolUpdatesService().getActivities();
  return switch (result) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
});

final childActivitiesProvider = FutureProvider.family<List<ActivityParticipation>, String>(
  (ref, studentId) async {
    final result = await SchoolUpdatesService().getChildActivities(studentId);
    return switch (result) {
      Ok(:final value) => value,
      Err(:final failure) => throw failure,
    };
  },
);
