// Both records captured LIVE from GET /parent/children/:studentId/leaves.
// The key thing this test guards: total_days arrives as a JSON STRING
// ("7"), not a number — caught during live verification, not obvious from
// reading the backend source alone (the service just returns the Prisma
// row as-is, and total_days is stored as an int column but Prisma/JSON
// serialization renders it as a string here).

import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/models/leave_record.dart';

const _pendingLeave = {
  'leave_id': '0df3ebdb-db54-44e5-a028-f26bc1c49220',
  'student_id': '64cf03d7-40f6-432f-b08a-62af25288884',
  'leave_type': 'Emergency Leave',
  'from_date': '2016-08-04T00:00:00.000Z',
  'to_date': '2016-08-10T00:00:00.000Z',
  'total_days': '7',
  'reason': 'emergency hai',
  'attachment_url': null,
  'status': 'PENDING',
  'approved_by': null,
  'approved_at': null,
  'remarks': null,
};

const _approvedLeave = {
  'leave_id': 'bef5e0ab-f1fd-49c0-96c5-cdfceee21ce2',
  'student_id': '64cf03d7-40f6-432f-b08a-62af25288884',
  'leave_type': 'Sick Leave',
  'from_date': '2016-07-08T00:00:00.000Z',
  'to_date': '2016-07-09T00:00:00.000Z',
  'total_days': '2',
  'reason': 'Bukhar',
  'attachment_url': null,
  'status': 'APPROVED',
  'approved_by': '612b327c-3a74-4489-a964-5468912f01bc',
  'approved_at': '2026-08-07T05:22:16.327Z',
  'remarks': null,
};

void main() {
  test('LeaveRecord.fromJson parses total_days from a string to an int', () {
    final leave = LeaveRecord.fromJson(_pendingLeave);

    expect(leave.totalDays, 7); // int, not the string "7"
    expect(leave.totalDays, isA<int>());
    expect(leave.status, LeaveStatus.pending);
    expect(leave.leaveType, 'Emergency Leave');
  });

  test('LeaveRecord.fromJson parses an approved leave correctly', () {
    final leave = LeaveRecord.fromJson(_approvedLeave);

    expect(leave.totalDays, 2);
    expect(leave.status, LeaveStatus.approved);
  });

  test('falls back to unknown for an unrecognized status value', () {
    final json = {..._pendingLeave, 'status': 'SOME_FUTURE_STATUS'};

    final leave = LeaveRecord.fromJson(json);

    expect(leave.status, LeaveStatus.unknown);
  });

  test('leaveTypes matches the exact Parent-facing web list (not staff\'s broader list)', () {
    expect(leaveTypes, ['Sick Leave', 'Casual Leave', 'Emergency Leave', 'Other']);
    expect(leaveTypes, isNot(contains('Earned Leave'))); // staff-only, not offered to parents
  });
}
