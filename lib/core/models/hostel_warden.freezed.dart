// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hostel_warden.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WardenApplicantRef {

@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'middle_name') String? get middleName;@JsonKey(name: 'last_name') String? get lastName; String? get gender; DateTime? get dob;@JsonKey(name: 'blood_group') String? get bloodGroup;@JsonKey(name: 'contact_no') String? get contactNo;@JsonKey(name: 'email_id') String? get emailId;@JsonKey(name: 'photo_url') String? get photoUrl;
/// Create a copy of WardenApplicantRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WardenApplicantRefCopyWith<WardenApplicantRef> get copyWith => _$WardenApplicantRefCopyWithImpl<WardenApplicantRef>(this as WardenApplicantRef, _$identity);

  /// Serializes this WardenApplicantRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WardenApplicantRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WardenApplicantRef&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.middleName, _this.middleName) || other.middleName == _this.middleName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.dob, _this.dob) || other.dob == _this.dob)&&(identical(other.bloodGroup, _this.bloodGroup) || other.bloodGroup == _this.bloodGroup)&&(identical(other.contactNo, _this.contactNo) || other.contactNo == _this.contactNo)&&(identical(other.emailId, _this.emailId) || other.emailId == _this.emailId)&&(identical(other.photoUrl, _this.photoUrl) || other.photoUrl == _this.photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WardenApplicantRef;
  return Object.hash(runtimeType,_this.firstName,_this.middleName,_this.lastName,_this.gender,_this.dob,_this.bloodGroup,_this.contactNo,_this.emailId,_this.photoUrl);
}

@override
String toString() {
  final _this = this as WardenApplicantRef;
  return 'WardenApplicantRef(firstName: ${_this.firstName}, middleName: ${_this.middleName}, lastName: ${_this.lastName}, gender: ${_this.gender}, dob: ${_this.dob}, bloodGroup: ${_this.bloodGroup}, contactNo: ${_this.contactNo}, emailId: ${_this.emailId}, photoUrl: ${_this.photoUrl})';
}


}

/// @nodoc
abstract mixin class $WardenApplicantRefCopyWith<$Res>  {
  factory $WardenApplicantRefCopyWith(WardenApplicantRef value, $Res Function(WardenApplicantRef) _then) = _$WardenApplicantRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'middle_name') String? middleName,@JsonKey(name: 'last_name') String? lastName, String? gender, DateTime? dob,@JsonKey(name: 'blood_group') String? bloodGroup,@JsonKey(name: 'contact_no') String? contactNo,@JsonKey(name: 'email_id') String? emailId,@JsonKey(name: 'photo_url') String? photoUrl
});




}
/// @nodoc
class _$WardenApplicantRefCopyWithImpl<$Res>
    implements $WardenApplicantRefCopyWith<$Res> {
  _$WardenApplicantRefCopyWithImpl(this._self, this._then);

  final WardenApplicantRef _self;
  final $Res Function(WardenApplicantRef) _then;

/// Create a copy of WardenApplicantRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? gender = freezed,Object? dob = freezed,Object? bloodGroup = freezed,Object? contactNo = freezed,Object? emailId = freezed,Object? photoUrl = freezed,}) {
  return _then(WardenApplicantRef(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,bloodGroup: freezed == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String?,contactNo: freezed == contactNo ? _self.contactNo : contactNo // ignore: cast_nullable_to_non_nullable
as String?,emailId: freezed == emailId ? _self.emailId : emailId // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WardenApplicantRef].
extension WardenApplicantRefPatterns on WardenApplicantRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WardenApplicantRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WardenApplicantRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WardenApplicantRef value)  $default,){
final _that = this;
switch (_that) {
case _WardenApplicantRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WardenApplicantRef value)?  $default,){
final _that = this;
switch (_that) {
case _WardenApplicantRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  DateTime? dob, @JsonKey(name: 'blood_group')  String? bloodGroup, @JsonKey(name: 'contact_no')  String? contactNo, @JsonKey(name: 'email_id')  String? emailId, @JsonKey(name: 'photo_url')  String? photoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WardenApplicantRef() when $default != null:
return $default(_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.dob,_that.bloodGroup,_that.contactNo,_that.emailId,_that.photoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  DateTime? dob, @JsonKey(name: 'blood_group')  String? bloodGroup, @JsonKey(name: 'contact_no')  String? contactNo, @JsonKey(name: 'email_id')  String? emailId, @JsonKey(name: 'photo_url')  String? photoUrl)  $default,) {final _that = this;
switch (_that) {
case _WardenApplicantRef():
return $default(_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.dob,_that.bloodGroup,_that.contactNo,_that.emailId,_that.photoUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  DateTime? dob, @JsonKey(name: 'blood_group')  String? bloodGroup, @JsonKey(name: 'contact_no')  String? contactNo, @JsonKey(name: 'email_id')  String? emailId, @JsonKey(name: 'photo_url')  String? photoUrl)?  $default,) {final _that = this;
switch (_that) {
case _WardenApplicantRef() when $default != null:
return $default(_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.dob,_that.bloodGroup,_that.contactNo,_that.emailId,_that.photoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WardenApplicantRef implements WardenApplicantRef {
  const _WardenApplicantRef({@JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'middle_name') this.middleName, @JsonKey(name: 'last_name') this.lastName, this.gender, this.dob, @JsonKey(name: 'blood_group') this.bloodGroup, @JsonKey(name: 'contact_no') this.contactNo, @JsonKey(name: 'email_id') this.emailId, @JsonKey(name: 'photo_url') this.photoUrl});
  factory _WardenApplicantRef.fromJson(Map<String, dynamic> json) => _$WardenApplicantRefFromJson(json);

@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'middle_name') final  String? middleName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override final  String? gender;
@override final  DateTime? dob;
@override@JsonKey(name: 'blood_group') final  String? bloodGroup;
@override@JsonKey(name: 'contact_no') final  String? contactNo;
@override@JsonKey(name: 'email_id') final  String? emailId;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;

/// Create a copy of WardenApplicantRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WardenApplicantRefCopyWith<_WardenApplicantRef> get copyWith => __$WardenApplicantRefCopyWithImpl<_WardenApplicantRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WardenApplicantRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WardenApplicantRef&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.bloodGroup, bloodGroup) || other.bloodGroup == bloodGroup)&&(identical(other.contactNo, contactNo) || other.contactNo == contactNo)&&(identical(other.emailId, emailId) || other.emailId == emailId)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,firstName,middleName,lastName,gender,dob,bloodGroup,contactNo,emailId,photoUrl);
}

@override
String toString() {
    return 'WardenApplicantRef(firstName: $firstName, middleName: $middleName, lastName: $lastName, gender: $gender, dob: $dob, bloodGroup: $bloodGroup, contactNo: $contactNo, emailId: $emailId, photoUrl: $photoUrl)';
}


}

/// @nodoc
abstract mixin class _$WardenApplicantRefCopyWith<$Res> implements $WardenApplicantRefCopyWith<$Res> {
  factory _$WardenApplicantRefCopyWith(_WardenApplicantRef value, $Res Function(_WardenApplicantRef) _then) = __$WardenApplicantRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'middle_name') String? middleName,@JsonKey(name: 'last_name') String? lastName, String? gender, DateTime? dob,@JsonKey(name: 'blood_group') String? bloodGroup,@JsonKey(name: 'contact_no') String? contactNo,@JsonKey(name: 'email_id') String? emailId,@JsonKey(name: 'photo_url') String? photoUrl
});




}
/// @nodoc
class __$WardenApplicantRefCopyWithImpl<$Res>
    implements _$WardenApplicantRefCopyWith<$Res> {
  __$WardenApplicantRefCopyWithImpl(this._self, this._then);

  final _WardenApplicantRef _self;
  final $Res Function(_WardenApplicantRef) _then;

/// Create a copy of WardenApplicantRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? gender = freezed,Object? dob = freezed,Object? bloodGroup = freezed,Object? contactNo = freezed,Object? emailId = freezed,Object? photoUrl = freezed,}) {
  return _then(_WardenApplicantRef(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,bloodGroup: freezed == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String?,contactNo: freezed == contactNo ? _self.contactNo : contactNo // ignore: cast_nullable_to_non_nullable
as String?,emailId: freezed == emailId ? _self.emailId : emailId // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WardenStudentRef {

@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'admission_no') String? get admissionNo; WardenApplicantRef? get applicants;
/// Create a copy of WardenStudentRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WardenStudentRefCopyWith<WardenStudentRef> get copyWith => _$WardenStudentRefCopyWithImpl<WardenStudentRef>(this as WardenStudentRef, _$identity);

  /// Serializes this WardenStudentRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WardenStudentRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WardenStudentRef&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.applicants, _this.applicants) || other.applicants == _this.applicants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WardenStudentRef;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.applicants);
}

@override
String toString() {
  final _this = this as WardenStudentRef;
  return 'WardenStudentRef(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, applicants: ${_this.applicants})';
}


}

/// @nodoc
abstract mixin class $WardenStudentRefCopyWith<$Res>  {
  factory $WardenStudentRefCopyWith(WardenStudentRef value, $Res Function(WardenStudentRef) _then) = _$WardenStudentRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo, WardenApplicantRef? applicants
});


$WardenApplicantRefCopyWith<$Res>? get applicants;

}
/// @nodoc
class _$WardenStudentRefCopyWithImpl<$Res>
    implements $WardenStudentRefCopyWith<$Res> {
  _$WardenStudentRefCopyWithImpl(this._self, this._then);

  final WardenStudentRef _self;
  final $Res Function(WardenStudentRef) _then;

/// Create a copy of WardenStudentRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? applicants = freezed,}) {
  return _then(WardenStudentRef(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,applicants: freezed == applicants ? _self.applicants : applicants // ignore: cast_nullable_to_non_nullable
as WardenApplicantRef?,
  ));
}
/// Create a copy of WardenStudentRef
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenApplicantRefCopyWith<$Res>? get applicants {
    if (_self.applicants == null) {
    return null;
  }

  return $WardenApplicantRefCopyWith<$Res>(_self.applicants!, (value) {
    return _then(_self.copyWith(applicants: value));
  });
}
}


/// Adds pattern-matching-related methods to [WardenStudentRef].
extension WardenStudentRefPatterns on WardenStudentRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WardenStudentRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WardenStudentRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WardenStudentRef value)  $default,){
final _that = this;
switch (_that) {
case _WardenStudentRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WardenStudentRef value)?  $default,){
final _that = this;
switch (_that) {
case _WardenStudentRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo,  WardenApplicantRef? applicants)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WardenStudentRef() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.applicants);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo,  WardenApplicantRef? applicants)  $default,) {final _that = this;
switch (_that) {
case _WardenStudentRef():
return $default(_that.studentId,_that.admissionNo,_that.applicants);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo,  WardenApplicantRef? applicants)?  $default,) {final _that = this;
switch (_that) {
case _WardenStudentRef() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.applicants);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WardenStudentRef implements WardenStudentRef {
  const _WardenStudentRef({@JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'admission_no') this.admissionNo, this.applicants});
  factory _WardenStudentRef.fromJson(Map<String, dynamic> json) => _$WardenStudentRefFromJson(json);

@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override final  WardenApplicantRef? applicants;

/// Create a copy of WardenStudentRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WardenStudentRefCopyWith<_WardenStudentRef> get copyWith => __$WardenStudentRefCopyWithImpl<_WardenStudentRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WardenStudentRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WardenStudentRef&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.applicants, applicants) || other.applicants == applicants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,applicants);
}

@override
String toString() {
    return 'WardenStudentRef(studentId: $studentId, admissionNo: $admissionNo, applicants: $applicants)';
}


}

/// @nodoc
abstract mixin class _$WardenStudentRefCopyWith<$Res> implements $WardenStudentRefCopyWith<$Res> {
  factory _$WardenStudentRefCopyWith(_WardenStudentRef value, $Res Function(_WardenStudentRef) _then) = __$WardenStudentRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo, WardenApplicantRef? applicants
});


@override $WardenApplicantRefCopyWith<$Res>? get applicants;

}
/// @nodoc
class __$WardenStudentRefCopyWithImpl<$Res>
    implements _$WardenStudentRefCopyWith<$Res> {
  __$WardenStudentRefCopyWithImpl(this._self, this._then);

  final _WardenStudentRef _self;
  final $Res Function(_WardenStudentRef) _then;

/// Create a copy of WardenStudentRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? applicants = freezed,}) {
  return _then(_WardenStudentRef(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,applicants: freezed == applicants ? _self.applicants : applicants // ignore: cast_nullable_to_non_nullable
as WardenApplicantRef?,
  ));
}

/// Create a copy of WardenStudentRef
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenApplicantRefCopyWith<$Res>? get applicants {
    if (_self.applicants == null) {
    return null;
  }

  return $WardenApplicantRefCopyWith<$Res>(_self.applicants!, (value) {
    return _then(_self.copyWith(applicants: value));
  });
}
}


/// @nodoc
mixin _$WardenStaffRef {

@JsonKey(name: 'staff_id') String get staffId;@JsonKey(name: 'employee_code') String? get employeeCode;@JsonKey(name: 'full_name') String get fullName; String? get designation;
/// Create a copy of WardenStaffRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WardenStaffRefCopyWith<WardenStaffRef> get copyWith => _$WardenStaffRefCopyWithImpl<WardenStaffRef>(this as WardenStaffRef, _$identity);

  /// Serializes this WardenStaffRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WardenStaffRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WardenStaffRef&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.designation, _this.designation) || other.designation == _this.designation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WardenStaffRef;
  return Object.hash(runtimeType,_this.staffId,_this.employeeCode,_this.fullName,_this.designation);
}

@override
String toString() {
  final _this = this as WardenStaffRef;
  return 'WardenStaffRef(staffId: ${_this.staffId}, employeeCode: ${_this.employeeCode}, fullName: ${_this.fullName}, designation: ${_this.designation})';
}


}

