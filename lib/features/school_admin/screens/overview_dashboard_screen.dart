import 'dart:math' as math;

import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/models/admin_overview.dart';
import '../../../core/models/school_feed.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/responsive.dart';
import '../providers/overview_providers.dart';
import '../providers/school_admin_providers.dart';
import 'overview_widgets.dart';
import 'school_admin_nav.dart';
import 'school_admin_page_scaffold.dart';

/// StatCard's ACCENT_DEEP tints — the dashboard's four stat cards only
/// (the web scopes these to `gradient && elevateOnHover`, i.e. this page).
const _deepBlue = Color(0xFFDBEAFE);
const _deepViolet = Color(0xFFDDD6FE);
const _deepEmerald = Color(0xFFA7F3D0);
const _deepRose = Color(0xFFFECDD3);

/// STATUS_COLORS of ApplicationsByStatusWidget (unknown → secondary text).
Color _applicationStatusColor(String status) => switch (status) {
  'Submitted' => AppColors.amber,
  'Payment Verified' => AppColors.primary,
  'Rejected' => AppColors.danger,
  'Registered' => AppColors.success,
  'Final Selected' => AppColors.violet,
  'Qualified' => AppColors.emerald,
  _ => AppColors.textSecondary,
};

/// Admin Dashboard — web features/dashboard/pages/AdminDashboardPage.jsx,
/// where a School Admin lands. Every widget is one of the web's: header +
/// welcome banner, 4 stat cards, class-wise strength + gender ratio, quick
/// access, applications by status, attendance today, monthly fee
/// collection, birthdays, transport, fee pending, announcements, upcoming
/// exams, homework due soon, exam statistics and staff attendance today.
/// School Admin passes every role gate the web applies to these widgets.
class SchoolAdminDashboardScreen extends ConsumerWidget {
  const SchoolAdminDashboardScreen({super.key});

  static String _todayKey() => overviewIsoDay(DateTime.now());

