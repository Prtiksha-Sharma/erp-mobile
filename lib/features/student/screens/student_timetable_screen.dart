import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/timetable_entry.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../providers/student_portal_providers.dart';
import 'student_page_scaffold.dart';

/// Port of MyTimetablePage.jsx. The web lays every day out as a column;
/// that only fits a landscape tablet, so:
///   * expanded width (≥ 840dp): all days side by side, like the web.
///   * phones / portrait tablets: one tab per day, opening on today.
/// Card colors cycle by (day index + period index) through the web's
/// pastel palette, and BREAK periods get the web's amber "lunch" card.
class StudentTimetableScreen extends ConsumerWidget {
  const StudentTimetableScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(myTimetableProvider);
    return value.maybeWhen(
      data: (entries) {
        final days = _groupByDay(entries);
        if (days.isEmpty || context.isExpandedWidth) {
          return StudentPageScaffold(
            title: 'My Timetable',
            body: ResponsiveListView(
              onRefresh: () => ref.refresh(myTimetableProvider.future),
              children: [
                const PageIntro("Your class's weekly period schedule for the current session."),
                if (days.isEmpty)
                  const SectionCard(
                    child: EmptyState(
                      icon: Icons.event_note_outlined,
                      title: 'No timetable published yet',
                      message: "Your class's period schedule will appear here once your School Admin sets it up.",
                    ),
                  )
                else
                  _WeekColumns(days: days),
              ],
            ),
          );
        }
        final today = DateTime.now().weekday; // 1 = Mon … 7 = Sun, same as day_of_week
        final initial = days.indexWhere((d) => d.day == today);
        return DefaultTabController(
          length: days.length,
          initialIndex: initial < 0 ? 0 : initial,
          child: StudentPageScaffold(
            title: 'My Timetable',
            bottom: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              tabs: [for (final d in days) Tab(text: dayLabels[d.day] ?? 'Day ${d.day}')],
            ),
            body: TabBarView(
              children: [
                for (final (dayIndex, d) in days.indexed)
                  ResponsiveListView(
                    onRefresh: () => ref.refresh(myTimetableProvider.future),
                    children: [_DayColumn(day: d, dayIndex: dayIndex)],
                  ),
              ],
            ),
          ),
        );
      },
      orElse: () => StudentPageScaffold(
        title: 'My Timetable',
        body: AsyncValueView(
          value: value,
          loadingLabel: 'Loading your timetable…',
          onRetry: () => ref.invalidate(myTimetableProvider),
          data: (_) => const SizedBox.shrink(),
        ),
      ),
    );
  }
}

class _Day {
  _Day(this.day, this.entries);

  final int day;
  final List<TimetableEntry> entries;
}

List<_Day> _groupByDay(List<TimetableEntry> entries) {
  final byDay = <int, List<TimetableEntry>>{};
  for (final e in entries) {
    byDay.putIfAbsent(e.dayOfWeek, () => []).add(e);
  }
  final keys = byDay.keys.toList()..sort();
  return [
    for (final k in keys) _Day(k, byDay[k]!..sort((a, b) => a.periodNumber.compareTo(b.periodNumber))),
  ];
}

class _WeekColumns extends StatelessWidget {
  const _WeekColumns({required this.days});

  final List<_Day> days;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const minCol = 200.0;
        const gap = 12.0;
        final fits = days.length * minCol + (days.length - 1) * gap <= constraints.maxWidth;
        final colWidth = fits ? (constraints.maxWidth - (days.length - 1) * gap) / days.length : 220.0;
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
                    Text(dayLabels[d.day] ?? 'Day ${d.day}', style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 10),
                    _DayColumn(day: d, dayIndex: i),
                  ],
                ),
              ),
            ],
          ],
        );
        return fits ? row : SingleChildScrollView(scrollDirection: Axis.horizontal, child: row);
      },
    );
  }
}

class _DayColumn extends StatelessWidget {
  const _DayColumn({required this.day, required this.dayIndex});

  final _Day day;
  final int dayIndex;

  @override
  Widget build(BuildContext context) {
    var periodIndex = 0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final e in day.entries)
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: e.periodType == PeriodType.breakPeriod
                ? _BreakCard(entry: e)
                : _PeriodCard(entry: e, palette: _palette[(dayIndex + periodIndex++) % _palette.length]),
          ),
      ],
    );
  }
}

/// Tailwind 50 / 100 / 600 steps of the web's CARD_PALETTE.
typedef _Swatch = ({Color card, Color avatarBg, Color avatarText});

const List<_Swatch> _palette = [
  (card: Color(0xFFFFF1F2), avatarBg: Color(0xFFFFE4E6), avatarText: Color(0xFFE11D48)), // rose
  (card: Color(0xFFF0F9FF), avatarBg: Color(0xFFE0F2FE), avatarText: Color(0xFF0284C7)), // sky
  (card: Color(0xFFECFDF5), avatarBg: Color(0xFFD1FAE5), avatarText: Color(0xFF059669)), // emerald
  (card: Color(0xFFFFFBEB), avatarBg: Color(0xFFFEF3C7), avatarText: Color(0xFFD97706)), // amber
  (card: Color(0xFFEEF2FF), avatarBg: Color(0xFFE0E7FF), avatarText: Color(0xFF4F46E5)), // indigo
  (card: Color(0xFFF0FDFA), avatarBg: Color(0xFFCCFBF1), avatarText: Color(0xFF0D9488)), // teal
  (card: Color(0xFFFDF4FF), avatarBg: Color(0xFFFAE8FF), avatarText: Color(0xFFC026D3)), // fuchsia
  (card: Color(0xFFFFF7ED), avatarBg: Color(0xFFFFEDD5), avatarText: Color(0xFFEA580C)), // orange
];

class _PeriodCard extends StatelessWidget {
  const _PeriodCard({required this.entry, required this.palette});

  final TimetableEntry entry;
  final _Swatch palette;

  @override
  Widget build(BuildContext context) {
    const textPrimary = Color(0xFF1E293B);
    const textMuted = Color(0xFF64748B);
    final teacher = entry.teacher?.fullName;
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: palette.card, borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.schedule, size: 14, color: textMuted),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  formatClockRange(entry.startTime, entry.endTime),
                  style: const TextStyle(color: textMuted, fontSize: 12),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text.rich(
            TextSpan(
              style: const TextStyle(color: textPrimary),
              children: [
                const TextSpan(text: 'Subject : '),
                TextSpan(
                  text: entry.subject?.subjectName ?? '—',
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          if (entry.room != null) ...[
            const SizedBox(height: 2),
            Text('Room ${entry.room}', style: const TextStyle(color: textMuted, fontSize: 12)),
          ],
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: palette.avatarBg,
                  child: Text(
                    initialsOf(teacher),
                    style: TextStyle(color: palette.avatarText, fontSize: 11, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    teacher ?? '—',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Color(0xFF475569)),
                  ),
                ),
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
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFFEF3C7), // amber-100
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFFCD34D), width: 2), // amber-300
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 18,
            backgroundColor: Color(0xFFFBBF24), // amber-400
            child: Icon(Icons.restaurant, color: Colors.white, size: 18),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  (entry.breakLabel?.isNotEmpty ?? false) ? entry.breakLabel! : 'Lunch Break',
                  style: const TextStyle(color: Color(0xFF92400E), fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 2),
                Text(
                  formatClockRange(entry.startTime, entry.endTime),
                  style: const TextStyle(color: Color(0xFFB45309), fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
