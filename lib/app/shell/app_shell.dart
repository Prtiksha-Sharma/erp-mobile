import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/auth/auth_provider.dart';
import '../../core/roles/role_registry.dart';

/// The single shared scaffold every role renders inside. Bottom-nav tabs
/// come from the active role's `RoleModule.tabs()` — never hardcoded here
/// (see core/roles/role_module.dart for why). This is the one place that's
/// allowed to read "which role is active," and even here it only asks the
/// registry for that role's own declared tabs — it never branches on the
/// role value itself.
class AppShell extends ConsumerWidget {
  const AppShell({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeRole = ref.watch(authProvider).activeRole;
    final module = activeRole != null ? roleRegistry[activeRole] : null;
    final tabs = module?.tabs() ?? const [];

    if (tabs.isEmpty) {
      return Scaffold(body: child);
    }

    // startsWith, not ==: a tab's route can have sub-pages (e.g.
    // /parent/academics/attendance under the Academics tab's
    // /parent/academics) — those must still highlight their parent tab,
    // not silently fall back to index 0.
    final currentPath = GoRouterState.of(context).matchedLocation;
    var currentIndex = tabs.indexWhere((t) => currentPath.startsWith(t.path));
    if (currentIndex < 0) currentIndex = 0;

    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (i) => context.go(tabs[i].path),
        destinations: [
          for (final tab in tabs) NavigationDestination(icon: Icon(tab.icon), label: tab.label),
        ],
      ),
    );
  }
}
