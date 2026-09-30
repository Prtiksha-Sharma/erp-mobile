import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/failure.dart';
import '../../../core/models/attendance_summary.dart';
import '../../../core/models/child.dart';
import '../../../core/models/homework_submission.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/attendance_provider.dart';
import '../providers/children_provider.dart';
import '../providers/homework_provider.dart';

/// No dedicated /parent/dashboard endpoint exists on the backend (confirmed
/// — see the Parent integration plan) — this composes its stat tiles from
/// the same Attendance/Homework providers the Academics screens already
/// use, same pattern the web app's own dashboards follow.
class ParentHomeScreen extends ConsumerWidget {
  const ParentHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final childrenAsync = ref.watch(childrenListProvider);
    final activeChild = ref.watch(activeChildProvider);

    ref.listen(childrenListProvider, (previous, next) {
      next.whenData((children) {
        if (ref.read(activeChildProvider) == null && children.isNotEmpty) {
          ref.read(activeChildProvider.notifier).select(children.first);
        }
      });
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vidyaprabandhan Parent'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Log out',
            onPressed: () => ref.read(authProvider.notifier).logout(),
          ),
        ],
      ),
      body: childrenAsync.when(
        data: (children) => _HomeBody(children: children, activeChild: activeChild),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => ErrorView(
          message: describeError(err),
          onRetry: () => ref.invalidate(childrenListProvider),
        ),
      ),
    );
  }
}

String _greeting() {
  final hour = DateTime.now().hour;
  if (hour < 12) return 'Good morning';
  if (hour < 17) return 'Good afternoon';
  return 'Good evening';
}

String _initials(Child child) {
  final first = (child.firstName?.isNotEmpty ?? false) ? child.firstName![0] : '';
  final last = (child.lastName?.isNotEmpty ?? false) ? child.lastName![0] : '';
  final combined = '$first$last'.toUpperCase();
  return combined.isEmpty ? '?' : combined;
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({required this.children, required this.activeChild});

  final List<Child> children;
  final Child? activeChild;

  @override
  Widget build(BuildContext context) {
    if (children.isEmpty) {
      return const Center(child: Text('No children linked to this account yet.'));
    }
    if (activeChild == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _ChildHeaderCard(child: activeChild!),
        if (children.length > 1) ...[
          const SizedBox(height: 12),
          _ChildSwitcher(children: children, activeChild: activeChild),
        ],
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(child: _AttendanceStatCard(studentId: activeChild!.studentId)),
            const SizedBox(width: 12),
            Expanded(child: _HomeworkStatCard(studentId: activeChild!.studentId)),
          ],
        ),
        const SizedBox(height: 24),
        Text('Quick Access', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 12),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.3,
          children: [
            _QuickActionCard(
              icon: Icons.event_available_outlined,
              label: 'Attendance',
              color: const Color(0xFF16A34A),
              onTap: () => context.go('/parent/academics/attendance'),
            ),
            _QuickActionCard(
              icon: Icons.menu_book_outlined,
              label: 'Homework',
              color: const Color(0xFFD97706),
              onTap: () => context.go('/parent/academics/homework'),
            ),
            _QuickActionCard(
              icon: Icons.schedule_outlined,
              label: 'Timetable',
              color: const Color(0xFF2563EB),
              onTap: () => context.go('/parent/academics/timetable'),
            ),
            _QuickActionCard(
              icon: Icons.payments_outlined,
              label: 'Fees',
              color: const Color(0xFF7C3AED),
              onTap: () => context.go('/parent/fees'),
            ),
          ],
        ),
      ],
    );
  }
}

class _ChildHeaderCard extends StatelessWidget {
  const _ChildHeaderCard({required this.child});

