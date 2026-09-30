// Captured LIVE from GET /parent/children/:studentId/transport (real
// account, real backend). The null-stop/bus/driver cases below are
// constructed from the exact reshape logic in
// transport/assignments.service.js#getStudentTransport (each is
// independently null-guarded there, not live-captured, since this test
// account's assignment happens to have all four populated).

import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/models/transport_info.dart';

const _liveTransportInfo = {
  'route': {'route_id': '56964f6c-9b5a-48a0-a644-12fa862e62da', 'route_name': 'Route 2'},
  'stop': {
    'stop_id': 'fad8fb73-13a0-42c8-9d84-59d98571b306',
    'stop_name': 'Khichripur',
    'pickup_time': '1970-01-01T13:12:00.000Z',
    'drop_time': null,
  },
  'bus': {'bus_number': 'bus-02', 'capacity': 35},
  'driver': {'name': 'Raj', 'phone': '1234567890', 'photo_url': null},
  'session': {'session_id': '00a4bd91-0ec0-4c85-bd7a-5b5c830ce6e8', 'session_name': '2025-2026'},
};

void main() {
  test('TransportInfo.fromJson parses a live response with a populated stop/bus/driver', () {
    final info = TransportInfo.fromJson(_liveTransportInfo);

    expect(info.route.routeName, 'Route 2');
    expect(info.stop?.stopName, 'Khichripur');
    expect(info.stop?.pickupTimeOfDay?.hour, 13);
    expect(info.stop?.dropTimeOfDay, isNull); // genuinely null live
    expect(info.bus?.busNumber, 'bus-02');
    expect(info.driver?.name, 'Raj');
  });

  test('handles stop/bus/driver each independently null (matches the service\'s own null-guards)', () {
    final json = {
      'route': {'route_id': 'r1', 'route_name': 'Route 1'},
      'stop': null,
      'bus': null,
      'driver': null,
      'session': {'session_id': 's1', 'session_name': '2025-2026'},
    };

    final info = TransportInfo.fromJson(json);

    expect(info.route.routeName, 'Route 1');
    expect(info.stop, isNull);
    expect(info.bus, isNull);
    expect(info.driver, isNull);
  });
}
