// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_campus_hostel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HostelDashboard _$HostelDashboardFromJson(Map<String, dynamic> json) =>
    _HostelDashboard(
      totalHostels: (json['total_hostels'] as num?)?.toInt(),
      totalRooms: (json['total_rooms'] as num?)?.toInt(),
      totalCapacity: (json['total_capacity'] as num?)?.toInt(),
      occupiedBeds: (json['occupied_beds'] as num?)?.toInt(),
      availableBeds: (json['available_beds'] as num?)?.toInt(),
      totalHostelStudents: (json['total_hostel_students'] as num?)?.toInt(),
      activeWardens: (json['active_wardens'] as num?)?.toInt(),
      vacantRooms: (json['vacant_rooms'] as num?)?.toInt(),
      vacantBeds: (json['vacant_beds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HostelDashboardToJson(_HostelDashboard instance) =>
    <String, dynamic>{
      'total_hostels': instance.totalHostels,
      'total_rooms': instance.totalRooms,
      'total_capacity': instance.totalCapacity,
      'occupied_beds': instance.occupiedBeds,
      'available_beds': instance.availableBeds,
      'total_hostel_students': instance.totalHostelStudents,
      'active_wardens': instance.activeWardens,
      'vacant_rooms': instance.vacantRooms,
      'vacant_beds': instance.vacantBeds,
    };

_CampusHostel _$CampusHostelFromJson(Map<String, dynamic> json) =>
    _CampusHostel(
      hostelId: json['hostel_id'] as String,
      hostelName: json['hostel_name'] as String? ?? '',
      hostelType: json['hostel_type'] as String?,
      address: json['address'] as String?,
      contactNumber: json['contact_number'] as String?,
      isActive: json['is_active'] as bool? ?? true,
      warden: json['warden'] == null
          ? null
          : HostelWardenRef.fromJson(json['warden'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CampusHostelToJson(_CampusHostel instance) =>
    <String, dynamic>{
      'hostel_id': instance.hostelId,
      'hostel_name': instance.hostelName,
      'hostel_type': instance.hostelType,
      'address': instance.address,
      'contact_number': instance.contactNumber,
      'is_active': instance.isActive,
      'warden': instance.warden,
    };

_HostelWardenRef _$HostelWardenRefFromJson(Map<String, dynamic> json) =>
    _HostelWardenRef(
      staffId: json['staff_id'] as String?,
      fullName: json['full_name'] as String?,
      employeeCode: json['employee_code'] as String?,
      designation: json['designation'] as String?,
    );

Map<String, dynamic> _$HostelWardenRefToJson(_HostelWardenRef instance) =>
    <String, dynamic>{
      'staff_id': instance.staffId,
      'full_name': instance.fullName,
      'employee_code': instance.employeeCode,
      'designation': instance.designation,
    };

_HostelRoom _$HostelRoomFromJson(Map<String, dynamic> json) => _HostelRoom(
  roomId: json['room_id'] as String,
  roomNumber: json['room_number'] as String? ?? '',
  floorNumber: (json['floor_number'] as num?)?.toInt(),
  blockName: json['block_name'] as String?,
  roomType: json['room_type'] as String?,
  acType: json['ac_type'] as String?,
  capacity: (json['capacity'] as num?)?.toInt() ?? 0,
  isActive: json['is_active'] as bool? ?? true,
  occupied: (json['occupied'] as num?)?.toInt(),
  vacant: (json['vacant'] as num?)?.toInt(),
);

Map<String, dynamic> _$HostelRoomToJson(_HostelRoom instance) =>
    <String, dynamic>{
      'room_id': instance.roomId,
      'room_number': instance.roomNumber,
      'floor_number': instance.floorNumber,
      'block_name': instance.blockName,
      'room_type': instance.roomType,
      'ac_type': instance.acType,
      'capacity': instance.capacity,
      'is_active': instance.isActive,
      'occupied': instance.occupied,
      'vacant': instance.vacant,
    };

_HostelAllocation _$HostelAllocationFromJson(
  Map<String, dynamic> json,
) => _HostelAllocation(
  allocationId: json['allocation_id'] as String,
  studentId: json['student_id'] as String?,
  bedNumber: json['bed_number'] as String?,
  allocatedAt: json['allocated_at'] == null
      ? null
      : DateTime.parse(json['allocated_at'] as String),
  vacatedAt: json['vacated_at'] == null
      ? null
      : DateTime.parse(json['vacated_at'] as String),
  status: json['status'] as String?,
  room: json['hostel_rooms'] == null
      ? null
      : HostelRoomRef.fromJson(json['hostel_rooms'] as Map<String, dynamic>),
  student: json['students'] == null
      ? null
      : StudentBrief.fromJson(json['students'] as Map<String, dynamic>),
  session: json['academic_sessions'] == null
      ? null
      : SessionRef.fromJson(json['academic_sessions'] as Map<String, dynamic>),
);

Map<String, dynamic> _$HostelAllocationToJson(_HostelAllocation instance) =>
    <String, dynamic>{
      'allocation_id': instance.allocationId,
      'student_id': instance.studentId,
      'bed_number': instance.bedNumber,
      'allocated_at': instance.allocatedAt?.toIso8601String(),
      'vacated_at': instance.vacatedAt?.toIso8601String(),
      'status': instance.status,
      'hostel_rooms': instance.room,
      'students': instance.student,
      'academic_sessions': instance.session,
    };

_HostelRoomRef _$HostelRoomRefFromJson(Map<String, dynamic> json) =>
    _HostelRoomRef(
      roomId: json['room_id'] as String?,
      roomNumber: json['room_number'] as String?,
      floorNumber: (json['floor_number'] as num?)?.toInt(),
      capacity: (json['capacity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HostelRoomRefToJson(_HostelRoomRef instance) =>
    <String, dynamic>{
      'room_id': instance.roomId,
      'room_number': instance.roomNumber,
      'floor_number': instance.floorNumber,
      'capacity': instance.capacity,
    };

_HostelWarden _$HostelWardenFromJson(Map<String, dynamic> json) =>
    _HostelWarden(
      staffId: json['staff_id'] as String,
      fullName: json['full_name'] as String?,
      employeeCode: json['employee_code'] as String?,
      designation: json['designation'] as String?,
      department: json['department'] as String?,
      contactNumber: json['contact_number'] as String?,
      address: json['address'] as String?,
      qualification: json['qualification'] as String?,
      profilePhotoUrl: json['profile_photo_url'] as String?,
      email: json['email'] as String?,
      mobileNo: json['mobile_no'] as String?,
      accountStatus: json['account_status'] as String?,
      assignedHostel: json['assigned_hostel'] == null
          ? null
          : HostelAssignedRef.fromJson(
              json['assigned_hostel'] as Map<String, dynamic>,
            ),
      snapshot: json['institution_hostel_snapshot'] == null
          ? null
          : HostelSnapshot.fromJson(
              json['institution_hostel_snapshot'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$HostelWardenToJson(_HostelWarden instance) =>
    <String, dynamic>{
      'staff_id': instance.staffId,
      'full_name': instance.fullName,
      'employee_code': instance.employeeCode,
      'designation': instance.designation,
      'department': instance.department,
      'contact_number': instance.contactNumber,
      'address': instance.address,
      'qualification': instance.qualification,
      'profile_photo_url': instance.profilePhotoUrl,
      'email': instance.email,
      'mobile_no': instance.mobileNo,
      'account_status': instance.accountStatus,
      'assigned_hostel': instance.assignedHostel,
      'institution_hostel_snapshot': instance.snapshot,
    };

_HostelAssignedRef _$HostelAssignedRefFromJson(Map<String, dynamic> json) =>
    _HostelAssignedRef(
      hostelId: json['hostel_id'] as String?,
      hostelName: json['hostel_name'] as String?,
      hostelType: json['hostel_type'] as String?,
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$HostelAssignedRefToJson(_HostelAssignedRef instance) =>
    <String, dynamic>{
      'hostel_id': instance.hostelId,
      'hostel_name': instance.hostelName,
      'hostel_type': instance.hostelType,
      'is_active': instance.isActive,
    };

_HostelSnapshot _$HostelSnapshotFromJson(Map<String, dynamic> json) =>
    _HostelSnapshot(
      totalRooms: (json['total_rooms'] as num?)?.toInt() ?? 0,
      totalCapacity: (json['total_capacity'] as num?)?.toInt() ?? 0,
      occupiedBeds: (json['occupied_beds'] as num?)?.toInt() ?? 0,
      availableBeds: (json['available_beds'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$HostelSnapshotToJson(_HostelSnapshot instance) =>
    <String, dynamic>{
      'total_rooms': instance.totalRooms,
      'total_capacity': instance.totalCapacity,
      'occupied_beds': instance.occupiedBeds,
      'available_beds': instance.availableBeds,
    };

_HostelOccupancyReport _$HostelOccupancyReportFromJson(
  Map<String, dynamic> json,
) => _HostelOccupancyReport(
  totalRooms: (json['total_rooms'] as num?)?.toInt() ?? 0,
  totalCapacity: (json['total_capacity'] as num?)?.toInt() ?? 0,
  totalOccupied: (json['total_occupied'] as num?)?.toInt() ?? 0,
  totalVacant: (json['total_vacant'] as num?)?.toInt() ?? 0,
  rooms:
      (json['rooms'] as List<dynamic>?)
          ?.map((e) => HostelRoom.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <HostelRoom>[],
);

Map<String, dynamic> _$HostelOccupancyReportToJson(
  _HostelOccupancyReport instance,
) => <String, dynamic>{
  'total_rooms': instance.totalRooms,
  'total_capacity': instance.totalCapacity,
  'total_occupied': instance.totalOccupied,
  'total_vacant': instance.totalVacant,
  'rooms': instance.rooms,
};

_HostelAttendanceSummary _$HostelAttendanceSummaryFromJson(
  Map<String, dynamic> json,
) => _HostelAttendanceSummary(
  total: (json['total'] as num?)?.toInt() ?? 0,
  byStatus:
      (json['by_status'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ) ??
      const <String, int>{},
);

Map<String, dynamic> _$HostelAttendanceSummaryToJson(
  _HostelAttendanceSummary instance,
) => <String, dynamic>{'total': instance.total, 'by_status': instance.byStatus};
