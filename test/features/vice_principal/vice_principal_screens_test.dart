// Renders every vice principal screen at phone, portrait-tablet and
// landscape-tablet sizes with stubbed providers. Flutter fails a widget
// test on any RenderFlex overflow or build exception, so this is the
// "works on every non-PC screen size" check for the whole portal.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

import 'package:edusoft_mobile/core/error/failure.dart';
import 'package:edusoft_mobile/core/models/app_notification.dart';
import 'package:edusoft_mobile/core/models/staff_profile.dart';
import 'package:edusoft_mobile/core/models/vice_principal_dashboard.dart';
import 'package:edusoft_mobile/core/roles/app_role.dart';
import 'package:edusoft_mobile/features/vice_principal/providers/vice_principal_portal_providers.dart';
import 'package:edusoft_mobile/features/vice_principal/screens/vice_principal_dashboard_screen.dart';
import 'package:edusoft_mobile/features/vice_principal/screens/vice_principal_page_scaffold.dart';
import 'package:edusoft_mobile/features/vice_principal/screens/vice_principal_profile_screen.dart';
import 'package:edusoft_mobile/features/vice_principal/screens/vice_principal_sidebar.dart';
import 'package:edusoft_mobile/features/vice_principal/screens/vice_principal_top_bar.dart';
import 'package:edusoft_mobile/features/vice_principal/vice_principal_module.dart';

// ── Fixtures (same shapes as the backend; see vice_principal_portal_models_test) ──

final _profile = StaffProfile.fromJson({
  'staff_id': 'vp1',
  'employee_code': 'GHPS-EMP-0002',
  'full_name': 'Mr. Arvind Krishnamurthy Raghavendran',
  'designation': 'Vice Principal & Head of Discipline',
  'department': 'Administration',
  'date_of_joining': '2019-06-01T00:00:00.000Z',
  'contact_number': '9822099999',
  'address': null,
  'employment_status': 'ACTIVE',
  'institution': {'institution_name': 'Green Hills Public School With A Rather Long Name'},
  'branch': {'branch_name': 'Main Campus'},
  'reports_to': {'full_name': 'Dr. Meera Nair', 'designation': 'Principal'},
  'users': {'username': 'GHPS-EMP-0002', 'email': 'arvind.vp@greenhills.edu.in'},
});

final _dashboard = VicePrincipalDashboard.fromJson({
  'total_students': 1812,
  'total_teachers': 86,
  'student_attendance_pct': 97.2,
  'today_teacher_attendance': {'total': 86, 'present': 79},
  'pending_leave_requests': {'staff': 4, 'student': 11},
  'upcoming_exams': [
    for (var i = 1; i <= 5; i++)
      {
        'exam_id': 'ex$i',
        'exam_name': 'Half Yearly Examination — Senior Secondary Section $i',
        'start_date': '2026-10-1${i}T00:00:00.000Z',
        'exam_type': i.isEven ? null : 'Term',
      },
  ],
  'recent_announcements': [
    for (var i = 1; i <= 3; i++)
      {
        'notice_id': 'n$i',
        'title': 'Parent-Teacher Meeting for classes 6 to 10 this Saturday in the main auditorium',
        'notice_date': '2026-09-2${i}T00:00:00.000Z',
      },
  ],
  'upcoming_events': [
    for (var i = 1; i <= 3; i++)
      {
        'event_id': 'ev$i',
        'event_name': 'Annual Sports Day and Inter-House Athletics Championship',
        'event_date': '2026-10-2${i}T00:00:00.000Z',
      },
  ],
  'pending_homework': 27,
});

final _emptyDashboard = VicePrincipalDashboard.fromJson({
  'total_students': 0,
  'total_teachers': 0,
  'student_attendance_pct': null,
  'today_teacher_attendance': {'total': 0, 'present': 0},
  'pending_leave_requests': {'staff': 0, 'student': 0},
  'upcoming_exams': <dynamic>[],
  'recent_announcements': <dynamic>[],
  'upcoming_events': <dynamic>[],
  'pending_homework': 0,
});

