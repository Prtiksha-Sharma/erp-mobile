import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/app_notification.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/error_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../providers/vice_principal_portal_providers.dart';
import '../services/vice_principal_account_service.dart';
import 'vice_principal_change_password_sheet.dart';
import 'vice_principal_sidebar.dart';

/// Port of the web's layouts/Topbar.jsx as the vice principal pages see it:
/// the brand-gradient bar with the page title (the web's breadcrumb), the
/// NotificationBell, the school name, and the avatar menu (name + email,
/// My Profile, Change Password, Sign Out).
///
/// Adapted for touch / small screens, same as the web's own responsive
/// rules: the school name shows only on wide screens (web: `xl`), the
/// name + username beside the avatar only from tablet width (web: `sm`).
/// Not ported: the search box (the web input has no handler), the
/// academic-year chip (its label comes from /schools/by-slug, which needs
/// the web's subdomain — mobile has none, and no Vice-Principal-reachable
/// endpoint returns the session name), and the browser push toggle.
class VicePrincipalTopBar extends ConsumerStatefulWidget implements PreferredSizeWidget {
  const VicePrincipalTopBar({super.key, required this.title});

  final String title;

  static const height = 64.0; // web: h-16

  @override
  Size get preferredSize => const Size.fromHeight(height);

  @override
  ConsumerState<VicePrincipalTopBar> createState() => _VicePrincipalTopBarState();
}

class _VicePrincipalTopBarState extends ConsumerState<VicePrincipalTopBar> {
  /// The web bell is live over Socket.IO; mobile has no socket client, so
  /// it re-fetches on the same 60s interval the teacher inbox uses.
  static const _refresh = Duration(seconds: 60);
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(_refresh, (_) => ref.invalidate(vicePrincipalNotificationsProvider));
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final institutionName = ref.watch(vicePrincipalProfileProvider).value?.institution?.institutionName;
    return AppBar(
      toolbarHeight: VicePrincipalTopBar.height,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      foregroundColor: Colors.white,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      // A Container, not a bare DecoratedBox: AppBar lays flexibleSpace out
      // under loose height constraints, where a childless DecoratedBox
      // collapses to zero height (white bar) while a Container expands to
      // fill the bar, status-bar area included.
      flexibleSpace: Container(
        key: const ValueKey('vice-principal-top-bar-gradient'),
        decoration: const BoxDecoration(gradient: AppColors.brandGradient),
      ),
      title:
          Text(widget.title, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),
      actions: [
        const _NotificationBell(),
        if (context.isExpandedWidth && institutionName != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 140),
              child: Text(
                institutionName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white.withValues(alpha: 0.8), fontWeight: FontWeight.w600),
              ),
            ),
          ),
        if (context.isTabletWidth)
          Container(width: 1, height: 24, margin: const EdgeInsets.symmetric(horizontal: 8), color: Colors.white24),
        const _AccountMenu(),
        SizedBox(width: context.isTabletWidth ? 16 : 8),
      ],
    );
  }
}

// ── Notification bell (shared/components/nav/NotificationBell.jsx) ──────────

class _NotificationBell extends ConsumerWidget {
  const _NotificationBell();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unread = ref.watch(vicePrincipalNotificationsProvider).value?.unreadCount ?? 0;
    return IconButton(
      tooltip: 'Notifications',
      onPressed: () => _showNotificationsSheet(context),
      icon: Badge(
        isLabelVisible: unread > 0,
        backgroundColor: AppColors.danger,
        textColor: Colors.white,
        label: Text(unread > 9 ? '9+' : '$unread'),
        child: Icon(Icons.notifications_none, color: Colors.white.withValues(alpha: 0.9)),
      ),
    );
  }
}

Future<void> _showNotificationsSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    showDragHandle: true,
    constraints: BoxConstraints(maxWidth: 560, maxHeight: MediaQuery.sizeOf(context).height * 0.7),
    builder: (_) => const _NotificationsPanel(),
  );
}

class _NotificationsPanel extends ConsumerWidget {
  const _NotificationsPanel();

