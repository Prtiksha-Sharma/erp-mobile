// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StaffProfile {

@JsonKey(name: 'staff_id') String get staffId;@JsonKey(name: 'employee_code') String? get employeeCode;@JsonKey(name: 'full_name') String get fullName; String? get designation; String? get department;@JsonKey(name: 'date_of_joining') DateTime? get dateOfJoining;@JsonKey(name: 'date_of_birth') DateTime? get dateOfBirth; String? get gender;@JsonKey(name: 'contact_number') String? get contactNumber; String? get address; String? get qualification;@JsonKey(name: 'employment_status') String? get employmentStatus;@JsonKey(name: 'profile_photo_url') String? get profilePhotoUrl;@JsonKey(name: 'institution') InstitutionRef? get institution;@JsonKey(name: 'branch') StaffBranchRef? get branch;@JsonKey(name: 'reports_to') StaffManagerRef? get reportsTo;@JsonKey(name: 'users') StaffUserRef? get user;
/// Create a copy of StaffProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffProfileCopyWith<StaffProfile> get copyWith => _$StaffProfileCopyWithImpl<StaffProfile>(this as StaffProfile, _$identity);

  /// Serializes this StaffProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffProfile;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffProfile&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.designation, _this.designation) || other.designation == _this.designation)&&(identical(other.department, _this.department) || other.department == _this.department)&&(identical(other.dateOfJoining, _this.dateOfJoining) || other.dateOfJoining == _this.dateOfJoining)&&(identical(other.dateOfBirth, _this.dateOfBirth) || other.dateOfBirth == _this.dateOfBirth)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.contactNumber, _this.contactNumber) || other.contactNumber == _this.contactNumber)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.qualification, _this.qualification) || other.qualification == _this.qualification)&&(identical(other.employmentStatus, _this.employmentStatus) || other.employmentStatus == _this.employmentStatus)&&(identical(other.profilePhotoUrl, _this.profilePhotoUrl) || other.profilePhotoUrl == _this.profilePhotoUrl)&&(identical(other.institution, _this.institution) || other.institution == _this.institution)&&(identical(other.branch, _this.branch) || other.branch == _this.branch)&&(identical(other.reportsTo, _this.reportsTo) || other.reportsTo == _this.reportsTo)&&(identical(other.user, _this.user) || other.user == _this.user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffProfile;
  return Object.hash(runtimeType,_this.staffId,_this.employeeCode,_this.fullName,_this.designation,_this.department,_this.dateOfJoining,_this.dateOfBirth,_this.gender,_this.contactNumber,_this.address,_this.qualification,_this.employmentStatus,_this.profilePhotoUrl,_this.institution,_this.branch,_this.reportsTo,_this.user);
}

@override
String toString() {
  final _this = this as StaffProfile;
  return 'StaffProfile(staffId: ${_this.staffId}, employeeCode: ${_this.employeeCode}, fullName: ${_this.fullName}, designation: ${_this.designation}, department: ${_this.department}, dateOfJoining: ${_this.dateOfJoining}, dateOfBirth: ${_this.dateOfBirth}, gender: ${_this.gender}, contactNumber: ${_this.contactNumber}, address: ${_this.address}, qualification: ${_this.qualification}, employmentStatus: ${_this.employmentStatus}, profilePhotoUrl: ${_this.profilePhotoUrl}, institution: ${_this.institution}, branch: ${_this.branch}, reportsTo: ${_this.reportsTo}, user: ${_this.user})';
}


}

/// @nodoc
abstract mixin class $StaffProfileCopyWith<$Res>  {
  factory $StaffProfileCopyWith(StaffProfile value, $Res Function(StaffProfile) _then) = _$StaffProfileCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'full_name') String fullName, String? designation, String? department,@JsonKey(name: 'date_of_joining') DateTime? dateOfJoining,@JsonKey(name: 'date_of_birth') DateTime? dateOfBirth, String? gender,@JsonKey(name: 'contact_number') String? contactNumber, String? address, String? qualification,@JsonKey(name: 'employment_status') String? employmentStatus,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,@JsonKey(name: 'institution') InstitutionRef? institution,@JsonKey(name: 'branch') StaffBranchRef? branch,@JsonKey(name: 'reports_to') StaffManagerRef? reportsTo,@JsonKey(name: 'users') StaffUserRef? user
});


