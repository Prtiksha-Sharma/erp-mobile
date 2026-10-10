import 'package:freezed_annotation/freezed_annotation.dart';

part 'hostel_warden.freezed.dart';
part 'hostel_warden.g.dart';

/// Hostel Warden portal models — shapes verified against
/// edusoft_backend/src/features/hostel/*.service.js (GET/POST /hostel/*).
/// Named `Warden*` so they never collide with the School Admin oversight
/// models in admin_campus_hostel.dart (`HostelRoomRef` etc.), which describe
/// the different /admin/hostel/* payloads.
///
/// `@db.Date` columns (attendance_date, visit_date, special_date) arrive as
/// UTC midnight; `@db.Time` columns (check_in_time, check_out_time) arrive
/// pinned to 1970-01-01 UTC — read those with formatClockTime().

/// Attendance values the backend/web use (attendance.service.js stores the
/// free-text status; the web roll-call only ever sends these two).
const hostelAttendanceStatuses = ['PRESENT', 'ABSENT'];

/// mess.service.js DAYS_OF_WEEK / MEAL_SLOTS — order matters for display.
const messDaysOfWeek = ['MONDAY', 'TUESDAY', 'WEDNESDAY', 'THURSDAY', 'FRIDAY', 'SATURDAY', 'SUNDAY'];
const messMealSlots = ['BREAKFAST', 'LUNCH', 'SNACKS', 'DINNER'];

/// rooms.service.js ROOM_TYPES / AC_TYPES.
const hostelRoomTypes = ['SINGLE', 'SHARED'];
const hostelAcTypes = ['AC', 'NON_AC'];

@freezed
abstract class WardenApplicantRef with _$WardenApplicantRef {
  const factory WardenApplicantRef({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'middle_name') String? middleName,
    @JsonKey(name: 'last_name') String? lastName,
    String? gender,
    DateTime? dob,
    @JsonKey(name: 'blood_group') String? bloodGroup,
    @JsonKey(name: 'contact_no') String? contactNo,
    @JsonKey(name: 'email_id') String? emailId,
    @JsonKey(name: 'photo_url') String? photoUrl,
  }) = _WardenApplicantRef;

  factory WardenApplicantRef.fromJson(Map<String, dynamic> json) => _$WardenApplicantRefFromJson(json);
}

extension WardenApplicantRefX on WardenApplicantRef {
  String get fullName =>
      [firstName, middleName, lastName].where((p) => p != null && p.trim().isNotEmpty).join(' ');
}

/// `students: { student_id, admission_no, applicants }` — also the row shape
/// of GET /hostel/students/search.
@freezed
abstract class WardenStudentRef with _$WardenStudentRef {
  const factory WardenStudentRef({
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'admission_no') String? admissionNo,
    WardenApplicantRef? applicants,
  }) = _WardenStudentRef;

  factory WardenStudentRef.fromJson(Map<String, dynamic> json) => _$WardenStudentRefFromJson(json);
}

extension WardenStudentRefX on WardenStudentRef {
  String get name {
    final n = applicants?.fullName ?? '';
    return n.isEmpty ? (admissionNo ?? 'Student') : n;
  }
}

/// `staff_accounts: { staff_id, employee_code, full_name, designation }` —
/// also the row shape of GET /hostel/staff/search.
@freezed
abstract class WardenStaffRef with _$WardenStaffRef {
  const factory WardenStaffRef({
    @JsonKey(name: 'staff_id') required String staffId,
    @JsonKey(name: 'employee_code') String? employeeCode,
    @JsonKey(name: 'full_name') @Default('') String fullName,
    String? designation,
  }) = _WardenStaffRef;

  factory WardenStaffRef.fromJson(Map<String, dynamic> json) => _$WardenStaffRefFromJson(json);
}

/// `hostel_rooms: {...}` embedded in allocation / attendance / resident rows.
/// Which fields are present depends on the endpoint's select.
@freezed
abstract class WardenRoomRef with _$WardenRoomRef {
  const factory WardenRoomRef({
    @JsonKey(name: 'room_id') required String roomId,
    @JsonKey(name: 'room_number') @Default('') String roomNumber,
    @JsonKey(name: 'floor_number') int? floorNumber,
    int? capacity,
    @JsonKey(name: 'room_type') String? roomType,
    @JsonKey(name: 'ac_type') String? acType,
  }) = _WardenRoomRef;

