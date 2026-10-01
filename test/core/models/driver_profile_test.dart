// Constructed from a direct read of driver.service.js#getMyDriverProfile,
// transport/trips.service.js's TRIP_INCLUDE, and the `drivers`/`routes`/
// `route_stops`/`driver_trips` Prisma models — not live-captured yet.

import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/models/driver_profile.dart';

void main() {
  group('DriverProfile.fromJson', () {
    test('parses a profile with an assigned bus, route, and stops', () {
      final profile = DriverProfile.fromJson({
        'driver_id': 'd1',
        'name': 'Ramesh Kumar',
        'phone': '9876543210',
        'license_number': 'DL12345',
        'license_expiry_date': '2027-01-01T00:00:00.000Z',
        'employment_status': 'ACTIVE',
        'buses': {
          'bus_id': 'b1',
          'bus_number': 'KA-01-AB-1234',
          'capacity': 40,
          'routes': [
            {
              'route_id': 'r1',
              'route_name': 'Route A',
              'is_active': true,
              'route_stops': [
                {
                  'stop_id': 's1',
                  'stop_name': 'Main Gate',
                  'pickup_time': '1970-01-01T07:30:00.000Z',
                  'drop_time': null,
                  'stop_order': 1,
                },
              ],
            },
          ],
        },
      });

      expect(profile.bus?.busNumber, 'KA-01-AB-1234');
      expect(profile.bus?.routes.single.stops.single.stopName, 'Main Gate');
      expect(profile.bus?.routes.single.stops.single.pickupTime?.hour, 7);
    });

    test('handles no vehicle assigned (bus is null)', () {
      final profile = DriverProfile.fromJson({
        'driver_id': 'd2',
        'name': 'New Driver',
        'phone': '9999999999',
        'license_number': 'DL99999',
        'license_expiry_date': '2028-01-01T00:00:00.000Z',
        'employment_status': 'ACTIVE',
        'buses': null,
      });

      expect(profile.bus, isNull);
    });
  });

  group('DriverTrip.fromJson', () {
    test('parses an ongoing trip with a route', () {
      final trip = DriverTrip.fromJson({
        'trip_id': 't1',
        'trip_type': 'PICKUP',
        'trip_date': '2026-09-30T00:00:00.000Z',
        'start_time': '2026-09-30T07:00:00.000Z',
        'end_time': null,
        'status': 'ONGOING',
        'student_count': null,
        'start_location': null,
        'end_location': null,
        'routes': {'route_id': 'r1', 'route_name': 'Route A'},
      });

      expect(trip.tripType, TripType.pickup);
      expect(trip.status, TripStatus.ongoing);
      expect(trip.route?.routeName, 'Route A');
    });

    test('falls back to unknown for an unrecognized status', () {
      final trip = DriverTrip.fromJson({
        'trip_id': 't2',
        'trip_type': 'PICKUP',
        'trip_date': '2026-09-30T00:00:00.000Z',
        'start_time': null,
        'end_time': null,
        'status': 'SOME_FUTURE_STATUS',
        'student_count': null,
        'start_location': null,
        'end_location': null,
        'routes': null,
      });

      expect(trip.status, TripStatus.unknown);
    });
  });

  group('StopReachedResult.fromJson', () {
    test('parses the alert confirmation shape', () {
      final result = StopReachedResult.fromJson({'alert_id': 'a1', 'recipient_count': 3});
      expect(result.recipientCount, 3);
    });
  });
}
