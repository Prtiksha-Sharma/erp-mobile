// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TeacherEmailRef {

 String get email;
/// Create a copy of TeacherEmailRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeacherEmailRefCopyWith<TeacherEmailRef> get copyWith => _$TeacherEmailRefCopyWithImpl<TeacherEmailRef>(this as TeacherEmailRef, _$identity);

  /// Serializes this TeacherEmailRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TeacherEmailRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeacherEmailRef&&(identical(other.email, _this.email) || other.email == _this.email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TeacherEmailRef;
  return Object.hash(runtimeType,_this.email);
}

@override
String toString() {
  final _this = this as TeacherEmailRef;
  return 'TeacherEmailRef(email: ${_this.email})';
}


}

/// @nodoc
abstract mixin class $TeacherEmailRefCopyWith<$Res>  {
  factory $TeacherEmailRefCopyWith(TeacherEmailRef value, $Res Function(TeacherEmailRef) _then) = _$TeacherEmailRefCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$TeacherEmailRefCopyWithImpl<$Res>
    implements $TeacherEmailRefCopyWith<$Res> {
  _$TeacherEmailRefCopyWithImpl(this._self, this._then);

  final TeacherEmailRef _self;
  final $Res Function(TeacherEmailRef) _then;

/// Create a copy of TeacherEmailRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,}) {
  return _then(TeacherEmailRef(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TeacherEmailRef].
extension TeacherEmailRefPatterns on TeacherEmailRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeacherEmailRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeacherEmailRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeacherEmailRef value)  $default,){
final _that = this;
switch (_that) {
case _TeacherEmailRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeacherEmailRef value)?  $default,){
final _that = this;
switch (_that) {
case _TeacherEmailRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeacherEmailRef() when $default != null:
return $default(_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email)  $default,) {final _that = this;
switch (_that) {
case _TeacherEmailRef():
return $default(_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email)?  $default,) {final _that = this;
switch (_that) {
case _TeacherEmailRef() when $default != null:
return $default(_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeacherEmailRef implements TeacherEmailRef {
  const _TeacherEmailRef({required this.email});
  factory _TeacherEmailRef.fromJson(Map<String, dynamic> json) => _$TeacherEmailRefFromJson(json);

@override final  String email;

/// Create a copy of TeacherEmailRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeacherEmailRefCopyWith<_TeacherEmailRef> get copyWith => __$TeacherEmailRefCopyWithImpl<_TeacherEmailRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeacherEmailRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeacherEmailRef&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,email);
}

@override
String toString() {
    return 'TeacherEmailRef(email: $email)';
}


}

/// @nodoc
abstract mixin class _$TeacherEmailRefCopyWith<$Res> implements $TeacherEmailRefCopyWith<$Res> {
  factory _$TeacherEmailRefCopyWith(_TeacherEmailRef value, $Res Function(_TeacherEmailRef) _then) = __$TeacherEmailRefCopyWithImpl;
@override @useResult
$Res call({
 String email
});




}
/// @nodoc
class __$TeacherEmailRefCopyWithImpl<$Res>
    implements _$TeacherEmailRefCopyWith<$Res> {
  __$TeacherEmailRefCopyWithImpl(this._self, this._then);

  final _TeacherEmailRef _self;
  final $Res Function(_TeacherEmailRef) _then;

/// Create a copy of TeacherEmailRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_TeacherEmailRef(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TeacherProfile {

@JsonKey(name: 'staff_id') String get staffId;@JsonKey(name: 'full_name') String get fullName; String? get designation; String? get department;@JsonKey(name: 'contact_number') String? get contactNumber; String? get qualification;@JsonKey(name: 'date_of_joining') DateTime? get dateOfJoining; String? get gender;@JsonKey(name: 'profile_photo_url') String? get profilePhotoUrl;@JsonKey(name: 'users') TeacherEmailRef? get emailRef;
/// Create a copy of TeacherProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeacherProfileCopyWith<TeacherProfile> get copyWith => _$TeacherProfileCopyWithImpl<TeacherProfile>(this as TeacherProfile, _$identity);

  /// Serializes this TeacherProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TeacherProfile;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeacherProfile&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.designation, _this.designation) || other.designation == _this.designation)&&(identical(other.department, _this.department) || other.department == _this.department)&&(identical(other.contactNumber, _this.contactNumber) || other.contactNumber == _this.contactNumber)&&(identical(other.qualification, _this.qualification) || other.qualification == _this.qualification)&&(identical(other.dateOfJoining, _this.dateOfJoining) || other.dateOfJoining == _this.dateOfJoining)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.profilePhotoUrl, _this.profilePhotoUrl) || other.profilePhotoUrl == _this.profilePhotoUrl)&&(identical(other.emailRef, _this.emailRef) || other.emailRef == _this.emailRef));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TeacherProfile;
  return Object.hash(runtimeType,_this.staffId,_this.fullName,_this.designation,_this.department,_this.contactNumber,_this.qualification,_this.dateOfJoining,_this.gender,_this.profilePhotoUrl,_this.emailRef);
}

@override
String toString() {
  final _this = this as TeacherProfile;
  return 'TeacherProfile(staffId: ${_this.staffId}, fullName: ${_this.fullName}, designation: ${_this.designation}, department: ${_this.department}, contactNumber: ${_this.contactNumber}, qualification: ${_this.qualification}, dateOfJoining: ${_this.dateOfJoining}, gender: ${_this.gender}, profilePhotoUrl: ${_this.profilePhotoUrl}, emailRef: ${_this.emailRef})';
}


}

/// @nodoc
abstract mixin class $TeacherProfileCopyWith<$Res>  {
  factory $TeacherProfileCopyWith(TeacherProfile value, $Res Function(TeacherProfile) _then) = _$TeacherProfileCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'full_name') String fullName, String? designation, String? department,@JsonKey(name: 'contact_number') String? contactNumber, String? qualification,@JsonKey(name: 'date_of_joining') DateTime? dateOfJoining, String? gender,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,@JsonKey(name: 'users') TeacherEmailRef? emailRef
});


$TeacherEmailRefCopyWith<$Res>? get emailRef;

}
/// @nodoc
class _$TeacherProfileCopyWithImpl<$Res>
    implements $TeacherProfileCopyWith<$Res> {
  _$TeacherProfileCopyWithImpl(this._self, this._then);

  final TeacherProfile _self;
  final $Res Function(TeacherProfile) _then;

/// Create a copy of TeacherProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = null,Object? fullName = null,Object? designation = freezed,Object? department = freezed,Object? contactNumber = freezed,Object? qualification = freezed,Object? dateOfJoining = freezed,Object? gender = freezed,Object? profilePhotoUrl = freezed,Object? emailRef = freezed,}) {
  return _then(TeacherProfile(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String?,qualification: freezed == qualification ? _self.qualification : qualification // ignore: cast_nullable_to_non_nullable
as String?,dateOfJoining: freezed == dateOfJoining ? _self.dateOfJoining : dateOfJoining // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,emailRef: freezed == emailRef ? _self.emailRef : emailRef // ignore: cast_nullable_to_non_nullable
as TeacherEmailRef?,
  ));
}
/// Create a copy of TeacherProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeacherEmailRefCopyWith<$Res>? get emailRef {
    if (_self.emailRef == null) {
    return null;
  }

  return $TeacherEmailRefCopyWith<$Res>(_self.emailRef!, (value) {
    return _then(_self.copyWith(emailRef: value));
  });
}
}