/// @nodoc
abstract mixin class $WardenStaffRefCopyWith<$Res>  {
  factory $WardenStaffRefCopyWith(WardenStaffRef value, $Res Function(WardenStaffRef) _then) = _$WardenStaffRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'full_name') String fullName, String? designation
});




}
/// @nodoc
class _$WardenStaffRefCopyWithImpl<$Res>
    implements $WardenStaffRefCopyWith<$Res> {
  _$WardenStaffRefCopyWithImpl(this._self, this._then);

  final WardenStaffRef _self;
  final $Res Function(WardenStaffRef) _then;

/// Create a copy of WardenStaffRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = null,Object? employeeCode = freezed,Object? fullName = null,Object? designation = freezed,}) {
  return _then(WardenStaffRef(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WardenStaffRef].
extension WardenStaffRefPatterns on WardenStaffRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WardenStaffRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WardenStaffRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WardenStaffRef value)  $default,){
final _that = this;
switch (_that) {
case _WardenStaffRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WardenStaffRef value)?  $default,){
final _that = this;
switch (_that) {
case _WardenStaffRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String fullName,  String? designation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WardenStaffRef() when $default != null:
return $default(_that.staffId,_that.employeeCode,_that.fullName,_that.designation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String fullName,  String? designation)  $default,) {final _that = this;
switch (_that) {
case _WardenStaffRef():
return $default(_that.staffId,_that.employeeCode,_that.fullName,_that.designation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String fullName,  String? designation)?  $default,) {final _that = this;
switch (_that) {
case _WardenStaffRef() when $default != null:
return $default(_that.staffId,_that.employeeCode,_that.fullName,_that.designation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WardenStaffRef implements WardenStaffRef {
  const _WardenStaffRef({@JsonKey(name: 'staff_id') required this.staffId, @JsonKey(name: 'employee_code') this.employeeCode, @JsonKey(name: 'full_name') this.fullName = '', this.designation});
  factory _WardenStaffRef.fromJson(Map<String, dynamic> json) => _$WardenStaffRefFromJson(json);

@override@JsonKey(name: 'staff_id') final  String staffId;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override@JsonKey(name: 'full_name') final  String fullName;
@override final  String? designation;

/// Create a copy of WardenStaffRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WardenStaffRefCopyWith<_WardenStaffRef> get copyWith => __$WardenStaffRefCopyWithImpl<_WardenStaffRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WardenStaffRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WardenStaffRef&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.designation, designation) || other.designation == designation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,employeeCode,fullName,designation);
}

@override
String toString() {
    return 'WardenStaffRef(staffId: $staffId, employeeCode: $employeeCode, fullName: $fullName, designation: $designation)';
}


}

/// @nodoc
abstract mixin class _$WardenStaffRefCopyWith<$Res> implements $WardenStaffRefCopyWith<$Res> {
  factory _$WardenStaffRefCopyWith(_WardenStaffRef value, $Res Function(_WardenStaffRef) _then) = __$WardenStaffRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'full_name') String fullName, String? designation
});




}
/// @nodoc
class __$WardenStaffRefCopyWithImpl<$Res>
    implements _$WardenStaffRefCopyWith<$Res> {
  __$WardenStaffRefCopyWithImpl(this._self, this._then);

  final _WardenStaffRef _self;
  final $Res Function(_WardenStaffRef) _then;

/// Create a copy of WardenStaffRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = null,Object? employeeCode = freezed,Object? fullName = null,Object? designation = freezed,}) {
  return _then(_WardenStaffRef(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WardenRoomRef {

@JsonKey(name: 'room_id') String get roomId;@JsonKey(name: 'room_number') String get roomNumber;@JsonKey(name: 'floor_number') int? get floorNumber; int? get capacity;@JsonKey(name: 'room_type') String? get roomType;@JsonKey(name: 'ac_type') String? get acType;
/// Create a copy of WardenRoomRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WardenRoomRefCopyWith<WardenRoomRef> get copyWith => _$WardenRoomRefCopyWithImpl<WardenRoomRef>(this as WardenRoomRef, _$identity);

  /// Serializes this WardenRoomRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WardenRoomRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WardenRoomRef&&(identical(other.roomId, _this.roomId) || other.roomId == _this.roomId)&&(identical(other.roomNumber, _this.roomNumber) || other.roomNumber == _this.roomNumber)&&(identical(other.floorNumber, _this.floorNumber) || other.floorNumber == _this.floorNumber)&&(identical(other.capacity, _this.capacity) || other.capacity == _this.capacity)&&(identical(other.roomType, _this.roomType) || other.roomType == _this.roomType)&&(identical(other.acType, _this.acType) || other.acType == _this.acType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WardenRoomRef;
  return Object.hash(runtimeType,_this.roomId,_this.roomNumber,_this.floorNumber,_this.capacity,_this.roomType,_this.acType);
}

@override
String toString() {
  final _this = this as WardenRoomRef;
  return 'WardenRoomRef(roomId: ${_this.roomId}, roomNumber: ${_this.roomNumber}, floorNumber: ${_this.floorNumber}, capacity: ${_this.capacity}, roomType: ${_this.roomType}, acType: ${_this.acType})';
}


}

/// @nodoc
abstract mixin class $WardenRoomRefCopyWith<$Res>  {
  factory $WardenRoomRefCopyWith(WardenRoomRef value, $Res Function(WardenRoomRef) _then) = _$WardenRoomRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'room_id') String roomId,@JsonKey(name: 'room_number') String roomNumber,@JsonKey(name: 'floor_number') int? floorNumber, int? capacity,@JsonKey(name: 'room_type') String? roomType,@JsonKey(name: 'ac_type') String? acType
});




}
/// @nodoc
class _$WardenRoomRefCopyWithImpl<$Res>
    implements $WardenRoomRefCopyWith<$Res> {
  _$WardenRoomRefCopyWithImpl(this._self, this._then);

  final WardenRoomRef _self;
  final $Res Function(WardenRoomRef) _then;

/// Create a copy of WardenRoomRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomId = null,Object? roomNumber = null,Object? floorNumber = freezed,Object? capacity = freezed,Object? roomType = freezed,Object? acType = freezed,}) {
  return _then(WardenRoomRef(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String,floorNumber: freezed == floorNumber ? _self.floorNumber : floorNumber // ignore: cast_nullable_to_non_nullable
as int?,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int?,roomType: freezed == roomType ? _self.roomType : roomType // ignore: cast_nullable_to_non_nullable
as String?,acType: freezed == acType ? _self.acType : acType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WardenRoomRef].
extension WardenRoomRefPatterns on WardenRoomRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WardenRoomRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WardenRoomRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WardenRoomRef value)  $default,){
final _that = this;
switch (_that) {
case _WardenRoomRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WardenRoomRef value)?  $default,){
final _that = this;
switch (_that) {
case _WardenRoomRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'room_id')  String roomId, @JsonKey(name: 'room_number')  String roomNumber, @JsonKey(name: 'floor_number')  int? floorNumber,  int? capacity, @JsonKey(name: 'room_type')  String? roomType, @JsonKey(name: 'ac_type')  String? acType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WardenRoomRef() when $default != null:
return $default(_that.roomId,_that.roomNumber,_that.floorNumber,_that.capacity,_that.roomType,_that.acType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'room_id')  String roomId, @JsonKey(name: 'room_number')  String roomNumber, @JsonKey(name: 'floor_number')  int? floorNumber,  int? capacity, @JsonKey(name: 'room_type')  String? roomType, @JsonKey(name: 'ac_type')  String? acType)  $default,) {final _that = this;
switch (_that) {
case _WardenRoomRef():
return $default(_that.roomId,_that.roomNumber,_that.floorNumber,_that.capacity,_that.roomType,_that.acType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'room_id')  String roomId, @JsonKey(name: 'room_number')  String roomNumber, @JsonKey(name: 'floor_number')  int? floorNumber,  int? capacity, @JsonKey(name: 'room_type')  String? roomType, @JsonKey(name: 'ac_type')  String? acType)?  $default,) {final _that = this;
switch (_that) {
case _WardenRoomRef() when $default != null:
return $default(_that.roomId,_that.roomNumber,_that.floorNumber,_that.capacity,_that.roomType,_that.acType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WardenRoomRef implements WardenRoomRef {
  const _WardenRoomRef({@JsonKey(name: 'room_id') required this.roomId, @JsonKey(name: 'room_number') this.roomNumber = '', @JsonKey(name: 'floor_number') this.floorNumber, this.capacity, @JsonKey(name: 'room_type') this.roomType, @JsonKey(name: 'ac_type') this.acType});
  factory _WardenRoomRef.fromJson(Map<String, dynamic> json) => _$WardenRoomRefFromJson(json);

@override@JsonKey(name: 'room_id') final  String roomId;
@override@JsonKey(name: 'room_number') final  String roomNumber;
@override@JsonKey(name: 'floor_number') final  int? floorNumber;
@override final  int? capacity;
@override@JsonKey(name: 'room_type') final  String? roomType;
@override@JsonKey(name: 'ac_type') final  String? acType;

/// Create a copy of WardenRoomRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WardenRoomRefCopyWith<_WardenRoomRef> get copyWith => __$WardenRoomRefCopyWithImpl<_WardenRoomRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WardenRoomRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WardenRoomRef&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.floorNumber, floorNumber) || other.floorNumber == floorNumber)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.roomType, roomType) || other.roomType == roomType)&&(identical(other.acType, acType) || other.acType == acType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,roomId,roomNumber,floorNumber,capacity,roomType,acType);
}

@override
String toString() {
    return 'WardenRoomRef(roomId: $roomId, roomNumber: $roomNumber, floorNumber: $floorNumber, capacity: $capacity, roomType: $roomType, acType: $acType)';
}


}

/// @nodoc
abstract mixin class _$WardenRoomRefCopyWith<$Res> implements $WardenRoomRefCopyWith<$Res> {
  factory _$WardenRoomRefCopyWith(_WardenRoomRef value, $Res Function(_WardenRoomRef) _then) = __$WardenRoomRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'room_id') String roomId,@JsonKey(name: 'room_number') String roomNumber,@JsonKey(name: 'floor_number') int? floorNumber, int? capacity,@JsonKey(name: 'room_type') String? roomType,@JsonKey(name: 'ac_type') String? acType
});




}
/// @nodoc
class __$WardenRoomRefCopyWithImpl<$Res>
    implements _$WardenRoomRefCopyWith<$Res> {
  __$WardenRoomRefCopyWithImpl(this._self, this._then);

  final _WardenRoomRef _self;
  final $Res Function(_WardenRoomRef) _then;

/// Create a copy of WardenRoomRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? roomNumber = null,Object? floorNumber = freezed,Object? capacity = freezed,Object? roomType = freezed,Object? acType = freezed,}) {
  return _then(_WardenRoomRef(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String,floorNumber: freezed == floorNumber ? _self.floorNumber : floorNumber // ignore: cast_nullable_to_non_nullable
as int?,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int?,roomType: freezed == roomType ? _self.roomType : roomType // ignore: cast_nullable_to_non_nullable
as String?,acType: freezed == acType ? _self.acType : acType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WardenRoom {

@JsonKey(name: 'room_id') String get roomId;@JsonKey(name: 'room_number') String get roomNumber;@JsonKey(name: 'floor_number') int get floorNumber; int get capacity;@JsonKey(name: 'room_type') String? get roomType;@JsonKey(name: 'ac_type') String? get acType;@JsonKey(name: 'occupied_count') int get occupiedCount;@JsonKey(name: 'vacant_count') int get vacantCount;/// VACANT / PARTIAL / FULL. Absent on the PATCH /rooms/:id response.
@JsonKey(name: 'room_status') String? get roomStatus;
/// Create a copy of WardenRoom
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WardenRoomCopyWith<WardenRoom> get copyWith => _$WardenRoomCopyWithImpl<WardenRoom>(this as WardenRoom, _$identity);

  /// Serializes this WardenRoom to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WardenRoom;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WardenRoom&&(identical(other.roomId, _this.roomId) || other.roomId == _this.roomId)&&(identical(other.roomNumber, _this.roomNumber) || other.roomNumber == _this.roomNumber)&&(identical(other.floorNumber, _this.floorNumber) || other.floorNumber == _this.floorNumber)&&(identical(other.capacity, _this.capacity) || other.capacity == _this.capacity)&&(identical(other.roomType, _this.roomType) || other.roomType == _this.roomType)&&(identical(other.acType, _this.acType) || other.acType == _this.acType)&&(identical(other.occupiedCount, _this.occupiedCount) || other.occupiedCount == _this.occupiedCount)&&(identical(other.vacantCount, _this.vacantCount) || other.vacantCount == _this.vacantCount)&&(identical(other.roomStatus, _this.roomStatus) || other.roomStatus == _this.roomStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WardenRoom;
  return Object.hash(runtimeType,_this.roomId,_this.roomNumber,_this.floorNumber,_this.capacity,_this.roomType,_this.acType,_this.occupiedCount,_this.vacantCount,_this.roomStatus);
}

@override
String toString() {
  final _this = this as WardenRoom;
  return 'WardenRoom(roomId: ${_this.roomId}, roomNumber: ${_this.roomNumber}, floorNumber: ${_this.floorNumber}, capacity: ${_this.capacity}, roomType: ${_this.roomType}, acType: ${_this.acType}, occupiedCount: ${_this.occupiedCount}, vacantCount: ${_this.vacantCount}, roomStatus: ${_this.roomStatus})';
}


}

/// @nodoc
abstract mixin class $WardenRoomCopyWith<$Res>  {
  factory $WardenRoomCopyWith(WardenRoom value, $Res Function(WardenRoom) _then) = _$WardenRoomCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'room_id') String roomId,@JsonKey(name: 'room_number') String roomNumber,@JsonKey(name: 'floor_number') int floorNumber, int capacity,@JsonKey(name: 'room_type') String? roomType,@JsonKey(name: 'ac_type') String? acType,@JsonKey(name: 'occupied_count') int occupiedCount,@JsonKey(name: 'vacant_count') int vacantCount,@JsonKey(name: 'room_status') String? roomStatus
});




}
/// @nodoc
class _$WardenRoomCopyWithImpl<$Res>
    implements $WardenRoomCopyWith<$Res> {
  _$WardenRoomCopyWithImpl(this._self, this._then);

  final WardenRoom _self;
  final $Res Function(WardenRoom) _then;

/// Create a copy of WardenRoom
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomId = null,Object? roomNumber = null,Object? floorNumber = null,Object? capacity = null,Object? roomType = freezed,Object? acType = freezed,Object? occupiedCount = null,Object? vacantCount = null,Object? roomStatus = freezed,}) {
  return _then(WardenRoom(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String,floorNumber: null == floorNumber ? _self.floorNumber : floorNumber // ignore: cast_nullable_to_non_nullable
as int,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,roomType: freezed == roomType ? _self.roomType : roomType // ignore: cast_nullable_to_non_nullable
as String?,acType: freezed == acType ? _self.acType : acType // ignore: cast_nullable_to_non_nullable
as String?,occupiedCount: null == occupiedCount ? _self.occupiedCount : occupiedCount // ignore: cast_nullable_to_non_nullable
as int,vacantCount: null == vacantCount ? _self.vacantCount : vacantCount // ignore: cast_nullable_to_non_nullable
as int,roomStatus: freezed == roomStatus ? _self.roomStatus : roomStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WardenRoom].
extension WardenRoomPatterns on WardenRoom {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WardenRoom value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WardenRoom() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WardenRoom value)  $default,){
final _that = this;
switch (_that) {
case _WardenRoom():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WardenRoom value)?  $default,){
final _that = this;
switch (_that) {
case _WardenRoom() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'room_id')  String roomId, @JsonKey(name: 'room_number')  String roomNumber, @JsonKey(name: 'floor_number')  int floorNumber,  int capacity, @JsonKey(name: 'room_type')  String? roomType, @JsonKey(name: 'ac_type')  String? acType, @JsonKey(name: 'occupied_count')  int occupiedCount, @JsonKey(name: 'vacant_count')  int vacantCount, @JsonKey(name: 'room_status')  String? roomStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WardenRoom() when $default != null:
return $default(_that.roomId,_that.roomNumber,_that.floorNumber,_that.capacity,_that.roomType,_that.acType,_that.occupiedCount,_that.vacantCount,_that.roomStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'room_id')  String roomId, @JsonKey(name: 'room_number')  String roomNumber, @JsonKey(name: 'floor_number')  int floorNumber,  int capacity, @JsonKey(name: 'room_type')  String? roomType, @JsonKey(name: 'ac_type')  String? acType, @JsonKey(name: 'occupied_count')  int occupiedCount, @JsonKey(name: 'vacant_count')  int vacantCount, @JsonKey(name: 'room_status')  String? roomStatus)  $default,) {final _that = this;
switch (_that) {
case _WardenRoom():
return $default(_that.roomId,_that.roomNumber,_that.floorNumber,_that.capacity,_that.roomType,_that.acType,_that.occupiedCount,_that.vacantCount,_that.roomStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'room_id')  String roomId, @JsonKey(name: 'room_number')  String roomNumber, @JsonKey(name: 'floor_number')  int floorNumber,  int capacity, @JsonKey(name: 'room_type')  String? roomType, @JsonKey(name: 'ac_type')  String? acType, @JsonKey(name: 'occupied_count')  int occupiedCount, @JsonKey(name: 'vacant_count')  int vacantCount, @JsonKey(name: 'room_status')  String? roomStatus)?  $default,) {final _that = this;
switch (_that) {
case _WardenRoom() when $default != null:
return $default(_that.roomId,_that.roomNumber,_that.floorNumber,_that.capacity,_that.roomType,_that.acType,_that.occupiedCount,_that.vacantCount,_that.roomStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WardenRoom implements WardenRoom {
  const _WardenRoom({@JsonKey(name: 'room_id') required this.roomId, @JsonKey(name: 'room_number') required this.roomNumber, @JsonKey(name: 'floor_number') this.floorNumber = 1, this.capacity = 0, @JsonKey(name: 'room_type') this.roomType, @JsonKey(name: 'ac_type') this.acType, @JsonKey(name: 'occupied_count') this.occupiedCount = 0, @JsonKey(name: 'vacant_count') this.vacantCount = 0, @JsonKey(name: 'room_status') this.roomStatus});
  factory _WardenRoom.fromJson(Map<String, dynamic> json) => _$WardenRoomFromJson(json);

@override@JsonKey(name: 'room_id') final  String roomId;
@override@JsonKey(name: 'room_number') final  String roomNumber;
@override@JsonKey(name: 'floor_number') final  int floorNumber;
@override@JsonKey() final  int capacity;
@override@JsonKey(name: 'room_type') final  String? roomType;
@override@JsonKey(name: 'ac_type') final  String? acType;
@override@JsonKey(name: 'occupied_count') final  int occupiedCount;
@override@JsonKey(name: 'vacant_count') final  int vacantCount;
/// VACANT / PARTIAL / FULL. Absent on the PATCH /rooms/:id response.
@override@JsonKey(name: 'room_status') final  String? roomStatus;

/// Create a copy of WardenRoom
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WardenRoomCopyWith<_WardenRoom> get copyWith => __$WardenRoomCopyWithImpl<_WardenRoom>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WardenRoomToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WardenRoom&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.floorNumber, floorNumber) || other.floorNumber == floorNumber)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.roomType, roomType) || other.roomType == roomType)&&(identical(other.acType, acType) || other.acType == acType)&&(identical(other.occupiedCount, occupiedCount) || other.occupiedCount == occupiedCount)&&(identical(other.vacantCount, vacantCount) || other.vacantCount == vacantCount)&&(identical(other.roomStatus, roomStatus) || other.roomStatus == roomStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,roomId,roomNumber,floorNumber,capacity,roomType,acType,occupiedCount,vacantCount,roomStatus);
}

@override
String toString() {
    return 'WardenRoom(roomId: $roomId, roomNumber: $roomNumber, floorNumber: $floorNumber, capacity: $capacity, roomType: $roomType, acType: $acType, occupiedCount: $occupiedCount, vacantCount: $vacantCount, roomStatus: $roomStatus)';
}


}

/// @nodoc
abstract mixin class _$WardenRoomCopyWith<$Res> implements $WardenRoomCopyWith<$Res> {
  factory _$WardenRoomCopyWith(_WardenRoom value, $Res Function(_WardenRoom) _then) = __$WardenRoomCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'room_id') String roomId,@JsonKey(name: 'room_number') String roomNumber,@JsonKey(name: 'floor_number') int floorNumber, int capacity,@JsonKey(name: 'room_type') String? roomType,@JsonKey(name: 'ac_type') String? acType,@JsonKey(name: 'occupied_count') int occupiedCount,@JsonKey(name: 'vacant_count') int vacantCount,@JsonKey(name: 'room_status') String? roomStatus
});




}
/// @nodoc
class __$WardenRoomCopyWithImpl<$Res>
    implements _$WardenRoomCopyWith<$Res> {
  __$WardenRoomCopyWithImpl(this._self, this._then);

  final _WardenRoom _self;
  final $Res Function(_WardenRoom) _then;

/// Create a copy of WardenRoom
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? roomNumber = null,Object? floorNumber = null,Object? capacity = null,Object? roomType = freezed,Object? acType = freezed,Object? occupiedCount = null,Object? vacantCount = null,Object? roomStatus = freezed,}) {
  return _then(_WardenRoom(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String,floorNumber: null == floorNumber ? _self.floorNumber : floorNumber // ignore: cast_nullable_to_non_nullable
as int,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,roomType: freezed == roomType ? _self.roomType : roomType // ignore: cast_nullable_to_non_nullable
as String?,acType: freezed == acType ? _self.acType : acType // ignore: cast_nullable_to_non_nullable
as String?,occupiedCount: null == occupiedCount ? _self.occupiedCount : occupiedCount // ignore: cast_nullable_to_non_nullable
as int,vacantCount: null == vacantCount ? _self.vacantCount : vacantCount // ignore: cast_nullable_to_non_nullable
as int,roomStatus: freezed == roomStatus ? _self.roomStatus : roomStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WardenFloor {

@JsonKey(name: 'floor_number') int get floorNumber;@JsonKey(name: 'room_count') int get roomCount;@JsonKey(name: 'total_capacity') int get totalCapacity;@JsonKey(name: 'first_room_number') String? get firstRoomNumber;@JsonKey(name: 'last_room_number') String? get lastRoomNumber;
/// Create a copy of WardenFloor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WardenFloorCopyWith<WardenFloor> get copyWith => _$WardenFloorCopyWithImpl<WardenFloor>(this as WardenFloor, _$identity);

  /// Serializes this WardenFloor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WardenFloor;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WardenFloor&&(identical(other.floorNumber, _this.floorNumber) || other.floorNumber == _this.floorNumber)&&(identical(other.roomCount, _this.roomCount) || other.roomCount == _this.roomCount)&&(identical(other.totalCapacity, _this.totalCapacity) || other.totalCapacity == _this.totalCapacity)&&(identical(other.firstRoomNumber, _this.firstRoomNumber) || other.firstRoomNumber == _this.firstRoomNumber)&&(identical(other.lastRoomNumber, _this.lastRoomNumber) || other.lastRoomNumber == _this.lastRoomNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WardenFloor;
  return Object.hash(runtimeType,_this.floorNumber,_this.roomCount,_this.totalCapacity,_this.firstRoomNumber,_this.lastRoomNumber);
}

@override
String toString() {
  final _this = this as WardenFloor;
  return 'WardenFloor(floorNumber: ${_this.floorNumber}, roomCount: ${_this.roomCount}, totalCapacity: ${_this.totalCapacity}, firstRoomNumber: ${_this.firstRoomNumber}, lastRoomNumber: ${_this.lastRoomNumber})';
}


}

/// @nodoc
abstract mixin class $WardenFloorCopyWith<$Res>  {
  factory $WardenFloorCopyWith(WardenFloor value, $Res Function(WardenFloor) _then) = _$WardenFloorCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'floor_number') int floorNumber,@JsonKey(name: 'room_count') int roomCount,@JsonKey(name: 'total_capacity') int totalCapacity,@JsonKey(name: 'first_room_number') String? firstRoomNumber,@JsonKey(name: 'last_room_number') String? lastRoomNumber
});




}
/// @nodoc
class _$WardenFloorCopyWithImpl<$Res>
    implements $WardenFloorCopyWith<$Res> {
  _$WardenFloorCopyWithImpl(this._self, this._then);

  final WardenFloor _self;
  final $Res Function(WardenFloor) _then;

/// Create a copy of WardenFloor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? floorNumber = null,Object? roomCount = null,Object? totalCapacity = null,Object? firstRoomNumber = freezed,Object? lastRoomNumber = freezed,}) {
  return _then(WardenFloor(
floorNumber: null == floorNumber ? _self.floorNumber : floorNumber // ignore: cast_nullable_to_non_nullable
as int,roomCount: null == roomCount ? _self.roomCount : roomCount // ignore: cast_nullable_to_non_nullable
as int,totalCapacity: null == totalCapacity ? _self.totalCapacity : totalCapacity // ignore: cast_nullable_to_non_nullable
as int,firstRoomNumber: freezed == firstRoomNumber ? _self.firstRoomNumber : firstRoomNumber // ignore: cast_nullable_to_non_nullable
as String?,lastRoomNumber: freezed == lastRoomNumber ? _self.lastRoomNumber : lastRoomNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WardenFloor].
extension WardenFloorPatterns on WardenFloor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WardenFloor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WardenFloor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WardenFloor value)  $default,){
final _that = this;
switch (_that) {
case _WardenFloor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WardenFloor value)?  $default,){
final _that = this;
switch (_that) {
case _WardenFloor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'floor_number')  int floorNumber, @JsonKey(name: 'room_count')  int roomCount, @JsonKey(name: 'total_capacity')  int totalCapacity, @JsonKey(name: 'first_room_number')  String? firstRoomNumber, @JsonKey(name: 'last_room_number')  String? lastRoomNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WardenFloor() when $default != null:
return $default(_that.floorNumber,_that.roomCount,_that.totalCapacity,_that.firstRoomNumber,_that.lastRoomNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'floor_number')  int floorNumber, @JsonKey(name: 'room_count')  int roomCount, @JsonKey(name: 'total_capacity')  int totalCapacity, @JsonKey(name: 'first_room_number')  String? firstRoomNumber, @JsonKey(name: 'last_room_number')  String? lastRoomNumber)  $default,) {final _that = this;
switch (_that) {
case _WardenFloor():
return $default(_that.floorNumber,_that.roomCount,_that.totalCapacity,_that.firstRoomNumber,_that.lastRoomNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'floor_number')  int floorNumber, @JsonKey(name: 'room_count')  int roomCount, @JsonKey(name: 'total_capacity')  int totalCapacity, @JsonKey(name: 'first_room_number')  String? firstRoomNumber, @JsonKey(name: 'last_room_number')  String? lastRoomNumber)?  $default,) {final _that = this;
switch (_that) {
case _WardenFloor() when $default != null:
return $default(_that.floorNumber,_that.roomCount,_that.totalCapacity,_that.firstRoomNumber,_that.lastRoomNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WardenFloor implements WardenFloor {
  const _WardenFloor({@JsonKey(name: 'floor_number') required this.floorNumber, @JsonKey(name: 'room_count') this.roomCount = 0, @JsonKey(name: 'total_capacity') this.totalCapacity = 0, @JsonKey(name: 'first_room_number') this.firstRoomNumber, @JsonKey(name: 'last_room_number') this.lastRoomNumber});
  factory _WardenFloor.fromJson(Map<String, dynamic> json) => _$WardenFloorFromJson(json);

@override@JsonKey(name: 'floor_number') final  int floorNumber;
@override@JsonKey(name: 'room_count') final  int roomCount;
@override@JsonKey(name: 'total_capacity') final  int totalCapacity;
@override@JsonKey(name: 'first_room_number') final  String? firstRoomNumber;
@override@JsonKey(name: 'last_room_number') final  String? lastRoomNumber;

/// Create a copy of WardenFloor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WardenFloorCopyWith<_WardenFloor> get copyWith => __$WardenFloorCopyWithImpl<_WardenFloor>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WardenFloorToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WardenFloor&&(identical(other.floorNumber, floorNumber) || other.floorNumber == floorNumber)&&(identical(other.roomCount, roomCount) || other.roomCount == roomCount)&&(identical(other.totalCapacity, totalCapacity) || other.totalCapacity == totalCapacity)&&(identical(other.firstRoomNumber, firstRoomNumber) || other.firstRoomNumber == firstRoomNumber)&&(identical(other.lastRoomNumber, lastRoomNumber) || other.lastRoomNumber == lastRoomNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,floorNumber,roomCount,totalCapacity,firstRoomNumber,lastRoomNumber);
}

@override
String toString() {
    return 'WardenFloor(floorNumber: $floorNumber, roomCount: $roomCount, totalCapacity: $totalCapacity, firstRoomNumber: $firstRoomNumber, lastRoomNumber: $lastRoomNumber)';
}


}

/// @nodoc
abstract mixin class _$WardenFloorCopyWith<$Res> implements $WardenFloorCopyWith<$Res> {
  factory _$WardenFloorCopyWith(_WardenFloor value, $Res Function(_WardenFloor) _then) = __$WardenFloorCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'floor_number') int floorNumber,@JsonKey(name: 'room_count') int roomCount,@JsonKey(name: 'total_capacity') int totalCapacity,@JsonKey(name: 'first_room_number') String? firstRoomNumber,@JsonKey(name: 'last_room_number') String? lastRoomNumber
});




}
/// @nodoc
class __$WardenFloorCopyWithImpl<$Res>
    implements _$WardenFloorCopyWith<$Res> {
  __$WardenFloorCopyWithImpl(this._self, this._then);

  final _WardenFloor _self;
  final $Res Function(_WardenFloor) _then;

/// Create a copy of WardenFloor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? floorNumber = null,Object? roomCount = null,Object? totalCapacity = null,Object? firstRoomNumber = freezed,Object? lastRoomNumber = freezed,}) {
  return _then(_WardenFloor(
floorNumber: null == floorNumber ? _self.floorNumber : floorNumber // ignore: cast_nullable_to_non_nullable
as int,roomCount: null == roomCount ? _self.roomCount : roomCount // ignore: cast_nullable_to_non_nullable
as int,totalCapacity: null == totalCapacity ? _self.totalCapacity : totalCapacity // ignore: cast_nullable_to_non_nullable
as int,firstRoomNumber: freezed == firstRoomNumber ? _self.firstRoomNumber : firstRoomNumber // ignore: cast_nullable_to_non_nullable
as String?,lastRoomNumber: freezed == lastRoomNumber ? _self.lastRoomNumber : lastRoomNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StudentRoomAllocation {

@JsonKey(name: 'allocation_id') String get allocationId;@JsonKey(name: 'room_id') String get roomId;@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'bed_number') String? get bedNumber;@JsonKey(name: 'allocated_at') DateTime? get allocatedAt;@JsonKey(name: 'vacated_at') DateTime? get vacatedAt; String get status;@JsonKey(name: 'hostel_rooms') WardenRoomRef? get room;@JsonKey(name: 'students') WardenStudentRef? get student;
/// Create a copy of StudentRoomAllocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentRoomAllocationCopyWith<StudentRoomAllocation> get copyWith => _$StudentRoomAllocationCopyWithImpl<StudentRoomAllocation>(this as StudentRoomAllocation, _$identity);

  /// Serializes this StudentRoomAllocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StudentRoomAllocation;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentRoomAllocation&&(identical(other.allocationId, _this.allocationId) || other.allocationId == _this.allocationId)&&(identical(other.roomId, _this.roomId) || other.roomId == _this.roomId)&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.bedNumber, _this.bedNumber) || other.bedNumber == _this.bedNumber)&&(identical(other.allocatedAt, _this.allocatedAt) || other.allocatedAt == _this.allocatedAt)&&(identical(other.vacatedAt, _this.vacatedAt) || other.vacatedAt == _this.vacatedAt)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.room, _this.room) || other.room == _this.room)&&(identical(other.student, _this.student) || other.student == _this.student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StudentRoomAllocation;
  return Object.hash(runtimeType,_this.allocationId,_this.roomId,_this.studentId,_this.bedNumber,_this.allocatedAt,_this.vacatedAt,_this.status,_this.room,_this.student);
}

@override
String toString() {
  final _this = this as StudentRoomAllocation;
  return 'StudentRoomAllocation(allocationId: ${_this.allocationId}, roomId: ${_this.roomId}, studentId: ${_this.studentId}, bedNumber: ${_this.bedNumber}, allocatedAt: ${_this.allocatedAt}, vacatedAt: ${_this.vacatedAt}, status: ${_this.status}, room: ${_this.room}, student: ${_this.student})';
}


}

/// @nodoc
abstract mixin class $StudentRoomAllocationCopyWith<$Res>  {
  factory $StudentRoomAllocationCopyWith(StudentRoomAllocation value, $Res Function(StudentRoomAllocation) _then) = _$StudentRoomAllocationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'allocation_id') String allocationId,@JsonKey(name: 'room_id') String roomId,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'bed_number') String? bedNumber,@JsonKey(name: 'allocated_at') DateTime? allocatedAt,@JsonKey(name: 'vacated_at') DateTime? vacatedAt, String status,@JsonKey(name: 'hostel_rooms') WardenRoomRef? room,@JsonKey(name: 'students') WardenStudentRef? student
});


