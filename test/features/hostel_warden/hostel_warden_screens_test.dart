// Renders every hostel warden screen at phone, portrait-tablet and
// landscape-tablet sizes with stubbed providers. Flutter fails a widget
// test on any RenderFlex overflow or build exception, so this is the
// "works on every non-PC screen size" check for the whole portal.
// Fixture shapes are copied from live /hostel/* responses.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

import 'package:edusoft_mobile/core/models/app_notification.dart';
import 'package:edusoft_mobile/core/models/hostel_warden.dart';
import 'package:edusoft_mobile/core/roles/app_role.dart';
import 'package:edusoft_mobile/core/roles/role_registry.dart';
import 'package:edusoft_mobile/core/shell/shell_notifications_provider.dart';
import 'package:edusoft_mobile/features/hostel_warden/hostel_warden_module.dart';
import 'package:edusoft_mobile/features/hostel_warden/providers/hostel_warden_providers.dart';
import 'package:edusoft_mobile/features/hostel_warden/screens/hostel_allocations_screen.dart';
import 'package:edusoft_mobile/features/hostel_warden/screens/hostel_attendance_screen.dart';
import 'package:edusoft_mobile/features/hostel_warden/screens/hostel_mess_screen.dart';
import 'package:edusoft_mobile/features/hostel_warden/screens/hostel_residents_screen.dart';
import 'package:edusoft_mobile/features/hostel_warden/screens/hostel_rooms_screen.dart';
import 'package:edusoft_mobile/features/hostel_warden/screens/hostel_visitors_screen.dart';
import 'package:edusoft_mobile/features/hostel_warden/screens/hostel_warden_dashboard_screen.dart';

// ── Fixtures ────────────────────────────────────────────────────────────

Map<String, dynamic> _roomRef(int n, {int floor = 1}) => {
      'room_id': 'r$n',
      'room_number': '$n',
      'capacity': 3,
      'floor_number': floor,
      'room_type': 'SHARED',
      'ac_type': n.isEven ? 'AC' : 'NON_AC',
    };

Map<String, dynamic> _studentRef(int n) => {
      'student_id': 's$n',
      'admission_no': 'AURA-2026-00$n',
      'applicants': {'first_name': 'Aishwarya-Lakshmi $n', 'last_name': 'Venkataraman-Subramanian'},
    };

final _rooms = [
  for (var n = 1; n <= 6; n++)
    WardenRoom.fromJson({
      ..._roomRef(n, floor: n <= 3 ? 1 : 2),
      'institution_id': 'i1',
      'is_active': true,
      'occupied_count': n == 1 ? 3 : (n == 2 ? 1 : 0),
      'vacant_count': n == 1 ? 0 : (n == 2 ? 2 : 3),
      'room_status': n == 1 ? 'FULL' : (n == 2 ? 'PARTIAL' : 'VACANT'),
    }),
];

final _floors = [
  WardenFloor.fromJson({'floor_number': 1, 'room_count': 3, 'total_capacity': 9, 'first_room_number': '1', 'last_room_number': '3'}),
  WardenFloor.fromJson({'floor_number': 2, 'room_count': 3, 'total_capacity': 9, 'first_room_number': '4', 'last_room_number': '6'}),
];

final _allocations = [
  for (var n = 1; n <= 4; n++)
    StudentRoomAllocation.fromJson({
      'allocation_id': 'a$n',
      'room_id': n <= 3 ? 'r1' : 'r2',
      'student_id': 's$n',
      'session_id': 'ss1',
      'bed_number': 'B$n',
      'allocated_at': '2026-06-01T10:00:00.000Z',
      'vacated_at': null,
      'status': 'ACTIVE',
      'hostel_rooms': _roomRef(n <= 3 ? 1 : 2),
      'students': _studentRef(n),
    }),
];

final _staffAllocations = [
  StaffRoomAllocation.fromJson({
    'allocation_id': 'sa1',
    'room_id': 'r2',
    'staff_id': 'st1',
    'session_id': 'ss1',
    'bed_number': null,
    'allocated_at': '2026-06-01T10:00:00.000Z',
    'status': 'ACTIVE',
    'hostel_rooms': _roomRef(2),
    'staff_accounts': {'staff_id': 'st1', 'employee_code': 'AURA-EMP-0002', 'full_name': 'Kavitha Menon', 'designation': 'Senior Teacher'},
  }),
];