/// Adds pattern-matching-related methods to [TeacherProfile].
extension TeacherProfilePatterns on TeacherProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeacherProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeacherProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeacherProfile value)  $default,){
final _that = this;
switch (_that) {
case _TeacherProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeacherProfile value)?  $default,){
final _that = this;
switch (_that) {
case _TeacherProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String fullName,  String? designation,  String? department, @JsonKey(name: 'contact_number')  String? contactNumber,  String? qualification, @JsonKey(name: 'date_of_joining')  DateTime? dateOfJoining,  String? gender, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl, @JsonKey(name: 'users')  TeacherEmailRef? emailRef)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeacherProfile() when $default != null:
return $default(_that.staffId,_that.fullName,_that.designation,_that.department,_that.contactNumber,_that.qualification,_that.dateOfJoining,_that.gender,_that.profilePhotoUrl,_that.emailRef);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String fullName,  String? designation,  String? department, @JsonKey(name: 'contact_number')  String? contactNumber,  String? qualification, @JsonKey(name: 'date_of_joining')  DateTime? dateOfJoining,  String? gender, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl, @JsonKey(name: 'users')  TeacherEmailRef? emailRef)  $default,) {final _that = this;
switch (_that) {
case _TeacherProfile():
return $default(_that.staffId,_that.fullName,_that.designation,_that.department,_that.contactNumber,_that.qualification,_that.dateOfJoining,_that.gender,_that.profilePhotoUrl,_that.emailRef);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String fullName,  String? designation,  String? department, @JsonKey(name: 'contact_number')  String? contactNumber,  String? qualification, @JsonKey(name: 'date_of_joining')  DateTime? dateOfJoining,  String? gender, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl, @JsonKey(name: 'users')  TeacherEmailRef? emailRef)?  $default,) {final _that = this;
switch (_that) {
case _TeacherProfile() when $default != null:
return $default(_that.staffId,_that.fullName,_that.designation,_that.department,_that.contactNumber,_that.qualification,_that.dateOfJoining,_that.gender,_that.profilePhotoUrl,_that.emailRef);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeacherProfile implements TeacherProfile {
  const _TeacherProfile({@JsonKey(name: 'staff_id') required this.staffId, @JsonKey(name: 'full_name') required this.fullName, this.designation, this.department, @JsonKey(name: 'contact_number') this.contactNumber, this.qualification, @JsonKey(name: 'date_of_joining') this.dateOfJoining, this.gender, @JsonKey(name: 'profile_photo_url') this.profilePhotoUrl, @JsonKey(name: 'users') this.emailRef});
  factory _TeacherProfile.fromJson(Map<String, dynamic> json) => _$TeacherProfileFromJson(json);

@override@JsonKey(name: 'staff_id') final  String staffId;
@override@JsonKey(name: 'full_name') final  String fullName;
@override final  String? designation;
@override final  String? department;
@override@JsonKey(name: 'contact_number') final  String? contactNumber;
@override final  String? qualification;
@override@JsonKey(name: 'date_of_joining') final  DateTime? dateOfJoining;
@override final  String? gender;
@override@JsonKey(name: 'profile_photo_url') final  String? profilePhotoUrl;
@override@JsonKey(name: 'users') final  TeacherEmailRef? emailRef;

/// Create a copy of TeacherProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeacherProfileCopyWith<_TeacherProfile> get copyWith => __$TeacherProfileCopyWithImpl<_TeacherProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeacherProfileToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeacherProfile&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.department, department) || other.department == department)&&(identical(other.contactNumber, contactNumber) || other.contactNumber == contactNumber)&&(identical(other.qualification, qualification) || other.qualification == qualification)&&(identical(other.dateOfJoining, dateOfJoining) || other.dateOfJoining == dateOfJoining)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.profilePhotoUrl, profilePhotoUrl) || other.profilePhotoUrl == profilePhotoUrl)&&(identical(other.emailRef, emailRef) || other.emailRef == emailRef));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,fullName,designation,department,contactNumber,qualification,dateOfJoining,gender,profilePhotoUrl,emailRef);
}

@override
String toString() {
    return 'TeacherProfile(staffId: $staffId, fullName: $fullName, designation: $designation, department: $department, contactNumber: $contactNumber, qualification: $qualification, dateOfJoining: $dateOfJoining, gender: $gender, profilePhotoUrl: $profilePhotoUrl, emailRef: $emailRef)';
}


}

/// @nodoc
abstract mixin class _$TeacherProfileCopyWith<$Res> implements $TeacherProfileCopyWith<$Res> {
  factory _$TeacherProfileCopyWith(_TeacherProfile value, $Res Function(_TeacherProfile) _then) = __$TeacherProfileCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'full_name') String fullName, String? designation, String? department,@JsonKey(name: 'contact_number') String? contactNumber, String? qualification,@JsonKey(name: 'date_of_joining') DateTime? dateOfJoining, String? gender,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,@JsonKey(name: 'users') TeacherEmailRef? emailRef
});