$WardenRoomRefCopyWith<$Res>? get room;$WardenStudentRefCopyWith<$Res>? get student;

}
/// @nodoc
class _$StudentRoomAllocationCopyWithImpl<$Res>
    implements $StudentRoomAllocationCopyWith<$Res> {
  _$StudentRoomAllocationCopyWithImpl(this._self, this._then);

  final StudentRoomAllocation _self;
  final $Res Function(StudentRoomAllocation) _then;

/// Create a copy of StudentRoomAllocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allocationId = null,Object? roomId = null,Object? studentId = null,Object? bedNumber = freezed,Object? allocatedAt = freezed,Object? vacatedAt = freezed,Object? status = null,Object? room = freezed,Object? student = freezed,}) {
  return _then(StudentRoomAllocation(
allocationId: null == allocationId ? _self.allocationId : allocationId // ignore: cast_nullable_to_non_nullable
as String,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,bedNumber: freezed == bedNumber ? _self.bedNumber : bedNumber // ignore: cast_nullable_to_non_nullable
as String?,allocatedAt: freezed == allocatedAt ? _self.allocatedAt : allocatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,vacatedAt: freezed == vacatedAt ? _self.vacatedAt : vacatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as WardenRoomRef?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as WardenStudentRef?,
  ));
}
/// Create a copy of StudentRoomAllocation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenRoomRefCopyWith<$Res>? get room {
    if (_self.room == null) {
    return null;
  }

  return $WardenRoomRefCopyWith<$Res>(_self.room!, (value) {
    return _then(_self.copyWith(room: value));
  });
}/// Create a copy of StudentRoomAllocation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenStudentRefCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $WardenStudentRefCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// Adds pattern-matching-related methods to [StudentRoomAllocation].
extension StudentRoomAllocationPatterns on StudentRoomAllocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentRoomAllocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentRoomAllocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentRoomAllocation value)  $default,){
final _that = this;
switch (_that) {
case _StudentRoomAllocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentRoomAllocation value)?  $default,){
final _that = this;
switch (_that) {
case _StudentRoomAllocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'allocation_id')  String allocationId, @JsonKey(name: 'room_id')  String roomId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'bed_number')  String? bedNumber, @JsonKey(name: 'allocated_at')  DateTime? allocatedAt, @JsonKey(name: 'vacated_at')  DateTime? vacatedAt,  String status, @JsonKey(name: 'hostel_rooms')  WardenRoomRef? room, @JsonKey(name: 'students')  WardenStudentRef? student)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentRoomAllocation() when $default != null:
return $default(_that.allocationId,_that.roomId,_that.studentId,_that.bedNumber,_that.allocatedAt,_that.vacatedAt,_that.status,_that.room,_that.student);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'allocation_id')  String allocationId, @JsonKey(name: 'room_id')  String roomId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'bed_number')  String? bedNumber, @JsonKey(name: 'allocated_at')  DateTime? allocatedAt, @JsonKey(name: 'vacated_at')  DateTime? vacatedAt,  String status, @JsonKey(name: 'hostel_rooms')  WardenRoomRef? room, @JsonKey(name: 'students')  WardenStudentRef? student)  $default,) {final _that = this;
switch (_that) {
case _StudentRoomAllocation():
return $default(_that.allocationId,_that.roomId,_that.studentId,_that.bedNumber,_that.allocatedAt,_that.vacatedAt,_that.status,_that.room,_that.student);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'allocation_id')  String allocationId, @JsonKey(name: 'room_id')  String roomId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'bed_number')  String? bedNumber, @JsonKey(name: 'allocated_at')  DateTime? allocatedAt, @JsonKey(name: 'vacated_at')  DateTime? vacatedAt,  String status, @JsonKey(name: 'hostel_rooms')  WardenRoomRef? room, @JsonKey(name: 'students')  WardenStudentRef? student)?  $default,) {final _that = this;
switch (_that) {
case _StudentRoomAllocation() when $default != null:
return $default(_that.allocationId,_that.roomId,_that.studentId,_that.bedNumber,_that.allocatedAt,_that.vacatedAt,_that.status,_that.room,_that.student);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentRoomAllocation implements StudentRoomAllocation {
  const _StudentRoomAllocation({@JsonKey(name: 'allocation_id') required this.allocationId, @JsonKey(name: 'room_id') required this.roomId, @JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'bed_number') this.bedNumber, @JsonKey(name: 'allocated_at') this.allocatedAt, @JsonKey(name: 'vacated_at') this.vacatedAt, this.status = 'ACTIVE', @JsonKey(name: 'hostel_rooms') this.room, @JsonKey(name: 'students') this.student});
  factory _StudentRoomAllocation.fromJson(Map<String, dynamic> json) => _$StudentRoomAllocationFromJson(json);

@override@JsonKey(name: 'allocation_id') final  String allocationId;
@override@JsonKey(name: 'room_id') final  String roomId;
@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'bed_number') final  String? bedNumber;
@override@JsonKey(name: 'allocated_at') final  DateTime? allocatedAt;
@override@JsonKey(name: 'vacated_at') final  DateTime? vacatedAt;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'hostel_rooms') final  WardenRoomRef? room;
@override@JsonKey(name: 'students') final  WardenStudentRef? student;

/// Create a copy of StudentRoomAllocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentRoomAllocationCopyWith<_StudentRoomAllocation> get copyWith => __$StudentRoomAllocationCopyWithImpl<_StudentRoomAllocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentRoomAllocationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentRoomAllocation&&(identical(other.allocationId, allocationId) || other.allocationId == allocationId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.bedNumber, bedNumber) || other.bedNumber == bedNumber)&&(identical(other.allocatedAt, allocatedAt) || other.allocatedAt == allocatedAt)&&(identical(other.vacatedAt, vacatedAt) || other.vacatedAt == vacatedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.room, room) || other.room == room)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,allocationId,roomId,studentId,bedNumber,allocatedAt,vacatedAt,status,room,student);
}

@override
String toString() {
    return 'StudentRoomAllocation(allocationId: $allocationId, roomId: $roomId, studentId: $studentId, bedNumber: $bedNumber, allocatedAt: $allocatedAt, vacatedAt: $vacatedAt, status: $status, room: $room, student: $student)';
}


}

/// @nodoc
abstract mixin class _$StudentRoomAllocationCopyWith<$Res> implements $StudentRoomAllocationCopyWith<$Res> {
  factory _$StudentRoomAllocationCopyWith(_StudentRoomAllocation value, $Res Function(_StudentRoomAllocation) _then) = __$StudentRoomAllocationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'allocation_id') String allocationId,@JsonKey(name: 'room_id') String roomId,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'bed_number') String? bedNumber,@JsonKey(name: 'allocated_at') DateTime? allocatedAt,@JsonKey(name: 'vacated_at') DateTime? vacatedAt, String status,@JsonKey(name: 'hostel_rooms') WardenRoomRef? room,@JsonKey(name: 'students') WardenStudentRef? student
});


@override $WardenRoomRefCopyWith<$Res>? get room;@override $WardenStudentRefCopyWith<$Res>? get student;

}
/// @nodoc
class __$StudentRoomAllocationCopyWithImpl<$Res>
    implements _$StudentRoomAllocationCopyWith<$Res> {
  __$StudentRoomAllocationCopyWithImpl(this._self, this._then);

  final _StudentRoomAllocation _self;
  final $Res Function(_StudentRoomAllocation) _then;

/// Create a copy of StudentRoomAllocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allocationId = null,Object? roomId = null,Object? studentId = null,Object? bedNumber = freezed,Object? allocatedAt = freezed,Object? vacatedAt = freezed,Object? status = null,Object? room = freezed,Object? student = freezed,}) {
  return _then(_StudentRoomAllocation(
allocationId: null == allocationId ? _self.allocationId : allocationId // ignore: cast_nullable_to_non_nullable
as String,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,bedNumber: freezed == bedNumber ? _self.bedNumber : bedNumber // ignore: cast_nullable_to_non_nullable
as String?,allocatedAt: freezed == allocatedAt ? _self.allocatedAt : allocatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,vacatedAt: freezed == vacatedAt ? _self.vacatedAt : vacatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as WardenRoomRef?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as WardenStudentRef?,
  ));
}

/// Create a copy of StudentRoomAllocation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenRoomRefCopyWith<$Res>? get room {
    if (_self.room == null) {
    return null;
  }

  return $WardenRoomRefCopyWith<$Res>(_self.room!, (value) {
    return _then(_self.copyWith(room: value));
  });
}/// Create a copy of StudentRoomAllocation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenStudentRefCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $WardenStudentRefCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// @nodoc
mixin _$StaffRoomAllocation {

@JsonKey(name: 'allocation_id') String get allocationId;@JsonKey(name: 'room_id') String get roomId;@JsonKey(name: 'staff_id') String get staffId;@JsonKey(name: 'bed_number') String? get bedNumber;@JsonKey(name: 'allocated_at') DateTime? get allocatedAt;@JsonKey(name: 'vacated_at') DateTime? get vacatedAt; String get status;@JsonKey(name: 'hostel_rooms') WardenRoomRef? get room;@JsonKey(name: 'staff_accounts') WardenStaffRef? get staff;
/// Create a copy of StaffRoomAllocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffRoomAllocationCopyWith<StaffRoomAllocation> get copyWith => _$StaffRoomAllocationCopyWithImpl<StaffRoomAllocation>(this as StaffRoomAllocation, _$identity);

  /// Serializes this StaffRoomAllocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffRoomAllocation;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffRoomAllocation&&(identical(other.allocationId, _this.allocationId) || other.allocationId == _this.allocationId)&&(identical(other.roomId, _this.roomId) || other.roomId == _this.roomId)&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.bedNumber, _this.bedNumber) || other.bedNumber == _this.bedNumber)&&(identical(other.allocatedAt, _this.allocatedAt) || other.allocatedAt == _this.allocatedAt)&&(identical(other.vacatedAt, _this.vacatedAt) || other.vacatedAt == _this.vacatedAt)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.room, _this.room) || other.room == _this.room)&&(identical(other.staff, _this.staff) || other.staff == _this.staff));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffRoomAllocation;
  return Object.hash(runtimeType,_this.allocationId,_this.roomId,_this.staffId,_this.bedNumber,_this.allocatedAt,_this.vacatedAt,_this.status,_this.room,_this.staff);
}

@override
String toString() {
  final _this = this as StaffRoomAllocation;
  return 'StaffRoomAllocation(allocationId: ${_this.allocationId}, roomId: ${_this.roomId}, staffId: ${_this.staffId}, bedNumber: ${_this.bedNumber}, allocatedAt: ${_this.allocatedAt}, vacatedAt: ${_this.vacatedAt}, status: ${_this.status}, room: ${_this.room}, staff: ${_this.staff})';
}


}

/// @nodoc
abstract mixin class $StaffRoomAllocationCopyWith<$Res>  {
  factory $StaffRoomAllocationCopyWith(StaffRoomAllocation value, $Res Function(StaffRoomAllocation) _then) = _$StaffRoomAllocationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'allocation_id') String allocationId,@JsonKey(name: 'room_id') String roomId,@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'bed_number') String? bedNumber,@JsonKey(name: 'allocated_at') DateTime? allocatedAt,@JsonKey(name: 'vacated_at') DateTime? vacatedAt, String status,@JsonKey(name: 'hostel_rooms') WardenRoomRef? room,@JsonKey(name: 'staff_accounts') WardenStaffRef? staff
});


$WardenRoomRefCopyWith<$Res>? get room;$WardenStaffRefCopyWith<$Res>? get staff;

}
/// @nodoc
class _$StaffRoomAllocationCopyWithImpl<$Res>
    implements $StaffRoomAllocationCopyWith<$Res> {
  _$StaffRoomAllocationCopyWithImpl(this._self, this._then);

  final StaffRoomAllocation _self;
  final $Res Function(StaffRoomAllocation) _then;

/// Create a copy of StaffRoomAllocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allocationId = null,Object? roomId = null,Object? staffId = null,Object? bedNumber = freezed,Object? allocatedAt = freezed,Object? vacatedAt = freezed,Object? status = null,Object? room = freezed,Object? staff = freezed,}) {
  return _then(StaffRoomAllocation(
allocationId: null == allocationId ? _self.allocationId : allocationId // ignore: cast_nullable_to_non_nullable
as String,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,bedNumber: freezed == bedNumber ? _self.bedNumber : bedNumber // ignore: cast_nullable_to_non_nullable
as String?,allocatedAt: freezed == allocatedAt ? _self.allocatedAt : allocatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,vacatedAt: freezed == vacatedAt ? _self.vacatedAt : vacatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as WardenRoomRef?,staff: freezed == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as WardenStaffRef?,
  ));
}
/// Create a copy of StaffRoomAllocation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenRoomRefCopyWith<$Res>? get room {
    if (_self.room == null) {
    return null;
  }

  return $WardenRoomRefCopyWith<$Res>(_self.room!, (value) {
    return _then(_self.copyWith(room: value));
  });
}/// Create a copy of StaffRoomAllocation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenStaffRefCopyWith<$Res>? get staff {
    if (_self.staff == null) {
    return null;
  }

  return $WardenStaffRefCopyWith<$Res>(_self.staff!, (value) {
    return _then(_self.copyWith(staff: value));
  });
}
}