  Future<void> _refresh(WidgetRef ref) async {
    ref
      ..invalidate(adminDashboardStatsProvider)
      ..invalidate(adminDashboardAttendanceTodayProvider)
      ..invalidate(adminDashboardFeeCollectionProvider)
      ..invalidate(adminDashboardBirthdaysProvider)
      ..invalidate(adminDashboardFeeSnapshotProvider)
      ..invalidate(adminDashboardNoticesProvider)
      ..invalidate(adminDashboardExamsProvider)
      ..invalidate(adminDashboardHomeworkDueSoonProvider)
      ..invalidate(adminDashboardExamSummaryProvider)
      ..invalidate(overviewStaffAttendanceProvider(_todayKey()));
    await ref.read(adminDashboardStatsProvider.future).then((_) {}, onError: (_) {});
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final institutionName = ref.watch(schoolLogoProvider)?.institutionName;
    final stats = ref.watch(adminDashboardStatsProvider);
    final attendance = ref.watch(adminDashboardAttendanceTodayProvider);
    final s = stats.value;
    final presentRate = attendance.value == null ? null : _AttendanceCounts(attendance.value!.summary).presentRate;

    return SchoolAdminPageScaffold(
      title: 'Dashboard',
      body: ResponsiveListView(
        onRefresh: () => _refresh(ref),
        children: [
          _Header(institutionName: institutionName),
          const SizedBox(height: 16),
          _WelcomeBanner(institutionName: institutionName, loading: stats.isLoading),
          const SizedBox(height: 16),
          ResponsiveGrid(
            minItemWidth: 260,
            maxColumns: 4,
            spacing: 16,
            children: [
              _StatCard(
                icon: Icons.school_outlined,
                label: 'Total Students',
                value: s?.students?.total.toString(),
                color: AppColors.primary,
                background: _deepBlue,
                active: s?.students?.active,
                inactive: s?.students?.inactive,
              ),
              _StatCard(
                icon: Icons.assignment_outlined,
                label: 'Total Applications',
                value: s?.applications?.total.toString(),
                color: AppColors.violet,
                background: _deepViolet,
              ),
              _StatCard(
                icon: Icons.how_to_reg_outlined,
                label: 'Present Today',
                value: presentRate == null ? '—' : '$presentRate%',
                color: AppColors.emerald,
                background: _deepEmerald,
              ),
              _StatCard(
                icon: Icons.error_outline,
                label: 'Rejected Applications',
                value: s?.applications?.rejected.toString(),
                color: AppColors.rose,
                background: _deepRose,
              ),
            ],
          ),
          const SizedBox(height: 16),
          OverviewSplit(
            first: _ClassStrengthWidget(stats: stats),
            second: _GenderRatioWidget(stats: stats),
          ),
          const SizedBox(height: 20),
          const _QuickAccess(),
          const SizedBox(height: 20),
          OverviewSplit(
            first: _ApplicationsByStatusWidget(stats: stats),
            second: _AttendanceTodayWidget(value: attendance),
          ),
          const SizedBox(height: 16),
          const OverviewSplit(first: _FeeCollectionWidget(), second: _BirthdaysWidget()),
          const SizedBox(height: 16),
          LayoutBuilder(
            builder: (context, c) => Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: c.maxWidth >= 840 ? (c.maxWidth - 32) / 3 : c.maxWidth,
                child: _TransportWidget(stats: stats),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const OverviewSplit(firstFlex: 1, first: _FeePendingWidget(), second: _AnnouncementsWidget()),
          const SizedBox(height: 16),
          const OverviewSplit(firstFlex: 1, first: _UpcomingExamsWidget(), second: _HomeworkDueSoonWidget()),
          const SizedBox(height: 16),
          const _ExamStatisticsWidget(),
          const SizedBox(height: 16),
          LayoutBuilder(
            builder: (context, c) => Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: c.maxWidth >= 600 ? (c.maxWidth - 16) / 2 : c.maxWidth,
                child: _StaffAttendanceTodayWidget(date: _todayKey()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Header + banner ──────────────────────────────────────────────────────

class _Header extends StatelessWidget {
  const _Header({required this.institutionName});

  final String? institutionName;

  @override
  Widget build(BuildContext context) {
    final wide = context.isTabletWidth;
    final title = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Admin Dashboard',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
        ),
        const SizedBox(height: 2),
        Text('Overview of ${institutionName ?? 'your school'}', style: const TextStyle(color: AppColors.textMuted)),
      ],
    );
    final buttons = Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        // The web hides "Fees Details" below `sm` (640px).
        if (wide) OutlinedButton(onPressed: () => context.go(SchoolAdminPaths.fees), child: const Text('Fees Details')),
        FilledButton.icon(
          onPressed: () => context.go(SchoolAdminPaths.students),
          icon: const Icon(Icons.add, size: 18),
          label: const Text('Add New Student'),
        ),
      ],
    );
    if (!wide) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [title, const SizedBox(height: 12), buttons],
      );
    }
    return Row(
      children: [
        Expanded(child: title),
        const SizedBox(width: 12),
        buttons,
      ],
    );
  }
}

String _greeting(DateTime now) => now.hour < 12
    ? 'Good morning'
    : now.hour < 17
    ? 'Good afternoon'
    : 'Good evening';

class _WelcomeBanner extends ConsumerWidget {
  const _WelcomeBanner({required this.institutionName, required this.loading});

