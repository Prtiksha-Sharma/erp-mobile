import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/hostel_warden.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/hostel_warden_providers.dart';
import '../services/hostel_warden_service.dart';
import 'hostel_warden_page_scaffold.dart';

/// Hostel attendance (night roll-call) — GET/POST /hostel/attendance. The
/// roster is the active student allocations grouped by room; tapping a room
/// opens its roll-call sheet. Re-submitting a room for the same night just
/// corrects the earlier marks (the backend upserts per student + date).
typedef _RollCallData = ({List<StudentRoomAllocation> roster, List<HostelAttendanceRecord> marks});

final _rollCallProvider = FutureProvider.family<_RollCallData, String>((ref, day) async {
  final roster = await ref.watch(wardenAllocationsProvider.future);
  final marks = await ref.watch(wardenAttendanceByDayProvider(day).future);
  return (roster: roster, marks: marks);
});

class HostelAttendanceScreen extends ConsumerStatefulWidget {
  const HostelAttendanceScreen({super.key});

  @override
  ConsumerState<HostelAttendanceScreen> createState() => _HostelAttendanceScreenState();
}

class _HostelAttendanceScreenState extends ConsumerState<HostelAttendanceScreen> {
  DateTime _date = today();

  String get _day => apiDate(_date);

  Future<void> _refresh() async {
    ref
      ..invalidate(wardenAllocationsProvider)
      ..invalidate(wardenAttendanceByDayProvider(_day));
    await ref.read(_rollCallProvider(_day).future);
  }

