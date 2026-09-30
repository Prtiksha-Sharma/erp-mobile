import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/teacher_portal_providers.dart';

/// One destination on a hub screen — the mobile stand-in for the web's
/// TEACHER_NAV sidebar entries (shared/constants/sidebarNav.js). The web
/// lists all 17 pages in a sidebar; on a phone they're grouped behind the
/// Classroom / Academics / More tabs instead.
class _HubEntry {
  const _HubEntry(this.icon, this.label, this.description, this.path, this.color, {this.classTeacherOnly = false});

  final IconData icon;
  final String label;
  final String description;
  final String path;
  final Color color;

  /// Backend-gated to the Class Teacher role; shown with a badge for a
  /// plain Teacher (the page itself explains why, like the web).
  final bool classTeacherOnly;
}

const _classroomEntries = [
  _HubEntry(Icons.fact_check_outlined, 'Attendance', "Mark your class's daily attendance",
      '/teacher/classroom/attendance', AppColors.primary, classTeacherOnly: true),
  _HubEntry(Icons.event_busy_outlined, 'Leave Requests', 'Approve or reject student leave',
      '/teacher/classroom/leave-requests', AppColors.amber, classTeacherOnly: true),
  _HubEntry(Icons.groups_outlined, 'My Class', 'Class roster, performance & birthdays', '/teacher/classroom/my-class',
      AppColors.violet, classTeacherOnly: true),
  _HubEntry(Icons.assignment_turned_in_outlined, 'Marks Entry', 'Enter exam marks for your subjects',
      '/teacher/classroom/marks', AppColors.emerald),
  _HubEntry(Icons.bookmark_border, 'Homework', 'Assign work and review submissions', '/teacher/classroom/homework',
      AppColors.rose),
];

const _academicsEntries = [
  _HubEntry(Icons.school_outlined, 'My Subjects', 'Classes and subjects assigned to you', '/teacher/academics/subjects',
      AppColors.primary),
  _HubEntry(Icons.schedule_outlined, 'My Timetable', 'Your weekly period schedule', '/teacher/academics/timetable',
      AppColors.sky),
  _HubEntry(Icons.edit_note_outlined, 'Lesson Planning', 'Plan topics for your classes',
      '/teacher/academics/lesson-plans', AppColors.violet),
  _HubEntry(Icons.menu_book_outlined, 'My Syllabus', 'Track syllabus progress', '/teacher/academics/syllabus',
      AppColors.teal),
];

const _moreEntries = [
  _HubEntry(Icons.person_outline, 'My Profile', 'Personal, contact & employment details', '/teacher/more/profile',
      AppColors.primary),
  _HubEntry(Icons.event_available_outlined, 'My Attendance', 'Your own attendance record',
      '/teacher/more/my-attendance', AppColors.success),
  _HubEntry(Icons.event_busy_outlined, 'My Leaves', 'Apply for and track your leave', '/teacher/more/my-leaves',
      AppColors.amber),
  _HubEntry(Icons.campaign_outlined, 'Notices', 'School notices and circulars', '/teacher/more/notices',
      AppColors.violet),
  _HubEntry(Icons.calendar_month_outlined, 'Events', 'Upcoming school events', '/teacher/more/events', AppColors.sky),
  _HubEntry(Icons.auto_awesome_outlined, 'Activities', 'School activities', '/teacher/more/activities',
      AppColors.emerald),
];

class TeacherClassroomHubScreen extends StatelessWidget {
  const TeacherClassroomHubScreen({super.key});

  @override
  Widget build(BuildContext context) => const _HubScaffold(title: 'Classroom', entries: _classroomEntries);
}

class TeacherAcademicsHubScreen extends StatelessWidget {
  const TeacherAcademicsHubScreen({super.key});

  @override
  Widget build(BuildContext context) => const _HubScaffold(title: 'Academics', entries: _academicsEntries);
}

class TeacherMoreHubScreen extends ConsumerWidget {
  const TeacherMoreHubScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scheme = Theme.of(context).colorScheme;
    return _HubScaffold(
      title: 'More',
      entries: _moreEntries,
      footer: [
        const SizedBox(height: 20),
        Text('Account', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        Card(
          elevation: 0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.6)),
          ),
          clipBehavior: Clip.antiAlias,
          child: ListTile(
            leading: Icon(Icons.logout, color: scheme.error),
            title: Text('Log out', style: TextStyle(color: scheme.error)),
            onTap: () => ref.read(authProvider.notifier).logout(),
          ),
        ),
      ],
    );
  }
}

class _HubScaffold extends ConsumerWidget {
  const _HubScaffold({required this.title, required this.entries, this.footer = const []});

  final String title;
  final List<_HubEntry> entries;
  final List<Widget> footer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isClassTeacher = ref.watch(isClassTeacherProvider);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      appBar: AppBar(title: Text(title)),
      body: ResponsiveListView(
        children: [
          // 1 column on narrow phones, 2 on large phones / portrait
          // tablets, 3 on landscape tablets.
          ResponsiveGrid(
            minItemWidth: 300,
            maxColumns: 3,
            children: [
              for (final e in entries) _HubCard(entry: e, showClassTeacherBadge: e.classTeacherOnly && !isClassTeacher),
            ],
          ),
          ...footer,
        ],
      ),
    );
  }
}

class _HubCard extends StatelessWidget {
  const _HubCard({required this.entry, required this.showClassTeacherBadge});

  final _HubEntry entry;
  final bool showClassTeacherBadge;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.6)),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => context.go(entry.path),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: entry.color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(entry.icon, color: entry.color),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 6,
                      runSpacing: 4,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(entry.label, style: const TextStyle(fontWeight: FontWeight.w600)),
                        if (showClassTeacherBadge) const StatusBadge(label: 'Class Teacher'),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      entry.description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: scheme.outline),
                    ),
                  ],
                ),
              ),
              Icon(Icons.chevron_right, color: scheme.outline),
            ],
          ),
        ),
      ),
    );
  }
}
