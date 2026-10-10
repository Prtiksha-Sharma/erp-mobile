// Renders the shared hostel oversight pages (School Admin with write
// actions, Vice Principal read-only) at phone and tablet sizes with stubbed
// providers — fails on any overflow or build exception. Fixture shapes
// follow admin/hostel/*.service.js.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

import 'package:edusoft_mobile/core/models/admin_campus_hostel.dart';
import 'package:edusoft_mobile/features/hostel_oversight/hostel_oversight.dart';
import 'package:edusoft_mobile/features/hostel_oversight/providers/hostel_oversight_providers.dart';
import 'package:edusoft_mobile/features/hostel_oversight/screens/hostel_oversight_dashboard_screen.dart';
import 'package:edusoft_mobile/features/hostel_oversight/screens/hostel_oversight_hostels_screen.dart';
import 'package:edusoft_mobile/features/hostel_oversight/screens/hostel_oversight_reports_screen.dart';
import 'package:edusoft_mobile/features/hostel_oversight/screens/hostel_oversight_rooms_screen.dart';
import 'package:edusoft_mobile/features/hostel_oversight/screens/hostel_oversight_students_screen.dart';
import 'package:edusoft_mobile/features/hostel_oversight/screens/hostel_oversight_wardens_screen.dart';

final _dashboard = HostelDashboard.fromJson({
  'total_hostels': 2,
  'total_rooms': 50,
  'total_capacity': 150,
  'occupied_beds': 3,
  'available_beds': 147,
  'total_hostel_students': 3,
  'active_wardens': 1,
  'vacant_rooms': 47,
  'vacant_beds': 147,
});

final _hostels = [
  CampusHostel.fromJson({
    'hostel_id': 'h1',
    'hostel_name': 'Sardar Vallabhbhai Patel Boys Hostel — North Wing',
    'hostel_type': 'BOYS',
    'address': '12 Campus Road, Pune',
    'contact_number': '9876543210',
    'is_active': true,
    'warden': {'staff_id': 'w1', 'full_name': 'Test Hostel Warden', 'employee_code': 'AURA-EMP-0014', 'designation': 'Warden'},
  }),
  CampusHostel.fromJson({'hostel_id': 'h2', 'hostel_name': 'Girls Hostel', 'hostel_type': 'GIRLS', 'is_active': false, 'warden': null}),
];

Map<String, dynamic> _room(int n, int occupied) => {
      'room_id': 'r$n',
      'room_number': '$n',
      'floor_number': n <= 3 ? 1 : 2,
      'room_type': 'SHARED',
      'ac_type': 'AC',
      'capacity': 3,
      'occupied': occupied,
      'vacant': 3 - occupied,
    };

final _occupancy = HostelOccupancyReport.fromJson({
  'total_rooms': 5,
  'total_capacity': 15,
  'total_occupied': 4,
  'total_vacant': 11,
  'rooms': [_room(1, 3), _room(2, 1), _room(3, 0), _room(4, 0), _room(5, 0)],
});

final _students = [
  for (var n = 1; n <= 3; n++)
    HostelAllocation.fromJson({
      'allocation_id': 'a$n',
      'student_id': 's$n',
      'bed_number': 'B$n',
      'allocated_at': '2026-06-01T10:00:00.000Z',
      'vacated_at': null,
      'status': n == 3 ? 'VACATED' : 'ACTIVE',
      'hostel_rooms': {'room_id': 'r1', 'room_number': '1', 'capacity': 3, 'floor_number': 1},
      'students': {'student_id': 's$n', 'admission_no': 'AURA-2026-00$n', 'applicants': {'first_name': 'Boss $n', 'last_name': 'Bhandari Applicant'}},
    }),
];

final _wardens = [
  HostelWarden.fromJson({
    'staff_id': 'w1',
    'full_name': 'Test Hostel Warden',
    'employee_code': 'AURA-EMP-0014',
    'designation': 'Warden',
    'contact_number': '9876500000',
    'email': 'warden@example.com',
    'account_status': 'ACTIVE',
    'assigned_hostel': {'hostel_id': 'h1', 'hostel_name': 'Sardar Vallabhbhai Patel Boys Hostel', 'is_active': true},
  }),
];

final _wardenDetail = HostelWarden.fromJson({
  ..._wardens.first.toJson(),
  'staff_id': 'w1',
  'full_name': 'Test Hostel Warden',
  'account_status': 'ACTIVE',
  'assigned_hostel': {'hostel_id': 'h1', 'hostel_name': 'Sardar Vallabhbhai Patel Boys Hostel', 'hostel_type': 'BOYS', 'is_active': true},
  'institution_hostel_snapshot': {'total_rooms': 50, 'total_capacity': 150, 'occupied_beds': 3, 'available_beds': 147},
});

