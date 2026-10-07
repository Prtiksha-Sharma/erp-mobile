import 'package:decimal/decimal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_overview.dart';
import '../../../core/models/school_feed.dart';
import '../services/overview_service.dart';

/// Read providers for the School Admin overview pages (Dashboard, Student
/// Attendance report, Staff Attendance, Activity Logs) — one per web
/// `use*` query hook. Each watches the logged-in userId (a different admin
/// on the same device re-fetches) and throws the Failure itself.
Future<T> _call<T>(Ref ref, Future<Result<T>> Function(AdminOverviewService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return switch (await call(AdminOverviewService())) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
}

/// `YYYY-MM-DD` of the device's local calendar day. (The web uses
/// `toISOString().slice(0, 10)`, i.e. the UTC day, which is yesterday in
/// IST before 05:30 — mobile uses the local day.)
String overviewIsoDay(DateTime d) =>
    '${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

// ── Dashboard (features/dashboard/hooks) ─────────────────────────────────

/// useDashboardStats.
final adminDashboardStatsProvider = FutureProvider<AdminDashboardStats>((ref) => _call(ref, (s) => s.getStats()));

/// useDashboardAttendanceSummary (period=day).
final adminDashboardAttendanceTodayProvider = FutureProvider<DashboardAttendanceToday>(
  (ref) => _call(ref, (s) => s.getAttendanceToday()),
);

/// useDashboardFeeSummary (period=month).
final adminDashboardFeeCollectionProvider = FutureProvider<Map<String, Decimal>>(
  (ref) => _call(ref, (s) => s.getFeeCollectionByMonth()),
);

/// useDashboardBirthdays — today's month/day, limit 10.
final adminDashboardBirthdaysProvider = FutureProvider<List<DashboardBirthday>>(
  (ref) => _call(ref, (s) => s.getBirthdays(DateTime.now())),
);

/// useDashboardFeePendingSummary.
final adminDashboardFeeSnapshotProvider = FutureProvider<DashboardFeeSnapshot>(
  (ref) => _call(ref, (s) => s.getFeeSnapshot()),
);

/// useDashboardNotices.
final adminDashboardNoticesProvider = FutureProvider<List<SchoolNotice>>(
  (ref) => _call(ref, (s) => s.getLatestNotices()),
);

/// useDashboardUpcomingExams (the widget filters/sorts/slices).
final adminDashboardExamsProvider = FutureProvider<List<DashboardExamRow>>((ref) => _call(ref, (s) => s.getExams()));

/// useDashboardHomeworkDueSoon — due today through today + 7 days.
final adminDashboardHomeworkDueSoonProvider = FutureProvider<List<DashboardHomeworkRow>>((ref) {
  final today = DateTime.now();
  final in7Days = DateTime(today.year, today.month, today.day + 7);
  return _call(ref, (s) => s.getHomeworkDue(from: overviewIsoDay(today), to: overviewIsoDay(in7Days)));
});

/// useDashboardExamSummary.
final adminDashboardExamSummaryProvider = FutureProvider<DashboardExamSummary>(
  (ref) => _call(ref, (s) => s.getExamSummary()),
);

// ── Staff attendance (features/attendance/hooks/useAdminStaff*) ──────────

/// GET /admin/staff/attendance/daily-report for one `YYYY-MM-DD` day —
/// the Staff Attendance roster, and (for today) the dashboard's "Staff
/// Attendance Today" widget, so a save there refreshes both.
final overviewStaffAttendanceProvider = FutureProvider.family<StaffDailyAttendance, String>(
  (ref, date) => _call(ref, (s) => s.getStaffDailyAttendance(date)),
);

// ── Student attendance report (useAdminAttendanceReport) ─────────────────

/// Report filters: `month` is `YYYY-MM`; empty class/section = all.
typedef OverviewAttendanceQuery = ({String month, String classId, String sectionId, int page});

/// `YYYY-MM` → the `from`/`to` days the backend reads (overviewMonthRange).
(String, String) overviewMonthRange(String month) {
  final parts = month.split('-');
  final y = int.parse(parts[0]);
  final m = int.parse(parts[1]);
  final lastDay = DateTime(y, m + 1, 0).day;
  return ('$month-01', '$month-${lastDay.toString().padLeft(2, '0')}');
}

final overviewAttendanceReportProvider = FutureProvider.family<OverviewAttendanceReport, OverviewAttendanceQuery>((
  ref,
  q,
) {
  final (from, to) = overviewMonthRange(q.month);
  return _call(
    ref,
    (s) => s.getAttendanceReport(from: from, to: to, classId: q.classId, sectionId: q.sectionId, page: q.page),
  );
});

// ── Activity logs (useActivityLogs) ──────────────────────────────────────

typedef OverviewActivityLogQuery = ({int page, String module});

final overviewActivityLogsProvider = FutureProvider.family<ActivityLogPage, OverviewActivityLogQuery>(
  (ref, q) => _call(ref, (s) => s.getActivityLogs(page: q.page, module: q.module)),
);