  /// Runs a mutation, then re-fetches the feed. The container and messenger
  /// are captured up front: tapping a linked notification closes this sheet
  /// (disposing its `ref`) before the call returns.
  Future<void> _run(BuildContext context, WidgetRef ref, Future<Result<void>> call) async {
    final container = ProviderScope.containerOf(context, listen: false);
    final messenger = ScaffoldMessenger.maybeOf(context);
    final result = await call;
    container.invalidate(vicePrincipalNotificationsProvider);
    if (result case Err(:final failure)) {
      messenger?.showSnackBar(SnackBar(content: Text(failure.userMessage)));
    }
  }

  Future<void> _confirmClearAll(BuildContext context, WidgetRef ref) async {
    final scheme = Theme.of(context).colorScheme;
    final ok = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Clear All Notifications'),
        content: const Text("Permanently clear every notification? This can't be undone."),
        actions: [
          TextButton(onPressed: () => Navigator.of(dialogContext).pop(false), child: const Text('Cancel')),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: scheme.error, foregroundColor: scheme.onError),
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: const Text('Confirm'),
          ),
        ],
      ),
    );
    if (ok == true && context.mounted) await _run(context, ref, VicePrincipalAccountService().clearAll());
  }

  void _open(BuildContext context, WidgetRef ref, AppNotification n) {
    if (!n.isRead) _run(context, ref, VicePrincipalAccountService().markRead(n.notificationId));
    // `link` is a web path; open it when it is one of the sidebar's pages.
    final path = vicePrincipalPathForWebLink(n.link);
    if (path != null) {
      final router = GoRouter.of(context);
      Navigator.of(context).pop();
      router.go(path);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(vicePrincipalNotificationsProvider);
    final inbox = value.value;
    final unread = inbox?.unreadCount ?? 0;
    final hasAny = inbox?.notifications.isNotEmpty ?? false;
    final scheme = Theme.of(context).colorScheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 8, 8),
          // Wrap: on a narrow phone the two actions drop below the title
          // instead of overflowing it.
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('Notifications', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
              ),
              Wrap(
                children: [
                  if (unread > 0)
                    TextButton.icon(
                      style: TextButton.styleFrom(visualDensity: VisualDensity.compact),
                      onPressed: () => _run(context, ref, VicePrincipalAccountService().markAllRead()),
                      icon: const Icon(Icons.done_all, size: 16),
                      label: const Text('Mark all read'),
                    ),
                  if (hasAny)
                    TextButton.icon(
                      style: TextButton.styleFrom(foregroundColor: scheme.error, visualDensity: VisualDensity.compact),
                      onPressed: () => _confirmClearAll(context, ref),
                      icon: const Icon(Icons.delete_outline, size: 16),
                      label: const Text('Clear all'),
                    ),
                ],
              ),
            ],
          ),
        ),
        const Divider(height: 1),
        Flexible(
          child: value.when(
            skipLoadingOnRefresh: true,
            loading: () => const LoadingView(compact: true),
            error: (err, _) => ErrorView(
              message: describeError(err),
              onRetry: () => ref.invalidate(vicePrincipalNotificationsProvider),
            ),
            data: (inbox) => inbox.notifications.isEmpty
                ? const Padding(
                    padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                    child: Text(
                      "You're all caught up.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: AppColors.textMuted),
                    ),
                  )
                : ListView.separated(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(bottom: 16),
                    itemCount: inbox.notifications.length,
                    separatorBuilder: (_, _) => const Divider(height: 1),
                    itemBuilder: (_, i) => _NotificationRow(
                      notification: inbox.notifications[i],
                      onTap: () => _open(context, ref, inbox.notifications[i]),
                      onClear: () => _run(
                        context,
                        ref,
                        VicePrincipalAccountService().remove(inbox.notifications[i].notificationId),
                      ),
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}

class _NotificationRow extends StatelessWidget {
  const _NotificationRow({required this.notification, required this.onTap, required this.onClear});

  final AppNotification notification;
  final VoidCallback onTap;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    final n = notification;
    final caption = Theme.of(context).textTheme.bodySmall;
    return Material(
      color: n.isRead ? Colors.transparent : AppColors.primaryLight,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 4, 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 18,
                child: n.isRead
                    ? null
                    : Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.only(top: 6, right: 10),
                        decoration: const BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
                      ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(n.title, style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary)),
                    if (n.body != null && n.body!.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          n.body!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: caption?.copyWith(color: AppColors.textSecondary),
                        ),
                      ),
                    const SizedBox(height: 2),
                    Text(timeAgo(n.createdAt), style: caption?.copyWith(color: AppColors.textMuted)),
                  ],
                ),
              ),
              IconButton(
                tooltip: 'Clear',
                visualDensity: VisualDensity.compact,
                onPressed: onClear,
                icon: const Icon(Icons.close, size: 16, color: AppColors.textMuted),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// NotificationBell.jsx#timeAgo — same buckets and copy.
String timeAgo(DateTime? at, {DateTime? now}) {
  if (at == null) return '';
  final seconds = (now ?? DateTime.now()).difference(at).inSeconds;
  if (seconds < 60) return 'just now';
  final minutes = seconds ~/ 60;
  if (minutes < 60) return '${minutes}m ago';
  final hours = minutes ~/ 60;
  if (hours < 24) return '${hours}h ago';
  return '${hours ~/ 24}d ago';
}

// ── Avatar dropdown ─────────────────────────────────────────────────────────

enum _MenuAction { profile, changePassword, signOut }

class _AccountMenu extends ConsumerWidget {
  const _AccountMenu();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider).user;
    final profile = ref.watch(vicePrincipalProfileProvider).value;
    // Web: auth.user.name (staff full_name) — the profile's copy first so an
    // edit there is reflected here too.
    final displayName = profile?.fullName ?? user?.fullName ?? 'User';
    final initials = displayName == 'User' ? 'U' : initialsOf(displayName);
    final photoUrl = profile?.profilePhotoUrl;
    final scheme = Theme.of(context).colorScheme;

    return PopupMenuButton<_MenuAction>(
      tooltip: 'Account',
      position: PopupMenuPosition.under,
      offset: const Offset(0, 8),
      constraints: const BoxConstraints(minWidth: 220, maxWidth: 280),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      onSelected: (action) {
        switch (action) {
          case _MenuAction.profile:
            context.go('/vice-principal/profile');
          case _MenuAction.changePassword:
            showChangePasswordSheet(context);
          case _MenuAction.signOut:
            ref.read(authProvider.notifier).logout();
        }
      },
      itemBuilder: (_) => [
        PopupMenuItem<_MenuAction>(
          enabled: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                displayName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
              ),
              Text(
                user?.email ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
              ),
            ],
          ),
        ),
        const PopupMenuDivider(),
        const PopupMenuItem(
          value: _MenuAction.profile,
          child: ListTile(leading: Icon(Icons.person_outline), title: Text('My Profile'), contentPadding: EdgeInsets.zero),
        ),
        const PopupMenuItem(
          value: _MenuAction.changePassword,
          child: ListTile(leading: Icon(Icons.lock_outline), title: Text('Change Password'), contentPadding: EdgeInsets.zero),
        ),
        PopupMenuItem(
          value: _MenuAction.signOut,
          child: ListTile(
            leading: Icon(Icons.logout, color: scheme.error),
            title: Text('Sign Out', style: TextStyle(color: scheme.error)),
            contentPadding: EdgeInsets.zero,
          ),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _TopBarAvatar(photoUrl: photoUrl, initials: initials),
            if (context.isTabletWidth) ...[
              const SizedBox(width: 8),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 160),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      displayName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                    Text(
                      user?.username ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white.withValues(alpha: 0.7), fontSize: 12),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 4),
              Icon(Icons.keyboard_arrow_down, size: 18, color: Colors.white.withValues(alpha: 0.8)),
            ],
          ],
        ),
      ),
    );
  }
}

class _TopBarAvatar extends StatelessWidget {
  const _TopBarAvatar({required this.photoUrl, required this.initials});

  final String? photoUrl;
  final String initials;

  static const size = 34.0;

  @override
  Widget build(BuildContext context) {
    final fallback = Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: Text(initials, style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.w700, fontSize: 13)),
    );
    if (photoUrl == null || photoUrl!.isEmpty) return fallback;
    return ClipOval(
      child: CachedNetworkImage(
        imageUrl: photoUrl!,
        width: size,
        height: size,
        fit: BoxFit.cover,
        placeholder: (_, _) => fallback,
        errorWidget: (_, _, _) => fallback,
      ),
    );
  }
}
