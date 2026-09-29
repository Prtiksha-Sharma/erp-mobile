import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/attendance_record.dart';
import '../../../core/models/attendance_summary.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/attendance_provider.dart';
import '../providers/children_provider.dart' show activeChildProvider;

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
      return Scaffold(
        appBar: AppBar(title: const Text('Attendance')),
        body: const Center(child: Text('Select a child from Home first.')),
      );
    }

    final params = (studentId: activeChild.studentId, period: _period);
    final summaryAsync = ref.watch(attendanceProvider(params));

    return Scaffold(
      appBar: AppBar(title: const Text('Attendance')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
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
      return const Center(child: Text('No attendance records for this period.'));
    }

    final counts = summary.countsByStatus;
    final dateFormat = DateFormat('d MMM yyyy');

    return Column(
      children: [
        _StatusCountsRow(counts: counts),
        const Divider(height: 1),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: summary.data.length,
            separatorBuilder: (_, _) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              final record = summary.data[index];
              return _AttendanceRow(record: record, dateFormat: dateFormat);
            },
          ),
        ),
      ],
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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          for (final status in nonZero)
            Chip(
              avatar: CircleAvatar(backgroundColor: status.color, radius: 6),
              label: Text('${status.label}: ${counts[status]}'),
            ),
        ],
      ),
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
      margin: EdgeInsets.zero,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: record.status.color,
          child: Text(
            record.status.label.substring(0, 1),
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        title: Text(dateFormat.format(record.attendanceDate)),
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
