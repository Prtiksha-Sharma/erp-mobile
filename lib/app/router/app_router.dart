import 'package:go_router/go_router.dart';

import '../../core/auth/auth_session_listenable.dart';
import '../../core/roles/role_registry.dart';
import '../../features/auth/screens/login_screen.dart';
import '../shell/app_shell.dart';

/// Route tree is assembled from `roleRegistry` — no role-specific branching
/// lives here (see core/roles/role_module.dart). Auth redirect reads
/// AuthSessionListenable (router-plumbing bridge, see its own doc comment)
/// rather than Riverpod directly, since `redirect` has no BuildContext-based
/// ref access.
final GoRouter appRouter = GoRouter(
  initialLocation: '/login',
  refreshListenable: AuthSessionListenable.instance,
  redirect: (context, state) {
    final session = AuthSessionListenable.instance;
    final loggingIn = state.matchedLocation == '/login';

    if (!session.isAuthenticated) {
      return loggingIn ? null : '/login';
    }
    if (loggingIn) {
      return roleRegistry[session.activeRole]?.homePath ?? '/login';
    }
    return null;
  },
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    ShellRoute(
      builder: (context, state, child) => AppShell(child: child),
      routes: [
        for (final module in roleRegistry.values) ...module.routes(),
      ],
    ),
  ],
);