/// Adds pattern-matching-related methods to [StaffRoomAllocation].
extension StaffRoomAllocationPatterns on StaffRoomAllocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffRoomAllocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffRoomAllocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffRoomAllocation value)  $default,){
final _that = this;
switch (_that) {
case _StaffRoomAllocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffRoomAllocation value)?  $default,){
final _that = this;
switch (_that) {
case _StaffRoomAllocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'allocation_id')  String allocationId, @JsonKey(name: 'room_id')  String roomId, @JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'bed_number')  String? bedNumber, @JsonKey(name: 'allocated_at')  DateTime? allocatedAt, @JsonKey(name: 'vacated_at')  DateTime? vacatedAt,  String status, @JsonKey(name: 'hostel_rooms')  WardenRoomRef? room, @JsonKey(name: 'staff_accounts')  WardenStaffRef? staff)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffRoomAllocation() when $default != null:
return $default(_that.allocationId,_that.roomId,_that.staffId,_that.bedNumber,_that.allocatedAt,_that.vacatedAt,_that.status,_that.room,_that.staff);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'allocation_id')  String allocationId, @JsonKey(name: 'room_id')  String roomId, @JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'bed_number')  String? bedNumber, @JsonKey(name: 'allocated_at')  DateTime? allocatedAt, @JsonKey(name: 'vacated_at')  DateTime? vacatedAt,  String status, @JsonKey(name: 'hostel_rooms')  WardenRoomRef? room, @JsonKey(name: 'staff_accounts')  WardenStaffRef? staff)  $default,) {final _that = this;
switch (_that) {
case _StaffRoomAllocation():
return $default(_that.allocationId,_that.roomId,_that.staffId,_that.bedNumber,_that.allocatedAt,_that.vacatedAt,_that.status,_that.room,_that.staff);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'allocation_id')  String allocationId, @JsonKey(name: 'room_id')  String roomId, @JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'bed_number')  String? bedNumber, @JsonKey(name: 'allocated_at')  DateTime? allocatedAt, @JsonKey(name: 'vacated_at')  DateTime? vacatedAt,  String status, @JsonKey(name: 'hostel_rooms')  WardenRoomRef? room, @JsonKey(name: 'staff_accounts')  WardenStaffRef? staff)?  $default,) {final _that = this;
switch (_that) {
case _StaffRoomAllocation() when $default != null:
return $default(_that.allocationId,_that.roomId,_that.staffId,_that.bedNumber,_that.allocatedAt,_that.vacatedAt,_that.status,_that.room,_that.staff);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffRoomAllocation implements StaffRoomAllocation {
  const _StaffRoomAllocation({@JsonKey(name: 'allocation_id') required this.allocationId, @JsonKey(name: 'room_id') required this.roomId, @JsonKey(name: 'staff_id') required this.staffId, @JsonKey(name: 'bed_number') this.bedNumber, @JsonKey(name: 'allocated_at') this.allocatedAt, @JsonKey(name: 'vacated_at') this.vacatedAt, this.status = 'ACTIVE', @JsonKey(name: 'hostel_rooms') this.room, @JsonKey(name: 'staff_accounts') this.staff});
  factory _StaffRoomAllocation.fromJson(Map<String, dynamic> json) => _$StaffRoomAllocationFromJson(json);

@override@JsonKey(name: 'allocation_id') final  String allocationId;
@override@JsonKey(name: 'room_id') final  String roomId;
@override@JsonKey(name: 'staff_id') final  String staffId;
@override@JsonKey(name: 'bed_number') final  String? bedNumber;
@override@JsonKey(name: 'allocated_at') final  DateTime? allocatedAt;
@override@JsonKey(name: 'vacated_at') final  DateTime? vacatedAt;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'hostel_rooms') final  WardenRoomRef? room;
@override@JsonKey(name: 'staff_accounts') final  WardenStaffRef? staff;

/// Create a copy of StaffRoomAllocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffRoomAllocationCopyWith<_StaffRoomAllocation> get copyWith => __$StaffRoomAllocationCopyWithImpl<_StaffRoomAllocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffRoomAllocationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffRoomAllocation&&(identical(other.allocationId, allocationId) || other.allocationId == allocationId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.bedNumber, bedNumber) || other.bedNumber == bedNumber)&&(identical(other.allocatedAt, allocatedAt) || other.allocatedAt == allocatedAt)&&(identical(other.vacatedAt, vacatedAt) || other.vacatedAt == vacatedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.room, room) || other.room == room)&&(identical(other.staff, staff) || other.staff == staff));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,allocationId,roomId,staffId,bedNumber,allocatedAt,vacatedAt,status,room,staff);
}

@override
String toString() {
    return 'StaffRoomAllocation(allocationId: $allocationId, roomId: $roomId, staffId: $staffId, bedNumber: $bedNumber, allocatedAt: $allocatedAt, vacatedAt: $vacatedAt, status: $status, room: $room, staff: $staff)';
}


}

/// @nodoc
abstract mixin class _$StaffRoomAllocationCopyWith<$Res> implements $StaffRoomAllocationCopyWith<$Res> {
  factory _$StaffRoomAllocationCopyWith(_StaffRoomAllocation value, $Res Function(_StaffRoomAllocation) _then) = __$StaffRoomAllocationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'allocation_id') String allocationId,@JsonKey(name: 'room_id') String roomId,@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'bed_number') String? bedNumber,@JsonKey(name: 'allocated_at') DateTime? allocatedAt,@JsonKey(name: 'vacated_at') DateTime? vacatedAt, String status,@JsonKey(name: 'hostel_rooms') WardenRoomRef? room,@JsonKey(name: 'staff_accounts') WardenStaffRef? staff
});


@override $WardenRoomRefCopyWith<$Res>? get room;@override $WardenStaffRefCopyWith<$Res>? get staff;

}
/// @nodoc
class __$StaffRoomAllocationCopyWithImpl<$Res>
    implements _$StaffRoomAllocationCopyWith<$Res> {
  __$StaffRoomAllocationCopyWithImpl(this._self, this._then);

  final _StaffRoomAllocation _self;
  final $Res Function(_StaffRoomAllocation) _then;

/// Create a copy of StaffRoomAllocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allocationId = null,Object? roomId = null,Object? staffId = null,Object? bedNumber = freezed,Object? allocatedAt = freezed,Object? vacatedAt = freezed,Object? status = null,Object? room = freezed,Object? staff = freezed,}) {
  return _then(_StaffRoomAllocation(
allocationId: null == allocationId ? _self.allocationId : allocationId // ignore: cast_nullable_to_non_nullable
as String,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,bedNumber: freezed == bedNumber ? _self.bedNumber : bedNumber // ignore: cast_nullable_to_non_nullable
as String?,allocatedAt: freezed == allocatedAt ? _self.allocatedAt : allocatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,vacatedAt: freezed == vacatedAt ? _self.vacatedAt : vacatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as WardenRoomRef?,staff: freezed == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as WardenStaffRef?,
  ));
}

/// Create a copy of StaffRoomAllocation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenRoomRefCopyWith<$Res>? get room {
    if (_self.room == null) {
    return null;
  }

  return $WardenRoomRefCopyWith<$Res>(_self.room!, (value) {
    return _then(_self.copyWith(room: value));
  });
}/// Create a copy of StaffRoomAllocation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenStaffRefCopyWith<$Res>? get staff {
    if (_self.staff == null) {
    return null;
  }

  return $WardenStaffRefCopyWith<$Res>(_self.staff!, (value) {
    return _then(_self.copyWith(staff: value));
  });
}
}


/// @nodoc
mixin _$HostelVisitor {

@JsonKey(name: 'visitor_id') String get visitorId;@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'visitor_name') String get visitorName;@JsonKey(name: 'relation_to_student') String? get relationToStudent;@JsonKey(name: 'visit_date') DateTime? get visitDate;@JsonKey(name: 'check_in_time') DateTime? get checkInTime;@JsonKey(name: 'check_out_time') DateTime? get checkOutTime; String? get purpose;@JsonKey(name: 'students') WardenStudentRef? get student;
/// Create a copy of HostelVisitor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HostelVisitorCopyWith<HostelVisitor> get copyWith => _$HostelVisitorCopyWithImpl<HostelVisitor>(this as HostelVisitor, _$identity);

  /// Serializes this HostelVisitor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as HostelVisitor;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HostelVisitor&&(identical(other.visitorId, _this.visitorId) || other.visitorId == _this.visitorId)&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.visitorName, _this.visitorName) || other.visitorName == _this.visitorName)&&(identical(other.relationToStudent, _this.relationToStudent) || other.relationToStudent == _this.relationToStudent)&&(identical(other.visitDate, _this.visitDate) || other.visitDate == _this.visitDate)&&(identical(other.checkInTime, _this.checkInTime) || other.checkInTime == _this.checkInTime)&&(identical(other.checkOutTime, _this.checkOutTime) || other.checkOutTime == _this.checkOutTime)&&(identical(other.purpose, _this.purpose) || other.purpose == _this.purpose)&&(identical(other.student, _this.student) || other.student == _this.student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as HostelVisitor;
  return Object.hash(runtimeType,_this.visitorId,_this.studentId,_this.visitorName,_this.relationToStudent,_this.visitDate,_this.checkInTime,_this.checkOutTime,_this.purpose,_this.student);
}

@override
String toString() {
  final _this = this as HostelVisitor;
  return 'HostelVisitor(visitorId: ${_this.visitorId}, studentId: ${_this.studentId}, visitorName: ${_this.visitorName}, relationToStudent: ${_this.relationToStudent}, visitDate: ${_this.visitDate}, checkInTime: ${_this.checkInTime}, checkOutTime: ${_this.checkOutTime}, purpose: ${_this.purpose}, student: ${_this.student})';
}


}

/// @nodoc
abstract mixin class $HostelVisitorCopyWith<$Res>  {
  factory $HostelVisitorCopyWith(HostelVisitor value, $Res Function(HostelVisitor) _then) = _$HostelVisitorCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'visitor_id') String visitorId,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'visitor_name') String visitorName,@JsonKey(name: 'relation_to_student') String? relationToStudent,@JsonKey(name: 'visit_date') DateTime? visitDate,@JsonKey(name: 'check_in_time') DateTime? checkInTime,@JsonKey(name: 'check_out_time') DateTime? checkOutTime, String? purpose,@JsonKey(name: 'students') WardenStudentRef? student
});


$WardenStudentRefCopyWith<$Res>? get student;

}
/// @nodoc
class _$HostelVisitorCopyWithImpl<$Res>
    implements $HostelVisitorCopyWith<$Res> {
  _$HostelVisitorCopyWithImpl(this._self, this._then);

  final HostelVisitor _self;
  final $Res Function(HostelVisitor) _then;

/// Create a copy of HostelVisitor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? visitorId = null,Object? studentId = null,Object? visitorName = null,Object? relationToStudent = freezed,Object? visitDate = freezed,Object? checkInTime = freezed,Object? checkOutTime = freezed,Object? purpose = freezed,Object? student = freezed,}) {
  return _then(HostelVisitor(
visitorId: null == visitorId ? _self.visitorId : visitorId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,visitorName: null == visitorName ? _self.visitorName : visitorName // ignore: cast_nullable_to_non_nullable
as String,relationToStudent: freezed == relationToStudent ? _self.relationToStudent : relationToStudent // ignore: cast_nullable_to_non_nullable
as String?,visitDate: freezed == visitDate ? _self.visitDate : visitDate // ignore: cast_nullable_to_non_nullable
as DateTime?,checkInTime: freezed == checkInTime ? _self.checkInTime : checkInTime // ignore: cast_nullable_to_non_nullable
as DateTime?,checkOutTime: freezed == checkOutTime ? _self.checkOutTime : checkOutTime // ignore: cast_nullable_to_non_nullable
as DateTime?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as WardenStudentRef?,
  ));
}
/// Create a copy of HostelVisitor
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenStudentRefCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $WardenStudentRefCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// Adds pattern-matching-related methods to [HostelVisitor].
extension HostelVisitorPatterns on HostelVisitor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HostelVisitor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HostelVisitor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HostelVisitor value)  $default,){
final _that = this;
switch (_that) {
case _HostelVisitor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HostelVisitor value)?  $default,){
final _that = this;
switch (_that) {
case _HostelVisitor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'visitor_id')  String visitorId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'visitor_name')  String visitorName, @JsonKey(name: 'relation_to_student')  String? relationToStudent, @JsonKey(name: 'visit_date')  DateTime? visitDate, @JsonKey(name: 'check_in_time')  DateTime? checkInTime, @JsonKey(name: 'check_out_time')  DateTime? checkOutTime,  String? purpose, @JsonKey(name: 'students')  WardenStudentRef? student)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HostelVisitor() when $default != null:
return $default(_that.visitorId,_that.studentId,_that.visitorName,_that.relationToStudent,_that.visitDate,_that.checkInTime,_that.checkOutTime,_that.purpose,_that.student);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'visitor_id')  String visitorId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'visitor_name')  String visitorName, @JsonKey(name: 'relation_to_student')  String? relationToStudent, @JsonKey(name: 'visit_date')  DateTime? visitDate, @JsonKey(name: 'check_in_time')  DateTime? checkInTime, @JsonKey(name: 'check_out_time')  DateTime? checkOutTime,  String? purpose, @JsonKey(name: 'students')  WardenStudentRef? student)  $default,) {final _that = this;
switch (_that) {
case _HostelVisitor():
return $default(_that.visitorId,_that.studentId,_that.visitorName,_that.relationToStudent,_that.visitDate,_that.checkInTime,_that.checkOutTime,_that.purpose,_that.student);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'visitor_id')  String visitorId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'visitor_name')  String visitorName, @JsonKey(name: 'relation_to_student')  String? relationToStudent, @JsonKey(name: 'visit_date')  DateTime? visitDate, @JsonKey(name: 'check_in_time')  DateTime? checkInTime, @JsonKey(name: 'check_out_time')  DateTime? checkOutTime,  String? purpose, @JsonKey(name: 'students')  WardenStudentRef? student)?  $default,) {final _that = this;
switch (_that) {
case _HostelVisitor() when $default != null:
return $default(_that.visitorId,_that.studentId,_that.visitorName,_that.relationToStudent,_that.visitDate,_that.checkInTime,_that.checkOutTime,_that.purpose,_that.student);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HostelVisitor implements HostelVisitor {
  const _HostelVisitor({@JsonKey(name: 'visitor_id') required this.visitorId, @JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'visitor_name') required this.visitorName, @JsonKey(name: 'relation_to_student') this.relationToStudent, @JsonKey(name: 'visit_date') this.visitDate, @JsonKey(name: 'check_in_time') this.checkInTime, @JsonKey(name: 'check_out_time') this.checkOutTime, this.purpose, @JsonKey(name: 'students') this.student});
  factory _HostelVisitor.fromJson(Map<String, dynamic> json) => _$HostelVisitorFromJson(json);

@override@JsonKey(name: 'visitor_id') final  String visitorId;
@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'visitor_name') final  String visitorName;
@override@JsonKey(name: 'relation_to_student') final  String? relationToStudent;
@override@JsonKey(name: 'visit_date') final  DateTime? visitDate;
@override@JsonKey(name: 'check_in_time') final  DateTime? checkInTime;
@override@JsonKey(name: 'check_out_time') final  DateTime? checkOutTime;
@override final  String? purpose;
@override@JsonKey(name: 'students') final  WardenStudentRef? student;

/// Create a copy of HostelVisitor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HostelVisitorCopyWith<_HostelVisitor> get copyWith => __$HostelVisitorCopyWithImpl<_HostelVisitor>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HostelVisitorToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HostelVisitor&&(identical(other.visitorId, visitorId) || other.visitorId == visitorId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.visitorName, visitorName) || other.visitorName == visitorName)&&(identical(other.relationToStudent, relationToStudent) || other.relationToStudent == relationToStudent)&&(identical(other.visitDate, visitDate) || other.visitDate == visitDate)&&(identical(other.checkInTime, checkInTime) || other.checkInTime == checkInTime)&&(identical(other.checkOutTime, checkOutTime) || other.checkOutTime == checkOutTime)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,visitorId,studentId,visitorName,relationToStudent,visitDate,checkInTime,checkOutTime,purpose,student);
}

@override
String toString() {
    return 'HostelVisitor(visitorId: $visitorId, studentId: $studentId, visitorName: $visitorName, relationToStudent: $relationToStudent, visitDate: $visitDate, checkInTime: $checkInTime, checkOutTime: $checkOutTime, purpose: $purpose, student: $student)';
}


}

/// @nodoc
abstract mixin class _$HostelVisitorCopyWith<$Res> implements $HostelVisitorCopyWith<$Res> {
  factory _$HostelVisitorCopyWith(_HostelVisitor value, $Res Function(_HostelVisitor) _then) = __$HostelVisitorCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'visitor_id') String visitorId,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'visitor_name') String visitorName,@JsonKey(name: 'relation_to_student') String? relationToStudent,@JsonKey(name: 'visit_date') DateTime? visitDate,@JsonKey(name: 'check_in_time') DateTime? checkInTime,@JsonKey(name: 'check_out_time') DateTime? checkOutTime, String? purpose,@JsonKey(name: 'students') WardenStudentRef? student
});


@override $WardenStudentRefCopyWith<$Res>? get student;

}
/// @nodoc
class __$HostelVisitorCopyWithImpl<$Res>
    implements _$HostelVisitorCopyWith<$Res> {
  __$HostelVisitorCopyWithImpl(this._self, this._then);

  final _HostelVisitor _self;
  final $Res Function(_HostelVisitor) _then;

/// Create a copy of HostelVisitor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? visitorId = null,Object? studentId = null,Object? visitorName = null,Object? relationToStudent = freezed,Object? visitDate = freezed,Object? checkInTime = freezed,Object? checkOutTime = freezed,Object? purpose = freezed,Object? student = freezed,}) {
  return _then(_HostelVisitor(
visitorId: null == visitorId ? _self.visitorId : visitorId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,visitorName: null == visitorName ? _self.visitorName : visitorName // ignore: cast_nullable_to_non_nullable
as String,relationToStudent: freezed == relationToStudent ? _self.relationToStudent : relationToStudent // ignore: cast_nullable_to_non_nullable
as String?,visitDate: freezed == visitDate ? _self.visitDate : visitDate // ignore: cast_nullable_to_non_nullable
as DateTime?,checkInTime: freezed == checkInTime ? _self.checkInTime : checkInTime // ignore: cast_nullable_to_non_nullable
as DateTime?,checkOutTime: freezed == checkOutTime ? _self.checkOutTime : checkOutTime // ignore: cast_nullable_to_non_nullable
as DateTime?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as WardenStudentRef?,
  ));
}

/// Create a copy of HostelVisitor
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenStudentRefCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $WardenStudentRefCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// @nodoc
mixin _$HostelAttendanceRecord {

@JsonKey(name: 'attendance_id') String get attendanceId;@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'room_id') String get roomId;@JsonKey(name: 'attendance_date') DateTime? get attendanceDate; String get status;@JsonKey(name: 'students') WardenStudentRef? get student;@JsonKey(name: 'hostel_rooms') WardenRoomRef? get room;
/// Create a copy of HostelAttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HostelAttendanceRecordCopyWith<HostelAttendanceRecord> get copyWith => _$HostelAttendanceRecordCopyWithImpl<HostelAttendanceRecord>(this as HostelAttendanceRecord, _$identity);

  /// Serializes this HostelAttendanceRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as HostelAttendanceRecord;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HostelAttendanceRecord&&(identical(other.attendanceId, _this.attendanceId) || other.attendanceId == _this.attendanceId)&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.roomId, _this.roomId) || other.roomId == _this.roomId)&&(identical(other.attendanceDate, _this.attendanceDate) || other.attendanceDate == _this.attendanceDate)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.student, _this.student) || other.student == _this.student)&&(identical(other.room, _this.room) || other.room == _this.room));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as HostelAttendanceRecord;
  return Object.hash(runtimeType,_this.attendanceId,_this.studentId,_this.roomId,_this.attendanceDate,_this.status,_this.student,_this.room);
}

@override
String toString() {
  final _this = this as HostelAttendanceRecord;
  return 'HostelAttendanceRecord(attendanceId: ${_this.attendanceId}, studentId: ${_this.studentId}, roomId: ${_this.roomId}, attendanceDate: ${_this.attendanceDate}, status: ${_this.status}, student: ${_this.student}, room: ${_this.room})';
}


}

/// @nodoc
abstract mixin class $HostelAttendanceRecordCopyWith<$Res>  {
  factory $HostelAttendanceRecordCopyWith(HostelAttendanceRecord value, $Res Function(HostelAttendanceRecord) _then) = _$HostelAttendanceRecordCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'attendance_id') String attendanceId,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'room_id') String roomId,@JsonKey(name: 'attendance_date') DateTime? attendanceDate, String status,@JsonKey(name: 'students') WardenStudentRef? student,@JsonKey(name: 'hostel_rooms') WardenRoomRef? room
});


