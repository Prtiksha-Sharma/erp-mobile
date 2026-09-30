import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/student_brief.dart';
import '../../../core/models/teacher_exams.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/teacher_portal_providers.dart';
import '../services/teacher_portal_service.dart';
import 'teacher_page_scaffold.dart';

/// Port of MyExamMarksOverviewPage.jsx — pick an exam (defaults to the most
/// recent), see "entered / total" per own class-section-subject schedule,
/// then open one to enter marks.
class TeacherMarksOverviewScreen extends ConsumerStatefulWidget {
  const TeacherMarksOverviewScreen({super.key});

  @override
  ConsumerState<TeacherMarksOverviewScreen> createState() => _TeacherMarksOverviewScreenState();
}

class _TeacherMarksOverviewScreenState extends ConsumerState<TeacherMarksOverviewScreen> {
  String? _selectedExamId;

  @override
  Widget build(BuildContext context) {
    final exams = ref.watch(teacherExamsProvider);
    return TeacherPageScaffold(
      title: 'Marks Entry',
      body: AsyncValueView(
        value: exams,
        loadingLabel: 'Loading exams…',
        onRetry: () => ref.invalidate(teacherExamsProvider),
        data: (list) {
          if (list.isEmpty) {
            return ResponsiveListView(
              onRefresh: () => ref.refresh(teacherExamsProvider.future),
              children: const [
                EmptyCard(
                  icon: Icons.assignment_turned_in_outlined,
                  title: 'No exams to enter marks for',
                  message: 'Once School Admin schedules an exam for a class/section/subject you teach, it will appear here.',
                ),
              ],
            );
          }
          // Derived, not stored — defaults to the most recent exam (web).
          final examId = list.any((e) => e.examId == _selectedExamId) ? _selectedExamId! : list.first.examId;
          final statusProvider = teacherMarksStatusProvider(examId);
          return ResponsiveListView(
            onRefresh: () async {
              ref.invalidate(teacherExamsProvider);
              return ref.refresh(statusProvider.future);
            },
            children: [
              DropdownButtonFormField<String>(
                initialValue: examId,
                isExpanded: true,
                decoration: const InputDecoration(labelText: 'Exam', border: OutlineInputBorder()),
                items: [
                  for (final e in list)
                    DropdownMenuItem(
                      value: e.examId,
                      child: Text(
                        e.examType?.typeName != null ? '${e.examName} (${e.examType!.typeName})' : e.examName,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                ],
                onChanged: (v) => setState(() => _selectedExamId = v),
              ),
              const SizedBox(height: 16),
              _StatusList(provider: statusProvider),
            ],
          );
        },
      ),
    );
  }
}

class _StatusList extends ConsumerWidget {
  const _StatusList({required this.provider});

  final FutureProvider<List<MarksEntryStatus>> provider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(provider).when(
          skipLoadingOnRefresh: true,
          loading: () => const LoadingView(label: 'Loading entry status…'),
          error: (err, _) => Column(
            children: [
              const Text('Failed to load marks-entry status.'),
              TextButton(onPressed: () => ref.invalidate(provider), child: const Text('Retry')),
            ],
          ),
          data: (rows) {
            if (rows.isEmpty) {
              return const EmptyCard(
                icon: Icons.assignment_turned_in_outlined,
                title: 'No schedules found',
                message: 'No exam schedule exists yet for your assigned classes/sections under this exam.',
              );
            }
            return DividedCard(
              children: [
                for (final r in rows)
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    title: Text('${r.className ?? ''} ${r.sectionName ?? ''}'.trim(),
                        style: const TextStyle(fontWeight: FontWeight.w600)),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 4,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(r.subjectName ?? '—'),
                          StatusBadge(
                            label: '${r.enteredCount} / ${r.totalStudents} entered',
                            variant: r.pendingCount == 0 ? BadgeVariant.success : BadgeVariant.warning,
                          ),
                        ],
                      ),
                    ),
                    trailing: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Enter Marks', style: TextStyle(color: AppColors.primary, fontSize: 13)),
                        Icon(Icons.chevron_right, color: AppColors.primary),
                      ],
                    ),
                    onTap: () => context.go('/teacher/classroom/marks/${r.examScheduleId}', extra: r),
                  ),
              ],
            );
          },
        );
  }
}

/// Web ATTENDANCE_STATUS_OPTIONS (ExamMarksEntryTable.jsx).
const _attendanceOptions = [
  (value: 'PENDING', label: 'Pending'),
  (value: 'PRESENT', label: 'Present'),
  (value: 'ABSENT', label: 'Absent'),
];

/// Port of MyExamMarksEntryPage.jsx + ExamMarksEntryTable.jsx. Same
/// save-as-you-go behaviour: attendance saves on change, marks and remarks
/// save when the field loses focus (or on Done). Absent clears and locks
/// the marks field. No grade input — grade stays School-Admin-only — and
/// no max-marks hint, because this endpoint doesn't return max_marks; the
/// server's 400 message is shown instead.
class TeacherMarksEntryScreen extends ConsumerWidget {
  const TeacherMarksEntryScreen({super.key, required this.examScheduleId, this.schedule});

  final String examScheduleId;

