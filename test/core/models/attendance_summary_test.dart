// Parses the EXACT JSON captured from a live call to
// GET /parent/children/:studentId/attendance during the Attendance slice's
// planning phase (real account, real backend, real data) — not a
// hand-written guess at the shape. Confirms:
//   - the wrapper envelope (from/to/total/data)
//   - a null `remarks` (most rows) and a non-null one ("GOOD")
//   - a null `check_in_time` and a non-null one (only the time-of-day
//     matters — the date part is a meaningless epoch placeholder)
//   - the unknownEnumValue fallback for a status the app doesn't recognize

import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/models/attendance_record.dart';
import 'package:edusoft_mobile/core/models/attendance_summary.dart';

const _liveResponseData = {
  'from': '2025-12-31T18:30:00.000Z',
  'to': '2026-12-31T18:29:59.999Z',
  'total': 2,
  'data': [
    {
      'attendance_id': 'c6dfe822-21b3-41c9-bdac-ca0de5c8625f',
      'student_id': '64cf03d7-40f6-432f-b08a-62af25288884',
      'attendance_date': '2026-09-20T00:00:00.000Z',
      'status': 'PRESENT',
      'remarks': null,
      'marked_by': '4b80a916-ce99-482a-ac6b-e93cd678c39f',
      'created_at': '2026-09-21T09:34:53.310Z',
      'session_id': '00a4bd91-0ec0-4c85-bd7a-5b5c830ce6e8',
      'check_in_time': null,
    },
    {
      'attendance_id': 'e3b389a1-3e34-4e9e-a6f3-4e144864f03a',
      'student_id': '64cf03d7-40f6-432f-b08a-62af25288884',
      'attendance_date': '2026-08-03T00:00:00.000Z',
      'status': 'PRESENT',
      'remarks': 'GOOD',
      'marked_by': 'b297c028-d14f-4336-9f2e-a52ac573213a',
      'created_at': '2026-08-03T05:49:47.034Z',
      'session_id': '00a4bd91-0ec0-4c85-bd7a-5b5c830ce6e8',
      'check_in_time': '1970-01-01T03:50:00.000Z',
    },
  ],
};

void main() {
  group('AttendanceSummary.fromJson', () {
    test('parses the envelope and both record variants from a live response', () {
      final summary = AttendanceSummary.fromJson(_liveResponseData);

      expect(summary.total, 2);
      expect(summary.data, hasLength(2));

      final noRemarks = summary.data[0];
      expect(noRemarks.status, AttendanceStatus.present);
      expect(noRemarks.remarks, isNull);
      expect(noRemarks.checkInTime, isNull);

      final withRemarks = summary.data[1];
      expect(withRemarks.remarks, 'GOOD');
      expect(withRemarks.checkInTimeOfDay, isNotNull);
      expect(withRemarks.checkInTimeOfDay!.hour, 3);
      expect(withRemarks.checkInTimeOfDay!.minute, 50);
    });

    test('falls back to unknown for a status value not in the known set', () {
      final firstRecord = Map<String, dynamic>.from(
        (_liveResponseData['data']! as List).first as Map,
      );
      final json = {
        ..._liveResponseData,
        'data': [
          {...firstRecord, 'status': 'SOME_FUTURE_STATUS'},
        ],
      };

      final summary = AttendanceSummary.fromJson(json);

      expect(summary.data.single.status, AttendanceStatus.unknown);
    });
  });

  group('AttendanceSummaryStats.countsByStatus', () {
    test('groups records by status correctly', () {
      final summary = AttendanceSummary.fromJson(_liveResponseData);
      final counts = summary.countsByStatus;

      expect(counts[AttendanceStatus.present], 2);
      expect(counts[AttendanceStatus.absent], isNull);
    });
  });
}
