import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/formatters.dart';
import '../../theme/app_colors.dart';
import '../responsive.dart';

enum _MenuAction { profile, changePassword, signOut }

/// The top bar's avatar dropdown — name/email header, My Profile, Change
/// Password, Sign Out. [onProfile] / [onChangePassword] are nullable:
/// passing null hides that item instead of wiring up a dead/fake action, so
/// a role missing that backend feature (e.g. Parent has no self-profile
/// endpoint) simply doesn't show the entry. Shared by every drawer-shell
/// role (ported from the former per-role `_AccountMenu`).
class AppAccountMenu extends StatelessWidget {
  const AppAccountMenu({
    super.key,
    required this.displayName,
    this.email,
    this.username,
    this.photoUrl,
    this.onProfile,
    this.onChangePassword,
    required this.onSignOut,
  });

  final String displayName;
  final String? email;
  final String? username;
  final String? photoUrl;
  final VoidCallback? onProfile;
  final VoidCallback? onChangePassword;
  final VoidCallback onSignOut;

  @override
  Widget build(BuildContext context) {
    final initials = displayName.isEmpty ? '?' : initialsOf(displayName);
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
            onProfile?.call();
          case _MenuAction.changePassword:
            onChangePassword?.call();
          case _MenuAction.signOut:
            onSignOut();
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
                email ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
              ),
            ],
          ),
        ),
        const PopupMenuDivider(),
        if (onProfile != null)
          const PopupMenuItem(
            value: _MenuAction.profile,
            child:
                ListTile(leading: Icon(Icons.person_outline), title: Text('My Profile'), contentPadding: EdgeInsets.zero),
          ),
        if (onChangePassword != null)
          const PopupMenuItem(
            value: _MenuAction.changePassword,
            child: ListTile(
                leading: Icon(Icons.lock_outline), title: Text('Change Password'), contentPadding: EdgeInsets.zero),
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
                      username ?? '',
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