  factory WardenRoomRef.fromJson(Map<String, dynamic> json) => _$WardenRoomRefFromJson(json);
}

extension WardenRoomRefX on WardenRoomRef {
  String get label => floorNumber == null ? 'Room $roomNumber' : 'Room $roomNumber · Floor $floorNumber';
}

/// GET /hostel/rooms — an active room enriched with occupancy across student
/// AND staff allocations for the active session (lookups.service.js).
@freezed
abstract class WardenRoom with _$WardenRoom {
  const factory WardenRoom({
    @JsonKey(name: 'room_id') required String roomId,
    @JsonKey(name: 'room_number') required String roomNumber,
    @JsonKey(name: 'floor_number') @Default(1) int floorNumber,
    @Default(0) int capacity,
    @JsonKey(name: 'room_type') String? roomType,
    @JsonKey(name: 'ac_type') String? acType,
    @JsonKey(name: 'occupied_count') @Default(0) int occupiedCount,
    @JsonKey(name: 'vacant_count') @Default(0) int vacantCount,

    /// VACANT / PARTIAL / FULL. Absent on the PATCH /rooms/:id response.
    @JsonKey(name: 'room_status') String? roomStatus,
  }) = _WardenRoom;

  factory WardenRoom.fromJson(Map<String, dynamic> json) => _$WardenRoomFromJson(json);
}

/// GET /hostel/floors and PUT /hostel/floors/:n/room-count — floors are just
/// the distinct floor_number values on hostel_rooms (floors.service.js).
@freezed
abstract class WardenFloor with _$WardenFloor {
  const factory WardenFloor({
    @JsonKey(name: 'floor_number') required int floorNumber,
    @JsonKey(name: 'room_count') @Default(0) int roomCount,
    @JsonKey(name: 'total_capacity') @Default(0) int totalCapacity,
    @JsonKey(name: 'first_room_number') String? firstRoomNumber,
    @JsonKey(name: 'last_room_number') String? lastRoomNumber,
  }) = _WardenFloor;

  factory WardenFloor.fromJson(Map<String, dynamic> json) => _$WardenFloorFromJson(json);
}

/// GET/POST /hostel/allocations, PATCH .../change-room. The vacate response
/// is the bare row (no hostel_rooms / students), hence both nullable.
@freezed
abstract class StudentRoomAllocation with _$StudentRoomAllocation {
  const factory StudentRoomAllocation({
    @JsonKey(name: 'allocation_id') required String allocationId,
    @JsonKey(name: 'room_id') required String roomId,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'bed_number') String? bedNumber,
    @JsonKey(name: 'allocated_at') DateTime? allocatedAt,
    @JsonKey(name: 'vacated_at') DateTime? vacatedAt,
    @Default('ACTIVE') String status,
    @JsonKey(name: 'hostel_rooms') WardenRoomRef? room,
    @JsonKey(name: 'students') WardenStudentRef? student,
  }) = _StudentRoomAllocation;

  factory StudentRoomAllocation.fromJson(Map<String, dynamic> json) => _$StudentRoomAllocationFromJson(json);
}

/// GET/POST /hostel/staff-allocations — mirrors [StudentRoomAllocation].
@freezed
abstract class StaffRoomAllocation with _$StaffRoomAllocation {
  const factory StaffRoomAllocation({
    @JsonKey(name: 'allocation_id') required String allocationId,
    @JsonKey(name: 'room_id') required String roomId,
    @JsonKey(name: 'staff_id') required String staffId,
    @JsonKey(name: 'bed_number') String? bedNumber,
    @JsonKey(name: 'allocated_at') DateTime? allocatedAt,
    @JsonKey(name: 'vacated_at') DateTime? vacatedAt,
    @Default('ACTIVE') String status,
    @JsonKey(name: 'hostel_rooms') WardenRoomRef? room,
    @JsonKey(name: 'staff_accounts') WardenStaffRef? staff,
  }) = _StaffRoomAllocation;

