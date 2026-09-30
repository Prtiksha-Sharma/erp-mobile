import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/responsive.dart';
import 'student_change_password_sheet.dart';

/// One destination on a hub screen — the mobile stand-in for the web's
/// student sidebar entries (studentRoutes.jsx). The web shows every page
/// in a sidebar; on a phone they're grouped behind two hub tabs instead.
class _HubEntry {
  const _HubEntry(this.icon, this.label, this.description, this.path, this.color);

  final IconData icon;
  final String label;
  final String description;
  final String path;
  final Color color;
}

const _academicsEntries = [
  _HubEntry(Icons.event_available_outlined, 'Attendance & Leaves', 'Your attendance and leave requests',
      '/student/academics/attendance', AppColors.success),
  _HubEntry(Icons.menu_book_outlined, 'Homework & Assignments', 'Work from your teachers and due dates',
      '/student/academics/homework', AppColors.amber),
  _HubEntry(Icons.fact_check_outlined, 'My Exams', 'Exam datesheet and results', '/student/academics/exams',
      AppColors.violet),
  _HubEntry(Icons.schedule_outlined, 'My Timetable', 'Weekly period schedule', '/student/academics/timetable',
      AppColors.primary),
];

const _moreEntries = [
  _HubEntry(Icons.person_outline, 'My Profile', 'Personal & contact details', '/student/more/profile',
      AppColors.primary),
  _HubEntry(Icons.description_outlined, 'My Documents', 'Uploaded documents & status', '/student/more/documents',
      AppColors.emerald),
  _HubEntry(Icons.badge_outlined, 'Certificates', 'ID card & school certificates', '/student/more/certificates',
      AppColors.violet),
  _HubEntry(Icons.monitor_heart_outlined, 'Medical Info', 'Health details on file', '/student/more/medical',
      AppColors.rose),
  _HubEntry(Icons.gpp_maybe_outlined, 'Discipline Records', 'Incident records on file', '/student/more/discipline',
      AppColors.amber),
  _HubEntry(Icons.trending_up, 'Promotion History', 'Class promotions across sessions',
      '/student/more/promotion-history', AppColors.teal),
  _HubEntry(Icons.directions_bus_outlined, 'My Transport', 'Route, stop, and bus', '/student/more/transport',
      AppColors.sky),
];

class StudentAcademicsHubScreen extends StatelessWidget {
  const StudentAcademicsHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      appBar: AppBar(title: const Text('Academics')),
      body: ResponsiveListView(children: [_HubGrid(entries: _academicsEntries)]),
    );
  }
}

class StudentMoreHubScreen extends ConsumerWidget {
  const StudentMoreHubScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: scheme.surfaceContainerLowest,
      appBar: AppBar(title: const Text('More')),
      body: ResponsiveListView(
        children: [
          _HubGrid(entries: _moreEntries),
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
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.lock_outline),
                  title: const Text('Change Password'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => showChangePasswordSheet(context),
                ),
                const Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.logout, color: scheme.error),
                  title: Text('Log out', style: TextStyle(color: scheme.error)),
                  onTap: () => ref.read(authProvider.notifier).logout(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// One tappable card per entry; 1 column on narrow phones, 2 on large
/// phones / portrait tablets, 3 on landscape tablets.
class _HubGrid extends StatelessWidget {
  const _HubGrid({required this.entries});

  final List<_HubEntry> entries;

  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      minItemWidth: 300,
      maxColumns: 3,
      children: [for (final e in entries) _HubCard(entry: e)],
    );
  }
}

class _HubCard extends StatelessWidget {
  const _HubCard({required this.entry});

  final _HubEntry entry;

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
                    Text(entry.label, style: const TextStyle(fontWeight: FontWeight.w600)),
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
