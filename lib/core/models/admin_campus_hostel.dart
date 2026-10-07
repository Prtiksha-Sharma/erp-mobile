import 'package:freezed_annotation/freezed_annotation.dart';

import 'academic_refs.dart';
import 'student_brief.dart';

part 'admin_campus_hostel.freezed.dart';
part 'admin_campus_hostel.g.dart';

// Hostel oversight — admin/hostel/*.service.js (GET/POST/PATCH
// /admin/hostel/*). Figures are institution-wide: rooms, allocations and
// attendance are not split by hostel on the backend.

/// GET /admin/hostel/dashboard — dashboard.service.js#getDashboard.
@freezed
abstract class HostelDashboard with _$HostelDashboard {
  const factory HostelDashboard({
    @JsonKey(name: 'total_hostels') int? totalHostels,
    @JsonKey(name: 'total_rooms') int? totalRooms,
    @JsonKey(name: 'total_capacity') int? totalCapacity,
    @JsonKey(name: 'occupied_beds') int? occupiedBeds,
    @JsonKey(name: 'available_beds') int? availableBeds,
    @JsonKey(name: 'total_hostel_students') int? totalHostelStudents,
    @JsonKey(name: 'active_wardens') int? activeWardens,
    @JsonKey(name: 'vacant_rooms') int? vacantRooms,
    @JsonKey(name: 'vacant_beds') int? vacantBeds,
  }) = _HostelDashboard;

  factory HostelDashboard.fromJson(Map<String, dynamic> json) => _$HostelDashboardFromJson(json);
}

/// A `hostels` row — hostels.service.js HOSTEL_SELECT (list, detail and
/// every write response). `hostel_type` is BOYS | GIRLS | CO_ED or null.
@freezed
abstract class CampusHostel with _$CampusHostel {
  const factory CampusHostel({
    @JsonKey(name: 'hostel_id') required String hostelId,
    @JsonKey(name: 'hostel_name') @Default('') String hostelName,
    @JsonKey(name: 'hostel_type') String? hostelType,
    String? address,
    @JsonKey(name: 'contact_number') String? contactNumber,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    HostelWardenRef? warden,
  }) = _CampusHostel;

  factory CampusHostel.fromJson(Map<String, dynamic> json) => _$CampusHostelFromJson(json);
}

/// `warden: { staff_id, full_name, employee_code, designation }`.
@freezed
abstract class HostelWardenRef with _$HostelWardenRef {
  const factory HostelWardenRef({
    @JsonKey(name: 'staff_id') String? staffId,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'employee_code') String? employeeCode,
    String? designation,
  }) = _HostelWardenRef;

  factory HostelWardenRef.fromJson(Map<String, dynamic> json) => _$HostelWardenRefFromJson(json);
}

/// A `hostel_rooms` row (rooms.service.js — no select, every column), or
/// an occupancy-report room (reports.service.js selects room_id/number/
/// floor/type/ac/capacity and adds `occupied`/`vacant`).
@freezed
abstract class HostelRoom with _$HostelRoom {
  const factory HostelRoom({
    @JsonKey(name: 'room_id') required String roomId,
    @JsonKey(name: 'room_number') @Default('') String roomNumber,
    @JsonKey(name: 'floor_number') int? floorNumber,
    @JsonKey(name: 'block_name') String? blockName,
    @JsonKey(name: 'room_type') String? roomType,
    @JsonKey(name: 'ac_type') String? acType,
    @Default(0) int capacity,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    int? occupied,
    int? vacant,
  }) = _HostelRoom;

  factory HostelRoom.fromJson(Map<String, dynamic> json) => _$HostelRoomFromJson(json);
}

/// A `hostel_room_allocations` row — GET /admin/hostel/students (includes
/// `hostel_rooms` + `students`) and GET /admin/hostel/students/:id/history
/// (includes `hostel_rooms` + `academic_sessions`). The list does NOT
/// include the session, so `session` is only set on history rows.
@freezed
abstract class HostelAllocation with _$HostelAllocation {
  const factory HostelAllocation({
    @JsonKey(name: 'allocation_id') required String allocationId,
    @JsonKey(name: 'student_id') String? studentId,
    @JsonKey(name: 'bed_number') String? bedNumber,
    @JsonKey(name: 'allocated_at') DateTime? allocatedAt,
    @JsonKey(name: 'vacated_at') DateTime? vacatedAt,
    String? status,
    @JsonKey(name: 'hostel_rooms') HostelRoomRef? room,
    @JsonKey(name: 'students') StudentBrief? student,
    @JsonKey(name: 'academic_sessions') SessionRef? session,
  }) = _HostelAllocation;

