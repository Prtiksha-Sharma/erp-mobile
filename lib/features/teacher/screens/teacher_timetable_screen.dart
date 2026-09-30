import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/timetable_entry.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../providers/teacher_portal_providers.dart';
import 'teacher_page_scaffold.dart';

/// Web MyTimetableGrid's DEFAULT_WORKING_DAYS (Mon–Sat); Sunday shows as
/// "Closed" unless a period is actually scheduled on it.
const _workingDays = [1, 2, 3, 4, 5, 6];

/// Port of MyTimetablePage.jsx + MyTimetableGrid.jsx (read-only; Admin owns
/// period assignment). A teacher's timetable spans every class they teach,
/// so each period shows Subject + Class/Section instead of a teacher name.
/// The web's period × day table only fits a landscape tablet, so:
///   * expanded width (≥ 840dp): every day side by side, like the web.
///   * phones / portrait tablets: one tab per day, opening on today.
class TeacherTimetableScreen extends ConsumerWidget {
  const TeacherTimetableScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(teacherTimetableProvider);
    Future<void> refresh() => ref.refresh(teacherTimetableProvider.future);

    return value.maybeWhen(
      skipLoadingOnRefresh: true,
      data: (entries) {
        final days = _days(entries);
        if (entries.isEmpty || context.isExpandedWidth) {
          return TeacherPageScaffold(
            title: 'My Timetable',
            body: ResponsiveListView(
              onRefresh: refresh,
              children: [
                if (entries.isEmpty)
                  const EmptyCard(
                    icon: Icons.schedule_outlined,
                    title: 'No timetable entries yet',
                    message: 'Periods assigned to you will appear here once Admin schedules your timetable.',
                  )
                else
                  _WeekColumns(days: days),
              ],
            ),
          );
        }
        // Phones get a tab per open day; closed days (Sunday by default)
        // only appear as a column on the wide layout.
        final openDays = days.where((d) => !d.closed).toList();
        final today = DateTime.now().weekday; // 1 = Mon … 7 = Sun, same as day_of_week
        final initial = openDays.indexWhere((d) => d.day == today);
        return DefaultTabController(
          length: openDays.length,
          initialIndex: initial < 0 ? 0 : initial,
          child: TeacherPageScaffold(
            title: 'My Timetable',
            bottom: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              tabs: [for (final d in openDays) Tab(text: dayLabels[d.day] ?? 'Day ${d.day}')],
            ),
            body: TabBarView(
              children: [
                for (final d in openDays) ResponsiveListView(onRefresh: refresh, children: [_DayColumn(day: d)]),
              ],
            ),
          ),
        );
      },
      orElse: () => TeacherPageScaffold(
        title: 'My Timetable',
        body: AsyncValueView(
          value: value,
          loadingLabel: 'Loading timetable…',
          onRetry: () => ref.invalidate(teacherTimetableProvider),
          data: (_) => const SizedBox.shrink(),
        ),
      ),
    );
  }
}

class _Day {
  _Day(this.day, this.entries, {required this.closed});

  final int day;
  final List<TimetableEntry> entries;

  /// Non-working day with nothing scheduled (web: "Closed").
  final bool closed;
}

/// All seven days (the web grid's ALL_DAYS); a non-working day with
/// nothing scheduled is marked closed.
List<_Day> _days(List<TimetableEntry> entries) {
  final byDay = <int, List<TimetableEntry>>{};
  for (final e in entries) {
    byDay.putIfAbsent(e.dayOfWeek, () => []).add(e);
  }
  final keys = {1, 2, 3, 4, 5, 6, 7, ...byDay.keys}.toList()..sort();
  return [
    for (final k in keys)
      _Day(
        k,
        (byDay[k] ?? [])..sort((a, b) => a.periodNumber.compareTo(b.periodNumber)),
        closed: !_workingDays.contains(k) && (byDay[k]?.isEmpty ?? true),
      ),
  ];
}

class _WeekColumns extends StatelessWidget {
  const _WeekColumns({required this.days});

  final List<_Day> days;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const minCol = 130.0;
        const gap = 10.0;
        final fits = days.length * minCol + (days.length - 1) * gap <= constraints.maxWidth;
        final colWidth = fits ? (constraints.maxWidth - (days.length - 1) * gap) / days.length : 170.0;
        final row = Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final (i, d) in days.indexed) ...[
              if (i > 0) const SizedBox(width: gap),
              SizedBox(
                width: colWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      dayLabels[d.day] ?? 'Day ${d.day}',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: d.closed ? AppColors.textMuted : AppColors.primary,
                      ),
                    ),
                    const SizedBox(height: 10),
                    _DayColumn(day: d),
                  ],
                ),
              ),
            ],
          ],
        );
        // Only reachable on landscape tablets (≥ 840dp), never on phones.
        return fits ? row : SingleChildScrollView(scrollDirection: Axis.horizontal, child: row);
      },
    );
  }
}

class _DayColumn extends StatelessWidget {
  const _DayColumn({required this.day});

  final _Day day;

  @override
  Widget build(BuildContext context) {
    if (day.closed) {
      return const _Placeholder(icon: Icons.bedtime_outlined, text: 'Closed');
    }
    if (day.entries.isEmpty) {
      return const _Placeholder(icon: Icons.event_available_outlined, text: 'No periods');
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final e in day.entries)
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: e.periodType == PeriodType.breakPeriod ? _BreakCard(entry: e) : _PeriodCard(entry: e),
          ),
      ],
    );
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(color: AppColors.pageBg, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 14, color: AppColors.textMuted),
          const SizedBox(width: 6),
          Text(text, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
        ],
      ),
    );
  }
}

class _PeriodBadge extends StatelessWidget {
  const _PeriodBadge(this.number);

  final int number;

  @override
  Widget build(BuildContext context) => CircleAvatar(
        radius: 12,
        backgroundColor: AppColors.primary,
        child: Text('$number', style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w700)),
      );
}

class _PeriodCard extends StatelessWidget {
  const _PeriodCard({required this.entry});

  final TimetableEntry entry;

  @override
  Widget build(BuildContext context) {
    final classLine = [entry.classRef?.className, entry.sectionRef?.sectionName].whereType<String>().join(' ');
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: AppColors.primaryLight, borderRadius: BorderRadius.circular(12)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _PeriodBadge(entry.periodNumber),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  entry.subject?.subjectName ?? '—',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.w700),
                ),
                if (classLine.isNotEmpty)
                  Text(classLine, style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                Text(
                  formatClockRange(entry.startTime, entry.endTime),
                  style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                ),
                if (entry.room != null) Text('Rm ${entry.room}', style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BreakCard extends StatelessWidget {
  const _BreakCard({required this.entry});

  final TimetableEntry entry;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: AppColors.warningBg, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          const Icon(Icons.coffee_outlined, size: 18, color: AppColors.warning),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  (entry.breakLabel?.isNotEmpty ?? false) ? entry.breakLabel! : 'Break',
                  style: const TextStyle(color: AppColors.warning, fontWeight: FontWeight.w700),
                ),
                Text(
                  formatClockRange(entry.startTime, entry.endTime),
                  style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
