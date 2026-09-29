import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'app_role.dart';

/// Contract every role's feature module implements.
///
/// This is the extensibility seam we designed the whole app around: the
/// router, the app shell's bottom nav, and the post-login redirect are all
/// built by folding over `roleRegistry` (see role_registry.dart) rather
/// than branching on role anywhere in shared code. Adding a role later
/// means writing one class like this plus a `features/<role>/` folder —
/// nothing else in the app changes.
///
/// Rule: shared widgets (lib/app/shell, lib/ui) must NEVER contain
/// `if (role == AppRole.x)`. If a screen needs role-specific behavior,
/// that behavior belongs inside that role's own RoleModule/feature folder.
abstract class RoleModule {
  AppRole get role;

  /// Route path this role lands on immediately after login.
  String get homePath;

  /// This role's routes, folded into the app's route tree by app_router.dart.
  List<RouteBase> routes();

  /// Bottom-nav / drawer tabs for this role. Filter these against the
  /// backend's allowedModules for the logged-in user before returning them —
  /// never hardcode a tab a module gate could later hide (see role-wise
  /// planning notes on `allowedModules`).
  List<NavTab> tabs();
}

/// A single bottom-nav destination.
class NavTab {
  const NavTab({
    required this.label,
    required this.icon,
    required this.path,
    required this.moduleKey,
  });

  final String label;
  final IconData icon;
  final String path;

  /// Matches an entry in the backend's allowedModules list for this user —
  /// used to hide a tab if the school has disabled that module for this role.
  final String moduleKey;
}
