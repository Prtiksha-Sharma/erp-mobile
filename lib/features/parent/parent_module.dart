import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/roles/app_role.dart';
import '../../core/roles/role_module.dart';
import '../../ui/widgets/coming_soon_screen.dart';
import 'screens/parent_attendance_screen.dart';
import 'screens/parent_home_screen.dart';

/// P1 scope: Home is real (child switcher + selection). Academics/Fees/More
/// are ComingSoonScreen for now — same convention the web app uses for an
/// unbuilt route (see ComingSoonPage.jsx). Each becomes real in its own
/// verified slice per the phased build order (see role-wise plan).
class ParentModule implements RoleModule {
  @override
  AppRole get role => AppRole.parent;

  @override
  String get homePath => '/parent/home';

  @override
  List<RouteBase> routes() => [
        GoRoute(
          path: '/parent/home',
          builder: (context, state) => const ParentHomeScreen(),
        ),
        // Academics becomes a real tabbed hub once Homework/Timetable/
        // Teachers land too — for now it routes straight to Attendance,
        // the only one of the four built so far.
        GoRoute(
          path: '/parent/academics',
          builder: (context, state) => const ParentAttendanceScreen(),
        ),
        GoRoute(
          path: '/parent/fees',
          builder: (context, state) => const ComingSoonScreen(title: 'Fees'),
        ),
        GoRoute(
          path: '/parent/more',
          builder: (context, state) => const ComingSoonScreen(title: 'More'),
        ),
      ];

  @override
  List<NavTab> tabs() => const [
        NavTab(label: 'Home', icon: Icons.home_outlined, path: '/parent/home', moduleKey: 'dashboard'),
        NavTab(label: 'Academics', icon: Icons.menu_book_outlined, path: '/parent/academics', moduleKey: 'academics'),
        NavTab(label: 'Fees', icon: Icons.payments_outlined, path: '/parent/fees', moduleKey: 'fees'),
        NavTab(label: 'More', icon: Icons.more_horiz, path: '/parent/more', moduleKey: 'more'),
      ];
}
