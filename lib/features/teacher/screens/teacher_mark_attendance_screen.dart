import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/attendance_record.dart';
import '../../../core/models/student_brief.dart';
import '../../../core/models/teacher_classroom.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../providers/teacher_portal_providers.dart';
import '../services/teacher_portal_service.dart';
import 'teacher_page_scaffold.dart';

/// Web STATUS_OPTIONS (features/attendance/constants/attendanceStatus.js).
const _statusOptions = [
  (value: 'PRESENT', label: 'Present', color: AppColors.success),
  (value: 'ABSENT', label: 'Absent', color: AppColors.danger),
  (value: 'LATE', label: 'Late', color: AppColors.warning),
];

/// Port of TeacherMarkAttendancePage.jsx (Class Teacher only) — date
/// picker, "Mark All Present", and a Present / Absent / Late toggle per
/// student. Each tap saves immediately (POST /teacher/attendance/mark);
/// LATE also takes a check-in time. The web's table becomes one card row
/// per student on phones.
class TeacherMarkAttendanceScreen extends ConsumerStatefulWidget {
  const TeacherMarkAttendanceScreen({super.key});

  @override
  ConsumerState<TeacherMarkAttendanceScreen> createState() => _TeacherMarkAttendanceScreenState();
}

class _TeacherMarkAttendanceScreenState extends ConsumerState<TeacherMarkAttendanceScreen> {
  DateTime _date = _today();
  final Set<String> _saving = {};

  static DateTime _today() {
    final n = DateTime.now();
    return DateTime(n.year, n.month, n.day);
  }

  Future<void> _mark(String studentId, String status, {String? checkInTime}) async {
    setState(() => _saving.add(studentId));
    final result = await TeacherPortalService()
        .markAttendance(studentId: studentId, date: _date, status: status, checkInTime: checkInTime);
    if (!mounted) return;
    setState(() => _saving.remove(studentId));
    switch (result) {
      case Ok():
        ref.invalidate(classRosterProvider(_date));
      case Err(:final failure):
        showSnack(context, failure.userMessage);
    }
  }

  Future<void> _markAllPresent(List<RosterStudent> students) async {
    final ok = await showConfirmDialog(
      context,
      title: 'Mark All Present',
      confirmLabel: 'Mark All Present',
      message: 'This will overwrite any existing attendance for all ${students.length} students on '
          '${isoDate(_date)} to Present. Continue?',
      action: () async {
        final result = await TeacherPortalService().markAllPresent(_date, [for (final s in students) s.studentId]);
        return switch (result) {
          Ok() => null,
          Err(:final failure) => failure.userMessage,
        };
      },
    );
    if (ok && mounted) ref.invalidate(classRosterProvider(_date));
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(_date.year - 1),
      lastDate: DateTime(_date.year + 1, 12, 31),
    );
    if (picked != null) setState(() => _date = DateTime(picked.year, picked.month, picked.day));
  }

  @override
  Widget build(BuildContext context) {
    if (!ref.watch(isClassTeacherProvider)) {
      return const TeacherPageScaffold(
        title: 'Mark Attendance',
        body: ClassTeacherOnlyNotice(icon: Icons.fact_check_outlined, feature: 'Attendance marking is'),
      );
    }
    final provider = classRosterProvider(_date);
    final value = ref.watch(provider);
    final students = value.value?.data ?? const <RosterStudent>[];

    return TeacherPageScaffold(
      title: 'Mark Attendance',
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
            child: ResponsiveCenter(
              child: Wrap(
                spacing: 12,
                runSpacing: 8,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  OutlinedButton.icon(
                    onPressed: _pickDate,
                    icon: const Icon(Icons.calendar_today_outlined, size: 18),
                    label: Text(formatDate(_date)),
                  ),
                  FilledButton.tonal(
                    onPressed: students.isEmpty ? null : () => _markAllPresent(students),
                    child: const Text('Mark All Present'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: AsyncValueView(
              value: value,
              loadingLabel: 'Loading your class roster…',
              onRetry: () => ref.invalidate(provider),
              data: (roster) => ResponsiveListView(
                onRefresh: () => ref.refresh(provider.future),
                children: [
                  if (roster.data.isEmpty)
                    const EmptyCard(
                      icon: Icons.fact_check_outlined,
                      title: 'No students found',
                      message: 'No students are currently assigned to your class/section.',
                    )
                  else
                    DividedCard(
                      children: [
                        for (final s in roster.data)
                          _RosterRow(
                            student: s,
                            busy: _saving.contains(s.studentId),
                            onMark: (status, {checkInTime}) => _mark(s.studentId, status, checkInTime: checkInTime),
                          ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

typedef _MarkCallback = void Function(String status, {String? checkInTime});

class _RosterRow extends StatelessWidget {
  const _RosterRow({required this.student, required this.busy, required this.onMark});

  final RosterStudent student;
  final bool busy;
  final _MarkCallback onMark;

  String? get _current => switch (student.attendance?.status) {
        AttendanceStatus.present => 'PRESENT',
        AttendanceStatus.absent => 'ABSENT',
        AttendanceStatus.late => 'LATE',
        _ => null,
      };

  /// `HH:mm` of the stored check-in (UTC hour/minute of the @db.Time value).
  String? get _checkInHhmm {
    final t = student.attendance?.checkInTime?.toUtc();
    if (t == null) return null;
    return '${t.hour.toString().padLeft(2, '0')}:${t.minute.toString().padLeft(2, '0')}';
  }

  Future<void> _pickCheckIn(BuildContext context) async {
    final t = student.attendance?.checkInTime?.toUtc();
    final picked = await showTimePicker(
      context: context,
      initialTime: t == null ? TimeOfDay.now() : TimeOfDay(hour: t.hour, minute: t.minute),
    );
    if (picked == null) return;
    onMark('LATE', checkInTime: '${picked.hour.toString().padLeft(2, '0')}:${picked.minute.toString().padLeft(2, '0')}');
  }

  @override
  Widget build(BuildContext context) {
    final name = StudentBrief(admissionNo: student.admissionNo, applicant: student.applicant).displayName;
    final current = _current;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 44,
                child: Text(student.rollNo ?? '—', style: const TextStyle(color: AppColors.textMuted, fontWeight: FontWeight.w600)),
              ),
              Expanded(child: Text(name, style: const TextStyle(fontWeight: FontWeight.w600))),
              if (busy) const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2)),
            ],
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              for (final o in _statusOptions)
                ChoiceChip(
                  label: Text(o.label),
                  selected: current == o.value,
                  selectedColor: o.color.withValues(alpha: 0.15),
                  labelStyle: TextStyle(
                    color: current == o.value ? o.color : AppColors.textSecondary,
                    fontWeight: current == o.value ? FontWeight.w700 : FontWeight.w500,
                  ),
                  side: BorderSide(color: current == o.value ? o.color : AppColors.border),
                  showCheckmark: false,
                  // Late keeps any existing check-in time; the chip beside
                  // it sets one (the web's time input next to the toggle).
                  onSelected: busy ? null : (_) => onMark(o.value, checkInTime: o.value == 'LATE' ? _checkInHhmm : null),
                ),
              if (current == 'LATE')
                ActionChip(
                  avatar: const Icon(Icons.schedule, size: 16),
                  label: Text(_checkInHhmm == null ? 'Set check-in time' : 'Check-in ${formatClockTime(student.attendance!.checkInTime)}'),
                  onPressed: busy ? null : () => _pickCheckIn(context),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
