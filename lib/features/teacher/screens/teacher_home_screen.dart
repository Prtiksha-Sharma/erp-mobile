import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/failure.dart';
import '../../../core/models/school_feed.dart';
import '../../../core/models/staff_self_service.dart';
import '../../../core/models/teacher_homework.dart';
import '../../../core/models/timetable_entry.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/teacher_portal_providers.dart';
import 'teacher_page_scaffold.dart';

/// Port of TeacherDashboardPage.jsx — welcome header, three stat tiles
/// (classes today, own attendance ring, pending own leaves), My Classes
/// Today with the live period highlighted, Recent Homework, Notices and
/// Quick Actions. Like the web, every widget reads the same providers as
/// its own detail page — there is no dashboard endpoint.
class TeacherHomeScreen extends ConsumerWidget {
  const TeacherHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(teacherProfileProvider).value;
    final user = ref.watch(authProvider).user;
    final isClassTeacher = ref.watch(isClassTeacherProvider);
    final timetable = ref.watch(teacherTimetableProvider);
    final attendance = ref.watch(teacherMyAttendanceProvider('month'));
    final leaves = ref.watch(teacherMyLeavesProvider).value ?? const <StaffLeave>[];

    final firstName = (profile?.fullName ?? user?.fullName ?? 'Teacher').split(' ').first;
    final todayEntries = _todayEntries(timetable.value ?? const []);
    final pendingLeaves = leaves.where((l) => l.status == 'PENDING').length;
    final subtitle = [
      profile?.institution?.institutionName ?? 'Your School',
      isClassTeacher ? 'Class Teacher' : 'Teacher',
      DateFormat('EEEE, dd MMMM yyyy').format(DateTime.now()),
    ].join(' · ');

    final stats = ResponsiveGrid(
      minItemWidth: 200,
      maxColumns: 3,
      children: [
        TeacherStatTile(
          tint: AppColors.primaryLight,
          leading: const TintedIcon(icon: Icons.menu_book_outlined, color: AppColors.primary, solid: true),
          value: timetable.hasValue ? '${todayEntries.length}' : '—',
          label: 'Classes Today',
        ),
        TeacherStatTile(
          tint: AppColors.successBg,
          leading: AttendanceRateRing(percent: attendance.value?.presentPercent),
          value: '',
          label: 'My attendance · last 30 days',
        ),
        TeacherStatTile(
          tint: AppColors.amberLight,
          leading: const TintedIcon(icon: Icons.event_busy_outlined, color: AppColors.amber, solid: true),
          value: '$pendingLeaves',
          label: 'Pending Leave Requests',
        ),
      ],
    );

    const main = [_ClassesTodayCard(), SizedBox(height: 16), _RecentHomeworkCard()];
    const side = [_NoticesCard(), SizedBox(height: 16), _QuickActionsCard()];

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      appBar: AppBar(
        title: const Text('Vidyaprabandhan Teacher'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Log out',
            onPressed: () => ref.read(authProvider.notifier).logout(),
          ),
        ],
      ),
      body: ResponsiveListView(
        onRefresh: () async {
          ref
            ..invalidate(teacherProfileProvider)
            ..invalidate(teacherTimetableProvider)
            ..invalidate(teacherMyAttendanceProvider('month'))
            ..invalidate(teacherMyLeavesProvider)
            ..invalidate(teacherDashboardWorkProvider)
            ..invalidate(teacherNoticesProvider);
          try {
            await ref.read(teacherTimetableProvider.future);
          } catch (_) {}
        },
        children: [
          Text('Welcome back, $firstName 👋', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 4),
          Text(subtitle, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.textMuted)),
          const SizedBox(height: 16),
          stats,
          const SizedBox(height: 16),
          if (context.isExpandedWidth)
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: main)),
                SizedBox(width: 16),
                SizedBox(width: 300, child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: side)),
              ],
            )
          else
            const Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [...main, SizedBox(height: 16), ...side]),
        ],
      ),
    );
  }
}

/// Today's non-break periods, in period order (web: todayEntries memo).
List<TimetableEntry> _todayEntries(List<TimetableEntry> timetable) {
  final dow = DateTime.now().weekday; // 1 = Mon … 7 = Sun, same as day_of_week
  return timetable.where((e) => e.dayOfWeek == dow && e.periodType != PeriodType.breakPeriod).toList()
    ..sort((a, b) => a.periodNumber.compareTo(b.periodNumber));
}

/// `HH:mm` of a @db.Time value — only its UTC hour/minute are real (web:
/// `t.slice(11, 16)`).
String _hhmm(DateTime t) {
  final u = t.toUtc();
  return '${u.hour.toString().padLeft(2, '0')}:${u.minute.toString().padLeft(2, '0')}';
}

String _nowHhmm() {
  final n = DateTime.now();
  return '${n.hour.toString().padLeft(2, '0')}:${n.minute.toString().padLeft(2, '0')}';
}

