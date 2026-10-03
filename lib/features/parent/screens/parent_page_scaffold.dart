import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/roles/app_role.dart';
import '../../../ui/widgets/app_shell/app_change_password_sheet.dart';
import '../../../ui/widgets/app_shell/app_page_scaffold.dart';
import 'parent_nav.dart';

/// The frame every parent page shares: the drawer-shell [AppPageScaffold]
/// (gradient app bar, left drawer, notifications, account menu), same as
/// Principal/Vice Principal. Every parent screen builds on this instead of
/// its own `Scaffold`.
///
/// "My Profile" has no entry in the account menu: the backend has no
/// parent self-profile endpoint (`parent.router.js` only exposes
/// child-scoped routes), so there is nothing to show yet — a known gap,
/// not a fake page.
class ParentPageScaffold extends ConsumerWidget {
  const ParentPageScaffold({
    super.key,
    required this.title,
    required this.body,
    this.bottom,
    this.floatingActionButton,
    this.actions = const [],
  });

  final String title;
  final Widget body;
  final PreferredSizeWidget? bottom;
  final Widget? floatingActionButton;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider).user;

    return AppPageScaffold(
      role: AppRole.parent,
      title: title,
      body: body,
      sections: parentNavSections,
      roleLabel: 'Parent',
      accountName: user?.fullName ?? 'Parent',
      accountEmail: user?.email,
      accountUsername: user?.username,
      onChangePassword: () => showAppChangePasswordSheet(context),
      onSignOut: () => ref.read(authProvider.notifier).logout(),
      bottom: bottom,
      floatingActionButton: floatingActionButton,
      actions: actions,
    );
  }
}
