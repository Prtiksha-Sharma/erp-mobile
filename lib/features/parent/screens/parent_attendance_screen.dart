import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/attendance_record.dart';
import '../../../core/models/attendance_summary.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/attendance_provider.dart';
import '../providers/children_provider.dart' show activeChildProvider;
import 'parent_page_scaffold.dart';

class ParentAttendanceScreen extends ConsumerStatefulWidget {
  const ParentAttendanceScreen({super.key});

  @override
  ConsumerState<ParentAttendanceScreen> createState() => _ParentAttendanceScreenState();
}

class _ParentAttendanceScreenState extends ConsumerState<ParentAttendanceScreen> {
  String _period = 'month'; // matches the backend's own default

  @override
  Widget build(BuildContext context) {
    final activeChild = ref.watch(activeChildProvider);

    if (activeChild == null) {
      return const ParentPageScaffold(
        title: 'Attendance',
        body: Center(child: Text('Select a child from Home first.')),
      );
    }

    final params = (studentId: activeChild.studentId, period: _period);
    final summaryAsync = ref.watch(attendanceProvider(params));

    return ParentPageScaffold(
      title: 'Attendance',
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
            child: SegmentedButton<String>(
              segments: const [
                ButtonSegment(value: 'day', label: Text('Day')),
                ButtonSegment(value: 'week', label: Text('Week')),
                ButtonSegment(value: 'month', label: Text('Month')),
                ButtonSegment(value: 'year', label: Text('Year')),
              ],
              selected: {_period},
              onSelectionChanged: (selection) => setState(() => _period = selection.first),
            ),
          ),
          Expanded(
            child: summaryAsync.when(
              data: (summary) => _AttendanceView(summary: summary),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, _) => ErrorView(
                message: describeError(err),
                onRetry: () => ref.invalidate(attendanceProvider(params)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AttendanceView extends StatelessWidget {
  const _AttendanceView({required this.summary});

  final AttendanceSummary summary;

  @override
  Widget build(BuildContext context) {
    if (summary.data.isEmpty) {
      return const _EmptyState();
    }

    final counts = summary.countsByStatus;
    final present = counts[AttendanceStatus.present] ?? 0;
    final pct = summary.total == 0 ? 0 : ((present / summary.total) * 100).round();
    final dateFormat = DateFormat('d MMM yyyy');

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _PercentHeader(percent: pct, total: summary.total),
        const SizedBox(height: 12),
        _StatusCountsRow(counts: counts),
        const SizedBox(height: 20),
        Text('Daily record', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        ...summary.data.map((r) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: _AttendanceRow(record: r, dateFormat: dateFormat),
            )),
      ],
    );
  }
}

class _PercentHeader extends StatelessWidget {
  const _PercentHeader({required this.percent, required this.total});

  final int percent;
  final int total;

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
          SizedBox(
            width: 72,
            height: 72,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircularProgressIndicator(
                  value: percent / 100,
                  strokeWidth: 6,
                  backgroundColor: scheme.primary.withValues(alpha: 0.15),
                  valueColor: AlwaysStoppedAnimation(scheme.primary),
                ),
                Text('$percent%', style: TextStyle(fontWeight: FontWeight.bold, color: scheme.onPrimaryContainer)),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Present rate', style: TextStyle(color: scheme.onPrimaryContainer, fontSize: 16, fontWeight: FontWeight.w600)),
                const SizedBox(height: 4),
                Text('$total day${total == 1 ? '' : 's'} recorded', style: TextStyle(color: scheme.onPrimaryContainer.withValues(alpha: 0.7))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StatusCountsRow extends StatelessWidget {
  const _StatusCountsRow({required this.counts});

  final Map<AttendanceStatus, int> counts;

  @override
  Widget build(BuildContext context) {
    final nonZero = AttendanceStatus.values.where((s) => (counts[s] ?? 0) > 0);
    if (nonZero.isEmpty) return const SizedBox.shrink();

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final status in nonZero)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: status.color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(width: 8, height: 8, decoration: BoxDecoration(color: status.color, shape: BoxShape.circle)),
                const SizedBox(width: 6),
                Text('${status.label} ${counts[status]}', style: TextStyle(color: status.color, fontWeight: FontWeight.w600, fontSize: 12)),
              ],
            ),
          ),
      ],
    );
  }
}

class _AttendanceRow extends StatelessWidget {
  const _AttendanceRow({required this.record, required this.dateFormat});

  final AttendanceRecord record;
  final DateFormat dateFormat;

  @override
  Widget build(BuildContext context) {
    final checkIn = record.checkInTimeOfDay;
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: record.status.color.withValues(alpha: 0.25)),
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        leading: CircleAvatar(
          backgroundColor: record.status.color.withValues(alpha: 0.15),
          child: Icon(Icons.circle, color: record.status.color, size: 12),
        ),
        title: Text(dateFormat.format(record.attendanceDate), style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(
          [
            record.status.label,
            if (checkIn != null) 'Checked in ${checkIn.format(context)}',
            if (record.remarks != null && record.remarks!.isNotEmpty) record.remarks!,
          ].join(' • '),
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.event_busy_outlined, size: 48, color: Theme.of(context).colorScheme.outline),
          const SizedBox(height: 12),
          const Text('No attendance records for this period.'),
        ],
      ),
    );
  }
}