$InstitutionRefCopyWith<$Res>? get institution;$StaffBranchRefCopyWith<$Res>? get branch;$StaffManagerRefCopyWith<$Res>? get reportsTo;$StaffUserRefCopyWith<$Res>? get user;

}
/// @nodoc
class _$StaffProfileCopyWithImpl<$Res>
    implements $StaffProfileCopyWith<$Res> {
  _$StaffProfileCopyWithImpl(this._self, this._then);

  final StaffProfile _self;
  final $Res Function(StaffProfile) _then;

/// Create a copy of StaffProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = null,Object? employeeCode = freezed,Object? fullName = null,Object? designation = freezed,Object? department = freezed,Object? dateOfJoining = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? contactNumber = freezed,Object? address = freezed,Object? qualification = freezed,Object? employmentStatus = freezed,Object? profilePhotoUrl = freezed,Object? institution = freezed,Object? branch = freezed,Object? reportsTo = freezed,Object? user = freezed,}) {
  return _then(StaffProfile(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,dateOfJoining: freezed == dateOfJoining ? _self.dateOfJoining : dateOfJoining // ignore: cast_nullable_to_non_nullable
as DateTime?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,qualification: freezed == qualification ? _self.qualification : qualification // ignore: cast_nullable_to_non_nullable
as String?,employmentStatus: freezed == employmentStatus ? _self.employmentStatus : employmentStatus // ignore: cast_nullable_to_non_nullable
as String?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,institution: freezed == institution ? _self.institution : institution // ignore: cast_nullable_to_non_nullable
as InstitutionRef?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as StaffBranchRef?,reportsTo: freezed == reportsTo ? _self.reportsTo : reportsTo // ignore: cast_nullable_to_non_nullable
as StaffManagerRef?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as StaffUserRef?,
  ));
}
/// Create a copy of StaffProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InstitutionRefCopyWith<$Res>? get institution {
    if (_self.institution == null) {
    return null;
  }

  return $InstitutionRefCopyWith<$Res>(_self.institution!, (value) {
    return _then(_self.copyWith(institution: value));
  });
}/// Create a copy of StaffProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StaffBranchRefCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $StaffBranchRefCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}/// Create a copy of StaffProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StaffManagerRefCopyWith<$Res>? get reportsTo {
    if (_self.reportsTo == null) {
    return null;
  }

  return $StaffManagerRefCopyWith<$Res>(_self.reportsTo!, (value) {
    return _then(_self.copyWith(reportsTo: value));
  });
}/// Create a copy of StaffProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StaffUserRefCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $StaffUserRefCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [StaffProfile].
extension StaffProfilePatterns on StaffProfile {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffProfile() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffProfile value)  $default,){
final _that = this;
switch (_that) {
case _StaffProfile():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffProfile value)?  $default,){
final _that = this;
switch (_that) {
case _StaffProfile() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String fullName,  String? designation,  String? department, @JsonKey(name: 'date_of_joining')  DateTime? dateOfJoining, @JsonKey(name: 'date_of_birth')  DateTime? dateOfBirth,  String? gender, @JsonKey(name: 'contact_number')  String? contactNumber,  String? address,  String? qualification, @JsonKey(name: 'employment_status')  String? employmentStatus, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl, @JsonKey(name: 'institution')  InstitutionRef? institution, @JsonKey(name: 'branch')  StaffBranchRef? branch, @JsonKey(name: 'reports_to')  StaffManagerRef? reportsTo, @JsonKey(name: 'users')  StaffUserRef? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffProfile() when $default != null:
return $default(_that.staffId,_that.employeeCode,_that.fullName,_that.designation,_that.department,_that.dateOfJoining,_that.dateOfBirth,_that.gender,_that.contactNumber,_that.address,_that.qualification,_that.employmentStatus,_that.profilePhotoUrl,_that.institution,_that.branch,_that.reportsTo,_that.user);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String fullName,  String? designation,  String? department, @JsonKey(name: 'date_of_joining')  DateTime? dateOfJoining, @JsonKey(name: 'date_of_birth')  DateTime? dateOfBirth,  String? gender, @JsonKey(name: 'contact_number')  String? contactNumber,  String? address,  String? qualification, @JsonKey(name: 'employment_status')  String? employmentStatus, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl, @JsonKey(name: 'institution')  InstitutionRef? institution, @JsonKey(name: 'branch')  StaffBranchRef? branch, @JsonKey(name: 'reports_to')  StaffManagerRef? reportsTo, @JsonKey(name: 'users')  StaffUserRef? user)  $default,) {final _that = this;
switch (_that) {
case _StaffProfile():
return $default(_that.staffId,_that.employeeCode,_that.fullName,_that.designation,_that.department,_that.dateOfJoining,_that.dateOfBirth,_that.gender,_that.contactNumber,_that.address,_that.qualification,_that.employmentStatus,_that.profilePhotoUrl,_that.institution,_that.branch,_that.reportsTo,_that.user);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String fullName,  String? designation,  String? department, @JsonKey(name: 'date_of_joining')  DateTime? dateOfJoining, @JsonKey(name: 'date_of_birth')  DateTime? dateOfBirth,  String? gender, @JsonKey(name: 'contact_number')  String? contactNumber,  String? address,  String? qualification, @JsonKey(name: 'employment_status')  String? employmentStatus, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl, @JsonKey(name: 'institution')  InstitutionRef? institution, @JsonKey(name: 'branch')  StaffBranchRef? branch, @JsonKey(name: 'reports_to')  StaffManagerRef? reportsTo, @JsonKey(name: 'users')  StaffUserRef? user)?  $default,) {final _that = this;
switch (_that) {
case _StaffProfile() when $default != null:
return $default(_that.staffId,_that.employeeCode,_that.fullName,_that.designation,_that.department,_that.dateOfJoining,_that.dateOfBirth,_that.gender,_that.contactNumber,_that.address,_that.qualification,_that.employmentStatus,_that.profilePhotoUrl,_that.institution,_that.branch,_that.reportsTo,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffProfile implements StaffProfile {
  const _StaffProfile({@JsonKey(name: 'staff_id') required this.staffId, @JsonKey(name: 'employee_code') this.employeeCode, @JsonKey(name: 'full_name') required this.fullName, this.designation, this.department, @JsonKey(name: 'date_of_joining') this.dateOfJoining, @JsonKey(name: 'date_of_birth') this.dateOfBirth, this.gender, @JsonKey(name: 'contact_number') this.contactNumber, this.address, this.qualification, @JsonKey(name: 'employment_status') this.employmentStatus, @JsonKey(name: 'profile_photo_url') this.profilePhotoUrl, @JsonKey(name: 'institution') this.institution, @JsonKey(name: 'branch') this.branch, @JsonKey(name: 'reports_to') this.reportsTo, @JsonKey(name: 'users') this.user});
  factory _StaffProfile.fromJson(Map<String, dynamic> json) => _$StaffProfileFromJson(json);

@override@JsonKey(name: 'staff_id') final  String staffId;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override@JsonKey(name: 'full_name') final  String fullName;
@override final  String? designation;
@override final  String? department;
@override@JsonKey(name: 'date_of_joining') final  DateTime? dateOfJoining;
@override@JsonKey(name: 'date_of_birth') final  DateTime? dateOfBirth;
@override final  String? gender;
@override@JsonKey(name: 'contact_number') final  String? contactNumber;
@override final  String? address;
@override final  String? qualification;
@override@JsonKey(name: 'employment_status') final  String? employmentStatus;
@override@JsonKey(name: 'profile_photo_url') final  String? profilePhotoUrl;
@override@JsonKey(name: 'institution') final  InstitutionRef? institution;
@override@JsonKey(name: 'branch') final  StaffBranchRef? branch;
@override@JsonKey(name: 'reports_to') final  StaffManagerRef? reportsTo;
@override@JsonKey(name: 'users') final  StaffUserRef? user;

/// Create a copy of StaffProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffProfileCopyWith<_StaffProfile> get copyWith => __$StaffProfileCopyWithImpl<_StaffProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffProfileToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffProfile&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.department, department) || other.department == department)&&(identical(other.dateOfJoining, dateOfJoining) || other.dateOfJoining == dateOfJoining)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.contactNumber, contactNumber) || other.contactNumber == contactNumber)&&(identical(other.address, address) || other.address == address)&&(identical(other.qualification, qualification) || other.qualification == qualification)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.profilePhotoUrl, profilePhotoUrl) || other.profilePhotoUrl == profilePhotoUrl)&&(identical(other.institution, institution) || other.institution == institution)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.reportsTo, reportsTo) || other.reportsTo == reportsTo)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,employeeCode,fullName,designation,department,dateOfJoining,dateOfBirth,gender,contactNumber,address,qualification,employmentStatus,profilePhotoUrl,institution,branch,reportsTo,user);
}

@override
String toString() {
    return 'StaffProfile(staffId: $staffId, employeeCode: $employeeCode, fullName: $fullName, designation: $designation, department: $department, dateOfJoining: $dateOfJoining, dateOfBirth: $dateOfBirth, gender: $gender, contactNumber: $contactNumber, address: $address, qualification: $qualification, employmentStatus: $employmentStatus, profilePhotoUrl: $profilePhotoUrl, institution: $institution, branch: $branch, reportsTo: $reportsTo, user: $user)';
}


}

/// @nodoc
abstract mixin class _$StaffProfileCopyWith<$Res> implements $StaffProfileCopyWith<$Res> {
  factory _$StaffProfileCopyWith(_StaffProfile value, $Res Function(_StaffProfile) _then) = __$StaffProfileCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'full_name') String fullName, String? designation, String? department,@JsonKey(name: 'date_of_joining') DateTime? dateOfJoining,@JsonKey(name: 'date_of_birth') DateTime? dateOfBirth, String? gender,@JsonKey(name: 'contact_number') String? contactNumber, String? address, String? qualification,@JsonKey(name: 'employment_status') String? employmentStatus,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,@JsonKey(name: 'institution') InstitutionRef? institution,@JsonKey(name: 'branch') StaffBranchRef? branch,@JsonKey(name: 'reports_to') StaffManagerRef? reportsTo,@JsonKey(name: 'users') StaffUserRef? user
});


