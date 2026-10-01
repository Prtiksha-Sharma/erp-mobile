import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/auth/auth_provider.dart';
import '../../core/roles/role_registry.dart';
import '../../ui/widgets/responsive.dart';

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

    // NavigationBar/NavigationRail both assert on at least 2 destinations —
    // a single-screen role (Driver) has nothing to navigate between anyway,
    // so it gets the same bare-Scaffold treatment as zero tabs.
    if (tabs.length < 2) {
      return Scaffold(body: child);
    }

    // startsWith, not ==: a tab's route can have sub-pages (e.g.
    // /parent/academics/attendance under the Academics tab's
    // /parent/academics) — those must still highlight their parent tab,
    // not silently fall back to index 0.
    final currentPath = GoRouterState.of(context).matchedLocation;
    var currentIndex = tabs.indexWhere((t) => currentPath.startsWith(t.path));
    if (currentIndex < 0) currentIndex = 0;

    // Landscape tablets / large foldables: a side rail instead of a bottom
    // bar, per Material 3 guidance for expanded widths. Same tabs, same
    // navigation — only the placement changes; phones are unaffected.
    if (MediaQuery.sizeOf(context).width >= Breakpoints.expanded) {
      return Scaffold(
        body: Row(
          children: [
            SafeArea(
              right: false,
              child: NavigationRail(
                selectedIndex: currentIndex,
                onDestinationSelected: (i) => context.go(tabs[i].path),
                labelType: NavigationRailLabelType.all,
                destinations: [
                  for (final tab in tabs)
                    NavigationRailDestination(icon: Icon(tab.icon), label: Text(tab.label)),
                ],
              ),
            ),
            const VerticalDivider(width: 1),
            Expanded(child: child),
          ],
        ),
      );
    }

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
