import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/models/attendance_record.dart';
import '../../../core/models/student_records.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/stat_tile.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/student_portal_providers.dart';
import 'student_apply_leave_sheet.dart';
import 'student_page_scaffold.dart';

/// Port of AttendanceLeavesPage.jsx — "Attendance" and "Leaves" tabs.
class StudentAttendanceScreen extends StatelessWidget {
  const StudentAttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: StudentPageScaffold(
        title: 'Attendance & Leaves',
        bottom: TabBar(tabs: [Tab(text: 'Attendance'), Tab(text: 'Leaves')]),
        body: TabBarView(children: [_AttendanceTab(), _LeavesTab()]),
      ),
    );
  }
}

// ── Status presentation (web: ATTENDANCE_STATUS_META / STATUS_ORDER) ──────

/// Order drives the stat row and which statuses always show, even at 0.
const _statusOrder = [
  AttendanceStatus.present,
  AttendanceStatus.absent,
  AttendanceStatus.late,
  AttendanceStatus.halfDay,
  AttendanceStatus.weekOff,
];

({BadgeVariant variant, IconData icon, Color dot, Color stat}) _meta(AttendanceStatus s) => switch (s) {
      AttendanceStatus.present => (
          variant: BadgeVariant.success,
          icon: Icons.check_circle_outline,
          dot: AppColors.emerald,
          stat: AppColors.success,
        ),
      AttendanceStatus.absent => (
          variant: BadgeVariant.danger,
          icon: Icons.cancel_outlined,
          dot: const Color(0xFFF43F5E), // tailwind rose-500 (web calendar dot)
          stat: AppColors.danger,
        ),
      AttendanceStatus.late => (
          variant: BadgeVariant.warning,
          icon: Icons.schedule,
          dot: const Color(0xFFF59E0B), // amber-500
          stat: AppColors.warning,
        ),
      AttendanceStatus.halfDay => (
          variant: BadgeVariant.info,
          icon: Icons.wb_twilight,
          dot: const Color(0xFF0EA5E9), // sky-500
          stat: AppColors.sky,
        ),
      AttendanceStatus.weekOff || AttendanceStatus.unknown => (
          variant: BadgeVariant.neutral,
          icon: Icons.dark_mode_outlined,
          dot: AppColors.textMuted,
          stat: AppColors.textSecondary,
        ),
    };

class _AttendanceBadge extends StatelessWidget {
  const _AttendanceBadge(this.status);

  final AttendanceStatus status;

  @override
  Widget build(BuildContext context) {
    final m = _meta(status);
    return StatusBadge(label: status.label, variant: m.variant, icon: m.icon);
  }
}

class _StatusStats extends StatelessWidget {
  const _StatusStats({required this.counts});

  final Map<AttendanceStatus, int> counts;

  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      minItemWidth: 100,
      minColumns: 2,
      maxColumns: 5,
      spacing: 10,
      children: [
        for (final s in _statusOrder) StatTile(value: '${counts[s] ?? 0}', label: s.label, color: _meta(s).stat),
      ],
    );
  }
}

/// Calendar-day key from a `@db.Date` value (UTC midnight) or a local date.
String _dayKey(int y, int m, int d) => '$y-$m-$d';
String _recordKey(DateTime date) {
  final u = date.isUtc ? date : date.toUtc();
  return _dayKey(u.year, u.month, u.day);
}

// ── Attendance tab ───────────────────────────────────────────────────────

const _periodOptions = {'month': 'This Month', 'week': 'This Week', 'day': 'Today', 'year': 'This Year'};

class _AttendanceTab extends ConsumerStatefulWidget {
  const _AttendanceTab();

  @override
  ConsumerState<_AttendanceTab> createState() => _AttendanceTabState();
}

