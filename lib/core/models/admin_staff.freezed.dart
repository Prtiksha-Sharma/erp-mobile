// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_staff.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StaffMember {

@JsonKey(name: 'staff_id') String get staffId;@JsonKey(name: 'user_id') String? get userId;@JsonKey(name: 'employee_code') String? get employeeCode;@JsonKey(name: 'full_name') String get fullName; String? get designation; String? get department;@JsonKey(name: 'employee_type') String? get employeeType;@JsonKey(name: 'date_of_joining') DateTime? get dateOfJoining;@JsonKey(name: 'employment_status') String? get employmentStatus;@JsonKey(name: 'profile_photo_url') String? get profilePhotoUrl;@JsonKey(name: 'contact_number') String? get contactNumber; String? get username; String? get email;@JsonKey(name: 'mobile_no') String? get mobileNo;@JsonKey(name: 'account_status') String? get accountStatus; List<String> get roles; StaffBranchRef? get branch;@JsonKey(name: 'date_of_birth') DateTime? get dateOfBirth; String? get gender; String? get address; String? get qualification;@JsonKey(name: 'confirmation_date') DateTime? get confirmationDate;@JsonKey(name: 'work_location') String? get workLocation;@JsonKey(name: 'reports_to') StaffManagerRef? get reportsTo;@JsonKey(name: 'direct_reports') List<StaffManagerRef> get directReports;@JsonKey(name: 'class_teacher_assignments') List<ClassTeacherAssignment> get classTeacherAssignments;@JsonKey(name: 'academic_subject_teachers') List<SubjectTeachingAssignment> get subjectAssignments;@JsonKey(name: 'total_experience_years')@LooseStringConverter() String? get totalExperienceYears;@JsonKey(name: 'bank_name') String? get bankName;@JsonKey(name: 'account_holder_name') String? get accountHolderName;@JsonKey(name: 'bank_account_number') String? get bankAccountNumber;@JsonKey(name: 'ifsc_code') String? get ifscCode;@JsonKey(name: 'branch_name') String? get bankBranchName;@JsonKey(name: 'pan_number') String? get panNumber;@JsonKey(name: 'aadhaar_number') String? get aadhaarNumber;@JsonKey(name: 'pf_uan_number') String? get pfUanNumber;@JsonKey(name: 'esi_number') String? get esiNumber;@JsonKey(name: 'pf_applicable') bool? get pfApplicable;@JsonKey(name: 'esi_applicable') bool? get esiApplicable;
/// Create a copy of StaffMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffMemberCopyWith<StaffMember> get copyWith => _$StaffMemberCopyWithImpl<StaffMember>(this as StaffMember, _$identity);

  /// Serializes this StaffMember to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffMember;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffMember&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.designation, _this.designation) || other.designation == _this.designation)&&(identical(other.department, _this.department) || other.department == _this.department)&&(identical(other.employeeType, _this.employeeType) || other.employeeType == _this.employeeType)&&(identical(other.dateOfJoining, _this.dateOfJoining) || other.dateOfJoining == _this.dateOfJoining)&&(identical(other.employmentStatus, _this.employmentStatus) || other.employmentStatus == _this.employmentStatus)&&(identical(other.profilePhotoUrl, _this.profilePhotoUrl) || other.profilePhotoUrl == _this.profilePhotoUrl)&&(identical(other.contactNumber, _this.contactNumber) || other.contactNumber == _this.contactNumber)&&(identical(other.username, _this.username) || other.username == _this.username)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.mobileNo, _this.mobileNo) || other.mobileNo == _this.mobileNo)&&(identical(other.accountStatus, _this.accountStatus) || other.accountStatus == _this.accountStatus)&&const DeepCollectionEquality().equals(other.roles, _this.roles)&&(identical(other.branch, _this.branch) || other.branch == _this.branch)&&(identical(other.dateOfBirth, _this.dateOfBirth) || other.dateOfBirth == _this.dateOfBirth)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.qualification, _this.qualification) || other.qualification == _this.qualification)&&(identical(other.confirmationDate, _this.confirmationDate) || other.confirmationDate == _this.confirmationDate)&&(identical(other.workLocation, _this.workLocation) || other.workLocation == _this.workLocation)&&(identical(other.reportsTo, _this.reportsTo) || other.reportsTo == _this.reportsTo)&&const DeepCollectionEquality().equals(other.directReports, _this.directReports)&&const DeepCollectionEquality().equals(other.classTeacherAssignments, _this.classTeacherAssignments)&&const DeepCollectionEquality().equals(other.subjectAssignments, _this.subjectAssignments)&&(identical(other.totalExperienceYears, _this.totalExperienceYears) || other.totalExperienceYears == _this.totalExperienceYears)&&(identical(other.bankName, _this.bankName) || other.bankName == _this.bankName)&&(identical(other.accountHolderName, _this.accountHolderName) || other.accountHolderName == _this.accountHolderName)&&(identical(other.bankAccountNumber, _this.bankAccountNumber) || other.bankAccountNumber == _this.bankAccountNumber)&&(identical(other.ifscCode, _this.ifscCode) || other.ifscCode == _this.ifscCode)&&(identical(other.bankBranchName, _this.bankBranchName) || other.bankBranchName == _this.bankBranchName)&&(identical(other.panNumber, _this.panNumber) || other.panNumber == _this.panNumber)&&(identical(other.aadhaarNumber, _this.aadhaarNumber) || other.aadhaarNumber == _this.aadhaarNumber)&&(identical(other.pfUanNumber, _this.pfUanNumber) || other.pfUanNumber == _this.pfUanNumber)&&(identical(other.esiNumber, _this.esiNumber) || other.esiNumber == _this.esiNumber)&&(identical(other.pfApplicable, _this.pfApplicable) || other.pfApplicable == _this.pfApplicable)&&(identical(other.esiApplicable, _this.esiApplicable) || other.esiApplicable == _this.esiApplicable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffMember;
  return Object.hashAll([runtimeType,_this.staffId,_this.userId,_this.employeeCode,_this.fullName,_this.designation,_this.department,_this.employeeType,_this.dateOfJoining,_this.employmentStatus,_this.profilePhotoUrl,_this.contactNumber,_this.username,_this.email,_this.mobileNo,_this.accountStatus,const DeepCollectionEquality().hash(_this.roles),_this.branch,_this.dateOfBirth,_this.gender,_this.address,_this.qualification,_this.confirmationDate,_this.workLocation,_this.reportsTo,const DeepCollectionEquality().hash(_this.directReports),const DeepCollectionEquality().hash(_this.classTeacherAssignments),const DeepCollectionEquality().hash(_this.subjectAssignments),_this.totalExperienceYears,_this.bankName,_this.accountHolderName,_this.bankAccountNumber,_this.ifscCode,_this.bankBranchName,_this.panNumber,_this.aadhaarNumber,_this.pfUanNumber,_this.esiNumber,_this.pfApplicable,_this.esiApplicable]);
}

@override
String toString() {
  final _this = this as StaffMember;
  return 'StaffMember(staffId: ${_this.staffId}, userId: ${_this.userId}, employeeCode: ${_this.employeeCode}, fullName: ${_this.fullName}, designation: ${_this.designation}, department: ${_this.department}, employeeType: ${_this.employeeType}, dateOfJoining: ${_this.dateOfJoining}, employmentStatus: ${_this.employmentStatus}, profilePhotoUrl: ${_this.profilePhotoUrl}, contactNumber: ${_this.contactNumber}, username: ${_this.username}, email: ${_this.email}, mobileNo: ${_this.mobileNo}, accountStatus: ${_this.accountStatus}, roles: ${_this.roles}, branch: ${_this.branch}, dateOfBirth: ${_this.dateOfBirth}, gender: ${_this.gender}, address: ${_this.address}, qualification: ${_this.qualification}, confirmationDate: ${_this.confirmationDate}, workLocation: ${_this.workLocation}, reportsTo: ${_this.reportsTo}, directReports: ${_this.directReports}, classTeacherAssignments: ${_this.classTeacherAssignments}, subjectAssignments: ${_this.subjectAssignments}, totalExperienceYears: ${_this.totalExperienceYears}, bankName: ${_this.bankName}, accountHolderName: ${_this.accountHolderName}, bankAccountNumber: ${_this.bankAccountNumber}, ifscCode: ${_this.ifscCode}, bankBranchName: ${_this.bankBranchName}, panNumber: ${_this.panNumber}, aadhaarNumber: ${_this.aadhaarNumber}, pfUanNumber: ${_this.pfUanNumber}, esiNumber: ${_this.esiNumber}, pfApplicable: ${_this.pfApplicable}, esiApplicable: ${_this.esiApplicable})';
}


}

/// @nodoc
abstract mixin class $StaffMemberCopyWith<$Res>  {
  factory $StaffMemberCopyWith(StaffMember value, $Res Function(StaffMember) _then) = _$StaffMemberCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'full_name') String fullName, String? designation, String? department,@JsonKey(name: 'employee_type') String? employeeType,@JsonKey(name: 'date_of_joining') DateTime? dateOfJoining,@JsonKey(name: 'employment_status') String? employmentStatus,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,@JsonKey(name: 'contact_number') String? contactNumber, String? username, String? email,@JsonKey(name: 'mobile_no') String? mobileNo,@JsonKey(name: 'account_status') String? accountStatus, List<String> roles, StaffBranchRef? branch,@JsonKey(name: 'date_of_birth') DateTime? dateOfBirth, String? gender, String? address, String? qualification,@JsonKey(name: 'confirmation_date') DateTime? confirmationDate,@JsonKey(name: 'work_location') String? workLocation,@JsonKey(name: 'reports_to') StaffManagerRef? reportsTo,@JsonKey(name: 'direct_reports') List<StaffManagerRef> directReports,@JsonKey(name: 'class_teacher_assignments') List<ClassTeacherAssignment> classTeacherAssignments,@JsonKey(name: 'academic_subject_teachers') List<SubjectTeachingAssignment> subjectAssignments,@JsonKey(name: 'total_experience_years')@LooseStringConverter() String? totalExperienceYears,@JsonKey(name: 'bank_name') String? bankName,@JsonKey(name: 'account_holder_name') String? accountHolderName,@JsonKey(name: 'bank_account_number') String? bankAccountNumber,@JsonKey(name: 'ifsc_code') String? ifscCode,@JsonKey(name: 'branch_name') String? bankBranchName,@JsonKey(name: 'pan_number') String? panNumber,@JsonKey(name: 'aadhaar_number') String? aadhaarNumber,@JsonKey(name: 'pf_uan_number') String? pfUanNumber,@JsonKey(name: 'esi_number') String? esiNumber,@JsonKey(name: 'pf_applicable') bool? pfApplicable,@JsonKey(name: 'esi_applicable') bool? esiApplicable
});


$StaffBranchRefCopyWith<$Res>? get branch;$StaffManagerRefCopyWith<$Res>? get reportsTo;

}
/// @nodoc
class _$StaffMemberCopyWithImpl<$Res>
    implements $StaffMemberCopyWith<$Res> {
  _$StaffMemberCopyWithImpl(this._self, this._then);

  final StaffMember _self;
  final $Res Function(StaffMember) _then;

/// Create a copy of StaffMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = null,Object? userId = freezed,Object? employeeCode = freezed,Object? fullName = null,Object? designation = freezed,Object? department = freezed,Object? employeeType = freezed,Object? dateOfJoining = freezed,Object? employmentStatus = freezed,Object? profilePhotoUrl = freezed,Object? contactNumber = freezed,Object? username = freezed,Object? email = freezed,Object? mobileNo = freezed,Object? accountStatus = freezed,Object? roles = null,Object? branch = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? address = freezed,Object? qualification = freezed,Object? confirmationDate = freezed,Object? workLocation = freezed,Object? reportsTo = freezed,Object? directReports = null,Object? classTeacherAssignments = null,Object? subjectAssignments = null,Object? totalExperienceYears = freezed,Object? bankName = freezed,Object? accountHolderName = freezed,Object? bankAccountNumber = freezed,Object? ifscCode = freezed,Object? bankBranchName = freezed,Object? panNumber = freezed,Object? aadhaarNumber = freezed,Object? pfUanNumber = freezed,Object? esiNumber = freezed,Object? pfApplicable = freezed,Object? esiApplicable = freezed,}) {
  return _then(StaffMember(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,employeeType: freezed == employeeType ? _self.employeeType : employeeType // ignore: cast_nullable_to_non_nullable
as String?,dateOfJoining: freezed == dateOfJoining ? _self.dateOfJoining : dateOfJoining // ignore: cast_nullable_to_non_nullable
as DateTime?,employmentStatus: freezed == employmentStatus ? _self.employmentStatus : employmentStatus // ignore: cast_nullable_to_non_nullable
as String?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String?,roles: null == roles ? _self.roles : roles // ignore: cast_nullable_to_non_nullable
as List<String>,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as StaffBranchRef?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,qualification: freezed == qualification ? _self.qualification : qualification // ignore: cast_nullable_to_non_nullable
as String?,confirmationDate: freezed == confirmationDate ? _self.confirmationDate : confirmationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,workLocation: freezed == workLocation ? _self.workLocation : workLocation // ignore: cast_nullable_to_non_nullable
as String?,reportsTo: freezed == reportsTo ? _self.reportsTo : reportsTo // ignore: cast_nullable_to_non_nullable
as StaffManagerRef?,directReports: null == directReports ? _self.directReports : directReports // ignore: cast_nullable_to_non_nullable
as List<StaffManagerRef>,classTeacherAssignments: null == classTeacherAssignments ? _self.classTeacherAssignments : classTeacherAssignments // ignore: cast_nullable_to_non_nullable
as List<ClassTeacherAssignment>,subjectAssignments: null == subjectAssignments ? _self.subjectAssignments : subjectAssignments // ignore: cast_nullable_to_non_nullable
as List<SubjectTeachingAssignment>,totalExperienceYears: freezed == totalExperienceYears ? _self.totalExperienceYears : totalExperienceYears // ignore: cast_nullable_to_non_nullable
as String?,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,accountHolderName: freezed == accountHolderName ? _self.accountHolderName : accountHolderName // ignore: cast_nullable_to_non_nullable
as String?,bankAccountNumber: freezed == bankAccountNumber ? _self.bankAccountNumber : bankAccountNumber // ignore: cast_nullable_to_non_nullable
as String?,ifscCode: freezed == ifscCode ? _self.ifscCode : ifscCode // ignore: cast_nullable_to_non_nullable
as String?,bankBranchName: freezed == bankBranchName ? _self.bankBranchName : bankBranchName // ignore: cast_nullable_to_non_nullable
as String?,panNumber: freezed == panNumber ? _self.panNumber : panNumber // ignore: cast_nullable_to_non_nullable
as String?,aadhaarNumber: freezed == aadhaarNumber ? _self.aadhaarNumber : aadhaarNumber // ignore: cast_nullable_to_non_nullable
as String?,pfUanNumber: freezed == pfUanNumber ? _self.pfUanNumber : pfUanNumber // ignore: cast_nullable_to_non_nullable
as String?,esiNumber: freezed == esiNumber ? _self.esiNumber : esiNumber // ignore: cast_nullable_to_non_nullable
as String?,pfApplicable: freezed == pfApplicable ? _self.pfApplicable : pfApplicable // ignore: cast_nullable_to_non_nullable
as bool?,esiApplicable: freezed == esiApplicable ? _self.esiApplicable : esiApplicable // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of StaffMember
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
}/// Create a copy of StaffMember
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
}
}


