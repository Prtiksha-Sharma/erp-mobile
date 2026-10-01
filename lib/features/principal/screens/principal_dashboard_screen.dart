import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/models/principal_dashboard.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../providers/principal_portal_providers.dart';
import 'principal_page_scaffold.dart';

/// Port of PrincipalDashboardPage.jsx — header, two rows of four stat tiles,
/// today's attendance breakdown + pending leaves, then Upcoming Exams beside
/// Announcements / Upcoming Events. Everything comes from the one aggregated
/// GET /principal/dashboard call, like the web.
class PrincipalDashboardScreen extends ConsumerWidget {
  const PrincipalDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(principalDashboardProvider);
    return PrincipalPageScaffold(
      title: 'Dashboard',
      body: PrincipalAsyncView(
        value: value,
        loadingLabel: 'Loading dashboard…',
        errorTitle: 'Failed to load the dashboard.',
        onRetry: () => ref.invalidate(principalDashboardProvider),
        data: (data) => ResponsiveListView(
          onRefresh: () async {
            // The header's school name rides on the profile (the web reads
            // it from the login context instead).
            ref.invalidate(principalProfileProvider);
            return ref.refresh(principalDashboardProvider.future);
          },
          children: [
            const _Header(),
            const SizedBox(height: 16),
            _StatTiles(data: data),
            const SizedBox(height: 12),
            _AttendanceAndLeaves(data: data),
            const SizedBox(height: 16),
            _MainLayout(data: data),
          ],
        ),
      ),
    );
  }
}

class _Header extends ConsumerWidget {
  const _Header();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final institutionName = ref.watch(principalProfileProvider).value?.institution?.institutionName;
    final today = DateFormat('EEEE, dd MMMM yyyy').format(DateTime.now());
    final theme = Theme.of(context);
    // Full width so it stays left-aligned like the web — ResponsiveListView
    // centers any child narrower than the content column.
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Principal Dashboard', style: theme.textTheme.headlineSmall),
          const SizedBox(height: 2),
          Text(
            '${institutionName ?? 'Your School'} · $today',
            style: theme.textTheme.bodyMedium?.copyWith(color: AppColors.textMuted),
          ),
        ],
      ),
    );
  }
}

class _StatTiles extends StatelessWidget {
  const _StatTiles({required this.data});

  final PrincipalDashboard data;

  @override
  Widget build(BuildContext context) {
    final vacancy = data.classTeacherVacancy;
    String count(int? n) => n == null ? '—' : '$n';

    // Web: 1 column → 2 (sm) → 4 (lg). Phones get two narrow columns here
    // rather than eight full-width rows; tablets get all four across.
    return ResponsiveGrid(
      minItemWidth: 160,
      maxColumns: 4,
      children: [
        PrincipalStatTile(
          tint: AppColors.primaryLight,
          leading: const TintedIcon(icon: Icons.groups_outlined, color: AppColors.primary),
          value: count(data.totalStudents),
          label: 'Total Students',
        ),
        PrincipalStatTile(
          tint: AppColors.violetLight,
          leading: const TintedIcon(icon: Icons.school_outlined, color: AppColors.violet),
          value: count(data.totalTeachers),
          label: 'Total Teachers',
        ),
        PrincipalStatTile(
          tint: AppColors.amberLight,
          leading: const TintedIcon(icon: Icons.work_outline, color: AppColors.amber),
          value: count(data.totalStaff),
          label: 'Total Staff',
        ),
        PrincipalStatTile(
          tint: AppColors.successBg,
          leading: AttendanceRateRing(percent: data.studentAttendancePct, size: 48, stroke: 5),
          value: '',
          label: 'Student attendance · today',
        ),
        PrincipalStatTile(
          tint: AppColors.successBg,
          leading: const TintedIcon(icon: Icons.currency_rupee, color: AppColors.success),
          value: formatAmount(data.feeCollectionToday),
          label: 'Fee Collected Today',
        ),
        PrincipalStatTile(
          tint: AppColors.dangerBg,
          leading: const TintedIcon(icon: Icons.currency_rupee, color: AppColors.danger),
          value: formatAmount(data.pendingFeeAmount),
          label: 'Pending Fee Amount',
        ),
        PrincipalStatTile(
          tint: AppColors.primaryLight,
          leading: const TintedIcon(icon: Icons.person_add_alt_outlined, color: AppColors.primary),
          value: '${data.newAdmissions}',
          label: 'New Admissions (this session)',
        ),
        PrincipalStatTile(
          tint: AppColors.amberLight,
          leading: const TintedIcon(icon: Icons.gpp_maybe_outlined, color: AppColors.amber),
          value: '${vacancy?.unassigned ?? 0} / ${vacancy?.totalSections ?? 0}',
          label: 'Class-Teacher Vacancy',
        ),
      ],
    );
  }
}

class _AttendanceAndLeaves extends StatelessWidget {
  const _AttendanceAndLeaves({required this.data});

  final PrincipalDashboard data;