  factory StaffRoomAllocation.fromJson(Map<String, dynamic> json) => _$StaffRoomAllocationFromJson(json);
}

/// GET/POST /hostel/visitors.
@freezed
abstract class HostelVisitor with _$HostelVisitor {
  const factory HostelVisitor({
    @JsonKey(name: 'visitor_id') required String visitorId,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'visitor_name') required String visitorName,
    @JsonKey(name: 'relation_to_student') String? relationToStudent,
    @JsonKey(name: 'visit_date') DateTime? visitDate,
    @JsonKey(name: 'check_in_time') DateTime? checkInTime,
    @JsonKey(name: 'check_out_time') DateTime? checkOutTime,
    String? purpose,
    @JsonKey(name: 'students') WardenStudentRef? student,
  }) = _HostelVisitor;

  factory HostelVisitor.fromJson(Map<String, dynamic> json) => _$HostelVisitorFromJson(json);
}

extension HostelVisitorX on HostelVisitor {
  bool get isCheckedOut => checkOutTime != null;
}

/// GET /hostel/attendance.
@freezed
abstract class HostelAttendanceRecord with _$HostelAttendanceRecord {
  const factory HostelAttendanceRecord({
    @JsonKey(name: 'attendance_id') required String attendanceId,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'room_id') required String roomId,
    @JsonKey(name: 'attendance_date') DateTime? attendanceDate,
    required String status,
    @JsonKey(name: 'students') WardenStudentRef? student,
    @JsonKey(name: 'hostel_rooms') WardenRoomRef? room,
  }) = _HostelAttendanceRecord;

  factory HostelAttendanceRecord.fromJson(Map<String, dynamic> json) => _$HostelAttendanceRecordFromJson(json);
}

/// GET /hostel/residents — students and staff merged, tagged by
/// resident_type (STUDENT / STAFF); person_id is the student_id or staff_id.
@freezed
abstract class HostelResident with _$HostelResident {
  const factory HostelResident({
    @JsonKey(name: 'resident_type') required String residentType,
    @JsonKey(name: 'allocation_id') required String allocationId,
    @JsonKey(name: 'person_id') required String personId,
    String? identifier,
    @Default('') String name,
    @JsonKey(name: 'role_label') String? roleLabel,
    @JsonKey(name: 'bed_number') String? bedNumber,
    @JsonKey(name: 'allocated_at') DateTime? allocatedAt,
    @JsonKey(name: 'hostel_rooms') WardenRoomRef? room,
  }) = _HostelResident;

  factory HostelResident.fromJson(Map<String, dynamic> json) => _$HostelResidentFromJson(json);
}

extension HostelResidentX on HostelResident {
  bool get isStudent => residentType == 'STUDENT';
}

@freezed
abstract class WardenParentContact with _$WardenParentContact {
  const factory WardenParentContact({
    @JsonKey(name: 'relation_type') String? relationType,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    String? email,
    String? occupation,
  }) = _WardenParentContact;

  factory WardenParentContact.fromJson(Map<String, dynamic> json) => _$WardenParentContactFromJson(json);
}

@freezed
abstract class WardenAddress with _$WardenAddress {
  const factory WardenAddress({
    @JsonKey(name: 'address_type') String? addressType,
    @JsonKey(name: 'address_line_1') String? line1,
    @JsonKey(name: 'address_line_2') String? line2,
    String? city,
    String? state,
    String? country,
    String? pincode,
  }) = _WardenAddress;

  factory WardenAddress.fromJson(Map<String, dynamic> json) => _$WardenAddressFromJson(json);
}

extension WardenAddressX on WardenAddress {
  String get oneLine =>
      [line1, line2, city, state, pincode, country].where((p) => p != null && p.trim().isNotEmpty).join(', ');
}

/// The `allocation` block on both resident profiles.
@freezed
abstract class WardenProfileAllocation with _$WardenProfileAllocation {
  const factory WardenProfileAllocation({
    @JsonKey(name: 'allocation_id') required String allocationId,
    @JsonKey(name: 'bed_number') String? bedNumber,
    @JsonKey(name: 'allocated_at') DateTime? allocatedAt,
    @JsonKey(name: 'hostel_rooms') WardenRoomRef? room,
  }) = _WardenProfileAllocation;

