import 'package:go_router/go_router.dart';

import '../../core/roles/app_role.dart';
import '../../core/roles/role_module.dart';
import 'screens/vice_principal_dashboard_screen.dart';
import 'screens/vice_principal_page_scaffold.dart';
import 'screens/vice_principal_profile_screen.dart';
import 'screens/vice_principal_sidebar.dart';

/// Vice Principal portal — the web's vicePrincipalPortalRoutes.jsx
/// (self-service only): Dashboard (GET /vice-principal/dashboard) and My
/// Profile (GET/PATCH /vice-principal/profile, POST
/// /vice-principal/profile/photo). Same paths as the web's
/// ROUTES.VICE_PRINCIPAL_PORTAL. Navigation is the web's VICE_PRINCIPAL_NAV
/// sidebar ([vicePrincipalNav]).
///
/// Not ported: the web's Vice Principal Management page
/// (features/vice-principals/) is School Admin's screen for managing Vice
/// Principal accounts — `authorize('School Admin')` on the backend, 403 for
/// a Vice Principal token. The ADMIN.* oversight pages VICE_PRINCIPAL_NAV
/// also links to (Student/Teacher/Class Monitoring, Attendance, Leave
/// Management, Discipline, Homework, Examination, Timetable, Events,
/// Academic Reports, Announcements, Fees, Library, Transport, Hostel) are
/// separate web features; they are in the sidebar but not ported yet.
class VicePrincipalModule implements RoleModule {
  @override
  AppRole get role => AppRole.vicePrincipal;

  @override
  String get homePath => '/vice-principal/dashboard';

  @override
  List<RouteBase> routes() {
    final routes = <RouteBase>[
      GoRoute(path: '/vice-principal/dashboard', builder: (context, state) => const VicePrincipalDashboardScreen()),
      GoRoute(path: '/vice-principal/profile', builder: (context, state) => const VicePrincipalProfileScreen()),
    ];
    // Every other VICE_PRINCIPAL_NAV entry — and every accordion child path
    // (Leave Management / Hostel) — is routed so the sidebar matches the web
    // 1:1; each opens the "not in the app yet" page until it is ported.
    final seen = {for (final r in routes) (r as GoRoute).path};
    for (final item in vicePrincipalNav.where((i) => !i.built)) {
      if (seen.add(item.path)) {
        routes.add(GoRoute(
          path: item.path,
          builder: (context, state) => VicePrincipalNotOnMobileScreen(label: item.label, icon: item.icon),
        ));
      }
      for (final child in item.children) {
        if (seen.add(child.path)) {
          routes.add(GoRoute(
            path: child.path,
            builder: (context, state) => VicePrincipalNotOnMobileScreen(label: child.label, icon: item.icon),
          ));
        }
      }
    }
    return routes;
  }

  /// No bottom tabs: like the web, navigation is the sidebar
  /// (VicePrincipalSidebar — a drawer on phones, permanent on landscape
  /// tablets). With fewer than two tabs AppShell renders a bare Scaffold.
  @override
  List<NavTab> tabs() => const [];
}
