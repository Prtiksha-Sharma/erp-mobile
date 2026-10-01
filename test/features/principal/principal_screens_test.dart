// Renders every principal screen at phone, portrait-tablet and
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
import 'package:edusoft_mobile/core/models/principal_dashboard.dart';
import 'package:edusoft_mobile/core/models/staff_profile.dart';
import 'package:edusoft_mobile/core/roles/app_role.dart';
import 'package:edusoft_mobile/features/principal/principal_module.dart';
import 'package:edusoft_mobile/features/principal/providers/principal_portal_providers.dart';
import 'package:edusoft_mobile/features/principal/screens/principal_dashboard_screen.dart';
import 'package:edusoft_mobile/features/principal/screens/principal_page_scaffold.dart';
import 'package:edusoft_mobile/features/principal/screens/principal_profile_screen.dart';
import 'package:edusoft_mobile/features/principal/screens/principal_sidebar.dart';
import 'package:edusoft_mobile/features/principal/screens/principal_top_bar.dart';

// ── Fixtures (same shapes as the backend; see principal_portal_models_test) ──

final _profile = StaffProfile.fromJson({
  'staff_id': 'pr1',
  'employee_code': 'GHPS-EMP-0001',
  'full_name': 'Dr. Meenakshi Sundaram Venkataraman-Nair',
  'designation': 'Principal & Director of Academics',
  'department': 'Administration',
  'date_of_joining': '2018-04-01T00:00:00.000Z',
  'contact_number': '9822012345',
  'address': null,
  'employment_status': 'ACTIVE',
  'institution': {'institution_name': 'Green Hills Public School With A Rather Long Name'},
  'branch': {'branch_name': 'Main Campus'},
  'reports_to': {'full_name': 'Rajesh Kulkarni', 'designation': 'Director'},
  'users': {'username': 'GHPS-EMP-0001', 'email': 'meenakshi.sundaram.principal@greenhills.edu.in'},
});

final _dashboard = PrincipalDashboard.fromJson({
  'total_students': 1812,
  'total_teachers': 86,
  'total_staff': 131,
  'today_attendance': {'PRESENT': 1702, 'ABSENT': 41, 'HALF_DAY': 9},
  'student_attendance_pct': 97.2,
  'fee_collection_today': 1248250.5,
  'pending_fee_amount': 98287400,
  'pending_leave_requests': {'staff': 4, 'student': 11},
  'new_admissions': 137,
  'upcoming_exams': [
    for (var i = 1; i <= 5; i++)
      {
        'exam_id': 'ex$i',
        'exam_name': 'Half Yearly Examination — Senior Secondary Section $i',
        'start_date': '2026-10-1${i}T00:00:00.000Z',
        'exam_type': i.isEven ? null : 'Term',
      },
  ],
  'announcements': [
    for (var i = 1; i <= 3; i++)
      {
        'notice_id': 'n$i',
        'title': 'Parent-Teacher Meeting for classes 6 to 10 this Saturday in the main auditorium',
        'notice_date': '2026-09-2${i}T00:00:00.000Z',
        'is_active': true,
      },
  ],
  'upcoming_events': [
    for (var i = 1; i <= 3; i++)
      {
        'event_id': 'ev$i',
        'event_name': 'Annual Sports Day and Inter-House Athletics Championship',
        'event_date': '2026-10-2${i}T00:00:00.000Z',
        'approval_status': 'PENDING',
      },
  ],
  'class_teacher_vacancy': {'total_sections': 32, 'unassigned': 3},
  'complaints_open': 0,
});

final _emptyDashboard = PrincipalDashboard.fromJson({
  'total_students': 0,
  'total_teachers': 0,
  'total_staff': 0,
  'today_attendance': <String, dynamic>{},
  'student_attendance_pct': null,
  'fee_collection_today': 0,
  'pending_fee_amount': 0,
  'pending_leave_requests': {'staff': 0, 'student': 0},
  'new_admissions': 0,
  'upcoming_exams': <dynamic>[],
  'announcements': <dynamic>[],
  'upcoming_events': <dynamic>[],
  'class_teacher_vacancy': {'total_sections': 0, 'unassigned': 0},
  'complaints_open': 0,
});