@override $InstitutionRefCopyWith<$Res>? get institution;@override $StaffBranchRefCopyWith<$Res>? get branch;@override $StaffManagerRefCopyWith<$Res>? get reportsTo;@override $StaffUserRefCopyWith<$Res>? get user;

}
/// @nodoc
class __$StaffProfileCopyWithImpl<$Res>
    implements _$StaffProfileCopyWith<$Res> {
  __$StaffProfileCopyWithImpl(this._self, this._then);

  final _StaffProfile _self;
  final $Res Function(_StaffProfile) _then;

/// Create a copy of StaffProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = null,Object? employeeCode = freezed,Object? fullName = null,Object? designation = freezed,Object? department = freezed,Object? dateOfJoining = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? contactNumber = freezed,Object? address = freezed,Object? qualification = freezed,Object? employmentStatus = freezed,Object? profilePhotoUrl = freezed,Object? institution = freezed,Object? branch = freezed,Object? reportsTo = freezed,Object? user = freezed,}) {
  return _then(_StaffProfile(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,dateOfJoining: freezed == dateOfJoining ? _self.dateOfJoining : dateOfJoining // ignore: cast_nullable_to_non_nullable
as DateTime?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,qualification: freezed == qualification ? _self.qualification : qualification // ignore: cast_nullable_to_non_nullable
as String?,employmentStatus: freezed == employmentStatus ? _self.employmentStatus : employmentStatus // ignore: cast_nullable_to_non_nullable
as String?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,institution: freezed == institution ? _self.institution : institution // ignore: cast_nullable_to_non_nullable
as InstitutionRef?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as StaffBranchRef?,reportsTo: freezed == reportsTo ? _self.reportsTo : reportsTo // ignore: cast_nullable_to_non_nullable
as StaffManagerRef?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as StaffUserRef?,
  ));
}

