// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hostel_warden.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WardenApplicantRef _$WardenApplicantRefFromJson(Map<String, dynamic> json) =>
    _WardenApplicantRef(
      firstName: json['first_name'] as String?,
      middleName: json['middle_name'] as String?,
      lastName: json['last_name'] as String?,
      gender: json['gender'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      bloodGroup: json['blood_group'] as String?,
      contactNo: json['contact_no'] as String?,
      emailId: json['email_id'] as String?,
      photoUrl: json['photo_url'] as String?,
    );

Map<String, dynamic> _$WardenApplicantRefToJson(_WardenApplicantRef instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'gender': instance.gender,
      'dob': instance.dob?.toIso8601String(),
      'blood_group': instance.bloodGroup,
      'contact_no': instance.contactNo,
      'email_id': instance.emailId,
      'photo_url': instance.photoUrl,
    };

_WardenStudentRef _$WardenStudentRefFromJson(Map<String, dynamic> json) =>
    _WardenStudentRef(
      studentId: json['student_id'] as String,
      admissionNo: json['admission_no'] as String?,
      applicants: json['applicants'] == null
          ? null
          : WardenApplicantRef.fromJson(
              json['applicants'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$WardenStudentRefToJson(_WardenStudentRef instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'admission_no': instance.admissionNo,
      'applicants': instance.applicants,
    };

_WardenStaffRef _$WardenStaffRefFromJson(Map<String, dynamic> json) =>
    _WardenStaffRef(
      staffId: json['staff_id'] as String,
      employeeCode: json['employee_code'] as String?,
      fullName: json['full_name'] as String? ?? '',
      designation: json['designation'] as String?,
    );

Map<String, dynamic> _$WardenStaffRefToJson(_WardenStaffRef instance) =>
    <String, dynamic>{
      'staff_id': instance.staffId,
      'employee_code': instance.employeeCode,
      'full_name': instance.fullName,
      'designation': instance.designation,
    };

_WardenRoomRef _$WardenRoomRefFromJson(Map<String, dynamic> json) =>
    _WardenRoomRef(
      roomId: json['room_id'] as String,
      roomNumber: json['room_number'] as String? ?? '',
      floorNumber: (json['floor_number'] as num?)?.toInt(),
      capacity: (json['capacity'] as num?)?.toInt(),
      roomType: json['room_type'] as String?,
      acType: json['ac_type'] as String?,
    );

Map<String, dynamic> _$WardenRoomRefToJson(_WardenRoomRef instance) =>
    <String, dynamic>{
      'room_id': instance.roomId,
      'room_number': instance.roomNumber,
      'floor_number': instance.floorNumber,
      'capacity': instance.capacity,
      'room_type': instance.roomType,
      'ac_type': instance.acType,
    };

_WardenRoom _$WardenRoomFromJson(Map<String, dynamic> json) => _WardenRoom(
  roomId: json['room_id'] as String,
  roomNumber: json['room_number'] as String,
  floorNumber: (json['floor_number'] as num?)?.toInt() ?? 1,
  capacity: (json['capacity'] as num?)?.toInt() ?? 0,
  roomType: json['room_type'] as String?,
  acType: json['ac_type'] as String?,
  occupiedCount: (json['occupied_count'] as num?)?.toInt() ?? 0,
  vacantCount: (json['vacant_count'] as num?)?.toInt() ?? 0,
  roomStatus: json['room_status'] as String?,
);

Map<String, dynamic> _$WardenRoomToJson(_WardenRoom instance) =>
    <String, dynamic>{
      'room_id': instance.roomId,
      'room_number': instance.roomNumber,
      'floor_number': instance.floorNumber,
      'capacity': instance.capacity,
      'room_type': instance.roomType,
      'ac_type': instance.acType,
      'occupied_count': instance.occupiedCount,
      'vacant_count': instance.vacantCount,
      'room_status': instance.roomStatus,
    };

_WardenFloor _$WardenFloorFromJson(Map<String, dynamic> json) => _WardenFloor(
  floorNumber: (json['floor_number'] as num).toInt(),
  roomCount: (json['room_count'] as num?)?.toInt() ?? 0,
  totalCapacity: (json['total_capacity'] as num?)?.toInt() ?? 0,
  firstRoomNumber: json['first_room_number'] as String?,
  lastRoomNumber: json['last_room_number'] as String?,
);

Map<String, dynamic> _$WardenFloorToJson(_WardenFloor instance) =>
    <String, dynamic>{
      'floor_number': instance.floorNumber,
      'room_count': instance.roomCount,
      'total_capacity': instance.totalCapacity,
      'first_room_number': instance.firstRoomNumber,
      'last_room_number': instance.lastRoomNumber,
    };

_StudentRoomAllocation _$StudentRoomAllocationFromJson(
  Map<String, dynamic> json,
) => _StudentRoomAllocation(
  allocationId: json['allocation_id'] as String,
  roomId: json['room_id'] as String,
  studentId: json['student_id'] as String,
  bedNumber: json['bed_number'] as String?,
  allocatedAt: json['allocated_at'] == null
      ? null
      : DateTime.parse(json['allocated_at'] as String),
  vacatedAt: json['vacated_at'] == null
      ? null
      : DateTime.parse(json['vacated_at'] as String),
  status: json['status'] as String? ?? 'ACTIVE',
  room: json['hostel_rooms'] == null
      ? null
      : WardenRoomRef.fromJson(json['hostel_rooms'] as Map<String, dynamic>),
  student: json['students'] == null
      ? null
      : WardenStudentRef.fromJson(json['students'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StudentRoomAllocationToJson(
  _StudentRoomAllocation instance,
) => <String, dynamic>{
  'allocation_id': instance.allocationId,
  'room_id': instance.roomId,
  'student_id': instance.studentId,
  'bed_number': instance.bedNumber,
  'allocated_at': instance.allocatedAt?.toIso8601String(),
  'vacated_at': instance.vacatedAt?.toIso8601String(),
  'status': instance.status,
  'hostel_rooms': instance.room,
  'students': instance.student,
};

_StaffRoomAllocation _$StaffRoomAllocationFromJson(
  Map<String, dynamic> json,
) => _StaffRoomAllocation(
  allocationId: json['allocation_id'] as String,
  roomId: json['room_id'] as String,
  staffId: json['staff_id'] as String,
  bedNumber: json['bed_number'] as String?,
  allocatedAt: json['allocated_at'] == null
      ? null
      : DateTime.parse(json['allocated_at'] as String),
  vacatedAt: json['vacated_at'] == null
      ? null
      : DateTime.parse(json['vacated_at'] as String),
  status: json['status'] as String? ?? 'ACTIVE',
  room: json['hostel_rooms'] == null
      ? null
      : WardenRoomRef.fromJson(json['hostel_rooms'] as Map<String, dynamic>),
  staff: json['staff_accounts'] == null
      ? null
      : WardenStaffRef.fromJson(json['staff_accounts'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StaffRoomAllocationToJson(
  _StaffRoomAllocation instance,
) => <String, dynamic>{
  'allocation_id': instance.allocationId,
  'room_id': instance.roomId,
  'staff_id': instance.staffId,
  'bed_number': instance.bedNumber,
  'allocated_at': instance.allocatedAt?.toIso8601String(),
  'vacated_at': instance.vacatedAt?.toIso8601String(),
  'status': instance.status,
  'hostel_rooms': instance.room,
  'staff_accounts': instance.staff,
};

_HostelVisitor _$HostelVisitorFromJson(Map<String, dynamic> json) =>
    _HostelVisitor(
      visitorId: json['visitor_id'] as String,
      studentId: json['student_id'] as String,
      visitorName: json['visitor_name'] as String,
      relationToStudent: json['relation_to_student'] as String?,
      visitDate: json['visit_date'] == null
          ? null
          : DateTime.parse(json['visit_date'] as String),
      checkInTime: json['check_in_time'] == null
          ? null
          : DateTime.parse(json['check_in_time'] as String),
      checkOutTime: json['check_out_time'] == null
          ? null
          : DateTime.parse(json['check_out_time'] as String),
      purpose: json['purpose'] as String?,
      student: json['students'] == null
          ? null
          : WardenStudentRef.fromJson(json['students'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HostelVisitorToJson(_HostelVisitor instance) =>
    <String, dynamic>{
      'visitor_id': instance.visitorId,
      'student_id': instance.studentId,
      'visitor_name': instance.visitorName,
      'relation_to_student': instance.relationToStudent,
      'visit_date': instance.visitDate?.toIso8601String(),
      'check_in_time': instance.checkInTime?.toIso8601String(),
      'check_out_time': instance.checkOutTime?.toIso8601String(),
      'purpose': instance.purpose,
      'students': instance.student,
    };

_HostelAttendanceRecord _$HostelAttendanceRecordFromJson(
  Map<String, dynamic> json,
) => _HostelAttendanceRecord(
  attendanceId: json['attendance_id'] as String,
  studentId: json['student_id'] as String,
  roomId: json['room_id'] as String,
  attendanceDate: json['attendance_date'] == null
      ? null
      : DateTime.parse(json['attendance_date'] as String),
  status: json['status'] as String,
  student: json['students'] == null
      ? null
      : WardenStudentRef.fromJson(json['students'] as Map<String, dynamic>),
  room: json['hostel_rooms'] == null
      ? null
      : WardenRoomRef.fromJson(json['hostel_rooms'] as Map<String, dynamic>),
);

Map<String, dynamic> _$HostelAttendanceRecordToJson(
  _HostelAttendanceRecord instance,
) => <String, dynamic>{
  'attendance_id': instance.attendanceId,
  'student_id': instance.studentId,
  'room_id': instance.roomId,
  'attendance_date': instance.attendanceDate?.toIso8601String(),
  'status': instance.status,
  'students': instance.student,
  'hostel_rooms': instance.room,
};

_HostelResident _$HostelResidentFromJson(Map<String, dynamic> json) =>
    _HostelResident(
      residentType: json['resident_type'] as String,
      allocationId: json['allocation_id'] as String,
      personId: json['person_id'] as String,
      identifier: json['identifier'] as String?,
      name: json['name'] as String? ?? '',
      roleLabel: json['role_label'] as String?,
      bedNumber: json['bed_number'] as String?,
      allocatedAt: json['allocated_at'] == null
          ? null
          : DateTime.parse(json['allocated_at'] as String),
      room: json['hostel_rooms'] == null
          ? null
          : WardenRoomRef.fromJson(
              json['hostel_rooms'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$HostelResidentToJson(_HostelResident instance) =>
    <String, dynamic>{
      'resident_type': instance.residentType,
      'allocation_id': instance.allocationId,
      'person_id': instance.personId,
      'identifier': instance.identifier,
      'name': instance.name,
      'role_label': instance.roleLabel,
      'bed_number': instance.bedNumber,
      'allocated_at': instance.allocatedAt?.toIso8601String(),
      'hostel_rooms': instance.room,
    };

_WardenParentContact _$WardenParentContactFromJson(Map<String, dynamic> json) =>
    _WardenParentContact(
      relationType: json['relation_type'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      mobileNo: json['mobile_no'] as String?,
      email: json['email'] as String?,
      occupation: json['occupation'] as String?,
    );

Map<String, dynamic> _$WardenParentContactToJson(
  _WardenParentContact instance,
) => <String, dynamic>{
  'relation_type': instance.relationType,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'mobile_no': instance.mobileNo,
  'email': instance.email,
  'occupation': instance.occupation,
};

_WardenAddress _$WardenAddressFromJson(Map<String, dynamic> json) =>
    _WardenAddress(
      addressType: json['address_type'] as String?,
      line1: json['address_line_1'] as String?,
      line2: json['address_line_2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      pincode: json['pincode'] as String?,
    );

Map<String, dynamic> _$WardenAddressToJson(_WardenAddress instance) =>
    <String, dynamic>{
      'address_type': instance.addressType,
      'address_line_1': instance.line1,
      'address_line_2': instance.line2,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'pincode': instance.pincode,
    };

_WardenProfileAllocation _$WardenProfileAllocationFromJson(
  Map<String, dynamic> json,
) => _WardenProfileAllocation(
  allocationId: json['allocation_id'] as String,
  bedNumber: json['bed_number'] as String?,
  allocatedAt: json['allocated_at'] == null
      ? null
      : DateTime.parse(json['allocated_at'] as String),
  room: json['hostel_rooms'] == null
      ? null
      : WardenRoomRef.fromJson(json['hostel_rooms'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WardenProfileAllocationToJson(
  _WardenProfileAllocation instance,
) => <String, dynamic>{
  'allocation_id': instance.allocationId,
  'bed_number': instance.bedNumber,
  'allocated_at': instance.allocatedAt?.toIso8601String(),
  'hostel_rooms': instance.room,
};

_StudentResidentProfile _$StudentResidentProfileFromJson(
  Map<String, dynamic> json,
) => _StudentResidentProfile(
  studentId: json['student_id'] as String,
  admissionNo: json['admission_no'] as String?,
  rollNo: json['roll_no'] as String?,
  admissionDate: json['admission_date'] == null
      ? null
      : DateTime.parse(json['admission_date'] as String),
  className: _readClassName(json, 'current_class') as String?,
  sectionName: _readSectionName(json, 'current_section') as String?,
  applicants: json['applicants'] == null
      ? null
      : WardenApplicantRef.fromJson(json['applicants'] as Map<String, dynamic>),
  parents:
      (json['parents'] as List<dynamic>?)
          ?.map((e) => WardenParentContact.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  addresses:
      (json['student_addresses'] as List<dynamic>?)
          ?.map((e) => WardenAddress.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  allocation: json['allocation'] == null
      ? null
      : WardenProfileAllocation.fromJson(
          json['allocation'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$StudentResidentProfileToJson(
  _StudentResidentProfile instance,
) => <String, dynamic>{
  'student_id': instance.studentId,
  'admission_no': instance.admissionNo,
  'roll_no': instance.rollNo,
  'admission_date': instance.admissionDate?.toIso8601String(),
  'current_class': instance.className,
  'current_section': instance.sectionName,
  'applicants': instance.applicants,
  'parents': instance.parents,
  'student_addresses': instance.addresses,
  'allocation': instance.allocation,
};

_StaffResidentProfile _$StaffResidentProfileFromJson(
  Map<String, dynamic> json,
) => _StaffResidentProfile(
  staffId: json['staff_id'] as String,
  employeeCode: json['employee_code'] as String?,
  fullName: json['full_name'] as String? ?? '',
  designation: json['designation'] as String?,
  department: json['department'] as String?,
  dateOfBirth: json['date_of_birth'] == null
      ? null
      : DateTime.parse(json['date_of_birth'] as String),
  gender: json['gender'] as String?,
  contactNumber: json['contact_number'] as String?,
  address: json['address'] as String?,
  qualification: json['qualification'] as String?,
  profilePhotoUrl: json['profile_photo_url'] as String?,
  email: _readUserEmail(json, 'users') as String?,
  allocation: json['allocation'] == null
      ? null
      : WardenProfileAllocation.fromJson(
          json['allocation'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$StaffResidentProfileToJson(
  _StaffResidentProfile instance,
) => <String, dynamic>{
  'staff_id': instance.staffId,
  'employee_code': instance.employeeCode,
  'full_name': instance.fullName,
  'designation': instance.designation,
  'department': instance.department,
  'date_of_birth': instance.dateOfBirth?.toIso8601String(),
  'gender': instance.gender,
  'contact_number': instance.contactNumber,
  'address': instance.address,
  'qualification': instance.qualification,
  'profile_photo_url': instance.profilePhotoUrl,
  'users': instance.email,
  'allocation': instance.allocation,
};

_MessMenuEntry _$MessMenuEntryFromJson(Map<String, dynamic> json) =>
    _MessMenuEntry(
      menuId: json['menu_id'] as String,
      dayOfWeek: json['day_of_week'] as String,
      mealSlot: json['meal_slot'] as String,
      menuItems: json['menu_items'] as String? ?? '',
    );

Map<String, dynamic> _$MessMenuEntryToJson(_MessMenuEntry instance) =>
    <String, dynamic>{
      'menu_id': instance.menuId,
      'day_of_week': instance.dayOfWeek,
      'meal_slot': instance.mealSlot,
      'menu_items': instance.menuItems,
    };

_MessSpecialMenuEntry _$MessSpecialMenuEntryFromJson(
  Map<String, dynamic> json,
) => _MessSpecialMenuEntry(
  specialMenuId: json['special_menu_id'] as String,
  specialDate: DateTime.parse(json['special_date'] as String),
  mealSlot: json['meal_slot'] as String,
  menuItems: json['menu_items'] as String? ?? '',
);

Map<String, dynamic> _$MessSpecialMenuEntryToJson(
  _MessSpecialMenuEntry instance,
) => <String, dynamic>{
  'special_menu_id': instance.specialMenuId,
  'special_date': instance.specialDate.toIso8601String(),
  'meal_slot': instance.mealSlot,
  'menu_items': instance.menuItems,
};

_EffectiveMeal _$EffectiveMealFromJson(Map<String, dynamic> json) =>
    _EffectiveMeal(
      mealSlot: json['meal_slot'] as String,
      menuItems: json['menu_items'] as String?,
      isSpecial: json['is_special'] as bool? ?? false,
    );

Map<String, dynamic> _$EffectiveMealToJson(_EffectiveMeal instance) =>
    <String, dynamic>{
      'meal_slot': instance.mealSlot,
      'menu_items': instance.menuItems,
      'is_special': instance.isSpecial,
    };
