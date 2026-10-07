import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'overview_dashboard_screen.dart';
import 'school_admin_nav.dart';
import 'school_admin_page_scaffold.dart';

/// Dashboard, Student/Staff Attendance, Activity Logs — web features/dashboard (AdminDashboardPage), attendance (AdminAttendanceReportPage, AdminMarkStaffAttendancePage), audit-logs (ActivityLogsPage).
/// Every page not ported yet routes to [SchoolAdminNotOnMobileScreen].
List<RouteBase> overviewRoutes() => [
  GoRoute(path: SchoolAdminPaths.dashboard, builder: (_, _) => const SchoolAdminDashboardScreen()),
  notOnMobileRoute(SchoolAdminPaths.attendanceReport, 'Student Attendance', Icons.fact_check_outlined),
  notOnMobileRoute(SchoolAdminPaths.staffAttendance, 'Staff Attendance', Icons.fact_check_outlined),
  notOnMobileRoute(SchoolAdminPaths.activityLogs, 'Activity Logs', Icons.timeline),
];