  @override
  Widget build(BuildContext context) {
    final value = ref.watch(_rollCallProvider(_day));
    return HostelWardenPageScaffold(
      title: 'Hostel Attendance',
      body: AsyncValueView<_RollCallData>(
        value: value,
        onRetry: _refresh,
        data: (d) {
          final rooms = _groupByRoom(d.roster);
          final markByStudent = {for (final m in d.marks) m.studentId: m.status};
          final marked = d.roster.where((a) => markByStudent.containsKey(a.studentId)).length;
          final absent = d.roster.where((a) => markByStudent[a.studentId] == 'ABSENT').length;

          return ResponsiveListView(
            onRefresh: _refresh,
            children: [
              HeaderBar(
                children: [
                  DatePickerChip(
                    date: _date,
                    lastDate: today(),
                    onChanged: (d) => setState(() => _date = DateTime(d.year, d.month, d.day)),
                  ),
                  Text(
                    '$marked / ${d.roster.length} marked',
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              if (absent > 0) ...[
                const SizedBox(height: 8),
                Text('$absent absent', style: const TextStyle(color: AppColors.danger, fontWeight: FontWeight.w600)),
              ],
              const SizedBox(height: 16),
              if (rooms.isEmpty)
                const EmptyCard(
                  icon: Icons.bed_outlined,
                  title: 'No residents yet',
                  message: 'Allocate students to rooms to start taking roll-call.',
                )
              else
                for (final floor in _floors(rooms)) ...[
                  SectionLabel('Floor $floor'),
                  DividedCard(
                    children: [
                      for (final r in rooms.where((r) => r.room.floorNumber == floor))
                        _RoomRow(
                          group: r,
                          markByStudent: markByStudent,
                          onTap: () => _openRollCall(r, markByStudent),
                        ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
            ],
          );
        },
      ),
    );
  }

  Future<void> _openRollCall(_RoomGroup group, Map<String, String> markByStudent) async {
    final saved = await showHostelFormSheet<bool>(
      context,
      (_) => _RollCallSheet(group: group, date: _date, initial: markByStudent),
    );
    if (saved == true && mounted) {
      ref.invalidate(wardenAttendanceByDayProvider(_day));
      showSnack(context, 'Attendance saved for Room ${group.room.roomNumber}');
    }
  }
}

class _RoomGroup {
  _RoomGroup(this.room, this.students);

  final WardenRoomRef room;
  final List<StudentRoomAllocation> students;
}

List<_RoomGroup> _groupByRoom(List<StudentRoomAllocation> roster) {
  final byRoom = <String, _RoomGroup>{};
  for (final a in roster) {
    final room = a.room ?? WardenRoomRef(roomId: a.roomId);
    byRoom.putIfAbsent(a.roomId, () => _RoomGroup(room, [])).students.add(a);
  }
  final groups = byRoom.values.toList()
    ..sort((a, b) {
      final f = (a.room.floorNumber ?? 0).compareTo(b.room.floorNumber ?? 0);
      if (f != 0) return f;
      final an = int.tryParse(a.room.roomNumber);
      final bn = int.tryParse(b.room.roomNumber);
      return an != null && bn != null ? an.compareTo(bn) : a.room.roomNumber.compareTo(b.room.roomNumber);
    });
  for (final g in groups) {
    g.students.sort((a, b) => (a.student?.name ?? '').compareTo(b.student?.name ?? ''));
  }
  return groups;
}

List<int> _floors(List<_RoomGroup> rooms) => rooms.map((r) => r.room.floorNumber ?? 0).toSet().toList()..sort();

class _RoomRow extends StatelessWidget {
  const _RoomRow({required this.group, required this.markByStudent, required this.onTap});

  final _RoomGroup group;
  final Map<String, String> markByStudent;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final total = group.students.length;
    final marked = group.students.where((s) => markByStudent.containsKey(s.studentId)).length;
    final absent = group.students.where((s) => markByStudent[s.studentId] == 'ABSENT').length;
    final StatusBadge badge;
    if (marked == 0) {
      badge = const StatusBadge(label: 'Not marked', variant: BadgeVariant.warning);
    } else if (marked < total) {
      badge = StatusBadge(label: '$marked / $total marked', variant: BadgeVariant.info);
    } else if (absent > 0) {
      badge = StatusBadge(label: '$absent absent', variant: BadgeVariant.danger);
    } else {
      badge = const StatusBadge(label: 'All present', variant: BadgeVariant.success);
    }
    return ListTile(
      onTap: onTap,
      leading: const Icon(Icons.meeting_room_outlined, color: AppColors.primary),
      title: Text('Room ${group.room.roomNumber}', style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text('$total ${total == 1 ? 'student' : 'students'}'),
      trailing: badge,
    );
  }
}

class _RollCallSheet extends StatefulWidget {
  const _RollCallSheet({required this.group, required this.date, required this.initial});

  final _RoomGroup group;
  final DateTime date;
  final Map<String, String> initial;

  @override
  State<_RollCallSheet> createState() => _RollCallSheetState();
}

class _RollCallSheetState extends State<_RollCallSheet> {
  // Unmarked students default to PRESENT, same as the web roll-call.
  late final Map<String, String> _status = {
    for (final s in widget.group.students) s.studentId: widget.initial[s.studentId] ?? 'PRESENT',
  };
  bool _busy = false;
  String? _error;

  Future<void> _save() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    final result = await HostelWardenService().markAttendance(
      roomId: widget.group.room.roomId,
      date: widget.date,
      statusByStudent: _status,
    );
    if (!mounted) return;
    switch (result) {
      case Ok():
        Navigator.of(context).pop(true);
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failure.userMessage;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final absent = _status.values.where((s) => s == 'ABSENT').length;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Room ${widget.group.room.roomNumber} roll-call',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 4),
        Text(
          absent == 0 ? 'Everyone present' : '$absent absent',
          style: TextStyle(color: absent == 0 ? scheme.onSurfaceVariant : AppColors.danger),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton.icon(
            onPressed: _busy ? null : () => setState(() => _status.updateAll((_, _) => 'PRESENT')),
            icon: const Icon(Icons.done_all, size: 18),
            label: const Text('Mark all present'),
          ),
        ),
        for (final s in widget.group.students)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(s.student?.name ?? 'Student', style: const TextStyle(fontWeight: FontWeight.w600)),
                      Text(
                        [
                          if (s.student?.admissionNo != null) s.student!.admissionNo!,
                          if (s.bedNumber != null) 'Bed ${s.bedNumber}',
                        ].join(' · '),
                        style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                SegmentedButton<String>(
                  showSelectedIcon: false,
                  segments: const [
                    ButtonSegment(value: 'PRESENT', label: Text('P'), tooltip: 'Present'),
                    ButtonSegment(value: 'ABSENT', label: Text('A'), tooltip: 'Absent'),
                  ],
                  selected: {_status[s.studentId]!},
                  onSelectionChanged: _busy ? null : (v) => setState(() => _status[s.studentId] = v.first),
                  style: SegmentedButton.styleFrom(
                    selectedBackgroundColor:
                        _status[s.studentId] == 'ABSENT' ? AppColors.dangerBg : AppColors.successBg,
                    selectedForegroundColor: _status[s.studentId] == 'ABSENT' ? AppColors.danger : AppColors.success,
                  ),
                ),
              ],
            ),
          ),
        FormError(_error),
        const SizedBox(height: 16),
        SheetActions(busy: _busy, onSubmit: _save, submitLabel: 'Save attendance'),
      ],
    );
  }
}
