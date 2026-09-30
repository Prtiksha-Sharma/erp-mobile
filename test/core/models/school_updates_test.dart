// Events, Activities, and Child Activities JSON captured LIVE from the
// running backend. Calendar's live response was a genuinely empty array
// (no calendar entries exist for that institution yet), so the
// non-empty Calendar case below is constructed from the Prisma schema
// (academic_calendar, prisma/schema.prisma:1531) — clearly marked as
// such, not passed off as verified live data.

import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/models/activity_item.dart';
import 'package:edusoft_mobile/core/models/calendar_entry.dart';
import 'package:edusoft_mobile/core/models/event_item.dart';

const _liveEvent = {
  'event_id': 'd5851045-7093-438b-8708-6145ccbed360',
  'institution_id': '878c027b-34f5-4e2e-b789-7dc8d96fe720',
  'event_name': 'Postman Test — Independence Day (updated)',
  'description': 'Created via Postman collection',
  'event_date': '2026-08-15T00:00:00.000Z',
  'created_at': '2026-08-07T10:56:13.992Z',
};

// Real live data — several fields genuinely null, not a constructed edge case.
const _liveActivityWithNulls = {
  'activity_id': 'dac7a484-9d96-4ddc-a28a-29501b1b3c20',
  'institution_id': '878c027b-34f5-4e2e-b789-7dc8d96fe720',
  'activity_name': 'rtyytyret',
  'description': null,
  'activity_type': null,
  'target_audience': 'BOTH',
  'activity_date': null,
  'venue': null,
  'created_by': 'f492430a-f9d0-4a3b-8ce8-b10cfc75c402',
  'created_at': '2026-09-21T11:27:21.451Z',
  'updated_at': '2026-09-21T11:27:21.451Z',
};

const _liveChildParticipation = {
  'participant_id': 'c3669a56-8dab-45b6-96a6-ad91019fc2d2',
  'result': null,
  'remarks': null,
  'created_at': '2026-09-18T10:27:10.707Z',
  'activity': {
    'activity_id': '500f1cf8-5093-4db0-bda3-621f341eb7a4',
    'activity_name': 'drawing competition',
    'description': null,
    'activity_type': null,
    'activity_date': '2026-09-10T00:00:00.000Z',
    'venue': 'room no 204',
  },
};

// Constructed from the Prisma schema, not live-captured — see file header.
const _syntheticCalendarEntry = {
  'calendar_id': 'synthetic-cal-0001',
  'event_title': 'Term 1 begins',
  'event_description': 'First day of the academic session',
  'event_date': '2026-04-01T00:00:00.000Z',
};

void main() {
  test('EventItem.fromJson parses a live event', () {
    final event = EventItem.fromJson(_liveEvent);
    expect(event.eventName, 'Postman Test — Independence Day (updated)');
    expect(event.eventDate.year, 2026);
  });

  test('ActivityItem.fromJson handles genuinely null description/type/venue/date', () {
    final activity = ActivityItem.fromJson(_liveActivityWithNulls);
    expect(activity.activityName, 'rtyytyret');
    expect(activity.description, isNull);
    expect(activity.activityType, isNull);
    expect(activity.activityDate, isNull);
    expect(activity.venue, isNull);
    expect(activity.targetAudience, 'BOTH');
  });

  test('ActivityParticipation.fromJson parses the nested leaner activity shape', () {
    final participation = ActivityParticipation.fromJson(_liveChildParticipation);
    expect(participation.result, isNull);
    expect(participation.activity.activityName, 'drawing competition');
    expect(participation.activity.venue, 'room no 204');
  });

  test('CalendarEntry.fromJson parses a populated entry (schema-derived, not live)', () {
    final entry = CalendarEntry.fromJson(_syntheticCalendarEntry);
    expect(entry.eventTitle, 'Term 1 begins');
    expect(entry.eventDate?.year, 2026);
  });

  test('CalendarEntry.fromJson handles every field null (schema allows this)', () {
    final entry = CalendarEntry.fromJson({
      'calendar_id': 'synthetic-cal-0002',
      'event_title': null,
      'event_description': null,
      'event_date': null,
    });
    expect(entry.eventTitle, isNull);
    expect(entry.eventDate, isNull);
  });
}
