import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../ui/theme/app_colors.dart';
import '../providers/vice_principal_portal_providers.dart';

/// Sidebar section headers — the web Sidebar.jsx GROUP_LABELS / GROUP_ORDER
/// entries VICE_PRINCIPAL_NAV uses (`main` has no header).
enum VicePrincipalNavGroup {
  main(null),
  academics('Academics'),
  finance('Finance'),
  support('Support Services'),
  management('Management');

  const VicePrincipalNavGroup(this.label);

  final String? label;
}

/// One accordion sub-item (`children` on a VICE_PRINCIPAL_NAV entry, e.g.
/// Leave Management → Student/Staff Leaves, Hostel → its five pages).
class VicePrincipalNavChild {
  const VicePrincipalNavChild(this.label, this.path, {this.webPath});

  final String label;
  final String path;
  final String? webPath;
}

/// One VICE_PRINCIPAL_NAV entry (shared/constants/sidebarNav.js).
class VicePrincipalNavItem {
  const VicePrincipalNavItem(this.label, this.icon, this.path, this.group,
      {this.webPath, this.built = false, this.children = const []});

  final String label;
  final IconData icon;

  /// Mobile route.
  final String path;
  final VicePrincipalNavGroup group;

  /// The web route this entry points at, so a notification's (web) `link`
  /// can be mapped onto the mobile route.
  final String? webPath;

  /// Whether the page exists on mobile; the rest open
  /// [VicePrincipalNotOnMobileScreen].
  final bool built;

  /// Accordion sub-items (web: SidebarItem's `children` prop). Empty for a
  /// flat entry.
  final List<VicePrincipalNavChild> children;

  bool get hasChildren => children.isNotEmpty;
}