  final Child child;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: scheme.primaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: scheme.primary,
            child: Text(
              _initials(child),
              style: TextStyle(
                color: scheme.onPrimary,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _greeting(),
                  style: TextStyle(color: scheme.onPrimaryContainer.withValues(alpha: 0.7)),
                ),
                const SizedBox(height: 2),
                Text(
                  child.displayName,
                  style: TextStyle(
                    color: scheme.onPrimaryContainer,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: [
                    if (child.className != null)
                      _InfoChip(
                        label: '${child.className}'
                            '${child.sectionName != null ? ' - ${child.sectionName}' : ''}',
                        scheme: scheme,
                      ),
                    if (child.admissionNo != null)
                      _InfoChip(label: child.admissionNo!, scheme: scheme),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  const _InfoChip({required this.label, required this.scheme});

  final String label;
  final ColorScheme scheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: scheme.primary.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: TextStyle(color: scheme.onPrimaryContainer, fontSize: 12, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class _ChildSwitcher extends ConsumerWidget {
  const _ChildSwitcher({required this.children, required this.activeChild});

  final List<Child> children;
  final Child? activeChild;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: children.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final child = children[index];
          final isActive = child.studentId == activeChild?.studentId;
          return ChoiceChip(
            avatar: CircleAvatar(
              radius: 10,
              child: Text(_initials(child), style: const TextStyle(fontSize: 9)),
            ),
            label: Text(child.displayName),
            selected: isActive,
            onSelected: (_) => ref.read(activeChildProvider.notifier).select(child),
          );
        },
      ),
    );
  }
}

/// This month's attendance %, computed from the same provider the
/// Attendance screen uses — a second call, not a new endpoint.
class _AttendanceStatCard extends ConsumerWidget {
  const _AttendanceStatCard({required this.studentId});

  final String studentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summaryAsync = ref.watch(attendanceProvider((studentId: studentId, period: 'month')));

    return summaryAsync.when(
      data: (summary) {
        final counts = summary.countsByStatus;
        final present = counts.entries
            .where((e) => e.key.name == 'present')
            .fold(0, (sum, e) => sum + e.value);
        final pct = summary.total == 0 ? 0 : ((present / summary.total) * 100).round();
        return _StatCard(
          icon: Icons.event_available_outlined,
          color: const Color(0xFF16A34A),
          value: '$pct%',
          label: 'Attendance (month)',
        );
      },
      loading: () => const _StatCardLoading(),
      error: (err, _) => const _StatCardError(label: 'Attendance'),
    );
  }
}

/// Pending + missing count across both Homework and Assignments — two
/// calls, same providers the Homework screen already uses.
class _HomeworkStatCard extends ConsumerWidget {
  const _HomeworkStatCard({required this.studentId});

  final String studentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeworkAsync = ref.watch(homeworkProvider(studentId));
    final assignmentsAsync = ref.watch(assignmentsProvider(studentId));

    if (homeworkAsync.isLoading || assignmentsAsync.isLoading) {
      return const _StatCardLoading();
    }
    if (homeworkAsync.hasError || assignmentsAsync.hasError) {
      return const _StatCardError(label: 'Homework');
    }

    bool isOutstanding(HomeworkSubmission s) =>
        s.effectiveStatus == HomeworkStatus.pending || s.effectiveStatus == HomeworkStatus.missing;

    final allItems = <HomeworkSubmission>[
      ...homeworkAsync.value ?? <HomeworkSubmission>[],
      ...assignmentsAsync.value ?? <HomeworkSubmission>[],
    ];
    final pending = allItems.where(isOutstanding).length;

    return _StatCard(
      icon: Icons.menu_book_outlined,
      color: const Color(0xFFD97706),
      value: '$pending',
      label: 'Pending homework',
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({required this.icon, required this.color, required this.value, required this.label});

  final IconData icon;
  final Color color;
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: color.withValues(alpha: 0.1),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: color, size: 22),
            const SizedBox(height: 10),
            Text(value, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: color)),
            const SizedBox(height: 2),
            Text(label, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}

class _StatCardLoading extends StatelessWidget {
  const _StatCardLoading();

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: SizedBox(
          height: 66,
          child: Center(child: SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2))),
        ),
      ),
    );
  }
}

class _StatCardError extends StatelessWidget {
  const _StatCardError({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.error_outline, color: Theme.of(context).colorScheme.error, size: 22),
            const SizedBox(height: 10),
            Text('—', style: Theme.of(context).textTheme.titleLarge),
            Text(label, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}

class _QuickActionCard extends StatelessWidget {
  const _QuickActionCard({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: color.withValues(alpha: 0.1),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: color, size: 28),
              const SizedBox(height: 8),
              Text(label, style: TextStyle(color: color, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
    );
  }
}
