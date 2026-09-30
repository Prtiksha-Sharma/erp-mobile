import 'package:freezed_annotation/freezed_annotation.dart';

import 'academic_refs.dart';

part 'staff_profile.freezed.dart';
part 'staff_profile.g.dart';

/// GET/PATCH /teacher/profile and POST /teacher/profile/photo — all three
/// return teacher/profile.service.js#getMyProfile's `select` (the staff
/// member's own staff_accounts row). Only contact_number, address and
/// profile_photo_url are self-editable (SELF_EDITABLE_FIELDS there);
/// employment fields stay School-Admin-owned.
@freezed
abstract class StaffProfile with _$StaffProfile {
  const factory StaffProfile({
    @JsonKey(name: 'staff_id') required String staffId,
    @JsonKey(name: 'employee_code') String? employeeCode,
    @JsonKey(name: 'full_name') required String fullName,
    String? designation,
    String? department,
    @JsonKey(name: 'date_of_joining') DateTime? dateOfJoining,
    @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
    String? gender,
    @JsonKey(name: 'contact_number') String? contactNumber,
    String? address,
    String? qualification,
    @JsonKey(name: 'employment_status') String? employmentStatus,
    @JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,
    @JsonKey(name: 'institution') InstitutionRef? institution,
    @JsonKey(name: 'branch') StaffBranchRef? branch,
    @JsonKey(name: 'reports_to') StaffManagerRef? reportsTo,
    @JsonKey(name: 'users') StaffUserRef? user,
  }) = _StaffProfile;

  factory StaffProfile.fromJson(Map<String, dynamic> json) => _$StaffProfileFromJson(json);
}

@freezed
abstract class StaffBranchRef with _$StaffBranchRef {
  const factory StaffBranchRef({
    @JsonKey(name: 'branch_id') String? branchId,
    @JsonKey(name: 'branch_name') String? branchName,
  }) = _StaffBranchRef;

  factory StaffBranchRef.fromJson(Map<String, dynamic> json) => _$StaffBranchRefFromJson(json);
}

@freezed
abstract class StaffManagerRef with _$StaffManagerRef {
  const factory StaffManagerRef({
    @JsonKey(name: 'staff_id') String? staffId,
    @JsonKey(name: 'full_name') String? fullName,
    String? designation,
  }) = _StaffManagerRef;

  factory StaffManagerRef.fromJson(Map<String, dynamic> json) => _$StaffManagerRefFromJson(json);
}

@freezed
abstract class StaffUserRef with _$StaffUserRef {
  const factory StaffUserRef({
    String? username,
    String? email,
    @JsonKey(name: 'mobile_no') String? mobileNo,
  }) = _StaffUserRef;

  factory StaffUserRef.fromJson(Map<String, dynamic> json) => _$StaffUserRefFromJson(json);
}
