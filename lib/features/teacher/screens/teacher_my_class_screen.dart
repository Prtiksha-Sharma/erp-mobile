import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/models/teacher_classroom.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/info_field.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/teacher_portal_providers.dart';
import 'teacher_page_scaffold.dart';

/// Port of MyClassPage.jsx (Class Teacher only) — Students (searchable
/// roster; tap a student for performance) and Birthdays tabs. The web's
/// 8-column table becomes one card per student.
class TeacherMyClassScreen extends ConsumerWidget {
  const TeacherMyClassScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!ref.watch(isClassTeacherProvider)) {
      return const TeacherPageScaffold(
        title: 'My Class',
        body: ClassTeacherOnlyNotice(icon: Icons.groups_outlined, feature: 'My Class is'),
      );
    }
    return const DefaultTabController(
      length: 2,
      child: TeacherPageScaffold(
        title: 'My Class',
        bottom: TabBar(tabs: [Tab(text: 'Students'), Tab(text: 'Birthdays')]),
        body: TabBarView(children: [_StudentsTab(), _BirthdaysTab()]),
      ),
    );
  }
}

class _StudentsTab extends ConsumerStatefulWidget {
  const _StudentsTab();

  @override
  ConsumerState<_StudentsTab> createState() => _StudentsTabState();
}

