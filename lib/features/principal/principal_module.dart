import 'package:go_router/go_router.dart';

import '../../core/roles/app_role.dart';
import '../../core/roles/role_module.dart';
import 'screens/principal_dashboard_screen.dart';
import 'screens/principal_page_scaffold.dart';
import 'screens/principal_profile_screen.dart';
import 'screens/principal_sidebar.dart';

/// Principal portal — the web's principalPortalRoutes.jsx (self-service
/// only): Dashboard (GET /principal/dashboard) and My Profile
/// (GET/PATCH /principal/profile, POST /principal/profile/photo). Same paths
/// as the web's ROUTES.PRINCIPAL_PORTAL. Navigation is the web's
/// PRINCIPAL_NAV sidebar ([principalNav]).
///
/// Not ported: the web's Principal Management page (features/principals/)
/// is School Admin's screen for managing Principal accounts — its activity
/// feed, role-permission summary and account actions are all
/// `authorize('School Admin')` on the backend and 403 for a Principal token.
/// The ADMIN.* oversight pages PRINCIPAL_NAV also links to are separate web
/// features; they are in the sidebar but not ported yet.
class PrincipalModule implements RoleModule {
  @override
  AppRole get role => AppRole.principal;

  @override
  String get homePath => '/principal/dashboard';

  @override
  List<RouteBase> routes() => [
        GoRoute(path: '/principal/dashboard', builder: (context, state) => const PrincipalDashboardScreen()),
        GoRoute(path: '/principal/profile', builder: (context, state) => const PrincipalProfileScreen()),
        // Every other PRINCIPAL_NAV entry is routed so the sidebar matches the
        // web 1:1; each opens the "not in the app yet" page until it is ported.
        for (final item in principalNav.where((i) => !i.built))
          GoRoute(path: item.path, builder: (context, state) => PrincipalNotOnMobileScreen(item: item)),
      ];

  /// No bottom tabs: like the web, navigation is the sidebar
  /// (PrincipalSidebar — a drawer on phones, permanent on landscape tablets).
  /// With fewer than two tabs AppShell renders a bare Scaffold.
  @override
  List<NavTab> tabs() => const [];
}