final _inbox = NotificationInbox.fromJson({
  'notifications': [
    for (var i = 1; i <= 12; i++)
      {
        'notification_id': 'nt$i',
        'title': 'New staff leave request from a teacher with a fairly long name',
        'body': 'Ramesh Kumar Srinivasan applied for 2 days of Casual Leave starting next Monday.',
        'link': i == 1 ? '/principal/profile' : '/admin/staff-leaves',
        'is_read': i > 11,
        'created_at': DateTime.now().toUtc().subtract(Duration(hours: i * 5)).toIso8601String(),
      },
  ],
  'unread_count': 11,
});

List<Override> _overrides({PrincipalDashboard? dashboard, Object? dashboardError, NotificationInbox? inbox}) => [
      principalProfileProvider.overrideWith((ref) async => _profile),
      principalNotificationsProvider.overrideWith((ref) async => inbox ?? _inbox),
      principalDashboardProvider.overrideWith((ref) async {
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
  'Dashboard': () => const PrincipalDashboardScreen(),
  'Profile': () => const PrincipalProfileScreen(),
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
          routes: [GoRoute(path: '/', builder: (_, _) => screen), ...PrincipalModule().routes()],
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  test('the backend "Principal" role maps to the principal module', () {
    expect(AppRole.fromBackendName('Principal'), AppRole.principal);
    expect(AppRole.fromBackendName('Vice Principal'), isNull);
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
        await _pump(tester, const PrincipalDashboardScreen(), size.value,
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
        await _pump(tester, const PrincipalDashboardScreen(), size.value);
        expect(find.byType(PrincipalTopBar), findsOneWidget);
        expect(find.text('9+'), findsOneWidget);
        // The gradient must actually fill the bar (a childless DecoratedBox
        // in flexibleSpace collapses to 0 height and leaves a white bar).
        final gradient = tester.getSize(find.byKey(const ValueKey('principal-top-bar-gradient')));
        expect(gradient.height, greaterThanOrEqualTo(PrincipalTopBar.height));
        // On landscape tablets the bar sits right of the permanent sidebar.
        final sidebar = size.value.width >= 840 ? PrincipalSidebar.width : 0;
        expect(gradient.width, size.value.width - sidebar);
        // Header is left-aligned at the page padding, like the web.
        final padding = size.value.width >= 600 ? 24.0 : 16.0;
        final bodyWidth = size.value.width - sidebar;
        final contentLeft = sidebar + (bodyWidth > 1100 + 2 * padding ? (bodyWidth - 1100) / 2 : padding);
        expect(tester.getTopLeft(find.text('Principal Dashboard')).dx, closeTo(contentLeft, 1));
        // School name only on wide screens (web: xl).
        expect(
          find.descendant(
            of: find.byType(PrincipalTopBar),
            matching: find.text('Green Hills Public School With A Rather Long Name'),
          ),
          size.value.width >= 840 ? findsOneWidget : findsNothing,
        );
        // Name beside the avatar from tablet width (web: sm).
        expect(
          find.descendant(
            of: find.byType(PrincipalTopBar),
            matching: find.text('Dr. Meenakshi Sundaram Venkataraman-Nair'),
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
        await _pump(tester, const PrincipalDashboardScreen(), size.value);
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
        await _pump(tester, const PrincipalProfileScreen(), size.value);
        await tester.tap(find.text('Edit Profile'));
        await tester.pumpAndSettle();
        expect(tester.takeException(), isNull);
        expect(find.text('Edit Your Photo'), findsOneWidget);
        expect(find.widgetWithText(TextField, '9822012345'), findsOneWidget);
      });
    });
  }

  testWidgets('Dashboard: a 403 shows the web headline, the message and Retry', (tester) async {
    await _pump(tester, const PrincipalDashboardScreen(), const Size(360, 780),
        overrides: _overrides(dashboardError: const Failure.validation('Forbidden')));
    expect(find.textContaining('Failed to load the dashboard.'), findsOneWidget);
    expect(find.textContaining('Forbidden'), findsOneWidget);
    expect(find.text('Retry'), findsOneWidget);
  });

  testWidgets('Profile: a missing address reads "Not provided"', (tester) async {
    await _pump(tester, const PrincipalProfileScreen(), const Size(360, 780));
    expect(find.text('Not provided'), findsOneWidget);
  });

  testWidgets('Notifications sheet: an empty feed reads "You\'re all caught up."', (tester) async {
    await _pump(tester, const PrincipalProfileScreen(), const Size(360, 780),
        overrides: _overrides(inbox: const NotificationInbox()));
    expect(find.text('9+'), findsNothing);
    await tester.tap(find.byTooltip('Notifications'));
    await tester.pumpAndSettle();
    expect(find.text("You're all caught up."), findsOneWidget);
    expect(find.text('Mark all read'), findsNothing);
    expect(find.text('Clear all'), findsNothing);
  });

  testWidgets('Change Password: validation matches the web copy', (tester) async {
    await _pump(tester, const PrincipalDashboardScreen(), const Size(360, 780));
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

  test('timeAgo uses the web buckets', () {
    final now = DateTime(2026, 10, 1, 12);
    expect(timeAgo(now.subtract(const Duration(seconds: 30)), now: now), 'just now');
    expect(timeAgo(now.subtract(const Duration(minutes: 5)), now: now), '5m ago');
    expect(timeAgo(now.subtract(const Duration(hours: 3)), now: now), '3h ago');
    expect(timeAgo(now.subtract(const Duration(days: 2)), now: now), '2d ago');
  });

  group('Sidebar (web PRINCIPAL_NAV)', () {
    test('every web entry, in order, with its web route mapped', () {
      expect(principalNav.map((i) => i.label), [
        'Dashboard', 'My Profile', 'Students', 'Staff', 'Teachers', 'Class Monitoring', 'Classes', 'Subjects',
        'Subject Teachers', 'Timetable', 'Syllabus', 'Lesson Plans', 'Homework & Assignments', 'Examination',
        'Events', 'Activities', 'Discipline Records', 'Leaves', 'Staff Leaves', 'Fees', 'Reports',
        'Activity Logs', 'Announcements',
      ]);
      expect(PrincipalModule().tabs(), isEmpty);
      expect(principalPathForWebLink('/admin/staff-leaves'), '/principal/staff-leaves');
      expect(principalPathForWebLink('/principal/profile'), '/principal/profile');
      expect(principalPathForWebLink('/admin/hostel'), isNull);
      expect(principalPathForWebLink(null), isNull);
    });

    testWidgets('phone: the menu button opens it as a drawer and navigates', (tester) async {
      await _pump(tester, const PrincipalDashboardScreen(), const Size(360, 780));
      expect(find.byType(PrincipalSidebar), findsNothing);
      await tester.tap(find.byTooltip('Open navigation menu'));
      await tester.pumpAndSettle();
      expect(find.text('Vidyaprabandhan'), findsOneWidget);
      expect(find.text('Institute Management ERP by AETPL'), findsOneWidget);
      expect(find.text('ACADEMICS'), findsOneWidget);
      await tester.scrollUntilVisible(find.text('Announcements'), 200,
          scrollable: find.descendant(of: find.byType(PrincipalSidebar), matching: find.byType(Scrollable)));
      expect(find.text('FINANCE'), findsOneWidget);
      expect(find.text('MANAGEMENT'), findsOneWidget);
      expect(tester.takeException(), isNull);

      await tester.tap(find.text('Announcements'));
      await tester.pumpAndSettle();
      expect(find.byType(PrincipalNotOnMobileScreen), findsOneWidget);
      expect(find.text('Not available in the app yet'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('landscape tablet: permanent sidebar with the collapse toggle', (tester) async {
      await _pump(tester, const PrincipalProfileScreen(), const Size(1280, 800));
      expect(find.byType(PrincipalSidebar), findsOneWidget);
      expect(find.byTooltip('Open navigation menu'), findsNothing);
      expect(tester.getSize(find.byType(PrincipalSidebar)).width, PrincipalSidebar.width);

      await tester.tap(find.byTooltip('Collapse sidebar'));
      await tester.pumpAndSettle();
      expect(tester.getSize(find.byType(PrincipalSidebar)).width, PrincipalSidebar.collapsedWidth);
      expect(find.text('Class Monitoring'), findsNothing);
      expect(tester.takeException(), isNull);

      await tester.tap(find.byTooltip('Expand sidebar'));
      await tester.pumpAndSettle();
      expect(find.text('Class Monitoring'), findsOneWidget);
    });

    for (final size in _sizes.entries) {
      testWidgets('${size.key}: a not-yet-ported entry renders in the frame', (tester) async {
        final fees = principalNav.firstWhere((i) => i.label == 'Fees');
        await _pump(tester, PrincipalNotOnMobileScreen(item: fees), size.value);
        expect(find.text('Fees is available on the web portal. It is coming to the mobile app soon.'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });
    }
  });
}
