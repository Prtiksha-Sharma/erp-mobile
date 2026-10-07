import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_management.dart';
import '../../../core/models/admin_management_reports.dart';
import '../../../core/models/timetable_entry.dart';
import '../services/management_reports_service.dart';
import '../services/management_teachers_service.dart';

/// Read providers for Reports, Teacher Management and Principal Management
/// (web features/reports, teachers, principals, vice-principals). Each
/// watches the logged-in userId, like school_admin_providers.dart. The
/// Principal / Vice Principal rosters reuse staffListProvider /
/// staffDetailProvider / rolePermissionsProvider from there.
Future<T> _reports<T>(Ref ref, Future<Result<T>> Function(AdminReportsService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return _unwrap(await call(AdminReportsService()));
}

Future<T> _teachers<T>(Ref ref, Future<Result<T>> Function(TeacherManagementService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return _unwrap(await call(TeacherManagementService()));
}

T _unwrap<T>(Result<T> result) => switch (result) {
  Ok(:final value) => value,
  Err(:final failure) => throw failure,
};

// ── Reports ──────────────────────────────────────────────────────────────

final studentStatusReportProvider = FutureProvider<Map<String, int>>(
  (ref) => _reports(ref, (s) => s.getStudentStatus()),
);

final genderReportProvider = FutureProvider<Map<String, int>>((ref) => _reports(ref, (s) => s.getGender()));

final classStrengthReportProvider = FutureProvider<List<ClassStrengthRow>>(
  (ref) => _reports(ref, (s) => s.getClassStrength()),
);

final promotionReportProvider = FutureProvider<List<PromotionReportRow>>(
  (ref) => _reports(ref, (s) => s.getPromotions()),
);

final birthdayReportProvider = FutureProvider.family<BirthdayReportPage, BirthdayReportQuery>(
  (ref, q) => _reports(ref, (s) => s.getBirthdays(month: q.month, day: q.day, page: q.page)),
);

final admissionReportProvider = FutureProvider<AdmissionReportResult>((ref) => _reports(ref, (s) => s.getAdmissions()));

final leaveReportProvider = FutureProvider.family<LeaveReportPage, LeaveReportQuery>(
  (ref, q) => _reports(ref, (s) => s.getLeaves(q)),
);

final studentProfileReportProvider = FutureProvider.family<StudentProfileReport, String>(
  (ref, id) => _reports(ref, (s) => s.getStudentProfile(id)),
);

// ── Teacher Management ───────────────────────────────────────────────────

final classTeacherDashboardProvider = FutureProvider<ClassTeacherDashboard>(
  (ref) => _teachers(ref, (s) => s.getDashboard()),
);

/// Also the page's session source: the backend resolves the active
/// academic session and echoes its id + name.
final classTeacherOverviewProvider = FutureProvider<ClassTeacherOverview>(
  (ref) => _teachers(ref, (s) => s.getOverview()),
);

/// The active session's id — what the web reads from its Redux context.
final managementActiveSessionIdProvider = FutureProvider<String>((ref) async {
  final overview = await ref.watch(classTeacherOverviewProvider.future);
  final id = overview.sessionId;
  if (id == null || id.isEmpty) throw StateError('No active academic session found for your institution');
  return id;
});

final classTeacherAssignmentsProvider = FutureProvider<List<ClassTeacherAssignmentRecord>>((ref) async {
  final sessionId = await ref.watch(managementActiveSessionIdProvider.future);
  return _teachers(ref, (s) => s.getAssignments(sessionId: sessionId));
});

final classTeacherHistoryProvider = FutureProvider.family<ClassTeacherHistoryPage, ClassTeacherHistoryQuery>(
  (ref, q) => _teachers(ref, (s) => s.getHistory(classId: q.classId, sectionId: q.sectionId, page: q.page)),
);

final classTeacherAttendanceMonitoringProvider = FutureProvider<ClassTeacherAttendanceMonitoring>(
  (ref) => _teachers(ref, (s) => s.getAttendanceMonitoring()),
);

final classTeacherHomeworkMonitoringProvider = FutureProvider<ClassTeacherHomeworkMonitoring>(
  (ref) => _teachers(ref, (s) => s.getHomeworkMonitoring()),
);

/// Keyed by exam id ('' = latest exam).
final classTeacherPerformanceProvider = FutureProvider.family<ClassTeacherPerformanceMonitoring, String>(
  (ref, examId) => _teachers(ref, (s) => s.getPerformanceMonitoring(examId)),
);

final classTeacherRosterStatsProvider = FutureProvider.family<ClassTeacherRosterStats, String>(
  (ref, assignmentId) => _teachers(ref, (s) => s.getRosterStats(assignmentId)),
);

final teacherWorkloadReportProvider = FutureProvider<List<TeacherWorkloadRow>>(
  (ref) => _teachers(ref, (s) => s.getWorkload()),
);

final teacherHomeworkStatusReportProvider = FutureProvider<List<TeacherHomeworkStatusRow>>(
  (ref) => _teachers(ref, (s) => s.getHomeworkStatus()),
);

final teacherMarksEntryReportProvider = FutureProvider.family<List<TeacherMarksEntryRow>, String>(
  (ref, examId) => _teachers(ref, (s) => s.getMarksEntryStatus(examId)),
);

final managementExamOptionsProvider = FutureProvider<List<ManagementExamOption>>(
  (ref) => _teachers(ref, (s) => s.getExams()),
);

/// One teacher's timetable for the active session (useTeacherTimetable).
final managementTeacherTimetableProvider = FutureProvider.family<List<TimetableEntry>, String>((ref, staffId) async {
  final sessionId = await ref.watch(managementActiveSessionIdProvider.future);
  return _teachers(ref, (s) => s.getTeacherTimetable(staffId: staffId, sessionId: sessionId));
});

// ── Principal Management ─────────────────────────────────────────────────

final principalActivityProvider = FutureProvider<List<PrincipalActivityItem>>(
  (ref) => _teachers(ref, (s) => s.getPrincipalActivity(limit: 20)),
);

/// Assignment-history filters (useAssignmentHistory).
typedef ClassTeacherHistoryQuery = ({String classId, String sectionId, int page});