/// Adds pattern-matching-related methods to [StaffMember].
extension StaffMemberPatterns on StaffMember {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffMember value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffMember() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffMember value)  $default,){
final _that = this;
switch (_that) {
case _StaffMember():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffMember value)?  $default,){
final _that = this;
switch (_that) {
case _StaffMember() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String fullName,  String? designation,  String? department, @JsonKey(name: 'employee_type')  String? employeeType, @JsonKey(name: 'date_of_joining')  DateTime? dateOfJoining, @JsonKey(name: 'employment_status')  String? employmentStatus, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl, @JsonKey(name: 'contact_number')  String? contactNumber,  String? username,  String? email, @JsonKey(name: 'mobile_no')  String? mobileNo, @JsonKey(name: 'account_status')  String? accountStatus,  List<String> roles,  StaffBranchRef? branch, @JsonKey(name: 'date_of_birth')  DateTime? dateOfBirth,  String? gender,  String? address,  String? qualification, @JsonKey(name: 'confirmation_date')  DateTime? confirmationDate, @JsonKey(name: 'work_location')  String? workLocation, @JsonKey(name: 'reports_to')  StaffManagerRef? reportsTo, @JsonKey(name: 'direct_reports')  List<StaffManagerRef> directReports, @JsonKey(name: 'class_teacher_assignments')  List<ClassTeacherAssignment> classTeacherAssignments, @JsonKey(name: 'academic_subject_teachers')  List<SubjectTeachingAssignment> subjectAssignments, @JsonKey(name: 'total_experience_years')@LooseStringConverter()  String? totalExperienceYears, @JsonKey(name: 'bank_name')  String? bankName, @JsonKey(name: 'account_holder_name')  String? accountHolderName, @JsonKey(name: 'bank_account_number')  String? bankAccountNumber, @JsonKey(name: 'ifsc_code')  String? ifscCode, @JsonKey(name: 'branch_name')  String? bankBranchName, @JsonKey(name: 'pan_number')  String? panNumber, @JsonKey(name: 'aadhaar_number')  String? aadhaarNumber, @JsonKey(name: 'pf_uan_number')  String? pfUanNumber, @JsonKey(name: 'esi_number')  String? esiNumber, @JsonKey(name: 'pf_applicable')  bool? pfApplicable, @JsonKey(name: 'esi_applicable')  bool? esiApplicable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffMember() when $default != null:
return $default(_that.staffId,_that.userId,_that.employeeCode,_that.fullName,_that.designation,_that.department,_that.employeeType,_that.dateOfJoining,_that.employmentStatus,_that.profilePhotoUrl,_that.contactNumber,_that.username,_that.email,_that.mobileNo,_that.accountStatus,_that.roles,_that.branch,_that.dateOfBirth,_that.gender,_that.address,_that.qualification,_that.confirmationDate,_that.workLocation,_that.reportsTo,_that.directReports,_that.classTeacherAssignments,_that.subjectAssignments,_that.totalExperienceYears,_that.bankName,_that.accountHolderName,_that.bankAccountNumber,_that.ifscCode,_that.bankBranchName,_that.panNumber,_that.aadhaarNumber,_that.pfUanNumber,_that.esiNumber,_that.pfApplicable,_that.esiApplicable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String fullName,  String? designation,  String? department, @JsonKey(name: 'employee_type')  String? employeeType, @JsonKey(name: 'date_of_joining')  DateTime? dateOfJoining, @JsonKey(name: 'employment_status')  String? employmentStatus, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl, @JsonKey(name: 'contact_number')  String? contactNumber,  String? username,  String? email, @JsonKey(name: 'mobile_no')  String? mobileNo, @JsonKey(name: 'account_status')  String? accountStatus,  List<String> roles,  StaffBranchRef? branch, @JsonKey(name: 'date_of_birth')  DateTime? dateOfBirth,  String? gender,  String? address,  String? qualification, @JsonKey(name: 'confirmation_date')  DateTime? confirmationDate, @JsonKey(name: 'work_location')  String? workLocation, @JsonKey(name: 'reports_to')  StaffManagerRef? reportsTo, @JsonKey(name: 'direct_reports')  List<StaffManagerRef> directReports, @JsonKey(name: 'class_teacher_assignments')  List<ClassTeacherAssignment> classTeacherAssignments, @JsonKey(name: 'academic_subject_teachers')  List<SubjectTeachingAssignment> subjectAssignments, @JsonKey(name: 'total_experience_years')@LooseStringConverter()  String? totalExperienceYears, @JsonKey(name: 'bank_name')  String? bankName, @JsonKey(name: 'account_holder_name')  String? accountHolderName, @JsonKey(name: 'bank_account_number')  String? bankAccountNumber, @JsonKey(name: 'ifsc_code')  String? ifscCode, @JsonKey(name: 'branch_name')  String? bankBranchName, @JsonKey(name: 'pan_number')  String? panNumber, @JsonKey(name: 'aadhaar_number')  String? aadhaarNumber, @JsonKey(name: 'pf_uan_number')  String? pfUanNumber, @JsonKey(name: 'esi_number')  String? esiNumber, @JsonKey(name: 'pf_applicable')  bool? pfApplicable, @JsonKey(name: 'esi_applicable')  bool? esiApplicable)  $default,) {final _that = this;
switch (_that) {
case _StaffMember():
return $default(_that.staffId,_that.userId,_that.employeeCode,_that.fullName,_that.designation,_that.department,_that.employeeType,_that.dateOfJoining,_that.employmentStatus,_that.profilePhotoUrl,_that.contactNumber,_that.username,_that.email,_that.mobileNo,_that.accountStatus,_that.roles,_that.branch,_that.dateOfBirth,_that.gender,_that.address,_that.qualification,_that.confirmationDate,_that.workLocation,_that.reportsTo,_that.directReports,_that.classTeacherAssignments,_that.subjectAssignments,_that.totalExperienceYears,_that.bankName,_that.accountHolderName,_that.bankAccountNumber,_that.ifscCode,_that.bankBranchName,_that.panNumber,_that.aadhaarNumber,_that.pfUanNumber,_that.esiNumber,_that.pfApplicable,_that.esiApplicable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String fullName,  String? designation,  String? department, @JsonKey(name: 'employee_type')  String? employeeType, @JsonKey(name: 'date_of_joining')  DateTime? dateOfJoining, @JsonKey(name: 'employment_status')  String? employmentStatus, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl, @JsonKey(name: 'contact_number')  String? contactNumber,  String? username,  String? email, @JsonKey(name: 'mobile_no')  String? mobileNo, @JsonKey(name: 'account_status')  String? accountStatus,  List<String> roles,  StaffBranchRef? branch, @JsonKey(name: 'date_of_birth')  DateTime? dateOfBirth,  String? gender,  String? address,  String? qualification, @JsonKey(name: 'confirmation_date')  DateTime? confirmationDate, @JsonKey(name: 'work_location')  String? workLocation, @JsonKey(name: 'reports_to')  StaffManagerRef? reportsTo, @JsonKey(name: 'direct_reports')  List<StaffManagerRef> directReports, @JsonKey(name: 'class_teacher_assignments')  List<ClassTeacherAssignment> classTeacherAssignments, @JsonKey(name: 'academic_subject_teachers')  List<SubjectTeachingAssignment> subjectAssignments, @JsonKey(name: 'total_experience_years')@LooseStringConverter()  String? totalExperienceYears, @JsonKey(name: 'bank_name')  String? bankName, @JsonKey(name: 'account_holder_name')  String? accountHolderName, @JsonKey(name: 'bank_account_number')  String? bankAccountNumber, @JsonKey(name: 'ifsc_code')  String? ifscCode, @JsonKey(name: 'branch_name')  String? bankBranchName, @JsonKey(name: 'pan_number')  String? panNumber, @JsonKey(name: 'aadhaar_number')  String? aadhaarNumber, @JsonKey(name: 'pf_uan_number')  String? pfUanNumber, @JsonKey(name: 'esi_number')  String? esiNumber, @JsonKey(name: 'pf_applicable')  bool? pfApplicable, @JsonKey(name: 'esi_applicable')  bool? esiApplicable)?  $default,) {final _that = this;
switch (_that) {
case _StaffMember() when $default != null:
return $default(_that.staffId,_that.userId,_that.employeeCode,_that.fullName,_that.designation,_that.department,_that.employeeType,_that.dateOfJoining,_that.employmentStatus,_that.profilePhotoUrl,_that.contactNumber,_that.username,_that.email,_that.mobileNo,_that.accountStatus,_that.roles,_that.branch,_that.dateOfBirth,_that.gender,_that.address,_that.qualification,_that.confirmationDate,_that.workLocation,_that.reportsTo,_that.directReports,_that.classTeacherAssignments,_that.subjectAssignments,_that.totalExperienceYears,_that.bankName,_that.accountHolderName,_that.bankAccountNumber,_that.ifscCode,_that.bankBranchName,_that.panNumber,_that.aadhaarNumber,_that.pfUanNumber,_that.esiNumber,_that.pfApplicable,_that.esiApplicable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffMember implements StaffMember {
  const _StaffMember({@JsonKey(name: 'staff_id') required this.staffId, @JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'employee_code') this.employeeCode, @JsonKey(name: 'full_name') required this.fullName, this.designation, this.department, @JsonKey(name: 'employee_type') this.employeeType, @JsonKey(name: 'date_of_joining') this.dateOfJoining, @JsonKey(name: 'employment_status') this.employmentStatus, @JsonKey(name: 'profile_photo_url') this.profilePhotoUrl, @JsonKey(name: 'contact_number') this.contactNumber, this.username, this.email, @JsonKey(name: 'mobile_no') this.mobileNo, @JsonKey(name: 'account_status') this.accountStatus,  List<String> roles = const <String>[], this.branch, @JsonKey(name: 'date_of_birth') this.dateOfBirth, this.gender, this.address, this.qualification, @JsonKey(name: 'confirmation_date') this.confirmationDate, @JsonKey(name: 'work_location') this.workLocation, @JsonKey(name: 'reports_to') this.reportsTo, @JsonKey(name: 'direct_reports')  List<StaffManagerRef> directReports = const <StaffManagerRef>[], @JsonKey(name: 'class_teacher_assignments')  List<ClassTeacherAssignment> classTeacherAssignments = const <ClassTeacherAssignment>[], @JsonKey(name: 'academic_subject_teachers')  List<SubjectTeachingAssignment> subjectAssignments = const <SubjectTeachingAssignment>[], @JsonKey(name: 'total_experience_years')@LooseStringConverter() this.totalExperienceYears, @JsonKey(name: 'bank_name') this.bankName, @JsonKey(name: 'account_holder_name') this.accountHolderName, @JsonKey(name: 'bank_account_number') this.bankAccountNumber, @JsonKey(name: 'ifsc_code') this.ifscCode, @JsonKey(name: 'branch_name') this.bankBranchName, @JsonKey(name: 'pan_number') this.panNumber, @JsonKey(name: 'aadhaar_number') this.aadhaarNumber, @JsonKey(name: 'pf_uan_number') this.pfUanNumber, @JsonKey(name: 'esi_number') this.esiNumber, @JsonKey(name: 'pf_applicable') this.pfApplicable, @JsonKey(name: 'esi_applicable') this.esiApplicable}): _roles = roles,_directReports = directReports,_classTeacherAssignments = classTeacherAssignments,_subjectAssignments = subjectAssignments;
  factory _StaffMember.fromJson(Map<String, dynamic> json) => _$StaffMemberFromJson(json);

@override@JsonKey(name: 'staff_id') final  String staffId;
@override@JsonKey(name: 'user_id') final  String? userId;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override@JsonKey(name: 'full_name') final  String fullName;
@override final  String? designation;
@override final  String? department;
@override@JsonKey(name: 'employee_type') final  String? employeeType;
@override@JsonKey(name: 'date_of_joining') final  DateTime? dateOfJoining;
@override@JsonKey(name: 'employment_status') final  String? employmentStatus;
@override@JsonKey(name: 'profile_photo_url') final  String? profilePhotoUrl;
@override@JsonKey(name: 'contact_number') final  String? contactNumber;
@override final  String? username;
@override final  String? email;
@override@JsonKey(name: 'mobile_no') final  String? mobileNo;
@override@JsonKey(name: 'account_status') final  String? accountStatus;
 final  List<String> _roles;
@override@JsonKey() List<String> get roles {
  if (_roles is EqualUnmodifiableListView) return _roles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roles);
}

@override final  StaffBranchRef? branch;
@override@JsonKey(name: 'date_of_birth') final  DateTime? dateOfBirth;
@override final  String? gender;
@override final  String? address;
@override final  String? qualification;
@override@JsonKey(name: 'confirmation_date') final  DateTime? confirmationDate;
@override@JsonKey(name: 'work_location') final  String? workLocation;
@override@JsonKey(name: 'reports_to') final  StaffManagerRef? reportsTo;
 final  List<StaffManagerRef> _directReports;
@override@JsonKey(name: 'direct_reports') List<StaffManagerRef> get directReports {
  if (_directReports is EqualUnmodifiableListView) return _directReports;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_directReports);
}

 final  List<ClassTeacherAssignment> _classTeacherAssignments;
@override@JsonKey(name: 'class_teacher_assignments') List<ClassTeacherAssignment> get classTeacherAssignments {
  if (_classTeacherAssignments is EqualUnmodifiableListView) return _classTeacherAssignments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_classTeacherAssignments);
}

 final  List<SubjectTeachingAssignment> _subjectAssignments;
@override@JsonKey(name: 'academic_subject_teachers') List<SubjectTeachingAssignment> get subjectAssignments {
  if (_subjectAssignments is EqualUnmodifiableListView) return _subjectAssignments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subjectAssignments);
}

@override@JsonKey(name: 'total_experience_years')@LooseStringConverter() final  String? totalExperienceYears;
@override@JsonKey(name: 'bank_name') final  String? bankName;
@override@JsonKey(name: 'account_holder_name') final  String? accountHolderName;
@override@JsonKey(name: 'bank_account_number') final  String? bankAccountNumber;
@override@JsonKey(name: 'ifsc_code') final  String? ifscCode;
@override@JsonKey(name: 'branch_name') final  String? bankBranchName;
@override@JsonKey(name: 'pan_number') final  String? panNumber;
@override@JsonKey(name: 'aadhaar_number') final  String? aadhaarNumber;
@override@JsonKey(name: 'pf_uan_number') final  String? pfUanNumber;
@override@JsonKey(name: 'esi_number') final  String? esiNumber;
@override@JsonKey(name: 'pf_applicable') final  bool? pfApplicable;
@override@JsonKey(name: 'esi_applicable') final  bool? esiApplicable;

/// Create a copy of StaffMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffMemberCopyWith<_StaffMember> get copyWith => __$StaffMemberCopyWithImpl<_StaffMember>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffMemberToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffMember&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.department, department) || other.department == department)&&(identical(other.employeeType, employeeType) || other.employeeType == employeeType)&&(identical(other.dateOfJoining, dateOfJoining) || other.dateOfJoining == dateOfJoining)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.profilePhotoUrl, profilePhotoUrl) || other.profilePhotoUrl == profilePhotoUrl)&&(identical(other.contactNumber, contactNumber) || other.contactNumber == contactNumber)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus)&&const DeepCollectionEquality().equals(other.roles, _roles)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.address, address) || other.address == address)&&(identical(other.qualification, qualification) || other.qualification == qualification)&&(identical(other.confirmationDate, confirmationDate) || other.confirmationDate == confirmationDate)&&(identical(other.workLocation, workLocation) || other.workLocation == workLocation)&&(identical(other.reportsTo, reportsTo) || other.reportsTo == reportsTo)&&const DeepCollectionEquality().equals(other.directReports, _directReports)&&const DeepCollectionEquality().equals(other.classTeacherAssignments, _classTeacherAssignments)&&const DeepCollectionEquality().equals(other.subjectAssignments, _subjectAssignments)&&(identical(other.totalExperienceYears, totalExperienceYears) || other.totalExperienceYears == totalExperienceYears)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountHolderName, accountHolderName) || other.accountHolderName == accountHolderName)&&(identical(other.bankAccountNumber, bankAccountNumber) || other.bankAccountNumber == bankAccountNumber)&&(identical(other.ifscCode, ifscCode) || other.ifscCode == ifscCode)&&(identical(other.bankBranchName, bankBranchName) || other.bankBranchName == bankBranchName)&&(identical(other.panNumber, panNumber) || other.panNumber == panNumber)&&(identical(other.aadhaarNumber, aadhaarNumber) || other.aadhaarNumber == aadhaarNumber)&&(identical(other.pfUanNumber, pfUanNumber) || other.pfUanNumber == pfUanNumber)&&(identical(other.esiNumber, esiNumber) || other.esiNumber == esiNumber)&&(identical(other.pfApplicable, pfApplicable) || other.pfApplicable == pfApplicable)&&(identical(other.esiApplicable, esiApplicable) || other.esiApplicable == esiApplicable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,staffId,userId,employeeCode,fullName,designation,department,employeeType,dateOfJoining,employmentStatus,profilePhotoUrl,contactNumber,username,email,mobileNo,accountStatus,const DeepCollectionEquality().hash(_roles),branch,dateOfBirth,gender,address,qualification,confirmationDate,workLocation,reportsTo,const DeepCollectionEquality().hash(_directReports),const DeepCollectionEquality().hash(_classTeacherAssignments),const DeepCollectionEquality().hash(_subjectAssignments),totalExperienceYears,bankName,accountHolderName,bankAccountNumber,ifscCode,bankBranchName,panNumber,aadhaarNumber,pfUanNumber,esiNumber,pfApplicable,esiApplicable]);
}

@override
String toString() {
    return 'StaffMember(staffId: $staffId, userId: $userId, employeeCode: $employeeCode, fullName: $fullName, designation: $designation, department: $department, employeeType: $employeeType, dateOfJoining: $dateOfJoining, employmentStatus: $employmentStatus, profilePhotoUrl: $profilePhotoUrl, contactNumber: $contactNumber, username: $username, email: $email, mobileNo: $mobileNo, accountStatus: $accountStatus, roles: $roles, branch: $branch, dateOfBirth: $dateOfBirth, gender: $gender, address: $address, qualification: $qualification, confirmationDate: $confirmationDate, workLocation: $workLocation, reportsTo: $reportsTo, directReports: $directReports, classTeacherAssignments: $classTeacherAssignments, subjectAssignments: $subjectAssignments, totalExperienceYears: $totalExperienceYears, bankName: $bankName, accountHolderName: $accountHolderName, bankAccountNumber: $bankAccountNumber, ifscCode: $ifscCode, bankBranchName: $bankBranchName, panNumber: $panNumber, aadhaarNumber: $aadhaarNumber, pfUanNumber: $pfUanNumber, esiNumber: $esiNumber, pfApplicable: $pfApplicable, esiApplicable: $esiApplicable)';
}


}

/// @nodoc
abstract mixin class _$StaffMemberCopyWith<$Res> implements $StaffMemberCopyWith<$Res> {
  factory _$StaffMemberCopyWith(_StaffMember value, $Res Function(_StaffMember) _then) = __$StaffMemberCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'full_name') String fullName, String? designation, String? department,@JsonKey(name: 'employee_type') String? employeeType,@JsonKey(name: 'date_of_joining') DateTime? dateOfJoining,@JsonKey(name: 'employment_status') String? employmentStatus,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,@JsonKey(name: 'contact_number') String? contactNumber, String? username, String? email,@JsonKey(name: 'mobile_no') String? mobileNo,@JsonKey(name: 'account_status') String? accountStatus, List<String> roles, StaffBranchRef? branch,@JsonKey(name: 'date_of_birth') DateTime? dateOfBirth, String? gender, String? address, String? qualification,@JsonKey(name: 'confirmation_date') DateTime? confirmationDate,@JsonKey(name: 'work_location') String? workLocation,@JsonKey(name: 'reports_to') StaffManagerRef? reportsTo,@JsonKey(name: 'direct_reports') List<StaffManagerRef> directReports,@JsonKey(name: 'class_teacher_assignments') List<ClassTeacherAssignment> classTeacherAssignments,@JsonKey(name: 'academic_subject_teachers') List<SubjectTeachingAssignment> subjectAssignments,@JsonKey(name: 'total_experience_years')@LooseStringConverter() String? totalExperienceYears,@JsonKey(name: 'bank_name') String? bankName,@JsonKey(name: 'account_holder_name') String? accountHolderName,@JsonKey(name: 'bank_account_number') String? bankAccountNumber,@JsonKey(name: 'ifsc_code') String? ifscCode,@JsonKey(name: 'branch_name') String? bankBranchName,@JsonKey(name: 'pan_number') String? panNumber,@JsonKey(name: 'aadhaar_number') String? aadhaarNumber,@JsonKey(name: 'pf_uan_number') String? pfUanNumber,@JsonKey(name: 'esi_number') String? esiNumber,@JsonKey(name: 'pf_applicable') bool? pfApplicable,@JsonKey(name: 'esi_applicable') bool? esiApplicable
});


