import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/models/staff_self_service.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/teacher_portal_providers.dart';
import 'teacher_page_scaffold.dart';

/// Web PERIOD_OPTIONS, same order.
const _periods = <String, String>{'month': 'This Month', 'week': 'This Week', 'day': 'Today', 'year': 'This Year'};

/// Port of MyAttendancePage.jsx (own staff attendance, read-only) — period
/// picker, gradient hero with rate ring + present streak, Present / Absent
/// / Half Day tiles, a freely navigable month calendar and Recent History.
/// Landscape tablets put the calendar and history side by side (web 3:1).
class TeacherMyAttendanceScreen extends ConsumerStatefulWidget {
  const TeacherMyAttendanceScreen({super.key});

  @override
  ConsumerState<TeacherMyAttendanceScreen> createState() => _TeacherMyAttendanceScreenState();
}

class _TeacherMyAttendanceScreenState extends ConsumerState<TeacherMyAttendanceScreen> {
  String _period = 'month';
  late DateTime _viewMonth = DateTime(DateTime.now().year, DateTime.now().month);
  DateTime? _selected;

  @override
  Widget build(BuildContext context) {
    final provider = teacherMyAttendanceProvider(_period);
    return TeacherPageScaffold(
      title: 'My Attendance',
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: ResponsiveCenter(
              child: SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (final p in _periods.entries)
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                          label: Text(p.value),
                          selected: _period == p.key,
                          onSelected: (_) => setState(() => _period = p.key),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: AsyncValueView(
              value: ref.watch(provider),
              loadingLabel: 'Loading…',
              onRetry: () => ref.invalidate(provider),
              data: (summary) {
                final records = summary.data;
                final calendar = _Calendar(
                  month: _viewMonth,
                  byDate: {for (final r in records) calendarDay(r.attendanceDate): r},
                  selected: _selected,
                  onMonth: (m) => setState(() => _viewMonth = m),
                  onSelect: (d) => setState(() => _selected = _selected == d ? null : d),
                );
                final history = _RecentHistory(records: records);
                return ResponsiveListView(
                  onRefresh: () => ref.refresh(provider.future),
                  children: [
                    _Hero(summary: summary, periodLabel: _periods[_period]!.toLowerCase()),
                    const SizedBox(height: 16),
                    _CountTiles(records: records),
                    const SizedBox(height: 16),
                    if (context.isExpandedWidth)
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(flex: 3, child: calendar),
                          const SizedBox(width: 16),
                          Expanded(child: history),
                        ],
                      )
                    else ...[
                      calendar,
                      const SizedBox(height: 16),
                      history,
                    ],
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

/// Consecutive PRESENT days counting back from the most recent record.
int _streak(List<StaffAttendanceRecord> records) {
  final sorted = [...records]..sort((a, b) => b.attendanceDate.compareTo(a.attendanceDate));
  var n = 0;
  for (final r in sorted) {
    if (r.status != 'PRESENT') break;
    n++;
  }
  return n;
}

class _Hero extends StatelessWidget {
  const _Hero({required this.summary, required this.periodLabel});

  final StaffAttendanceSummary summary;
  final String periodLabel;

  @override
  Widget build(BuildContext context) {
    final records = summary.data;
    final total = records.length;
    final present = summary.presentCount;
    final absent = records.where((r) => r.status == 'ABSENT').length;
    final percent = summary.presentPercent;
    final streak = _streak(records);
    final title = total == 0
        ? 'No attendance recorded yet'
        : percent == 100
            ? 'Perfect attendance'
            : absent == 0
                ? "You haven't missed a day"
                : 'Attendance summary';
    final subtitle = total == 0 ? 'Nothing recorded for $periodLabel yet.' : '$present of $total working days present';

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(gradient: AppColors.brandGradient, borderRadius: BorderRadius.circular(18)),
      child: Wrap(
        spacing: 16,
        runSpacing: 12,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(color: Colors.white24, shape: BoxShape.circle),
                child: AttendanceRateRing(percent: percent, size: 72, stroke: 7, onDark: true),
              ),
              const SizedBox(width: 16),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      (percent == 100 ? 'Perfect Attendance' : 'Attendance').toUpperCase(),
                      style: const TextStyle(color: Colors.white60, fontSize: 11, letterSpacing: 1),
                    ),
                    Text(title, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700)),
                    Text(subtitle, style: const TextStyle(color: Colors.white70, fontSize: 12)),
                  ],
                ),
              ),
            ],
          ),
          if (streak > 0)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.18),
                borderRadius: BorderRadius.circular(999),
                border: Border.all(color: Colors.white30),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.local_fire_department_outlined, size: 16, color: Colors.white),
                  const SizedBox(width: 6),
                  Text('$streak day streak', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _CountTiles extends StatelessWidget {
  const _CountTiles({required this.records});

  final List<StaffAttendanceRecord> records;

  @override
  Widget build(BuildContext context) {
    String days(int n) => '$n day${n == 1 ? '' : 's'}';
    int count(String s) => records.where((r) => r.status == s).length;
    return ResponsiveGrid(
      minItemWidth: 200,
      maxColumns: 3,
      children: [
        TeacherStatTile(
          tint: AppColors.successBg,
          leading: const TintedIcon(icon: Icons.check_circle_outline, color: AppColors.success),
          value: days(count('PRESENT')),
          label: 'Present',
        ),
        TeacherStatTile(
          tint: AppColors.dangerBg,
          leading: const TintedIcon(icon: Icons.cancel_outlined, color: AppColors.danger),
          value: days(count('ABSENT')),
          label: 'Absent',
        ),
        TeacherStatTile(
          tint: AppColors.amberLight,
          leading: const TintedIcon(icon: Icons.timelapse, color: AppColors.amber),
          value: days(count('HALF_DAY')),
          label: 'Half Day',
        ),
      ],
    );
  }
}

class _Calendar extends StatelessWidget {
  const _Calendar({
    required this.month,
    required this.byDate,
    required this.selected,
    required this.onMonth,
    required this.onSelect,
  });

  final DateTime month;
  final Map<DateTime, StaffAttendanceRecord> byDate;
  final DateTime? selected;
  final ValueChanged<DateTime> onMonth;
  final ValueChanged<DateTime> onSelect;

  static const _dow = ['SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT'];

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final isCurrent = month.year == now.year && month.month == now.month;

    // Full 6-row (42-cell) Sunday-first grid incl. spillover days (web
    // buildCalendarCells).
    final first = DateTime(month.year, month.month);
    final leading = first.weekday % 7; // Sunday = 0
    final cells = [for (var i = 0; i < 42; i++) DateTime(month.year, month.month, 1 - leading + i)];

    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(DateFormat('MMMM yyyy').format(month), style: const TextStyle(fontWeight: FontWeight.w600)),
              ),
              IconButton(
                tooltip: 'Previous month',
                visualDensity: VisualDensity.compact,
                onPressed: () => onMonth(DateTime(month.year, month.month - 1)),
                icon: const Icon(Icons.chevron_left),
              ),
              IconButton(
                tooltip: 'Next month',
                visualDensity: VisualDensity.compact,
                onPressed: () => onMonth(DateTime(month.year, month.month + 1)),
                icon: const Icon(Icons.chevron_right),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(visualDensity: VisualDensity.compact),
                onPressed: isCurrent ? null : () => onMonth(DateTime(now.year, now.month)),
                child: const Text('Today'),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(color: AppColors.primaryLight, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                for (final d in _dow)
                  Expanded(
                    child: Text(
                      d,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: AppColors.primary),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 6),
          for (var row = 0; row < 6; row++)
            Row(
              children: [
                for (var col = 0; col < 7; col++) Expanded(child: _cell(cells[row * 7 + col], today)),
              ],
            ),
          const Divider(height: 24),
          const Wrap(
            spacing: 16,
            runSpacing: 8,
            children: [
              _Legend(icon: Icons.check_circle_outline, color: AppColors.success, label: 'Present'),
              _Legend(icon: Icons.cancel_outlined, color: AppColors.danger, label: 'Absent'),
              _Legend(icon: Icons.timelapse, color: AppColors.amber, label: 'Half Day'),
              _Legend(icon: Icons.circle, color: AppColors.primary, label: 'Today', small: true),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cell(DateTime date, DateTime today) {
    final outside = date.month != month.month;
    if (outside) {
      return SizedBox(
        height: 48,
        child: Center(child: Text('${date.day}', style: const TextStyle(color: Color(0x6694A3B8), fontSize: 12))),
      );
    }
    final record = byDate[date];
    final status = record?.status;
    final isPresent = status == 'PRESENT';
    final isAbsent = status == 'ABSENT';
    final isOther = record != null && !isPresent && !isAbsent;
    final isToday = date == today;
    final isSelected = selected == date;
    final bg = isPresent
        ? AppColors.successBg
        : isAbsent
            ? AppColors.dangerBg
            : isOther
                ? AppColors.amberLight
                : AppColors.pageBg;
    final ring = isSelected ? AppColors.violet : (isToday ? AppColors.primary : null);

    return Padding(
      padding: const EdgeInsets.all(2),
      child: Material(
        color: bg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: ring == null ? BorderSide.none : BorderSide(color: ring, width: 2),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () => onSelect(date),
          child: SizedBox(
            height: 44,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${date.day}', style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                if (isPresent) const Icon(Icons.check_circle_outline, size: 12, color: AppColors.success),
                if (isAbsent) const Icon(Icons.cancel_outlined, size: 12, color: AppColors.danger),
                if (isOther) const Icon(Icons.timelapse, size: 12, color: AppColors.amber),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Legend extends StatelessWidget {
  const _Legend({required this.icon, required this.color, required this.label, this.small = false});

  final IconData icon;
  final Color color;
  final String label;
  final bool small;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: small ? 10 : 16, color: color),
          const SizedBox(width: 6),
          Text(label, style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
        ],
      );
}

class _RecentHistory extends StatelessWidget {
  const _RecentHistory({required this.records});

  final List<StaffAttendanceRecord> records;

  @override
  Widget build(BuildContext context) {
    final recent = ([...records]..sort((a, b) => b.attendanceDate.compareTo(a.attendanceDate))).take(6).toList();
    return SectionCard(
      title: 'Recent History',
      icon: Icons.history,
      padding: const EdgeInsets.all(8),
      child: recent.isEmpty
          ? const EmptyState(
              icon: Icons.event_available_outlined,
              title: 'No records yet',
              message: 'Your attendance history will appear here.',
            )
          : Column(
              children: [
                for (final r in recent)
                  ListTile(
                    dense: true,
                    leading: Icon(
                      r.status == 'PRESENT'
                          ? Icons.check_circle_outline
                          : r.status == 'ABSENT'
                              ? Icons.cancel_outlined
                              : Icons.timelapse,
                      color: r.status == 'PRESENT'
                          ? AppColors.success
                          : r.status == 'ABSENT'
                              ? AppColors.danger
                              : AppColors.amber,
                    ),
                    title: Text(DateFormat('dd MMM yyyy').format(calendarDay(r.attendanceDate)),
                        style: const TextStyle(fontWeight: FontWeight.w500)),
                    subtitle: Text(DateFormat('EEEE').format(calendarDay(r.attendanceDate))),
                    trailing: StatusBadge(label: r.status, variant: staffAttendanceVariant(r.status)),
                  ),
                if (recent.length <= 1)
                  const Padding(
                    padding: EdgeInsets.fromLTRB(8, 12, 8, 4),
                    child: Column(
                      children: [
                        Text("That's your only record so far", style: TextStyle(fontSize: 12, color: AppColors.textMuted)),
                        Text('New entries will appear here automatically',
                            style: TextStyle(fontSize: 11, color: AppColors.textMuted)),
                      ],
                    ),
                  ),
              ],
            ),
    );
  }
}
