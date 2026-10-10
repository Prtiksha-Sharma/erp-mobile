import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/result.dart';
import '../../../core/models/hostel_warden.dart';
import '../services/hostel_warden_service.dart';

/// Read providers for the hostel warden portal. Every provider watches the
/// logged-in userId (via [_load]) so signing in as a different account on the
/// same device re-fetches instead of showing the previous user's data.
/// Date-keyed families take the `YYYY-MM-DD` string (see [apiDate]) so two
/// DateTimes on the same day share one cache entry.
Future<T> _load<T>(Ref ref, Future<Result<T>> Function(HostelWardenService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return switch (await call(HostelWardenService())) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
}

DateTime _parseDay(String day) => DateTime.parse(day);

/// Every active room with live occupancy. Screens filter by floor on the device.
final wardenRoomsProvider = FutureProvider<List<WardenRoom>>((ref) => _load(ref, (s) => s.listRooms()));

final wardenFloorsProvider = FutureProvider<List<WardenFloor>>((ref) => _load(ref, (s) => s.listFloors()));

/// ACTIVE student allocations for the active session — also the roll-call roster.
final wardenAllocationsProvider =
    FutureProvider<List<StudentRoomAllocation>>((ref) => _load(ref, (s) => s.listAllocations(status: 'ACTIVE')));

final wardenStaffAllocationsProvider =
    FutureProvider<List<StaffRoomAllocation>>((ref) => _load(ref, (s) => s.listStaffAllocations(status: 'ACTIVE')));

final wardenResidentsProvider = FutureProvider<List<HostelResident>>((ref) => _load(ref, (s) => s.listResidents()));

final wardenStudentResidentProvider = FutureProvider.family<StudentResidentProfile, String>(
  (ref, studentId) => _load(ref, (s) => s.getStudentResident(studentId)),
);

final wardenStaffResidentProvider = FutureProvider.family<StaffResidentProfile, String>(
  (ref, staffId) => _load(ref, (s) => s.getStaffResident(staffId)),
);

/// Every attendance row marked on one day, across all rooms.
final wardenAttendanceByDayProvider = FutureProvider.family<List<HostelAttendanceRecord>, String>(
  (ref, day) => _load(ref, (s) => s.listAttendance(date: _parseDay(day))),
);

/// One student's attendance over a range — keyed by (studentId, from, to).
final wardenStudentAttendanceProvider =
    FutureProvider.family<List<HostelAttendanceRecord>, ({String studentId, String from, String to})>(
  (ref, k) => _load(ref, (s) => s.listAttendance(studentId: k.studentId, from: _parseDay(k.from), to: _parseDay(k.to))),
);

/// Visitors whose visit_date falls within [from, to] (inclusive days).
final wardenVisitorsProvider = FutureProvider.family<List<HostelVisitor>, ({String from, String to})>(
  (ref, k) => _load(ref, (s) => s.listVisitors(from: _parseDay(k.from), to: _parseDay(k.to))),
);

final wardenEffectiveMenuProvider = FutureProvider.family<List<EffectiveMeal>, String>(
  (ref, day) => _load(ref, (s) => s.getEffectiveMenu(_parseDay(day))),
);

final wardenWeeklyMenuProvider = FutureProvider<List<MessMenuEntry>>((ref) => _load(ref, (s) => s.listWeeklyMenu()));

/// Special-day overrides from today onward.
final wardenSpecialMenuProvider = FutureProvider<List<MessSpecialMenuEntry>>(
  (ref) => _load(ref, (s) => s.listSpecialMenu(from: DateTime.now())),
);

final wardenStudentSearchProvider = FutureProvider.family<List<WardenStudentRef>, String>(
  (ref, q) => _load(ref, (s) => s.searchStudents(q)),
);

final wardenStaffSearchProvider = FutureProvider.family<List<WardenStaffRef>, String>(
  (ref, q) => _load(ref, (s) => s.searchStaff(q)),
);

/// Refetches everything an allocation / room change can affect (occupancy,
/// floors, residents, the roll-call roster).
void invalidateHostelOccupancy(WidgetRef ref) {
  ref
    ..invalidate(wardenRoomsProvider)
    ..invalidate(wardenFloorsProvider)
    ..invalidate(wardenAllocationsProvider)
    ..invalidate(wardenStaffAllocationsProvider)
    ..invalidate(wardenResidentsProvider)
    ..invalidate(wardenStudentResidentProvider)
    ..invalidate(wardenStaffResidentProvider);
}

void invalidateHostelMess(WidgetRef ref) {
  ref
    ..invalidate(wardenEffectiveMenuProvider)
    ..invalidate(wardenWeeklyMenuProvider)
    ..invalidate(wardenSpecialMenuProvider);
}