@override $StaffBranchRefCopyWith<$Res>? get branch;@override $StaffManagerRefCopyWith<$Res>? get reportsTo;

}
/// @nodoc
class __$StaffMemberCopyWithImpl<$Res>
    implements _$StaffMemberCopyWith<$Res> {
  __$StaffMemberCopyWithImpl(this._self, this._then);

  final _StaffMember _self;
  final $Res Function(_StaffMember) _then;

/// Create a copy of StaffMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = null,Object? userId = freezed,Object? employeeCode = freezed,Object? fullName = null,Object? designation = freezed,Object? department = freezed,Object? employeeType = freezed,Object? dateOfJoining = freezed,Object? employmentStatus = freezed,Object? profilePhotoUrl = freezed,Object? contactNumber = freezed,Object? username = freezed,Object? email = freezed,Object? mobileNo = freezed,Object? accountStatus = freezed,Object? roles = null,Object? branch = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? address = freezed,Object? qualification = freezed,Object? confirmationDate = freezed,Object? workLocation = freezed,Object? reportsTo = freezed,Object? directReports = null,Object? classTeacherAssignments = null,Object? subjectAssignments = null,Object? totalExperienceYears = freezed,Object? bankName = freezed,Object? accountHolderName = freezed,Object? bankAccountNumber = freezed,Object? ifscCode = freezed,Object? bankBranchName = freezed,Object? panNumber = freezed,Object? aadhaarNumber = freezed,Object? pfUanNumber = freezed,Object? esiNumber = freezed,Object? pfApplicable = freezed,Object? esiApplicable = freezed,}) {
  return _then(_StaffMember(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,employeeType: freezed == employeeType ? _self.employeeType : employeeType // ignore: cast_nullable_to_non_nullable
as String?,dateOfJoining: freezed == dateOfJoining ? _self.dateOfJoining : dateOfJoining // ignore: cast_nullable_to_non_nullable
as DateTime?,employmentStatus: freezed == employmentStatus ? _self.employmentStatus : employmentStatus // ignore: cast_nullable_to_non_nullable
as String?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String?,roles: null == roles ? _self._roles : roles // ignore: cast_nullable_to_non_nullable
as List<String>,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as StaffBranchRef?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,qualification: freezed == qualification ? _self.qualification : qualification // ignore: cast_nullable_to_non_nullable
as String?,confirmationDate: freezed == confirmationDate ? _self.confirmationDate : confirmationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,workLocation: freezed == workLocation ? _self.workLocation : workLocation // ignore: cast_nullable_to_non_nullable
as String?,reportsTo: freezed == reportsTo ? _self.reportsTo : reportsTo // ignore: cast_nullable_to_non_nullable
as StaffManagerRef?,directReports: null == directReports ? _self._directReports : directReports // ignore: cast_nullable_to_non_nullable
as List<StaffManagerRef>,classTeacherAssignments: null == classTeacherAssignments ? _self._classTeacherAssignments : classTeacherAssignments // ignore: cast_nullable_to_non_nullable
as List<ClassTeacherAssignment>,subjectAssignments: null == subjectAssignments ? _self._subjectAssignments : subjectAssignments // ignore: cast_nullable_to_non_nullable
as List<SubjectTeachingAssignment>,totalExperienceYears: freezed == totalExperienceYears ? _self.totalExperienceYears : totalExperienceYears // ignore: cast_nullable_to_non_nullable
as String?,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,accountHolderName: freezed == accountHolderName ? _self.accountHolderName : accountHolderName // ignore: cast_nullable_to_non_nullable
as String?,bankAccountNumber: freezed == bankAccountNumber ? _self.bankAccountNumber : bankAccountNumber // ignore: cast_nullable_to_non_nullable
as String?,ifscCode: freezed == ifscCode ? _self.ifscCode : ifscCode // ignore: cast_nullable_to_non_nullable
as String?,bankBranchName: freezed == bankBranchName ? _self.bankBranchName : bankBranchName // ignore: cast_nullable_to_non_nullable
as String?,panNumber: freezed == panNumber ? _self.panNumber : panNumber // ignore: cast_nullable_to_non_nullable
as String?,aadhaarNumber: freezed == aadhaarNumber ? _self.aadhaarNumber : aadhaarNumber // ignore: cast_nullable_to_non_nullable
as String?,pfUanNumber: freezed == pfUanNumber ? _self.pfUanNumber : pfUanNumber // ignore: cast_nullable_to_non_nullable
as String?,esiNumber: freezed == esiNumber ? _self.esiNumber : esiNumber // ignore: cast_nullable_to_non_nullable
as String?,pfApplicable: freezed == pfApplicable ? _self.pfApplicable : pfApplicable // ignore: cast_nullable_to_non_nullable
as bool?,esiApplicable: freezed == esiApplicable ? _self.esiApplicable : esiApplicable // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of StaffMember
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
}/// Create a copy of StaffMember
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
}
}


/// @nodoc
mixin _$ClassTeacherAssignment {

@JsonKey(name: 'assignment_id') String get assignmentId; ClassRef? get classes; SectionRef? get sections;
/// Create a copy of ClassTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherAssignmentCopyWith<ClassTeacherAssignment> get copyWith => _$ClassTeacherAssignmentCopyWithImpl<ClassTeacherAssignment>(this as ClassTeacherAssignment, _$identity);

  /// Serializes this ClassTeacherAssignment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherAssignment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherAssignment&&(identical(other.assignmentId, _this.assignmentId) || other.assignmentId == _this.assignmentId)&&(identical(other.classes, _this.classes) || other.classes == _this.classes)&&(identical(other.sections, _this.sections) || other.sections == _this.sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherAssignment;
  return Object.hash(runtimeType,_this.assignmentId,_this.classes,_this.sections);
}

@override
String toString() {
  final _this = this as ClassTeacherAssignment;
  return 'ClassTeacherAssignment(assignmentId: ${_this.assignmentId}, classes: ${_this.classes}, sections: ${_this.sections})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherAssignmentCopyWith<$Res>  {
  factory $ClassTeacherAssignmentCopyWith(ClassTeacherAssignment value, $Res Function(ClassTeacherAssignment) _then) = _$ClassTeacherAssignmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'assignment_id') String assignmentId, ClassRef? classes, SectionRef? sections
});


$ClassRefCopyWith<$Res>? get classes;$SectionRefCopyWith<$Res>? get sections;

}
/// @nodoc
class _$ClassTeacherAssignmentCopyWithImpl<$Res>
    implements $ClassTeacherAssignmentCopyWith<$Res> {
  _$ClassTeacherAssignmentCopyWithImpl(this._self, this._then);

  final ClassTeacherAssignment _self;
  final $Res Function(ClassTeacherAssignment) _then;

/// Create a copy of ClassTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assignmentId = null,Object? classes = freezed,Object? sections = freezed,}) {
  return _then(ClassTeacherAssignment(
assignmentId: null == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String,classes: freezed == classes ? _self.classes : classes // ignore: cast_nullable_to_non_nullable
as ClassRef?,sections: freezed == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as SectionRef?,
  ));
}
/// Create a copy of ClassTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get classes {
    if (_self.classes == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.classes!, (value) {
    return _then(_self.copyWith(classes: value));
  });
}/// Create a copy of ClassTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get sections {
    if (_self.sections == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.sections!, (value) {
    return _then(_self.copyWith(sections: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClassTeacherAssignment].
extension ClassTeacherAssignmentPatterns on ClassTeacherAssignment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherAssignment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherAssignment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherAssignment value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherAssignment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherAssignment value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherAssignment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'assignment_id')  String assignmentId,  ClassRef? classes,  SectionRef? sections)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassTeacherAssignment() when $default != null:
return $default(_that.assignmentId,_that.classes,_that.sections);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'assignment_id')  String assignmentId,  ClassRef? classes,  SectionRef? sections)  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherAssignment():
return $default(_that.assignmentId,_that.classes,_that.sections);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'assignment_id')  String assignmentId,  ClassRef? classes,  SectionRef? sections)?  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherAssignment() when $default != null:
return $default(_that.assignmentId,_that.classes,_that.sections);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherAssignment implements ClassTeacherAssignment {
  const _ClassTeacherAssignment({@JsonKey(name: 'assignment_id') required this.assignmentId, this.classes, this.sections});
  factory _ClassTeacherAssignment.fromJson(Map<String, dynamic> json) => _$ClassTeacherAssignmentFromJson(json);

@override@JsonKey(name: 'assignment_id') final  String assignmentId;
@override final  ClassRef? classes;
@override final  SectionRef? sections;

/// Create a copy of ClassTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherAssignmentCopyWith<_ClassTeacherAssignment> get copyWith => __$ClassTeacherAssignmentCopyWithImpl<_ClassTeacherAssignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherAssignmentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherAssignment&&(identical(other.assignmentId, assignmentId) || other.assignmentId == assignmentId)&&(identical(other.classes, classes) || other.classes == classes)&&(identical(other.sections, sections) || other.sections == sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,assignmentId,classes,sections);
}

@override
String toString() {
    return 'ClassTeacherAssignment(assignmentId: $assignmentId, classes: $classes, sections: $sections)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherAssignmentCopyWith<$Res> implements $ClassTeacherAssignmentCopyWith<$Res> {
  factory _$ClassTeacherAssignmentCopyWith(_ClassTeacherAssignment value, $Res Function(_ClassTeacherAssignment) _then) = __$ClassTeacherAssignmentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'assignment_id') String assignmentId, ClassRef? classes, SectionRef? sections
});


@override $ClassRefCopyWith<$Res>? get classes;@override $SectionRefCopyWith<$Res>? get sections;

}
/// @nodoc
class __$ClassTeacherAssignmentCopyWithImpl<$Res>
    implements _$ClassTeacherAssignmentCopyWith<$Res> {
  __$ClassTeacherAssignmentCopyWithImpl(this._self, this._then);

  final _ClassTeacherAssignment _self;
  final $Res Function(_ClassTeacherAssignment) _then;

/// Create a copy of ClassTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assignmentId = null,Object? classes = freezed,Object? sections = freezed,}) {
  return _then(_ClassTeacherAssignment(
assignmentId: null == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String,classes: freezed == classes ? _self.classes : classes // ignore: cast_nullable_to_non_nullable
as ClassRef?,sections: freezed == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as SectionRef?,
  ));
}

/// Create a copy of ClassTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get classes {
    if (_self.classes == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.classes!, (value) {
    return _then(_self.copyWith(classes: value));
  });
}/// Create a copy of ClassTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get sections {
    if (_self.sections == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.sections!, (value) {
    return _then(_self.copyWith(sections: value));
  });
}
}


/// @nodoc
mixin _$SubjectTeachingAssignment {

@JsonKey(name: 'subject_teacher_id') String get subjectTeacherId;@JsonKey(name: 'academic_subjects') SubjectRef? get subject; ClassRef? get classes; SectionRef? get sections;
/// Create a copy of SubjectTeachingAssignment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectTeachingAssignmentCopyWith<SubjectTeachingAssignment> get copyWith => _$SubjectTeachingAssignmentCopyWithImpl<SubjectTeachingAssignment>(this as SubjectTeachingAssignment, _$identity);

  /// Serializes this SubjectTeachingAssignment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SubjectTeachingAssignment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubjectTeachingAssignment&&(identical(other.subjectTeacherId, _this.subjectTeacherId) || other.subjectTeacherId == _this.subjectTeacherId)&&(identical(other.subject, _this.subject) || other.subject == _this.subject)&&(identical(other.classes, _this.classes) || other.classes == _this.classes)&&(identical(other.sections, _this.sections) || other.sections == _this.sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SubjectTeachingAssignment;
  return Object.hash(runtimeType,_this.subjectTeacherId,_this.subject,_this.classes,_this.sections);
}

@override
String toString() {
  final _this = this as SubjectTeachingAssignment;
  return 'SubjectTeachingAssignment(subjectTeacherId: ${_this.subjectTeacherId}, subject: ${_this.subject}, classes: ${_this.classes}, sections: ${_this.sections})';
}


}

/// @nodoc
abstract mixin class $SubjectTeachingAssignmentCopyWith<$Res>  {
  factory $SubjectTeachingAssignmentCopyWith(SubjectTeachingAssignment value, $Res Function(SubjectTeachingAssignment) _then) = _$SubjectTeachingAssignmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'subject_teacher_id') String subjectTeacherId,@JsonKey(name: 'academic_subjects') SubjectRef? subject, ClassRef? classes, SectionRef? sections
});


$SubjectRefCopyWith<$Res>? get subject;$ClassRefCopyWith<$Res>? get classes;$SectionRefCopyWith<$Res>? get sections;

}
/// @nodoc
class _$SubjectTeachingAssignmentCopyWithImpl<$Res>
    implements $SubjectTeachingAssignmentCopyWith<$Res> {
  _$SubjectTeachingAssignmentCopyWithImpl(this._self, this._then);

  final SubjectTeachingAssignment _self;
  final $Res Function(SubjectTeachingAssignment) _then;

/// Create a copy of SubjectTeachingAssignment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subjectTeacherId = null,Object? subject = freezed,Object? classes = freezed,Object? sections = freezed,}) {
  return _then(SubjectTeachingAssignment(
subjectTeacherId: null == subjectTeacherId ? _self.subjectTeacherId : subjectTeacherId // ignore: cast_nullable_to_non_nullable
as String,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,classes: freezed == classes ? _self.classes : classes // ignore: cast_nullable_to_non_nullable
as ClassRef?,sections: freezed == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as SectionRef?,
  ));
}
/// Create a copy of SubjectTeachingAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubjectRefCopyWith<$Res>? get subject {
    if (_self.subject == null) {
    return null;
  }

  return $SubjectRefCopyWith<$Res>(_self.subject!, (value) {
    return _then(_self.copyWith(subject: value));
  });
}/// Create a copy of SubjectTeachingAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get classes {
    if (_self.classes == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.classes!, (value) {
    return _then(_self.copyWith(classes: value));
  });
}/// Create a copy of SubjectTeachingAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get sections {
    if (_self.sections == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.sections!, (value) {
    return _then(_self.copyWith(sections: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubjectTeachingAssignment].
extension SubjectTeachingAssignmentPatterns on SubjectTeachingAssignment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubjectTeachingAssignment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubjectTeachingAssignment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubjectTeachingAssignment value)  $default,){
final _that = this;
switch (_that) {
case _SubjectTeachingAssignment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubjectTeachingAssignment value)?  $default,){
final _that = this;
switch (_that) {
case _SubjectTeachingAssignment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'subject_teacher_id')  String subjectTeacherId, @JsonKey(name: 'academic_subjects')  SubjectRef? subject,  ClassRef? classes,  SectionRef? sections)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubjectTeachingAssignment() when $default != null:
return $default(_that.subjectTeacherId,_that.subject,_that.classes,_that.sections);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'subject_teacher_id')  String subjectTeacherId, @JsonKey(name: 'academic_subjects')  SubjectRef? subject,  ClassRef? classes,  SectionRef? sections)  $default,) {final _that = this;
switch (_that) {
case _SubjectTeachingAssignment():
return $default(_that.subjectTeacherId,_that.subject,_that.classes,_that.sections);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'subject_teacher_id')  String subjectTeacherId, @JsonKey(name: 'academic_subjects')  SubjectRef? subject,  ClassRef? classes,  SectionRef? sections)?  $default,) {final _that = this;
switch (_that) {
case _SubjectTeachingAssignment() when $default != null:
return $default(_that.subjectTeacherId,_that.subject,_that.classes,_that.sections);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubjectTeachingAssignment implements SubjectTeachingAssignment {
  const _SubjectTeachingAssignment({@JsonKey(name: 'subject_teacher_id') required this.subjectTeacherId, @JsonKey(name: 'academic_subjects') this.subject, this.classes, this.sections});
  factory _SubjectTeachingAssignment.fromJson(Map<String, dynamic> json) => _$SubjectTeachingAssignmentFromJson(json);

@override@JsonKey(name: 'subject_teacher_id') final  String subjectTeacherId;
@override@JsonKey(name: 'academic_subjects') final  SubjectRef? subject;
@override final  ClassRef? classes;
@override final  SectionRef? sections;

/// Create a copy of SubjectTeachingAssignment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubjectTeachingAssignmentCopyWith<_SubjectTeachingAssignment> get copyWith => __$SubjectTeachingAssignmentCopyWithImpl<_SubjectTeachingAssignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubjectTeachingAssignmentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubjectTeachingAssignment&&(identical(other.subjectTeacherId, subjectTeacherId) || other.subjectTeacherId == subjectTeacherId)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.classes, classes) || other.classes == classes)&&(identical(other.sections, sections) || other.sections == sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,subjectTeacherId,subject,classes,sections);
}

@override
String toString() {
    return 'SubjectTeachingAssignment(subjectTeacherId: $subjectTeacherId, subject: $subject, classes: $classes, sections: $sections)';
}


}

/// @nodoc
abstract mixin class _$SubjectTeachingAssignmentCopyWith<$Res> implements $SubjectTeachingAssignmentCopyWith<$Res> {
  factory _$SubjectTeachingAssignmentCopyWith(_SubjectTeachingAssignment value, $Res Function(_SubjectTeachingAssignment) _then) = __$SubjectTeachingAssignmentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'subject_teacher_id') String subjectTeacherId,@JsonKey(name: 'academic_subjects') SubjectRef? subject, ClassRef? classes, SectionRef? sections
});


@override $SubjectRefCopyWith<$Res>? get subject;@override $ClassRefCopyWith<$Res>? get classes;@override $SectionRefCopyWith<$Res>? get sections;

}
/// @nodoc
class __$SubjectTeachingAssignmentCopyWithImpl<$Res>
    implements _$SubjectTeachingAssignmentCopyWith<$Res> {
  __$SubjectTeachingAssignmentCopyWithImpl(this._self, this._then);

  final _SubjectTeachingAssignment _self;
  final $Res Function(_SubjectTeachingAssignment) _then;

/// Create a copy of SubjectTeachingAssignment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subjectTeacherId = null,Object? subject = freezed,Object? classes = freezed,Object? sections = freezed,}) {
  return _then(_SubjectTeachingAssignment(
subjectTeacherId: null == subjectTeacherId ? _self.subjectTeacherId : subjectTeacherId // ignore: cast_nullable_to_non_nullable
as String,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,classes: freezed == classes ? _self.classes : classes // ignore: cast_nullable_to_non_nullable
as ClassRef?,sections: freezed == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as SectionRef?,
  ));
}

/// Create a copy of SubjectTeachingAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubjectRefCopyWith<$Res>? get subject {
    if (_self.subject == null) {
    return null;
  }

  return $SubjectRefCopyWith<$Res>(_self.subject!, (value) {
    return _then(_self.copyWith(subject: value));
  });
}/// Create a copy of SubjectTeachingAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get classes {
    if (_self.classes == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.classes!, (value) {
    return _then(_self.copyWith(classes: value));
  });
}/// Create a copy of SubjectTeachingAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get sections {
    if (_self.sections == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.sections!, (value) {
    return _then(_self.copyWith(sections: value));
  });
}
}