  /// Passed from the overview for the header; null on a cold deep link.
  final MarksEntryStatus? schedule;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = teacherExamMarksProvider(examScheduleId);
    final s = schedule;
    return TeacherPageScaffold(
      title: 'Enter Marks',
      body: AsyncValueView(
        value: ref.watch(provider),
        loadingLabel: 'Loading students…',
        onRetry: () => ref.invalidate(provider),
        data: (marks) => ResponsiveListView(
          onRefresh: () => ref.refresh(provider.future),
          children: [
            if (s != null) ...[
              Text(
                [('${s.className ?? ''} ${s.sectionName ?? ''}').trim(), s.subjectName].whereType<String>().join(' · '),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 12),
            ],
            if (marks.isEmpty)
              const EmptyCard(icon: Icons.groups_outlined, title: 'No students found')
            else
              DividedCard(
                children: [
                  for (final m in marks)
                    _MarkRow(key: ValueKey(m.markId), mark: m, examScheduleId: examScheduleId),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class _MarkRow extends ConsumerStatefulWidget {
  const _MarkRow({super.key, required this.mark, required this.examScheduleId});

  final ExamMarkEntry mark;
  final String examScheduleId;

  @override
  ConsumerState<_MarkRow> createState() => _MarkRowState();
}

class _MarkRowState extends ConsumerState<_MarkRow> {
  late final _marks = TextEditingController(text: _marksText(widget.mark.marksObtained));
  late final _remarks = TextEditingController(text: widget.mark.remarks ?? '');
  final _marksFocus = FocusNode();
  final _remarksFocus = FocusNode();
  bool _saving = false;

  static String _marksText(Decimal? d) => d?.toString() ?? '';

  @override
  void initState() {
    super.initState();
    _marksFocus.addListener(() {
      if (!_marksFocus.hasFocus) _commitMarks();
    });
    _remarksFocus.addListener(() {
      if (!_remarksFocus.hasFocus) _commitRemarks();
    });
  }

  @override
  void didUpdateWidget(covariant _MarkRow old) {
    super.didUpdateWidget(old);
    // Re-sync from the server copy after a refresh, unless the user is
    // mid-edit in that field.
    if (!_marksFocus.hasFocus) _marks.text = _marksText(widget.mark.marksObtained);
    if (!_remarksFocus.hasFocus) _remarks.text = widget.mark.remarks ?? '';
  }

  @override
  void dispose() {
    _marks.dispose();
    _remarks.dispose();
    _marksFocus.dispose();
    _remarksFocus.dispose();
    super.dispose();
  }

  Future<void> _save(Map<String, dynamic> patch) async {
    setState(() => _saving = true);
    final result = await TeacherPortalService().updateMyExamMark(widget.mark.markId, patch);
    if (!mounted) return;
    setState(() => _saving = false);
    switch (result) {
      case Ok():
        break;
      case Err(:final failure):
        showSnack(context, failure.userMessage);
    }
    // Refresh either way so a rejected value snaps back to the saved one.
    ref.invalidate(teacherExamMarksProvider(widget.examScheduleId));
  }

  void _commitMarks() {
    final text = _marks.text.trim();
    if (text == _marksText(widget.mark.marksObtained)) return;
    if (text.isEmpty) {
      _save({'marks_obtained': null});
      return;
    }
    final n = num.tryParse(text);
    if (n == null || n < 0) {
      showSnack(context, 'Enter a valid number of marks.');
      _marks.text = _marksText(widget.mark.marksObtained);
      return;
    }
    _save({'marks_obtained': n});
  }

  void _commitRemarks() {
    final text = _remarks.text.trim();
    if (text == (widget.mark.remarks ?? '')) return;
    _save({'remarks': text.isEmpty ? null : text});
  }

  void _setAttendance(String value) {
    if (value == widget.mark.attendanceStatus) return;
    if (value == 'ABSENT') _marks.text = '';
    _save({'attendance_status': value});
  }

  @override
  Widget build(BuildContext context) {
    final m = widget.mark;
    final absent = m.attendanceStatus == 'ABSENT';
    final known = _attendanceOptions.any((o) => o.value == m.attendanceStatus);

    final marksField = TextField(
      controller: _marks,
      focusNode: _marksFocus,
      enabled: !absent && !_saving,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))],
      textInputAction: TextInputAction.done,
      onSubmitted: (_) => _marksFocus.unfocus(),
      decoration: const InputDecoration(labelText: 'Marks', border: OutlineInputBorder(), isDense: true),
    );
    final remarksField = TextField(
      controller: _remarks,
      focusNode: _remarksFocus,
      enabled: !_saving,
      textInputAction: TextInputAction.done,
      onSubmitted: (_) => _remarksFocus.unfocus(),
      decoration: const InputDecoration(labelText: 'Remarks', border: OutlineInputBorder(), isDense: true),
    );

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 44,
                child: Text(m.student?.rollNo ?? '—',
                    style: const TextStyle(color: AppColors.textMuted, fontWeight: FontWeight.w600)),
              ),
              Expanded(
                child: Text(m.student?.displayName ?? '—', style: const TextStyle(fontWeight: FontWeight.w600)),
              ),
              if (_saving) const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2)),
            ],
          ),
          const SizedBox(height: 10),
          SegmentedButton<String>(
            showSelectedIcon: false,
            style: const ButtonStyle(visualDensity: VisualDensity.compact),
            segments: [for (final o in _attendanceOptions) ButtonSegment(value: o.value, label: Text(o.label))],
            selected: known ? {m.attendanceStatus} : const <String>{},
            emptySelectionAllowed: true,
            onSelectionChanged: _saving
                ? null
                : (set) {
                    if (set.isNotEmpty) _setAttendance(set.first);
                  },
          ),
          const SizedBox(height: 10),
          LayoutBuilder(
            builder: (context, c) => c.maxWidth >= 420
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [SizedBox(width: 120, child: marksField), const SizedBox(width: 12), Expanded(child: remarksField)],
                  )
                : Column(children: [marksField, const SizedBox(height: 10), remarksField]),
          ),
        ],
      ),
    );
  }
}