$WardenStudentRefCopyWith<$Res>? get student;$WardenRoomRefCopyWith<$Res>? get room;

}
/// @nodoc
class _$HostelAttendanceRecordCopyWithImpl<$Res>
    implements $HostelAttendanceRecordCopyWith<$Res> {
  _$HostelAttendanceRecordCopyWithImpl(this._self, this._then);

  final HostelAttendanceRecord _self;
  final $Res Function(HostelAttendanceRecord) _then;

/// Create a copy of HostelAttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attendanceId = null,Object? studentId = null,Object? roomId = null,Object? attendanceDate = freezed,Object? status = null,Object? student = freezed,Object? room = freezed,}) {
  return _then(HostelAttendanceRecord(
attendanceId: null == attendanceId ? _self.attendanceId : attendanceId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,attendanceDate: freezed == attendanceDate ? _self.attendanceDate : attendanceDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as WardenStudentRef?,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as WardenRoomRef?,
  ));
}
/// Create a copy of HostelAttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenStudentRefCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $WardenStudentRefCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}/// Create a copy of HostelAttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenRoomRefCopyWith<$Res>? get room {
    if (_self.room == null) {
    return null;
  }

  return $WardenRoomRefCopyWith<$Res>(_self.room!, (value) {
    return _then(_self.copyWith(room: value));
  });
}
}


/// Adds pattern-matching-related methods to [HostelAttendanceRecord].
extension HostelAttendanceRecordPatterns on HostelAttendanceRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HostelAttendanceRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HostelAttendanceRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HostelAttendanceRecord value)  $default,){
final _that = this;
switch (_that) {
case _HostelAttendanceRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HostelAttendanceRecord value)?  $default,){
final _that = this;
switch (_that) {
case _HostelAttendanceRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_id')  String attendanceId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'room_id')  String roomId, @JsonKey(name: 'attendance_date')  DateTime? attendanceDate,  String status, @JsonKey(name: 'students')  WardenStudentRef? student, @JsonKey(name: 'hostel_rooms')  WardenRoomRef? room)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HostelAttendanceRecord() when $default != null:
return $default(_that.attendanceId,_that.studentId,_that.roomId,_that.attendanceDate,_that.status,_that.student,_that.room);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_id')  String attendanceId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'room_id')  String roomId, @JsonKey(name: 'attendance_date')  DateTime? attendanceDate,  String status, @JsonKey(name: 'students')  WardenStudentRef? student, @JsonKey(name: 'hostel_rooms')  WardenRoomRef? room)  $default,) {final _that = this;
switch (_that) {
case _HostelAttendanceRecord():
return $default(_that.attendanceId,_that.studentId,_that.roomId,_that.attendanceDate,_that.status,_that.student,_that.room);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'attendance_id')  String attendanceId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'room_id')  String roomId, @JsonKey(name: 'attendance_date')  DateTime? attendanceDate,  String status, @JsonKey(name: 'students')  WardenStudentRef? student, @JsonKey(name: 'hostel_rooms')  WardenRoomRef? room)?  $default,) {final _that = this;
switch (_that) {
case _HostelAttendanceRecord() when $default != null:
return $default(_that.attendanceId,_that.studentId,_that.roomId,_that.attendanceDate,_that.status,_that.student,_that.room);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HostelAttendanceRecord implements HostelAttendanceRecord {
  const _HostelAttendanceRecord({@JsonKey(name: 'attendance_id') required this.attendanceId, @JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'room_id') required this.roomId, @JsonKey(name: 'attendance_date') this.attendanceDate, required this.status, @JsonKey(name: 'students') this.student, @JsonKey(name: 'hostel_rooms') this.room});
  factory _HostelAttendanceRecord.fromJson(Map<String, dynamic> json) => _$HostelAttendanceRecordFromJson(json);

@override@JsonKey(name: 'attendance_id') final  String attendanceId;
@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'room_id') final  String roomId;
@override@JsonKey(name: 'attendance_date') final  DateTime? attendanceDate;
@override final  String status;
@override@JsonKey(name: 'students') final  WardenStudentRef? student;
@override@JsonKey(name: 'hostel_rooms') final  WardenRoomRef? room;

/// Create a copy of HostelAttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HostelAttendanceRecordCopyWith<_HostelAttendanceRecord> get copyWith => __$HostelAttendanceRecordCopyWithImpl<_HostelAttendanceRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HostelAttendanceRecordToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HostelAttendanceRecord&&(identical(other.attendanceId, attendanceId) || other.attendanceId == attendanceId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.attendanceDate, attendanceDate) || other.attendanceDate == attendanceDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.student, student) || other.student == student)&&(identical(other.room, room) || other.room == room));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,attendanceId,studentId,roomId,attendanceDate,status,student,room);
}

@override
String toString() {
    return 'HostelAttendanceRecord(attendanceId: $attendanceId, studentId: $studentId, roomId: $roomId, attendanceDate: $attendanceDate, status: $status, student: $student, room: $room)';
}


}

/// @nodoc
abstract mixin class _$HostelAttendanceRecordCopyWith<$Res> implements $HostelAttendanceRecordCopyWith<$Res> {
  factory _$HostelAttendanceRecordCopyWith(_HostelAttendanceRecord value, $Res Function(_HostelAttendanceRecord) _then) = __$HostelAttendanceRecordCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'attendance_id') String attendanceId,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'room_id') String roomId,@JsonKey(name: 'attendance_date') DateTime? attendanceDate, String status,@JsonKey(name: 'students') WardenStudentRef? student,@JsonKey(name: 'hostel_rooms') WardenRoomRef? room
});


@override $WardenStudentRefCopyWith<$Res>? get student;@override $WardenRoomRefCopyWith<$Res>? get room;

}
/// @nodoc
class __$HostelAttendanceRecordCopyWithImpl<$Res>
    implements _$HostelAttendanceRecordCopyWith<$Res> {
  __$HostelAttendanceRecordCopyWithImpl(this._self, this._then);

  final _HostelAttendanceRecord _self;
  final $Res Function(_HostelAttendanceRecord) _then;

/// Create a copy of HostelAttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attendanceId = null,Object? studentId = null,Object? roomId = null,Object? attendanceDate = freezed,Object? status = null,Object? student = freezed,Object? room = freezed,}) {
  return _then(_HostelAttendanceRecord(
attendanceId: null == attendanceId ? _self.attendanceId : attendanceId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,attendanceDate: freezed == attendanceDate ? _self.attendanceDate : attendanceDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as WardenStudentRef?,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as WardenRoomRef?,
  ));
}

/// Create a copy of HostelAttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenStudentRefCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $WardenStudentRefCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}/// Create a copy of HostelAttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenRoomRefCopyWith<$Res>? get room {
    if (_self.room == null) {
    return null;
  }

  return $WardenRoomRefCopyWith<$Res>(_self.room!, (value) {
    return _then(_self.copyWith(room: value));
  });
}
}


/// @nodoc
mixin _$HostelResident {

@JsonKey(name: 'resident_type') String get residentType;@JsonKey(name: 'allocation_id') String get allocationId;@JsonKey(name: 'person_id') String get personId; String? get identifier; String get name;@JsonKey(name: 'role_label') String? get roleLabel;@JsonKey(name: 'bed_number') String? get bedNumber;@JsonKey(name: 'allocated_at') DateTime? get allocatedAt;@JsonKey(name: 'hostel_rooms') WardenRoomRef? get room;
/// Create a copy of HostelResident
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HostelResidentCopyWith<HostelResident> get copyWith => _$HostelResidentCopyWithImpl<HostelResident>(this as HostelResident, _$identity);

  /// Serializes this HostelResident to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as HostelResident;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HostelResident&&(identical(other.residentType, _this.residentType) || other.residentType == _this.residentType)&&(identical(other.allocationId, _this.allocationId) || other.allocationId == _this.allocationId)&&(identical(other.personId, _this.personId) || other.personId == _this.personId)&&(identical(other.identifier, _this.identifier) || other.identifier == _this.identifier)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.roleLabel, _this.roleLabel) || other.roleLabel == _this.roleLabel)&&(identical(other.bedNumber, _this.bedNumber) || other.bedNumber == _this.bedNumber)&&(identical(other.allocatedAt, _this.allocatedAt) || other.allocatedAt == _this.allocatedAt)&&(identical(other.room, _this.room) || other.room == _this.room));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as HostelResident;
  return Object.hash(runtimeType,_this.residentType,_this.allocationId,_this.personId,_this.identifier,_this.name,_this.roleLabel,_this.bedNumber,_this.allocatedAt,_this.room);
}

@override
String toString() {
  final _this = this as HostelResident;
  return 'HostelResident(residentType: ${_this.residentType}, allocationId: ${_this.allocationId}, personId: ${_this.personId}, identifier: ${_this.identifier}, name: ${_this.name}, roleLabel: ${_this.roleLabel}, bedNumber: ${_this.bedNumber}, allocatedAt: ${_this.allocatedAt}, room: ${_this.room})';
}


}

/// @nodoc
abstract mixin class $HostelResidentCopyWith<$Res>  {
  factory $HostelResidentCopyWith(HostelResident value, $Res Function(HostelResident) _then) = _$HostelResidentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'resident_type') String residentType,@JsonKey(name: 'allocation_id') String allocationId,@JsonKey(name: 'person_id') String personId, String? identifier, String name,@JsonKey(name: 'role_label') String? roleLabel,@JsonKey(name: 'bed_number') String? bedNumber,@JsonKey(name: 'allocated_at') DateTime? allocatedAt,@JsonKey(name: 'hostel_rooms') WardenRoomRef? room
});


$WardenRoomRefCopyWith<$Res>? get room;

}
/// @nodoc
class _$HostelResidentCopyWithImpl<$Res>
    implements $HostelResidentCopyWith<$Res> {
  _$HostelResidentCopyWithImpl(this._self, this._then);

  final HostelResident _self;
  final $Res Function(HostelResident) _then;

/// Create a copy of HostelResident
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? residentType = null,Object? allocationId = null,Object? personId = null,Object? identifier = freezed,Object? name = null,Object? roleLabel = freezed,Object? bedNumber = freezed,Object? allocatedAt = freezed,Object? room = freezed,}) {
  return _then(HostelResident(
residentType: null == residentType ? _self.residentType : residentType // ignore: cast_nullable_to_non_nullable
as String,allocationId: null == allocationId ? _self.allocationId : allocationId // ignore: cast_nullable_to_non_nullable
as String,personId: null == personId ? _self.personId : personId // ignore: cast_nullable_to_non_nullable
as String,identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,roleLabel: freezed == roleLabel ? _self.roleLabel : roleLabel // ignore: cast_nullable_to_non_nullable
as String?,bedNumber: freezed == bedNumber ? _self.bedNumber : bedNumber // ignore: cast_nullable_to_non_nullable
as String?,allocatedAt: freezed == allocatedAt ? _self.allocatedAt : allocatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as WardenRoomRef?,
  ));
}
/// Create a copy of HostelResident
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenRoomRefCopyWith<$Res>? get room {
    if (_self.room == null) {
    return null;
  }

  return $WardenRoomRefCopyWith<$Res>(_self.room!, (value) {
    return _then(_self.copyWith(room: value));
  });
}
}


/// Adds pattern-matching-related methods to [HostelResident].
extension HostelResidentPatterns on HostelResident {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HostelResident value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HostelResident() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HostelResident value)  $default,){
final _that = this;
switch (_that) {
case _HostelResident():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HostelResident value)?  $default,){
final _that = this;
switch (_that) {
case _HostelResident() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'resident_type')  String residentType, @JsonKey(name: 'allocation_id')  String allocationId, @JsonKey(name: 'person_id')  String personId,  String? identifier,  String name, @JsonKey(name: 'role_label')  String? roleLabel, @JsonKey(name: 'bed_number')  String? bedNumber, @JsonKey(name: 'allocated_at')  DateTime? allocatedAt, @JsonKey(name: 'hostel_rooms')  WardenRoomRef? room)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HostelResident() when $default != null:
return $default(_that.residentType,_that.allocationId,_that.personId,_that.identifier,_that.name,_that.roleLabel,_that.bedNumber,_that.allocatedAt,_that.room);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'resident_type')  String residentType, @JsonKey(name: 'allocation_id')  String allocationId, @JsonKey(name: 'person_id')  String personId,  String? identifier,  String name, @JsonKey(name: 'role_label')  String? roleLabel, @JsonKey(name: 'bed_number')  String? bedNumber, @JsonKey(name: 'allocated_at')  DateTime? allocatedAt, @JsonKey(name: 'hostel_rooms')  WardenRoomRef? room)  $default,) {final _that = this;
switch (_that) {
case _HostelResident():
return $default(_that.residentType,_that.allocationId,_that.personId,_that.identifier,_that.name,_that.roleLabel,_that.bedNumber,_that.allocatedAt,_that.room);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'resident_type')  String residentType, @JsonKey(name: 'allocation_id')  String allocationId, @JsonKey(name: 'person_id')  String personId,  String? identifier,  String name, @JsonKey(name: 'role_label')  String? roleLabel, @JsonKey(name: 'bed_number')  String? bedNumber, @JsonKey(name: 'allocated_at')  DateTime? allocatedAt, @JsonKey(name: 'hostel_rooms')  WardenRoomRef? room)?  $default,) {final _that = this;
switch (_that) {
case _HostelResident() when $default != null:
return $default(_that.residentType,_that.allocationId,_that.personId,_that.identifier,_that.name,_that.roleLabel,_that.bedNumber,_that.allocatedAt,_that.room);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HostelResident implements HostelResident {
  const _HostelResident({@JsonKey(name: 'resident_type') required this.residentType, @JsonKey(name: 'allocation_id') required this.allocationId, @JsonKey(name: 'person_id') required this.personId, this.identifier, this.name = '', @JsonKey(name: 'role_label') this.roleLabel, @JsonKey(name: 'bed_number') this.bedNumber, @JsonKey(name: 'allocated_at') this.allocatedAt, @JsonKey(name: 'hostel_rooms') this.room});
  factory _HostelResident.fromJson(Map<String, dynamic> json) => _$HostelResidentFromJson(json);

@override@JsonKey(name: 'resident_type') final  String residentType;
@override@JsonKey(name: 'allocation_id') final  String allocationId;
@override@JsonKey(name: 'person_id') final  String personId;
@override final  String? identifier;
@override@JsonKey() final  String name;
@override@JsonKey(name: 'role_label') final  String? roleLabel;
@override@JsonKey(name: 'bed_number') final  String? bedNumber;
@override@JsonKey(name: 'allocated_at') final  DateTime? allocatedAt;
@override@JsonKey(name: 'hostel_rooms') final  WardenRoomRef? room;

/// Create a copy of HostelResident
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HostelResidentCopyWith<_HostelResident> get copyWith => __$HostelResidentCopyWithImpl<_HostelResident>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HostelResidentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HostelResident&&(identical(other.residentType, residentType) || other.residentType == residentType)&&(identical(other.allocationId, allocationId) || other.allocationId == allocationId)&&(identical(other.personId, personId) || other.personId == personId)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.name, name) || other.name == name)&&(identical(other.roleLabel, roleLabel) || other.roleLabel == roleLabel)&&(identical(other.bedNumber, bedNumber) || other.bedNumber == bedNumber)&&(identical(other.allocatedAt, allocatedAt) || other.allocatedAt == allocatedAt)&&(identical(other.room, room) || other.room == room));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,residentType,allocationId,personId,identifier,name,roleLabel,bedNumber,allocatedAt,room);
}

@override
String toString() {
    return 'HostelResident(residentType: $residentType, allocationId: $allocationId, personId: $personId, identifier: $identifier, name: $name, roleLabel: $roleLabel, bedNumber: $bedNumber, allocatedAt: $allocatedAt, room: $room)';
}


}

/// @nodoc
abstract mixin class _$HostelResidentCopyWith<$Res> implements $HostelResidentCopyWith<$Res> {
  factory _$HostelResidentCopyWith(_HostelResident value, $Res Function(_HostelResident) _then) = __$HostelResidentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'resident_type') String residentType,@JsonKey(name: 'allocation_id') String allocationId,@JsonKey(name: 'person_id') String personId, String? identifier, String name,@JsonKey(name: 'role_label') String? roleLabel,@JsonKey(name: 'bed_number') String? bedNumber,@JsonKey(name: 'allocated_at') DateTime? allocatedAt,@JsonKey(name: 'hostel_rooms') WardenRoomRef? room
});


@override $WardenRoomRefCopyWith<$Res>? get room;

}
/// @nodoc
class __$HostelResidentCopyWithImpl<$Res>
    implements _$HostelResidentCopyWith<$Res> {
  __$HostelResidentCopyWithImpl(this._self, this._then);

  final _HostelResident _self;
  final $Res Function(_HostelResident) _then;

/// Create a copy of HostelResident
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? residentType = null,Object? allocationId = null,Object? personId = null,Object? identifier = freezed,Object? name = null,Object? roleLabel = freezed,Object? bedNumber = freezed,Object? allocatedAt = freezed,Object? room = freezed,}) {
  return _then(_HostelResident(
residentType: null == residentType ? _self.residentType : residentType // ignore: cast_nullable_to_non_nullable
as String,allocationId: null == allocationId ? _self.allocationId : allocationId // ignore: cast_nullable_to_non_nullable
as String,personId: null == personId ? _self.personId : personId // ignore: cast_nullable_to_non_nullable
as String,identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,roleLabel: freezed == roleLabel ? _self.roleLabel : roleLabel // ignore: cast_nullable_to_non_nullable
as String?,bedNumber: freezed == bedNumber ? _self.bedNumber : bedNumber // ignore: cast_nullable_to_non_nullable
as String?,allocatedAt: freezed == allocatedAt ? _self.allocatedAt : allocatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as WardenRoomRef?,
  ));
}

/// Create a copy of HostelResident
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenRoomRefCopyWith<$Res>? get room {
    if (_self.room == null) {
    return null;
  }

  return $WardenRoomRefCopyWith<$Res>(_self.room!, (value) {
    return _then(_self.copyWith(room: value));
  });
}
}


/// @nodoc
mixin _$WardenParentContact {

@JsonKey(name: 'relation_type') String? get relationType;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName;@JsonKey(name: 'mobile_no') String? get mobileNo; String? get email; String? get occupation;
/// Create a copy of WardenParentContact
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WardenParentContactCopyWith<WardenParentContact> get copyWith => _$WardenParentContactCopyWithImpl<WardenParentContact>(this as WardenParentContact, _$identity);

  /// Serializes this WardenParentContact to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WardenParentContact;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WardenParentContact&&(identical(other.relationType, _this.relationType) || other.relationType == _this.relationType)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.mobileNo, _this.mobileNo) || other.mobileNo == _this.mobileNo)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.occupation, _this.occupation) || other.occupation == _this.occupation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WardenParentContact;
  return Object.hash(runtimeType,_this.relationType,_this.firstName,_this.lastName,_this.mobileNo,_this.email,_this.occupation);
}

@override
String toString() {
  final _this = this as WardenParentContact;
  return 'WardenParentContact(relationType: ${_this.relationType}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, mobileNo: ${_this.mobileNo}, email: ${_this.email}, occupation: ${_this.occupation})';
}


}