/// @nodoc
mixin _$StaffPage {

 int get total; int get page; int get limit; List<StaffMember> get data;
/// Create a copy of StaffPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffPageCopyWith<StaffPage> get copyWith => _$StaffPageCopyWithImpl<StaffPage>(this as StaffPage, _$identity);

  /// Serializes this StaffPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffPage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffPage&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.limit, _this.limit) || other.limit == _this.limit)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffPage;
  return Object.hash(runtimeType,_this.total,_this.page,_this.limit,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as StaffPage;
  return 'StaffPage(total: ${_this.total}, page: ${_this.page}, limit: ${_this.limit}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $StaffPageCopyWith<$Res>  {
  factory $StaffPageCopyWith(StaffPage value, $Res Function(StaffPage) _then) = _$StaffPageCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, List<StaffMember> data
});




}
/// @nodoc
class _$StaffPageCopyWithImpl<$Res>
    implements $StaffPageCopyWith<$Res> {
  _$StaffPageCopyWithImpl(this._self, this._then);

  final StaffPage _self;
  final $Res Function(StaffPage) _then;

/// Create a copy of StaffPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(StaffPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<StaffMember>,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffPage].
extension StaffPagePatterns on StaffPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffPage value)  $default,){
final _that = this;
switch (_that) {
case _StaffPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffPage value)?  $default,){
final _that = this;
switch (_that) {
case _StaffPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<StaffMember> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffPage() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<StaffMember> data)  $default,) {final _that = this;
switch (_that) {
case _StaffPage():
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int limit,  List<StaffMember> data)?  $default,) {final _that = this;
switch (_that) {
case _StaffPage() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffPage implements StaffPage {
  const _StaffPage({this.total = 0, this.page = 1, this.limit = 20,  List<StaffMember> data = const <StaffMember>[]}): _data = data;
  factory _StaffPage.fromJson(Map<String, dynamic> json) => _$StaffPageFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
 final  List<StaffMember> _data;
@override@JsonKey() List<StaffMember> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of StaffPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffPageCopyWith<_StaffPage> get copyWith => __$StaffPageCopyWithImpl<_StaffPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffPageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffPage&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,page,limit,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'StaffPage(total: $total, page: $page, limit: $limit, data: $data)';
}


}

/// @nodoc
abstract mixin class _$StaffPageCopyWith<$Res> implements $StaffPageCopyWith<$Res> {
  factory _$StaffPageCopyWith(_StaffPage value, $Res Function(_StaffPage) _then) = __$StaffPageCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, List<StaffMember> data
});




}
/// @nodoc
class __$StaffPageCopyWithImpl<$Res>
    implements _$StaffPageCopyWith<$Res> {
  __$StaffPageCopyWithImpl(this._self, this._then);

  final _StaffPage _self;
  final $Res Function(_StaffPage) _then;

/// Create a copy of StaffPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(_StaffPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<StaffMember>,
  ));
}


}


/// @nodoc
mixin _$StaffSummary {

 int get total; int get unassigned; List<StaffRoleCount> get roles;
/// Create a copy of StaffSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffSummaryCopyWith<StaffSummary> get copyWith => _$StaffSummaryCopyWithImpl<StaffSummary>(this as StaffSummary, _$identity);

  /// Serializes this StaffSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffSummary&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.unassigned, _this.unassigned) || other.unassigned == _this.unassigned)&&const DeepCollectionEquality().equals(other.roles, _this.roles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffSummary;
  return Object.hash(runtimeType,_this.total,_this.unassigned,const DeepCollectionEquality().hash(_this.roles));
}

@override
String toString() {
  final _this = this as StaffSummary;
  return 'StaffSummary(total: ${_this.total}, unassigned: ${_this.unassigned}, roles: ${_this.roles})';
}


}

/// @nodoc
abstract mixin class $StaffSummaryCopyWith<$Res>  {
  factory $StaffSummaryCopyWith(StaffSummary value, $Res Function(StaffSummary) _then) = _$StaffSummaryCopyWithImpl;
@useResult
$Res call({
 int total, int unassigned, List<StaffRoleCount> roles
});




}
/// @nodoc
class _$StaffSummaryCopyWithImpl<$Res>
    implements $StaffSummaryCopyWith<$Res> {
  _$StaffSummaryCopyWithImpl(this._self, this._then);

  final StaffSummary _self;
  final $Res Function(StaffSummary) _then;

/// Create a copy of StaffSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? unassigned = null,Object? roles = null,}) {
  return _then(StaffSummary(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,unassigned: null == unassigned ? _self.unassigned : unassigned // ignore: cast_nullable_to_non_nullable
as int,roles: null == roles ? _self.roles : roles // ignore: cast_nullable_to_non_nullable
as List<StaffRoleCount>,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffSummary].
extension StaffSummaryPatterns on StaffSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffSummary value)  $default,){
final _that = this;
switch (_that) {
case _StaffSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffSummary value)?  $default,){
final _that = this;
switch (_that) {
case _StaffSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int unassigned,  List<StaffRoleCount> roles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffSummary() when $default != null:
return $default(_that.total,_that.unassigned,_that.roles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int unassigned,  List<StaffRoleCount> roles)  $default,) {final _that = this;
switch (_that) {
case _StaffSummary():
return $default(_that.total,_that.unassigned,_that.roles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int unassigned,  List<StaffRoleCount> roles)?  $default,) {final _that = this;
switch (_that) {
case _StaffSummary() when $default != null:
return $default(_that.total,_that.unassigned,_that.roles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffSummary implements StaffSummary {
  const _StaffSummary({this.total = 0, this.unassigned = 0,  List<StaffRoleCount> roles = const <StaffRoleCount>[]}): _roles = roles;
  factory _StaffSummary.fromJson(Map<String, dynamic> json) => _$StaffSummaryFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int unassigned;
 final  List<StaffRoleCount> _roles;
@override@JsonKey() List<StaffRoleCount> get roles {
  if (_roles is EqualUnmodifiableListView) return _roles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roles);
}


/// Create a copy of StaffSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffSummaryCopyWith<_StaffSummary> get copyWith => __$StaffSummaryCopyWithImpl<_StaffSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffSummary&&(identical(other.total, total) || other.total == total)&&(identical(other.unassigned, unassigned) || other.unassigned == unassigned)&&const DeepCollectionEquality().equals(other.roles, _roles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,unassigned,const DeepCollectionEquality().hash(_roles));
}

@override
String toString() {
    return 'StaffSummary(total: $total, unassigned: $unassigned, roles: $roles)';
}


}

/// @nodoc
abstract mixin class _$StaffSummaryCopyWith<$Res> implements $StaffSummaryCopyWith<$Res> {
  factory _$StaffSummaryCopyWith(_StaffSummary value, $Res Function(_StaffSummary) _then) = __$StaffSummaryCopyWithImpl;
@override @useResult
$Res call({
 int total, int unassigned, List<StaffRoleCount> roles
});




}
/// @nodoc
class __$StaffSummaryCopyWithImpl<$Res>
    implements _$StaffSummaryCopyWith<$Res> {
  __$StaffSummaryCopyWithImpl(this._self, this._then);

  final _StaffSummary _self;
  final $Res Function(_StaffSummary) _then;

/// Create a copy of StaffSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? unassigned = null,Object? roles = null,}) {
  return _then(_StaffSummary(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,unassigned: null == unassigned ? _self.unassigned : unassigned // ignore: cast_nullable_to_non_nullable
as int,roles: null == roles ? _self._roles : roles // ignore: cast_nullable_to_non_nullable
as List<StaffRoleCount>,
  ));
}


}


/// @nodoc
mixin _$StaffRoleCount {

@JsonKey(name: 'role_name') String get roleName; int get count;
/// Create a copy of StaffRoleCount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffRoleCountCopyWith<StaffRoleCount> get copyWith => _$StaffRoleCountCopyWithImpl<StaffRoleCount>(this as StaffRoleCount, _$identity);

  /// Serializes this StaffRoleCount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffRoleCount;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffRoleCount&&(identical(other.roleName, _this.roleName) || other.roleName == _this.roleName)&&(identical(other.count, _this.count) || other.count == _this.count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffRoleCount;
  return Object.hash(runtimeType,_this.roleName,_this.count);
}

@override
String toString() {
  final _this = this as StaffRoleCount;
  return 'StaffRoleCount(roleName: ${_this.roleName}, count: ${_this.count})';
}


}

/// @nodoc
abstract mixin class $StaffRoleCountCopyWith<$Res>  {
  factory $StaffRoleCountCopyWith(StaffRoleCount value, $Res Function(StaffRoleCount) _then) = _$StaffRoleCountCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'role_name') String roleName, int count
});




}
/// @nodoc
class _$StaffRoleCountCopyWithImpl<$Res>
    implements $StaffRoleCountCopyWith<$Res> {
  _$StaffRoleCountCopyWithImpl(this._self, this._then);

  final StaffRoleCount _self;
  final $Res Function(StaffRoleCount) _then;

/// Create a copy of StaffRoleCount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roleName = null,Object? count = null,}) {
  return _then(StaffRoleCount(
roleName: null == roleName ? _self.roleName : roleName // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffRoleCount].
extension StaffRoleCountPatterns on StaffRoleCount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffRoleCount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffRoleCount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffRoleCount value)  $default,){
final _that = this;
switch (_that) {
case _StaffRoleCount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffRoleCount value)?  $default,){
final _that = this;
switch (_that) {
case _StaffRoleCount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'role_name')  String roleName,  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffRoleCount() when $default != null:
return $default(_that.roleName,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'role_name')  String roleName,  int count)  $default,) {final _that = this;
switch (_that) {
case _StaffRoleCount():
return $default(_that.roleName,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'role_name')  String roleName,  int count)?  $default,) {final _that = this;
switch (_that) {
case _StaffRoleCount() when $default != null:
return $default(_that.roleName,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffRoleCount implements StaffRoleCount {
  const _StaffRoleCount({@JsonKey(name: 'role_name') required this.roleName, this.count = 0});
  factory _StaffRoleCount.fromJson(Map<String, dynamic> json) => _$StaffRoleCountFromJson(json);

@override@JsonKey(name: 'role_name') final  String roleName;
@override@JsonKey() final  int count;

/// Create a copy of StaffRoleCount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffRoleCountCopyWith<_StaffRoleCount> get copyWith => __$StaffRoleCountCopyWithImpl<_StaffRoleCount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffRoleCountToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffRoleCount&&(identical(other.roleName, roleName) || other.roleName == roleName)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,roleName,count);
}

@override
String toString() {
    return 'StaffRoleCount(roleName: $roleName, count: $count)';
}


}

/// @nodoc
abstract mixin class _$StaffRoleCountCopyWith<$Res> implements $StaffRoleCountCopyWith<$Res> {
  factory _$StaffRoleCountCopyWith(_StaffRoleCount value, $Res Function(_StaffRoleCount) _then) = __$StaffRoleCountCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'role_name') String roleName, int count
});




}
/// @nodoc
class __$StaffRoleCountCopyWithImpl<$Res>
    implements _$StaffRoleCountCopyWith<$Res> {
  __$StaffRoleCountCopyWithImpl(this._self, this._then);

  final _StaffRoleCount _self;
  final $Res Function(_StaffRoleCount) _then;

/// Create a copy of StaffRoleCount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roleName = null,Object? count = null,}) {
  return _then(_StaffRoleCount(
roleName: null == roleName ? _self.roleName : roleName // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$StaffCredentials {

@JsonKey(name: 'staff_id') String? get staffId; String get username; String get password;@JsonKey(name: 'full_name') String get fullName;
/// Create a copy of StaffCredentials
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffCredentialsCopyWith<StaffCredentials> get copyWith => _$StaffCredentialsCopyWithImpl<StaffCredentials>(this as StaffCredentials, _$identity);

  /// Serializes this StaffCredentials to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffCredentials;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffCredentials&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.username, _this.username) || other.username == _this.username)&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffCredentials;
  return Object.hash(runtimeType,_this.staffId,_this.username,_this.password,_this.fullName);
}

@override
String toString() {
  final _this = this as StaffCredentials;
  return 'StaffCredentials(staffId: ${_this.staffId}, username: ${_this.username}, password: ${_this.password}, fullName: ${_this.fullName})';
}


}

/// @nodoc
abstract mixin class $StaffCredentialsCopyWith<$Res>  {
  factory $StaffCredentialsCopyWith(StaffCredentials value, $Res Function(StaffCredentials) _then) = _$StaffCredentialsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String? staffId, String username, String password,@JsonKey(name: 'full_name') String fullName
});




}
/// @nodoc
class _$StaffCredentialsCopyWithImpl<$Res>
    implements $StaffCredentialsCopyWith<$Res> {
  _$StaffCredentialsCopyWithImpl(this._self, this._then);

  final StaffCredentials _self;
  final $Res Function(StaffCredentials) _then;

/// Create a copy of StaffCredentials
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = freezed,Object? username = null,Object? password = null,Object? fullName = null,}) {
  return _then(StaffCredentials(
staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffCredentials].
extension StaffCredentialsPatterns on StaffCredentials {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffCredentials value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffCredentials() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffCredentials value)  $default,){
final _that = this;
switch (_that) {
case _StaffCredentials():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffCredentials value)?  $default,){
final _that = this;
switch (_that) {
case _StaffCredentials() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String? staffId,  String username,  String password, @JsonKey(name: 'full_name')  String fullName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffCredentials() when $default != null:
return $default(_that.staffId,_that.username,_that.password,_that.fullName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String? staffId,  String username,  String password, @JsonKey(name: 'full_name')  String fullName)  $default,) {final _that = this;
switch (_that) {
case _StaffCredentials():
return $default(_that.staffId,_that.username,_that.password,_that.fullName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String? staffId,  String username,  String password, @JsonKey(name: 'full_name')  String fullName)?  $default,) {final _that = this;
switch (_that) {
case _StaffCredentials() when $default != null:
return $default(_that.staffId,_that.username,_that.password,_that.fullName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffCredentials implements StaffCredentials {
  const _StaffCredentials({@JsonKey(name: 'staff_id') this.staffId, required this.username, required this.password, @JsonKey(name: 'full_name') required this.fullName});
  factory _StaffCredentials.fromJson(Map<String, dynamic> json) => _$StaffCredentialsFromJson(json);

@override@JsonKey(name: 'staff_id') final  String? staffId;
@override final  String username;
@override final  String password;
@override@JsonKey(name: 'full_name') final  String fullName;

/// Create a copy of StaffCredentials
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffCredentialsCopyWith<_StaffCredentials> get copyWith => __$StaffCredentialsCopyWithImpl<_StaffCredentials>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffCredentialsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffCredentials&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.fullName, fullName) || other.fullName == fullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,username,password,fullName);
}

@override
String toString() {
    return 'StaffCredentials(staffId: $staffId, username: $username, password: $password, fullName: $fullName)';
}


}

/// @nodoc
abstract mixin class _$StaffCredentialsCopyWith<$Res> implements $StaffCredentialsCopyWith<$Res> {
  factory _$StaffCredentialsCopyWith(_StaffCredentials value, $Res Function(_StaffCredentials) _then) = __$StaffCredentialsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String? staffId, String username, String password,@JsonKey(name: 'full_name') String fullName
});




}
/// @nodoc
class __$StaffCredentialsCopyWithImpl<$Res>
    implements _$StaffCredentialsCopyWith<$Res> {
  __$StaffCredentialsCopyWithImpl(this._self, this._then);

  final _StaffCredentials _self;
  final $Res Function(_StaffCredentials) _then;

/// Create a copy of StaffCredentials
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = freezed,Object? username = null,Object? password = null,Object? fullName = null,}) {
  return _then(_StaffCredentials(
staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$StaffDocument {

@JsonKey(name: 'document_id') String get documentId;@JsonKey(name: 'document_name') String get documentName;@JsonKey(name: 'file_name') String? get fileName;@JsonKey(name: 'file_url') String? get fileUrl;@JsonKey(name: 'verification_status') String? get verificationStatus; String? get remarks;@JsonKey(name: 'uploaded_at') DateTime? get uploadedAt;
/// Create a copy of StaffDocument
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffDocumentCopyWith<StaffDocument> get copyWith => _$StaffDocumentCopyWithImpl<StaffDocument>(this as StaffDocument, _$identity);

  /// Serializes this StaffDocument to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffDocument;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffDocument&&(identical(other.documentId, _this.documentId) || other.documentId == _this.documentId)&&(identical(other.documentName, _this.documentName) || other.documentName == _this.documentName)&&(identical(other.fileName, _this.fileName) || other.fileName == _this.fileName)&&(identical(other.fileUrl, _this.fileUrl) || other.fileUrl == _this.fileUrl)&&(identical(other.verificationStatus, _this.verificationStatus) || other.verificationStatus == _this.verificationStatus)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.uploadedAt, _this.uploadedAt) || other.uploadedAt == _this.uploadedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffDocument;
  return Object.hash(runtimeType,_this.documentId,_this.documentName,_this.fileName,_this.fileUrl,_this.verificationStatus,_this.remarks,_this.uploadedAt);
}

@override
String toString() {
  final _this = this as StaffDocument;
  return 'StaffDocument(documentId: ${_this.documentId}, documentName: ${_this.documentName}, fileName: ${_this.fileName}, fileUrl: ${_this.fileUrl}, verificationStatus: ${_this.verificationStatus}, remarks: ${_this.remarks}, uploadedAt: ${_this.uploadedAt})';
}


}

/// @nodoc
abstract mixin class $StaffDocumentCopyWith<$Res>  {
  factory $StaffDocumentCopyWith(StaffDocument value, $Res Function(StaffDocument) _then) = _$StaffDocumentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'document_id') String documentId,@JsonKey(name: 'document_name') String documentName,@JsonKey(name: 'file_name') String? fileName,@JsonKey(name: 'file_url') String? fileUrl,@JsonKey(name: 'verification_status') String? verificationStatus, String? remarks,@JsonKey(name: 'uploaded_at') DateTime? uploadedAt
});




}
/// @nodoc
class _$StaffDocumentCopyWithImpl<$Res>
    implements $StaffDocumentCopyWith<$Res> {
  _$StaffDocumentCopyWithImpl(this._self, this._then);

  final StaffDocument _self;
  final $Res Function(StaffDocument) _then;

/// Create a copy of StaffDocument
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? documentId = null,Object? documentName = null,Object? fileName = freezed,Object? fileUrl = freezed,Object? verificationStatus = freezed,Object? remarks = freezed,Object? uploadedAt = freezed,}) {
  return _then(StaffDocument(
documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,documentName: null == documentName ? _self.documentName : documentName // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,fileUrl: freezed == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffDocument].
extension StaffDocumentPatterns on StaffDocument {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffDocument value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffDocument() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffDocument value)  $default,){
final _that = this;
switch (_that) {
case _StaffDocument():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffDocument value)?  $default,){
final _that = this;
switch (_that) {
case _StaffDocument() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'document_name')  String documentName, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'file_url')  String? fileUrl, @JsonKey(name: 'verification_status')  String? verificationStatus,  String? remarks, @JsonKey(name: 'uploaded_at')  DateTime? uploadedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffDocument() when $default != null:
return $default(_that.documentId,_that.documentName,_that.fileName,_that.fileUrl,_that.verificationStatus,_that.remarks,_that.uploadedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'document_name')  String documentName, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'file_url')  String? fileUrl, @JsonKey(name: 'verification_status')  String? verificationStatus,  String? remarks, @JsonKey(name: 'uploaded_at')  DateTime? uploadedAt)  $default,) {final _that = this;
switch (_that) {
case _StaffDocument():
return $default(_that.documentId,_that.documentName,_that.fileName,_that.fileUrl,_that.verificationStatus,_that.remarks,_that.uploadedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'document_name')  String documentName, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'file_url')  String? fileUrl, @JsonKey(name: 'verification_status')  String? verificationStatus,  String? remarks, @JsonKey(name: 'uploaded_at')  DateTime? uploadedAt)?  $default,) {final _that = this;
switch (_that) {
case _StaffDocument() when $default != null:
return $default(_that.documentId,_that.documentName,_that.fileName,_that.fileUrl,_that.verificationStatus,_that.remarks,_that.uploadedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffDocument implements StaffDocument {
  const _StaffDocument({@JsonKey(name: 'document_id') required this.documentId, @JsonKey(name: 'document_name') required this.documentName, @JsonKey(name: 'file_name') this.fileName, @JsonKey(name: 'file_url') this.fileUrl, @JsonKey(name: 'verification_status') this.verificationStatus, this.remarks, @JsonKey(name: 'uploaded_at') this.uploadedAt});
  factory _StaffDocument.fromJson(Map<String, dynamic> json) => _$StaffDocumentFromJson(json);

@override@JsonKey(name: 'document_id') final  String documentId;
@override@JsonKey(name: 'document_name') final  String documentName;
@override@JsonKey(name: 'file_name') final  String? fileName;
@override@JsonKey(name: 'file_url') final  String? fileUrl;
@override@JsonKey(name: 'verification_status') final  String? verificationStatus;
@override final  String? remarks;
@override@JsonKey(name: 'uploaded_at') final  DateTime? uploadedAt;

/// Create a copy of StaffDocument
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffDocumentCopyWith<_StaffDocument> get copyWith => __$StaffDocumentCopyWithImpl<_StaffDocument>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffDocumentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffDocument&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.documentName, documentName) || other.documentName == documentName)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&(identical(other.verificationStatus, verificationStatus) || other.verificationStatus == verificationStatus)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,documentId,documentName,fileName,fileUrl,verificationStatus,remarks,uploadedAt);
}