class _StudentsTabState extends ConsumerState<_StudentsTab> with AutomaticKeepAliveClientMixin {
  final _search = TextEditingController();
  Timer? _debounce;
  String _query = '';

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    _debounce?.cancel();
    _search.dispose();
    super.dispose();
  }

  void _onChanged(String v) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 350), () {
      if (mounted) setState(() => _query = v.trim());
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final provider = myClassStudentsProvider(_query);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
          child: ResponsiveCenter(
            child: TextField(
              controller: _search,
              onChanged: _onChanged,
              textInputAction: TextInputAction.search,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search by name, admission no. or roll no…',
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),
          ),
        ),
        Expanded(
          child: AsyncValueView(
            value: ref.watch(provider),
            loadingLabel: 'Loading…',
            onRetry: () => ref.invalidate(provider),
            data: (roster) => ResponsiveListView(
              onRefresh: () => ref.refresh(provider.future),
              children: [
                if (roster.data.isEmpty)
                  const EmptyCard(
                    icon: Icons.groups_outlined,
                    title: 'No students found',
                    message: 'Students in your assigned section will appear here.',
                  )
                else
                  ResponsiveGrid(
                    minItemWidth: 340,
                    maxColumns: 3,
                    children: [for (final s in roster.data) _StudentCard(student: s)],
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _StudentCard extends StatelessWidget {
  const _StudentCard({required this.student});

  final MyClassStudent student;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.6)),
      ),
      child: InkWell(
        onTap: () => context.go('/teacher/classroom/my-class/students/${student.studentId}', extra: student.name),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: AppColors.primaryLight,
                    child: Text(
                      student.rollNo ?? '—',
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColors.primary),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      student.name,
                      style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.primary),
                    ),
                  ),
                  StatusBadge(label: student.feeStatus ?? 'NO_RECORD', variant: feeStatusVariant(student.feeStatus)),
                ],
              ),
              const SizedBox(height: 12),
              InfoGrid(
                minColumnWidth: 140,
                children: [
                  InfoField(label: 'Gender', value: student.gender),
                  InfoField(
                    label: 'Attendance',
                    value: student.attendancePct == null ? null : '${student.attendancePct}%',
                  ),
                  InfoField(label: 'Parent', value: student.parentName),
                  InfoField(label: 'Contact', value: student.contactNumber),
                  InfoField(label: 'Bus Route', value: student.busRoute),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BirthdaysTab extends ConsumerWidget {
  const _BirthdaysTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncValueView(
      value: ref.watch(myClassBirthdaysProvider),
      loadingLabel: 'Loading birthdays…',
      onRetry: () => ref.invalidate(myClassBirthdaysProvider),
      data: (b) => ResponsiveListView(
        onRefresh: () => ref.refresh(myClassBirthdaysProvider.future),
        children: [
          if (b.today.isEmpty && b.upcoming.isEmpty)
            const EmptyCard(
              icon: Icons.cake_outlined,
              title: 'No birthdays coming up',
              message: 'Birthdays in the next 30 days will appear here.',
            ),
          if (b.today.isNotEmpty) ...[
            const SectionLabel('Today'),
            _BirthdayGrid(entries: b.today),
            const SizedBox(height: 20),
          ],
          if (b.upcoming.isNotEmpty) ...[
            const SectionLabel('Upcoming (next 30 days)'),
            _BirthdayGrid(entries: b.upcoming),
          ],
        ],
      ),
    );
  }
}

class _BirthdayGrid extends StatelessWidget {
  const _BirthdayGrid({required this.entries});

  final List<BirthdayEntry> entries;

  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      minItemWidth: 260,
      maxColumns: 3,
      children: [
        for (final e in entries)
          SectionCard(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                const TintedIcon(icon: Icons.cake_outlined, color: AppColors.primary, size: 36),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(e.name, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w600)),
                      Text(formatDate(e.dob), style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

/// Port of MyClassStudentPerformancePage.jsx — per-month attendance trend
/// and exam summary for one student in the Class Teacher's section.
class TeacherStudentPerformanceScreen extends ConsumerWidget {
  const TeacherStudentPerformanceScreen({super.key, required this.studentId, this.studentName});

  final String studentId;

  /// Passed from the roster; the endpoint itself doesn't return a name.
  final String? studentName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!ref.watch(isClassTeacherProvider)) {
      return const TeacherPageScaffold(
        title: 'Student Performance',
        body: ClassTeacherOnlyNotice(icon: Icons.trending_up, feature: 'Student performance is'),
      );
    }
    final provider = studentPerformanceProvider(studentId);
    return TeacherPageScaffold(
      title: 'Student Performance',
      body: AsyncValueView(
        value: ref.watch(provider),
        loadingLabel: 'Loading performance…',
        onRetry: () => ref.invalidate(provider),
        data: (p) {
          final attendance = SectionCard(
            title: 'Attendance Trend',
            icon: Icons.event_available_outlined,
            padding: EdgeInsets.zero,
            child: p.attendanceTrend.isEmpty
                ? const Padding(padding: EdgeInsets.all(16), child: Text('No attendance data'))
                : Column(
                    children: [
                      for (final (i, t) in p.attendanceTrend.indexed) ...[
                        if (i > 0) const Divider(height: 1),
                        ListTile(
                          dense: true,
                          title: Text(_monthLabel(t.month)),
                          trailing: Text(
                            t.attendancePct == null ? '—' : '${t.attendancePct}%',
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ],
                  ),
          );
          final exams = SectionCard(
            title: 'Exam Summary',
            icon: Icons.assignment_outlined,
            padding: EdgeInsets.zero,
            child: p.examSummary.isEmpty
                ? const Padding(padding: EdgeInsets.all(16), child: Text('No exam records'))
                : Column(
                    children: [
                      for (final (i, r) in p.examSummary.indexed) ...[
                        if (i > 0) const Divider(height: 1),
                        _ExamSummaryTile(row: r),
                      ],
                    ],
                  ),
          );
          return ResponsiveListView(
            onRefresh: () => ref.refresh(provider.future),
            children: [
              if (studentName != null) ...[
                Text(studentName!, style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 12),
              ],
              if (context.isExpandedWidth)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 320, child: attendance),
                    const SizedBox(width: 16),
                    Expanded(child: exams),
                  ],
                )
              else ...[
                attendance,
                const SizedBox(height: 16),
                exams,
              ],
            ],
          );
        },
      ),
    );
  }

  /// `2026-09` → `Sep 2026` (the web shows the raw key; this reads better
  /// on a phone and carries the same information).
  static String _monthLabel(String key) {
    const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    final parts = key.split('-');
    final m = parts.length == 2 ? int.tryParse(parts[1]) : null;
    return (m == null || m < 1 || m > 12) ? key : '${months[m - 1]} ${parts[0]}';
  }
}

class _ExamSummaryTile extends StatelessWidget {
  const _ExamSummaryTile({required this.row});

  final ExamSummaryRow row;

  @override
  Widget build(BuildContext context) {
    final marks = row.attendanceStatus == 'ABSENT' ? '—' : '${row.marksObtained ?? '—'} / ${row.maxMarks ?? '—'}';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(row.subjectName ?? '—', style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(
                  [row.examName ?? '—', if (row.grade != null) 'Grade ${row.grade}'].join(' · '),
                  style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(marks, style: const TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(height: 4),
              StatusBadge(
                label: row.attendanceStatus ?? '—',
                variant: examAttendanceVariant(row.attendanceStatus),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
