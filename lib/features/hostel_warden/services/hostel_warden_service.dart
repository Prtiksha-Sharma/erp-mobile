import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/hostel_warden.dart';

/// Every `/hostel/*` endpoint the mobile app uses — mirrors the web's
/// hostelWardenService.js. The backend resolves the warden from the JWT
/// (authorize("Hostel Warden") + staff_accounts lookup), so no staffId or
/// institutionId is ever sent; session_id is omitted everywhere and the
/// backend falls back to the institution's active academic session.
/// No endpoint paginates — lists come back whole.
class HostelWardenService {
  Dio get _dio => DioClient.instance.dio;

  Future<List<T>> _list<T>(String path, T Function(Map<String, dynamic>) fromJson,
      {Map<String, dynamic>? query}) async {
    final res = await _dio.get(path, queryParameters: query);
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<T> _one<T>(String path, T Function(Map<String, dynamic>) fromJson, {Map<String, dynamic>? query}) async {
    final res = await _dio.get(path, queryParameters: query);
    return fromJson(res.data['data'] as Map<String, dynamic>);
  }

  // ── Rooms & floors ─────────────────────────────────────────────────────
  Future<Result<List<WardenRoom>>> listRooms({int? floorNumber, String? roomStatus}) => guard(
        () => _list('/hostel/rooms', WardenRoom.fromJson, query: {
          'floor_number': ?floorNumber,
          'room_status': ?roomStatus,
        }),
      );

  Future<Result<List<WardenFloor>>> listFloors() => guard(() => _list('/hostel/floors', WardenFloor.fromJson));

  /// Grows or shrinks a floor. Shrinking deactivates the highest-numbered
  /// rooms and 409s (naming them) if any of those are occupied. Adding a new
  /// floor is the same call with a floor number that has no rooms yet.
  Future<Result<WardenFloor>> setFloorRoomCount(int floorNumber, int roomCount) => guard(() async {
        final res = await _dio.put('/hostel/floors/$floorNumber/room-count', data: {'room_count': roomCount});
        return WardenFloor.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  /// 409 when [capacity] is below the room's current occupancy.
  Future<Result<void>> updateRoom(String roomId, {String? roomType, String? acType, int? capacity}) =>
      guard(() async {
        await _dio.patch('/hostel/rooms/$roomId', data: {
          'room_type': ?roomType,
          'ac_type': ?acType,
          'capacity': ?capacity,
        });
      });

  // ── Lookups (typeahead, min 2 chars, max 10 rows server-side) ──────────
  Future<Result<List<WardenStudentRef>>> searchStudents(String q) =>
      guard(() => _list('/hostel/students/search', WardenStudentRef.fromJson, query: {'q': q}));

  Future<Result<List<WardenStaffRef>>> searchStaff(String q) =>
      guard(() => _list('/hostel/staff/search', WardenStaffRef.fromJson, query: {'q': q}));

  // ── Student allocations ────────────────────────────────────────────────
  Future<Result<List<StudentRoomAllocation>>> listAllocations({String? status, String? roomId}) => guard(
        () => _list('/hostel/allocations', StudentRoomAllocation.fromJson, query: {
          'status': ?status,
          'room_id': ?roomId,
        }),
      );

  /// 409 when the student already holds a room this session or the room is full.
  Future<Result<void>> allocateStudent({required String studentId, required String roomId, String? bedNumber}) =>
      guard(() async {
        await _dio.post('/hostel/allocations', data: {
          'student_id': studentId,
          'room_id': roomId,
          'bed_number': _blankToNull(bedNumber),
        });
      });

  Future<Result<void>> vacateStudent(String allocationId) => guard(() async {
        await _dio.patch('/hostel/allocations/$allocationId/vacate');
      });

  Future<Result<void>> changeStudentRoom(String allocationId, {required String roomId, String? bedNumber}) =>
      guard(() async {
        await _dio.patch('/hostel/allocations/$allocationId/change-room', data: {
          'room_id': roomId,
          'bed_number': _blankToNull(bedNumber),
        });
      });

  // ── Staff allocations ──────────────────────────────────────────────────
  Future<Result<List<StaffRoomAllocation>>> listStaffAllocations({String? status}) => guard(
        () => _list('/hostel/staff-allocations', StaffRoomAllocation.fromJson, query: {'status': ?status}),
      );

  Future<Result<void>> allocateStaff({required String staffId, required String roomId, String? bedNumber}) =>
      guard(() async {
        await _dio.post('/hostel/staff-allocations', data: {
          'staff_id': staffId,
          'room_id': roomId,
          'bed_number': _blankToNull(bedNumber),
        });
      });

  Future<Result<void>> vacateStaff(String allocationId) => guard(() async {
        await _dio.patch('/hostel/staff-allocations/$allocationId/vacate');
      });

  Future<Result<void>> changeStaffRoom(String allocationId, {required String roomId, String? bedNumber}) =>
      guard(() async {
        await _dio.patch('/hostel/staff-allocations/$allocationId/change-room', data: {
          'room_id': roomId,
          'bed_number': _blankToNull(bedNumber),
        });
      });

  // ── Residents ──────────────────────────────────────────────────────────
  Future<Result<List<HostelResident>>> listResidents() =>
      guard(() => _list('/hostel/residents', HostelResident.fromJson));

  Future<Result<StudentResidentProfile>> getStudentResident(String studentId) =>
      guard(() => _one('/hostel/residents/students/$studentId', StudentResidentProfile.fromJson));

  Future<Result<StaffResidentProfile>> getStaffResident(String staffId) =>
      guard(() => _one('/hostel/residents/staff/$staffId', StaffResidentProfile.fromJson));

  // ── Attendance (night roll-call) ───────────────────────────────────────
  Future<Result<List<HostelAttendanceRecord>>> listAttendance({
    DateTime? date,
    DateTime? from,
    DateTime? to,
    String? roomId,
    String? studentId,
  }) =>
      guard(
        () => _list('/hostel/attendance', HostelAttendanceRecord.fromJson, query: {
          if (date != null) 'attendance_date': apiDate(date),
          if (from != null) 'from_date': apiDate(from),
          if (to != null) 'to_date': apiDate(to),
          'room_id': ?roomId,
          'student_id': ?studentId,
        }),
      );

  /// Upserts one row per (student, date), so re-submitting a night corrects it.
  Future<Result<void>> markAttendance({
    required String roomId,
    required DateTime date,
    required Map<String, String> statusByStudent,
  }) =>
      guard(() async {
        await _dio.post('/hostel/attendance', data: {
          'room_id': roomId,
          'attendance_date': apiDate(date),
          'entries': [
            for (final e in statusByStudent.entries) {'student_id': e.key, 'status': e.value},
          ],
        });
      });

  // ── Visitors ───────────────────────────────────────────────────────────
  Future<Result<List<HostelVisitor>>> listVisitors({DateTime? from, DateTime? to}) => guard(
        () => _list('/hostel/visitors', HostelVisitor.fromJson, query: {
          if (from != null) 'from_date': apiDate(from),
          if (to != null) 'to_date': apiDate(to),
        }),
      );

  /// visit_date / check_in_time default to "now" on the server when omitted.
  Future<Result<void>> logVisitor({
    required String studentId,
    required String visitorName,
    required String relation,
    String? purpose,
  }) =>
      guard(() async {
        await _dio.post('/hostel/visitors', data: {
          'student_id': studentId,
          'visitor_name': visitorName.trim(),
          'relation_to_student': relation.trim(),
          'purpose': _blankToNull(purpose),
        });
      });

  Future<Result<void>> checkOutVisitor(String visitorId) => guard(() async {
        await _dio.patch('/hostel/visitors/$visitorId/check-out');
      });

  // ── Mess ───────────────────────────────────────────────────────────────
  Future<Result<List<EffectiveMeal>>> getEffectiveMenu(DateTime date) =>
      guard(() => _list('/hostel/mess/menu', EffectiveMeal.fromJson, query: {'date': apiDate(date)}));

  Future<Result<List<MessMenuEntry>>> listWeeklyMenu() =>
      guard(() => _list('/hostel/mess/weekly-menu', MessMenuEntry.fromJson));

  Future<Result<void>> saveWeeklyMenuEntry({
    required String dayOfWeek,
    required String mealSlot,
    required String menuItems,
  }) =>
      guard(() async {
        await _dio.put('/hostel/mess/weekly-menu', data: {
          'day_of_week': dayOfWeek,
          'meal_slot': mealSlot,
          'menu_items': menuItems.trim(),
        });
      });

  Future<Result<List<MessSpecialMenuEntry>>> listSpecialMenu({DateTime? from}) => guard(
        () => _list('/hostel/mess/special-menu', MessSpecialMenuEntry.fromJson, query: {
          if (from != null) 'from_date': apiDate(from),
        }),
      );

  Future<Result<void>> saveSpecialMenuEntry({
    required DateTime date,
    required String mealSlot,
    required String menuItems,
  }) =>
      guard(() async {
        await _dio.put('/hostel/mess/special-menu', data: {
          'special_date': apiDate(date),
          'meal_slot': mealSlot,
          'menu_items': menuItems.trim(),
        });
      });

  Future<Result<void>> deleteSpecialMenuEntry(String specialMenuId) => guard(() async {
        await _dio.delete('/hostel/mess/special-menu/$specialMenuId');
      });
}

String? _blankToNull(String? v) => (v == null || v.trim().isEmpty) ? null : v.trim();

/// `YYYY-MM-DD` of the device's calendar day — the backend's `new Date()` on
/// that string is UTC midnight, which is exactly what a `@db.Date` stores.
String apiDate(DateTime d) =>
    '${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