/// Create a copy of StaffProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InstitutionRefCopyWith<$Res>? get institution {
    if (_self.institution == null) {
    return null;
  }

  return $InstitutionRefCopyWith<$Res>(_self.institution!, (value) {
    return _then(_self.copyWith(institution: value));
  });
}/// Create a copy of StaffProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StaffBranchRefCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $StaffBranchRefCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}/// Create a copy of StaffProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StaffManagerRefCopyWith<$Res>? get reportsTo {
    if (_self.reportsTo == null) {
    return null;
  }

  return $StaffManagerRefCopyWith<$Res>(_self.reportsTo!, (value) {
    return _then(_self.copyWith(reportsTo: value));
  });
}/// Create a copy of StaffProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StaffUserRefCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $StaffUserRefCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$StaffBranchRef {

@JsonKey(name: 'branch_id') String? get branchId;@JsonKey(name: 'branch_name') String? get branchName;
/// Create a copy of StaffBranchRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffBranchRefCopyWith<StaffBranchRef> get copyWith => _$StaffBranchRefCopyWithImpl<StaffBranchRef>(this as StaffBranchRef, _$identity);

  /// Serializes this StaffBranchRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffBranchRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffBranchRef&&(identical(other.branchId, _this.branchId) || other.branchId == _this.branchId)&&(identical(other.branchName, _this.branchName) || other.branchName == _this.branchName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffBranchRef;
  return Object.hash(runtimeType,_this.branchId,_this.branchName);
}