final _inbox = NotificationInbox.fromJson({
  'notifications': [
    for (var i = 1; i <= 12; i++)
      {
        'notification_id': 'nt$i',
        'title': 'New staff leave request from a teacher with a fairly long name',
        'body': 'Ramesh Kumar Srinivasan applied for 2 days of Casual Leave starting next Monday.',
        'link': i == 1 ? '/vice-principal/profile' : '/admin/staff-leaves',
        'is_read': i > 11,
        'created_at': DateTime.now().toUtc().subtract(Duration(hours: i * 5)).toIso8601String(),
      },
  ],
  'unread_count': 11,
});

List<Override> _overrides(
        {VicePrincipalDashboard? dashboard, Object? dashboardError, NotificationInbox? inbox}) =>
    [
      vicePrincipalProfileProvider.overrideWith((ref) async => _profile),
      vicePrincipalNotificationsProvider.overrideWith((ref) async => inbox ?? _inbox),
      vicePrincipalDashboardProvider.overrideWith((ref) async {
        if (dashboardError != null) throw dashboardError;
        return dashboard ?? _dashboard;
      }),
    ];

const _sizes = {
  'phone (360x780)': Size(360, 780),
  'tablet portrait (800x1280)': Size(800, 1280),
  'tablet landscape (1280x800)': Size(1280, 800),
};

final _screens = <String, Widget Function()>{
  'Dashboard': () => const VicePrincipalDashboardScreen(),
  'Profile': () => const VicePrincipalProfileScreen(),
};

