import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../auth/auth_provider.dart';
import '../error/result.dart';
import '../models/app_notification.dart';
import '../roles/app_role.dart';
import 'shell_notifications_service.dart';

/// The top bar's NotificationBell feed, shared by every drawer-shell role
/// (student/parent/teacher today). Keyed by [AppRole] so each portal has
/// its own cached inbox and re-fetches independently. The web keeps this
/// live over Socket.IO; mobile has no socket client, so [AppNotificationBell]
/// re-fetches it on an interval instead.
final shellNotificationsProvider = FutureProvider.family<NotificationInbox, AppRole>((ref, role) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  final result = await ShellNotificationsService().getMyNotifications();
  return switch (result) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
});

/// Whether a role's landscape-tablet sidebar is collapsed to its icon rail,
/// kept per role for the session. Generic port of the former
/// `principalSidebarCollapsedProvider`.
final shellSidebarCollapsedProvider =
    NotifierProvider.family<ShellSidebarCollapsed, bool, AppRole>(ShellSidebarCollapsed.new);

class ShellSidebarCollapsed extends Notifier<bool> {
  ShellSidebarCollapsed(this.role);

  final AppRole role;

  @override
  bool build() => false;

  void toggle() => state = !state;
}