/// @nodoc
abstract mixin class $WardenParentContactCopyWith<$Res>  {
  factory $WardenParentContactCopyWith(WardenParentContact value, $Res Function(WardenParentContact) _then) = _$WardenParentContactCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'relation_type') String? relationType,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'mobile_no') String? mobileNo, String? email, String? occupation
});




}
/// @nodoc
class _$WardenParentContactCopyWithImpl<$Res>
    implements $WardenParentContactCopyWith<$Res> {
  _$WardenParentContactCopyWithImpl(this._self, this._then);

  final WardenParentContact _self;
  final $Res Function(WardenParentContact) _then;

/// Create a copy of WardenParentContact
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? relationType = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? mobileNo = freezed,Object? email = freezed,Object? occupation = freezed,}) {
  return _then(WardenParentContact(
relationType: freezed == relationType ? _self.relationType : relationType // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,occupation: freezed == occupation ? _self.occupation : occupation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WardenParentContact].
extension WardenParentContactPatterns on WardenParentContact {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WardenParentContact value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WardenParentContact() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WardenParentContact value)  $default,){
final _that = this;
switch (_that) {
case _WardenParentContact():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WardenParentContact value)?  $default,){
final _that = this;
switch (_that) {
case _WardenParentContact() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email,  String? occupation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WardenParentContact() when $default != null:
return $default(_that.relationType,_that.firstName,_that.lastName,_that.mobileNo,_that.email,_that.occupation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email,  String? occupation)  $default,) {final _that = this;
switch (_that) {
case _WardenParentContact():
return $default(_that.relationType,_that.firstName,_that.lastName,_that.mobileNo,_that.email,_that.occupation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email,  String? occupation)?  $default,) {final _that = this;
switch (_that) {
case _WardenParentContact() when $default != null:
return $default(_that.relationType,_that.firstName,_that.lastName,_that.mobileNo,_that.email,_that.occupation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WardenParentContact implements WardenParentContact {
  const _WardenParentContact({@JsonKey(name: 'relation_type') this.relationType, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, @JsonKey(name: 'mobile_no') this.mobileNo, this.email, this.occupation});
  factory _WardenParentContact.fromJson(Map<String, dynamic> json) => _$WardenParentContactFromJson(json);

@override@JsonKey(name: 'relation_type') final  String? relationType;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override@JsonKey(name: 'mobile_no') final  String? mobileNo;
@override final  String? email;
@override final  String? occupation;

/// Create a copy of WardenParentContact
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WardenParentContactCopyWith<_WardenParentContact> get copyWith => __$WardenParentContactCopyWithImpl<_WardenParentContact>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WardenParentContactToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WardenParentContact&&(identical(other.relationType, relationType) || other.relationType == relationType)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.email, email) || other.email == email)&&(identical(other.occupation, occupation) || other.occupation == occupation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,relationType,firstName,lastName,mobileNo,email,occupation);
}

@override
String toString() {
    return 'WardenParentContact(relationType: $relationType, firstName: $firstName, lastName: $lastName, mobileNo: $mobileNo, email: $email, occupation: $occupation)';
}


}

/// @nodoc
abstract mixin class _$WardenParentContactCopyWith<$Res> implements $WardenParentContactCopyWith<$Res> {
  factory _$WardenParentContactCopyWith(_WardenParentContact value, $Res Function(_WardenParentContact) _then) = __$WardenParentContactCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'relation_type') String? relationType,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'mobile_no') String? mobileNo, String? email, String? occupation
});




}
/// @nodoc
class __$WardenParentContactCopyWithImpl<$Res>
    implements _$WardenParentContactCopyWith<$Res> {
  __$WardenParentContactCopyWithImpl(this._self, this._then);

  final _WardenParentContact _self;
  final $Res Function(_WardenParentContact) _then;

/// Create a copy of WardenParentContact
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? relationType = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? mobileNo = freezed,Object? email = freezed,Object? occupation = freezed,}) {
  return _then(_WardenParentContact(
relationType: freezed == relationType ? _self.relationType : relationType // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,occupation: freezed == occupation ? _self.occupation : occupation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WardenAddress {

@JsonKey(name: 'address_type') String? get addressType;@JsonKey(name: 'address_line_1') String? get line1;@JsonKey(name: 'address_line_2') String? get line2; String? get city; String? get state; String? get country; String? get pincode;
/// Create a copy of WardenAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WardenAddressCopyWith<WardenAddress> get copyWith => _$WardenAddressCopyWithImpl<WardenAddress>(this as WardenAddress, _$identity);

  /// Serializes this WardenAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WardenAddress;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WardenAddress&&(identical(other.addressType, _this.addressType) || other.addressType == _this.addressType)&&(identical(other.line1, _this.line1) || other.line1 == _this.line1)&&(identical(other.line2, _this.line2) || other.line2 == _this.line2)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.state, _this.state) || other.state == _this.state)&&(identical(other.country, _this.country) || other.country == _this.country)&&(identical(other.pincode, _this.pincode) || other.pincode == _this.pincode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WardenAddress;
  return Object.hash(runtimeType,_this.addressType,_this.line1,_this.line2,_this.city,_this.state,_this.country,_this.pincode);
}

@override
String toString() {
  final _this = this as WardenAddress;
  return 'WardenAddress(addressType: ${_this.addressType}, line1: ${_this.line1}, line2: ${_this.line2}, city: ${_this.city}, state: ${_this.state}, country: ${_this.country}, pincode: ${_this.pincode})';
}


}

/// @nodoc
abstract mixin class $WardenAddressCopyWith<$Res>  {
  factory $WardenAddressCopyWith(WardenAddress value, $Res Function(WardenAddress) _then) = _$WardenAddressCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'address_type') String? addressType,@JsonKey(name: 'address_line_1') String? line1,@JsonKey(name: 'address_line_2') String? line2, String? city, String? state, String? country, String? pincode
});




}
/// @nodoc
class _$WardenAddressCopyWithImpl<$Res>
    implements $WardenAddressCopyWith<$Res> {
  _$WardenAddressCopyWithImpl(this._self, this._then);

  final WardenAddress _self;
  final $Res Function(WardenAddress) _then;

/// Create a copy of WardenAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addressType = freezed,Object? line1 = freezed,Object? line2 = freezed,Object? city = freezed,Object? state = freezed,Object? country = freezed,Object? pincode = freezed,}) {
  return _then(WardenAddress(
addressType: freezed == addressType ? _self.addressType : addressType // ignore: cast_nullable_to_non_nullable
as String?,line1: freezed == line1 ? _self.line1 : line1 // ignore: cast_nullable_to_non_nullable
as String?,line2: freezed == line2 ? _self.line2 : line2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,pincode: freezed == pincode ? _self.pincode : pincode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WardenAddress].
extension WardenAddressPatterns on WardenAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WardenAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WardenAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WardenAddress value)  $default,){
final _that = this;
switch (_that) {
case _WardenAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WardenAddress value)?  $default,){
final _that = this;
switch (_that) {
case _WardenAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'address_type')  String? addressType, @JsonKey(name: 'address_line_1')  String? line1, @JsonKey(name: 'address_line_2')  String? line2,  String? city,  String? state,  String? country,  String? pincode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WardenAddress() when $default != null:
return $default(_that.addressType,_that.line1,_that.line2,_that.city,_that.state,_that.country,_that.pincode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'address_type')  String? addressType, @JsonKey(name: 'address_line_1')  String? line1, @JsonKey(name: 'address_line_2')  String? line2,  String? city,  String? state,  String? country,  String? pincode)  $default,) {final _that = this;
switch (_that) {
case _WardenAddress():
return $default(_that.addressType,_that.line1,_that.line2,_that.city,_that.state,_that.country,_that.pincode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'address_type')  String? addressType, @JsonKey(name: 'address_line_1')  String? line1, @JsonKey(name: 'address_line_2')  String? line2,  String? city,  String? state,  String? country,  String? pincode)?  $default,) {final _that = this;
switch (_that) {
case _WardenAddress() when $default != null:
return $default(_that.addressType,_that.line1,_that.line2,_that.city,_that.state,_that.country,_that.pincode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WardenAddress implements WardenAddress {
  const _WardenAddress({@JsonKey(name: 'address_type') this.addressType, @JsonKey(name: 'address_line_1') this.line1, @JsonKey(name: 'address_line_2') this.line2, this.city, this.state, this.country, this.pincode});
  factory _WardenAddress.fromJson(Map<String, dynamic> json) => _$WardenAddressFromJson(json);

@override@JsonKey(name: 'address_type') final  String? addressType;
@override@JsonKey(name: 'address_line_1') final  String? line1;
@override@JsonKey(name: 'address_line_2') final  String? line2;
@override final  String? city;
@override final  String? state;
@override final  String? country;
@override final  String? pincode;

/// Create a copy of WardenAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WardenAddressCopyWith<_WardenAddress> get copyWith => __$WardenAddressCopyWithImpl<_WardenAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WardenAddressToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WardenAddress&&(identical(other.addressType, addressType) || other.addressType == addressType)&&(identical(other.line1, line1) || other.line1 == line1)&&(identical(other.line2, line2) || other.line2 == line2)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.pincode, pincode) || other.pincode == pincode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,addressType,line1,line2,city,state,country,pincode);
}

@override
String toString() {
    return 'WardenAddress(addressType: $addressType, line1: $line1, line2: $line2, city: $city, state: $state, country: $country, pincode: $pincode)';
}


}

/// @nodoc
abstract mixin class _$WardenAddressCopyWith<$Res> implements $WardenAddressCopyWith<$Res> {
  factory _$WardenAddressCopyWith(_WardenAddress value, $Res Function(_WardenAddress) _then) = __$WardenAddressCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'address_type') String? addressType,@JsonKey(name: 'address_line_1') String? line1,@JsonKey(name: 'address_line_2') String? line2, String? city, String? state, String? country, String? pincode
});




}
/// @nodoc
class __$WardenAddressCopyWithImpl<$Res>
    implements _$WardenAddressCopyWith<$Res> {
  __$WardenAddressCopyWithImpl(this._self, this._then);

  final _WardenAddress _self;
  final $Res Function(_WardenAddress) _then;

/// Create a copy of WardenAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addressType = freezed,Object? line1 = freezed,Object? line2 = freezed,Object? city = freezed,Object? state = freezed,Object? country = freezed,Object? pincode = freezed,}) {
  return _then(_WardenAddress(
addressType: freezed == addressType ? _self.addressType : addressType // ignore: cast_nullable_to_non_nullable
as String?,line1: freezed == line1 ? _self.line1 : line1 // ignore: cast_nullable_to_non_nullable
as String?,line2: freezed == line2 ? _self.line2 : line2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,pincode: freezed == pincode ? _self.pincode : pincode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WardenProfileAllocation {

@JsonKey(name: 'allocation_id') String get allocationId;@JsonKey(name: 'bed_number') String? get bedNumber;@JsonKey(name: 'allocated_at') DateTime? get allocatedAt;@JsonKey(name: 'hostel_rooms') WardenRoomRef? get room;
/// Create a copy of WardenProfileAllocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WardenProfileAllocationCopyWith<WardenProfileAllocation> get copyWith => _$WardenProfileAllocationCopyWithImpl<WardenProfileAllocation>(this as WardenProfileAllocation, _$identity);

  /// Serializes this WardenProfileAllocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WardenProfileAllocation;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WardenProfileAllocation&&(identical(other.allocationId, _this.allocationId) || other.allocationId == _this.allocationId)&&(identical(other.bedNumber, _this.bedNumber) || other.bedNumber == _this.bedNumber)&&(identical(other.allocatedAt, _this.allocatedAt) || other.allocatedAt == _this.allocatedAt)&&(identical(other.room, _this.room) || other.room == _this.room));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WardenProfileAllocation;
  return Object.hash(runtimeType,_this.allocationId,_this.bedNumber,_this.allocatedAt,_this.room);
}

@override
String toString() {
  final _this = this as WardenProfileAllocation;
  return 'WardenProfileAllocation(allocationId: ${_this.allocationId}, bedNumber: ${_this.bedNumber}, allocatedAt: ${_this.allocatedAt}, room: ${_this.room})';
}


}

/// @nodoc
abstract mixin class $WardenProfileAllocationCopyWith<$Res>  {
  factory $WardenProfileAllocationCopyWith(WardenProfileAllocation value, $Res Function(WardenProfileAllocation) _then) = _$WardenProfileAllocationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'allocation_id') String allocationId,@JsonKey(name: 'bed_number') String? bedNumber,@JsonKey(name: 'allocated_at') DateTime? allocatedAt,@JsonKey(name: 'hostel_rooms') WardenRoomRef? room
});


$WardenRoomRefCopyWith<$Res>? get room;

}
/// @nodoc
class _$WardenProfileAllocationCopyWithImpl<$Res>
    implements $WardenProfileAllocationCopyWith<$Res> {
  _$WardenProfileAllocationCopyWithImpl(this._self, this._then);

  final WardenProfileAllocation _self;
  final $Res Function(WardenProfileAllocation) _then;

/// Create a copy of WardenProfileAllocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allocationId = null,Object? bedNumber = freezed,Object? allocatedAt = freezed,Object? room = freezed,}) {
  return _then(WardenProfileAllocation(
allocationId: null == allocationId ? _self.allocationId : allocationId // ignore: cast_nullable_to_non_nullable
as String,bedNumber: freezed == bedNumber ? _self.bedNumber : bedNumber // ignore: cast_nullable_to_non_nullable
as String?,allocatedAt: freezed == allocatedAt ? _self.allocatedAt : allocatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as WardenRoomRef?,
  ));
}
/// Create a copy of WardenProfileAllocation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenRoomRefCopyWith<$Res>? get room {
    if (_self.room == null) {
    return null;
  }

  return $WardenRoomRefCopyWith<$Res>(_self.room!, (value) {
    return _then(_self.copyWith(room: value));
  });
}
}


/// Adds pattern-matching-related methods to [WardenProfileAllocation].
extension WardenProfileAllocationPatterns on WardenProfileAllocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WardenProfileAllocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WardenProfileAllocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WardenProfileAllocation value)  $default,){
final _that = this;
switch (_that) {
case _WardenProfileAllocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WardenProfileAllocation value)?  $default,){
final _that = this;
switch (_that) {
case _WardenProfileAllocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'allocation_id')  String allocationId, @JsonKey(name: 'bed_number')  String? bedNumber, @JsonKey(name: 'allocated_at')  DateTime? allocatedAt, @JsonKey(name: 'hostel_rooms')  WardenRoomRef? room)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WardenProfileAllocation() when $default != null:
return $default(_that.allocationId,_that.bedNumber,_that.allocatedAt,_that.room);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'allocation_id')  String allocationId, @JsonKey(name: 'bed_number')  String? bedNumber, @JsonKey(name: 'allocated_at')  DateTime? allocatedAt, @JsonKey(name: 'hostel_rooms')  WardenRoomRef? room)  $default,) {final _that = this;
switch (_that) {
case _WardenProfileAllocation():
return $default(_that.allocationId,_that.bedNumber,_that.allocatedAt,_that.room);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'allocation_id')  String allocationId, @JsonKey(name: 'bed_number')  String? bedNumber, @JsonKey(name: 'allocated_at')  DateTime? allocatedAt, @JsonKey(name: 'hostel_rooms')  WardenRoomRef? room)?  $default,) {final _that = this;
switch (_that) {
case _WardenProfileAllocation() when $default != null:
return $default(_that.allocationId,_that.bedNumber,_that.allocatedAt,_that.room);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WardenProfileAllocation implements WardenProfileAllocation {
  const _WardenProfileAllocation({@JsonKey(name: 'allocation_id') required this.allocationId, @JsonKey(name: 'bed_number') this.bedNumber, @JsonKey(name: 'allocated_at') this.allocatedAt, @JsonKey(name: 'hostel_rooms') this.room});
  factory _WardenProfileAllocation.fromJson(Map<String, dynamic> json) => _$WardenProfileAllocationFromJson(json);

@override@JsonKey(name: 'allocation_id') final  String allocationId;
@override@JsonKey(name: 'bed_number') final  String? bedNumber;
@override@JsonKey(name: 'allocated_at') final  DateTime? allocatedAt;
@override@JsonKey(name: 'hostel_rooms') final  WardenRoomRef? room;

/// Create a copy of WardenProfileAllocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WardenProfileAllocationCopyWith<_WardenProfileAllocation> get copyWith => __$WardenProfileAllocationCopyWithImpl<_WardenProfileAllocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WardenProfileAllocationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WardenProfileAllocation&&(identical(other.allocationId, allocationId) || other.allocationId == allocationId)&&(identical(other.bedNumber, bedNumber) || other.bedNumber == bedNumber)&&(identical(other.allocatedAt, allocatedAt) || other.allocatedAt == allocatedAt)&&(identical(other.room, room) || other.room == room));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,allocationId,bedNumber,allocatedAt,room);
}

@override
String toString() {
    return 'WardenProfileAllocation(allocationId: $allocationId, bedNumber: $bedNumber, allocatedAt: $allocatedAt, room: $room)';
}


}

/// @nodoc
abstract mixin class _$WardenProfileAllocationCopyWith<$Res> implements $WardenProfileAllocationCopyWith<$Res> {
  factory _$WardenProfileAllocationCopyWith(_WardenProfileAllocation value, $Res Function(_WardenProfileAllocation) _then) = __$WardenProfileAllocationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'allocation_id') String allocationId,@JsonKey(name: 'bed_number') String? bedNumber,@JsonKey(name: 'allocated_at') DateTime? allocatedAt,@JsonKey(name: 'hostel_rooms') WardenRoomRef? room
});


@override $WardenRoomRefCopyWith<$Res>? get room;

}
/// @nodoc
class __$WardenProfileAllocationCopyWithImpl<$Res>
    implements _$WardenProfileAllocationCopyWith<$Res> {
  __$WardenProfileAllocationCopyWithImpl(this._self, this._then);

  final _WardenProfileAllocation _self;
  final $Res Function(_WardenProfileAllocation) _then;

/// Create a copy of WardenProfileAllocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allocationId = null,Object? bedNumber = freezed,Object? allocatedAt = freezed,Object? room = freezed,}) {
  return _then(_WardenProfileAllocation(
allocationId: null == allocationId ? _self.allocationId : allocationId // ignore: cast_nullable_to_non_nullable
as String,bedNumber: freezed == bedNumber ? _self.bedNumber : bedNumber // ignore: cast_nullable_to_non_nullable
as String?,allocatedAt: freezed == allocatedAt ? _self.allocatedAt : allocatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as WardenRoomRef?,
  ));
}

/// Create a copy of WardenProfileAllocation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenRoomRefCopyWith<$Res>? get room {
    if (_self.room == null) {
    return null;
  }

  return $WardenRoomRefCopyWith<$Res>(_self.room!, (value) {
    return _then(_self.copyWith(room: value));
  });
}
}


/// @nodoc
mixin _$StudentResidentProfile {

@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'admission_no') String? get admissionNo;@JsonKey(name: 'roll_no') String? get rollNo;@JsonKey(name: 'admission_date') DateTime? get admissionDate;@JsonKey(name: 'current_class', readValue: _readClassName) String? get className;@JsonKey(name: 'current_section', readValue: _readSectionName) String? get sectionName; WardenApplicantRef? get applicants; List<WardenParentContact> get parents;@JsonKey(name: 'student_addresses') List<WardenAddress> get addresses; WardenProfileAllocation? get allocation;
/// Create a copy of StudentResidentProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentResidentProfileCopyWith<StudentResidentProfile> get copyWith => _$StudentResidentProfileCopyWithImpl<StudentResidentProfile>(this as StudentResidentProfile, _$identity);

  /// Serializes this StudentResidentProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StudentResidentProfile;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentResidentProfile&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.rollNo, _this.rollNo) || other.rollNo == _this.rollNo)&&(identical(other.admissionDate, _this.admissionDate) || other.admissionDate == _this.admissionDate)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.sectionName, _this.sectionName) || other.sectionName == _this.sectionName)&&(identical(other.applicants, _this.applicants) || other.applicants == _this.applicants)&&const DeepCollectionEquality().equals(other.parents, _this.parents)&&const DeepCollectionEquality().equals(other.addresses, _this.addresses)&&(identical(other.allocation, _this.allocation) || other.allocation == _this.allocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StudentResidentProfile;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.rollNo,_this.admissionDate,_this.className,_this.sectionName,_this.applicants,const DeepCollectionEquality().hash(_this.parents),const DeepCollectionEquality().hash(_this.addresses),_this.allocation);
}

@override
String toString() {
  final _this = this as StudentResidentProfile;
  return 'StudentResidentProfile(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, rollNo: ${_this.rollNo}, admissionDate: ${_this.admissionDate}, className: ${_this.className}, sectionName: ${_this.sectionName}, applicants: ${_this.applicants}, parents: ${_this.parents}, addresses: ${_this.addresses}, allocation: ${_this.allocation})';
}


}

/// @nodoc
abstract mixin class $StudentResidentProfileCopyWith<$Res>  {
  factory $StudentResidentProfileCopyWith(StudentResidentProfile value, $Res Function(StudentResidentProfile) _then) = _$StudentResidentProfileCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'roll_no') String? rollNo,@JsonKey(name: 'admission_date') DateTime? admissionDate,@JsonKey(name: 'current_class', readValue: _readClassName) String? className,@JsonKey(name: 'current_section', readValue: _readSectionName) String? sectionName, WardenApplicantRef? applicants, List<WardenParentContact> parents,@JsonKey(name: 'student_addresses') List<WardenAddress> addresses, WardenProfileAllocation? allocation
});


