// The two CLASS-period records are captured LIVE from
// GET /parent/children/:studentId/timetable (real account, real backend).
// No BREAK period exists in that account's actual timetable data, so
// _syntheticBreakEntry is constructed from prisma/schema.prisma's own
// comment on period_type ("BREAK — no subject/teacher") rather than a live
// capture — clearly marked as such, not passed off as verified live data.

import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/models/timetable_entry.dart';

const _classPeriod = {
  'timetable_entry_id': 'b8a75b15-912a-43df-8a32-f03560dcb282',
  'class_id': '35ccf572-c849-4eba-a1c2-cf5e8ab4c9bc',
  'section_id': 'ed699f4c-ea1b-4112-88f3-0b2a4432b8ee',
  'subject_id': '2260e648-ba45-4f3e-8690-23076a5abd44',
  'staff_id': '26a02b0d-fb43-4226-8973-15d2d7368fbd',
  'session_id': '00a4bd91-0ec0-4c85-bd7a-5b5c830ce6e8',
  'day_of_week': 2,
  'period_number': 3,
  'start_time': '1970-01-01T20:30:00.000Z',
  'end_time': '1970-01-01T21:30:00.000Z',
  'room': '123',
  'period_type': 'CLASS',
  'break_label': null,
  'academic_subjects': {'subject_id': '2260e648-ba45-4f3e-8690-23076a5abd44', 'subject_name': 'Mathematics'},
  'staff_accounts': {'staff_id': '26a02b0d-fb43-4226-8973-15d2d7368fbd', 'full_name': 'Rohit Sharma'},
};

// Constructed, not live-captured — see file header.
const _syntheticBreakEntry = {
  'timetable_entry_id': 'synthetic-break-0001',
  'class_id': '35ccf572-c849-4eba-a1c2-cf5e8ab4c9bc',
  'section_id': 'ed699f4c-ea1b-4112-88f3-0b2a4432b8ee',
  'subject_id': null,
  'staff_id': null,
  'session_id': '00a4bd91-0ec0-4c85-bd7a-5b5c830ce6e8',
  'day_of_week': 2,
  'period_number': 4,
  'start_time': '1970-01-01T21:30:00.000Z',
  'end_time': '1970-01-01T22:00:00.000Z',
  'room': null,
  'period_type': 'BREAK',
  'break_label': 'Lunch',
  'academic_subjects': null,
  'staff_accounts': null,
};

void main() {
  group('TimetableEntry.fromJson', () {
    test('parses a live CLASS period, including the epoch-date time fields', () {
      final entry = TimetableEntry.fromJson(_classPeriod);

      expect(entry.dayOfWeek, 2);
      expect(entry.dayLabel, 'Tuesday'); // confirms the 1=Monday convention
      expect(entry.periodType, PeriodType.classPeriod);
      expect(entry.subject?.subjectName, 'Mathematics');
      expect(entry.teacher?.fullName, 'Rohit Sharma');
      expect(entry.startTimeOfDay.hour, 20);
      expect(entry.startTimeOfDay.minute, 30);
      expect(entry.room, '123');
    });

    test('parses a BREAK period with null subject/teacher without throwing', () {
      final entry = TimetableEntry.fromJson(_syntheticBreakEntry);

      expect(entry.periodType, PeriodType.breakPeriod);
      expect(entry.subject, isNull);
      expect(entry.teacher, isNull);
      expect(entry.breakLabel, 'Lunch');
    });

    test('falls back to unknown for an unrecognized period_type', () {
      final json = {..._classPeriod, 'period_type': 'SOME_FUTURE_TYPE'};

      final entry = TimetableEntry.fromJson(json);

      expect(entry.periodType, PeriodType.unknown);
    });
  });
}