class _AttendanceTabState extends ConsumerState<_AttendanceTab> with AutomaticKeepAliveClientMixin {
  String _period = 'month';

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final provider = myAttendanceProvider(_period);
    final periodPicker = Align(
      alignment: Alignment.centerRight,
      child: DropdownMenu<String>(
        initialSelection: _period,
        width: 180,
        label: const Text('Period'),
        dropdownMenuEntries: [
          for (final e in _periodOptions.entries) DropdownMenuEntry(value: e.key, label: e.value),
        ],
        onSelected: (v) => setState(() => _period = v ?? _period),
      ),
    );

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
          child: ResponsiveCenter(child: periodPicker),
        ),
        Expanded(
          child: AsyncValueView(
            value: ref.watch(provider),
            loadingLabel: 'Loading your attendance…',
            onRetry: () => ref.invalidate(provider),
            data: (summary) {
              final records = summary.data;
              final isCalendar = _period == 'month' || _period == 'year';
              return ResponsiveListView(
                onRefresh: () => ref.refresh(provider.future),
                children: [
                  if (isCalendar)
                    // Only "This Year" is navigable — "This Month" only ever
                    // fetched the current month, so paging would show an
                    // empty calendar (same rule as the web).
                    _AttendanceCalendar(key: ValueKey(_period), records: records, navigable: _period == 'year')
                  else if (records.isEmpty)
                    const SectionCard(
                      child: EmptyState(
                        icon: Icons.calendar_today_outlined,
                        title: 'No attendance records',
                        message: "Your attendance for this period hasn't been marked yet.",
                      ),
                    )
                  else ...[
                    _StatusStats(counts: {
                      for (final s in _statusOrder) s: records.where((r) => r.status == s).length,
                    }),
                    const SizedBox(height: 12),
                    DividedCard(children: [for (final r in records) _AttendanceRow(record: r)]),
                  ],
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class _AttendanceRow extends StatelessWidget {
  const _AttendanceRow({required this.record});

  final AttendanceRecord record;

  @override
  Widget build(BuildContext context) {
    final muted = Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.outline);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(formatDate(record.attendanceDate), style: const TextStyle(fontWeight: FontWeight.w600)),
                if (record.status == AttendanceStatus.late && record.checkInTime != null)
                  Text('Checked in ${formatClockTime(record.checkInTime)}', style: muted),
                if (record.remarks?.isNotEmpty ?? false)
                  Text(
                    record.remarks!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: muted?.copyWith(fontStyle: FontStyle.italic),
                  ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          _AttendanceBadge(record.status),
        ],
      ),
    );
  }
}

/// Month grid, Sunday-first. A Sunday with no real record shows as Week Off
/// (schools don't mark Sundays) so the calendar is never blank just because
/// nothing has been marked yet. Stats cover the visible month only.
class _AttendanceCalendar extends StatefulWidget {
  const _AttendanceCalendar({super.key, required this.records, required this.navigable});

  final List<AttendanceRecord> records;
  final bool navigable;

  @override
  State<_AttendanceCalendar> createState() => _AttendanceCalendarState();
}

class _CalendarCell {
  const _CalendarCell(this.day, this.key, this.status, this.record);

  final int day;
  final String key;
  final AttendanceStatus? status;
  final AttendanceRecord? record; // null for a synthetic Sunday Week Off
}

class _AttendanceCalendarState extends State<_AttendanceCalendar> {
  late DateTime _viewMonth;
  String? _selectedKey;

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    _viewMonth = DateTime(now.year, now.month);
  }

  List<_CalendarCell?> _cells() {
    final byKey = {for (final r in widget.records) _recordKey(r.attendanceDate): r};
    final y = _viewMonth.year;
    final m = _viewMonth.month;
    final leadingBlanks = DateTime(y, m, 1).weekday % 7; // Sun = 0
    final daysInMonth = DateTime(y, m + 1, 0).day;
    return [
      for (var i = 0; i < leadingBlanks; i++) null,
      for (var d = 1; d <= daysInMonth; d++)
        () {
          final key = _dayKey(y, m, d);
          final real = byKey[key];
          final isSunday = DateTime(y, m, d).weekday == DateTime.sunday;
          return _CalendarCell(d, key, real?.status ?? (isSunday ? AttendanceStatus.weekOff : null), real);
        }(),
    ];
  }

  void _changeMonth(int delta) => setState(() {
        _selectedKey = null;
        _viewMonth = DateTime(_viewMonth.year, _viewMonth.month + delta);
      });

  @override
  Widget build(BuildContext context) {
    final cells = _cells();
    final counts = <AttendanceStatus, int>{};
    for (final c in cells) {
      if (c?.status != null) counts[c!.status!] = (counts[c.status!] ?? 0) + 1;
    }
    final selected = _selectedKey == null ? null : cells.firstWhere((c) => c?.key == _selectedKey, orElse: () => null);
    final scheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _StatusStats(counts: counts),
        const SizedBox(height: 12),
        Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 560),
            child: SectionCard(
              child: Column(
                children: [
                  Row(
                    children: [
                      _navButton(Icons.chevron_left, 'Previous month', () => _changeMonth(-1)),
                      Expanded(
                        child: Text(
                          DateFormat('MMMM yyyy').format(_viewMonth),
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      _navButton(Icons.chevron_right, 'Next month', () => _changeMonth(1)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  GridView.count(
                    crossAxisCount: 7,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: 1.6,
                    children: [
                      for (final w in const ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'])
                        Center(
                          child: Text(w, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: scheme.outline)),
                        ),
                    ],
                  ),
                  GridView.count(
                    crossAxisCount: 7,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    mainAxisSpacing: 4,
                    children: [
                      for (final c in cells) c == null ? const SizedBox.shrink() : _dayCell(c, scheme),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        if (selected?.status != null) ...[
          const SizedBox(height: 12),
          SectionCard(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        formatDate(DateTime.utc(_viewMonth.year, _viewMonth.month, selected!.day)),
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      if (selected.status == AttendanceStatus.late && selected.record?.checkInTime != null)
                        Text('Checked in ${formatClockTime(selected.record!.checkInTime)}',
                            style: Theme.of(context).textTheme.bodySmall),
                      if (selected.record?.remarks?.isNotEmpty ?? false)
                        Text(
                          selected.record!.remarks!,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontStyle: FontStyle.italic),
                        ),
                    ],
                  ),
                ),
                _AttendanceBadge(selected.status!),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _navButton(IconData icon, String tooltip, VoidCallback onTap) => widget.navigable
      ? IconButton(icon: Icon(icon), tooltip: tooltip, onPressed: onTap)
      : const SizedBox(width: 48);

  Widget _dayCell(_CalendarCell c, ColorScheme scheme) {
    final dot = c.status == null ? null : _meta(c.status!).dot;
    final isSelected = _selectedKey == c.key;
    return Center(
      child: AspectRatio(
        aspectRatio: 1,
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Material(
            color: dot ?? Colors.transparent,
            shape: CircleBorder(
              side: isSelected ? BorderSide(color: scheme.primary, width: 2.5) : BorderSide.none,
            ),
            child: InkWell(
              customBorder: const CircleBorder(),
              onTap: c.status == null ? null : () => setState(() => _selectedKey = isSelected ? null : c.key),
              child: Center(
                child: Text(
                  '${c.day}',
                  style: TextStyle(
                    fontSize: 13,
                    color: dot != null ? Colors.white : scheme.onSurfaceVariant,
                    fontWeight: dot != null ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ── Leaves tab ───────────────────────────────────────────────────────────

class _LeavesTab extends ConsumerWidget {
  const _LeavesTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void apply() => showApplyLeaveSheet(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
          child: ResponsiveCenter(
            child: Align(
              alignment: Alignment.centerRight,
              child: FilledButton.icon(onPressed: apply, icon: const Icon(Icons.add), label: const Text('Apply for Leave')),
            ),
          ),
        ),
        Expanded(
          child: AsyncValueView(
            value: ref.watch(myLeavesProvider),
            loadingLabel: 'Loading your leave history…',
            onRetry: () => ref.invalidate(myLeavesProvider),
            data: (leaves) => ResponsiveListView(
              onRefresh: () => ref.refresh(myLeavesProvider.future),
              children: [
                if (leaves.isEmpty)
                  DividedCard(children: [
                    EmptyState(
                      icon: Icons.event_busy_outlined,
                      title: 'No leave requests yet',
                      message: 'Requests you submit will appear here along with their approval status.',
                      actionLabel: 'Apply for Leave',
                      onAction: apply,
                    ),
                  ])
                else
                  DividedCard(children: [for (final l in leaves) _LeaveRow(leave: l)]),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _LeaveRow extends StatelessWidget {
  const _LeaveRow({required this.leave});

  final StudentLeave leave;

  @override
  Widget build(BuildContext context) {
    final muted = Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.outline);
    final sameDay = _recordKey(leave.fromDate) == _recordKey(leave.toDate);
    final days = leave.totalDays?.toInt() ?? 0;
    final status = leave.status ?? 'PENDING';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(leave.leaveType, style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(
                  '${formatDate(leave.fromDate)}${sameDay ? '' : ' → ${formatDate(leave.toDate)}'} · $days day(s)',
                  style: muted,
                ),
                if (leave.reason?.isNotEmpty ?? false)
                  Text(leave.reason!, style: muted?.copyWith(fontStyle: FontStyle.italic)),
                if (leave.remarks?.isNotEmpty ?? false)
                  Text('Teacher remarks: ${leave.remarks}', style: muted?.copyWith(fontStyle: FontStyle.italic)),
              ],
            ),
          ),
          const SizedBox(width: 8),
          StatusBadge(label: status, variant: leaveStatusVariant(status)),
        ],
      ),
    );
  }
}
