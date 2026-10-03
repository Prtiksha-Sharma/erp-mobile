import 'package:flutter/widgets.dart';

/// One entry in a role's left-navigation drawer/rail — the generic,
/// role-agnostic version of what used to be duplicated per role (e.g. the
/// former `PrincipalNavItem`). Built by each `features/<role>/` module and
/// handed to [AppSidebar] / [AppPageScaffold] (`lib/ui/widgets/app_shell/`).
class AppNavItem {
  const AppNavItem({
    required this.label,
    required this.icon,
    required this.path,
    this.webPath,
    this.built = true,
  });

  final String label;
  final IconData icon;

  /// Mobile route (go_router path).
  final String path;

  /// The web route this entry points at, if any — lets a notification's
  /// (web) `link` be mapped onto the mobile route via [pathForWebLink].
  final String? webPath;

  /// Whether the page exists on mobile. An entry with `built: false` is a
  /// known gap, not a crash — the caller is expected to route it to an
  /// honest "not available yet" screen instead of a fake one.
  final bool built;
}

/// A group of [AppNavItem]s under an optional section header — the
/// generic version of what used to be a per-role nav-group enum.
class AppNavSection {
  const AppNavSection({this.title, required this.items});

  /// Section header shown above [items] (upper-cased by the sidebar UI).
  /// Null for an un-headered leading section (e.g. "Dashboard").
  final String? title;
  final List<AppNavItem> items;
}

/// The mobile route for a notification's web `link`, or null if [sections]
/// has no entry pointing at it. Generic port of `principalPathForWebLink`.
String? pathForWebLink(List<AppNavSection> sections, String? link) {
  if (link == null) return null;
  for (final section in sections) {
    for (final item in section.items) {
      if (item.webPath == link) return item.path;
    }
  }
  return null;
}