@override
String toString() {
    return 'StaffDocument(documentId: $documentId, documentName: $documentName, fileName: $fileName, fileUrl: $fileUrl, verificationStatus: $verificationStatus, remarks: $remarks, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class _$StaffDocumentCopyWith<$Res> implements $StaffDocumentCopyWith<$Res> {
  factory _$StaffDocumentCopyWith(_StaffDocument value, $Res Function(_StaffDocument) _then) = __$StaffDocumentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'document_id') String documentId,@JsonKey(name: 'document_name') String documentName,@JsonKey(name: 'file_name') String? fileName,@JsonKey(name: 'file_url') String? fileUrl,@JsonKey(name: 'verification_status') String? verificationStatus, String? remarks,@JsonKey(name: 'uploaded_at') DateTime? uploadedAt
});




}
/// @nodoc
class __$StaffDocumentCopyWithImpl<$Res>
    implements _$StaffDocumentCopyWith<$Res> {
  __$StaffDocumentCopyWithImpl(this._self, this._then);

  final _StaffDocument _self;
  final $Res Function(_StaffDocument) _then;

/// Create a copy of StaffDocument
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? documentId = null,Object? documentName = null,Object? fileName = freezed,Object? fileUrl = freezed,Object? verificationStatus = freezed,Object? remarks = freezed,Object? uploadedAt = freezed,}) {
  return _then(_StaffDocument(
documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,documentName: null == documentName ? _self.documentName : documentName // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,fileUrl: freezed == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$StaffQualification {

@JsonKey(name: 'qualification_id') String get qualificationId;@JsonKey(name: 'qualification_name') String get qualificationName; String? get specialization;@JsonKey(name: 'institution_name') String? get institutionName;@JsonKey(name: 'university_board') String? get universityBoard;@JsonKey(name: 'passing_year') int? get passingYear;@LooseStringConverter() String? get percentage;@LooseStringConverter() String? get cgpa; String? get grade;@JsonKey(name: 'start_year') int? get startYear;@JsonKey(name: 'end_year') int? get endYear;@JsonKey(name: 'certificate_url') String? get certificateUrl;@JsonKey(name: 'certificate_file_name') String? get certificateFileName;
/// Create a copy of StaffQualification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffQualificationCopyWith<StaffQualification> get copyWith => _$StaffQualificationCopyWithImpl<StaffQualification>(this as StaffQualification, _$identity);

  /// Serializes this StaffQualification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffQualification;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffQualification&&(identical(other.qualificationId, _this.qualificationId) || other.qualificationId == _this.qualificationId)&&(identical(other.qualificationName, _this.qualificationName) || other.qualificationName == _this.qualificationName)&&(identical(other.specialization, _this.specialization) || other.specialization == _this.specialization)&&(identical(other.institutionName, _this.institutionName) || other.institutionName == _this.institutionName)&&(identical(other.universityBoard, _this.universityBoard) || other.universityBoard == _this.universityBoard)&&(identical(other.passingYear, _this.passingYear) || other.passingYear == _this.passingYear)&&(identical(other.percentage, _this.percentage) || other.percentage == _this.percentage)&&(identical(other.cgpa, _this.cgpa) || other.cgpa == _this.cgpa)&&(identical(other.grade, _this.grade) || other.grade == _this.grade)&&(identical(other.startYear, _this.startYear) || other.startYear == _this.startYear)&&(identical(other.endYear, _this.endYear) || other.endYear == _this.endYear)&&(identical(other.certificateUrl, _this.certificateUrl) || other.certificateUrl == _this.certificateUrl)&&(identical(other.certificateFileName, _this.certificateFileName) || other.certificateFileName == _this.certificateFileName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffQualification;
  return Object.hash(runtimeType,_this.qualificationId,_this.qualificationName,_this.specialization,_this.institutionName,_this.universityBoard,_this.passingYear,_this.percentage,_this.cgpa,_this.grade,_this.startYear,_this.endYear,_this.certificateUrl,_this.certificateFileName);
}

@override
String toString() {
  final _this = this as StaffQualification;
  return 'StaffQualification(qualificationId: ${_this.qualificationId}, qualificationName: ${_this.qualificationName}, specialization: ${_this.specialization}, institutionName: ${_this.institutionName}, universityBoard: ${_this.universityBoard}, passingYear: ${_this.passingYear}, percentage: ${_this.percentage}, cgpa: ${_this.cgpa}, grade: ${_this.grade}, startYear: ${_this.startYear}, endYear: ${_this.endYear}, certificateUrl: ${_this.certificateUrl}, certificateFileName: ${_this.certificateFileName})';
}


}

/// @nodoc
abstract mixin class $StaffQualificationCopyWith<$Res>  {
  factory $StaffQualificationCopyWith(StaffQualification value, $Res Function(StaffQualification) _then) = _$StaffQualificationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'qualification_id') String qualificationId,@JsonKey(name: 'qualification_name') String qualificationName, String? specialization,@JsonKey(name: 'institution_name') String? institutionName,@JsonKey(name: 'university_board') String? universityBoard,@JsonKey(name: 'passing_year') int? passingYear,@LooseStringConverter() String? percentage,@LooseStringConverter() String? cgpa, String? grade,@JsonKey(name: 'start_year') int? startYear,@JsonKey(name: 'end_year') int? endYear,@JsonKey(name: 'certificate_url') String? certificateUrl,@JsonKey(name: 'certificate_file_name') String? certificateFileName
});




}
/// @nodoc
class _$StaffQualificationCopyWithImpl<$Res>
    implements $StaffQualificationCopyWith<$Res> {
  _$StaffQualificationCopyWithImpl(this._self, this._then);

  final StaffQualification _self;
  final $Res Function(StaffQualification) _then;

/// Create a copy of StaffQualification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? qualificationId = null,Object? qualificationName = null,Object? specialization = freezed,Object? institutionName = freezed,Object? universityBoard = freezed,Object? passingYear = freezed,Object? percentage = freezed,Object? cgpa = freezed,Object? grade = freezed,Object? startYear = freezed,Object? endYear = freezed,Object? certificateUrl = freezed,Object? certificateFileName = freezed,}) {
  return _then(StaffQualification(
qualificationId: null == qualificationId ? _self.qualificationId : qualificationId // ignore: cast_nullable_to_non_nullable
as String,qualificationName: null == qualificationName ? _self.qualificationName : qualificationName // ignore: cast_nullable_to_non_nullable
as String,specialization: freezed == specialization ? _self.specialization : specialization // ignore: cast_nullable_to_non_nullable
as String?,institutionName: freezed == institutionName ? _self.institutionName : institutionName // ignore: cast_nullable_to_non_nullable
as String?,universityBoard: freezed == universityBoard ? _self.universityBoard : universityBoard // ignore: cast_nullable_to_non_nullable
as String?,passingYear: freezed == passingYear ? _self.passingYear : passingYear // ignore: cast_nullable_to_non_nullable
as int?,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as String?,cgpa: freezed == cgpa ? _self.cgpa : cgpa // ignore: cast_nullable_to_non_nullable
as String?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,startYear: freezed == startYear ? _self.startYear : startYear // ignore: cast_nullable_to_non_nullable
as int?,endYear: freezed == endYear ? _self.endYear : endYear // ignore: cast_nullable_to_non_nullable
as int?,certificateUrl: freezed == certificateUrl ? _self.certificateUrl : certificateUrl // ignore: cast_nullable_to_non_nullable
as String?,certificateFileName: freezed == certificateFileName ? _self.certificateFileName : certificateFileName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffQualification].
extension StaffQualificationPatterns on StaffQualification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffQualification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffQualification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffQualification value)  $default,){
final _that = this;
switch (_that) {
case _StaffQualification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffQualification value)?  $default,){
final _that = this;
switch (_that) {
case _StaffQualification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'qualification_id')  String qualificationId, @JsonKey(name: 'qualification_name')  String qualificationName,  String? specialization, @JsonKey(name: 'institution_name')  String? institutionName, @JsonKey(name: 'university_board')  String? universityBoard, @JsonKey(name: 'passing_year')  int? passingYear, @LooseStringConverter()  String? percentage, @LooseStringConverter()  String? cgpa,  String? grade, @JsonKey(name: 'start_year')  int? startYear, @JsonKey(name: 'end_year')  int? endYear, @JsonKey(name: 'certificate_url')  String? certificateUrl, @JsonKey(name: 'certificate_file_name')  String? certificateFileName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffQualification() when $default != null:
return $default(_that.qualificationId,_that.qualificationName,_that.specialization,_that.institutionName,_that.universityBoard,_that.passingYear,_that.percentage,_that.cgpa,_that.grade,_that.startYear,_that.endYear,_that.certificateUrl,_that.certificateFileName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'qualification_id')  String qualificationId, @JsonKey(name: 'qualification_name')  String qualificationName,  String? specialization, @JsonKey(name: 'institution_name')  String? institutionName, @JsonKey(name: 'university_board')  String? universityBoard, @JsonKey(name: 'passing_year')  int? passingYear, @LooseStringConverter()  String? percentage, @LooseStringConverter()  String? cgpa,  String? grade, @JsonKey(name: 'start_year')  int? startYear, @JsonKey(name: 'end_year')  int? endYear, @JsonKey(name: 'certificate_url')  String? certificateUrl, @JsonKey(name: 'certificate_file_name')  String? certificateFileName)  $default,) {final _that = this;
switch (_that) {
case _StaffQualification():
return $default(_that.qualificationId,_that.qualificationName,_that.specialization,_that.institutionName,_that.universityBoard,_that.passingYear,_that.percentage,_that.cgpa,_that.grade,_that.startYear,_that.endYear,_that.certificateUrl,_that.certificateFileName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'qualification_id')  String qualificationId, @JsonKey(name: 'qualification_name')  String qualificationName,  String? specialization, @JsonKey(name: 'institution_name')  String? institutionName, @JsonKey(name: 'university_board')  String? universityBoard, @JsonKey(name: 'passing_year')  int? passingYear, @LooseStringConverter()  String? percentage, @LooseStringConverter()  String? cgpa,  String? grade, @JsonKey(name: 'start_year')  int? startYear, @JsonKey(name: 'end_year')  int? endYear, @JsonKey(name: 'certificate_url')  String? certificateUrl, @JsonKey(name: 'certificate_file_name')  String? certificateFileName)?  $default,) {final _that = this;
switch (_that) {
case _StaffQualification() when $default != null:
return $default(_that.qualificationId,_that.qualificationName,_that.specialization,_that.institutionName,_that.universityBoard,_that.passingYear,_that.percentage,_that.cgpa,_that.grade,_that.startYear,_that.endYear,_that.certificateUrl,_that.certificateFileName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffQualification implements StaffQualification {
  const _StaffQualification({@JsonKey(name: 'qualification_id') required this.qualificationId, @JsonKey(name: 'qualification_name') required this.qualificationName, this.specialization, @JsonKey(name: 'institution_name') this.institutionName, @JsonKey(name: 'university_board') this.universityBoard, @JsonKey(name: 'passing_year') this.passingYear, @LooseStringConverter() this.percentage, @LooseStringConverter() this.cgpa, this.grade, @JsonKey(name: 'start_year') this.startYear, @JsonKey(name: 'end_year') this.endYear, @JsonKey(name: 'certificate_url') this.certificateUrl, @JsonKey(name: 'certificate_file_name') this.certificateFileName});
  factory _StaffQualification.fromJson(Map<String, dynamic> json) => _$StaffQualificationFromJson(json);

@override@JsonKey(name: 'qualification_id') final  String qualificationId;
@override@JsonKey(name: 'qualification_name') final  String qualificationName;
@override final  String? specialization;
@override@JsonKey(name: 'institution_name') final  String? institutionName;
@override@JsonKey(name: 'university_board') final  String? universityBoard;
@override@JsonKey(name: 'passing_year') final  int? passingYear;
@override@LooseStringConverter() final  String? percentage;
@override@LooseStringConverter() final  String? cgpa;
@override final  String? grade;
@override@JsonKey(name: 'start_year') final  int? startYear;
@override@JsonKey(name: 'end_year') final  int? endYear;
@override@JsonKey(name: 'certificate_url') final  String? certificateUrl;
@override@JsonKey(name: 'certificate_file_name') final  String? certificateFileName;

/// Create a copy of StaffQualification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffQualificationCopyWith<_StaffQualification> get copyWith => __$StaffQualificationCopyWithImpl<_StaffQualification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffQualificationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffQualification&&(identical(other.qualificationId, qualificationId) || other.qualificationId == qualificationId)&&(identical(other.qualificationName, qualificationName) || other.qualificationName == qualificationName)&&(identical(other.specialization, specialization) || other.specialization == specialization)&&(identical(other.institutionName, institutionName) || other.institutionName == institutionName)&&(identical(other.universityBoard, universityBoard) || other.universityBoard == universityBoard)&&(identical(other.passingYear, passingYear) || other.passingYear == passingYear)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.cgpa, cgpa) || other.cgpa == cgpa)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.startYear, startYear) || other.startYear == startYear)&&(identical(other.endYear, endYear) || other.endYear == endYear)&&(identical(other.certificateUrl, certificateUrl) || other.certificateUrl == certificateUrl)&&(identical(other.certificateFileName, certificateFileName) || other.certificateFileName == certificateFileName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,qualificationId,qualificationName,specialization,institutionName,universityBoard,passingYear,percentage,cgpa,grade,startYear,endYear,certificateUrl,certificateFileName);
}

@override
String toString() {
    return 'StaffQualification(qualificationId: $qualificationId, qualificationName: $qualificationName, specialization: $specialization, institutionName: $institutionName, universityBoard: $universityBoard, passingYear: $passingYear, percentage: $percentage, cgpa: $cgpa, grade: $grade, startYear: $startYear, endYear: $endYear, certificateUrl: $certificateUrl, certificateFileName: $certificateFileName)';
}


}

/// @nodoc
abstract mixin class _$StaffQualificationCopyWith<$Res> implements $StaffQualificationCopyWith<$Res> {
  factory _$StaffQualificationCopyWith(_StaffQualification value, $Res Function(_StaffQualification) _then) = __$StaffQualificationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'qualification_id') String qualificationId,@JsonKey(name: 'qualification_name') String qualificationName, String? specialization,@JsonKey(name: 'institution_name') String? institutionName,@JsonKey(name: 'university_board') String? universityBoard,@JsonKey(name: 'passing_year') int? passingYear,@LooseStringConverter() String? percentage,@LooseStringConverter() String? cgpa, String? grade,@JsonKey(name: 'start_year') int? startYear,@JsonKey(name: 'end_year') int? endYear,@JsonKey(name: 'certificate_url') String? certificateUrl,@JsonKey(name: 'certificate_file_name') String? certificateFileName
});




}
/// @nodoc
class __$StaffQualificationCopyWithImpl<$Res>
    implements _$StaffQualificationCopyWith<$Res> {
  __$StaffQualificationCopyWithImpl(this._self, this._then);

  final _StaffQualification _self;
  final $Res Function(_StaffQualification) _then;

/// Create a copy of StaffQualification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? qualificationId = null,Object? qualificationName = null,Object? specialization = freezed,Object? institutionName = freezed,Object? universityBoard = freezed,Object? passingYear = freezed,Object? percentage = freezed,Object? cgpa = freezed,Object? grade = freezed,Object? startYear = freezed,Object? endYear = freezed,Object? certificateUrl = freezed,Object? certificateFileName = freezed,}) {
  return _then(_StaffQualification(
qualificationId: null == qualificationId ? _self.qualificationId : qualificationId // ignore: cast_nullable_to_non_nullable
as String,qualificationName: null == qualificationName ? _self.qualificationName : qualificationName // ignore: cast_nullable_to_non_nullable
as String,specialization: freezed == specialization ? _self.specialization : specialization // ignore: cast_nullable_to_non_nullable
as String?,institutionName: freezed == institutionName ? _self.institutionName : institutionName // ignore: cast_nullable_to_non_nullable
as String?,universityBoard: freezed == universityBoard ? _self.universityBoard : universityBoard // ignore: cast_nullable_to_non_nullable
as String?,passingYear: freezed == passingYear ? _self.passingYear : passingYear // ignore: cast_nullable_to_non_nullable
as int?,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as String?,cgpa: freezed == cgpa ? _self.cgpa : cgpa // ignore: cast_nullable_to_non_nullable
as String?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,startYear: freezed == startYear ? _self.startYear : startYear // ignore: cast_nullable_to_non_nullable
as int?,endYear: freezed == endYear ? _self.endYear : endYear // ignore: cast_nullable_to_non_nullable
as int?,certificateUrl: freezed == certificateUrl ? _self.certificateUrl : certificateUrl // ignore: cast_nullable_to_non_nullable
as String?,certificateFileName: freezed == certificateFileName ? _self.certificateFileName : certificateFileName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StaffExperience {

@JsonKey(name: 'experience_id') String get experienceId;@JsonKey(name: 'organization_name') String get organizationName; String? get designation; String? get department;@JsonKey(name: 'employment_type') String? get employmentType;@JsonKey(name: 'start_date') DateTime? get startDate;@JsonKey(name: 'end_date') DateTime? get endDate;@JsonKey(name: 'is_current') bool get isCurrent; String? get responsibilities; String? get description;@JsonKey(name: 'experience_letter_url') String? get experienceLetterUrl;@JsonKey(name: 'experience_letter_file_name') String? get experienceLetterFileName;
/// Create a copy of StaffExperience
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffExperienceCopyWith<StaffExperience> get copyWith => _$StaffExperienceCopyWithImpl<StaffExperience>(this as StaffExperience, _$identity);

  /// Serializes this StaffExperience to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffExperience;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffExperience&&(identical(other.experienceId, _this.experienceId) || other.experienceId == _this.experienceId)&&(identical(other.organizationName, _this.organizationName) || other.organizationName == _this.organizationName)&&(identical(other.designation, _this.designation) || other.designation == _this.designation)&&(identical(other.department, _this.department) || other.department == _this.department)&&(identical(other.employmentType, _this.employmentType) || other.employmentType == _this.employmentType)&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.endDate, _this.endDate) || other.endDate == _this.endDate)&&(identical(other.isCurrent, _this.isCurrent) || other.isCurrent == _this.isCurrent)&&(identical(other.responsibilities, _this.responsibilities) || other.responsibilities == _this.responsibilities)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.experienceLetterUrl, _this.experienceLetterUrl) || other.experienceLetterUrl == _this.experienceLetterUrl)&&(identical(other.experienceLetterFileName, _this.experienceLetterFileName) || other.experienceLetterFileName == _this.experienceLetterFileName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffExperience;
  return Object.hash(runtimeType,_this.experienceId,_this.organizationName,_this.designation,_this.department,_this.employmentType,_this.startDate,_this.endDate,_this.isCurrent,_this.responsibilities,_this.description,_this.experienceLetterUrl,_this.experienceLetterFileName);
}

@override
String toString() {
  final _this = this as StaffExperience;
  return 'StaffExperience(experienceId: ${_this.experienceId}, organizationName: ${_this.organizationName}, designation: ${_this.designation}, department: ${_this.department}, employmentType: ${_this.employmentType}, startDate: ${_this.startDate}, endDate: ${_this.endDate}, isCurrent: ${_this.isCurrent}, responsibilities: ${_this.responsibilities}, description: ${_this.description}, experienceLetterUrl: ${_this.experienceLetterUrl}, experienceLetterFileName: ${_this.experienceLetterFileName})';
}


}

/// @nodoc
abstract mixin class $StaffExperienceCopyWith<$Res>  {
  factory $StaffExperienceCopyWith(StaffExperience value, $Res Function(StaffExperience) _then) = _$StaffExperienceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'experience_id') String experienceId,@JsonKey(name: 'organization_name') String organizationName, String? designation, String? department,@JsonKey(name: 'employment_type') String? employmentType,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'is_current') bool isCurrent, String? responsibilities, String? description,@JsonKey(name: 'experience_letter_url') String? experienceLetterUrl,@JsonKey(name: 'experience_letter_file_name') String? experienceLetterFileName
});




}
/// @nodoc
class _$StaffExperienceCopyWithImpl<$Res>
    implements $StaffExperienceCopyWith<$Res> {
  _$StaffExperienceCopyWithImpl(this._self, this._then);

  final StaffExperience _self;
  final $Res Function(StaffExperience) _then;

/// Create a copy of StaffExperience
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? experienceId = null,Object? organizationName = null,Object? designation = freezed,Object? department = freezed,Object? employmentType = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? isCurrent = null,Object? responsibilities = freezed,Object? description = freezed,Object? experienceLetterUrl = freezed,Object? experienceLetterFileName = freezed,}) {
  return _then(StaffExperience(
experienceId: null == experienceId ? _self.experienceId : experienceId // ignore: cast_nullable_to_non_nullable
as String,organizationName: null == organizationName ? _self.organizationName : organizationName // ignore: cast_nullable_to_non_nullable
as String,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,employmentType: freezed == employmentType ? _self.employmentType : employmentType // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isCurrent: null == isCurrent ? _self.isCurrent : isCurrent // ignore: cast_nullable_to_non_nullable
as bool,responsibilities: freezed == responsibilities ? _self.responsibilities : responsibilities // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,experienceLetterUrl: freezed == experienceLetterUrl ? _self.experienceLetterUrl : experienceLetterUrl // ignore: cast_nullable_to_non_nullable
as String?,experienceLetterFileName: freezed == experienceLetterFileName ? _self.experienceLetterFileName : experienceLetterFileName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffExperience].
extension StaffExperiencePatterns on StaffExperience {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffExperience value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffExperience() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffExperience value)  $default,){
final _that = this;
switch (_that) {
case _StaffExperience():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffExperience value)?  $default,){
final _that = this;
switch (_that) {
case _StaffExperience() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'experience_id')  String experienceId, @JsonKey(name: 'organization_name')  String organizationName,  String? designation,  String? department, @JsonKey(name: 'employment_type')  String? employmentType, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'is_current')  bool isCurrent,  String? responsibilities,  String? description, @JsonKey(name: 'experience_letter_url')  String? experienceLetterUrl, @JsonKey(name: 'experience_letter_file_name')  String? experienceLetterFileName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffExperience() when $default != null:
return $default(_that.experienceId,_that.organizationName,_that.designation,_that.department,_that.employmentType,_that.startDate,_that.endDate,_that.isCurrent,_that.responsibilities,_that.description,_that.experienceLetterUrl,_that.experienceLetterFileName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'experience_id')  String experienceId, @JsonKey(name: 'organization_name')  String organizationName,  String? designation,  String? department, @JsonKey(name: 'employment_type')  String? employmentType, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'is_current')  bool isCurrent,  String? responsibilities,  String? description, @JsonKey(name: 'experience_letter_url')  String? experienceLetterUrl, @JsonKey(name: 'experience_letter_file_name')  String? experienceLetterFileName)  $default,) {final _that = this;
switch (_that) {
case _StaffExperience():
return $default(_that.experienceId,_that.organizationName,_that.designation,_that.department,_that.employmentType,_that.startDate,_that.endDate,_that.isCurrent,_that.responsibilities,_that.description,_that.experienceLetterUrl,_that.experienceLetterFileName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'experience_id')  String experienceId, @JsonKey(name: 'organization_name')  String organizationName,  String? designation,  String? department, @JsonKey(name: 'employment_type')  String? employmentType, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'is_current')  bool isCurrent,  String? responsibilities,  String? description, @JsonKey(name: 'experience_letter_url')  String? experienceLetterUrl, @JsonKey(name: 'experience_letter_file_name')  String? experienceLetterFileName)?  $default,) {final _that = this;
switch (_that) {
case _StaffExperience() when $default != null:
return $default(_that.experienceId,_that.organizationName,_that.designation,_that.department,_that.employmentType,_that.startDate,_that.endDate,_that.isCurrent,_that.responsibilities,_that.description,_that.experienceLetterUrl,_that.experienceLetterFileName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffExperience implements StaffExperience {
  const _StaffExperience({@JsonKey(name: 'experience_id') required this.experienceId, @JsonKey(name: 'organization_name') required this.organizationName, this.designation, this.department, @JsonKey(name: 'employment_type') this.employmentType, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'end_date') this.endDate, @JsonKey(name: 'is_current') this.isCurrent = false, this.responsibilities, this.description, @JsonKey(name: 'experience_letter_url') this.experienceLetterUrl, @JsonKey(name: 'experience_letter_file_name') this.experienceLetterFileName});
  factory _StaffExperience.fromJson(Map<String, dynamic> json) => _$StaffExperienceFromJson(json);

@override@JsonKey(name: 'experience_id') final  String experienceId;
@override@JsonKey(name: 'organization_name') final  String organizationName;
@override final  String? designation;
@override final  String? department;
@override@JsonKey(name: 'employment_type') final  String? employmentType;
@override@JsonKey(name: 'start_date') final  DateTime? startDate;
@override@JsonKey(name: 'end_date') final  DateTime? endDate;
@override@JsonKey(name: 'is_current') final  bool isCurrent;
@override final  String? responsibilities;
@override final  String? description;
@override@JsonKey(name: 'experience_letter_url') final  String? experienceLetterUrl;
@override@JsonKey(name: 'experience_letter_file_name') final  String? experienceLetterFileName;

/// Create a copy of StaffExperience
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffExperienceCopyWith<_StaffExperience> get copyWith => __$StaffExperienceCopyWithImpl<_StaffExperience>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffExperienceToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffExperience&&(identical(other.experienceId, experienceId) || other.experienceId == experienceId)&&(identical(other.organizationName, organizationName) || other.organizationName == organizationName)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.department, department) || other.department == department)&&(identical(other.employmentType, employmentType) || other.employmentType == employmentType)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent)&&(identical(other.responsibilities, responsibilities) || other.responsibilities == responsibilities)&&(identical(other.description, description) || other.description == description)&&(identical(other.experienceLetterUrl, experienceLetterUrl) || other.experienceLetterUrl == experienceLetterUrl)&&(identical(other.experienceLetterFileName, experienceLetterFileName) || other.experienceLetterFileName == experienceLetterFileName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,experienceId,organizationName,designation,department,employmentType,startDate,endDate,isCurrent,responsibilities,description,experienceLetterUrl,experienceLetterFileName);
}

