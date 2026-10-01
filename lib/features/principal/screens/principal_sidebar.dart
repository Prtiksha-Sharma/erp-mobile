import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../ui/theme/app_colors.dart';
import '../providers/principal_portal_providers.dart';

/// Sidebar section headers — the web Sidebar.jsx GROUP_LABELS / GROUP_ORDER
/// entries PRINCIPAL_NAV uses (`main` has no header).
enum PrincipalNavGroup {
  main(null),
  academics('Academics'),
  finance('Finance'),
  management('Management');

  const PrincipalNavGroup(this.label);

  final String? label;
}

/// One PRINCIPAL_NAV entry (shared/constants/sidebarNav.js).
class PrincipalNavItem {
  const PrincipalNavItem(this.label, this.icon, this.path, this.group, {this.webPath, this.built = false});

  final String label;
  final IconData icon;

  /// Mobile route.
  final String path;
  final PrincipalNavGroup group;

  /// The web route this entry points at, so a notification's (web) `link`
  /// can be mapped onto the mobile route.
  final String? webPath;

  /// Whether the page exists on mobile; the rest open [PrincipalNotOnMobileScreen].
  final bool built;
}

/// PRINCIPAL_NAV, same order, labels and groups as the web. Only Dashboard
/// and My Profile are Principal-portal pages; the rest are the School Admin
/// ADMIN.* pages the web opens to Principal read-only, not ported yet.
const principalNav = <PrincipalNavItem>[
  PrincipalNavItem('Dashboard', Icons.dashboard_outlined, '/principal/dashboard', PrincipalNavGroup.main,
      webPath: '/principal/dashboard', built: true),
  PrincipalNavItem('My Profile', Icons.person_outline, '/principal/profile', PrincipalNavGroup.main,
      webPath: '/principal/profile', built: true),
  PrincipalNavItem('Students', Icons.groups_outlined, '/principal/students', PrincipalNavGroup.academics,
      webPath: '/admin/students'),
  PrincipalNavItem('Staff', Icons.manage_accounts_outlined, '/principal/staff', PrincipalNavGroup.academics,
      webPath: '/admin/staff'),
  PrincipalNavItem('Teachers', Icons.school_outlined, '/principal/teachers', PrincipalNavGroup.academics,
      webPath: '/admin/staff/teachers'),
  PrincipalNavItem('Class Monitoring', Icons.supervisor_account_outlined, '/principal/class-monitoring',
      PrincipalNavGroup.academics, webPath: '/admin/class-teacher-assignments'),
  PrincipalNavItem('Classes', Icons.menu_book_outlined, '/principal/classes', PrincipalNavGroup.academics,
      webPath: '/admin/classes'),
  PrincipalNavItem('Subjects', Icons.school_outlined, '/principal/subjects', PrincipalNavGroup.academics,
      webPath: '/admin/academics/subjects'),
  PrincipalNavItem('Subject Teachers', Icons.school_outlined, '/principal/subject-teachers',
      PrincipalNavGroup.academics, webPath: '/admin/academics/subject-teachers'),
  PrincipalNavItem('Timetable', Icons.schedule_outlined, '/principal/timetable', PrincipalNavGroup.academics,
      webPath: '/admin/academics/timetable'),
  PrincipalNavItem('Syllabus', Icons.description_outlined, '/principal/syllabus', PrincipalNavGroup.academics,
      webPath: '/admin/academics/syllabus'),
  PrincipalNavItem('Lesson Plans', Icons.edit_note_outlined, '/principal/lesson-plans', PrincipalNavGroup.academics,
      webPath: '/admin/academics/lesson-plans'),
  PrincipalNavItem('Homework & Assignments', Icons.bookmark_border, '/principal/homework',
      PrincipalNavGroup.academics, webPath: '/admin/homework'),
  PrincipalNavItem('Examination', Icons.article_outlined, '/principal/exams', PrincipalNavGroup.academics,
      webPath: '/admin/exams'),
  PrincipalNavItem('Events', Icons.calendar_month_outlined, '/principal/events', PrincipalNavGroup.academics,
      webPath: '/admin/events'),
  PrincipalNavItem('Activities', Icons.auto_awesome_outlined, '/principal/activities', PrincipalNavGroup.academics,
      webPath: '/admin/activities'),
  PrincipalNavItem('Discipline Records', Icons.gpp_maybe_outlined, '/principal/discipline',
      PrincipalNavGroup.academics, webPath: '/admin/discipline'),
  PrincipalNavItem('Leaves', Icons.event_busy_outlined, '/principal/leaves', PrincipalNavGroup.academics,
      webPath: '/admin/leaves'),
  PrincipalNavItem('Staff Leaves', Icons.event_busy_outlined, '/principal/staff-leaves', PrincipalNavGroup.academics,
      webPath: '/admin/staff-leaves'),
  PrincipalNavItem('Fees', Icons.attach_money, '/principal/fees', PrincipalNavGroup.finance, webPath: '/admin/fees'),
  PrincipalNavItem('Reports', Icons.bar_chart, '/principal/reports', PrincipalNavGroup.management,
      webPath: '/admin/reports'),
  PrincipalNavItem('Activity Logs', Icons.timeline, '/principal/activity-logs', PrincipalNavGroup.management,
      webPath: '/admin/activity-logs'),
  PrincipalNavItem('Announcements', Icons.campaign_outlined, '/principal/announcements', PrincipalNavGroup.management,
      webPath: '/admin/notices'),
];