  factory HostelAllocation.fromJson(Map<String, dynamic> json) => _$HostelAllocationFromJson(json);
}

@freezed
abstract class HostelRoomRef with _$HostelRoomRef {
  const factory HostelRoomRef({
    @JsonKey(name: 'room_id') String? roomId,
    @JsonKey(name: 'room_number') String? roomNumber,
    @JsonKey(name: 'floor_number') int? floorNumber,
    int? capacity,
  }) = _HostelRoomRef;

  factory HostelRoomRef.fromJson(Map<String, dynamic> json) => _$HostelRoomRefFromJson(json);
}

/// GET /admin/hostel/wardens (wardens.service.js#listWardens) and
/// GET /admin/hostel/wardens/:staffId (#getWardenDetail, which adds
/// department/address/qualification/photo/mobile and the institution-wide
/// snapshot).
@freezed
abstract class HostelWarden with _$HostelWarden {
  const factory HostelWarden({
    @JsonKey(name: 'staff_id') required String staffId,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'employee_code') String? employeeCode,
    String? designation,
    String? department,
    @JsonKey(name: 'contact_number') String? contactNumber,
    String? address,
    String? qualification,
    @JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,
    String? email,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    @JsonKey(name: 'account_status') String? accountStatus,
    @JsonKey(name: 'assigned_hostel') HostelAssignedRef? assignedHostel,
    @JsonKey(name: 'institution_hostel_snapshot') HostelSnapshot? snapshot,
  }) = _HostelWarden;

  factory HostelWarden.fromJson(Map<String, dynamic> json) => _$HostelWardenFromJson(json);
}

/// `hostels { hostel_id, hostel_name, is_active (, hostel_type) }`.
@freezed
abstract class HostelAssignedRef with _$HostelAssignedRef {
  const factory HostelAssignedRef({
    @JsonKey(name: 'hostel_id') String? hostelId,
    @JsonKey(name: 'hostel_name') String? hostelName,
    @JsonKey(name: 'hostel_type') String? hostelType,
    @JsonKey(name: 'is_active') bool? isActive,
  }) = _HostelAssignedRef;

  factory HostelAssignedRef.fromJson(Map<String, dynamic> json) => _$HostelAssignedRefFromJson(json);
}

@freezed
abstract class HostelSnapshot with _$HostelSnapshot {
  const factory HostelSnapshot({
    @JsonKey(name: 'total_rooms') @Default(0) int totalRooms,
    @JsonKey(name: 'total_capacity') @Default(0) int totalCapacity,
    @JsonKey(name: 'occupied_beds') @Default(0) int occupiedBeds,
    @JsonKey(name: 'available_beds') @Default(0) int availableBeds,
  }) = _HostelSnapshot;

  factory HostelSnapshot.fromJson(Map<String, dynamic> json) => _$HostelSnapshotFromJson(json);
}

/// GET /admin/hostel/reports/occupancy — reports.service.js
/// #getOccupancyReport (active rooms only).
@freezed
abstract class HostelOccupancyReport with _$HostelOccupancyReport {
  const factory HostelOccupancyReport({
    @JsonKey(name: 'total_rooms') @Default(0) int totalRooms,
    @JsonKey(name: 'total_capacity') @Default(0) int totalCapacity,
    @JsonKey(name: 'total_occupied') @Default(0) int totalOccupied,
    @JsonKey(name: 'total_vacant') @Default(0) int totalVacant,
    @Default(<HostelRoom>[]) List<HostelRoom> rooms,
  }) = _HostelOccupancyReport;

  factory HostelOccupancyReport.fromJson(Map<String, dynamic> json) => _$HostelOccupancyReportFromJson(json);
}

/// GET /admin/hostel/reports/attendance-summary — `{ total, by_status }`
/// where by_status maps each recorded status string to its count.
@freezed
abstract class HostelAttendanceSummary with _$HostelAttendanceSummary {
  const factory HostelAttendanceSummary({
    @Default(0) int total,
    @JsonKey(name: 'by_status') @Default(<String, int>{}) Map<String, int> byStatus,
  }) = _HostelAttendanceSummary;

  factory HostelAttendanceSummary.fromJson(Map<String, dynamic> json) => _$HostelAttendanceSummaryFromJson(json);
}