@override
String toString() {
    return 'StaffExperience(experienceId: $experienceId, organizationName: $organizationName, designation: $designation, department: $department, employmentType: $employmentType, startDate: $startDate, endDate: $endDate, isCurrent: $isCurrent, responsibilities: $responsibilities, description: $description, experienceLetterUrl: $experienceLetterUrl, experienceLetterFileName: $experienceLetterFileName)';
}


}

/// @nodoc
abstract mixin class _$StaffExperienceCopyWith<$Res> implements $StaffExperienceCopyWith<$Res> {
  factory _$StaffExperienceCopyWith(_StaffExperience value, $Res Function(_StaffExperience) _then) = __$StaffExperienceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'experience_id') String experienceId,@JsonKey(name: 'organization_name') String organizationName, String? designation, String? department,@JsonKey(name: 'employment_type') String? employmentType,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'is_current') bool isCurrent, String? responsibilities, String? description,@JsonKey(name: 'experience_letter_url') String? experienceLetterUrl,@JsonKey(name: 'experience_letter_file_name') String? experienceLetterFileName
});




}
/// @nodoc
class __$StaffExperienceCopyWithImpl<$Res>
    implements _$StaffExperienceCopyWith<$Res> {
  __$StaffExperienceCopyWithImpl(this._self, this._then);

  final _StaffExperience _self;
  final $Res Function(_StaffExperience) _then;

/// Create a copy of StaffExperience
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? experienceId = null,Object? organizationName = null,Object? designation = freezed,Object? department = freezed,Object? employmentType = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? isCurrent = null,Object? responsibilities = freezed,Object? description = freezed,Object? experienceLetterUrl = freezed,Object? experienceLetterFileName = freezed,}) {
  return _then(_StaffExperience(
experienceId: null == experienceId ? _self.experienceId : experienceId // ignore: cast_nullable_to_non_nullable
as String,organizationName: null == organizationName ? _self.organizationName : organizationName // ignore: cast_nullable_to_non_nullable
as String,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,employmentType: freezed == employmentType ? _self.employmentType : employmentType // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isCurrent: null == isCurrent ? _self.isCurrent : isCurrent // ignore: cast_nullable_to_non_nullable
as bool,responsibilities: freezed == responsibilities ? _self.responsibilities : responsibilities // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,experienceLetterUrl: freezed == experienceLetterUrl ? _self.experienceLetterUrl : experienceLetterUrl // ignore: cast_nullable_to_non_nullable
as String?,experienceLetterFileName: freezed == experienceLetterFileName ? _self.experienceLetterFileName : experienceLetterFileName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StaffPrincipalRemark {

@JsonKey(name: 'remark_id') String get remarkId;@JsonKey(name: 'remark_text') String get remarkText;@JsonKey(name: 'remark_type') String? get remarkType;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of StaffPrincipalRemark
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffPrincipalRemarkCopyWith<StaffPrincipalRemark> get copyWith => _$StaffPrincipalRemarkCopyWithImpl<StaffPrincipalRemark>(this as StaffPrincipalRemark, _$identity);

  /// Serializes this StaffPrincipalRemark to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffPrincipalRemark;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffPrincipalRemark&&(identical(other.remarkId, _this.remarkId) || other.remarkId == _this.remarkId)&&(identical(other.remarkText, _this.remarkText) || other.remarkText == _this.remarkText)&&(identical(other.remarkType, _this.remarkType) || other.remarkType == _this.remarkType)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffPrincipalRemark;
  return Object.hash(runtimeType,_this.remarkId,_this.remarkText,_this.remarkType,_this.createdAt);
}

@override
String toString() {
  final _this = this as StaffPrincipalRemark;
  return 'StaffPrincipalRemark(remarkId: ${_this.remarkId}, remarkText: ${_this.remarkText}, remarkType: ${_this.remarkType}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $StaffPrincipalRemarkCopyWith<$Res>  {
  factory $StaffPrincipalRemarkCopyWith(StaffPrincipalRemark value, $Res Function(StaffPrincipalRemark) _then) = _$StaffPrincipalRemarkCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'remark_id') String remarkId,@JsonKey(name: 'remark_text') String remarkText,@JsonKey(name: 'remark_type') String? remarkType,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$StaffPrincipalRemarkCopyWithImpl<$Res>
    implements $StaffPrincipalRemarkCopyWith<$Res> {
  _$StaffPrincipalRemarkCopyWithImpl(this._self, this._then);

  final StaffPrincipalRemark _self;
  final $Res Function(StaffPrincipalRemark) _then;

/// Create a copy of StaffPrincipalRemark
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? remarkId = null,Object? remarkText = null,Object? remarkType = freezed,Object? createdAt = freezed,}) {
  return _then(StaffPrincipalRemark(
remarkId: null == remarkId ? _self.remarkId : remarkId // ignore: cast_nullable_to_non_nullable
as String,remarkText: null == remarkText ? _self.remarkText : remarkText // ignore: cast_nullable_to_non_nullable
as String,remarkType: freezed == remarkType ? _self.remarkType : remarkType // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffPrincipalRemark].
extension StaffPrincipalRemarkPatterns on StaffPrincipalRemark {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffPrincipalRemark value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffPrincipalRemark() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffPrincipalRemark value)  $default,){
final _that = this;
switch (_that) {
case _StaffPrincipalRemark():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffPrincipalRemark value)?  $default,){
final _that = this;
switch (_that) {
case _StaffPrincipalRemark() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'remark_id')  String remarkId, @JsonKey(name: 'remark_text')  String remarkText, @JsonKey(name: 'remark_type')  String? remarkType, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffPrincipalRemark() when $default != null:
return $default(_that.remarkId,_that.remarkText,_that.remarkType,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'remark_id')  String remarkId, @JsonKey(name: 'remark_text')  String remarkText, @JsonKey(name: 'remark_type')  String? remarkType, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _StaffPrincipalRemark():
return $default(_that.remarkId,_that.remarkText,_that.remarkType,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'remark_id')  String remarkId, @JsonKey(name: 'remark_text')  String remarkText, @JsonKey(name: 'remark_type')  String? remarkType, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _StaffPrincipalRemark() when $default != null:
return $default(_that.remarkId,_that.remarkText,_that.remarkType,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffPrincipalRemark implements StaffPrincipalRemark {
  const _StaffPrincipalRemark({@JsonKey(name: 'remark_id') required this.remarkId, @JsonKey(name: 'remark_text') required this.remarkText, @JsonKey(name: 'remark_type') this.remarkType, @JsonKey(name: 'created_at') this.createdAt});
  factory _StaffPrincipalRemark.fromJson(Map<String, dynamic> json) => _$StaffPrincipalRemarkFromJson(json);

@override@JsonKey(name: 'remark_id') final  String remarkId;
@override@JsonKey(name: 'remark_text') final  String remarkText;
@override@JsonKey(name: 'remark_type') final  String? remarkType;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of StaffPrincipalRemark
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffPrincipalRemarkCopyWith<_StaffPrincipalRemark> get copyWith => __$StaffPrincipalRemarkCopyWithImpl<_StaffPrincipalRemark>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffPrincipalRemarkToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffPrincipalRemark&&(identical(other.remarkId, remarkId) || other.remarkId == remarkId)&&(identical(other.remarkText, remarkText) || other.remarkText == remarkText)&&(identical(other.remarkType, remarkType) || other.remarkType == remarkType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,remarkId,remarkText,remarkType,createdAt);
}

@override
String toString() {
    return 'StaffPrincipalRemark(remarkId: $remarkId, remarkText: $remarkText, remarkType: $remarkType, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$StaffPrincipalRemarkCopyWith<$Res> implements $StaffPrincipalRemarkCopyWith<$Res> {
  factory _$StaffPrincipalRemarkCopyWith(_StaffPrincipalRemark value, $Res Function(_StaffPrincipalRemark) _then) = __$StaffPrincipalRemarkCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'remark_id') String remarkId,@JsonKey(name: 'remark_text') String remarkText,@JsonKey(name: 'remark_type') String? remarkType,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$StaffPrincipalRemarkCopyWithImpl<$Res>
    implements _$StaffPrincipalRemarkCopyWith<$Res> {
  __$StaffPrincipalRemarkCopyWithImpl(this._self, this._then);

  final _StaffPrincipalRemark _self;
  final $Res Function(_StaffPrincipalRemark) _then;

/// Create a copy of StaffPrincipalRemark
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? remarkId = null,Object? remarkText = null,Object? remarkType = freezed,Object? createdAt = freezed,}) {
  return _then(_StaffPrincipalRemark(
remarkId: null == remarkId ? _self.remarkId : remarkId // ignore: cast_nullable_to_non_nullable
as String,remarkText: null == remarkText ? _self.remarkText : remarkText // ignore: cast_nullable_to_non_nullable
as String,remarkType: freezed == remarkType ? _self.remarkType : remarkType // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$SalaryStructureAssignment {

@JsonKey(name: 'template_id') String get templateId;@JsonKey(name: 'ctc_amount')@DecimalConverter() Decimal get ctcAmount;@JsonKey(name: 'effective_from') DateTime? get effectiveFrom; SalaryTemplate get template;@JsonKey(name: 'take_home_estimate') TakeHomeEstimate? get takeHomeEstimate;
/// Create a copy of SalaryStructureAssignment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalaryStructureAssignmentCopyWith<SalaryStructureAssignment> get copyWith => _$SalaryStructureAssignmentCopyWithImpl<SalaryStructureAssignment>(this as SalaryStructureAssignment, _$identity);

  /// Serializes this SalaryStructureAssignment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SalaryStructureAssignment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalaryStructureAssignment&&(identical(other.templateId, _this.templateId) || other.templateId == _this.templateId)&&(identical(other.ctcAmount, _this.ctcAmount) || other.ctcAmount == _this.ctcAmount)&&(identical(other.effectiveFrom, _this.effectiveFrom) || other.effectiveFrom == _this.effectiveFrom)&&(identical(other.template, _this.template) || other.template == _this.template)&&(identical(other.takeHomeEstimate, _this.takeHomeEstimate) || other.takeHomeEstimate == _this.takeHomeEstimate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SalaryStructureAssignment;
  return Object.hash(runtimeType,_this.templateId,_this.ctcAmount,_this.effectiveFrom,_this.template,_this.takeHomeEstimate);
}

@override
String toString() {
  final _this = this as SalaryStructureAssignment;
  return 'SalaryStructureAssignment(templateId: ${_this.templateId}, ctcAmount: ${_this.ctcAmount}, effectiveFrom: ${_this.effectiveFrom}, template: ${_this.template}, takeHomeEstimate: ${_this.takeHomeEstimate})';
}


}

/// @nodoc
abstract mixin class $SalaryStructureAssignmentCopyWith<$Res>  {
  factory $SalaryStructureAssignmentCopyWith(SalaryStructureAssignment value, $Res Function(SalaryStructureAssignment) _then) = _$SalaryStructureAssignmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'template_id') String templateId,@JsonKey(name: 'ctc_amount')@DecimalConverter() Decimal ctcAmount,@JsonKey(name: 'effective_from') DateTime? effectiveFrom, SalaryTemplate template,@JsonKey(name: 'take_home_estimate') TakeHomeEstimate? takeHomeEstimate
});


$SalaryTemplateCopyWith<$Res> get template;$TakeHomeEstimateCopyWith<$Res>? get takeHomeEstimate;

}
/// @nodoc
class _$SalaryStructureAssignmentCopyWithImpl<$Res>
    implements $SalaryStructureAssignmentCopyWith<$Res> {
  _$SalaryStructureAssignmentCopyWithImpl(this._self, this._then);

  final SalaryStructureAssignment _self;
  final $Res Function(SalaryStructureAssignment) _then;

/// Create a copy of SalaryStructureAssignment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? templateId = null,Object? ctcAmount = null,Object? effectiveFrom = freezed,Object? template = null,Object? takeHomeEstimate = freezed,}) {
  return _then(SalaryStructureAssignment(
templateId: null == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String,ctcAmount: null == ctcAmount ? _self.ctcAmount : ctcAmount // ignore: cast_nullable_to_non_nullable
as Decimal,effectiveFrom: freezed == effectiveFrom ? _self.effectiveFrom : effectiveFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,template: null == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as SalaryTemplate,takeHomeEstimate: freezed == takeHomeEstimate ? _self.takeHomeEstimate : takeHomeEstimate // ignore: cast_nullable_to_non_nullable
as TakeHomeEstimate?,
  ));
}
/// Create a copy of SalaryStructureAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalaryTemplateCopyWith<$Res> get template {
  
  return $SalaryTemplateCopyWith<$Res>(_self.template, (value) {
    return _then(_self.copyWith(template: value));
  });
}/// Create a copy of SalaryStructureAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TakeHomeEstimateCopyWith<$Res>? get takeHomeEstimate {
    if (_self.takeHomeEstimate == null) {
    return null;
  }

  return $TakeHomeEstimateCopyWith<$Res>(_self.takeHomeEstimate!, (value) {
    return _then(_self.copyWith(takeHomeEstimate: value));
  });
}
}