/// The mobile route for a notification's web `link`, or null if it has none.
String? principalPathForWebLink(String? link) {
  if (link == null) return null;
  for (final item in principalNav) {
    if (item.webPath == link) return item.path;
  }
  return null;
}

/// Port of layouts/Sidebar.jsx for the Principal: logo, school card, then
/// PRINCIPAL_NAV grouped under the web's section headers.
///
/// - In a [Drawer] on phones / portrait tablets ([inDrawer]): always full
///   width; tapping an entry closes the drawer.
/// - Permanently beside the page on landscape tablets, with the web's
///   collapse toggle (256dp ↔ 64dp icon rail).
class PrincipalSidebar extends ConsumerWidget {
  const PrincipalSidebar({super.key, this.inDrawer = false});

  final bool inDrawer;

  static const width = 256.0; // web: w-64
  static const collapsedWidth = 64.0; // web: w-16
  static const headerHeight = 64.0; // web: h-16, lines up with the top bar

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collapsed = !inDrawer && ref.watch(principalSidebarCollapsedProvider);
    final location = GoRouterState.of(context).matchedLocation;
    final profile = ref.watch(principalProfileProvider).value;
    final institutionName = profile?.institution?.institutionName;

    // The layout follows the sidebar's *current* width, not the toggle:
    // while the width animates 64 ↔ 256 the labelled layout only appears
    // once there's room for it, so nothing overflows mid-animation.
    Widget content(bool collapsed) => Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _Logo(collapsed: collapsed),
        const Divider(height: 1, color: AppColors.border),
        _SchoolCard(name: institutionName, collapsed: collapsed),
        const Divider(height: 1, color: AppColors.border),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            children: [
              for (final (gi, group) in PrincipalNavGroup.values.indexed) ...[
                if (gi > 0) const SizedBox(height: 16),
                if (gi > 0 && collapsed) const Divider(height: 1, indent: 4, endIndent: 4, color: AppColors.border),
                if (group.label != null && !collapsed)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 6),
                    child: Text(
                      group.label!.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.8,
                        color: AppColors.textMuted,
                      ),
                    ),
                  ),
                for (final item in principalNav.where((i) => i.group == group))
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
                onTap: () => ref.read(principalSidebarCollapsedProvider.notifier).toggle(),
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
      height: PrincipalSidebar.headerHeight,
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
  const _SchoolCard({required this.name, required this.collapsed});

  final String? name;
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
                      const Text('Principal', style: TextStyle(fontSize: 12, color: AppColors.textMuted)),
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

  final PrincipalNavItem item;
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

