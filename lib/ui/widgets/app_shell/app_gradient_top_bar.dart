import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../theme/app_colors.dart';
import '../responsive.dart';

/// The brand-gradient bar every drawer-shell role shares: page title, a
/// notification bell slot, the school name (wide screens only), and an
/// account menu slot. Generic port of the former per-role `*TopBar` (e.g.
/// `PrincipalTopBar`) — the bell and account menu are passed in rather than
/// built here, so this widget stays provider-free.
class AppGradientTopBar extends StatelessWidget implements PreferredSizeWidget {
  const AppGradientTopBar({
    super.key,
    required this.title,
    this.schoolName,
    required this.notificationBell,
    required this.accountMenu,
    this.bottom,
    this.actions = const [],
  });

  final String title;
  final String? schoolName;
  final Widget notificationBell;
  final Widget accountMenu;

  /// Page-specific actions (e.g. a screen's own icon button), shown before
  /// the notification bell.
  final List<Widget> actions;

  /// e.g. a `TabBar` — same role as `Scaffold.appBar`'s own `bottom`.
  final PreferredSizeWidget? bottom;

  static const height = 64.0; // web: h-16

  @override
  Size get preferredSize => Size.fromHeight(height + (bottom?.preferredSize.height ?? 0));

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: height,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      foregroundColor: Colors.white,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      // A Container, not a bare DecoratedBox: AppBar lays flexibleSpace out
      // under loose height constraints, where a childless DecoratedBox
      // collapses to zero height (white bar) while a Container expands to
      // fill the bar, status-bar area included.
      flexibleSpace: Container(
        key: const ValueKey('app-gradient-top-bar-gradient'),
        decoration: const BoxDecoration(gradient: AppColors.brandGradient),
      ),
      title: Text(title, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),
      bottom: bottom == null ? null : _OnGradient(child: bottom!),
      actions: [
        ...actions,
        notificationBell,
        if (context.isExpandedWidth && schoolName != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 140),
              child: Text(
                schoolName!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white.withValues(alpha: 0.8), fontWeight: FontWeight.w600),
              ),
            ),
          ),
        if (context.isTabletWidth)
          Container(width: 1, height: 24, margin: const EdgeInsets.symmetric(horizontal: 8), color: Colors.white24),
        accountMenu,
        SizedBox(width: context.isTabletWidth ? 16 : 8),
      ],
    );
  }
}

/// Re-themes a bar-bottom widget (a `TabBar`) for the dark gradient behind it:
/// the default tab colours come from the light page theme, which leaves the
/// tab labels dark-on-purple and hard to read. White labels, a softer white
/// for the unselected tabs, and a white indicator.
class _OnGradient extends StatelessWidget implements PreferredSizeWidget {
  const _OnGradient({required this.child});

  final PreferredSizeWidget child;

  @override
  Size get preferredSize => child.preferredSize;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(
        tabBarTheme: theme.tabBarTheme.copyWith(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white.withValues(alpha: 0.72),
          indicatorColor: Colors.white,
          dividerColor: Colors.transparent,
          overlayColor: WidgetStatePropertyAll(Colors.white.withValues(alpha: 0.12)),
        ),
      ),
      child: child,
    );
  }
}