@override
String toString() {
  final _this = this as StaffBranchRef;
  return 'StaffBranchRef(branchId: ${_this.branchId}, branchName: ${_this.branchName})';
}


}

/// @nodoc
abstract mixin class $StaffBranchRefCopyWith<$Res>  {
  factory $StaffBranchRefCopyWith(StaffBranchRef value, $Res Function(StaffBranchRef) _then) = _$StaffBranchRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'branch_id') String? branchId,@JsonKey(name: 'branch_name') String? branchName
});




}
/// @nodoc
class _$StaffBranchRefCopyWithImpl<$Res>
    implements $StaffBranchRefCopyWith<$Res> {
  _$StaffBranchRefCopyWithImpl(this._self, this._then);

  final StaffBranchRef _self;
  final $Res Function(StaffBranchRef) _then;

/// Create a copy of StaffBranchRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branchId = freezed,Object? branchName = freezed,}) {
  return _then(StaffBranchRef(
branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffBranchRef].
extension StaffBranchRefPatterns on StaffBranchRef {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffBranchRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffBranchRef() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffBranchRef value)  $default,){
final _that = this;
switch (_that) {
case _StaffBranchRef():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffBranchRef value)?  $default,){
final _that = this;
switch (_that) {
case _StaffBranchRef() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'branch_id')  String? branchId, @JsonKey(name: 'branch_name')  String? branchName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffBranchRef() when $default != null:
return $default(_that.branchId,_that.branchName);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'branch_id')  String? branchId, @JsonKey(name: 'branch_name')  String? branchName)  $default,) {final _that = this;
switch (_that) {
case _StaffBranchRef():
return $default(_that.branchId,_that.branchName);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'branch_id')  String? branchId, @JsonKey(name: 'branch_name')  String? branchName)?  $default,) {final _that = this;
switch (_that) {
case _StaffBranchRef() when $default != null:
return $default(_that.branchId,_that.branchName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffBranchRef implements StaffBranchRef {
  const _StaffBranchRef({@JsonKey(name: 'branch_id') this.branchId, @JsonKey(name: 'branch_name') this.branchName});
  factory _StaffBranchRef.fromJson(Map<String, dynamic> json) => _$StaffBranchRefFromJson(json);

@override@JsonKey(name: 'branch_id') final  String? branchId;
@override@JsonKey(name: 'branch_name') final  String? branchName;

/// Create a copy of StaffBranchRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffBranchRefCopyWith<_StaffBranchRef> get copyWith => __$StaffBranchRefCopyWithImpl<_StaffBranchRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffBranchRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffBranchRef&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branchName, branchName) || other.branchName == branchName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,branchId,branchName);
}

@override
String toString() {
    return 'StaffBranchRef(branchId: $branchId, branchName: $branchName)';
}


}

/// @nodoc
abstract mixin class _$StaffBranchRefCopyWith<$Res> implements $StaffBranchRefCopyWith<$Res> {
  factory _$StaffBranchRefCopyWith(_StaffBranchRef value, $Res Function(_StaffBranchRef) _then) = __$StaffBranchRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'branch_id') String? branchId,@JsonKey(name: 'branch_name') String? branchName
});




}
/// @nodoc
class __$StaffBranchRefCopyWithImpl<$Res>
    implements _$StaffBranchRefCopyWith<$Res> {
  __$StaffBranchRefCopyWithImpl(this._self, this._then);

  final _StaffBranchRef _self;
  final $Res Function(_StaffBranchRef) _then;

/// Create a copy of StaffBranchRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branchId = freezed,Object? branchName = freezed,}) {
  return _then(_StaffBranchRef(
branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StaffManagerRef {

@JsonKey(name: 'staff_id') String? get staffId;@JsonKey(name: 'full_name') String? get fullName; String? get designation;
/// Create a copy of StaffManagerRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffManagerRefCopyWith<StaffManagerRef> get copyWith => _$StaffManagerRefCopyWithImpl<StaffManagerRef>(this as StaffManagerRef, _$identity);

  /// Serializes this StaffManagerRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffManagerRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffManagerRef&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.designation, _this.designation) || other.designation == _this.designation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffManagerRef;
  return Object.hash(runtimeType,_this.staffId,_this.fullName,_this.designation);
}

@override
String toString() {
  final _this = this as StaffManagerRef;
  return 'StaffManagerRef(staffId: ${_this.staffId}, fullName: ${_this.fullName}, designation: ${_this.designation})';
}


}

/// @nodoc
abstract mixin class $StaffManagerRefCopyWith<$Res>  {
  factory $StaffManagerRefCopyWith(StaffManagerRef value, $Res Function(StaffManagerRef) _then) = _$StaffManagerRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'full_name') String? fullName, String? designation
});




}
/// @nodoc
class _$StaffManagerRefCopyWithImpl<$Res>
    implements $StaffManagerRefCopyWith<$Res> {
  _$StaffManagerRefCopyWithImpl(this._self, this._then);

  final StaffManagerRef _self;
  final $Res Function(StaffManagerRef) _then;

/// Create a copy of StaffManagerRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = freezed,Object? fullName = freezed,Object? designation = freezed,}) {
  return _then(StaffManagerRef(
staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffManagerRef].
extension StaffManagerRefPatterns on StaffManagerRef {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffManagerRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffManagerRef() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffManagerRef value)  $default,){
final _that = this;
switch (_that) {
case _StaffManagerRef():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffManagerRef value)?  $default,){
final _that = this;
switch (_that) {
case _StaffManagerRef() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'full_name')  String? fullName,  String? designation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffManagerRef() when $default != null:
return $default(_that.staffId,_that.fullName,_that.designation);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'full_name')  String? fullName,  String? designation)  $default,) {final _that = this;
switch (_that) {
case _StaffManagerRef():
return $default(_that.staffId,_that.fullName,_that.designation);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'full_name')  String? fullName,  String? designation)?  $default,) {final _that = this;
switch (_that) {
case _StaffManagerRef() when $default != null:
return $default(_that.staffId,_that.fullName,_that.designation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffManagerRef implements StaffManagerRef {
  const _StaffManagerRef({@JsonKey(name: 'staff_id') this.staffId, @JsonKey(name: 'full_name') this.fullName, this.designation});
  factory _StaffManagerRef.fromJson(Map<String, dynamic> json) => _$StaffManagerRefFromJson(json);

@override@JsonKey(name: 'staff_id') final  String? staffId;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override final  String? designation;

/// Create a copy of StaffManagerRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffManagerRefCopyWith<_StaffManagerRef> get copyWith => __$StaffManagerRefCopyWithImpl<_StaffManagerRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffManagerRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffManagerRef&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.designation, designation) || other.designation == designation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,fullName,designation);
}

@override
String toString() {
    return 'StaffManagerRef(staffId: $staffId, fullName: $fullName, designation: $designation)';
}


}

/// @nodoc
abstract mixin class _$StaffManagerRefCopyWith<$Res> implements $StaffManagerRefCopyWith<$Res> {
  factory _$StaffManagerRefCopyWith(_StaffManagerRef value, $Res Function(_StaffManagerRef) _then) = __$StaffManagerRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'full_name') String? fullName, String? designation
});




}
/// @nodoc
class __$StaffManagerRefCopyWithImpl<$Res>
    implements _$StaffManagerRefCopyWith<$Res> {
  __$StaffManagerRefCopyWithImpl(this._self, this._then);

  final _StaffManagerRef _self;
  final $Res Function(_StaffManagerRef) _then;

/// Create a copy of StaffManagerRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = freezed,Object? fullName = freezed,Object? designation = freezed,}) {
  return _then(_StaffManagerRef(
staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StaffUserRef {

 String? get username; String? get email;@JsonKey(name: 'mobile_no') String? get mobileNo;
/// Create a copy of StaffUserRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffUserRefCopyWith<StaffUserRef> get copyWith => _$StaffUserRefCopyWithImpl<StaffUserRef>(this as StaffUserRef, _$identity);

  /// Serializes this StaffUserRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffUserRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffUserRef&&(identical(other.username, _this.username) || other.username == _this.username)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.mobileNo, _this.mobileNo) || other.mobileNo == _this.mobileNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffUserRef;
  return Object.hash(runtimeType,_this.username,_this.email,_this.mobileNo);
}

@override
String toString() {
  final _this = this as StaffUserRef;
  return 'StaffUserRef(username: ${_this.username}, email: ${_this.email}, mobileNo: ${_this.mobileNo})';
}


}

/// @nodoc
abstract mixin class $StaffUserRefCopyWith<$Res>  {
  factory $StaffUserRefCopyWith(StaffUserRef value, $Res Function(StaffUserRef) _then) = _$StaffUserRefCopyWithImpl;
@useResult
$Res call({
 String? username, String? email,@JsonKey(name: 'mobile_no') String? mobileNo
});




}
/// @nodoc
class _$StaffUserRefCopyWithImpl<$Res>
    implements $StaffUserRefCopyWith<$Res> {
  _$StaffUserRefCopyWithImpl(this._self, this._then);

  final StaffUserRef _self;
  final $Res Function(StaffUserRef) _then;

/// Create a copy of StaffUserRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = freezed,Object? email = freezed,Object? mobileNo = freezed,}) {
  return _then(StaffUserRef(
username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffUserRef].
extension StaffUserRefPatterns on StaffUserRef {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffUserRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffUserRef() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffUserRef value)  $default,){
final _that = this;
switch (_that) {
case _StaffUserRef():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffUserRef value)?  $default,){
final _that = this;
switch (_that) {
case _StaffUserRef() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? username,  String? email, @JsonKey(name: 'mobile_no')  String? mobileNo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffUserRef() when $default != null:
return $default(_that.username,_that.email,_that.mobileNo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? username,  String? email, @JsonKey(name: 'mobile_no')  String? mobileNo)  $default,) {final _that = this;
switch (_that) {
case _StaffUserRef():
return $default(_that.username,_that.email,_that.mobileNo);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? username,  String? email, @JsonKey(name: 'mobile_no')  String? mobileNo)?  $default,) {final _that = this;
switch (_that) {
case _StaffUserRef() when $default != null:
return $default(_that.username,_that.email,_that.mobileNo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffUserRef implements StaffUserRef {
  const _StaffUserRef({this.username, this.email, @JsonKey(name: 'mobile_no') this.mobileNo});
  factory _StaffUserRef.fromJson(Map<String, dynamic> json) => _$StaffUserRefFromJson(json);

@override final  String? username;
@override final  String? email;
@override@JsonKey(name: 'mobile_no') final  String? mobileNo;

/// Create a copy of StaffUserRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffUserRefCopyWith<_StaffUserRef> get copyWith => __$StaffUserRefCopyWithImpl<_StaffUserRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffUserRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffUserRef&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,username,email,mobileNo);
}

@override
String toString() {
    return 'StaffUserRef(username: $username, email: $email, mobileNo: $mobileNo)';
}


}

/// @nodoc
abstract mixin class _$StaffUserRefCopyWith<$Res> implements $StaffUserRefCopyWith<$Res> {
  factory _$StaffUserRefCopyWith(_StaffUserRef value, $Res Function(_StaffUserRef) _then) = __$StaffUserRefCopyWithImpl;
@override @useResult
$Res call({
 String? username, String? email,@JsonKey(name: 'mobile_no') String? mobileNo
});




}
/// @nodoc
class __$StaffUserRefCopyWithImpl<$Res>
    implements _$StaffUserRefCopyWith<$Res> {
  __$StaffUserRefCopyWithImpl(this._self, this._then);

  final _StaffUserRef _self;
  final $Res Function(_StaffUserRef) _then;

/// Create a copy of StaffUserRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = freezed,Object? email = freezed,Object? mobileNo = freezed,}) {
  return _then(_StaffUserRef(
username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
