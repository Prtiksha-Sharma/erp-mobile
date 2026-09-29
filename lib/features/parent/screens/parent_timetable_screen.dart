import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/timetable_entry.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/children_provider.dart' show activeChildProvider;
import '../providers/timetable_provider.dart';

/// A 7-column grid doesn't fit a phone screen usefully — day selector +
/// vertical period list matches the Attendance screen's own selector+list
/// pattern instead of introducing a new widget shape for one screen.
class ParentTimetableScreen extends ConsumerStatefulWidget {
  const ParentTimetableScreen({super.key});

  @override
  ConsumerState<ParentTimetableScreen> createState() => _ParentTimetableScreenState();
}

class _ParentTimetableScreenState extends ConsumerState<ParentTimetableScreen> {
  // DateTime.weekday (1=Monday...7=Sunday) matches the backend's
  // day_of_week convention exactly — confirmed, no conversion needed.
  int _selectedDay = DateTime.now().weekday;

  @override
  Widget build(BuildContext context) {
    final activeChild = ref.watch(activeChildProvider);

    if (activeChild == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Timetable')),
        body: const Center(child: Text('Select a child from Home first.')),
      );
    }

    final entriesAsync = ref.watch(timetableProvider(activeChild.studentId));

    return Scaffold(
      appBar: AppBar(title: const Text('Timetable')),
      body: entriesAsync.when(
        data: (entries) => _TimetableView(
          entries: entries,
          selectedDay: _selectedDay,
          onDaySelected: (d) => setState(() => _selectedDay = d),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => ErrorView(
          message: describeError(err),
          onRetry: () => ref.invalidate(timetableProvider(activeChild.studentId)),
        ),
      ),
    );
  }
}

class _TimetableView extends StatelessWidget {
  const _TimetableView({
    required this.entries,
    required this.selectedDay,
    required this.onDaySelected,
  });

  final List<TimetableEntry> entries;
  final int selectedDay;
  final ValueChanged<int> onDaySelected;

  @override
  Widget build(BuildContext context) {
    if (entries.isEmpty) {
      return const Center(child: Text('No timetable set for this class yet.'));
    }

    // Only the days that actually have entries — a 5-day-week school
    // shouldn't show empty Sunday/Saturday chips.
    final daysWithEntries = entries.map((e) => e.dayOfWeek).toSet().toList()..sort();
    final effectiveSelectedDay =
        daysWithEntries.contains(selectedDay) ? selectedDay : daysWithEntries.first;

    final dayEntries = entries.where((e) => e.dayOfWeek == effectiveSelectedDay).toList()
      ..sort((a, b) => a.periodNumber.compareTo(b.periodNumber));

    return Column(
      children: [
        SizedBox(
          height: 56,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            itemCount: daysWithEntries.length,
            separatorBuilder: (_, _) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final day = daysWithEntries[index];
              return ChoiceChip(
                label: Text(dayLabels[day] ?? 'Day $day'),
                selected: day == effectiveSelectedDay,
                onSelected: (_) => onDaySelected(day),
              );
            },
          ),
        ),
        const Divider(height: 1),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: dayEntries.length,
            separatorBuilder: (_, _) => const SizedBox(height: 8),
            itemBuilder: (context, index) => _PeriodCard(entry: dayEntries[index]),
          ),
        ),
      ],
    );
  }
}

class _PeriodCard extends StatelessWidget {
  const _PeriodCard({required this.entry});

  final TimetableEntry entry;

  @override
  Widget build(BuildContext context) {
    final isBreak = entry.periodType == PeriodType.breakPeriod;
    final timeRange = '${entry.startTimeOfDay.format(context)} – ${entry.endTimeOfDay.format(context)}';

    return Card(
      margin: EdgeInsets.zero,
      color: isBreak ? Theme.of(context).colorScheme.surfaceContainerHighest : null,
      child: ListTile(
        leading: CircleAvatar(child: Text('${entry.periodNumber}')),
        title: Text(isBreak ? (entry.breakLabel ?? 'Break') : (entry.subject?.subjectName ?? 'Unknown subject')),
        subtitle: Text(
          [
            timeRange,
            if (!isBreak && entry.teacher != null) entry.teacher!.fullName,
            if (entry.room != null && entry.room!.isNotEmpty) 'Room ${entry.room}',
          ].join(' • '),
        ),
      ),
    );
  }
}