/// VICE_PRINCIPAL_NAV, same order, labels and groups as the web. Only
/// Dashboard and My Profile are Vice-Principal-portal pages; the rest are
/// the School Admin ADMIN.* pages the web widens to Vice Principal
/// (read-only oversight; every write control is hidden internally there),
/// not ported to mobile yet.
const vicePrincipalNav = <VicePrincipalNavItem>[
  VicePrincipalNavItem('Dashboard', Icons.dashboard_outlined, '/vice-principal/dashboard',
      VicePrincipalNavGroup.main, webPath: '/vice-principal/dashboard', built: true),
  VicePrincipalNavItem('My Profile', Icons.person_outline, '/vice-principal/profile', VicePrincipalNavGroup.main,
      webPath: '/vice-principal/profile', built: true),
  VicePrincipalNavItem(
      'Student Monitoring', Icons.groups_outlined, '/vice-principal/students', VicePrincipalNavGroup.academics,
      webPath: '/admin/students'),
  VicePrincipalNavItem(
      'Teacher Monitoring', Icons.school_outlined, '/vice-principal/teachers', VicePrincipalNavGroup.academics,
      webPath: '/admin/staff/teachers'),
  VicePrincipalNavItem('Class Monitoring', Icons.supervisor_account_outlined, '/vice-principal/class-monitoring',
      VicePrincipalNavGroup.academics, webPath: '/admin/class-teacher-assignments'),
  VicePrincipalNavItem(
      'Attendance', Icons.checklist_outlined, '/vice-principal/attendance', VicePrincipalNavGroup.academics,
      webPath: '/admin/reports/attendance'),
  VicePrincipalNavItem(
      'Leave Management', Icons.event_busy_outlined, '/vice-principal/leaves', VicePrincipalNavGroup.academics,
      webPath: '/admin/leaves',
      children: [
        VicePrincipalNavChild('Student Leaves', '/vice-principal/leaves', webPath: '/admin/leaves'),
        VicePrincipalNavChild('Staff Leaves', '/vice-principal/staff-leaves', webPath: '/admin/staff-leaves'),
      ]),
  VicePrincipalNavItem(
      'Discipline Records', Icons.gpp_maybe_outlined, '/vice-principal/discipline', VicePrincipalNavGroup.academics,
      webPath: '/admin/discipline'),
  VicePrincipalNavItem(
      'Homework', Icons.bookmark_border, '/vice-principal/homework', VicePrincipalNavGroup.academics,
      webPath: '/admin/homework'),
  VicePrincipalNavItem(
      'Examination', Icons.article_outlined, '/vice-principal/exams', VicePrincipalNavGroup.academics,
      webPath: '/admin/exams'),
  VicePrincipalNavItem(
      'Timetable', Icons.schedule_outlined, '/vice-principal/timetable', VicePrincipalNavGroup.academics,
      webPath: '/admin/academics/timetable'),
  VicePrincipalNavItem(
      'Events', Icons.calendar_month_outlined, '/vice-principal/events', VicePrincipalNavGroup.academics,
      webPath: '/admin/events'),
  VicePrincipalNavItem(
      'Academic Reports', Icons.bar_chart, '/vice-principal/reports', VicePrincipalNavGroup.management,
      webPath: '/admin/reports'),
  VicePrincipalNavItem(
      'Announcements', Icons.campaign_outlined, '/vice-principal/announcements', VicePrincipalNavGroup.management,
      webPath: '/admin/notices'),
  VicePrincipalNavItem('Fees', Icons.attach_money, '/vice-principal/fees', VicePrincipalNavGroup.finance,
      webPath: '/admin/fees'),
  VicePrincipalNavItem(
      'Library', Icons.menu_book_outlined, '/vice-principal/library', VicePrincipalNavGroup.support,
      webPath: '/admin/library'),
  VicePrincipalNavItem(
      'Transport', Icons.directions_bus_outlined, '/vice-principal/transport', VicePrincipalNavGroup.support,
      webPath: '/admin/transport'),
  VicePrincipalNavItem('Hostel', Icons.home_outlined, '/vice-principal/hostel', VicePrincipalNavGroup.support,
      webPath: '/admin/hostel',
      built: true,
      children: [
        VicePrincipalNavChild('Dashboard', '/vice-principal/hostel', webPath: '/admin/hostel'),
        VicePrincipalNavChild('Hostels', '/vice-principal/hostel/hostels', webPath: '/admin/hostel/hostels'),
        VicePrincipalNavChild('Rooms', '/vice-principal/hostel/rooms', webPath: '/admin/hostel/rooms'),
        VicePrincipalNavChild('Students', '/vice-principal/hostel/students', webPath: '/admin/hostel/students'),
        VicePrincipalNavChild('Wardens', '/vice-principal/hostel/wardens', webPath: '/admin/hostel/wardens'),
        VicePrincipalNavChild('Reports', '/vice-principal/hostel/reports', webPath: '/admin/hostel/reports'),
      ]),
];

/// Every routable mobile path in [vicePrincipalNav] — each top-level entry's
/// own path, plus every accordion child's path (a child may share its
/// parent's path, e.g. Leave Management / Student Leaves).
Iterable<String> vicePrincipalNavPaths() sync* {
  final seen = <String>{};
  for (final item in vicePrincipalNav) {
    if (seen.add(item.path)) yield item.path;
    for (final child in item.children) {
      if (seen.add(child.path)) yield child.path;
    }
  }
}

/// The mobile route for a notification's web `link`, or null if it has none.
String? vicePrincipalPathForWebLink(String? link) {
  if (link == null) return null;
  for (final item in vicePrincipalNav) {
    if (item.webPath == link) return item.path;
    for (final child in item.children) {
      if (child.webPath == link) return child.path;
    }
  }
  return null;
}

/// Port of layouts/Sidebar.jsx for the Vice Principal: logo, school card,
/// then VICE_PRINCIPAL_NAV grouped under the web's section headers, with
/// Leave Management / Hostel rendered as accordions (web: SidebarItem's
/// `children` prop).
///
/// - In a [Drawer] on phones / portrait tablets ([inDrawer]): a flat entry
///   navigates and closes the drawer, same as the web; an accordion parent
///   only expands/collapses its children instead (the web's row navigates
///   *and* toggles at once, but mobile's drawer closing on navigation would
///   hide the very children being opened, so the two are split here: tap the
///   parent to expand, tap a child to navigate).
/// - Permanently beside the page on landscape tablets, with the web's
///   collapse toggle (256dp ↔ 64dp icon rail).
class VicePrincipalSidebar extends ConsumerWidget {
  const VicePrincipalSidebar({super.key, this.inDrawer = false});

