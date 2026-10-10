import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_campus_hostel.dart';
import '../services/admin_hostel_service.dart';

/// Read providers for hostel oversight (web features/hostel/hooks) — shared
/// by School Admin and Vice Principal. Each watches the logged-in userId (a
/// different account on the same device re-fetches) and throws the Failure
/// itself, read back through describeError().
Future<T> _run<T>(Ref ref, Future<Result<T>> Function(AdminHostelService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return switch (await call(AdminHostelService())) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
}

final hostelDashboardProvider = FutureProvider<HostelDashboard>((ref) => _run(ref, (s) => s.dashboard()));

final campusHostelsProvider = FutureProvider<List<CampusHostel>>((ref) => _run(ref, (s) => s.hostels()));

/// `status` filter: 'ACTIVE' / 'VACATED' / '' (all).
final hostelStudentsProvider = FutureProvider.family<List<HostelAllocation>, String>(
  (ref, status) => _run(ref, (s) => s.students(status: status)),
);

final hostelStudentHistoryProvider = FutureProvider.family<List<HostelAllocation>, String>(
  (ref, studentId) => _run(ref, (s) => s.studentHistory(studentId)),
);

final hostelWardensProvider = FutureProvider<List<HostelWarden>>((ref) => _run(ref, (s) => s.wardens()));

final hostelWardenDetailProvider = FutureProvider.family<HostelWarden, String>(
  (ref, staffId) => _run(ref, (s) => s.warden(staffId)),
);

/// Active rooms with live occupancy — backs both the Rooms page and the
/// occupancy report (GET /admin/hostel/rooms has no occupancy figures).
final hostelOccupancyProvider = FutureProvider<HostelOccupancyReport>((ref) => _run(ref, (s) => s.occupancy()));

/// `(fromDate, toDate)` as `YYYY-MM-DD`, '' = open-ended.
final hostelAttendanceSummaryProvider = FutureProvider.family<HostelAttendanceSummary, (String, String)>(
  (ref, f) => _run(ref, (s) => s.attendanceSummary(fromDate: f.$1, toDate: f.$2)),
);

/// After a hostel / warden write.
void invalidateHostelOversight(WidgetRef ref) {
  ref
    ..invalidate(hostelDashboardProvider)
    ..invalidate(campusHostelsProvider)
    ..invalidate(hostelWardensProvider)
    ..invalidate(hostelWardenDetailProvider);
}
