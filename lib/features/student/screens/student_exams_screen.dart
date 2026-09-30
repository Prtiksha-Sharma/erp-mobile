import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/student_exams.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/student_portal_providers.dart';
import 'student_page_scaffold.dart';

/// Port of MyExamsPage.jsx — Datesheet / Results tabs, both an expandable
/// card per exam (schedule rows grouped by exam, like the web's
/// groupByExam). A report card is only fetched when its card is expanded.
class StudentExamsScreen extends ConsumerWidget {
  const StudentExamsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: StudentPageScaffold(
        title: 'My Exams',
        bottom: const TabBar(tabs: [Tab(text: 'Datesheet'), Tab(text: 'Results')]),
        body: AsyncValueView(
          value: ref.watch(myExamsProvider),
          loadingLabel: 'Loading your exams…',
          onRetry: () => ref.invalidate(myExamsProvider),
          data: (schedules) {
            final exams = groupSchedulesByExam(schedules);
            Future<void> refresh() => ref.refresh(myExamsProvider.future);
            return TabBarView(
              children: [
                ResponsiveListView(
                  onRefresh: refresh,
                  children: exams.isEmpty
                      ? const [
                          EmptyState(
                            icon: Icons.description_outlined,
                            title: 'No exams scheduled',
                            message: 'Your exam datesheet will appear here once your School Admin schedules one.',
                          ),
                        ]
                      : [
                          for (final e in exams)
                            _ExamCard(group: e, child: _DatesheetRows(subjects: e.subjects)),
                        ],
                ),
                ResponsiveListView(
                  onRefresh: refresh,
                  children: exams.isEmpty
                      ? const [
                          EmptyState(
                            icon: Icons.emoji_events_outlined,
                            title: 'No exams yet',
                            message: 'Your results will appear here once exams are scheduled and marks are entered.',
                          ),
                        ]
                      : [for (final e in exams) _ExamCard(group: e, child: _ReportCardView(examId: e.exam.examId))],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _ExamCard extends StatelessWidget {
  const _ExamCard({required this.group, required this.child});

  final ExamGroup group;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Card(
        elevation: 0,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.6)),
        ),
        child: ExpansionTile(
          shape: const Border(),
          collapsedShape: const Border(),
          leading: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(color: AppColors.emerald, borderRadius: BorderRadius.circular(10)),
            child: const Icon(Icons.done_all, color: Colors.white, size: 18),
          ),
          title: Text(group.exam.examName, style: const TextStyle(fontWeight: FontWeight.w600)),
          subtitle: group.exam.examType?.typeName == null
              ? null
              : Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: StatusBadge(label: group.exam.examType!.typeName!, variant: BadgeVariant.primary),
                  ),
                ),
          childrenPadding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
          children: [child],
        ),
      ),
    );
  }
}

class _DatesheetRows extends StatelessWidget {
  const _DatesheetRows({required this.subjects});

  final List<ExamSchedule> subjects;

  @override
  Widget build(BuildContext context) {
    final sorted = [...subjects]
      ..sort((a, b) => (a.examDate ?? DateTime(0)).compareTo(b.examDate ?? DateTime(0)));
    final muted = Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.outline);

    return DividedCard(
      children: [
        for (final s in sorted)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(s.subject?.subjectName ?? '—', style: const TextStyle(fontWeight: FontWeight.w600)),
                      const SizedBox(height: 2),
                      Text(
                        [
                          s.examDate == null ? 'TBA' : formatDate(s.examDate),
                          if (s.startTime != null)
                            s.endTime != null
                                ? '${formatClockTime(s.startTime)} – ${formatClockTime(s.endTime)}'
                                : formatClockTime(s.startTime),
                          if (s.room != null) 'Room ${s.room}',
                        ].join(' · '),
                        style: muted,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Max Marks', style: muted),
                    Text(s.maxMarks?.toString() ?? '—', style: const TextStyle(fontWeight: FontWeight.w600)),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class _ReportCardView extends ConsumerWidget {
  const _ReportCardView({required this.examId});

  final String examId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = myReportCardProvider(examId);
    return ref.watch(provider).when(
          loading: () => const LoadingView(label: 'Loading report card…', compact: true),
          error: (err, _) => Column(
            children: [
              Icon(Icons.error_outline, color: Theme.of(context).colorScheme.error),
              const SizedBox(height: 6),
              Text(describeError(err), textAlign: TextAlign.center),
              TextButton.icon(
                onPressed: () => ref.invalidate(provider),
                icon: const Icon(Icons.refresh, size: 16),
                label: const Text('Retry'),
              ),
            ],
          ),
          data: (card) {
            final student = card.student;
            if (!card.isPublished || student == null) {
              return EmptyState(
                icon: Icons.schedule,
                title: 'Not published yet',
                message: card.message ?? 'Your School Admin has not released these results yet.',
              );
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _MarksTable(subjects: student.subjects),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(color: const Color(0xFF1E293B), borderRadius: BorderRadius.circular(12)),
                  child: ResponsiveGrid(
                    minItemWidth: 130,
                    minColumns: 2,
                    maxColumns: 4,
                    spacing: 8,
                    children: [
                      _SummaryCell('Rank', student.rank?.toString() ?? '—'),
                      _SummaryCell('Total', student.totalMax.toString()),
                      _SummaryCell('Marks Obtained', student.totalObtained.toString()),
                      _SummaryCell('Percentage', student.percentage == null ? '—' : '${student.percentage}%'),
                    ],
                  ),
                ),
              ],
            );
          },
        );
  }
}

/// 4 short columns fit a 320dp phone, so this stays a real table on every
/// screen size (the web's report-card table, minus horizontal scroll).
class _MarksTable extends StatelessWidget {
  const _MarksTable({required this.subjects});

  final List<ReportCardSubject> subjects;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final header = theme.textTheme.labelSmall?.copyWith(color: scheme.outline, letterSpacing: 0.5);
    TableRow row(List<Widget> cells, {Color? color}) => TableRow(
          decoration: BoxDecoration(color: color),
          children: [for (final c in cells) Padding(padding: const EdgeInsets.all(10), child: c)],
        );

    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Table(
        border: TableBorder(
          horizontalInside: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.6)),
          top: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.6)),
          bottom: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.6)),
        ),
        columnWidths: const {0: FlexColumnWidth(2.2), 1: FlexColumnWidth(1), 2: FlexColumnWidth(1), 3: FlexColumnWidth(1.3)},
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          row([
            Text('SUBJECT', style: header),
            Text('MAX', style: header),
            Text('MIN', style: header),
            Text('OBTAINED', style: header),
          ], color: scheme.surfaceContainerLow),
          for (final s in subjects)
            row([
              Text(s.subjectName),
              Text(s.maxMarks?.toString() ?? '—'),
              Text(s.passingMarks?.toString() ?? '—'),
              Text(
                s.wasAbsent ? 'Absent' : (s.marksObtained?.toString() ?? '—'),
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: s.wasAbsent ? AppColors.danger : null,
                ),
              ),
            ]),
        ],
      ),
    );
  }
}

class _SummaryCell extends StatelessWidget {
  const _SummaryCell(this.label, this.value);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.white70, fontSize: 11)),
        Text(value, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 15)),
      ],
    );
  }
}