/// Adds pattern-matching-related methods to [SalaryStructureAssignment].
extension SalaryStructureAssignmentPatterns on SalaryStructureAssignment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalaryStructureAssignment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalaryStructureAssignment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalaryStructureAssignment value)  $default,){
final _that = this;
switch (_that) {
case _SalaryStructureAssignment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalaryStructureAssignment value)?  $default,){
final _that = this;
switch (_that) {
case _SalaryStructureAssignment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'template_id')  String templateId, @JsonKey(name: 'ctc_amount')@DecimalConverter()  Decimal ctcAmount, @JsonKey(name: 'effective_from')  DateTime? effectiveFrom,  SalaryTemplate template, @JsonKey(name: 'take_home_estimate')  TakeHomeEstimate? takeHomeEstimate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalaryStructureAssignment() when $default != null:
return $default(_that.templateId,_that.ctcAmount,_that.effectiveFrom,_that.template,_that.takeHomeEstimate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'template_id')  String templateId, @JsonKey(name: 'ctc_amount')@DecimalConverter()  Decimal ctcAmount, @JsonKey(name: 'effective_from')  DateTime? effectiveFrom,  SalaryTemplate template, @JsonKey(name: 'take_home_estimate')  TakeHomeEstimate? takeHomeEstimate)  $default,) {final _that = this;
switch (_that) {
case _SalaryStructureAssignment():
return $default(_that.templateId,_that.ctcAmount,_that.effectiveFrom,_that.template,_that.takeHomeEstimate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'template_id')  String templateId, @JsonKey(name: 'ctc_amount')@DecimalConverter()  Decimal ctcAmount, @JsonKey(name: 'effective_from')  DateTime? effectiveFrom,  SalaryTemplate template, @JsonKey(name: 'take_home_estimate')  TakeHomeEstimate? takeHomeEstimate)?  $default,) {final _that = this;
switch (_that) {
case _SalaryStructureAssignment() when $default != null:
return $default(_that.templateId,_that.ctcAmount,_that.effectiveFrom,_that.template,_that.takeHomeEstimate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalaryStructureAssignment implements SalaryStructureAssignment {
  const _SalaryStructureAssignment({@JsonKey(name: 'template_id') required this.templateId, @JsonKey(name: 'ctc_amount')@DecimalConverter() required this.ctcAmount, @JsonKey(name: 'effective_from') this.effectiveFrom, required this.template, @JsonKey(name: 'take_home_estimate') this.takeHomeEstimate});
  factory _SalaryStructureAssignment.fromJson(Map<String, dynamic> json) => _$SalaryStructureAssignmentFromJson(json);

@override@JsonKey(name: 'template_id') final  String templateId;
@override@JsonKey(name: 'ctc_amount')@DecimalConverter() final  Decimal ctcAmount;
@override@JsonKey(name: 'effective_from') final  DateTime? effectiveFrom;
@override final  SalaryTemplate template;
@override@JsonKey(name: 'take_home_estimate') final  TakeHomeEstimate? takeHomeEstimate;

/// Create a copy of SalaryStructureAssignment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalaryStructureAssignmentCopyWith<_SalaryStructureAssignment> get copyWith => __$SalaryStructureAssignmentCopyWithImpl<_SalaryStructureAssignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalaryStructureAssignmentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalaryStructureAssignment&&(identical(other.templateId, templateId) || other.templateId == templateId)&&(identical(other.ctcAmount, ctcAmount) || other.ctcAmount == ctcAmount)&&(identical(other.effectiveFrom, effectiveFrom) || other.effectiveFrom == effectiveFrom)&&(identical(other.template, template) || other.template == template)&&(identical(other.takeHomeEstimate, takeHomeEstimate) || other.takeHomeEstimate == takeHomeEstimate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,templateId,ctcAmount,effectiveFrom,template,takeHomeEstimate);
}

@override
String toString() {
    return 'SalaryStructureAssignment(templateId: $templateId, ctcAmount: $ctcAmount, effectiveFrom: $effectiveFrom, template: $template, takeHomeEstimate: $takeHomeEstimate)';
}


}

/// @nodoc
abstract mixin class _$SalaryStructureAssignmentCopyWith<$Res> implements $SalaryStructureAssignmentCopyWith<$Res> {
  factory _$SalaryStructureAssignmentCopyWith(_SalaryStructureAssignment value, $Res Function(_SalaryStructureAssignment) _then) = __$SalaryStructureAssignmentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'template_id') String templateId,@JsonKey(name: 'ctc_amount')@DecimalConverter() Decimal ctcAmount,@JsonKey(name: 'effective_from') DateTime? effectiveFrom, SalaryTemplate template,@JsonKey(name: 'take_home_estimate') TakeHomeEstimate? takeHomeEstimate
});


@override $SalaryTemplateCopyWith<$Res> get template;@override $TakeHomeEstimateCopyWith<$Res>? get takeHomeEstimate;

}
/// @nodoc
class __$SalaryStructureAssignmentCopyWithImpl<$Res>
    implements _$SalaryStructureAssignmentCopyWith<$Res> {
  __$SalaryStructureAssignmentCopyWithImpl(this._self, this._then);

  final _SalaryStructureAssignment _self;
  final $Res Function(_SalaryStructureAssignment) _then;

/// Create a copy of SalaryStructureAssignment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? templateId = null,Object? ctcAmount = null,Object? effectiveFrom = freezed,Object? template = null,Object? takeHomeEstimate = freezed,}) {
  return _then(_SalaryStructureAssignment(
templateId: null == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String,ctcAmount: null == ctcAmount ? _self.ctcAmount : ctcAmount // ignore: cast_nullable_to_non_nullable
as Decimal,effectiveFrom: freezed == effectiveFrom ? _self.effectiveFrom : effectiveFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,template: null == template ? _self.template : template // ignore: cast_nullable_to_non_nullable
as SalaryTemplate,takeHomeEstimate: freezed == takeHomeEstimate ? _self.takeHomeEstimate : takeHomeEstimate // ignore: cast_nullable_to_non_nullable
as TakeHomeEstimate?,
  ));
}

/// Create a copy of SalaryStructureAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalaryTemplateCopyWith<$Res> get template {
  
  return $SalaryTemplateCopyWith<$Res>(_self.template, (value) {
    return _then(_self.copyWith(template: value));
  });
}/// Create a copy of SalaryStructureAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TakeHomeEstimateCopyWith<$Res>? get takeHomeEstimate {
    if (_self.takeHomeEstimate == null) {
    return null;
  }

  return $TakeHomeEstimateCopyWith<$Res>(_self.takeHomeEstimate!, (value) {
    return _then(_self.copyWith(takeHomeEstimate: value));
  });
}
}


/// @nodoc
mixin _$SalaryTemplate {

@JsonKey(name: 'template_id') String get templateId;@JsonKey(name: 'template_name') String get templateName; List<SalaryComponent> get components;
/// Create a copy of SalaryTemplate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalaryTemplateCopyWith<SalaryTemplate> get copyWith => _$SalaryTemplateCopyWithImpl<SalaryTemplate>(this as SalaryTemplate, _$identity);

  /// Serializes this SalaryTemplate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SalaryTemplate;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalaryTemplate&&(identical(other.templateId, _this.templateId) || other.templateId == _this.templateId)&&(identical(other.templateName, _this.templateName) || other.templateName == _this.templateName)&&const DeepCollectionEquality().equals(other.components, _this.components));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SalaryTemplate;
  return Object.hash(runtimeType,_this.templateId,_this.templateName,const DeepCollectionEquality().hash(_this.components));
}

@override
String toString() {
  final _this = this as SalaryTemplate;
  return 'SalaryTemplate(templateId: ${_this.templateId}, templateName: ${_this.templateName}, components: ${_this.components})';
}


}

/// @nodoc
abstract mixin class $SalaryTemplateCopyWith<$Res>  {
  factory $SalaryTemplateCopyWith(SalaryTemplate value, $Res Function(SalaryTemplate) _then) = _$SalaryTemplateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'template_id') String templateId,@JsonKey(name: 'template_name') String templateName, List<SalaryComponent> components
});




}
/// @nodoc
class _$SalaryTemplateCopyWithImpl<$Res>
    implements $SalaryTemplateCopyWith<$Res> {
  _$SalaryTemplateCopyWithImpl(this._self, this._then);

  final SalaryTemplate _self;
  final $Res Function(SalaryTemplate) _then;

/// Create a copy of SalaryTemplate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? templateId = null,Object? templateName = null,Object? components = null,}) {
  return _then(SalaryTemplate(
templateId: null == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String,templateName: null == templateName ? _self.templateName : templateName // ignore: cast_nullable_to_non_nullable
as String,components: null == components ? _self.components : components // ignore: cast_nullable_to_non_nullable
as List<SalaryComponent>,
  ));
}

}


/// Adds pattern-matching-related methods to [SalaryTemplate].
extension SalaryTemplatePatterns on SalaryTemplate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalaryTemplate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalaryTemplate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalaryTemplate value)  $default,){
final _that = this;
switch (_that) {
case _SalaryTemplate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalaryTemplate value)?  $default,){
final _that = this;
switch (_that) {
case _SalaryTemplate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'template_id')  String templateId, @JsonKey(name: 'template_name')  String templateName,  List<SalaryComponent> components)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalaryTemplate() when $default != null:
return $default(_that.templateId,_that.templateName,_that.components);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'template_id')  String templateId, @JsonKey(name: 'template_name')  String templateName,  List<SalaryComponent> components)  $default,) {final _that = this;
switch (_that) {
case _SalaryTemplate():
return $default(_that.templateId,_that.templateName,_that.components);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'template_id')  String templateId, @JsonKey(name: 'template_name')  String templateName,  List<SalaryComponent> components)?  $default,) {final _that = this;
switch (_that) {
case _SalaryTemplate() when $default != null:
return $default(_that.templateId,_that.templateName,_that.components);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalaryTemplate implements SalaryTemplate {
  const _SalaryTemplate({@JsonKey(name: 'template_id') required this.templateId, @JsonKey(name: 'template_name') required this.templateName,  List<SalaryComponent> components = const <SalaryComponent>[]}): _components = components;
  factory _SalaryTemplate.fromJson(Map<String, dynamic> json) => _$SalaryTemplateFromJson(json);

@override@JsonKey(name: 'template_id') final  String templateId;
@override@JsonKey(name: 'template_name') final  String templateName;
 final  List<SalaryComponent> _components;
@override@JsonKey() List<SalaryComponent> get components {
  if (_components is EqualUnmodifiableListView) return _components;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_components);
}


/// Create a copy of SalaryTemplate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalaryTemplateCopyWith<_SalaryTemplate> get copyWith => __$SalaryTemplateCopyWithImpl<_SalaryTemplate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalaryTemplateToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalaryTemplate&&(identical(other.templateId, templateId) || other.templateId == templateId)&&(identical(other.templateName, templateName) || other.templateName == templateName)&&const DeepCollectionEquality().equals(other.components, _components));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,templateId,templateName,const DeepCollectionEquality().hash(_components));
}

@override
String toString() {
    return 'SalaryTemplate(templateId: $templateId, templateName: $templateName, components: $components)';
}


}

/// @nodoc
abstract mixin class _$SalaryTemplateCopyWith<$Res> implements $SalaryTemplateCopyWith<$Res> {
  factory _$SalaryTemplateCopyWith(_SalaryTemplate value, $Res Function(_SalaryTemplate) _then) = __$SalaryTemplateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'template_id') String templateId,@JsonKey(name: 'template_name') String templateName, List<SalaryComponent> components
});




}
/// @nodoc
class __$SalaryTemplateCopyWithImpl<$Res>
    implements _$SalaryTemplateCopyWith<$Res> {
  __$SalaryTemplateCopyWithImpl(this._self, this._then);

  final _SalaryTemplate _self;
  final $Res Function(_SalaryTemplate) _then;

/// Create a copy of SalaryTemplate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? templateId = null,Object? templateName = null,Object? components = null,}) {
  return _then(_SalaryTemplate(
templateId: null == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String,templateName: null == templateName ? _self.templateName : templateName // ignore: cast_nullable_to_non_nullable
as String,components: null == components ? _self._components : components // ignore: cast_nullable_to_non_nullable
as List<SalaryComponent>,
  ));
}


}


/// @nodoc
mixin _$SalaryComponent {

@JsonKey(name: 'component_id') String get componentId;@JsonKey(name: 'component_name') String get componentName;@JsonKey(name: 'percentage_of_ctc')@DecimalConverter() Decimal get percentageOfCtc;@JsonKey(name: 'computed_amount')@NullableDecimalConverter() Decimal? get computedAmount;
/// Create a copy of SalaryComponent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalaryComponentCopyWith<SalaryComponent> get copyWith => _$SalaryComponentCopyWithImpl<SalaryComponent>(this as SalaryComponent, _$identity);

  /// Serializes this SalaryComponent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SalaryComponent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalaryComponent&&(identical(other.componentId, _this.componentId) || other.componentId == _this.componentId)&&(identical(other.componentName, _this.componentName) || other.componentName == _this.componentName)&&(identical(other.percentageOfCtc, _this.percentageOfCtc) || other.percentageOfCtc == _this.percentageOfCtc)&&(identical(other.computedAmount, _this.computedAmount) || other.computedAmount == _this.computedAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SalaryComponent;
  return Object.hash(runtimeType,_this.componentId,_this.componentName,_this.percentageOfCtc,_this.computedAmount);
}