final _residents = [
  for (final a in _allocations)
    HostelResident.fromJson({
      'resident_type': 'STUDENT',
      'allocation_id': a.allocationId,
      'person_id': a.studentId,
      'identifier': a.student!.admissionNo,
      'name': a.student!.name,
      'role_label': null,
      'bed_number': a.bedNumber,
      'allocated_at': '2026-06-01T10:00:00.000Z',
      'hostel_rooms': _roomRef(a.roomId == 'r1' ? 1 : 2),
    }),
  HostelResident.fromJson({
    'resident_type': 'STAFF',
    'allocation_id': 'sa1',
    'person_id': 'st1',
    'identifier': 'AURA-EMP-0002',
    'name': 'Kavitha Menon',
    'role_label': 'Senior Teacher',
    'bed_number': null,
    'allocated_at': '2026-06-01T10:00:00.000Z',
    'hostel_rooms': _roomRef(2),
  }),
];

String get _todayIso {
  final n = DateTime.now();
  return DateTime.utc(n.year, n.month, n.day).toIso8601String();
}

final _marks = [
  HostelAttendanceRecord.fromJson({
    'attendance_id': 'at1',
    'student_id': 's1',
    'room_id': 'r1',
    'attendance_date': _todayIso,
    'status': 'ABSENT',
    'students': _studentRef(1),
    'hostel_rooms': {'room_id': 'r1', 'room_number': '1', 'floor_number': 1},
  }),
];

final _visitors = [
  HostelVisitor.fromJson({
    'visitor_id': 'v1',
    'student_id': 's1',
    'visitor_name': 'Ravishankar Venkataraman',
    'relation_to_student': 'Father',
    'visit_date': _todayIso,
    'check_in_time': '1970-01-01T09:05:00.000Z',
    'check_out_time': null,
    'purpose': 'Dropping off winter clothes and books for the term',
    'students': _studentRef(1),
  }),
  HostelVisitor.fromJson({
    'visitor_id': 'v2',
    'student_id': 's2',
    'visitor_name': 'Meera',
    'relation_to_student': 'Mother',
    'visit_date': _todayIso,
    'check_in_time': '1970-01-01T08:00:00.000Z',
    'check_out_time': '1970-01-01T08:45:00.000Z',
    'purpose': null,
    'students': _studentRef(2),
  }),
];

final _menu = [
  for (final slot in messMealSlots)
    EffectiveMeal.fromJson({
      'meal_slot': slot,
      'menu_items': slot == 'SNACKS' ? null : 'Idli, sambar, coconut chutney, filter coffee',
      'is_special': slot == 'DINNER',
    }),
];

final _weekly = [
  for (final day in messDaysOfWeek.take(3))
    for (final slot in messMealSlots)
      MessMenuEntry.fromJson({'menu_id': '$day$slot', 'day_of_week': day, 'meal_slot': slot, 'menu_items': 'Poha, banana, tea'}),
];

final _specials = [
  MessSpecialMenuEntry.fromJson({
    'special_menu_id': 'sp1',
    'special_date': '2026-10-20T00:00:00.000Z',
    'meal_slot': 'DINNER',
    'menu_items': 'Diwali feast — biryani, gulab jamun',
  }),
];

final _studentProfile = StudentResidentProfile.fromJson({
  'student_id': 's1',
  'admission_no': 'AURA-2026-001',
  'roll_no': '7',
  'admission_date': '2026-04-01T00:00:00.000Z',
  'current_class': {'class_name': 'Class 1'},
  'current_section': {'section_name': 'A'},
  'applicants': {
    'first_name': 'Aishwarya',
    'middle_name': null,
    'last_name': 'Venkataraman',
    'gender': 'FEMALE',
    'dob': '2019-05-10T00:00:00.000Z',
    'blood_group': 'O+',
    'contact_no': null,
    'email_id': null,
    'photo_url': null,
  },
  'student_addresses': [
    {'address_type': 'PERMANENT', 'address_line_1': '12 MG Road', 'city': 'Pune', 'state': 'Maharashtra', 'pincode': '411001'},
  ],
  'parents': [
    {'relation_type': 'FATHER', 'first_name': 'Ravishankar', 'last_name': 'Venkataraman', 'mobile_no': '9876543210', 'email': null},
  ],
  'allocation': {'allocation_id': 'a1', 'bed_number': 'B1', 'allocated_at': '2026-06-01T10:00:00.000Z', 'hostel_rooms': _roomRef(1)},
});