  factory WardenProfileAllocation.fromJson(Map<String, dynamic> json) => _$WardenProfileAllocationFromJson(json);
}

/// GET /hostel/residents/students/:studentId (residents.service.js).
@freezed
abstract class StudentResidentProfile with _$StudentResidentProfile {
  const factory StudentResidentProfile({
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'admission_no') String? admissionNo,
    @JsonKey(name: 'roll_no') String? rollNo,
    @JsonKey(name: 'admission_date') DateTime? admissionDate,
    @JsonKey(name: 'current_class', readValue: _readClassName) String? className,
    @JsonKey(name: 'current_section', readValue: _readSectionName) String? sectionName,
    WardenApplicantRef? applicants,
    @Default([]) List<WardenParentContact> parents,
    @JsonKey(name: 'student_addresses') @Default([]) List<WardenAddress> addresses,
    WardenProfileAllocation? allocation,
  }) = _StudentResidentProfile;

  factory StudentResidentProfile.fromJson(Map<String, dynamic> json) => _$StudentResidentProfileFromJson(json);
}

Object? _readClassName(Map json, String key) => (json[key] as Map?)?['class_name'];
Object? _readSectionName(Map json, String key) => (json[key] as Map?)?['section_name'];

/// GET /hostel/residents/staff/:staffId.
@freezed
abstract class StaffResidentProfile with _$StaffResidentProfile {
  const factory StaffResidentProfile({
    @JsonKey(name: 'staff_id') required String staffId,
    @JsonKey(name: 'employee_code') String? employeeCode,
    @JsonKey(name: 'full_name') @Default('') String fullName,
    String? designation,
    String? department,
    @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
    String? gender,
    @JsonKey(name: 'contact_number') String? contactNumber,
    String? address,
    String? qualification,
    @JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,
    @JsonKey(name: 'users', readValue: _readUserEmail) String? email,
    WardenProfileAllocation? allocation,
  }) = _StaffResidentProfile;

  factory StaffResidentProfile.fromJson(Map<String, dynamic> json) => _$StaffResidentProfileFromJson(json);
}

Object? _readUserEmail(Map json, String key) => (json[key] as Map?)?['email'];

/// GET/PUT /hostel/mess/weekly-menu — one row per (day_of_week, meal_slot).
@freezed
abstract class MessMenuEntry with _$MessMenuEntry {
  const factory MessMenuEntry({
    @JsonKey(name: 'menu_id') required String menuId,
    @JsonKey(name: 'day_of_week') required String dayOfWeek,
    @JsonKey(name: 'meal_slot') required String mealSlot,
    @JsonKey(name: 'menu_items') @Default('') String menuItems,
  }) = _MessMenuEntry;

  factory MessMenuEntry.fromJson(Map<String, dynamic> json) => _$MessMenuEntryFromJson(json);
}

/// GET/PUT /hostel/mess/special-menu — a one-date override of one meal slot.
@freezed
abstract class MessSpecialMenuEntry with _$MessSpecialMenuEntry {
  const factory MessSpecialMenuEntry({
    @JsonKey(name: 'special_menu_id') required String specialMenuId,
    @JsonKey(name: 'special_date') required DateTime specialDate,
    @JsonKey(name: 'meal_slot') required String mealSlot,
    @JsonKey(name: 'menu_items') @Default('') String menuItems,
  }) = _MessSpecialMenuEntry;

  factory MessSpecialMenuEntry.fromJson(Map<String, dynamic> json) => _$MessSpecialMenuEntryFromJson(json);
}

/// GET /hostel/mess/menu?date= — one entry per meal slot, special override
/// winning over the weekly menu. menu_items is null when nothing is set.
@freezed
abstract class EffectiveMeal with _$EffectiveMeal {
  const factory EffectiveMeal({
    @JsonKey(name: 'meal_slot') required String mealSlot,
    @JsonKey(name: 'menu_items') String? menuItems,
    @JsonKey(name: 'is_special') @Default(false) bool isSpecial,
  }) = _EffectiveMeal;

  factory EffectiveMeal.fromJson(Map<String, dynamic> json) => _$EffectiveMealFromJson(json);
}