@override
String toString() {
  final _this = this as SalaryComponent;
  return 'SalaryComponent(componentId: ${_this.componentId}, componentName: ${_this.componentName}, percentageOfCtc: ${_this.percentageOfCtc}, computedAmount: ${_this.computedAmount})';
}


}

/// @nodoc
abstract mixin class $SalaryComponentCopyWith<$Res>  {
  factory $SalaryComponentCopyWith(SalaryComponent value, $Res Function(SalaryComponent) _then) = _$SalaryComponentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'component_id') String componentId,@JsonKey(name: 'component_name') String componentName,@JsonKey(name: 'percentage_of_ctc')@DecimalConverter() Decimal percentageOfCtc,@JsonKey(name: 'computed_amount')@NullableDecimalConverter() Decimal? computedAmount
});




}
/// @nodoc
class _$SalaryComponentCopyWithImpl<$Res>
    implements $SalaryComponentCopyWith<$Res> {
  _$SalaryComponentCopyWithImpl(this._self, this._then);

  final SalaryComponent _self;
  final $Res Function(SalaryComponent) _then;

/// Create a copy of SalaryComponent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? componentId = null,Object? componentName = null,Object? percentageOfCtc = null,Object? computedAmount = freezed,}) {
  return _then(SalaryComponent(
componentId: null == componentId ? _self.componentId : componentId // ignore: cast_nullable_to_non_nullable
as String,componentName: null == componentName ? _self.componentName : componentName // ignore: cast_nullable_to_non_nullable
as String,percentageOfCtc: null == percentageOfCtc ? _self.percentageOfCtc : percentageOfCtc // ignore: cast_nullable_to_non_nullable
as Decimal,computedAmount: freezed == computedAmount ? _self.computedAmount : computedAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,
  ));
}

}


/// Adds pattern-matching-related methods to [SalaryComponent].
extension SalaryComponentPatterns on SalaryComponent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalaryComponent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalaryComponent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalaryComponent value)  $default,){
final _that = this;
switch (_that) {
case _SalaryComponent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalaryComponent value)?  $default,){
final _that = this;
switch (_that) {
case _SalaryComponent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'component_id')  String componentId, @JsonKey(name: 'component_name')  String componentName, @JsonKey(name: 'percentage_of_ctc')@DecimalConverter()  Decimal percentageOfCtc, @JsonKey(name: 'computed_amount')@NullableDecimalConverter()  Decimal? computedAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalaryComponent() when $default != null:
return $default(_that.componentId,_that.componentName,_that.percentageOfCtc,_that.computedAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'component_id')  String componentId, @JsonKey(name: 'component_name')  String componentName, @JsonKey(name: 'percentage_of_ctc')@DecimalConverter()  Decimal percentageOfCtc, @JsonKey(name: 'computed_amount')@NullableDecimalConverter()  Decimal? computedAmount)  $default,) {final _that = this;
switch (_that) {
case _SalaryComponent():
return $default(_that.componentId,_that.componentName,_that.percentageOfCtc,_that.computedAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'component_id')  String componentId, @JsonKey(name: 'component_name')  String componentName, @JsonKey(name: 'percentage_of_ctc')@DecimalConverter()  Decimal percentageOfCtc, @JsonKey(name: 'computed_amount')@NullableDecimalConverter()  Decimal? computedAmount)?  $default,) {final _that = this;
switch (_that) {
case _SalaryComponent() when $default != null:
return $default(_that.componentId,_that.componentName,_that.percentageOfCtc,_that.computedAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalaryComponent implements SalaryComponent {
  const _SalaryComponent({@JsonKey(name: 'component_id') required this.componentId, @JsonKey(name: 'component_name') required this.componentName, @JsonKey(name: 'percentage_of_ctc')@DecimalConverter() required this.percentageOfCtc, @JsonKey(name: 'computed_amount')@NullableDecimalConverter() this.computedAmount});
  factory _SalaryComponent.fromJson(Map<String, dynamic> json) => _$SalaryComponentFromJson(json);

@override@JsonKey(name: 'component_id') final  String componentId;
@override@JsonKey(name: 'component_name') final  String componentName;
@override@JsonKey(name: 'percentage_of_ctc')@DecimalConverter() final  Decimal percentageOfCtc;
@override@JsonKey(name: 'computed_amount')@NullableDecimalConverter() final  Decimal? computedAmount;

/// Create a copy of SalaryComponent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalaryComponentCopyWith<_SalaryComponent> get copyWith => __$SalaryComponentCopyWithImpl<_SalaryComponent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalaryComponentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalaryComponent&&(identical(other.componentId, componentId) || other.componentId == componentId)&&(identical(other.componentName, componentName) || other.componentName == componentName)&&(identical(other.percentageOfCtc, percentageOfCtc) || other.percentageOfCtc == percentageOfCtc)&&(identical(other.computedAmount, computedAmount) || other.computedAmount == computedAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,componentId,componentName,percentageOfCtc,computedAmount);
}

@override
String toString() {
    return 'SalaryComponent(componentId: $componentId, componentName: $componentName, percentageOfCtc: $percentageOfCtc, computedAmount: $computedAmount)';
}


}

/// @nodoc
abstract mixin class _$SalaryComponentCopyWith<$Res> implements $SalaryComponentCopyWith<$Res> {
  factory _$SalaryComponentCopyWith(_SalaryComponent value, $Res Function(_SalaryComponent) _then) = __$SalaryComponentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'component_id') String componentId,@JsonKey(name: 'component_name') String componentName,@JsonKey(name: 'percentage_of_ctc')@DecimalConverter() Decimal percentageOfCtc,@JsonKey(name: 'computed_amount')@NullableDecimalConverter() Decimal? computedAmount
});




}
/// @nodoc
class __$SalaryComponentCopyWithImpl<$Res>
    implements _$SalaryComponentCopyWith<$Res> {
  __$SalaryComponentCopyWithImpl(this._self, this._then);

  final _SalaryComponent _self;
  final $Res Function(_SalaryComponent) _then;

/// Create a copy of SalaryComponent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? componentId = null,Object? componentName = null,Object? percentageOfCtc = null,Object? computedAmount = freezed,}) {
  return _then(_SalaryComponent(
componentId: null == componentId ? _self.componentId : componentId // ignore: cast_nullable_to_non_nullable
as String,componentName: null == componentName ? _self.componentName : componentName // ignore: cast_nullable_to_non_nullable
as String,percentageOfCtc: null == percentageOfCtc ? _self.percentageOfCtc : percentageOfCtc // ignore: cast_nullable_to_non_nullable
as Decimal,computedAmount: freezed == computedAmount ? _self.computedAmount : computedAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,
  ));
}


}


/// @nodoc
mixin _$TakeHomeEstimate {

@JsonKey(name: 'monthly_gross')@DecimalConverter() Decimal get monthlyGross;@JsonKey(name: 'pf_amount')@DecimalConverter() Decimal get pfAmount;@JsonKey(name: 'esi_amount')@DecimalConverter() Decimal get esiAmount;@JsonKey(name: 'pt_amount')@DecimalConverter() Decimal get ptAmount;@JsonKey(name: 'tds_amount')@DecimalConverter() Decimal get tdsAmount;@JsonKey(name: 'take_home_salary')@DecimalConverter() Decimal get takeHomeSalary;
/// Create a copy of TakeHomeEstimate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TakeHomeEstimateCopyWith<TakeHomeEstimate> get copyWith => _$TakeHomeEstimateCopyWithImpl<TakeHomeEstimate>(this as TakeHomeEstimate, _$identity);

  /// Serializes this TakeHomeEstimate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TakeHomeEstimate;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TakeHomeEstimate&&(identical(other.monthlyGross, _this.monthlyGross) || other.monthlyGross == _this.monthlyGross)&&(identical(other.pfAmount, _this.pfAmount) || other.pfAmount == _this.pfAmount)&&(identical(other.esiAmount, _this.esiAmount) || other.esiAmount == _this.esiAmount)&&(identical(other.ptAmount, _this.ptAmount) || other.ptAmount == _this.ptAmount)&&(identical(other.tdsAmount, _this.tdsAmount) || other.tdsAmount == _this.tdsAmount)&&(identical(other.takeHomeSalary, _this.takeHomeSalary) || other.takeHomeSalary == _this.takeHomeSalary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TakeHomeEstimate;
  return Object.hash(runtimeType,_this.monthlyGross,_this.pfAmount,_this.esiAmount,_this.ptAmount,_this.tdsAmount,_this.takeHomeSalary);
}

@override
String toString() {
  final _this = this as TakeHomeEstimate;
  return 'TakeHomeEstimate(monthlyGross: ${_this.monthlyGross}, pfAmount: ${_this.pfAmount}, esiAmount: ${_this.esiAmount}, ptAmount: ${_this.ptAmount}, tdsAmount: ${_this.tdsAmount}, takeHomeSalary: ${_this.takeHomeSalary})';
}


}

/// @nodoc
abstract mixin class $TakeHomeEstimateCopyWith<$Res>  {
  factory $TakeHomeEstimateCopyWith(TakeHomeEstimate value, $Res Function(TakeHomeEstimate) _then) = _$TakeHomeEstimateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'monthly_gross')@DecimalConverter() Decimal monthlyGross,@JsonKey(name: 'pf_amount')@DecimalConverter() Decimal pfAmount,@JsonKey(name: 'esi_amount')@DecimalConverter() Decimal esiAmount,@JsonKey(name: 'pt_amount')@DecimalConverter() Decimal ptAmount,@JsonKey(name: 'tds_amount')@DecimalConverter() Decimal tdsAmount,@JsonKey(name: 'take_home_salary')@DecimalConverter() Decimal takeHomeSalary
});




}
/// @nodoc
class _$TakeHomeEstimateCopyWithImpl<$Res>
    implements $TakeHomeEstimateCopyWith<$Res> {
  _$TakeHomeEstimateCopyWithImpl(this._self, this._then);

  final TakeHomeEstimate _self;
  final $Res Function(TakeHomeEstimate) _then;

/// Create a copy of TakeHomeEstimate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? monthlyGross = null,Object? pfAmount = null,Object? esiAmount = null,Object? ptAmount = null,Object? tdsAmount = null,Object? takeHomeSalary = null,}) {
  return _then(TakeHomeEstimate(
monthlyGross: null == monthlyGross ? _self.monthlyGross : monthlyGross // ignore: cast_nullable_to_non_nullable
as Decimal,pfAmount: null == pfAmount ? _self.pfAmount : pfAmount // ignore: cast_nullable_to_non_nullable
as Decimal,esiAmount: null == esiAmount ? _self.esiAmount : esiAmount // ignore: cast_nullable_to_non_nullable
as Decimal,ptAmount: null == ptAmount ? _self.ptAmount : ptAmount // ignore: cast_nullable_to_non_nullable
as Decimal,tdsAmount: null == tdsAmount ? _self.tdsAmount : tdsAmount // ignore: cast_nullable_to_non_nullable
as Decimal,takeHomeSalary: null == takeHomeSalary ? _self.takeHomeSalary : takeHomeSalary // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

}


/// Adds pattern-matching-related methods to [TakeHomeEstimate].
extension TakeHomeEstimatePatterns on TakeHomeEstimate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TakeHomeEstimate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TakeHomeEstimate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TakeHomeEstimate value)  $default,){
final _that = this;
switch (_that) {
case _TakeHomeEstimate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TakeHomeEstimate value)?  $default,){
final _that = this;
switch (_that) {
case _TakeHomeEstimate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'monthly_gross')@DecimalConverter()  Decimal monthlyGross, @JsonKey(name: 'pf_amount')@DecimalConverter()  Decimal pfAmount, @JsonKey(name: 'esi_amount')@DecimalConverter()  Decimal esiAmount, @JsonKey(name: 'pt_amount')@DecimalConverter()  Decimal ptAmount, @JsonKey(name: 'tds_amount')@DecimalConverter()  Decimal tdsAmount, @JsonKey(name: 'take_home_salary')@DecimalConverter()  Decimal takeHomeSalary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TakeHomeEstimate() when $default != null:
return $default(_that.monthlyGross,_that.pfAmount,_that.esiAmount,_that.ptAmount,_that.tdsAmount,_that.takeHomeSalary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'monthly_gross')@DecimalConverter()  Decimal monthlyGross, @JsonKey(name: 'pf_amount')@DecimalConverter()  Decimal pfAmount, @JsonKey(name: 'esi_amount')@DecimalConverter()  Decimal esiAmount, @JsonKey(name: 'pt_amount')@DecimalConverter()  Decimal ptAmount, @JsonKey(name: 'tds_amount')@DecimalConverter()  Decimal tdsAmount, @JsonKey(name: 'take_home_salary')@DecimalConverter()  Decimal takeHomeSalary)  $default,) {final _that = this;
switch (_that) {
case _TakeHomeEstimate():
return $default(_that.monthlyGross,_that.pfAmount,_that.esiAmount,_that.ptAmount,_that.tdsAmount,_that.takeHomeSalary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'monthly_gross')@DecimalConverter()  Decimal monthlyGross, @JsonKey(name: 'pf_amount')@DecimalConverter()  Decimal pfAmount, @JsonKey(name: 'esi_amount')@DecimalConverter()  Decimal esiAmount, @JsonKey(name: 'pt_amount')@DecimalConverter()  Decimal ptAmount, @JsonKey(name: 'tds_amount')@DecimalConverter()  Decimal tdsAmount, @JsonKey(name: 'take_home_salary')@DecimalConverter()  Decimal takeHomeSalary)?  $default,) {final _that = this;
switch (_that) {
case _TakeHomeEstimate() when $default != null:
return $default(_that.monthlyGross,_that.pfAmount,_that.esiAmount,_that.ptAmount,_that.tdsAmount,_that.takeHomeSalary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TakeHomeEstimate implements TakeHomeEstimate {
  const _TakeHomeEstimate({@JsonKey(name: 'monthly_gross')@DecimalConverter() required this.monthlyGross, @JsonKey(name: 'pf_amount')@DecimalConverter() required this.pfAmount, @JsonKey(name: 'esi_amount')@DecimalConverter() required this.esiAmount, @JsonKey(name: 'pt_amount')@DecimalConverter() required this.ptAmount, @JsonKey(name: 'tds_amount')@DecimalConverter() required this.tdsAmount, @JsonKey(name: 'take_home_salary')@DecimalConverter() required this.takeHomeSalary});
  factory _TakeHomeEstimate.fromJson(Map<String, dynamic> json) => _$TakeHomeEstimateFromJson(json);

@override@JsonKey(name: 'monthly_gross')@DecimalConverter() final  Decimal monthlyGross;
@override@JsonKey(name: 'pf_amount')@DecimalConverter() final  Decimal pfAmount;
@override@JsonKey(name: 'esi_amount')@DecimalConverter() final  Decimal esiAmount;
@override@JsonKey(name: 'pt_amount')@DecimalConverter() final  Decimal ptAmount;
@override@JsonKey(name: 'tds_amount')@DecimalConverter() final  Decimal tdsAmount;
@override@JsonKey(name: 'take_home_salary')@DecimalConverter() final  Decimal takeHomeSalary;

/// Create a copy of TakeHomeEstimate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TakeHomeEstimateCopyWith<_TakeHomeEstimate> get copyWith => __$TakeHomeEstimateCopyWithImpl<_TakeHomeEstimate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TakeHomeEstimateToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TakeHomeEstimate&&(identical(other.monthlyGross, monthlyGross) || other.monthlyGross == monthlyGross)&&(identical(other.pfAmount, pfAmount) || other.pfAmount == pfAmount)&&(identical(other.esiAmount, esiAmount) || other.esiAmount == esiAmount)&&(identical(other.ptAmount, ptAmount) || other.ptAmount == ptAmount)&&(identical(other.tdsAmount, tdsAmount) || other.tdsAmount == tdsAmount)&&(identical(other.takeHomeSalary, takeHomeSalary) || other.takeHomeSalary == takeHomeSalary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,monthlyGross,pfAmount,esiAmount,ptAmount,tdsAmount,takeHomeSalary);
}

@override
String toString() {
    return 'TakeHomeEstimate(monthlyGross: $monthlyGross, pfAmount: $pfAmount, esiAmount: $esiAmount, ptAmount: $ptAmount, tdsAmount: $tdsAmount, takeHomeSalary: $takeHomeSalary)';
}


}

/// @nodoc
abstract mixin class _$TakeHomeEstimateCopyWith<$Res> implements $TakeHomeEstimateCopyWith<$Res> {
  factory _$TakeHomeEstimateCopyWith(_TakeHomeEstimate value, $Res Function(_TakeHomeEstimate) _then) = __$TakeHomeEstimateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'monthly_gross')@DecimalConverter() Decimal monthlyGross,@JsonKey(name: 'pf_amount')@DecimalConverter() Decimal pfAmount,@JsonKey(name: 'esi_amount')@DecimalConverter() Decimal esiAmount,@JsonKey(name: 'pt_amount')@DecimalConverter() Decimal ptAmount,@JsonKey(name: 'tds_amount')@DecimalConverter() Decimal tdsAmount,@JsonKey(name: 'take_home_salary')@DecimalConverter() Decimal takeHomeSalary
});




}
/// @nodoc
class __$TakeHomeEstimateCopyWithImpl<$Res>
    implements _$TakeHomeEstimateCopyWith<$Res> {
  __$TakeHomeEstimateCopyWithImpl(this._self, this._then);

  final _TakeHomeEstimate _self;
  final $Res Function(_TakeHomeEstimate) _then;

/// Create a copy of TakeHomeEstimate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? monthlyGross = null,Object? pfAmount = null,Object? esiAmount = null,Object? ptAmount = null,Object? tdsAmount = null,Object? takeHomeSalary = null,}) {
  return _then(_TakeHomeEstimate(
monthlyGross: null == monthlyGross ? _self.monthlyGross : monthlyGross // ignore: cast_nullable_to_non_nullable
as Decimal,pfAmount: null == pfAmount ? _self.pfAmount : pfAmount // ignore: cast_nullable_to_non_nullable
as Decimal,esiAmount: null == esiAmount ? _self.esiAmount : esiAmount // ignore: cast_nullable_to_non_nullable
as Decimal,ptAmount: null == ptAmount ? _self.ptAmount : ptAmount // ignore: cast_nullable_to_non_nullable
as Decimal,tdsAmount: null == tdsAmount ? _self.tdsAmount : tdsAmount // ignore: cast_nullable_to_non_nullable
as Decimal,takeHomeSalary: null == takeHomeSalary ? _self.takeHomeSalary : takeHomeSalary // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}


}

// dart format on
