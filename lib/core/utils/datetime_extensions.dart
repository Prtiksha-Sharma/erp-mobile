import 'package:flutter/material.dart';

/// For `@db.Time` Postgres columns, Prisma serializes with a meaningless
/// epoch date (1970-01-01) baked in — only the time-of-day is real. Used
/// by any field backed by such a column (AttendanceRecord.checkInTime,
/// TimetableEntry.startTime/endTime, ...). Extracted here once the same
/// "strip the fake date" logic was needed a second time.
extension EpochTimeOfDay on DateTime {
  TimeOfDay get timeOfDayOnly => TimeOfDay(hour: hour, minute: minute);
}