@override $TeacherEmailRefCopyWith<$Res>? get emailRef;

}
/// @nodoc
class __$TeacherProfileCopyWithImpl<$Res>
    implements _$TeacherProfileCopyWith<$Res> {
  __$TeacherProfileCopyWithImpl(this._self, this._then);

  final _TeacherProfile _self;
  final $Res Function(_TeacherProfile) _then;

/// Create a copy of TeacherProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = null,Object? fullName = null,Object? designation = freezed,Object? department = freezed,Object? contactNumber = freezed,Object? qualification = freezed,Object? dateOfJoining = freezed,Object? gender = freezed,Object? profilePhotoUrl = freezed,Object? emailRef = freezed,}) {
  return _then(_TeacherProfile(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String?,qualification: freezed == qualification ? _self.qualification : qualification // ignore: cast_nullable_to_non_nullable
as String?,dateOfJoining: freezed == dateOfJoining ? _self.dateOfJoining : dateOfJoining // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,emailRef: freezed == emailRef ? _self.emailRef : emailRef // ignore: cast_nullable_to_non_nullable
as TeacherEmailRef?,
  ));
}

/// Create a copy of TeacherProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeacherEmailRefCopyWith<$Res>? get emailRef {
    if (_self.emailRef == null) {
    return null;
  }

  return $TeacherEmailRefCopyWith<$Res>(_self.emailRef!, (value) {
    return _then(_self.copyWith(emailRef: value));
  });
}
}

// dart format on
