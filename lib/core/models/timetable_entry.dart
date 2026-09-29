import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/datetime_extensions.dart';
import 'subject_ref.dart';

part 'timetable_entry.freezed.dart';
part 'timetable_entry.g.dart';

/// 1 = Monday ... 7 = Sunday. Confirmed against the web frontend's own
/// DAY_LABEL map (apps/school/.../TimetablePage.jsx) — NOT the JS
/// Date.getDay() convention (0=Sunday) one might assume for a Node
/// backend. Corroborated by admin/academic/timetable.service.js's create
/// validation using `!day_of_week` as a required-field check, which would
/// incorrectly reject a real Sunday=0.
const dayLabels = {1: 'Monday', 2: 'Tuesday', 3: 'Wednesday', 4: 'Thursday', 5: 'Friday', 6: 'Saturday', 7: 'Sunday'};

/// CLASS entries have subject+teacher; BREAK entries (lunch, etc.) have
/// neither — see prisma/schema.prisma's own comment on period_type.
enum PeriodType {
  @JsonValue('CLASS')
  classPeriod,
  @JsonValue('BREAK')
  breakPeriod,
  unknown,
}

/// Distinct from homework_submission.dart's TeacherRef (which only ever
/// gets `username`) — this endpoint's `staff_accounts` relation returns
/// `full_name` instead. Genuinely different shapes from two different
/// endpoints, not modeled as one type to avoid an artificial shared
/// abstraction over two APIs that just don't agree.
@freezed
abstract class TeacherNameRef with _$TeacherNameRef {
  const factory TeacherNameRef({
    @JsonKey(name: 'full_name') required String fullName,
  }) = _TeacherNameRef;

  factory TeacherNameRef.fromJson(Map<String, dynamic> json) => _$TeacherNameRefFromJson(json);
}

/// Matches GET /parent/children/:studentId/timetable — verified live.
/// `subject`/`teacher` are null exactly when periodType is breakPeriod
/// (confirmed by schema comment, not yet seen live — no BREAK period
/// exists in the test data used for verification).
@freezed
abstract class TimetableEntry with _$TimetableEntry {
  const factory TimetableEntry({
    @JsonKey(name: 'timetable_entry_id') required String entryId,
    @JsonKey(name: 'day_of_week') required int dayOfWeek,
    @JsonKey(name: 'period_number') required int periodNumber,
    // Epoch-date placeholders (@db.Time column) — only .timeOfDayOnly is real.
    @JsonKey(name: 'start_time') required DateTime startTime,
    @JsonKey(name: 'end_time') required DateTime endTime,
    String? room,
    @JsonKey(name: 'period_type', unknownEnumValue: PeriodType.unknown)
    required PeriodType periodType,
    @JsonKey(name: 'break_label') String? breakLabel,
    @JsonKey(name: 'academic_subjects') SubjectRef? subject,
    @JsonKey(name: 'staff_accounts') TeacherNameRef? teacher,
  }) = _TimetableEntry;

  factory TimetableEntry.fromJson(Map<String, dynamic> json) => _$TimetableEntryFromJson(json);
}

extension TimetableEntryDisplay on TimetableEntry {
  String get dayLabel => dayLabels[dayOfWeek] ?? 'Day $dayOfWeek';
  TimeOfDay get startTimeOfDay => startTime.timeOfDayOnly;
  TimeOfDay get endTimeOfDay => endTime.timeOfDayOnly;
}