  final String? institutionName;
  final bool loading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider).user;
    final now = DateTime.now();
    final name = user?.fullName ?? user?.username ?? 'Admin';
    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.isTabletWidth ? 28 : 20, vertical: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.primaryLight, Theme.of(context).colorScheme.surface],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${_greeting(now)}, $name 👋',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
                ),
                const SizedBox(height: 6),
                Text(
                  '${institutionName ?? 'Your School'}  ·  School Admin',
                  style: const TextStyle(color: AppColors.textSecondary),
                ),
              ],
            ),
          ),
          // Weekday + date, hidden below `sm` like the web.
          if (context.isTabletWidth) ...[
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (loading) const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2)),
                Text(DateFormat('EEEE').format(now), style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                Text(
                  DateFormat('d MMM yyyy').format(now),
                  style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

/// StatCard (gradient + elevateOnHover): white icon panel, value, label,
/// optional "Active : n | Inactive : n" footer.
class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
    required this.background,
    this.active,
    this.inactive,
  });

  final IconData icon;
  final String label;
  final String? value;
  final Color color;
  final Color background;
  final int? active;
  final int? inactive;

  @override
  Widget build(BuildContext context) {
    final surface = Theme.of(context).colorScheme.surface;
    return Container(
      constraints: const BoxConstraints(minHeight: 112),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 88,
              color: surface,
              alignment: Alignment.center,
              child: Icon(icon, size: 40, color: color),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          value ?? '—',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          label,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: AppColors.textMuted),
                        ),
                      ],
                    ),
                    if (active != null || inactive != null) ...[
                      const SizedBox(height: 10),
                      const Divider(height: 1, color: AppColors.border),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 12,
                        runSpacing: 4,
                        children: [
                          if (active != null) _ActiveInactive(label: 'Active', value: active!),
                          if (inactive != null) _ActiveInactive(label: 'Inactive', value: inactive!),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActiveInactive extends StatelessWidget {
  const _ActiveInactive({required this.label, required this.value});

  final String label;
  final int value;

  @override
  Widget build(BuildContext context) => Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: '$label : ',
          style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
        ),
        TextSpan(
          text: '$value',
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
        ),
      ],
    ),
  );
}

// ── Class strength + gender ratio ────────────────────────────────────────

/// classSortKey(): the first number in the class name, nameless last.
int _classSortKey(String? name) {
  final m = RegExp(r'\d+').firstMatch(name ?? '');
  return m == null ? 1 << 30 : int.parse(m.group(0)!);
}

class _ClassStrengthWidget extends ConsumerWidget {
  const _ClassStrengthWidget({required this.stats});

