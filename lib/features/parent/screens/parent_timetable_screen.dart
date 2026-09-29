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
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
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
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.calendar_month_outlined, size: 48, color: Theme.of(context).colorScheme.outline),
            const SizedBox(height: 12),
            const Text('No timetable set for this class yet.'),
          ],
        ),
      );
    }

    final daysWithEntries = entries.map((e) => e.dayOfWeek).toSet().toList()..sort();
    final effectiveSelectedDay =
        daysWithEntries.contains(selectedDay) ? selectedDay : daysWithEntries.first;

    final dayEntries = entries.where((e) => e.dayOfWeek == effectiveSelectedDay).toList()
      ..sort((a, b) => a.periodNumber.compareTo(b.periodNumber));

    return Column(
      children: [
        SizedBox(
          height: 60,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            itemCount: daysWithEntries.length,
            separatorBuilder: (_, _) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final day = daysWithEntries[index];
              final isSelected = day == effectiveSelectedDay;
              final scheme = Theme.of(context).colorScheme;
              return ChoiceChip(
                label: Text(dayLabels[day] ?? 'Day $day'),
                selected: isSelected,
                showCheckmark: false,
                selectedColor: scheme.primary,
                labelStyle: TextStyle(
                  color: isSelected ? scheme.onPrimary : scheme.onSurface,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
                onSelected: (_) => onDaySelected(day),
              );
            },
          ),
        ),
        Expanded(
          child: dayEntries.isEmpty
              ? const Center(child: Text('No periods on this day.'))
              : ListView.separated(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
                  itemCount: dayEntries.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 10),
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
    final scheme = Theme.of(context).colorScheme;
    final accent = isBreak ? scheme.outline : scheme.primary;
    final timeRange = '${entry.startTimeOfDay.format(context)} – ${entry.endTimeOfDay.format(context)}';

    return Container(
      decoration: BoxDecoration(
        color: isBreak ? scheme.surfaceContainerHighest : scheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: accent.withValues(alpha: 0.2)),
      ),
      padding: const EdgeInsets.all(14),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: accent.withValues(alpha: 0.15), shape: BoxShape.circle),
            child: isBreak
                ? Icon(Icons.free_breakfast_outlined, color: accent, size: 20)
                : Text('${entry.periodNumber}', style: TextStyle(color: accent, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isBreak ? (entry.breakLabel ?? 'Break') : (entry.subject?.subjectName ?? 'Unknown subject'),
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(height: 4),
                Text(timeRange, style: Theme.of(context).textTheme.bodySmall),
                if (!isBreak && entry.teacher != null) ...[
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Icon(Icons.person_outline, size: 13, color: scheme.outline),
                      const SizedBox(width: 4),
                      Text(entry.teacher!.fullName, style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                ],
                if (entry.room != null && entry.room!.isNotEmpty) ...[
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Icon(Icons.room_outlined, size: 13, color: scheme.outline),
                      const SizedBox(width: 4),
                      Text('Room ${entry.room}', style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