final _staffProfile = StaffResidentProfile.fromJson({
  'staff_id': 'st1',
  'employee_code': 'AURA-EMP-0002',
  'full_name': 'Kavitha Menon',
  'designation': 'Senior Teacher',
  'department': 'Science',
  'contact_number': '9876500000',
  'users': {'email': 'kavitha@example.com', 'mobile_no': '9876500000'},
  'allocation': {'allocation_id': 'sa1', 'bed_number': null, 'hostel_rooms': _roomRef(2)},
});

final _inbox = NotificationInbox.fromJson({'notifications': [], 'unread_count': 0});

List<Override> _overrides({
  List<StudentRoomAllocation>? allocations,
  List<HostelResident>? residents,
  List<HostelVisitor>? visitors,
}) =>
    [
      shellNotificationsProvider.overrideWith((ref, role) async => _inbox),
      wardenRoomsProvider.overrideWith((ref) async => _rooms),
      wardenFloorsProvider.overrideWith((ref) async => _floors),
      wardenAllocationsProvider.overrideWith((ref) async => allocations ?? _allocations),
      wardenStaffAllocationsProvider.overrideWith((ref) async => _staffAllocations),
      wardenResidentsProvider.overrideWith((ref) async => residents ?? _residents),
      wardenStudentResidentProvider.overrideWith((ref, id) async => _studentProfile),
      wardenStaffResidentProvider.overrideWith((ref, id) async => _staffProfile),
      wardenAttendanceByDayProvider.overrideWith((ref, day) async => _marks),
      wardenStudentAttendanceProvider.overrideWith((ref, k) async => _marks),
      wardenVisitorsProvider.overrideWith((ref, k) async => visitors ?? _visitors),
      wardenEffectiveMenuProvider.overrideWith((ref, day) async => _menu),
      wardenWeeklyMenuProvider.overrideWith((ref) async => _weekly),
      wardenSpecialMenuProvider.overrideWith((ref) async => _specials),
      wardenStudentSearchProvider.overrideWith((ref, q) async => [WardenStudentRef.fromJson(_studentRef(9))]),
      wardenStaffSearchProvider.overrideWith((ref, q) async => const []),
    ];

const _sizes = {
  'phone (360x780)': Size(360, 780),
  'tablet portrait (800x1280)': Size(800, 1280),
  'tablet landscape (1280x800)': Size(1280, 800),
};

final _screens = <String, Widget Function()>{
  'Dashboard': () => const HostelWardenDashboardScreen(),
  'Attendance': () => const HostelAttendanceScreen(),
  'Visitors': () => const HostelVisitorsScreen(),
  'Mess': () => const HostelMessScreen(),
  'Residents': () => const HostelResidentsScreen(),
  'Student resident profile': () => const StudentResidentScreen(studentId: 's1'),
  'Staff resident profile': () => const StaffResidentScreen(staffId: 'st1'),
  'Allocations': () => const HostelAllocationsScreen(),
  'Rooms': () => const HostelRoomsScreen(),
};