final _summary = HostelAttendanceSummary.fromJson({'total': 40, 'by_status': {'PRESENT': 36, 'ABSENT': 4}});

List<Override> get _overrides => [
      hostelDashboardProvider.overrideWith((ref) async => _dashboard),
      campusHostelsProvider.overrideWith((ref) async => _hostels),
      hostelOccupancyProvider.overrideWith((ref) async => _occupancy),
      hostelStudentsProvider.overrideWith((ref, status) async => _students),
      hostelStudentHistoryProvider.overrideWith((ref, id) async => _students),
      hostelWardensProvider.overrideWith((ref) async => _wardens),
      hostelWardenDetailProvider.overrideWith((ref, id) async => _wardenDetail),
      hostelAttendanceSummaryProvider.overrideWith((ref, k) async => _summary),
    ];

HostelOversightConfig _config({required bool canManage}) => HostelOversightConfig(
      basePath: '/hostel-test',
      canManage: canManage,
      frame: (context, {required title, required body, floatingActionButton}) =>
          Scaffold(appBar: AppBar(title: Text(title)), body: body, floatingActionButton: floatingActionButton),
    );

const _sizes = {
  'phone (360x780)': Size(360, 780),
  'tablet portrait (800x1280)': Size(800, 1280),
  'tablet landscape (1280x800)': Size(1280, 800),
};

Future<void> _pump(WidgetTester tester, Widget screen, Size size, HostelOversightConfig config) async {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(
    ProviderScope(
      overrides: _overrides,
      child: MaterialApp.router(
        routerConfig: GoRouter(routes: [GoRoute(path: '/', builder: (_, _) => screen), ...hostelOversightRoutes(config)]),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  for (final size in _sizes.entries) {
    group(size.key, () {
      for (final canManage in [true, false]) {
        final who = canManage ? 'School Admin' : 'Vice Principal';
        final c = _config(canManage: canManage);
        final screens = <String, Widget>{
          'Dashboard': HostelOversightDashboardScreen(config: c),
          'Hostels': HostelOversightHostelsScreen(config: c),
          'Rooms': HostelOversightRoomsScreen(config: c),
          'Students': HostelOversightStudentsScreen(config: c),
          'Wardens': HostelOversightWardensScreen(config: c),
          'Warden detail': HostelOversightWardenDetailScreen(config: c, staffId: 'w1'),
          'Reports': HostelOversightReportsScreen(config: c),
        };
        for (final s in screens.entries) {
          testWidgets('$who · ${s.key} renders without overflow', (tester) async {
            await _pump(tester, s.value, size.value, c);
            expect(tester.takeException(), isNull);
          });
        }
      }
    });
  }

  testWidgets('Hostels: School Admin gets Add + row menu; Vice Principal gets neither', (tester) async {
    await _pump(tester, HostelOversightHostelsScreen(config: _config(canManage: true)), _sizes.values.first, _config(canManage: true));
    expect(find.text('Add hostel'), findsOneWidget);
    expect(find.byType(PopupMenuButton<String>), findsNWidgets(2));
    expect(find.text('No warden assigned'), findsOneWidget);

    await _pump(tester, HostelOversightHostelsScreen(config: _config(canManage: false)), _sizes.values.first, _config(canManage: false));
    expect(find.text('Add hostel'), findsNothing);
    expect(find.byType(PopupMenuButton<String>), findsNothing);
  });

  testWidgets('Hostels: assign-warden sheet lists wardens', (tester) async {
    final c = _config(canManage: true);
    await _pump(tester, HostelOversightHostelsScreen(config: c), _sizes.values.first, c);
    await tester.tap(find.byType(PopupMenuButton<String>).last);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Assign warden'));
    await tester.pumpAndSettle();
    expect(find.text('Warden for Girls Hostel'), findsOneWidget);
    expect(find.textContaining('Currently at Sardar'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Rooms: Full filter shows only full rooms', (tester) async {
    final c = _config(canManage: false);
    await _pump(tester, HostelOversightRoomsScreen(config: c), _sizes.values.first, c);
    await tester.tap(find.widgetWithText(ChoiceChip, 'Full'));
    await tester.pumpAndSettle();
    expect(find.text('Room 1'), findsOneWidget);
    expect(find.text('Room 2'), findsNothing);
  });

  testWidgets('Reports: roll-call rate is computed from by_status', (tester) async {
    final c = _config(canManage: false);
    await _pump(tester, HostelOversightReportsScreen(config: c), _sizes.values.first, c);
    expect(find.text('90%'), findsOneWidget);
    expect(find.text('Present 36 · Absent 4'), findsOneWidget);
  });
}
