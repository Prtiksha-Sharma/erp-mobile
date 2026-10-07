import 'package:go_router/go_router.dart';

import '../../core/roles/app_role.dart';
import '../../core/roles/role_module.dart';
import 'screens/academics_routes.dart';
import 'screens/admissions_routes.dart';
import 'screens/campus_routes.dart';
import 'screens/employee_detail_screen.dart';
import 'screens/finance_routes.dart';
import 'screens/management_routes.dart';
import 'screens/overview_routes.dart';
import 'screens/school_life_routes.dart';
import 'screens/students_routes.dart';
import 'screens/role_permissions_screen.dart';
import 'screens/school_admin_nav.dart';
import 'screens/school_settings_screen.dart';
import 'screens/staff_list_screen.dart';
import 'screens/staff_role_list_screens.dart';
import 'screens/subscription_screen.dart';

/// School Admin portal — every SCHOOL_ADMIN_NAV page of the web
/// (shared/constants/sidebarNav.js), at its ROUTES.ADMIN path re-rooted
/// under /school-admin (screens/school_admin_nav.dart's SchoolAdminPaths).
/// The staff/settings pages are routed here; every other area owns one
/// `screens/<area>_routes.dart` (pages not ported yet route to
/// SchoolAdminNotOnMobileScreen). Lands on the Dashboard, like the web.
class SchoolAdminModule implements RoleModule {
  @override
  AppRole get role => AppRole.schoolAdmin;

  @override
  String get homePath => SchoolAdminPaths.dashboard;

  @override
  List<RouteBase> routes() => [
    GoRoute(
      path: '/school-admin/staff',
      builder: (context, state) => StaffListScreen(addRole: state.uri.queryParameters['addRole']),
      routes: [
        GoRoute(
          path: ':staffId',
          builder: (context, state) => EmployeeDetailScreen(staffId: state.pathParameters['staffId']!),
        ),
      ],
    ),
    GoRoute(path: '/school-admin/teachers', builder: (context, state) => const TeachersListScreen()),
    GoRoute(path: '/school-admin/librarians', builder: (context, state) => const RoleStaffListScreen.librarians()),
    GoRoute(
      path: '/school-admin/receptionists',
      builder: (context, state) => const RoleStaffListScreen.receptionists(),
    ),
    GoRoute(
      path: '/school-admin/role-permissions',
      builder: (context, state) => RolePermissionsScreen(initialRoleName: state.uri.queryParameters['role']),
    ),
    GoRoute(path: '/school-admin/settings', builder: (context, state) => const SchoolSettingsScreen()),
    GoRoute(path: '/school-admin/subscription', builder: (context, state) => const SubscriptionScreen()),
    ...overviewRoutes(),
    ...admissionsRoutes(),
    ...studentsRoutes(),
    ...academicsRoutes(),
    ...schoolLifeRoutes(),
    ...financeRoutes(),
    ...managementRoutes(),
    ...campusRoutes(),
  ];

  // No bottom tabs: navigation is the left drawer, same as every other
  // portal. With fewer than two tabs AppShell renders a bare Scaffold.
  @override
  List<NavTab> tabs() => const [];
}