Future<void> _pump(WidgetTester tester, Widget screen, Size size, {List<Override>? overrides}) async {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(
    ProviderScope(
      overrides: overrides ?? _overrides(),
      child: MaterialApp.router(
        routerConfig: GoRouter(
          routes: [GoRoute(path: '/', builder: (_, _) => screen), ...HostelWardenModule().routes()],
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  test('the backend "Hostel Warden" role maps to the hostel warden module', () {
    expect(AppRole.fromBackendName('Hostel Warden'), AppRole.hostelWarden);
    expect(roleRegistry[AppRole.hostelWarden], isA<HostelWardenModule>());
    expect(roleRegistry[AppRole.hostelWarden]!.homePath, '/hostel/home');
  });

  for (final size in _sizes.entries) {
    group(size.key, () {
      for (final screen in _screens.entries) {
        testWidgets('${screen.key} renders without overflow', (tester) async {
          await _pump(tester, screen.value(), size.value);
          expect(tester.takeException(), isNull);
        });
      }

      testWidgets('Mess: weekly and special-day tabs render', (tester) async {
        await _pump(tester, const HostelMessScreen(), size.value);
        await tester.tap(find.text('Weekly'));
        await tester.pumpAndSettle();
        expect(tester.takeException(), isNull);
        expect(find.textContaining('Monday'), findsWidgets);
        await tester.tap(find.text('Special days'));
        await tester.pumpAndSettle();
        expect(tester.takeException(), isNull);
        expect(find.textContaining('Diwali feast'), findsOneWidget);
      });

      testWidgets('Allocations: staff tab renders', (tester) async {
        await _pump(tester, const HostelAllocationsScreen(), size.value);
        await tester.tap(find.text('Staff').first);
        await tester.pumpAndSettle();
        expect(tester.takeException(), isNull);
        expect(find.text('Kavitha Menon'), findsOneWidget);
      });
    });
  }

  testWidgets('Attendance: rooms show marking state; roll-call sheet toggles a student', (tester) async {
    await _pump(tester, const HostelAttendanceScreen(), _sizes.values.first);
    expect(find.text('1 absent'), findsWidgets); // room 1: s1 marked ABSENT
    expect(find.text('Not marked'), findsOneWidget); // room 2: nobody marked
    await tester.tap(find.text('Room 2'));
    await tester.pumpAndSettle();
    expect(find.text('Room 2 roll-call'), findsOneWidget);
    expect(find.text('Everyone present'), findsOneWidget);
    await tester.tap(find.text('A').last);
    await tester.pumpAndSettle();
    expect(find.text('1 absent'), findsWidgets);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Attendance: no residents shows the empty state', (tester) async {
    await _pump(tester, const HostelAttendanceScreen(), _sizes.values.first, overrides: _overrides(allocations: const []));
    expect(find.text('No residents yet'), findsOneWidget);
  });

  testWidgets('Visitors: inside vs checked out', (tester) async {
    await _pump(tester, const HostelVisitorsScreen(), _sizes.values.first);
    expect(find.text('Inside now (1)'), findsOneWidget);
    expect(find.text('Checked out (1)'), findsOneWidget);
    expect(find.text('Check out'), findsOneWidget);
  });

  testWidgets('Visitors: no visitors shows the empty state', (tester) async {
    await _pump(tester, const HostelVisitorsScreen(), _sizes.values.first, overrides: _overrides(visitors: const []));
    expect(find.text('No visitors logged for this day'), findsOneWidget);
  });

  testWidgets('Visitors: log-visitor sheet opens', (tester) async {
    await _pump(tester, const HostelVisitorsScreen(), _sizes.values.first);
    await tester.tap(find.text('Log visitor'));
    await tester.pumpAndSettle();
    expect(find.text('Log a visitor'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Residents: search and staff filter', (tester) async {
    await _pump(tester, const HostelResidentsScreen(), _sizes.values.first);
    await tester.enterText(find.byType(TextField), 'kavitha');
    await tester.pumpAndSettle();
    expect(find.text('Kavitha Menon'), findsOneWidget);
    expect(find.textContaining('Aishwarya-Lakshmi'), findsNothing);
  });

  testWidgets('Allocations: allocate sheet lists full rooms as full', (tester) async {
    await _pump(tester, const HostelAllocationsScreen(), _sizes.values.first);
    await tester.tap(find.text('Allocate student'));
    await tester.pumpAndSettle();
    expect(find.text('Allocate a student'), findsOneWidget);
    await tester.tap(find.text('Room'));
    await tester.pumpAndSettle();
    expect(find.textContaining('— full'), findsWidgets);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Rooms: reducing a floor warns before saving', (tester) async {
    await _pump(tester, const HostelRoomsScreen(), _sizes.values.first);
    await tester.tap(find.text('Rooms').first);
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), '1');
    await tester.pumpAndSettle();
    expect(find.textContaining('removes the 2 highest-numbered rooms'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