int _minutesBetween(String from, String to) {
  int mins(String s) => int.parse(s.substring(0, 2)) * 60 + int.parse(s.substring(3, 5));
  return mins(to) - mins(from);
}

/// Loading / inline error with Retry / data, for a dashboard card body.
class _CardAsync<T> extends StatelessWidget {
  const _CardAsync({required this.value, required this.onRetry, required this.data});

  final AsyncValue<T> value;
  final VoidCallback onRetry;
  final Widget Function(T data) data;

  @override
  Widget build(BuildContext context) {
    return value.when(
      skipLoadingOnRefresh: true,
      data: data,
      loading: () => const LoadingView(label: 'Loading…', compact: true),
      error: (err, _) => Column(
        children: [
          Text(describeError(err), textAlign: TextAlign.center),
          TextButton(onPressed: onRetry, child: const Text('Retry')),
        ],
      ),
    );
  }
}

class _LinkButton extends StatelessWidget {
  const _LinkButton(this.label, this.path);

  final String label;
  final String path;

  @override
  Widget build(BuildContext context) => TextButton(
        style: TextButton.styleFrom(visualDensity: VisualDensity.compact, padding: const EdgeInsets.symmetric(horizontal: 8)),
        onPressed: () => context.go(path),
        child: Text(label, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 12)),
      );
}

class _ClassesTodayCard extends ConsumerWidget {
  const _ClassesTodayCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(teacherTimetableProvider);
    return SectionCard(
      title: 'My Classes Today',
      icon: Icons.calendar_month_outlined,
      trailing: const Flexible(child: _LinkButton('View full timetable →', '/teacher/academics/timetable')),
      padding: const EdgeInsets.all(8),
      child: _CardAsync(
        value: value,
        onRetry: () => ref.invalidate(teacherTimetableProvider),
        data: (all) {
          final entries = _todayEntries(all);
          if (entries.isEmpty) {
            return const EmptyState(
              icon: Icons.event_busy_outlined,
              title: 'No classes scheduled today',
              message: 'Enjoy your day off from teaching!',
            );
          }
          final now = _nowHhmm();
          return Column(children: [for (final e in entries) _TodayPeriodRow(entry: e, now: now)]);
        },
      ),
    );
  }
}

class _TodayPeriodRow extends StatelessWidget {
  const _TodayPeriodRow({required this.entry, required this.now});

  final TimetableEntry entry;
  final String now;

  @override
  Widget build(BuildContext context) {
    final start = _hhmm(entry.startTime);
    final end = _hhmm(entry.endTime);
    final isLive = now.compareTo(start) >= 0 && now.compareTo(end) <= 0;
    final isPast = now.compareTo(end) > 0;
    final subjectLine = [
      entry.subject?.subjectName ?? '—',
      [entry.classRef?.className, entry.sectionRef?.sectionName].whereType<String>().join(' '),
    ].where((s) => s.isNotEmpty).join(' · ');

    final muted = isLive ? Colors.white70 : AppColors.textMuted;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: isLive ? AppColors.primary : null,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 52,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('P${entry.periodNumber}', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: muted)),
                Text(start, style: TextStyle(fontSize: 11, color: muted)),
              ],
            ),
          ),
          Expanded(
            child: Text(
              subjectLine,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                decoration: isPast ? TextDecoration.lineThrough : null,
                color: isPast ? AppColors.textMuted : (isLive ? Colors.white : AppColors.textPrimary),
              ),
            ),
          ),
          const SizedBox(width: 8),
          if (isLive) ...[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(color: Colors.white24, borderRadius: BorderRadius.circular(999)),
              child: const Text('LIVE', style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w700)),
            ),
            const SizedBox(width: 8),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: AppColors.primary,
                visualDensity: VisualDensity.compact,
                padding: const EdgeInsets.symmetric(horizontal: 12),
              ),
              onPressed: () => context.go('/teacher/classroom/attendance'),
              child: const Text('Mark'),
            ),
          ] else if (isPast)
            const Icon(Icons.check, size: 18, color: AppColors.textMuted)
          else
            Text('${_minutesBetween(now, start)} min', style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
        ],
      ),
    );
  }
}

/// web homeworkBadge(): all submitted → Submitted; else by due date.
({String label, BadgeVariant variant}) _homeworkBadge(TeacherHomework item) {
  final total = item.submissions.length;
  final submitted = item.submissions.where((s) => s.status == 'SUBMITTED' || s.status == 'LATE').length;
  if (total > 0 && submitted == total) return (label: 'Submitted', variant: BadgeVariant.success);
  final dueDate = item.dueDate;
  if (dueDate == null) return (label: '—', variant: BadgeVariant.neutral);
  final due = calendarDay(dueDate);
  final today = DateTime.now();
  final todayDay = DateTime(today.year, today.month, today.day);
  if (due.isBefore(todayDay)) return (label: 'Overdue', variant: BadgeVariant.danger);
  if (due == todayDay) return (label: 'Due today', variant: BadgeVariant.warning);
  if (due == todayDay.add(const Duration(days: 1))) return (label: 'Due tomorrow', variant: BadgeVariant.warning);
  return (label: formatDate(dueDate), variant: BadgeVariant.neutral);
}