Future<void> _pump(WidgetTester tester, Widget screen, Size size, {List<Override>? overrides}) async {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(
    ProviderScope(
      overrides: overrides ?? _overrides(),
      // A real router (the sidebar reads the current route): the screen under
      // test at '/', plus the module's own routes so sidebar taps navigate.
      child: MaterialApp.router(
        routerConfig: GoRouter(
          routes: [GoRoute(path: '/', builder: (_, _) => screen), ...VicePrincipalModule().routes()],
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  test('the backend "Vice Principal" role maps to the vice principal module', () {
    expect(AppRole.fromBackendName('Vice Principal'), AppRole.vicePrincipal);
    expect(AppRole.fromBackendName('Principal'), AppRole.principal);
  });

  for (final size in _sizes.entries) {
    group(size.key, () {
      for (final screen in _screens.entries) {
        testWidgets('${screen.key} renders without overflow', (tester) async {
          await _pump(tester, screen.value(), size.value);
          expect(tester.takeException(), isNull);
        });
      }

      testWidgets('Dashboard: empty lists show the web empty-state copy', (tester) async {
        await _pump(tester, const VicePrincipalDashboardScreen(), size.value,
            overrides: _overrides(dashboard: _emptyDashboard));
        expect(tester.takeException(), isNull);
        await tester.scrollUntilVisible(find.text('No upcoming events'), 200,
            // The page body, not the landscape sidebar's own list.
            scrollable: find.descendant(of: find.byType(RefreshIndicator), matching: find.byType(Scrollable)).first);
        expect(find.text('No upcoming exams'), findsOneWidget);
        expect(find.text('No announcements'), findsOneWidget);
        expect(find.text('No upcoming events'), findsOneWidget);
      });

      testWidgets('Top bar: gradient title bar, bell badge and account menu', (tester) async {
        await _pump(tester, const VicePrincipalDashboardScreen(), size.value);
        expect(find.byType(VicePrincipalTopBar), findsOneWidget);
        expect(find.text('9+'), findsOneWidget);
        // The gradient must actually fill the bar (a childless DecoratedBox
        // in flexibleSpace collapses to 0 height and leaves a white bar).
        final gradient = tester.getSize(find.byKey(const ValueKey('vice-principal-top-bar-gradient')));
        expect(gradient.height, greaterThanOrEqualTo(VicePrincipalTopBar.height));
        // On landscape tablets the bar sits right of the permanent sidebar.
        final sidebar = size.value.width >= 840 ? VicePrincipalSidebar.width : 0;
        expect(gradient.width, size.value.width - sidebar);
        // School name only on wide screens (web: xl).
        expect(
          find.descendant(
            of: find.byType(VicePrincipalTopBar),
            matching: find.text('Green Hills Public School With A Rather Long Name'),
          ),
          size.value.width >= 840 ? findsOneWidget : findsNothing,
        );
        // Name beside the avatar from tablet width (web: sm).
        expect(
          find.descendant(
            of: find.byType(VicePrincipalTopBar),
            matching: find.text('Mr. Arvind Krishnamurthy Raghavendran'),
          ),
          size.value.width >= 600 ? findsOneWidget : findsNothing,
        );

        await tester.tap(find.byTooltip('Account'));
        await tester.pumpAndSettle();
        expect(find.text('Change Password'), findsOneWidget);
        expect(find.text('Sign Out'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });

      testWidgets('Notifications sheet lists the feed with its actions', (tester) async {
        await _pump(tester, const VicePrincipalDashboardScreen(), size.value);
        await tester.tap(find.byTooltip('Notifications'));
        await tester.pumpAndSettle();
        expect(find.text('Mark all read'), findsOneWidget);
        expect(find.text('Clear all'), findsOneWidget);
        expect(find.text('5h ago'), findsOneWidget);
        expect(tester.takeException(), isNull);

        await tester.tap(find.text('Clear all'));
        await tester.pumpAndSettle();
        expect(find.text('Clear All Notifications'), findsOneWidget);
      });

      testWidgets('Edit Profile sheet opens prefilled', (tester) async {
        await _pump(tester, const VicePrincipalProfileScreen(), size.value);
        await tester.tap(find.text('Edit Profile'));
        await tester.pumpAndSettle();
        expect(tester.takeException(), isNull);
        expect(find.text('Edit Your Photo'), findsOneWidget);
        expect(find.widgetWithText(TextField, '9822099999'), findsOneWidget);
      });
    });
  }

  testWidgets('Dashboard: a 403 shows the web headline, the message and Retry', (tester) async {
    await _pump(tester, const VicePrincipalDashboardScreen(), const Size(360, 780),
        overrides: _overrides(dashboardError: const Failure.validation('Forbidden')));
    expect(find.textContaining('Failed to load the dashboard.'), findsOneWidget);
    expect(find.textContaining('Forbidden'), findsOneWidget);
    expect(find.text('Retry'), findsOneWidget);
  });

  testWidgets('Profile: a missing address reads "Not provided"', (tester) async {
    await _pump(tester, const VicePrincipalProfileScreen(), const Size(360, 780));
    expect(find.text('Not provided'), findsOneWidget);
  });

  testWidgets("Notifications sheet: an empty feed reads \"You're all caught up.\"", (tester) async {
    await _pump(tester, const VicePrincipalProfileScreen(), const Size(360, 780),
        overrides: _overrides(inbox: const NotificationInbox()));
    expect(find.text('9+'), findsNothing);
    await tester.tap(find.byTooltip('Notifications'));
    await tester.pumpAndSettle();
    expect(find.text("You're all caught up."), findsOneWidget);
    expect(find.text('Mark all read'), findsNothing);
    expect(find.text('Clear all'), findsNothing);
  });

  testWidgets('Change Password: validation matches the web copy', (tester) async {
    await _pump(tester, const VicePrincipalDashboardScreen(), const Size(360, 780));
    await tester.tap(find.byTooltip('Account'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Change Password'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Update Password'));
    await tester.pumpAndSettle();
    expect(find.text('Current password is required.'), findsOneWidget);
    expect(find.text('New password is required.'), findsOneWidget);
    expect(find.text('Please confirm your new password.'), findsOneWidget);
  });

  group('Sidebar (web VICE_PRINCIPAL_NAV)', () {
    test('every web entry, in order, with its web route mapped', () {
      expect(vicePrincipalNav.map((i) => i.label), [
        'Dashboard', 'My Profile', 'Student Monitoring', 'Teacher Monitoring', 'Class Monitoring', 'Attendance',
        'Leave Management', 'Discipline Records', 'Homework', 'Examination', 'Timetable', 'Events',
        'Academic Reports', 'Announcements', 'Fees', 'Library', 'Transport', 'Hostel',
      ]);
      expect(VicePrincipalModule().tabs(), isEmpty);
      expect(vicePrincipalPathForWebLink('/admin/staff-leaves'), '/vice-principal/staff-leaves');
      expect(vicePrincipalPathForWebLink('/vice-principal/profile'), '/vice-principal/profile');
      expect(vicePrincipalPathForWebLink('/admin/hostel/wardens'), '/vice-principal/hostel/wardens');
      expect(vicePrincipalPathForWebLink('/admin/fees'), '/vice-principal/fees');
      expect(vicePrincipalPathForWebLink(null), isNull);
    });

    testWidgets('phone: the menu button opens it as a drawer and navigates', (tester) async {
      await _pump(tester, const VicePrincipalDashboardScreen(), const Size(360, 780));
      expect(find.byType(VicePrincipalSidebar), findsNothing);
      await tester.tap(find.byTooltip('Open navigation menu'));
      await tester.pumpAndSettle();
      expect(find.text('Vidyaprabandhan'), findsOneWidget);
      expect(find.text('Institute Management ERP by AETPL'), findsOneWidget);
      expect(find.text('ACADEMICS'), findsOneWidget);
      await tester.scrollUntilVisible(find.text('Announcements'), 200,
          scrollable: find.descendant(of: find.byType(VicePrincipalSidebar), matching: find.byType(Scrollable)));
      expect(find.text('FINANCE'), findsOneWidget);
      expect(find.text('SUPPORT SERVICES'), findsOneWidget);
      expect(find.text('MANAGEMENT'), findsOneWidget);
      expect(tester.takeException(), isNull);

      await tester.tap(find.text('Announcements'));
      await tester.pumpAndSettle();
      expect(find.byType(VicePrincipalNotOnMobileScreen), findsOneWidget);
      expect(find.text('Not available in the app yet'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('an accordion entry expands its children and navigates to each', (tester) async {
      await _pump(tester, const VicePrincipalDashboardScreen(), const Size(360, 780));
      await tester.tap(find.byTooltip('Open navigation menu'));
      await tester.pumpAndSettle();
      await tester.scrollUntilVisible(find.text('Leave Management'), 200,
          scrollable: find.descendant(of: find.byType(VicePrincipalSidebar), matching: find.byType(Scrollable)));
      expect(find.text('Student Leaves'), findsNothing);

      // Tapping the parent only expands it — the drawer stays open so its
      // children are still visible (navigating away would close it first).
      await tester.tap(find.text('Leave Management'));
      await tester.pumpAndSettle();
      expect(find.byType(VicePrincipalSidebar), findsOneWidget);
      expect(find.text('Student Leaves'), findsOneWidget);
      expect(find.text('Staff Leaves'), findsOneWidget);

      await tester.tap(find.text('Staff Leaves'));
      await tester.pumpAndSettle();
      expect(find.byType(VicePrincipalNotOnMobileScreen), findsOneWidget);
      expect(find.text('Not available in the app yet'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('landscape tablet: permanent sidebar with the collapse toggle', (tester) async {
      await _pump(tester, const VicePrincipalProfileScreen(), const Size(1280, 800));
      expect(find.byType(VicePrincipalSidebar), findsOneWidget);
      expect(find.byTooltip('Open navigation menu'), findsNothing);
      expect(tester.getSize(find.byType(VicePrincipalSidebar)).width, VicePrincipalSidebar.width);

      await tester.tap(find.byTooltip('Collapse sidebar'));
      await tester.pumpAndSettle();
      expect(tester.getSize(find.byType(VicePrincipalSidebar)).width, VicePrincipalSidebar.collapsedWidth);
      expect(find.text('Class Monitoring'), findsNothing);
      expect(tester.takeException(), isNull);

      await tester.tap(find.byTooltip('Expand sidebar'));
      await tester.pumpAndSettle();
      expect(find.text('Class Monitoring'), findsOneWidget);
    });

    for (final size in _sizes.entries) {
      testWidgets('${size.key}: a not-yet-ported entry renders in the frame', (tester) async {
        final fees = vicePrincipalNav.firstWhere((i) => i.label == 'Fees');
        await _pump(
            tester,
            VicePrincipalNotOnMobileScreen(label: fees.label, icon: fees.icon),
            size.value);
        expect(find.text('Fees is available on the web portal. It is coming to the mobile app soon.'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });
    }
  });
}
