import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/app_notification.dart';
import '../../../core/roles/app_role.dart';
import '../../../core/shell/app_nav_item.dart';
import '../../../core/shell/shell_notifications_provider.dart';
import '../../../core/shell/shell_notifications_service.dart';
import '../../theme/app_colors.dart';
import '../async_value_view.dart';
import '../error_view.dart';

/// The top bar's bell — badge count, a bottom sheet listing the feed with
/// mark-read/mark-all/clear actions, and tap-to-open when a notification's
/// web `link` matches one of [sections]. Shared by every drawer-shell role
/// (ported from the former per-role `_NotificationBell`/`_NotificationsPanel`).
class AppNotificationBell extends ConsumerWidget {
  const AppNotificationBell({super.key, required this.role, this.sections = const []});

  final AppRole role;
  final List<AppNavSection> sections;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unread = ref.watch(shellNotificationsProvider(role)).value?.unreadCount ?? 0;
    return IconButton(
      tooltip: 'Notifications',
      onPressed: () => _showNotificationsSheet(context, role, sections),
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

Future<void> _showNotificationsSheet(BuildContext context, AppRole role, List<AppNavSection> sections) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    showDragHandle: true,
    constraints: BoxConstraints(maxWidth: 560, maxHeight: MediaQuery.sizeOf(context).height * 0.7),
    builder: (_) => _NotificationsPanel(role: role, sections: sections),
  );
}

class _NotificationsPanel extends ConsumerWidget {
  const _NotificationsPanel({required this.role, required this.sections});

  final AppRole role;
  final List<AppNavSection> sections;

  /// Runs a mutation, then re-fetches the feed. The container and messenger
  /// are captured up front: tapping a linked notification closes this sheet
  /// (disposing its `ref`) before the call returns.
  Future<void> _run(BuildContext context, WidgetRef ref, Future<Result<void>> call) async {
    final container = ProviderScope.containerOf(context, listen: false);
    final messenger = ScaffoldMessenger.maybeOf(context);
    final result = await call;
    container.invalidate(shellNotificationsProvider(role));
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
    if (ok == true && context.mounted) await _run(context, ref, ShellNotificationsService().clearAll());
  }

  void _open(BuildContext context, WidgetRef ref, AppNotification n) {
    if (!n.isRead) _run(context, ref, ShellNotificationsService().markRead(n.notificationId));
    // `link` is a web path; open it when it is one of the drawer's pages.
    final path = pathForWebLink(sections, n.link);
    if (path != null) {
      final router = GoRouter.of(context);
      Navigator.of(context).pop();
      router.go(path);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(shellNotificationsProvider(role));
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
                      onPressed: () => _run(context, ref, ShellNotificationsService().markAllRead()),
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
            error: (err, _) =>
                ErrorView(message: describeError(err), onRetry: () => ref.invalidate(shellNotificationsProvider(role))),
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
                        ShellNotificationsService().remove(inbox.notifications[i].notificationId),
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
