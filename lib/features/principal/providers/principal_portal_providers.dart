import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/result.dart';
import '../../../core/models/app_notification.dart';
import '../../../core/models/principal_dashboard.dart';
import '../../../core/models/staff_profile.dart';
import '../services/principal_account_service.dart';
import '../services/principal_portal_service.dart';

/// Read providers for the principal portal — one per web hook
/// (useMyProfile, usePrincipalDashboard).
///
/// Every provider watches the logged-in userId (via [_load]) so logging in
/// as a different principal on the same device re-fetches instead of showing
/// the previous account's cached data. Failures are thrown as the Failure
/// itself and read back through describeError(), same as the other portals.
Future<T> _load<T>(Ref ref, Future<Result<T>> Function(PrincipalPortalService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return _unwrap(await call(PrincipalPortalService()));
}

T _unwrap<T>(Result<T> result) => switch (result) {
      Ok(:final value) => value,
      Err(:final failure) => throw failure,
    };

final principalProfileProvider = FutureProvider<StaffProfile>((ref) => _load(ref, (s) => s.getMyProfile()));

final principalDashboardProvider = FutureProvider<PrincipalDashboard>((ref) => _load(ref, (s) => s.getDashboard()));

/// The top bar's NotificationBell feed (web: useNotifications). The web
/// keeps it live over Socket.IO; mobile has no socket client, so the bell
/// re-fetches on an interval instead (see PrincipalTopBar).
final principalNotificationsProvider = FutureProvider<NotificationInbox>((ref) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return _unwrap(await PrincipalAccountService().getMyNotifications());
});

/// Whether the landscape-tablet sidebar is collapsed to its icon rail (the
/// web Sidebar's collapse toggle). Kept for the session, shared by every page.
final principalSidebarCollapsedProvider =
    NotifierProvider<PrincipalSidebarCollapsed, bool>(PrincipalSidebarCollapsed.new);

class PrincipalSidebarCollapsed extends Notifier<bool> {
  @override
  bool build() => false;

  void toggle() => state = !state;
}