  final AsyncValue<AdminDashboardStats> stats;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OverviewCard(
      icon: Icons.bar_chart,
      title: 'Class-wise Strength',
      tint: AppColors.emeraldLight,
      // Web → /admin/reports/strength (a Reports sub-page).
      trailing: OverviewViewAll(onTap: () => context.go(SchoolAdminPaths.reports)),
      child: OverviewAsync(
        value: stats,
        onRetry: () => ref.invalidate(adminDashboardStatsProvider),
        data: (s) {
          final rows = [...?s.students?.classWiseStrength]
            ..sort((a, b) => _classSortKey(a.className).compareTo(_classSortKey(b.className)));
          if (rows.isEmpty) {
            return const EmptyState(
              icon: Icons.bar_chart,
              title: 'No students yet',
              message: 'Class-wise strength will appear here once students are enrolled.',
            );
          }
          final max = rows.map((r) => r.total).fold<int>(1, math.max);
          return SizedBox(
            height: 160,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                for (final r in rows)
                  Expanded(
                    child: Tooltip(
                      message: '${r.className ?? '—'}: ${r.total}',
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: FractionallySizedBox(
                                  heightFactor: math.max(0.04, r.total / max),
                                  child: Container(
                                    constraints: const BoxConstraints(maxWidth: 32),
                                    decoration: BoxDecoration(
                                      color: r.total == max ? AppColors.emerald : AppColors.textMuted,
                                      borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              r.className ?? '—',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 11, color: AppColors.textMuted),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _GenderRatioWidget extends ConsumerWidget {
  const _GenderRatioWidget({required this.stats});

  final AsyncValue<AdminDashboardStats> stats;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OverviewCard(
      icon: Icons.groups_outlined,
      title: 'Gender Ratio',
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [_deepBlue, _deepViolet],
      ),
      child: OverviewAsync(
        value: stats,
        onRetry: () => ref.invalidate(adminDashboardStatsProvider),
        data: (s) {
          final dist = s.students?.genderDistribution ?? const {};
          final male = dist['Male'] ?? 0;
          final female = dist['Female'] ?? 0;
          final total = male + female;
          if (total == 0) {
            return const EmptyState(
              icon: Icons.groups_outlined,
              title: 'No gender data yet',
              message: 'Boys/girls ratio will appear here once students are registered.',
            );
          }
          final boysPct = (male / total * 100).round();
          final girlsPct = 100 - boysPct;
          return Row(
            children: [
              SizedBox(
                width: 112,
                height: 112,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: male / total,
                      strokeWidth: 14,
                      strokeCap: StrokeCap.butt,
                      color: AppColors.primary,
                      backgroundColor: AppColors.violet,
                    ),
                    Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FittedBox(
                            child: Text(
                              '$total',
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ),
                          const Text(
                            'TOTAL',
                            style: TextStyle(fontSize: 10, letterSpacing: 0.8, color: AppColors.textMuted),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  children: [
                    _GenderLegend(color: AppColors.primary, label: 'Boys', count: male, pct: boysPct),
                    const SizedBox(height: 12),
                    _GenderLegend(color: AppColors.violet, label: 'Girls', count: female, pct: girlsPct),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _GenderLegend extends StatelessWidget {
  const _GenderLegend({required this.color, required this.label, required this.count, required this.pct});

  final Color color;
  final String label;
  final int count;
  final int pct;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
              ),
              Text(
                '$count students',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Text(
          '$pct%',
          style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
        ),
      ],
    );
  }
}

// ── Quick access ─────────────────────────────────────────────────────────

/// QUICK_LINKS — a School Admin holds every module they're gated on.
class _QuickAccess extends StatelessWidget {
  const _QuickAccess();

  static const _links = <(IconData, String, String, Color, Color)>[
    (Icons.person_add_alt, 'New Admission', SchoolAdminPaths.students, AppColors.primary, AppColors.primaryLight),
    (
      Icons.fact_check_outlined,
      'Attendance',
      SchoolAdminPaths.attendanceReport,
      AppColors.emerald,
      AppColors.emeraldLight,
    ),
    (Icons.attach_money, 'Collect Fees', SchoolAdminPaths.fees, AppColors.amber, AppColors.amberLight),
    (Icons.school_outlined, 'Teachers', SchoolAdminPaths.staff, AppColors.violet, AppColors.violetLight),
    (Icons.description_outlined, 'Exams', SchoolAdminPaths.exams, AppColors.rose, AppColors.roseLight),
    (Icons.bar_chart, 'Reports', SchoolAdminPaths.reports, AppColors.teal, AppColors.tealLight),
  ];

  @override
  Widget build(BuildContext context) {
    final surface = Theme.of(context).colorScheme.surface;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'QUICK ACCESS',
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, letterSpacing: 0.8, color: AppColors.textMuted),
        ),
        const SizedBox(height: 10),
        OverviewTileGrid(
          columns: context.isTabletWidth ? 6 : 3,
          children: [
            for (final (icon, label, path, color, bg) in _links)
              Material(
                color: bg,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(color: AppColors.border),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () => context.go(path),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                    child: Column(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(color: surface, borderRadius: BorderRadius.circular(12)),
                          child: Icon(icon, size: 20, color: color),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          label,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

// ── Applications + attendance ────────────────────────────────────────────

class _ApplicationsByStatusWidget extends ConsumerWidget {
  const _ApplicationsByStatusWidget({required this.stats});

  final AsyncValue<AdminDashboardStats> stats;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OverviewCard(
      icon: Icons.assignment_outlined,
      title: 'Applications by Status',
      tint: AppColors.primaryLight,
      child: OverviewAsync(
        value: stats,
        onRetry: () => ref.invalidate(adminDashboardStatsProvider),
        data: (s) {
          final entries = (s.applications?.byStatus ?? const <String, int>{}).entries.toList();
          if (entries.isEmpty) {
            return const EmptyState(
              icon: Icons.assignment_outlined,
              title: 'No applications yet',
              message: 'Application breakdowns will appear here once submissions come in.',
            );
          }
          return LayoutBuilder(
            builder: (context, c) => OverviewTileGrid(
              columns: c.maxWidth >= 420 ? 3 : 2,
              children: [
                for (final e in entries)
                  OverviewCountTile(value: '${e.value}', label: e.key, color: _applicationStatusColor(e.key)),
              ],
            ),
          );
        },
      ),
    );
  }
}

/// PRESENT/ABSENT/LATE counts of a status → count summary.
class _AttendanceCounts {
  _AttendanceCounts(Map<String, int> summary)
    : present = summary['PRESENT'] ?? 0,
      absent = summary['ABSENT'] ?? 0,
      late = summary['LATE'] ?? 0;

  final int present;
  final int absent;
  final int late;

  int get total => present + absent + late;

  int? get presentRate => total > 0 ? (present / total * 100).round() : null;
}

class _AttendanceTodayWidget extends ConsumerWidget {
  const _AttendanceTodayWidget({required this.value});

  final AsyncValue<DashboardAttendanceToday> value;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OverviewCard(
      icon: Icons.how_to_reg_outlined,
      title: 'Attendance Today',
      tint: AppColors.pageBg,
      child: OverviewAsync(
        value: value,
        onRetry: () => ref.invalidate(adminDashboardAttendanceTodayProvider),
        data: (d) {
          final c = _AttendanceCounts(d.summary);
          if (c.total == 0) {
            return const EmptyState(
              icon: Icons.how_to_reg_outlined,
              title: 'No attendance marked yet',
              message: "Today's attendance summary will appear here.",
            );
          }
          return OverviewTileGrid(
            columns: 2,
            children: [
              OverviewCountTile(
                value: '${c.present}',
                label: 'Present',
                color: AppColors.success,
                background: AppColors.successBg,
              ),
              OverviewCountTile(
                value: '${c.absent}',
                label: 'Absent',
                color: AppColors.danger,
                background: AppColors.dangerBg,
              ),
              OverviewCountTile(
                value: '${c.late}',
                label: 'Late',
                color: AppColors.amber,
                background: AppColors.amberLight,
              ),
              if (c.presentRate != null)
                OverviewCountTile(
                  value: '${c.presentRate}%',
                  label: 'Present rate',
                  color: AppColors.primary,
                  background: AppColors.primaryLight,
                ),
            ],
          );
        },
      ),
    );
  }
}

// ── Fees + birthdays ─────────────────────────────────────────────────────

/// formatMonthLabel(): `2026-09` → `Sep 2026`, a yearly bucket as-is.
String _monthLabel(String key) {
  final parts = key.split('-');
  if (parts.length < 2) return key;
  final y = int.tryParse(parts[0]);
  final m = int.tryParse(parts[1]);
  if (y == null || m == null) return key;
  return DateFormat('MMM yyyy').format(DateTime(y, m));
}

class _FeeCollectionWidget extends ConsumerWidget {
  const _FeeCollectionWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OverviewCard(
      icon: Icons.trending_up,
      title: 'Fee Collection (Monthly)',
      tint: AppColors.emeraldLight,
      child: OverviewAsync(
        value: ref.watch(adminDashboardFeeCollectionProvider),
        onRetry: () => ref.invalidate(adminDashboardFeeCollectionProvider),
        data: (buckets) {
          final keys = buckets.keys.toList()..sort();
          final months = keys.length > 6 ? keys.sublist(keys.length - 6) : keys;
          if (months.isEmpty) {
            return const EmptyState(
              icon: Icons.trending_up,
              title: 'No collections yet',
              message: 'Monthly fee collection will appear here once payments come in.',
            );
          }
          final max = months.map((k) => buckets[k]!).fold<Decimal>(Decimal.one, (a, b) => b > a ? b : a);
          final surface = Theme.of(context).colorScheme.surface;
          return Column(
            children: [
              for (final key in months) ...[
                Row(
                  children: [
                    Expanded(
                      child: Text(_monthLabel(key), style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                    ),
                    Text(
                      formatAmount(buckets[key]),
                      style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                ClipRRect(
                  borderRadius: BorderRadius.circular(99),
                  child: LinearProgressIndicator(
                    value: (buckets[key]!.toDouble() / max.toDouble()).clamp(0, 1),
                    minHeight: 8,
                    color: AppColors.emerald,
                    backgroundColor: surface,
                  ),
                ),
                if (key != months.last) const SizedBox(height: 10),
              ],
            ],
          );
        },
      ),
    );
  }
}

class _BirthdaysWidget extends ConsumerWidget {
  const _BirthdaysWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OverviewCard(
      icon: Icons.cake_outlined,
      title: 'Birthdays Today',
      tint: AppColors.roseLight,
      child: OverviewAsync(
        value: ref.watch(adminDashboardBirthdaysProvider),
        onRetry: () => ref.invalidate(adminDashboardBirthdaysProvider),
        data: (items) {
          if (items.isEmpty) {
            return const EmptyState(
              icon: Icons.cake_outlined,
              title: 'No birthdays today',
              message: 'Students celebrating today will appear here.',
            );
          }
          return _Rows(
            children: [
              for (final b in items)
                Row(
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      decoration: const BoxDecoration(color: AppColors.roseLight, shape: BoxShape.circle),
                      child: const Icon(Icons.cake_outlined, size: 16, color: AppColors.rose),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [_RowTitle(_birthdayName(b)), _RowCaption(_birthdayClass(b))],
                      ),
                    ),
                  ],
                ),
            ],
          );
        },
      ),
    );
  }
}

String _birthdayName(DashboardBirthday b) {
  final name = [b.firstName, b.middleName, b.lastName].whereType<String>().where((s) => s.isNotEmpty).join(' ');
  return name.isEmpty ? 'Unknown Student' : name;
}

String _birthdayClass(DashboardBirthday b) {
  final cs = [b.className, b.sectionName].whereType<String>().where((s) => s.isNotEmpty).join(' - ');
  if (cs.isNotEmpty) return cs;
  return (b.admissionNo?.isNotEmpty ?? false) ? b.admissionNo! : '—';
}

// ── Transport ────────────────────────────────────────────────────────────

class _TransportWidget extends ConsumerWidget {
  const _TransportWidget({required this.stats});

  final AsyncValue<AdminDashboardStats> stats;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OverviewCard(
      icon: Icons.directions_bus_outlined,
      title: 'Transport',
      child: OverviewAsync(
        value: stats,
        onRetry: () => ref.invalidate(adminDashboardStatsProvider),
        data: (s) {
          final t = s.transport ?? const DashboardTransportStats();
          final hasTransport = t.totalBuses > 0 || t.totalDrivers > 0 || t.studentsOnTransport > 0;
          if (!hasTransport) {
            return const EmptyState(
              icon: Icons.directions_bus_outlined,
              title: 'No transport set up yet',
              message: 'Bus, driver and route statistics will appear here once buses and routes are added in the Transport module.',
            );
          }
          final delays = t.delaysFlaggedToday;
          return OverviewTileGrid(
            columns: 2,
            spans: const {2: 2, 3: 2},
            children: [
              OverviewCountTile(
                value: '${t.activeBuses}/${t.totalBuses}',
                label: 'Active Buses',
                color: AppColors.primary,
                background: AppColors.primaryLight,
              ),
              OverviewCountTile(
                value: '${t.activeDrivers}/${t.totalDrivers}',
                label: 'Active Drivers',
                color: AppColors.violet,
                background: AppColors.violetLight,
              ),
              OverviewCountTile(
                value: '${t.studentsOnTransport}',
                label: 'Students on Transport',
                color: AppColors.emerald,
                background: AppColors.emeraldLight,
              ),
              if (delays > 0)
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(color: AppColors.dangerBg, borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error_outline, size: 16, color: AppColors.danger),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Text(
                          '$delays delay${delays == 1 ? '' : 's'} flagged today',
                          style: const TextStyle(fontSize: 12, color: AppColors.danger),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

// ── Fee pending + announcements ──────────────────────────────────────────

class _FeePendingWidget extends ConsumerWidget {
  const _FeePendingWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OverviewCard(
      icon: Icons.account_balance_wallet_outlined,
      title: 'Fee Pending Summary',
      tint: AppColors.pageBg,
      child: OverviewAsync(
        value: ref.watch(adminDashboardFeeSnapshotProvider),
        onRetry: () => ref.invalidate(adminDashboardFeeSnapshotProvider),
        data: (f) => OverviewTileGrid(
          columns: 2,
          spans: const {2: 2},
          children: [
            OverviewCountTile(
              value: formatAmount(f.pendingAmount),
              label: 'Pending Fees',
              color: AppColors.danger,
              background: AppColors.dangerBg,
            ),
            OverviewCountTile(
              value: '${f.studentsWithPendingFees}',
              label: 'Students with Dues',
              color: AppColors.amber,
              background: AppColors.amberLight,
            ),
            OverviewCountTile(
              value: formatAmount(f.todaysCollection),
              label: 'Collected Today',
              color: AppColors.success,
              background: AppColors.successBg,
            ),
          ],
        ),
      ),
    );
  }
}

class _AnnouncementsWidget extends ConsumerWidget {
  const _AnnouncementsWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // The web's "View all" goes to /admin/notices, a page with no School
    // Admin drawer entry or mobile route — so no link here.
    return OverviewCard(
      icon: Icons.campaign_outlined,
      title: 'Announcements',
      tint: AppColors.primaryLight,
      child: OverviewAsync(
        value: ref.watch(adminDashboardNoticesProvider),
        onRetry: () => ref.invalidate(adminDashboardNoticesProvider),
        data: (List<SchoolNotice> items) {
          if (items.isEmpty) {
            return const EmptyState(
              icon: Icons.campaign_outlined,
              title: 'No announcements yet',
              message: 'Notices published by School Admin will appear here.',
            );
          }
          return _Rows(
            children: [
              for (final n in items)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [_RowTitle(n.title), _RowCaption(formatDate(n.noticeDate))],
                ),
            ],
          );
        },
      ),
    );
  }
}

// ── Exams + homework ─────────────────────────────────────────────────────

class _UpcomingExamsWidget extends ConsumerWidget {
  const _UpcomingExamsWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OverviewCard(
      icon: Icons.description_outlined,
      title: 'Upcoming Exams',
      tint: AppColors.violetLight,
      trailing: OverviewViewAll(onTap: () => context.go(SchoolAdminPaths.exams)),
      child: OverviewAsync(
        value: ref.watch(adminDashboardExamsProvider),
        onRetry: () => ref.invalidate(adminDashboardExamsProvider),
        data: (exams) {
          // start_date is a @db.Date (UTC midnight): compare calendar days.
          final now = DateTime.now();
          final today = DateTime.utc(now.year, now.month, now.day);
          final upcoming = exams.where((e) => e.startDate != null && !e.startDate!.isBefore(today)).toList()
            ..sort((a, b) => a.startDate!.compareTo(b.startDate!));
          final shown = upcoming.take(5).toList();
          if (shown.isEmpty) {
            return const EmptyState(
              icon: Icons.description_outlined,
              title: 'No upcoming exams',
              message: 'Scheduled exams for this session will appear here.',
            );
          }
          return _Rows(
            children: [
              for (final e in shown)
                _DatedRow(title: e.examName, caption: e.examType?.typeName ?? '—', date: e.startDate),
            ],
          );
        },
      ),
    );
  }
}

class _HomeworkDueSoonWidget extends ConsumerWidget {
  const _HomeworkDueSoonWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OverviewCard(
      icon: Icons.menu_book_outlined,
      title: 'Homework Due Soon',
      tint: AppColors.tealLight,
      trailing: OverviewViewAll(onTap: () => context.go(SchoolAdminPaths.homework)),
      child: OverviewAsync(
        value: ref.watch(adminDashboardHomeworkDueSoonProvider),
        onRetry: () => ref.invalidate(adminDashboardHomeworkDueSoonProvider),
        data: (all) {
          final items = all.take(5).toList();
          if (items.isEmpty) {
            return const EmptyState(
              icon: Icons.menu_book_outlined,
              title: 'No homework due soon',
              message: 'Homework due in the next 7 days will appear here.',
            );
          }
          return _Rows(
            children: [
              for (final hw in items)
                _DatedRow(
                  title: hw.title,
                  caption: [
                    hw.classRef?.className,
                    hw.sectionRef?.sectionName,
                    hw.subject?.subjectName,
                  ].whereType<String>().where((s) => s.isNotEmpty).join(' · '),
                  date: hw.dueDate,
                ),
            ],
          );
        },
      ),
    );
  }
}

class _ExamStatisticsWidget extends ConsumerWidget {
  const _ExamStatisticsWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OverviewCard(
      icon: Icons.emoji_events_outlined,
      title: 'Exam Statistics',
      tint: AppColors.amberLight,
      child: OverviewAsync(
        value: ref.watch(adminDashboardExamSummaryProvider),
        onRetry: () => ref.invalidate(adminDashboardExamSummaryProvider),
        data: (s) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LayoutBuilder(
              builder: (context, c) => OverviewTileGrid(
                columns: c.maxWidth >= 560 ? 5 : 2,
                children: [
                  OverviewCountTile(value: '${s.totalExams}', label: 'Total Exams', color: AppColors.primary),
                  OverviewCountTile(value: '${s.upcomingExams}', label: 'Upcoming Exams', color: AppColors.amber),
                  OverviewCountTile(value: '${s.completedExams}', label: 'Completed Exams', color: AppColors.emerald),
                  OverviewCountTile(
                    value: '${s.resultsPublished}',
                    label: 'Results Published',
                    color: AppColors.success,
                  ),
                  OverviewCountTile(
                    value: '${s.resultsPendingPublish}',
                    label: 'Results Pending',
                    color: AppColors.danger,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Completed and Upcoming won't always add up to Total — exams in progress or without dates set fall into neither.",
              style: TextStyle(fontSize: 12, color: AppColors.textMuted),
            ),
          ],
        ),
      ),
    );
  }
}

class _StaffAttendanceTodayWidget extends ConsumerWidget {
  const _StaffAttendanceTodayWidget({required this.date});

  final String date;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OverviewCard(
      icon: Icons.fact_check_outlined,
      title: 'Staff Attendance Today',
      tint: AppColors.emeraldLight,
      child: OverviewAsync(
        value: ref.watch(overviewStaffAttendanceProvider(date)),
        onRetry: () => ref.invalidate(overviewStaffAttendanceProvider(date)),
        data: (report) {
          final rows = report.data;
          if (rows.isEmpty) {
            return const EmptyState(
              icon: Icons.fact_check_outlined,
              title: 'No staff records yet',
              message: 'Staff attendance for today will appear here.',
            );
          }
          int count(bool Function(String? s) test) => rows.where((r) => test(r.attendance?.status)).length;
          return OverviewTileGrid(
            columns: 2,
            children: [
              OverviewCountTile(value: '${count((s) => s == 'PRESENT')}', label: 'Present', color: AppColors.success),
              OverviewCountTile(
                value: '${count((s) => s == 'ABSENT')}',
                label: 'Absent',
                color: AppColors.danger,
                background: AppColors.dangerBg,
              ),
              OverviewCountTile(
                value: '${count((s) => s == 'ON_LEAVE' || s == 'HALF_DAY')}',
                label: 'On Leave / Half Day',
                color: AppColors.amber,
                background: AppColors.amberLight,
              ),
              OverviewCountTile(
                value: '${rows.where((r) => r.attendance == null).length}',
                label: 'Not Marked',
                color: AppColors.textSecondary,
              ),
            ],
          );
        },
      ),
    );
  }
}

// ── List rows ────────────────────────────────────────────────────────────

/// `divide-y` list inside a widget card.
class _Rows extends StatelessWidget {
  const _Rows({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var i = 0; i < children.length; i++) ...[
          if (i > 0) const Divider(height: 1, color: AppColors.border),
          Padding(padding: const EdgeInsets.symmetric(vertical: 10), child: children[i]),
        ],
      ],
    );
  }
}

class _DatedRow extends StatelessWidget {
  const _DatedRow({required this.title, required this.caption, required this.date});

  final String title;
  final String caption;
  final DateTime? date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_RowTitle(title), _RowCaption(caption)],
          ),
        ),
        const SizedBox(width: 12),
        Text(formatDate(date), style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
      ],
    );
  }
}

class _RowTitle extends StatelessWidget {
  const _RowTitle(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Text(
    text,
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
    style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
  );
}

class _RowCaption extends StatelessWidget {
  const _RowCaption(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 2),
    child: Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
    ),
  );
}