$WardenApplicantRefCopyWith<$Res>? get applicants;$WardenProfileAllocationCopyWith<$Res>? get allocation;

}
/// @nodoc
class _$StudentResidentProfileCopyWithImpl<$Res>
    implements $StudentResidentProfileCopyWith<$Res> {
  _$StudentResidentProfileCopyWithImpl(this._self, this._then);

  final StudentResidentProfile _self;
  final $Res Function(StudentResidentProfile) _then;

/// Create a copy of StudentResidentProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? rollNo = freezed,Object? admissionDate = freezed,Object? className = freezed,Object? sectionName = freezed,Object? applicants = freezed,Object? parents = null,Object? addresses = null,Object? allocation = freezed,}) {
  return _then(StudentResidentProfile(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,admissionDate: freezed == admissionDate ? _self.admissionDate : admissionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,applicants: freezed == applicants ? _self.applicants : applicants // ignore: cast_nullable_to_non_nullable
as WardenApplicantRef?,parents: null == parents ? _self.parents : parents // ignore: cast_nullable_to_non_nullable
as List<WardenParentContact>,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<WardenAddress>,allocation: freezed == allocation ? _self.allocation : allocation // ignore: cast_nullable_to_non_nullable
as WardenProfileAllocation?,
  ));
}
/// Create a copy of StudentResidentProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenApplicantRefCopyWith<$Res>? get applicants {
    if (_self.applicants == null) {
    return null;
  }

  return $WardenApplicantRefCopyWith<$Res>(_self.applicants!, (value) {
    return _then(_self.copyWith(applicants: value));
  });
}/// Create a copy of StudentResidentProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenProfileAllocationCopyWith<$Res>? get allocation {
    if (_self.allocation == null) {
    return null;
  }

  return $WardenProfileAllocationCopyWith<$Res>(_self.allocation!, (value) {
    return _then(_self.copyWith(allocation: value));
  });
}
}


/// Adds pattern-matching-related methods to [StudentResidentProfile].
extension StudentResidentProfilePatterns on StudentResidentProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentResidentProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentResidentProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentResidentProfile value)  $default,){
final _that = this;
switch (_that) {
case _StudentResidentProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentResidentProfile value)?  $default,){
final _that = this;
switch (_that) {
case _StudentResidentProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')  String? rollNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate, @JsonKey(name: 'current_class', readValue: _readClassName)  String? className, @JsonKey(name: 'current_section', readValue: _readSectionName)  String? sectionName,  WardenApplicantRef? applicants,  List<WardenParentContact> parents, @JsonKey(name: 'student_addresses')  List<WardenAddress> addresses,  WardenProfileAllocation? allocation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentResidentProfile() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.admissionDate,_that.className,_that.sectionName,_that.applicants,_that.parents,_that.addresses,_that.allocation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')  String? rollNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate, @JsonKey(name: 'current_class', readValue: _readClassName)  String? className, @JsonKey(name: 'current_section', readValue: _readSectionName)  String? sectionName,  WardenApplicantRef? applicants,  List<WardenParentContact> parents, @JsonKey(name: 'student_addresses')  List<WardenAddress> addresses,  WardenProfileAllocation? allocation)  $default,) {final _that = this;
switch (_that) {
case _StudentResidentProfile():
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.admissionDate,_that.className,_that.sectionName,_that.applicants,_that.parents,_that.addresses,_that.allocation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')  String? rollNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate, @JsonKey(name: 'current_class', readValue: _readClassName)  String? className, @JsonKey(name: 'current_section', readValue: _readSectionName)  String? sectionName,  WardenApplicantRef? applicants,  List<WardenParentContact> parents, @JsonKey(name: 'student_addresses')  List<WardenAddress> addresses,  WardenProfileAllocation? allocation)?  $default,) {final _that = this;
switch (_that) {
case _StudentResidentProfile() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.admissionDate,_that.className,_that.sectionName,_that.applicants,_that.parents,_that.addresses,_that.allocation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentResidentProfile implements StudentResidentProfile {
  const _StudentResidentProfile({@JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'admission_no') this.admissionNo, @JsonKey(name: 'roll_no') this.rollNo, @JsonKey(name: 'admission_date') this.admissionDate, @JsonKey(name: 'current_class', readValue: _readClassName) this.className, @JsonKey(name: 'current_section', readValue: _readSectionName) this.sectionName, this.applicants,  List<WardenParentContact> parents = const [], @JsonKey(name: 'student_addresses')  List<WardenAddress> addresses = const [], this.allocation}): _parents = parents,_addresses = addresses;
  factory _StudentResidentProfile.fromJson(Map<String, dynamic> json) => _$StudentResidentProfileFromJson(json);

@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override@JsonKey(name: 'roll_no') final  String? rollNo;
@override@JsonKey(name: 'admission_date') final  DateTime? admissionDate;
@override@JsonKey(name: 'current_class', readValue: _readClassName) final  String? className;
@override@JsonKey(name: 'current_section', readValue: _readSectionName) final  String? sectionName;
@override final  WardenApplicantRef? applicants;
 final  List<WardenParentContact> _parents;
@override@JsonKey() List<WardenParentContact> get parents {
  if (_parents is EqualUnmodifiableListView) return _parents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parents);
}

 final  List<WardenAddress> _addresses;
@override@JsonKey(name: 'student_addresses') List<WardenAddress> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}

@override final  WardenProfileAllocation? allocation;

/// Create a copy of StudentResidentProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentResidentProfileCopyWith<_StudentResidentProfile> get copyWith => __$StudentResidentProfileCopyWithImpl<_StudentResidentProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentResidentProfileToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentResidentProfile&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.rollNo, rollNo) || other.rollNo == rollNo)&&(identical(other.admissionDate, admissionDate) || other.admissionDate == admissionDate)&&(identical(other.className, className) || other.className == className)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName)&&(identical(other.applicants, applicants) || other.applicants == applicants)&&const DeepCollectionEquality().equals(other.parents, _parents)&&const DeepCollectionEquality().equals(other.addresses, _addresses)&&(identical(other.allocation, allocation) || other.allocation == allocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,rollNo,admissionDate,className,sectionName,applicants,const DeepCollectionEquality().hash(_parents),const DeepCollectionEquality().hash(_addresses),allocation);
}

@override
String toString() {
    return 'StudentResidentProfile(studentId: $studentId, admissionNo: $admissionNo, rollNo: $rollNo, admissionDate: $admissionDate, className: $className, sectionName: $sectionName, applicants: $applicants, parents: $parents, addresses: $addresses, allocation: $allocation)';
}


}

/// @nodoc
abstract mixin class _$StudentResidentProfileCopyWith<$Res> implements $StudentResidentProfileCopyWith<$Res> {
  factory _$StudentResidentProfileCopyWith(_StudentResidentProfile value, $Res Function(_StudentResidentProfile) _then) = __$StudentResidentProfileCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'roll_no') String? rollNo,@JsonKey(name: 'admission_date') DateTime? admissionDate,@JsonKey(name: 'current_class', readValue: _readClassName) String? className,@JsonKey(name: 'current_section', readValue: _readSectionName) String? sectionName, WardenApplicantRef? applicants, List<WardenParentContact> parents,@JsonKey(name: 'student_addresses') List<WardenAddress> addresses, WardenProfileAllocation? allocation
});


@override $WardenApplicantRefCopyWith<$Res>? get applicants;@override $WardenProfileAllocationCopyWith<$Res>? get allocation;

}
/// @nodoc
class __$StudentResidentProfileCopyWithImpl<$Res>
    implements _$StudentResidentProfileCopyWith<$Res> {
  __$StudentResidentProfileCopyWithImpl(this._self, this._then);

  final _StudentResidentProfile _self;
  final $Res Function(_StudentResidentProfile) _then;

/// Create a copy of StudentResidentProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? rollNo = freezed,Object? admissionDate = freezed,Object? className = freezed,Object? sectionName = freezed,Object? applicants = freezed,Object? parents = null,Object? addresses = null,Object? allocation = freezed,}) {
  return _then(_StudentResidentProfile(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,admissionDate: freezed == admissionDate ? _self.admissionDate : admissionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,applicants: freezed == applicants ? _self.applicants : applicants // ignore: cast_nullable_to_non_nullable
as WardenApplicantRef?,parents: null == parents ? _self._parents : parents // ignore: cast_nullable_to_non_nullable
as List<WardenParentContact>,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<WardenAddress>,allocation: freezed == allocation ? _self.allocation : allocation // ignore: cast_nullable_to_non_nullable
as WardenProfileAllocation?,
  ));
}

/// Create a copy of StudentResidentProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenApplicantRefCopyWith<$Res>? get applicants {
    if (_self.applicants == null) {
    return null;
  }

  return $WardenApplicantRefCopyWith<$Res>(_self.applicants!, (value) {
    return _then(_self.copyWith(applicants: value));
  });
}/// Create a copy of StudentResidentProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenProfileAllocationCopyWith<$Res>? get allocation {
    if (_self.allocation == null) {
    return null;
  }

  return $WardenProfileAllocationCopyWith<$Res>(_self.allocation!, (value) {
    return _then(_self.copyWith(allocation: value));
  });
}
}


/// @nodoc
mixin _$StaffResidentProfile {

@JsonKey(name: 'staff_id') String get staffId;@JsonKey(name: 'employee_code') String? get employeeCode;@JsonKey(name: 'full_name') String get fullName; String? get designation; String? get department;@JsonKey(name: 'date_of_birth') DateTime? get dateOfBirth; String? get gender;@JsonKey(name: 'contact_number') String? get contactNumber; String? get address; String? get qualification;@JsonKey(name: 'profile_photo_url') String? get profilePhotoUrl;@JsonKey(name: 'users', readValue: _readUserEmail) String? get email; WardenProfileAllocation? get allocation;
/// Create a copy of StaffResidentProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffResidentProfileCopyWith<StaffResidentProfile> get copyWith => _$StaffResidentProfileCopyWithImpl<StaffResidentProfile>(this as StaffResidentProfile, _$identity);

  /// Serializes this StaffResidentProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffResidentProfile;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffResidentProfile&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.designation, _this.designation) || other.designation == _this.designation)&&(identical(other.department, _this.department) || other.department == _this.department)&&(identical(other.dateOfBirth, _this.dateOfBirth) || other.dateOfBirth == _this.dateOfBirth)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.contactNumber, _this.contactNumber) || other.contactNumber == _this.contactNumber)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.qualification, _this.qualification) || other.qualification == _this.qualification)&&(identical(other.profilePhotoUrl, _this.profilePhotoUrl) || other.profilePhotoUrl == _this.profilePhotoUrl)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.allocation, _this.allocation) || other.allocation == _this.allocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffResidentProfile;
  return Object.hash(runtimeType,_this.staffId,_this.employeeCode,_this.fullName,_this.designation,_this.department,_this.dateOfBirth,_this.gender,_this.contactNumber,_this.address,_this.qualification,_this.profilePhotoUrl,_this.email,_this.allocation);
}

@override
String toString() {
  final _this = this as StaffResidentProfile;
  return 'StaffResidentProfile(staffId: ${_this.staffId}, employeeCode: ${_this.employeeCode}, fullName: ${_this.fullName}, designation: ${_this.designation}, department: ${_this.department}, dateOfBirth: ${_this.dateOfBirth}, gender: ${_this.gender}, contactNumber: ${_this.contactNumber}, address: ${_this.address}, qualification: ${_this.qualification}, profilePhotoUrl: ${_this.profilePhotoUrl}, email: ${_this.email}, allocation: ${_this.allocation})';
}


}

/// @nodoc
abstract mixin class $StaffResidentProfileCopyWith<$Res>  {
  factory $StaffResidentProfileCopyWith(StaffResidentProfile value, $Res Function(StaffResidentProfile) _then) = _$StaffResidentProfileCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'full_name') String fullName, String? designation, String? department,@JsonKey(name: 'date_of_birth') DateTime? dateOfBirth, String? gender,@JsonKey(name: 'contact_number') String? contactNumber, String? address, String? qualification,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,@JsonKey(name: 'users', readValue: _readUserEmail) String? email, WardenProfileAllocation? allocation
});


$WardenProfileAllocationCopyWith<$Res>? get allocation;

}
/// @nodoc
class _$StaffResidentProfileCopyWithImpl<$Res>
    implements $StaffResidentProfileCopyWith<$Res> {
  _$StaffResidentProfileCopyWithImpl(this._self, this._then);

  final StaffResidentProfile _self;
  final $Res Function(StaffResidentProfile) _then;

/// Create a copy of StaffResidentProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = null,Object? employeeCode = freezed,Object? fullName = null,Object? designation = freezed,Object? department = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? contactNumber = freezed,Object? address = freezed,Object? qualification = freezed,Object? profilePhotoUrl = freezed,Object? email = freezed,Object? allocation = freezed,}) {
  return _then(StaffResidentProfile(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,qualification: freezed == qualification ? _self.qualification : qualification // ignore: cast_nullable_to_non_nullable
as String?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,allocation: freezed == allocation ? _self.allocation : allocation // ignore: cast_nullable_to_non_nullable
as WardenProfileAllocation?,
  ));
}
/// Create a copy of StaffResidentProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenProfileAllocationCopyWith<$Res>? get allocation {
    if (_self.allocation == null) {
    return null;
  }

  return $WardenProfileAllocationCopyWith<$Res>(_self.allocation!, (value) {
    return _then(_self.copyWith(allocation: value));
  });
}
}


/// Adds pattern-matching-related methods to [StaffResidentProfile].
extension StaffResidentProfilePatterns on StaffResidentProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffResidentProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffResidentProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffResidentProfile value)  $default,){
final _that = this;
switch (_that) {
case _StaffResidentProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffResidentProfile value)?  $default,){
final _that = this;
switch (_that) {
case _StaffResidentProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String fullName,  String? designation,  String? department, @JsonKey(name: 'date_of_birth')  DateTime? dateOfBirth,  String? gender, @JsonKey(name: 'contact_number')  String? contactNumber,  String? address,  String? qualification, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl, @JsonKey(name: 'users', readValue: _readUserEmail)  String? email,  WardenProfileAllocation? allocation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffResidentProfile() when $default != null:
return $default(_that.staffId,_that.employeeCode,_that.fullName,_that.designation,_that.department,_that.dateOfBirth,_that.gender,_that.contactNumber,_that.address,_that.qualification,_that.profilePhotoUrl,_that.email,_that.allocation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String fullName,  String? designation,  String? department, @JsonKey(name: 'date_of_birth')  DateTime? dateOfBirth,  String? gender, @JsonKey(name: 'contact_number')  String? contactNumber,  String? address,  String? qualification, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl, @JsonKey(name: 'users', readValue: _readUserEmail)  String? email,  WardenProfileAllocation? allocation)  $default,) {final _that = this;
switch (_that) {
case _StaffResidentProfile():
return $default(_that.staffId,_that.employeeCode,_that.fullName,_that.designation,_that.department,_that.dateOfBirth,_that.gender,_that.contactNumber,_that.address,_that.qualification,_that.profilePhotoUrl,_that.email,_that.allocation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String fullName,  String? designation,  String? department, @JsonKey(name: 'date_of_birth')  DateTime? dateOfBirth,  String? gender, @JsonKey(name: 'contact_number')  String? contactNumber,  String? address,  String? qualification, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl, @JsonKey(name: 'users', readValue: _readUserEmail)  String? email,  WardenProfileAllocation? allocation)?  $default,) {final _that = this;
switch (_that) {
case _StaffResidentProfile() when $default != null:
return $default(_that.staffId,_that.employeeCode,_that.fullName,_that.designation,_that.department,_that.dateOfBirth,_that.gender,_that.contactNumber,_that.address,_that.qualification,_that.profilePhotoUrl,_that.email,_that.allocation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffResidentProfile implements StaffResidentProfile {
  const _StaffResidentProfile({@JsonKey(name: 'staff_id') required this.staffId, @JsonKey(name: 'employee_code') this.employeeCode, @JsonKey(name: 'full_name') this.fullName = '', this.designation, this.department, @JsonKey(name: 'date_of_birth') this.dateOfBirth, this.gender, @JsonKey(name: 'contact_number') this.contactNumber, this.address, this.qualification, @JsonKey(name: 'profile_photo_url') this.profilePhotoUrl, @JsonKey(name: 'users', readValue: _readUserEmail) this.email, this.allocation});
  factory _StaffResidentProfile.fromJson(Map<String, dynamic> json) => _$StaffResidentProfileFromJson(json);

@override@JsonKey(name: 'staff_id') final  String staffId;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override@JsonKey(name: 'full_name') final  String fullName;
@override final  String? designation;
@override final  String? department;
@override@JsonKey(name: 'date_of_birth') final  DateTime? dateOfBirth;
@override final  String? gender;
@override@JsonKey(name: 'contact_number') final  String? contactNumber;
@override final  String? address;
@override final  String? qualification;
@override@JsonKey(name: 'profile_photo_url') final  String? profilePhotoUrl;
@override@JsonKey(name: 'users', readValue: _readUserEmail) final  String? email;
@override final  WardenProfileAllocation? allocation;

/// Create a copy of StaffResidentProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffResidentProfileCopyWith<_StaffResidentProfile> get copyWith => __$StaffResidentProfileCopyWithImpl<_StaffResidentProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffResidentProfileToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffResidentProfile&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.department, department) || other.department == department)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.contactNumber, contactNumber) || other.contactNumber == contactNumber)&&(identical(other.address, address) || other.address == address)&&(identical(other.qualification, qualification) || other.qualification == qualification)&&(identical(other.profilePhotoUrl, profilePhotoUrl) || other.profilePhotoUrl == profilePhotoUrl)&&(identical(other.email, email) || other.email == email)&&(identical(other.allocation, allocation) || other.allocation == allocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,employeeCode,fullName,designation,department,dateOfBirth,gender,contactNumber,address,qualification,profilePhotoUrl,email,allocation);
}

@override
String toString() {
    return 'StaffResidentProfile(staffId: $staffId, employeeCode: $employeeCode, fullName: $fullName, designation: $designation, department: $department, dateOfBirth: $dateOfBirth, gender: $gender, contactNumber: $contactNumber, address: $address, qualification: $qualification, profilePhotoUrl: $profilePhotoUrl, email: $email, allocation: $allocation)';
}


}

/// @nodoc
abstract mixin class _$StaffResidentProfileCopyWith<$Res> implements $StaffResidentProfileCopyWith<$Res> {
  factory _$StaffResidentProfileCopyWith(_StaffResidentProfile value, $Res Function(_StaffResidentProfile) _then) = __$StaffResidentProfileCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'full_name') String fullName, String? designation, String? department,@JsonKey(name: 'date_of_birth') DateTime? dateOfBirth, String? gender,@JsonKey(name: 'contact_number') String? contactNumber, String? address, String? qualification,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,@JsonKey(name: 'users', readValue: _readUserEmail) String? email, WardenProfileAllocation? allocation
});


@override $WardenProfileAllocationCopyWith<$Res>? get allocation;

}
/// @nodoc
class __$StaffResidentProfileCopyWithImpl<$Res>
    implements _$StaffResidentProfileCopyWith<$Res> {
  __$StaffResidentProfileCopyWithImpl(this._self, this._then);

  final _StaffResidentProfile _self;
  final $Res Function(_StaffResidentProfile) _then;

/// Create a copy of StaffResidentProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = null,Object? employeeCode = freezed,Object? fullName = null,Object? designation = freezed,Object? department = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? contactNumber = freezed,Object? address = freezed,Object? qualification = freezed,Object? profilePhotoUrl = freezed,Object? email = freezed,Object? allocation = freezed,}) {
  return _then(_StaffResidentProfile(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,qualification: freezed == qualification ? _self.qualification : qualification // ignore: cast_nullable_to_non_nullable
as String?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,allocation: freezed == allocation ? _self.allocation : allocation // ignore: cast_nullable_to_non_nullable
as WardenProfileAllocation?,
  ));
}

/// Create a copy of StaffResidentProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WardenProfileAllocationCopyWith<$Res>? get allocation {
    if (_self.allocation == null) {
    return null;
  }

  return $WardenProfileAllocationCopyWith<$Res>(_self.allocation!, (value) {
    return _then(_self.copyWith(allocation: value));
  });
}
}


