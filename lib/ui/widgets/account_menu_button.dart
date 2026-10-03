import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/auth/auth_provider.dart';
import '../../core/utils/formatters.dart';
import '../theme/app_colors.dart';

/// Account action for the roles whose screens use a plain [AppBar] (Driver,
/// Parent) rather than the Principal/Vice-Principal gradient top bar.
///
/// Those screens previously put a bare `IconButton(Icons.logout)` in
/// `AppBar.actions` that called `logout()` straight from `onPressed` — one
/// stray tap in the top-right corner ended the session with no confirmation
/// and no way back. This opens the same dropdown the Principal top bar uses
/// (identity header, then an explicit "Sign Out" in the error colour) and
/// performs the identical `authProvider.notifier.logout()` call, so session
/// teardown behaviour is unchanged — only the number of taps it takes.
///
/// Deliberately *not* a copy of the Principal's `_AccountMenu`: that one also
/// offers My Profile / Change Password, which route to `/principal/...`
/// screens these roles don't have. Sign Out is the only shared action.
class AccountMenuButton extends ConsumerWidget {
  const AccountMenuButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider).user;
    final fullName = user?.fullName?.trim();
    final displayName =
        (fullName != null && fullName.isNotEmpty) ? fullName : (user?.username ?? 'User');
    // Email is optional on LoginUser; fall back to the username so the header
    // never renders a blank second line.
    final subtitle = user?.email?.trim();
    final secondLine =
        (subtitle != null && subtitle.isNotEmpty) ? subtitle : (user?.username ?? '');
    final scheme = Theme.of(context).colorScheme;

    return PopupMenuButton<_AccountAction>(
      tooltip: 'Account',
      padding: EdgeInsets.zero,
      position: PopupMenuPosition.under,
      offset: const Offset(0, 8),
      constraints: const BoxConstraints(minWidth: 220, maxWidth: 280),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      onSelected: (action) {
        switch (action) {
          case _AccountAction.signOut:
            ref.read(authProvider.notifier).logout();
        }
      },
      itemBuilder: (_) => [
        // Disabled so it reads as a header rather than a tappable row; the
        // explicit colours override the greyed-out disabled text style.
        PopupMenuItem<_AccountAction>(
          enabled: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                displayName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              if (secondLine.isNotEmpty)
                Text(
                  secondLine,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                ),
            ],
          ),
        ),
        const PopupMenuDivider(),
        PopupMenuItem<_AccountAction>(
          value: _AccountAction.signOut,
          child: ListTile(
            leading: Icon(Icons.logout, color: scheme.error),
            title: Text('Sign Out', style: TextStyle(color: scheme.error)),
            contentPadding: EdgeInsets.zero,
          ),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: CircleAvatar(
          radius: 17,
          backgroundColor: scheme.primaryContainer,
          child: Text(
            initialsOf(displayName),
            style: TextStyle(
              color: scheme.onPrimaryContainer,
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}

enum _AccountAction { signOut }
