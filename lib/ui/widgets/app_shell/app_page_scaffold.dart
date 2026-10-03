import 'package:flutter/material.dart';

import '../../../core/roles/app_role.dart';
import '../../../core/shell/app_nav_item.dart';
import '../responsive.dart';
import 'app_account_menu.dart';
import 'app_gradient_top_bar.dart';
import 'app_notification_bell.dart';
import 'app_sidebar.dart';

/// The frame every drawer-shell role shares — [AppSidebar] beside
/// [AppGradientTopBar] (title, notifications, account menu) and the page
/// body on the portal's light page background. Generic port of the former
/// per-role `*PageScaffold` (e.g. `PrincipalPageScaffold`); every
/// Student/Parent/Teacher screen builds on this one widget instead of its
/// own `Scaffold`.
///
/// Landscape tablets (≥ 840dp) get the sidebar permanently on the left;
/// narrower screens open it as a drawer from the bar's menu button.
class AppPageScaffold extends StatelessWidget {
  const AppPageScaffold({
    super.key,
    required this.role,
    required this.title,
    required this.body,
    required this.sections,
    required this.roleLabel,
    this.schoolName,
    required this.accountName,
    this.accountEmail,
    this.accountUsername,
    this.accountPhotoUrl,
    this.onProfile,
    this.onChangePassword,
    required this.onSignOut,
    this.bottom,
    this.floatingActionButton,
    this.actions = const [],
  });

  final AppRole role;
  final String title;
  final Widget body;
  final List<AppNavSection> sections;

  /// e.g. a `TabBar` under the gradient bar.
  final PreferredSizeWidget? bottom;
  final Widget? floatingActionButton;

  /// Page-specific actions, shown before the notification bell.
  final List<Widget> actions;

  /// Shown under the school name in the sidebar's school card (e.g.
  /// "Student", "Parent", "Teacher").
  final String roleLabel;
  final String? schoolName;

  final String accountName;
  final String? accountEmail;
  final String? accountUsername;
  final String? accountPhotoUrl;

  /// Null hides "My Profile" / "Change Password" in the account menu —
  /// use this when the role has no backend support for that action yet,
  /// rather than wiring a dead or fake action.
  final VoidCallback? onProfile;
  final VoidCallback? onChangePassword;
  final VoidCallback onSignOut;

  @override
  Widget build(BuildContext context) {
    final wide = context.isExpandedWidth;
    final scaffold = Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      drawer: wide
          ? null
          : AppSidebar(role: role, sections: sections, roleLabel: roleLabel, schoolName: schoolName, inDrawer: true),
      appBar: AppGradientTopBar(
        title: title,
        schoolName: schoolName,
        notificationBell: AppNotificationBell(role: role, sections: sections),
        accountMenu: AppAccountMenu(
          displayName: accountName,
          email: accountEmail,
          username: accountUsername,
          photoUrl: accountPhotoUrl,
          onProfile: onProfile,
          onChangePassword: onChangePassword,
          onSignOut: onSignOut,
        ),
        bottom: bottom,
        actions: actions,
      ),
      floatingActionButton: floatingActionButton,
      body: body,
    );
    if (!wide) return scaffold;
    return Material(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppSidebar(role: role, sections: sections, roleLabel: roleLabel, schoolName: schoolName),
          Expanded(child: scaffold),
        ],
      ),
    );
  }
}