  @override
  Widget build(BuildContext context) {
    final attendance = data.todayAttendance;
    final leaves = data.pendingLeaveRequests;
    return ResponsiveGrid(
      minItemWidth: 300,
      maxColumns: 2,
      children: [
        SectionCard(
          title: "Today's Staff/Student Attendance",
          icon: Icons.schedule_outlined,
          child: Wrap(
            spacing: 16,
            runSpacing: 8,
            children: [
              _InfoStat(label: 'Present', value: attendance['PRESENT'] ?? 0, color: AppColors.success),
              _InfoStat(label: 'Absent', value: attendance['ABSENT'] ?? 0, color: AppColors.danger),
              _InfoStat(label: 'Half Day', value: attendance['HALF_DAY'] ?? 0, color: AppColors.amber),
            ],
          ),
        ),
        SectionCard(
          title: 'Pending Leave Requests',
          icon: Icons.calendar_month_outlined,
          child: Wrap(
            spacing: 16,
            runSpacing: 8,
            children: [
              _InfoStat(label: 'Staff', value: leaves?.staff ?? 0, color: AppColors.amber),
              _InfoStat(label: 'Student', value: leaves?.student ?? 0, color: AppColors.amber),
            ],
          ),
        ),
      ],
    );
  }
}

/// Coloured dot + count + caption (the web page's local InfoStat).
class _InfoStat extends StatelessWidget {
  const _InfoStat({required this.label, required this.value, required this.color});

  final String label;
  final int value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(width: 8, height: 8, decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
        const SizedBox(width: 8),
        Text('$value', style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary)),
        const SizedBox(width: 6),
        Text(label, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textMuted)),
      ],
    );
  }
}

class _MainLayout extends StatelessWidget {
  const _MainLayout({required this.data});

  final PrincipalDashboard data;

  @override
  Widget build(BuildContext context) {
    final exams = _ExamsCard(exams: data.upcomingExams);
    final side = [
      _AnnouncementsCard(data: data),
      const SizedBox(height: 16),
      _EventsCard(data: data),
    ];

    // Web: `xl:grid-cols-[1fr_300px]` — exams beside a 300px side column on
    // wide screens, everything stacked otherwise.
    if (context.isExpandedWidth) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: exams),
          const SizedBox(width: 16),
          SizedBox(width: 300, child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: side)),
        ],
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [exams, const SizedBox(height: 16), ...side],
    );
  }
}

/// Rows separated by hairline dividers — the web's `divide-y` list inside a
/// dense SectionCard.
class _DividedRows extends StatelessWidget {
  const _DividedRows({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final divider = Divider(height: 1, color: Theme.of(context).colorScheme.outlineVariant.withValues(alpha: 0.6));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var i = 0; i < children.length; i++) ...[
          if (i > 0) divider,
          Padding(padding: const EdgeInsets.symmetric(vertical: 10), child: children[i]),
        ],
      ],
    );
  }
}

class _ExamsCard extends StatelessWidget {
  const _ExamsCard({required this.exams});

  final List<DashboardExam> exams;

  @override
  Widget build(BuildContext context) {
    final caption = Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textMuted);
    return SectionCard(
      title: 'Upcoming Exams',
      icon: Icons.school_outlined,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: exams.isEmpty
          ? const EmptyState(
              icon: Icons.school_outlined,
              title: 'No upcoming exams',
              message: 'Scheduled exams will show up here.',
            )
          : _DividedRows(children: [
              for (final exam in exams)
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            exam.examName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                          if (exam.examType != null) Text(exam.examType!, style: caption),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(formatDate(exam.startDate), style: caption),
                  ],
                ),
            ]),
    );
  }
}

class _AnnouncementsCard extends StatelessWidget {
  const _AnnouncementsCard({required this.data});

  final PrincipalDashboard data;

  @override
  Widget build(BuildContext context) {
    final caption = Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textMuted);
    return SectionCard(
      title: 'Announcements',
      icon: Icons.campaign_outlined,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: data.announcements.isEmpty
          ? const EmptyState(
              icon: Icons.campaign_outlined,
              title: 'No announcements',
              message: 'Active notices will appear here.',
            )
          : _DividedRows(children: [
              for (final n in data.announcements)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 6,
                      height: 6,
                      margin: const EdgeInsets.only(top: 7),
                      decoration: const BoxDecoration(color: AppColors.violet, shape: BoxShape.circle),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(n.title, style: const TextStyle(fontWeight: FontWeight.w600)),
                          const SizedBox(height: 2),
                          Text(formatDate(n.noticeDate), style: caption),
                        ],
                      ),
                    ),
                  ],
                ),
            ]),
    );
  }
}

class _EventsCard extends StatelessWidget {
  const _EventsCard({required this.data});

  final PrincipalDashboard data;

  @override
  Widget build(BuildContext context) {
    final caption = Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textMuted);
    return SectionCard(
      title: 'Upcoming Events',
      icon: Icons.calendar_month_outlined,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: data.upcomingEvents.isEmpty
          ? const EmptyState(
              icon: Icons.calendar_month_outlined,
              title: 'No upcoming events',
              message: 'Scheduled events will appear here.',
            )
          : _DividedRows(children: [
              for (final ev in data.upcomingEvents)
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        ev.eventName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(formatDate(ev.eventDate), style: caption),
                  ],
                ),
            ]),
    );
  }
}