/// @nodoc
mixin _$MessMenuEntry {

@JsonKey(name: 'menu_id') String get menuId;@JsonKey(name: 'day_of_week') String get dayOfWeek;@JsonKey(name: 'meal_slot') String get mealSlot;@JsonKey(name: 'menu_items') String get menuItems;
/// Create a copy of MessMenuEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessMenuEntryCopyWith<MessMenuEntry> get copyWith => _$MessMenuEntryCopyWithImpl<MessMenuEntry>(this as MessMenuEntry, _$identity);

  /// Serializes this MessMenuEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MessMenuEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessMenuEntry&&(identical(other.menuId, _this.menuId) || other.menuId == _this.menuId)&&(identical(other.dayOfWeek, _this.dayOfWeek) || other.dayOfWeek == _this.dayOfWeek)&&(identical(other.mealSlot, _this.mealSlot) || other.mealSlot == _this.mealSlot)&&(identical(other.menuItems, _this.menuItems) || other.menuItems == _this.menuItems));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MessMenuEntry;
  return Object.hash(runtimeType,_this.menuId,_this.dayOfWeek,_this.mealSlot,_this.menuItems);
}

@override
String toString() {
  final _this = this as MessMenuEntry;
  return 'MessMenuEntry(menuId: ${_this.menuId}, dayOfWeek: ${_this.dayOfWeek}, mealSlot: ${_this.mealSlot}, menuItems: ${_this.menuItems})';
}


}

/// @nodoc
abstract mixin class $MessMenuEntryCopyWith<$Res>  {
  factory $MessMenuEntryCopyWith(MessMenuEntry value, $Res Function(MessMenuEntry) _then) = _$MessMenuEntryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'menu_id') String menuId,@JsonKey(name: 'day_of_week') String dayOfWeek,@JsonKey(name: 'meal_slot') String mealSlot,@JsonKey(name: 'menu_items') String menuItems
});




}
/// @nodoc
class _$MessMenuEntryCopyWithImpl<$Res>
    implements $MessMenuEntryCopyWith<$Res> {
  _$MessMenuEntryCopyWithImpl(this._self, this._then);

  final MessMenuEntry _self;
  final $Res Function(MessMenuEntry) _then;

/// Create a copy of MessMenuEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? menuId = null,Object? dayOfWeek = null,Object? mealSlot = null,Object? menuItems = null,}) {
  return _then(MessMenuEntry(
menuId: null == menuId ? _self.menuId : menuId // ignore: cast_nullable_to_non_nullable
as String,dayOfWeek: null == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as String,mealSlot: null == mealSlot ? _self.mealSlot : mealSlot // ignore: cast_nullable_to_non_nullable
as String,menuItems: null == menuItems ? _self.menuItems : menuItems // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MessMenuEntry].
extension MessMenuEntryPatterns on MessMenuEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessMenuEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessMenuEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessMenuEntry value)  $default,){
final _that = this;
switch (_that) {
case _MessMenuEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessMenuEntry value)?  $default,){
final _that = this;
switch (_that) {
case _MessMenuEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'menu_id')  String menuId, @JsonKey(name: 'day_of_week')  String dayOfWeek, @JsonKey(name: 'meal_slot')  String mealSlot, @JsonKey(name: 'menu_items')  String menuItems)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessMenuEntry() when $default != null:
return $default(_that.menuId,_that.dayOfWeek,_that.mealSlot,_that.menuItems);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'menu_id')  String menuId, @JsonKey(name: 'day_of_week')  String dayOfWeek, @JsonKey(name: 'meal_slot')  String mealSlot, @JsonKey(name: 'menu_items')  String menuItems)  $default,) {final _that = this;
switch (_that) {
case _MessMenuEntry():
return $default(_that.menuId,_that.dayOfWeek,_that.mealSlot,_that.menuItems);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'menu_id')  String menuId, @JsonKey(name: 'day_of_week')  String dayOfWeek, @JsonKey(name: 'meal_slot')  String mealSlot, @JsonKey(name: 'menu_items')  String menuItems)?  $default,) {final _that = this;
switch (_that) {
case _MessMenuEntry() when $default != null:
return $default(_that.menuId,_that.dayOfWeek,_that.mealSlot,_that.menuItems);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessMenuEntry implements MessMenuEntry {
  const _MessMenuEntry({@JsonKey(name: 'menu_id') required this.menuId, @JsonKey(name: 'day_of_week') required this.dayOfWeek, @JsonKey(name: 'meal_slot') required this.mealSlot, @JsonKey(name: 'menu_items') this.menuItems = ''});
  factory _MessMenuEntry.fromJson(Map<String, dynamic> json) => _$MessMenuEntryFromJson(json);

@override@JsonKey(name: 'menu_id') final  String menuId;
@override@JsonKey(name: 'day_of_week') final  String dayOfWeek;
@override@JsonKey(name: 'meal_slot') final  String mealSlot;
@override@JsonKey(name: 'menu_items') final  String menuItems;

/// Create a copy of MessMenuEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessMenuEntryCopyWith<_MessMenuEntry> get copyWith => __$MessMenuEntryCopyWithImpl<_MessMenuEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessMenuEntryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessMenuEntry&&(identical(other.menuId, menuId) || other.menuId == menuId)&&(identical(other.dayOfWeek, dayOfWeek) || other.dayOfWeek == dayOfWeek)&&(identical(other.mealSlot, mealSlot) || other.mealSlot == mealSlot)&&(identical(other.menuItems, menuItems) || other.menuItems == menuItems));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,menuId,dayOfWeek,mealSlot,menuItems);
}

@override
String toString() {
    return 'MessMenuEntry(menuId: $menuId, dayOfWeek: $dayOfWeek, mealSlot: $mealSlot, menuItems: $menuItems)';
}


}

/// @nodoc
abstract mixin class _$MessMenuEntryCopyWith<$Res> implements $MessMenuEntryCopyWith<$Res> {
  factory _$MessMenuEntryCopyWith(_MessMenuEntry value, $Res Function(_MessMenuEntry) _then) = __$MessMenuEntryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'menu_id') String menuId,@JsonKey(name: 'day_of_week') String dayOfWeek,@JsonKey(name: 'meal_slot') String mealSlot,@JsonKey(name: 'menu_items') String menuItems
});




}
/// @nodoc
class __$MessMenuEntryCopyWithImpl<$Res>
    implements _$MessMenuEntryCopyWith<$Res> {
  __$MessMenuEntryCopyWithImpl(this._self, this._then);

  final _MessMenuEntry _self;
  final $Res Function(_MessMenuEntry) _then;

/// Create a copy of MessMenuEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? menuId = null,Object? dayOfWeek = null,Object? mealSlot = null,Object? menuItems = null,}) {
  return _then(_MessMenuEntry(
menuId: null == menuId ? _self.menuId : menuId // ignore: cast_nullable_to_non_nullable
as String,dayOfWeek: null == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as String,mealSlot: null == mealSlot ? _self.mealSlot : mealSlot // ignore: cast_nullable_to_non_nullable
as String,menuItems: null == menuItems ? _self.menuItems : menuItems // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MessSpecialMenuEntry {

@JsonKey(name: 'special_menu_id') String get specialMenuId;@JsonKey(name: 'special_date') DateTime get specialDate;@JsonKey(name: 'meal_slot') String get mealSlot;@JsonKey(name: 'menu_items') String get menuItems;
/// Create a copy of MessSpecialMenuEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessSpecialMenuEntryCopyWith<MessSpecialMenuEntry> get copyWith => _$MessSpecialMenuEntryCopyWithImpl<MessSpecialMenuEntry>(this as MessSpecialMenuEntry, _$identity);

  /// Serializes this MessSpecialMenuEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MessSpecialMenuEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessSpecialMenuEntry&&(identical(other.specialMenuId, _this.specialMenuId) || other.specialMenuId == _this.specialMenuId)&&(identical(other.specialDate, _this.specialDate) || other.specialDate == _this.specialDate)&&(identical(other.mealSlot, _this.mealSlot) || other.mealSlot == _this.mealSlot)&&(identical(other.menuItems, _this.menuItems) || other.menuItems == _this.menuItems));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MessSpecialMenuEntry;
  return Object.hash(runtimeType,_this.specialMenuId,_this.specialDate,_this.mealSlot,_this.menuItems);
}

@override
String toString() {
  final _this = this as MessSpecialMenuEntry;
  return 'MessSpecialMenuEntry(specialMenuId: ${_this.specialMenuId}, specialDate: ${_this.specialDate}, mealSlot: ${_this.mealSlot}, menuItems: ${_this.menuItems})';
}


}

/// @nodoc
abstract mixin class $MessSpecialMenuEntryCopyWith<$Res>  {
  factory $MessSpecialMenuEntryCopyWith(MessSpecialMenuEntry value, $Res Function(MessSpecialMenuEntry) _then) = _$MessSpecialMenuEntryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'special_menu_id') String specialMenuId,@JsonKey(name: 'special_date') DateTime specialDate,@JsonKey(name: 'meal_slot') String mealSlot,@JsonKey(name: 'menu_items') String menuItems
});




}
/// @nodoc
class _$MessSpecialMenuEntryCopyWithImpl<$Res>
    implements $MessSpecialMenuEntryCopyWith<$Res> {
  _$MessSpecialMenuEntryCopyWithImpl(this._self, this._then);

  final MessSpecialMenuEntry _self;
  final $Res Function(MessSpecialMenuEntry) _then;

/// Create a copy of MessSpecialMenuEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? specialMenuId = null,Object? specialDate = null,Object? mealSlot = null,Object? menuItems = null,}) {
  return _then(MessSpecialMenuEntry(
specialMenuId: null == specialMenuId ? _self.specialMenuId : specialMenuId // ignore: cast_nullable_to_non_nullable
as String,specialDate: null == specialDate ? _self.specialDate : specialDate // ignore: cast_nullable_to_non_nullable
as DateTime,mealSlot: null == mealSlot ? _self.mealSlot : mealSlot // ignore: cast_nullable_to_non_nullable
as String,menuItems: null == menuItems ? _self.menuItems : menuItems // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MessSpecialMenuEntry].
extension MessSpecialMenuEntryPatterns on MessSpecialMenuEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessSpecialMenuEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessSpecialMenuEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessSpecialMenuEntry value)  $default,){
final _that = this;
switch (_that) {
case _MessSpecialMenuEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessSpecialMenuEntry value)?  $default,){
final _that = this;
switch (_that) {
case _MessSpecialMenuEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'special_menu_id')  String specialMenuId, @JsonKey(name: 'special_date')  DateTime specialDate, @JsonKey(name: 'meal_slot')  String mealSlot, @JsonKey(name: 'menu_items')  String menuItems)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessSpecialMenuEntry() when $default != null:
return $default(_that.specialMenuId,_that.specialDate,_that.mealSlot,_that.menuItems);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'special_menu_id')  String specialMenuId, @JsonKey(name: 'special_date')  DateTime specialDate, @JsonKey(name: 'meal_slot')  String mealSlot, @JsonKey(name: 'menu_items')  String menuItems)  $default,) {final _that = this;
switch (_that) {
case _MessSpecialMenuEntry():
return $default(_that.specialMenuId,_that.specialDate,_that.mealSlot,_that.menuItems);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'special_menu_id')  String specialMenuId, @JsonKey(name: 'special_date')  DateTime specialDate, @JsonKey(name: 'meal_slot')  String mealSlot, @JsonKey(name: 'menu_items')  String menuItems)?  $default,) {final _that = this;
switch (_that) {
case _MessSpecialMenuEntry() when $default != null:
return $default(_that.specialMenuId,_that.specialDate,_that.mealSlot,_that.menuItems);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessSpecialMenuEntry implements MessSpecialMenuEntry {
  const _MessSpecialMenuEntry({@JsonKey(name: 'special_menu_id') required this.specialMenuId, @JsonKey(name: 'special_date') required this.specialDate, @JsonKey(name: 'meal_slot') required this.mealSlot, @JsonKey(name: 'menu_items') this.menuItems = ''});
  factory _MessSpecialMenuEntry.fromJson(Map<String, dynamic> json) => _$MessSpecialMenuEntryFromJson(json);

@override@JsonKey(name: 'special_menu_id') final  String specialMenuId;
@override@JsonKey(name: 'special_date') final  DateTime specialDate;
@override@JsonKey(name: 'meal_slot') final  String mealSlot;
@override@JsonKey(name: 'menu_items') final  String menuItems;

/// Create a copy of MessSpecialMenuEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessSpecialMenuEntryCopyWith<_MessSpecialMenuEntry> get copyWith => __$MessSpecialMenuEntryCopyWithImpl<_MessSpecialMenuEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessSpecialMenuEntryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessSpecialMenuEntry&&(identical(other.specialMenuId, specialMenuId) || other.specialMenuId == specialMenuId)&&(identical(other.specialDate, specialDate) || other.specialDate == specialDate)&&(identical(other.mealSlot, mealSlot) || other.mealSlot == mealSlot)&&(identical(other.menuItems, menuItems) || other.menuItems == menuItems));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,specialMenuId,specialDate,mealSlot,menuItems);
}

@override
String toString() {
    return 'MessSpecialMenuEntry(specialMenuId: $specialMenuId, specialDate: $specialDate, mealSlot: $mealSlot, menuItems: $menuItems)';
}


}

/// @nodoc
abstract mixin class _$MessSpecialMenuEntryCopyWith<$Res> implements $MessSpecialMenuEntryCopyWith<$Res> {
  factory _$MessSpecialMenuEntryCopyWith(_MessSpecialMenuEntry value, $Res Function(_MessSpecialMenuEntry) _then) = __$MessSpecialMenuEntryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'special_menu_id') String specialMenuId,@JsonKey(name: 'special_date') DateTime specialDate,@JsonKey(name: 'meal_slot') String mealSlot,@JsonKey(name: 'menu_items') String menuItems
});




}
/// @nodoc
class __$MessSpecialMenuEntryCopyWithImpl<$Res>
    implements _$MessSpecialMenuEntryCopyWith<$Res> {
  __$MessSpecialMenuEntryCopyWithImpl(this._self, this._then);

  final _MessSpecialMenuEntry _self;
  final $Res Function(_MessSpecialMenuEntry) _then;

/// Create a copy of MessSpecialMenuEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? specialMenuId = null,Object? specialDate = null,Object? mealSlot = null,Object? menuItems = null,}) {
  return _then(_MessSpecialMenuEntry(
specialMenuId: null == specialMenuId ? _self.specialMenuId : specialMenuId // ignore: cast_nullable_to_non_nullable
as String,specialDate: null == specialDate ? _self.specialDate : specialDate // ignore: cast_nullable_to_non_nullable
as DateTime,mealSlot: null == mealSlot ? _self.mealSlot : mealSlot // ignore: cast_nullable_to_non_nullable
as String,menuItems: null == menuItems ? _self.menuItems : menuItems // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$EffectiveMeal {

@JsonKey(name: 'meal_slot') String get mealSlot;@JsonKey(name: 'menu_items') String? get menuItems;@JsonKey(name: 'is_special') bool get isSpecial;
/// Create a copy of EffectiveMeal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EffectiveMealCopyWith<EffectiveMeal> get copyWith => _$EffectiveMealCopyWithImpl<EffectiveMeal>(this as EffectiveMeal, _$identity);

  /// Serializes this EffectiveMeal to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as EffectiveMeal;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EffectiveMeal&&(identical(other.mealSlot, _this.mealSlot) || other.mealSlot == _this.mealSlot)&&(identical(other.menuItems, _this.menuItems) || other.menuItems == _this.menuItems)&&(identical(other.isSpecial, _this.isSpecial) || other.isSpecial == _this.isSpecial));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as EffectiveMeal;
  return Object.hash(runtimeType,_this.mealSlot,_this.menuItems,_this.isSpecial);
}

@override
String toString() {
  final _this = this as EffectiveMeal;
  return 'EffectiveMeal(mealSlot: ${_this.mealSlot}, menuItems: ${_this.menuItems}, isSpecial: ${_this.isSpecial})';
}


}

/// @nodoc
abstract mixin class $EffectiveMealCopyWith<$Res>  {
  factory $EffectiveMealCopyWith(EffectiveMeal value, $Res Function(EffectiveMeal) _then) = _$EffectiveMealCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'meal_slot') String mealSlot,@JsonKey(name: 'menu_items') String? menuItems,@JsonKey(name: 'is_special') bool isSpecial
});




}
/// @nodoc
class _$EffectiveMealCopyWithImpl<$Res>
    implements $EffectiveMealCopyWith<$Res> {
  _$EffectiveMealCopyWithImpl(this._self, this._then);

  final EffectiveMeal _self;
  final $Res Function(EffectiveMeal) _then;

/// Create a copy of EffectiveMeal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mealSlot = null,Object? menuItems = freezed,Object? isSpecial = null,}) {
  return _then(EffectiveMeal(
mealSlot: null == mealSlot ? _self.mealSlot : mealSlot // ignore: cast_nullable_to_non_nullable
as String,menuItems: freezed == menuItems ? _self.menuItems : menuItems // ignore: cast_nullable_to_non_nullable
as String?,isSpecial: null == isSpecial ? _self.isSpecial : isSpecial // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EffectiveMeal].
extension EffectiveMealPatterns on EffectiveMeal {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EffectiveMeal value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EffectiveMeal() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EffectiveMeal value)  $default,){
final _that = this;
switch (_that) {
case _EffectiveMeal():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EffectiveMeal value)?  $default,){
final _that = this;
switch (_that) {
case _EffectiveMeal() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'meal_slot')  String mealSlot, @JsonKey(name: 'menu_items')  String? menuItems, @JsonKey(name: 'is_special')  bool isSpecial)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EffectiveMeal() when $default != null:
return $default(_that.mealSlot,_that.menuItems,_that.isSpecial);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'meal_slot')  String mealSlot, @JsonKey(name: 'menu_items')  String? menuItems, @JsonKey(name: 'is_special')  bool isSpecial)  $default,) {final _that = this;
switch (_that) {
case _EffectiveMeal():
return $default(_that.mealSlot,_that.menuItems,_that.isSpecial);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'meal_slot')  String mealSlot, @JsonKey(name: 'menu_items')  String? menuItems, @JsonKey(name: 'is_special')  bool isSpecial)?  $default,) {final _that = this;
switch (_that) {
case _EffectiveMeal() when $default != null:
return $default(_that.mealSlot,_that.menuItems,_that.isSpecial);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EffectiveMeal implements EffectiveMeal {
  const _EffectiveMeal({@JsonKey(name: 'meal_slot') required this.mealSlot, @JsonKey(name: 'menu_items') this.menuItems, @JsonKey(name: 'is_special') this.isSpecial = false});
  factory _EffectiveMeal.fromJson(Map<String, dynamic> json) => _$EffectiveMealFromJson(json);

@override@JsonKey(name: 'meal_slot') final  String mealSlot;
@override@JsonKey(name: 'menu_items') final  String? menuItems;
@override@JsonKey(name: 'is_special') final  bool isSpecial;

/// Create a copy of EffectiveMeal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EffectiveMealCopyWith<_EffectiveMeal> get copyWith => __$EffectiveMealCopyWithImpl<_EffectiveMeal>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EffectiveMealToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EffectiveMeal&&(identical(other.mealSlot, mealSlot) || other.mealSlot == mealSlot)&&(identical(other.menuItems, menuItems) || other.menuItems == menuItems)&&(identical(other.isSpecial, isSpecial) || other.isSpecial == isSpecial));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,mealSlot,menuItems,isSpecial);
}

@override
String toString() {
    return 'EffectiveMeal(mealSlot: $mealSlot, menuItems: $menuItems, isSpecial: $isSpecial)';
}


}

/// @nodoc
abstract mixin class _$EffectiveMealCopyWith<$Res> implements $EffectiveMealCopyWith<$Res> {
  factory _$EffectiveMealCopyWith(_EffectiveMeal value, $Res Function(_EffectiveMeal) _then) = __$EffectiveMealCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'meal_slot') String mealSlot,@JsonKey(name: 'menu_items') String? menuItems,@JsonKey(name: 'is_special') bool isSpecial
});




}
/// @nodoc
class __$EffectiveMealCopyWithImpl<$Res>
    implements _$EffectiveMealCopyWith<$Res> {
  __$EffectiveMealCopyWithImpl(this._self, this._then);

  final _EffectiveMeal _self;
  final $Res Function(_EffectiveMeal) _then;

/// Create a copy of EffectiveMeal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mealSlot = null,Object? menuItems = freezed,Object? isSpecial = null,}) {
  return _then(_EffectiveMeal(
mealSlot: null == mealSlot ? _self.mealSlot : mealSlot // ignore: cast_nullable_to_non_nullable
as String,menuItems: freezed == menuItems ? _self.menuItems : menuItems // ignore: cast_nullable_to_non_nullable
as String?,isSpecial: null == isSpecial ? _self.isSpecial : isSpecial // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