  final bool inDrawer;

  static const width = 256.0; // web: w-64
  static const collapsedWidth = 64.0; // web: w-16
  static const headerHeight = 64.0; // web: h-16, lines up with the top bar

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collapsed = !inDrawer && ref.watch(vicePrincipalSidebarCollapsedProvider);
    final location = GoRouterState.of(context).matchedLocation;
    final profile = ref.watch(vicePrincipalProfileProvider).value;
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
              for (final (gi, group) in VicePrincipalNavGroup.values.indexed) ...[
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
                for (final item in vicePrincipalNav.where((i) => i.group == group))
                  _NavTile(
                    item: item,
                    location: location,
                    collapsed: collapsed,
                    onNavigate: (path) {
                      if (inDrawer) Navigator.of(context).pop();
                      context.go(path);
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
                onTap: () => ref.read(vicePrincipalSidebarCollapsedProvider.notifier).toggle(),
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
      height: VicePrincipalSidebar.headerHeight,
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
                      const Text('Vice Principal', style: TextStyle(fontSize: 12, color: AppColors.textMuted)),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}

class _NavTile extends StatefulWidget {
  const _NavTile({required this.item, required this.location, required this.collapsed, required this.onNavigate});

  final VicePrincipalNavItem item;
  final String location;
  final bool collapsed;
  final void Function(String path) onNavigate;

  @override
  State<_NavTile> createState() => _NavTileState();
}

class _NavTileState extends State<_NavTile> {
  late bool _open = _isChildActive;

  bool get _isChildActive => widget.item.children.any((c) => widget.location == c.path);

  bool get _active =>
      widget.location == widget.item.path || widget.location.startsWith('${widget.item.path}/') || _isChildActive;

  @override
  void didUpdateWidget(covariant _NavTile oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_isChildActive) _open = true;
  }

  @override
  Widget build(BuildContext context) {
    final item = widget.item;
    final color = _active ? AppColors.primary : AppColors.textSecondary;
    final row = Material(
      color: _active ? AppColors.primaryLight : Colors.transparent,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        // An accordion parent only toggles open/closed on tap, same as the
        // web — but unlike the web, mobile's drawer closes on navigation, so
        // navigating immediately would hide the very children being opened.
        // A flat entry navigates straight away, closing the drawer.
        onTap: () {
          if (item.hasChildren && !widget.collapsed) {
            setState(() => _open = !_open);
          } else {
            widget.onNavigate(item.path);
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
          child: Row(
            mainAxisAlignment: widget.collapsed ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              Icon(item.icon, size: 18, color: color),
              if (!widget.collapsed) ...[
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    item.label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: _active ? AppColors.primary : AppColors.textPrimary,
                      fontWeight: _active ? FontWeight.w600 : FontWeight.w400,
                    ),
                  ),
                ),
                if (item.hasChildren)
                  Icon(_open ? Icons.expand_less : Icons.expand_more, size: 18, color: AppColors.textMuted),
              ],
            ],
          ),
        ),
      ),
    );
    final tile = Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: widget.collapsed ? Tooltip(message: item.label, child: row) : row,
    );
    if (!item.hasChildren || widget.collapsed) return tile;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        tile,
        if (_open)
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (final child in item.children)
                  Material(
                    color: widget.location == child.path ? AppColors.primaryLight : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () => widget.onNavigate(child.path),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        child: Text(
                          child.label,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 13,
                            color:
                                widget.location == child.path ? AppColors.primary : AppColors.textSecondary,
                            fontWeight: widget.location == child.path ? FontWeight.w600 : FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
      ],
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
