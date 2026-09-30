// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StaffProfile _$StaffProfileFromJson(
  Map<String, dynamic> json,
) => _StaffProfile(
  staffId: json['staff_id'] as String,
  employeeCode: json['employee_code'] as String?,
  fullName: json['full_name'] as String,
  designation: json['designation'] as String?,
  department: json['department'] as String?,
  dateOfJoining: json['date_of_joining'] == null
      ? null
      : DateTime.parse(json['date_of_joining'] as String),
  dateOfBirth: json['date_of_birth'] == null
      ? null
      : DateTime.parse(json['date_of_birth'] as String),
  gender: json['gender'] as String?,
  contactNumber: json['contact_number'] as String?,
  address: json['address'] as String?,
  qualification: json['qualification'] as String?,
  employmentStatus: json['employment_status'] as String?,
  profilePhotoUrl: json['profile_photo_url'] as String?,
  institution: json['institution'] == null
      ? null
      : InstitutionRef.fromJson(json['institution'] as Map<String, dynamic>),
  branch: json['branch'] == null
      ? null
      : StaffBranchRef.fromJson(json['branch'] as Map<String, dynamic>),
  reportsTo: json['reports_to'] == null
      ? null
      : StaffManagerRef.fromJson(json['reports_to'] as Map<String, dynamic>),
  user: json['users'] == null
      ? null
      : StaffUserRef.fromJson(json['users'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StaffProfileToJson(_StaffProfile instance) =>
    <String, dynamic>{
      'staff_id': instance.staffId,
      'employee_code': instance.employeeCode,
      'full_name': instance.fullName,
      'designation': instance.designation,
      'department': instance.department,
      'date_of_joining': instance.dateOfJoining?.toIso8601String(),
      'date_of_birth': instance.dateOfBirth?.toIso8601String(),
      'gender': instance.gender,
      'contact_number': instance.contactNumber,
      'address': instance.address,
      'qualification': instance.qualification,
      'employment_status': instance.employmentStatus,
      'profile_photo_url': instance.profilePhotoUrl,
      'institution': instance.institution,
      'branch': instance.branch,
      'reports_to': instance.reportsTo,
      'users': instance.user,
    };

_StaffBranchRef _$StaffBranchRefFromJson(Map<String, dynamic> json) =>
    _StaffBranchRef(
      branchId: json['branch_id'] as String?,
      branchName: json['branch_name'] as String?,
    );

Map<String, dynamic> _$StaffBranchRefToJson(_StaffBranchRef instance) =>
    <String, dynamic>{
      'branch_id': instance.branchId,
      'branch_name': instance.branchName,
    };

_StaffManagerRef _$StaffManagerRefFromJson(Map<String, dynamic> json) =>
    _StaffManagerRef(
      staffId: json['staff_id'] as String?,
      fullName: json['full_name'] as String?,
      designation: json['designation'] as String?,
    );

Map<String, dynamic> _$StaffManagerRefToJson(_StaffManagerRef instance) =>
    <String, dynamic>{
      'staff_id': instance.staffId,
      'full_name': instance.fullName,
      'designation': instance.designation,
    };

_StaffUserRef _$StaffUserRefFromJson(Map<String, dynamic> json) =>
    _StaffUserRef(
      username: json['username'] as String?,
      email: json['email'] as String?,
      mobileNo: json['mobile_no'] as String?,
    );

Map<String, dynamic> _$StaffUserRefToJson(_StaffUserRef instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'mobile_no': instance.mobileNo,
    };