class _RecentHomeworkCard extends ConsumerWidget {
  const _RecentHomeworkCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(teacherDashboardWorkProvider);
    return SectionCard(
      title: 'Recent Homework',
      icon: Icons.bookmark_border,
      trailing: const Flexible(child: _LinkButton('View all →', '/teacher/classroom/homework')),
      padding: const EdgeInsets.all(8),
      child: _CardAsync(
        value: value,
        onRetry: () => ref.invalidate(teacherDashboardWorkProvider),
        data: (all) {
          final recent = all.where((h) => h.dueDate != null).toList()
            ..sort((a, b) => a.dueDate!.compareTo(b.dueDate!));
          if (recent.isEmpty) {
            return const EmptyState(
              icon: Icons.bookmark_border,
              title: 'No homework assigned yet',
              message: 'Homework you assign will show up here.',
            );
          }
          return Column(
            children: [
              for (final (i, item) in recent.take(3).indexed) _RecentHomeworkRow(item: item, highlight: i == 0),
            ],
          );
        },
      ),
    );
  }
}

class _RecentHomeworkRow extends StatelessWidget {
  const _RecentHomeworkRow({required this.item, required this.highlight});

  final TeacherHomework item;

  /// The soonest-due item gets a light highlight, like the web.
  final bool highlight;

  @override
  Widget build(BuildContext context) {
    final badge = _homeworkBadge(item);
    final meta = [
      [item.classRef?.className, item.sectionRef?.sectionName].whereType<String>().join(' '),
      item.subject?.subjectName,
    ].whereType<String>().where((s) => s.isNotEmpty).join(' · ');
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: highlight ? AppColors.primaryLight : null,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const TintedIcon(icon: Icons.description_outlined, color: AppColors.rose, size: 36),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.title, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(meta, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
              ],
            ),
          ),
          const SizedBox(width: 8),
          StatusBadge(label: badge.label, variant: badge.variant),
        ],
      ),
    );
  }
}

String _noticeWhen(DateTime? date) {
  if (date == null) return '—';
  final day = calendarDay(date);
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  if (day == today) return 'Today';
  if (day == today.subtract(const Duration(days: 1))) return 'Yesterday';
  return formatDate(date);
}

class _NoticesCard extends ConsumerWidget {
  const _NoticesCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(teacherNoticesProvider);
    return SectionCard(
      title: 'Notices',
      icon: Icons.campaign_outlined,
      trailing: const Flexible(child: _LinkButton('View all →', '/teacher/more/notices')),
      child: _CardAsync<List<SchoolNotice>>(
        value: value,
        onRetry: () => ref.invalidate(teacherNoticesProvider),
        data: (notices) {
          if (notices.isEmpty) {
            return const EmptyState(icon: Icons.campaign_outlined, title: 'No notices yet', message: 'School notices will appear here.');
          }
          return Column(
            children: [
              for (final (i, n) in notices.take(3).indexed) ...[
                if (i > 0) const Divider(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 6,
                      height: 6,
                      margin: const EdgeInsets.only(top: 7, right: 10),
                      decoration: const BoxDecoration(color: AppColors.violet, shape: BoxShape.circle),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(n.title, style: const TextStyle(fontWeight: FontWeight.w600)),
                          const SizedBox(height: 2),
                          Text(_noticeWhen(n.noticeDate), style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}

class _QuickActionsCard extends StatelessWidget {
  const _QuickActionsCard();

  @override
  Widget build(BuildContext context) {
    // Same three actions and accents as the web's QUICK_ACTIONS.
    const actions = [
      (label: 'Take attendance', icon: Icons.fact_check_outlined, path: '/teacher/classroom/attendance',
          bg: AppColors.textPrimary, fg: Colors.white),
      (label: 'Assign homework', icon: Icons.bookmark_border, path: '/teacher/classroom/homework',
          bg: AppColors.roseLight, fg: AppColors.rose),
      (label: 'Apply for leave', icon: Icons.event_busy_outlined, path: '/teacher/more/my-leaves',
          bg: AppColors.amberLight, fg: AppColors.amber),
    ];
    return SectionCard(
      title: 'Quick Actions',
      icon: Icons.bolt_outlined,
      child: Column(
        children: [
          for (final (i, a) in actions.indexed) ...[
            if (i > 0) const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                style: FilledButton.styleFrom(
                  backgroundColor: a.bg,
                  foregroundColor: a.fg,
                  alignment: Alignment.centerLeft,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () => context.go(a.path),
                icon: Icon(a.icon, size: 18),
                label: Text(a.label),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
