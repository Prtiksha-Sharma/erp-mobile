import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_campus_hostel.dart';
import '../../../core/models/admin_campus_library.dart';
import '../../../core/models/admin_campus_parents.dart';
import '../../../core/models/admin_campus_reception.dart';
import '../../../core/models/admin_campus_transport.dart';
import '../../../core/models/student_brief.dart';
import '../services/campus_oversight_service.dart';
import '../services/campus_parents_service.dart';

/// Read providers for the campus area (web features/parents, library,
/// reception, transport, hostel) — one per web `use*` query hook. Each
/// watches the logged-in userId (a different admin on the same device
/// re-fetches) and throws the Failure itself, same as
/// school_admin_providers.dart.
Future<T> _run<T>(Ref ref, Future<Result<T>> Function() call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return switch (await call()) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
}

// ── Parents (features/parents/hooks) ─────────────────────────────────────

/// useParentList — keyed by the full filter set.
final parentListProvider = FutureProvider.family<ParentAccountPage, ParentQuery>(
  (ref, q) => _run(ref, () => AdminParentsService().list(q)),
);

/// useParentDetail.
final parentDetailProvider = FutureProvider.family<ParentAccount, String>(
  (ref, id) => _run(ref, () => AdminParentsService().detail(id)),
);

/// useStudentOptionsForParentLink — empty search never hits the API.
final parentStudentOptionsProvider = FutureProvider.family<List<StudentBrief>, String>((ref, search) async {
  if (search.trim().isEmpty) return const [];
  return _run(ref, () => AdminParentsService().searchStudents(search.trim()));
});

// ── Library (features/library/hooks) ─────────────────────────────────────

/// useAdminLibraryBooks — `(search, category)`.
final libraryBooksProvider = FutureProvider.family<List<LibraryBook>, (String, String)>(
  (ref, f) => _run(ref, () => AdminLibraryService().books(search: f.$1, category: f.$2)),
);

final libraryBookDetailProvider = FutureProvider.family<LibraryBook, String>(
  (ref, id) => _run(ref, () => AdminLibraryService().book(id)),
);

/// useAdminLibraryIssues — `(status, overdueOnly)`.
final libraryIssuesProvider = FutureProvider.family<List<LibraryIssue>, (String, bool)>(
  (ref, f) => _run(ref, () => AdminLibraryService().issues(status: f.$1, overdueOnly: f.$2)),
);

final libraryOverdueReportProvider = FutureProvider<LibraryOverdueReport>(
  (ref) => _run(ref, () => AdminLibraryService().overdueReport()),
);

final libraryActivityProvider = FutureProvider<List<LibraryActivityItem>>(
  (ref) => _run(ref, () => AdminLibraryService().activity()),
);

final libraryFineSettingsProvider = FutureProvider<LibraryFineSettings>(
  (ref) => _run(ref, () => AdminLibraryService().fineSettings()),
);

// ── Reception (features/reception/hooks) ─────────────────────────────────

final receptionSummaryProvider = FutureProvider<List<ReceptionistSummary>>(
  (ref) => _run(ref, () => AdminReceptionService().summary()),
);

final receptionActivityProvider = FutureProvider.family<ReceptionistActivity, String>(
  (ref, staffId) => _run(ref, () => AdminReceptionService().activity(staffId)),
);

// ── Transport (features/transport/hooks) ─────────────────────────────────

final fleetBusesProvider = FutureProvider<List<FleetBus>>((ref) => _run(ref, () => AdminTransportService().buses()));

final fleetDriversProvider = FutureProvider<List<FleetDriver>>(
  (ref) => _run(ref, () => AdminTransportService().drivers()),
);

final fleetRoutesProvider = FutureProvider<List<FleetRoute>>(
  (ref) => _run(ref, () => AdminTransportService().routes()),
);

final fleetAssignmentsProvider = FutureProvider<List<FleetStudentAssignment>>(
  (ref) => _run(ref, () => AdminTransportService().assignments()),
);

/// Keyed by bus id ('' = all buses).
final fleetVehicleAssignmentsProvider = FutureProvider.family<List<FleetVehicleAssignment>, String>(
  (ref, busId) => _run(ref, () => AdminTransportService().vehicleAssignments(busId: busId)),
);

/// `(driverId, status)`, '' = all.
final fleetTripsProvider = FutureProvider.family<List<FleetTrip>, (String, String)>(
  (ref, f) => _run(ref, () => AdminTransportService().trips(driverId: f.$1, status: f.$2)),
);

/// Keyed by `YYYY-MM-DD`.
final driverAttendanceReportProvider = FutureProvider.family<DriverAttendanceReport, String>(
  (ref, date) => _run(ref, () => AdminTransportService().driverAttendance(date)),
);

final fleetDriverDocumentsProvider = FutureProvider.family<List<FleetDriverDocument>, String>(
  (ref, driverId) => _run(ref, () => AdminTransportService().driverDocuments(driverId)),
);

/// The live board; the screen re-fetches it every 30 seconds (the web's
/// refetchInterval).
final liveBoardProvider = FutureProvider<LiveBoard>((ref) => _run(ref, () => AdminTransportService().liveBoard()));

// ── Hostel (features/hostel/hooks) ───────────────────────────────────────

final hostelDashboardProvider = FutureProvider<HostelDashboard>(
  (ref) => _run(ref, () => AdminHostelService().dashboard()),
);

final campusHostelsProvider = FutureProvider<List<CampusHostel>>(
  (ref) => _run(ref, () => AdminHostelService().hostels()),
);

/// Keyed by the floor filter text ('' = every floor).
final hostelRoomsProvider = FutureProvider.family<List<HostelRoom>, String>(
  (ref, floor) => _run(ref, () => AdminHostelService().rooms(floorNumber: floor)),
);

/// `(roomId, status)`, '' = all.
final hostelStudentsProvider = FutureProvider.family<List<HostelAllocation>, (String, String)>(
  (ref, f) => _run(ref, () => AdminHostelService().students(roomId: f.$1, status: f.$2)),
);

final hostelStudentHistoryProvider = FutureProvider.family<List<HostelAllocation>, String>(
  (ref, studentId) => _run(ref, () => AdminHostelService().studentHistory(studentId)),
);

final hostelWardensProvider = FutureProvider<List<HostelWarden>>(
  (ref) => _run(ref, () => AdminHostelService().wardens()),
);

final hostelWardenDetailProvider = FutureProvider.family<HostelWarden, String>(
  (ref, staffId) => _run(ref, () => AdminHostelService().warden(staffId)),
);

final hostelOccupancyProvider = FutureProvider<HostelOccupancyReport>(
  (ref) => _run(ref, () => AdminHostelService().occupancy()),
);

/// `(fromDate, toDate)` as `YYYY-MM-DD`, '' = open-ended.
final hostelAttendanceSummaryProvider = FutureProvider.family<HostelAttendanceSummary, (String, String)>(
  (ref, f) => _run(ref, () => AdminHostelService().attendanceSummary(fromDate: f.$1, toDate: f.$2)),
);
