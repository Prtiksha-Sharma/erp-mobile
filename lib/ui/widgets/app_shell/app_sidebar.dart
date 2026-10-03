import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/roles/app_role.dart';
import '../../../core/shell/app_nav_item.dart';
import '../../../core/shell/shell_notifications_provider.dart';
import '../../theme/app_colors.dart';

/// The left navigation drawer/rail every drawer-shell role shares: logo,
/// school card, then [sections] grouped under their headers. Generic port
/// of the former per-role `*Sidebar` (e.g. `PrincipalSidebar`).
///
/// - In a [Drawer] on phones / portrait tablets ([inDrawer]): always full
///   width; tapping an entry closes the drawer.
/// - Permanently beside the page on landscape tablets, with a collapse
///   toggle (256dp ↔ 64dp icon rail).
class AppSidebar extends ConsumerWidget {
  const AppSidebar({
    super.key,
    required this.role,
    required this.sections,
    required this.roleLabel,
    this.schoolName,
    this.inDrawer = false,
  });

  final AppRole role;
  final List<AppNavSection> sections;
  final String roleLabel;
  final String? schoolName;
  final bool inDrawer;

  static const width = 256.0; // web: w-64
  static const collapsedWidth = 64.0; // web: w-16
  static const headerHeight = 64.0; // web: h-16, lines up with the top bar

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collapsed = !inDrawer && ref.watch(shellSidebarCollapsedProvider(role));
    final location = GoRouterState.of(context).matchedLocation;

    // The layout follows the sidebar's *current* width, not the toggle:
    // while the width animates 64 ↔ 256 the labelled layout only appears
    // once there's room for it, so nothing overflows mid-animation.
    Widget content(bool collapsed) => Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _Logo(collapsed: collapsed),
        const Divider(height: 1, color: AppColors.border),
        _SchoolCard(name: schoolName, roleLabel: roleLabel, collapsed: collapsed),
        const Divider(height: 1, color: AppColors.border),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            children: [
              for (final (si, section) in sections.indexed) ...[
                if (si > 0) const SizedBox(height: 16),
                if (si > 0 && collapsed) const Divider(height: 1, indent: 4, endIndent: 4, color: AppColors.border),
                if (section.title != null && !collapsed)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 6),
                    child: Text(
                      section.title!.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.8,
                        color: AppColors.textMuted,
                      ),
                    ),
                  ),
                for (final item in section.items)
                  _NavTile(
                    item: item,
                    active: location == item.path || location.startsWith('${item.path}/'),
                    collapsed: collapsed,
                    onTap: () {
                      if (inDrawer) Navigator.of(context).pop();
                      context.go(item.path);
                    },
                  ),
              ],
            ],
          ),
        ),
      ],
    );

    if (inDrawer) {
      return Drawer(
        width: width,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(),
        child: SafeArea(right: false, child: content(false)),
      );
    }

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      width: collapsed ? collapsedWidth : width,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(right: BorderSide(color: AppColors.border)),
      ),
      child: SafeArea(
        right: false,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              child: LayoutBuilder(
                builder: (context, constraints) => content(constraints.maxWidth < 200),
              ),
            ),
            // Web: the round chevron button near the sidebar's edge; here it
            // sits on the logo divider so it never covers a nav entry.
            Positioned(
              top: headerHeight - 12,
              right: 4,
              child: _CollapseToggle(
                collapsed: collapsed,
                onTap: () => ref.read(shellSidebarCollapsedProvider(role).notifier).toggle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo({required this.collapsed});

  final bool collapsed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSidebar.headerHeight,
      child: Center(
        child: collapsed
            ? const Text('V', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.primary))
            : const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Vidyaprabandhan',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.primary),
                    ),
                    Text(
                      'Institute Management ERP by AETPL',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 11, color: AppColors.textSecondary),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

/// The web's institution row — logo (or initials) + school name + role.
/// Mobile has no school logo URL (the web gets it from /schools/by-slug),
/// so this always shows the initials square, same as the web without a logo.
class _SchoolCard extends StatelessWidget {
  const _SchoolCard({required this.name, required this.roleLabel, required this.collapsed});

  final String? name;
  final String roleLabel;
  final bool collapsed;

  @override
  Widget build(BuildContext context) {
    final initials = name == null
        ? 'SC'
        : name!.split(' ').where((w) => w.isNotEmpty).map((w) => w[0]).join().toUpperCase();
    final badge = Container(
      width: 32,
      height: 32,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(8)),
      child: Text(
        initials.length > 2 ? initials.substring(0, 2) : initials,
        style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
      ),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: collapsed
          ? Center(child: badge)
          : Row(
              children: [
                badge,
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name ?? 'My School',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                      ),
                      Text(roleLabel, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}

class _NavTile extends StatelessWidget {
  const _NavTile({required this.item, required this.active, required this.collapsed, required this.onTap});

  final AppNavItem item;
  final bool active;
  final bool collapsed;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = active ? AppColors.primary : AppColors.textSecondary;
    final tile = Material(
      color: active ? AppColors.primaryLight : Colors.transparent,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
          child: Row(
            mainAxisAlignment: collapsed ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              Icon(item.icon, size: 18, color: color),
              if (!collapsed) ...[
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    item.label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: active ? AppColors.primary : AppColors.textPrimary,
                      fontWeight: active ? FontWeight.w600 : FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: collapsed ? Tooltip(message: item.label, child: tile) : tile,
    );
  }
}

class _CollapseToggle extends StatelessWidget {
  const _CollapseToggle({required this.collapsed, required this.onTap});

  final bool collapsed;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: collapsed ? 'Expand sidebar' : 'Collapse sidebar',
      child: Material(
        color: Colors.white,
        shape: const CircleBorder(side: BorderSide(color: AppColors.border)),
        elevation: 1,
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: onTap,
          child: SizedBox(
            width: 24,
            height: 24,
            child: Icon(collapsed ? Icons.chevron_right : Icons.chevron_left, size: 16, color: AppColors.textMuted),
          ),
        ),
      ),
    );
  }
}
