// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_admissions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdmissionApplicantBrief {

@JsonKey(name: 'applicant_id') String? get applicantId;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'middle_name') String? get middleName;@JsonKey(name: 'last_name') String? get lastName; String? get gender; DateTime? get dob;@JsonKey(name: 'contact_no') String? get contactNo;@JsonKey(name: 'email_id') String? get emailId;@JsonKey(name: 'photo_url') String? get photoUrl;
/// Create a copy of AdmissionApplicantBrief
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionApplicantBriefCopyWith<AdmissionApplicantBrief> get copyWith => _$AdmissionApplicantBriefCopyWithImpl<AdmissionApplicantBrief>(this as AdmissionApplicantBrief, _$identity);

  /// Serializes this AdmissionApplicantBrief to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionApplicantBrief;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionApplicantBrief&&(identical(other.applicantId, _this.applicantId) || other.applicantId == _this.applicantId)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.middleName, _this.middleName) || other.middleName == _this.middleName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.dob, _this.dob) || other.dob == _this.dob)&&(identical(other.contactNo, _this.contactNo) || other.contactNo == _this.contactNo)&&(identical(other.emailId, _this.emailId) || other.emailId == _this.emailId)&&(identical(other.photoUrl, _this.photoUrl) || other.photoUrl == _this.photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionApplicantBrief;
  return Object.hash(runtimeType,_this.applicantId,_this.firstName,_this.middleName,_this.lastName,_this.gender,_this.dob,_this.contactNo,_this.emailId,_this.photoUrl);
}

@override
String toString() {
  final _this = this as AdmissionApplicantBrief;
  return 'AdmissionApplicantBrief(applicantId: ${_this.applicantId}, firstName: ${_this.firstName}, middleName: ${_this.middleName}, lastName: ${_this.lastName}, gender: ${_this.gender}, dob: ${_this.dob}, contactNo: ${_this.contactNo}, emailId: ${_this.emailId}, photoUrl: ${_this.photoUrl})';
}


}

/// @nodoc
abstract mixin class $AdmissionApplicantBriefCopyWith<$Res>  {
  factory $AdmissionApplicantBriefCopyWith(AdmissionApplicantBrief value, $Res Function(AdmissionApplicantBrief) _then) = _$AdmissionApplicantBriefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'applicant_id') String? applicantId,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'middle_name') String? middleName,@JsonKey(name: 'last_name') String? lastName, String? gender, DateTime? dob,@JsonKey(name: 'contact_no') String? contactNo,@JsonKey(name: 'email_id') String? emailId,@JsonKey(name: 'photo_url') String? photoUrl
});




}
/// @nodoc
class _$AdmissionApplicantBriefCopyWithImpl<$Res>
    implements $AdmissionApplicantBriefCopyWith<$Res> {
  _$AdmissionApplicantBriefCopyWithImpl(this._self, this._then);

  final AdmissionApplicantBrief _self;
  final $Res Function(AdmissionApplicantBrief) _then;

/// Create a copy of AdmissionApplicantBrief
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? applicantId = freezed,Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? gender = freezed,Object? dob = freezed,Object? contactNo = freezed,Object? emailId = freezed,Object? photoUrl = freezed,}) {
  return _then(AdmissionApplicantBrief(
applicantId: freezed == applicantId ? _self.applicantId : applicantId // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,contactNo: freezed == contactNo ? _self.contactNo : contactNo // ignore: cast_nullable_to_non_nullable
as String?,emailId: freezed == emailId ? _self.emailId : emailId // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionApplicantBrief].
extension AdmissionApplicantBriefPatterns on AdmissionApplicantBrief {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionApplicantBrief value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionApplicantBrief() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionApplicantBrief value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionApplicantBrief():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionApplicantBrief value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionApplicantBrief() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'applicant_id')  String? applicantId, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  DateTime? dob, @JsonKey(name: 'contact_no')  String? contactNo, @JsonKey(name: 'email_id')  String? emailId, @JsonKey(name: 'photo_url')  String? photoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionApplicantBrief() when $default != null:
return $default(_that.applicantId,_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.dob,_that.contactNo,_that.emailId,_that.photoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'applicant_id')  String? applicantId, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  DateTime? dob, @JsonKey(name: 'contact_no')  String? contactNo, @JsonKey(name: 'email_id')  String? emailId, @JsonKey(name: 'photo_url')  String? photoUrl)  $default,) {final _that = this;
switch (_that) {
case _AdmissionApplicantBrief():
return $default(_that.applicantId,_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.dob,_that.contactNo,_that.emailId,_that.photoUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'applicant_id')  String? applicantId, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  DateTime? dob, @JsonKey(name: 'contact_no')  String? contactNo, @JsonKey(name: 'email_id')  String? emailId, @JsonKey(name: 'photo_url')  String? photoUrl)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionApplicantBrief() when $default != null:
return $default(_that.applicantId,_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.dob,_that.contactNo,_that.emailId,_that.photoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionApplicantBrief extends AdmissionApplicantBrief {
  const _AdmissionApplicantBrief({@JsonKey(name: 'applicant_id') this.applicantId, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'middle_name') this.middleName, @JsonKey(name: 'last_name') this.lastName, this.gender, this.dob, @JsonKey(name: 'contact_no') this.contactNo, @JsonKey(name: 'email_id') this.emailId, @JsonKey(name: 'photo_url') this.photoUrl}): super._();
  factory _AdmissionApplicantBrief.fromJson(Map<String, dynamic> json) => _$AdmissionApplicantBriefFromJson(json);

@override@JsonKey(name: 'applicant_id') final  String? applicantId;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'middle_name') final  String? middleName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override final  String? gender;
@override final  DateTime? dob;
@override@JsonKey(name: 'contact_no') final  String? contactNo;
@override@JsonKey(name: 'email_id') final  String? emailId;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;

/// Create a copy of AdmissionApplicantBrief
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionApplicantBriefCopyWith<_AdmissionApplicantBrief> get copyWith => __$AdmissionApplicantBriefCopyWithImpl<_AdmissionApplicantBrief>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionApplicantBriefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionApplicantBrief&&(identical(other.applicantId, applicantId) || other.applicantId == applicantId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.contactNo, contactNo) || other.contactNo == contactNo)&&(identical(other.emailId, emailId) || other.emailId == emailId)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,applicantId,firstName,middleName,lastName,gender,dob,contactNo,emailId,photoUrl);
}

@override
String toString() {
    return 'AdmissionApplicantBrief(applicantId: $applicantId, firstName: $firstName, middleName: $middleName, lastName: $lastName, gender: $gender, dob: $dob, contactNo: $contactNo, emailId: $emailId, photoUrl: $photoUrl)';
}


}

/// @nodoc
abstract mixin class _$AdmissionApplicantBriefCopyWith<$Res> implements $AdmissionApplicantBriefCopyWith<$Res> {
  factory _$AdmissionApplicantBriefCopyWith(_AdmissionApplicantBrief value, $Res Function(_AdmissionApplicantBrief) _then) = __$AdmissionApplicantBriefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'applicant_id') String? applicantId,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'middle_name') String? middleName,@JsonKey(name: 'last_name') String? lastName, String? gender, DateTime? dob,@JsonKey(name: 'contact_no') String? contactNo,@JsonKey(name: 'email_id') String? emailId,@JsonKey(name: 'photo_url') String? photoUrl
});




}
/// @nodoc
class __$AdmissionApplicantBriefCopyWithImpl<$Res>
    implements _$AdmissionApplicantBriefCopyWith<$Res> {
  __$AdmissionApplicantBriefCopyWithImpl(this._self, this._then);

  final _AdmissionApplicantBrief _self;
  final $Res Function(_AdmissionApplicantBrief) _then;

/// Create a copy of AdmissionApplicantBrief
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? applicantId = freezed,Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? gender = freezed,Object? dob = freezed,Object? contactNo = freezed,Object? emailId = freezed,Object? photoUrl = freezed,}) {
  return _then(_AdmissionApplicantBrief(
applicantId: freezed == applicantId ? _self.applicantId : applicantId // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,contactNo: freezed == contactNo ? _self.contactNo : contactNo // ignore: cast_nullable_to_non_nullable
as String?,emailId: freezed == emailId ? _self.emailId : emailId // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdmissionParentBrief {

@JsonKey(name: 'parent_id') String? get parentId;@JsonKey(name: 'relation_type') String? get relationType;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName;@JsonKey(name: 'mobile_no') String? get mobileNo; String? get email;
/// Create a copy of AdmissionParentBrief
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionParentBriefCopyWith<AdmissionParentBrief> get copyWith => _$AdmissionParentBriefCopyWithImpl<AdmissionParentBrief>(this as AdmissionParentBrief, _$identity);

  /// Serializes this AdmissionParentBrief to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionParentBrief;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionParentBrief&&(identical(other.parentId, _this.parentId) || other.parentId == _this.parentId)&&(identical(other.relationType, _this.relationType) || other.relationType == _this.relationType)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.mobileNo, _this.mobileNo) || other.mobileNo == _this.mobileNo)&&(identical(other.email, _this.email) || other.email == _this.email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionParentBrief;
  return Object.hash(runtimeType,_this.parentId,_this.relationType,_this.firstName,_this.lastName,_this.mobileNo,_this.email);
}

@override
String toString() {
  final _this = this as AdmissionParentBrief;
  return 'AdmissionParentBrief(parentId: ${_this.parentId}, relationType: ${_this.relationType}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, mobileNo: ${_this.mobileNo}, email: ${_this.email})';
}


}

/// @nodoc
abstract mixin class $AdmissionParentBriefCopyWith<$Res>  {
  factory $AdmissionParentBriefCopyWith(AdmissionParentBrief value, $Res Function(AdmissionParentBrief) _then) = _$AdmissionParentBriefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'parent_id') String? parentId,@JsonKey(name: 'relation_type') String? relationType,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'mobile_no') String? mobileNo, String? email
});




}
/// @nodoc
class _$AdmissionParentBriefCopyWithImpl<$Res>
    implements $AdmissionParentBriefCopyWith<$Res> {
  _$AdmissionParentBriefCopyWithImpl(this._self, this._then);

  final AdmissionParentBrief _self;
  final $Res Function(AdmissionParentBrief) _then;

/// Create a copy of AdmissionParentBrief
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parentId = freezed,Object? relationType = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? mobileNo = freezed,Object? email = freezed,}) {
  return _then(AdmissionParentBrief(
parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,relationType: freezed == relationType ? _self.relationType : relationType // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionParentBrief].
extension AdmissionParentBriefPatterns on AdmissionParentBrief {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionParentBrief value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionParentBrief() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionParentBrief value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionParentBrief():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionParentBrief value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionParentBrief() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_id')  String? parentId, @JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionParentBrief() when $default != null:
return $default(_that.parentId,_that.relationType,_that.firstName,_that.lastName,_that.mobileNo,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_id')  String? parentId, @JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email)  $default,) {final _that = this;
switch (_that) {
case _AdmissionParentBrief():
return $default(_that.parentId,_that.relationType,_that.firstName,_that.lastName,_that.mobileNo,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'parent_id')  String? parentId, @JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionParentBrief() when $default != null:
return $default(_that.parentId,_that.relationType,_that.firstName,_that.lastName,_that.mobileNo,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionParentBrief extends AdmissionParentBrief {
  const _AdmissionParentBrief({@JsonKey(name: 'parent_id') this.parentId, @JsonKey(name: 'relation_type') this.relationType, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, @JsonKey(name: 'mobile_no') this.mobileNo, this.email}): super._();
  factory _AdmissionParentBrief.fromJson(Map<String, dynamic> json) => _$AdmissionParentBriefFromJson(json);

@override@JsonKey(name: 'parent_id') final  String? parentId;
@override@JsonKey(name: 'relation_type') final  String? relationType;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override@JsonKey(name: 'mobile_no') final  String? mobileNo;
@override final  String? email;

/// Create a copy of AdmissionParentBrief
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionParentBriefCopyWith<_AdmissionParentBrief> get copyWith => __$AdmissionParentBriefCopyWithImpl<_AdmissionParentBrief>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionParentBriefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionParentBrief&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.relationType, relationType) || other.relationType == relationType)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,parentId,relationType,firstName,lastName,mobileNo,email);
}

@override
String toString() {
    return 'AdmissionParentBrief(parentId: $parentId, relationType: $relationType, firstName: $firstName, lastName: $lastName, mobileNo: $mobileNo, email: $email)';
}


}

/// @nodoc
abstract mixin class _$AdmissionParentBriefCopyWith<$Res> implements $AdmissionParentBriefCopyWith<$Res> {
  factory _$AdmissionParentBriefCopyWith(_AdmissionParentBrief value, $Res Function(_AdmissionParentBrief) _then) = __$AdmissionParentBriefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'parent_id') String? parentId,@JsonKey(name: 'relation_type') String? relationType,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'mobile_no') String? mobileNo, String? email
});




}
/// @nodoc
class __$AdmissionParentBriefCopyWithImpl<$Res>
    implements _$AdmissionParentBriefCopyWith<$Res> {
  __$AdmissionParentBriefCopyWithImpl(this._self, this._then);

  final _AdmissionParentBrief _self;
  final $Res Function(_AdmissionParentBrief) _then;

/// Create a copy of AdmissionParentBrief
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parentId = freezed,Object? relationType = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? mobileNo = freezed,Object? email = freezed,}) {
  return _then(_AdmissionParentBrief(
parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,relationType: freezed == relationType ? _self.relationType : relationType // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdmissionInterviewSchedule {

@JsonKey(name: 'schedule_id') String? get scheduleId;@JsonKey(name: 'interview_date') DateTime? get interviewDate;@JsonKey(name: 'interview_time') DateTime? get interviewTime;@JsonKey(name: 'scheduled_at') DateTime? get scheduledAt;
/// Create a copy of AdmissionInterviewSchedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionInterviewScheduleCopyWith<AdmissionInterviewSchedule> get copyWith => _$AdmissionInterviewScheduleCopyWithImpl<AdmissionInterviewSchedule>(this as AdmissionInterviewSchedule, _$identity);

  /// Serializes this AdmissionInterviewSchedule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionInterviewSchedule;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionInterviewSchedule&&(identical(other.scheduleId, _this.scheduleId) || other.scheduleId == _this.scheduleId)&&(identical(other.interviewDate, _this.interviewDate) || other.interviewDate == _this.interviewDate)&&(identical(other.interviewTime, _this.interviewTime) || other.interviewTime == _this.interviewTime)&&(identical(other.scheduledAt, _this.scheduledAt) || other.scheduledAt == _this.scheduledAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionInterviewSchedule;
  return Object.hash(runtimeType,_this.scheduleId,_this.interviewDate,_this.interviewTime,_this.scheduledAt);
}

@override
String toString() {
  final _this = this as AdmissionInterviewSchedule;
  return 'AdmissionInterviewSchedule(scheduleId: ${_this.scheduleId}, interviewDate: ${_this.interviewDate}, interviewTime: ${_this.interviewTime}, scheduledAt: ${_this.scheduledAt})';
}


}

/// @nodoc
abstract mixin class $AdmissionInterviewScheduleCopyWith<$Res>  {
  factory $AdmissionInterviewScheduleCopyWith(AdmissionInterviewSchedule value, $Res Function(AdmissionInterviewSchedule) _then) = _$AdmissionInterviewScheduleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'schedule_id') String? scheduleId,@JsonKey(name: 'interview_date') DateTime? interviewDate,@JsonKey(name: 'interview_time') DateTime? interviewTime,@JsonKey(name: 'scheduled_at') DateTime? scheduledAt
});




}
/// @nodoc
class _$AdmissionInterviewScheduleCopyWithImpl<$Res>
    implements $AdmissionInterviewScheduleCopyWith<$Res> {
  _$AdmissionInterviewScheduleCopyWithImpl(this._self, this._then);

  final AdmissionInterviewSchedule _self;
  final $Res Function(AdmissionInterviewSchedule) _then;

/// Create a copy of AdmissionInterviewSchedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scheduleId = freezed,Object? interviewDate = freezed,Object? interviewTime = freezed,Object? scheduledAt = freezed,}) {
  return _then(AdmissionInterviewSchedule(
scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,interviewDate: freezed == interviewDate ? _self.interviewDate : interviewDate // ignore: cast_nullable_to_non_nullable
as DateTime?,interviewTime: freezed == interviewTime ? _self.interviewTime : interviewTime // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduledAt: freezed == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionInterviewSchedule].
extension AdmissionInterviewSchedulePatterns on AdmissionInterviewSchedule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionInterviewSchedule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionInterviewSchedule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionInterviewSchedule value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionInterviewSchedule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionInterviewSchedule value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionInterviewSchedule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'schedule_id')  String? scheduleId, @JsonKey(name: 'interview_date')  DateTime? interviewDate, @JsonKey(name: 'interview_time')  DateTime? interviewTime, @JsonKey(name: 'scheduled_at')  DateTime? scheduledAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionInterviewSchedule() when $default != null:
return $default(_that.scheduleId,_that.interviewDate,_that.interviewTime,_that.scheduledAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'schedule_id')  String? scheduleId, @JsonKey(name: 'interview_date')  DateTime? interviewDate, @JsonKey(name: 'interview_time')  DateTime? interviewTime, @JsonKey(name: 'scheduled_at')  DateTime? scheduledAt)  $default,) {final _that = this;
switch (_that) {
case _AdmissionInterviewSchedule():
return $default(_that.scheduleId,_that.interviewDate,_that.interviewTime,_that.scheduledAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'schedule_id')  String? scheduleId, @JsonKey(name: 'interview_date')  DateTime? interviewDate, @JsonKey(name: 'interview_time')  DateTime? interviewTime, @JsonKey(name: 'scheduled_at')  DateTime? scheduledAt)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionInterviewSchedule() when $default != null:
return $default(_that.scheduleId,_that.interviewDate,_that.interviewTime,_that.scheduledAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionInterviewSchedule implements AdmissionInterviewSchedule {
  const _AdmissionInterviewSchedule({@JsonKey(name: 'schedule_id') this.scheduleId, @JsonKey(name: 'interview_date') this.interviewDate, @JsonKey(name: 'interview_time') this.interviewTime, @JsonKey(name: 'scheduled_at') this.scheduledAt});
  factory _AdmissionInterviewSchedule.fromJson(Map<String, dynamic> json) => _$AdmissionInterviewScheduleFromJson(json);

@override@JsonKey(name: 'schedule_id') final  String? scheduleId;
@override@JsonKey(name: 'interview_date') final  DateTime? interviewDate;
@override@JsonKey(name: 'interview_time') final  DateTime? interviewTime;
@override@JsonKey(name: 'scheduled_at') final  DateTime? scheduledAt;

/// Create a copy of AdmissionInterviewSchedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionInterviewScheduleCopyWith<_AdmissionInterviewSchedule> get copyWith => __$AdmissionInterviewScheduleCopyWithImpl<_AdmissionInterviewSchedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionInterviewScheduleToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionInterviewSchedule&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.interviewDate, interviewDate) || other.interviewDate == interviewDate)&&(identical(other.interviewTime, interviewTime) || other.interviewTime == interviewTime)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,scheduleId,interviewDate,interviewTime,scheduledAt);
}

@override
String toString() {
    return 'AdmissionInterviewSchedule(scheduleId: $scheduleId, interviewDate: $interviewDate, interviewTime: $interviewTime, scheduledAt: $scheduledAt)';
}


}

/// @nodoc
abstract mixin class _$AdmissionInterviewScheduleCopyWith<$Res> implements $AdmissionInterviewScheduleCopyWith<$Res> {
  factory _$AdmissionInterviewScheduleCopyWith(_AdmissionInterviewSchedule value, $Res Function(_AdmissionInterviewSchedule) _then) = __$AdmissionInterviewScheduleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'schedule_id') String? scheduleId,@JsonKey(name: 'interview_date') DateTime? interviewDate,@JsonKey(name: 'interview_time') DateTime? interviewTime,@JsonKey(name: 'scheduled_at') DateTime? scheduledAt
});




}
/// @nodoc
class __$AdmissionInterviewScheduleCopyWithImpl<$Res>
    implements _$AdmissionInterviewScheduleCopyWith<$Res> {
  __$AdmissionInterviewScheduleCopyWithImpl(this._self, this._then);

  final _AdmissionInterviewSchedule _self;
  final $Res Function(_AdmissionInterviewSchedule) _then;

/// Create a copy of AdmissionInterviewSchedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scheduleId = freezed,Object? interviewDate = freezed,Object? interviewTime = freezed,Object? scheduledAt = freezed,}) {
  return _then(_AdmissionInterviewSchedule(
scheduleId: freezed == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as String?,interviewDate: freezed == interviewDate ? _self.interviewDate : interviewDate // ignore: cast_nullable_to_non_nullable
as DateTime?,interviewTime: freezed == interviewTime ? _self.interviewTime : interviewTime // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduledAt: freezed == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$AdmissionInterviewAttendance {

@JsonKey(name: 'attendance_id') String? get attendanceId;@JsonKey(name: 'presence_status') String? get presenceStatus;@JsonKey(name: 'marked_at') DateTime? get markedAt;
/// Create a copy of AdmissionInterviewAttendance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionInterviewAttendanceCopyWith<AdmissionInterviewAttendance> get copyWith => _$AdmissionInterviewAttendanceCopyWithImpl<AdmissionInterviewAttendance>(this as AdmissionInterviewAttendance, _$identity);

  /// Serializes this AdmissionInterviewAttendance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionInterviewAttendance;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionInterviewAttendance&&(identical(other.attendanceId, _this.attendanceId) || other.attendanceId == _this.attendanceId)&&(identical(other.presenceStatus, _this.presenceStatus) || other.presenceStatus == _this.presenceStatus)&&(identical(other.markedAt, _this.markedAt) || other.markedAt == _this.markedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionInterviewAttendance;
  return Object.hash(runtimeType,_this.attendanceId,_this.presenceStatus,_this.markedAt);
}

@override
String toString() {
  final _this = this as AdmissionInterviewAttendance;
  return 'AdmissionInterviewAttendance(attendanceId: ${_this.attendanceId}, presenceStatus: ${_this.presenceStatus}, markedAt: ${_this.markedAt})';
}


}

/// @nodoc
abstract mixin class $AdmissionInterviewAttendanceCopyWith<$Res>  {
  factory $AdmissionInterviewAttendanceCopyWith(AdmissionInterviewAttendance value, $Res Function(AdmissionInterviewAttendance) _then) = _$AdmissionInterviewAttendanceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'attendance_id') String? attendanceId,@JsonKey(name: 'presence_status') String? presenceStatus,@JsonKey(name: 'marked_at') DateTime? markedAt
});




}
/// @nodoc
class _$AdmissionInterviewAttendanceCopyWithImpl<$Res>
    implements $AdmissionInterviewAttendanceCopyWith<$Res> {
  _$AdmissionInterviewAttendanceCopyWithImpl(this._self, this._then);

  final AdmissionInterviewAttendance _self;
  final $Res Function(AdmissionInterviewAttendance) _then;

/// Create a copy of AdmissionInterviewAttendance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attendanceId = freezed,Object? presenceStatus = freezed,Object? markedAt = freezed,}) {
  return _then(AdmissionInterviewAttendance(
attendanceId: freezed == attendanceId ? _self.attendanceId : attendanceId // ignore: cast_nullable_to_non_nullable
as String?,presenceStatus: freezed == presenceStatus ? _self.presenceStatus : presenceStatus // ignore: cast_nullable_to_non_nullable
as String?,markedAt: freezed == markedAt ? _self.markedAt : markedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionInterviewAttendance].
extension AdmissionInterviewAttendancePatterns on AdmissionInterviewAttendance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionInterviewAttendance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionInterviewAttendance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionInterviewAttendance value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionInterviewAttendance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionInterviewAttendance value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionInterviewAttendance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_id')  String? attendanceId, @JsonKey(name: 'presence_status')  String? presenceStatus, @JsonKey(name: 'marked_at')  DateTime? markedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionInterviewAttendance() when $default != null:
return $default(_that.attendanceId,_that.presenceStatus,_that.markedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_id')  String? attendanceId, @JsonKey(name: 'presence_status')  String? presenceStatus, @JsonKey(name: 'marked_at')  DateTime? markedAt)  $default,) {final _that = this;
switch (_that) {
case _AdmissionInterviewAttendance():
return $default(_that.attendanceId,_that.presenceStatus,_that.markedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'attendance_id')  String? attendanceId, @JsonKey(name: 'presence_status')  String? presenceStatus, @JsonKey(name: 'marked_at')  DateTime? markedAt)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionInterviewAttendance() when $default != null:
return $default(_that.attendanceId,_that.presenceStatus,_that.markedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionInterviewAttendance implements AdmissionInterviewAttendance {
  const _AdmissionInterviewAttendance({@JsonKey(name: 'attendance_id') this.attendanceId, @JsonKey(name: 'presence_status') this.presenceStatus, @JsonKey(name: 'marked_at') this.markedAt});
  factory _AdmissionInterviewAttendance.fromJson(Map<String, dynamic> json) => _$AdmissionInterviewAttendanceFromJson(json);

@override@JsonKey(name: 'attendance_id') final  String? attendanceId;
@override@JsonKey(name: 'presence_status') final  String? presenceStatus;
@override@JsonKey(name: 'marked_at') final  DateTime? markedAt;

/// Create a copy of AdmissionInterviewAttendance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionInterviewAttendanceCopyWith<_AdmissionInterviewAttendance> get copyWith => __$AdmissionInterviewAttendanceCopyWithImpl<_AdmissionInterviewAttendance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionInterviewAttendanceToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionInterviewAttendance&&(identical(other.attendanceId, attendanceId) || other.attendanceId == attendanceId)&&(identical(other.presenceStatus, presenceStatus) || other.presenceStatus == presenceStatus)&&(identical(other.markedAt, markedAt) || other.markedAt == markedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,attendanceId,presenceStatus,markedAt);
}

@override
String toString() {
    return 'AdmissionInterviewAttendance(attendanceId: $attendanceId, presenceStatus: $presenceStatus, markedAt: $markedAt)';
}


}

/// @nodoc
abstract mixin class _$AdmissionInterviewAttendanceCopyWith<$Res> implements $AdmissionInterviewAttendanceCopyWith<$Res> {
  factory _$AdmissionInterviewAttendanceCopyWith(_AdmissionInterviewAttendance value, $Res Function(_AdmissionInterviewAttendance) _then) = __$AdmissionInterviewAttendanceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'attendance_id') String? attendanceId,@JsonKey(name: 'presence_status') String? presenceStatus,@JsonKey(name: 'marked_at') DateTime? markedAt
});




}
/// @nodoc
class __$AdmissionInterviewAttendanceCopyWithImpl<$Res>
    implements _$AdmissionInterviewAttendanceCopyWith<$Res> {
  __$AdmissionInterviewAttendanceCopyWithImpl(this._self, this._then);

  final _AdmissionInterviewAttendance _self;
  final $Res Function(_AdmissionInterviewAttendance) _then;

/// Create a copy of AdmissionInterviewAttendance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attendanceId = freezed,Object? presenceStatus = freezed,Object? markedAt = freezed,}) {
  return _then(_AdmissionInterviewAttendance(
attendanceId: freezed == attendanceId ? _self.attendanceId : attendanceId // ignore: cast_nullable_to_non_nullable
as String?,presenceStatus: freezed == presenceStatus ? _self.presenceStatus : presenceStatus // ignore: cast_nullable_to_non_nullable
as String?,markedAt: freezed == markedAt ? _self.markedAt : markedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$AdmissionReviewer {

@JsonKey(name: 'user_id') String? get userId; String? get username; String? get email;
/// Create a copy of AdmissionReviewer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionReviewerCopyWith<AdmissionReviewer> get copyWith => _$AdmissionReviewerCopyWithImpl<AdmissionReviewer>(this as AdmissionReviewer, _$identity);

  /// Serializes this AdmissionReviewer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionReviewer;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionReviewer&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.username, _this.username) || other.username == _this.username)&&(identical(other.email, _this.email) || other.email == _this.email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionReviewer;
  return Object.hash(runtimeType,_this.userId,_this.username,_this.email);
}

@override
String toString() {
  final _this = this as AdmissionReviewer;
  return 'AdmissionReviewer(userId: ${_this.userId}, username: ${_this.username}, email: ${_this.email})';
}


}

/// @nodoc
abstract mixin class $AdmissionReviewerCopyWith<$Res>  {
  factory $AdmissionReviewerCopyWith(AdmissionReviewer value, $Res Function(AdmissionReviewer) _then) = _$AdmissionReviewerCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String? userId, String? username, String? email
});




}
/// @nodoc
class _$AdmissionReviewerCopyWithImpl<$Res>
    implements $AdmissionReviewerCopyWith<$Res> {
  _$AdmissionReviewerCopyWithImpl(this._self, this._then);

  final AdmissionReviewer _self;
  final $Res Function(AdmissionReviewer) _then;

/// Create a copy of AdmissionReviewer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? username = freezed,Object? email = freezed,}) {
  return _then(AdmissionReviewer(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionReviewer].
extension AdmissionReviewerPatterns on AdmissionReviewer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionReviewer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionReviewer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionReviewer value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionReviewer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionReviewer value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionReviewer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String? userId,  String? username,  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionReviewer() when $default != null:
return $default(_that.userId,_that.username,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String? userId,  String? username,  String? email)  $default,) {final _that = this;
switch (_that) {
case _AdmissionReviewer():
return $default(_that.userId,_that.username,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String? userId,  String? username,  String? email)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionReviewer() when $default != null:
return $default(_that.userId,_that.username,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionReviewer implements AdmissionReviewer {
  const _AdmissionReviewer({@JsonKey(name: 'user_id') this.userId, this.username, this.email});
  factory _AdmissionReviewer.fromJson(Map<String, dynamic> json) => _$AdmissionReviewerFromJson(json);

@override@JsonKey(name: 'user_id') final  String? userId;
@override final  String? username;
@override final  String? email;

/// Create a copy of AdmissionReviewer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionReviewerCopyWith<_AdmissionReviewer> get copyWith => __$AdmissionReviewerCopyWithImpl<_AdmissionReviewer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionReviewerToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionReviewer&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,userId,username,email);
}

@override
String toString() {
    return 'AdmissionReviewer(userId: $userId, username: $username, email: $email)';
}


}

/// @nodoc
abstract mixin class _$AdmissionReviewerCopyWith<$Res> implements $AdmissionReviewerCopyWith<$Res> {
  factory _$AdmissionReviewerCopyWith(_AdmissionReviewer value, $Res Function(_AdmissionReviewer) _then) = __$AdmissionReviewerCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String? userId, String? username, String? email
});




}
/// @nodoc
class __$AdmissionReviewerCopyWithImpl<$Res>
    implements _$AdmissionReviewerCopyWith<$Res> {
  __$AdmissionReviewerCopyWithImpl(this._self, this._then);

  final _AdmissionReviewer _self;
  final $Res Function(_AdmissionReviewer) _then;

/// Create a copy of AdmissionReviewer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? username = freezed,Object? email = freezed,}) {
  return _then(_AdmissionReviewer(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdmissionReview {

@JsonKey(name: 'review_id') String? get reviewId;@JsonKey(name: 'review_status') String? get reviewStatus; String? get remarks;@JsonKey(name: 'reviewed_at') DateTime? get reviewedAt;@JsonKey(name: 'users') AdmissionReviewer? get reviewer;
/// Create a copy of AdmissionReview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionReviewCopyWith<AdmissionReview> get copyWith => _$AdmissionReviewCopyWithImpl<AdmissionReview>(this as AdmissionReview, _$identity);

  /// Serializes this AdmissionReview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionReview;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionReview&&(identical(other.reviewId, _this.reviewId) || other.reviewId == _this.reviewId)&&(identical(other.reviewStatus, _this.reviewStatus) || other.reviewStatus == _this.reviewStatus)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.reviewedAt, _this.reviewedAt) || other.reviewedAt == _this.reviewedAt)&&(identical(other.reviewer, _this.reviewer) || other.reviewer == _this.reviewer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionReview;
  return Object.hash(runtimeType,_this.reviewId,_this.reviewStatus,_this.remarks,_this.reviewedAt,_this.reviewer);
}

@override
String toString() {
  final _this = this as AdmissionReview;
  return 'AdmissionReview(reviewId: ${_this.reviewId}, reviewStatus: ${_this.reviewStatus}, remarks: ${_this.remarks}, reviewedAt: ${_this.reviewedAt}, reviewer: ${_this.reviewer})';
}


}

/// @nodoc
abstract mixin class $AdmissionReviewCopyWith<$Res>  {
  factory $AdmissionReviewCopyWith(AdmissionReview value, $Res Function(AdmissionReview) _then) = _$AdmissionReviewCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'review_id') String? reviewId,@JsonKey(name: 'review_status') String? reviewStatus, String? remarks,@JsonKey(name: 'reviewed_at') DateTime? reviewedAt,@JsonKey(name: 'users') AdmissionReviewer? reviewer
});


$AdmissionReviewerCopyWith<$Res>? get reviewer;

}
/// @nodoc
class _$AdmissionReviewCopyWithImpl<$Res>
    implements $AdmissionReviewCopyWith<$Res> {
  _$AdmissionReviewCopyWithImpl(this._self, this._then);

  final AdmissionReview _self;
  final $Res Function(AdmissionReview) _then;

/// Create a copy of AdmissionReview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reviewId = freezed,Object? reviewStatus = freezed,Object? remarks = freezed,Object? reviewedAt = freezed,Object? reviewer = freezed,}) {
  return _then(AdmissionReview(
reviewId: freezed == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as String?,reviewStatus: freezed == reviewStatus ? _self.reviewStatus : reviewStatus // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reviewer: freezed == reviewer ? _self.reviewer : reviewer // ignore: cast_nullable_to_non_nullable
as AdmissionReviewer?,
  ));
}
/// Create a copy of AdmissionReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdmissionReviewerCopyWith<$Res>? get reviewer {
    if (_self.reviewer == null) {
    return null;
  }

  return $AdmissionReviewerCopyWith<$Res>(_self.reviewer!, (value) {
    return _then(_self.copyWith(reviewer: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdmissionReview].
extension AdmissionReviewPatterns on AdmissionReview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionReview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionReview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionReview value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionReview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionReview value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionReview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'review_id')  String? reviewId, @JsonKey(name: 'review_status')  String? reviewStatus,  String? remarks, @JsonKey(name: 'reviewed_at')  DateTime? reviewedAt, @JsonKey(name: 'users')  AdmissionReviewer? reviewer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionReview() when $default != null:
return $default(_that.reviewId,_that.reviewStatus,_that.remarks,_that.reviewedAt,_that.reviewer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'review_id')  String? reviewId, @JsonKey(name: 'review_status')  String? reviewStatus,  String? remarks, @JsonKey(name: 'reviewed_at')  DateTime? reviewedAt, @JsonKey(name: 'users')  AdmissionReviewer? reviewer)  $default,) {final _that = this;
switch (_that) {
case _AdmissionReview():
return $default(_that.reviewId,_that.reviewStatus,_that.remarks,_that.reviewedAt,_that.reviewer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'review_id')  String? reviewId, @JsonKey(name: 'review_status')  String? reviewStatus,  String? remarks, @JsonKey(name: 'reviewed_at')  DateTime? reviewedAt, @JsonKey(name: 'users')  AdmissionReviewer? reviewer)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionReview() when $default != null:
return $default(_that.reviewId,_that.reviewStatus,_that.remarks,_that.reviewedAt,_that.reviewer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionReview implements AdmissionReview {
  const _AdmissionReview({@JsonKey(name: 'review_id') this.reviewId, @JsonKey(name: 'review_status') this.reviewStatus, this.remarks, @JsonKey(name: 'reviewed_at') this.reviewedAt, @JsonKey(name: 'users') this.reviewer});
  factory _AdmissionReview.fromJson(Map<String, dynamic> json) => _$AdmissionReviewFromJson(json);

@override@JsonKey(name: 'review_id') final  String? reviewId;
@override@JsonKey(name: 'review_status') final  String? reviewStatus;
@override final  String? remarks;
@override@JsonKey(name: 'reviewed_at') final  DateTime? reviewedAt;
@override@JsonKey(name: 'users') final  AdmissionReviewer? reviewer;

/// Create a copy of AdmissionReview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionReviewCopyWith<_AdmissionReview> get copyWith => __$AdmissionReviewCopyWithImpl<_AdmissionReview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionReviewToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionReview&&(identical(other.reviewId, reviewId) || other.reviewId == reviewId)&&(identical(other.reviewStatus, reviewStatus) || other.reviewStatus == reviewStatus)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.reviewer, reviewer) || other.reviewer == reviewer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,reviewId,reviewStatus,remarks,reviewedAt,reviewer);
}

@override
String toString() {
    return 'AdmissionReview(reviewId: $reviewId, reviewStatus: $reviewStatus, remarks: $remarks, reviewedAt: $reviewedAt, reviewer: $reviewer)';
}


}

/// @nodoc
abstract mixin class _$AdmissionReviewCopyWith<$Res> implements $AdmissionReviewCopyWith<$Res> {
  factory _$AdmissionReviewCopyWith(_AdmissionReview value, $Res Function(_AdmissionReview) _then) = __$AdmissionReviewCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'review_id') String? reviewId,@JsonKey(name: 'review_status') String? reviewStatus, String? remarks,@JsonKey(name: 'reviewed_at') DateTime? reviewedAt,@JsonKey(name: 'users') AdmissionReviewer? reviewer
});


@override $AdmissionReviewerCopyWith<$Res>? get reviewer;

}
/// @nodoc
class __$AdmissionReviewCopyWithImpl<$Res>
    implements _$AdmissionReviewCopyWith<$Res> {
  __$AdmissionReviewCopyWithImpl(this._self, this._then);

  final _AdmissionReview _self;
  final $Res Function(_AdmissionReview) _then;

/// Create a copy of AdmissionReview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reviewId = freezed,Object? reviewStatus = freezed,Object? remarks = freezed,Object? reviewedAt = freezed,Object? reviewer = freezed,}) {
  return _then(_AdmissionReview(
reviewId: freezed == reviewId ? _self.reviewId : reviewId // ignore: cast_nullable_to_non_nullable
as String?,reviewStatus: freezed == reviewStatus ? _self.reviewStatus : reviewStatus // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reviewer: freezed == reviewer ? _self.reviewer : reviewer // ignore: cast_nullable_to_non_nullable
as AdmissionReviewer?,
  ));
}

/// Create a copy of AdmissionReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdmissionReviewerCopyWith<$Res>? get reviewer {
    if (_self.reviewer == null) {
    return null;
  }

  return $AdmissionReviewerCopyWith<$Res>(_self.reviewer!, (value) {
    return _then(_self.copyWith(reviewer: value));
  });
}
}


/// @nodoc
mixin _$AdmissionApplicationRow {

@JsonKey(name: 'application_id') String get applicationId;@JsonKey(name: 'application_no') String? get applicationNo;@JsonKey(name: 'application_status') String? get applicationStatus;@JsonKey(name: 'payment_status') String? get paymentStatus;@JsonKey(name: 'registration_fee')@NullableDecimalConverter() Decimal? get registrationFee;@JsonKey(name: 'submitted_at') DateTime? get submittedAt;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;@JsonKey(name: 'called_for_interview') bool? get calledForInterview;@JsonKey(name: 'called_for_interview_at') DateTime? get calledForInterviewAt;@JsonKey(name: 'is_qualified') bool? get isQualified;@JsonKey(name: 'qualified_at') DateTime? get qualifiedAt;@JsonKey(name: 'is_selected_final') bool? get isSelectedFinal;@JsonKey(name: 'selected_at') DateTime? get selectedAt;@JsonKey(name: 'registered_at') DateTime? get registeredAt;@JsonKey(name: 'classes') ClassRef? get classRef;@JsonKey(name: 'academic_sessions') SessionRef? get session;@JsonKey(name: 'institutions') InstitutionRef? get institution;@JsonKey(name: 'applicants') AdmissionApplicantBrief? get applicant; List<AdmissionParentBrief> get parents;@JsonKey(name: 'interview_schedules') List<AdmissionInterviewSchedule> get interviewSchedules;@JsonKey(name: 'interview_attendance') List<AdmissionInterviewAttendance> get interviewAttendance;@JsonKey(name: 'admission_reviews') List<AdmissionReview> get reviews;
/// Create a copy of AdmissionApplicationRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionApplicationRowCopyWith<AdmissionApplicationRow> get copyWith => _$AdmissionApplicationRowCopyWithImpl<AdmissionApplicationRow>(this as AdmissionApplicationRow, _$identity);

  /// Serializes this AdmissionApplicationRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionApplicationRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionApplicationRow&&(identical(other.applicationId, _this.applicationId) || other.applicationId == _this.applicationId)&&(identical(other.applicationNo, _this.applicationNo) || other.applicationNo == _this.applicationNo)&&(identical(other.applicationStatus, _this.applicationStatus) || other.applicationStatus == _this.applicationStatus)&&(identical(other.paymentStatus, _this.paymentStatus) || other.paymentStatus == _this.paymentStatus)&&(identical(other.registrationFee, _this.registrationFee) || other.registrationFee == _this.registrationFee)&&(identical(other.submittedAt, _this.submittedAt) || other.submittedAt == _this.submittedAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.calledForInterview, _this.calledForInterview) || other.calledForInterview == _this.calledForInterview)&&(identical(other.calledForInterviewAt, _this.calledForInterviewAt) || other.calledForInterviewAt == _this.calledForInterviewAt)&&(identical(other.isQualified, _this.isQualified) || other.isQualified == _this.isQualified)&&(identical(other.qualifiedAt, _this.qualifiedAt) || other.qualifiedAt == _this.qualifiedAt)&&(identical(other.isSelectedFinal, _this.isSelectedFinal) || other.isSelectedFinal == _this.isSelectedFinal)&&(identical(other.selectedAt, _this.selectedAt) || other.selectedAt == _this.selectedAt)&&(identical(other.registeredAt, _this.registeredAt) || other.registeredAt == _this.registeredAt)&&(identical(other.classRef, _this.classRef) || other.classRef == _this.classRef)&&(identical(other.session, _this.session) || other.session == _this.session)&&(identical(other.institution, _this.institution) || other.institution == _this.institution)&&(identical(other.applicant, _this.applicant) || other.applicant == _this.applicant)&&const DeepCollectionEquality().equals(other.parents, _this.parents)&&const DeepCollectionEquality().equals(other.interviewSchedules, _this.interviewSchedules)&&const DeepCollectionEquality().equals(other.interviewAttendance, _this.interviewAttendance)&&const DeepCollectionEquality().equals(other.reviews, _this.reviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionApplicationRow;
  return Object.hashAll([runtimeType,_this.applicationId,_this.applicationNo,_this.applicationStatus,_this.paymentStatus,_this.registrationFee,_this.submittedAt,_this.createdAt,_this.updatedAt,_this.calledForInterview,_this.calledForInterviewAt,_this.isQualified,_this.qualifiedAt,_this.isSelectedFinal,_this.selectedAt,_this.registeredAt,_this.classRef,_this.session,_this.institution,_this.applicant,const DeepCollectionEquality().hash(_this.parents),const DeepCollectionEquality().hash(_this.interviewSchedules),const DeepCollectionEquality().hash(_this.interviewAttendance),const DeepCollectionEquality().hash(_this.reviews)]);
}

@override
String toString() {
  final _this = this as AdmissionApplicationRow;
  return 'AdmissionApplicationRow(applicationId: ${_this.applicationId}, applicationNo: ${_this.applicationNo}, applicationStatus: ${_this.applicationStatus}, paymentStatus: ${_this.paymentStatus}, registrationFee: ${_this.registrationFee}, submittedAt: ${_this.submittedAt}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, calledForInterview: ${_this.calledForInterview}, calledForInterviewAt: ${_this.calledForInterviewAt}, isQualified: ${_this.isQualified}, qualifiedAt: ${_this.qualifiedAt}, isSelectedFinal: ${_this.isSelectedFinal}, selectedAt: ${_this.selectedAt}, registeredAt: ${_this.registeredAt}, classRef: ${_this.classRef}, session: ${_this.session}, institution: ${_this.institution}, applicant: ${_this.applicant}, parents: ${_this.parents}, interviewSchedules: ${_this.interviewSchedules}, interviewAttendance: ${_this.interviewAttendance}, reviews: ${_this.reviews})';
}


}

/// @nodoc
abstract mixin class $AdmissionApplicationRowCopyWith<$Res>  {
  factory $AdmissionApplicationRowCopyWith(AdmissionApplicationRow value, $Res Function(AdmissionApplicationRow) _then) = _$AdmissionApplicationRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'application_id') String applicationId,@JsonKey(name: 'application_no') String? applicationNo,@JsonKey(name: 'application_status') String? applicationStatus,@JsonKey(name: 'payment_status') String? paymentStatus,@JsonKey(name: 'registration_fee')@NullableDecimalConverter() Decimal? registrationFee,@JsonKey(name: 'submitted_at') DateTime? submittedAt,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'called_for_interview') bool? calledForInterview,@JsonKey(name: 'called_for_interview_at') DateTime? calledForInterviewAt,@JsonKey(name: 'is_qualified') bool? isQualified,@JsonKey(name: 'qualified_at') DateTime? qualifiedAt,@JsonKey(name: 'is_selected_final') bool? isSelectedFinal,@JsonKey(name: 'selected_at') DateTime? selectedAt,@JsonKey(name: 'registered_at') DateTime? registeredAt,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'academic_sessions') SessionRef? session,@JsonKey(name: 'institutions') InstitutionRef? institution,@JsonKey(name: 'applicants') AdmissionApplicantBrief? applicant, List<AdmissionParentBrief> parents,@JsonKey(name: 'interview_schedules') List<AdmissionInterviewSchedule> interviewSchedules,@JsonKey(name: 'interview_attendance') List<AdmissionInterviewAttendance> interviewAttendance,@JsonKey(name: 'admission_reviews') List<AdmissionReview> reviews
});


$ClassRefCopyWith<$Res>? get classRef;$SessionRefCopyWith<$Res>? get session;$InstitutionRefCopyWith<$Res>? get institution;$AdmissionApplicantBriefCopyWith<$Res>? get applicant;

}
/// @nodoc
class _$AdmissionApplicationRowCopyWithImpl<$Res>
    implements $AdmissionApplicationRowCopyWith<$Res> {
  _$AdmissionApplicationRowCopyWithImpl(this._self, this._then);

  final AdmissionApplicationRow _self;
  final $Res Function(AdmissionApplicationRow) _then;

/// Create a copy of AdmissionApplicationRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? applicationId = null,Object? applicationNo = freezed,Object? applicationStatus = freezed,Object? paymentStatus = freezed,Object? registrationFee = freezed,Object? submittedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? calledForInterview = freezed,Object? calledForInterviewAt = freezed,Object? isQualified = freezed,Object? qualifiedAt = freezed,Object? isSelectedFinal = freezed,Object? selectedAt = freezed,Object? registeredAt = freezed,Object? classRef = freezed,Object? session = freezed,Object? institution = freezed,Object? applicant = freezed,Object? parents = null,Object? interviewSchedules = null,Object? interviewAttendance = null,Object? reviews = null,}) {
  return _then(AdmissionApplicationRow(
applicationId: null == applicationId ? _self.applicationId : applicationId // ignore: cast_nullable_to_non_nullable
as String,applicationNo: freezed == applicationNo ? _self.applicationNo : applicationNo // ignore: cast_nullable_to_non_nullable
as String?,applicationStatus: freezed == applicationStatus ? _self.applicationStatus : applicationStatus // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,registrationFee: freezed == registrationFee ? _self.registrationFee : registrationFee // ignore: cast_nullable_to_non_nullable
as Decimal?,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,calledForInterview: freezed == calledForInterview ? _self.calledForInterview : calledForInterview // ignore: cast_nullable_to_non_nullable
as bool?,calledForInterviewAt: freezed == calledForInterviewAt ? _self.calledForInterviewAt : calledForInterviewAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isQualified: freezed == isQualified ? _self.isQualified : isQualified // ignore: cast_nullable_to_non_nullable
as bool?,qualifiedAt: freezed == qualifiedAt ? _self.qualifiedAt : qualifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isSelectedFinal: freezed == isSelectedFinal ? _self.isSelectedFinal : isSelectedFinal // ignore: cast_nullable_to_non_nullable
as bool?,selectedAt: freezed == selectedAt ? _self.selectedAt : selectedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,registeredAt: freezed == registeredAt ? _self.registeredAt : registeredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,institution: freezed == institution ? _self.institution : institution // ignore: cast_nullable_to_non_nullable
as InstitutionRef?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as AdmissionApplicantBrief?,parents: null == parents ? _self.parents : parents // ignore: cast_nullable_to_non_nullable
as List<AdmissionParentBrief>,interviewSchedules: null == interviewSchedules ? _self.interviewSchedules : interviewSchedules // ignore: cast_nullable_to_non_nullable
as List<AdmissionInterviewSchedule>,interviewAttendance: null == interviewAttendance ? _self.interviewAttendance : interviewAttendance // ignore: cast_nullable_to_non_nullable
as List<AdmissionInterviewAttendance>,reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<AdmissionReview>,
  ));
}
/// Create a copy of AdmissionApplicationRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get classRef {
    if (_self.classRef == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.classRef!, (value) {
    return _then(_self.copyWith(classRef: value));
  });
}/// Create a copy of AdmissionApplicationRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionRefCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $SessionRefCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}/// Create a copy of AdmissionApplicationRow
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
}/// Create a copy of AdmissionApplicationRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdmissionApplicantBriefCopyWith<$Res>? get applicant {
    if (_self.applicant == null) {
    return null;
  }

  return $AdmissionApplicantBriefCopyWith<$Res>(_self.applicant!, (value) {
    return _then(_self.copyWith(applicant: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdmissionApplicationRow].
extension AdmissionApplicationRowPatterns on AdmissionApplicationRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionApplicationRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionApplicationRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionApplicationRow value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionApplicationRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionApplicationRow value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionApplicationRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'application_id')  String applicationId, @JsonKey(name: 'application_no')  String? applicationNo, @JsonKey(name: 'application_status')  String? applicationStatus, @JsonKey(name: 'payment_status')  String? paymentStatus, @JsonKey(name: 'registration_fee')@NullableDecimalConverter()  Decimal? registrationFee, @JsonKey(name: 'submitted_at')  DateTime? submittedAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'called_for_interview')  bool? calledForInterview, @JsonKey(name: 'called_for_interview_at')  DateTime? calledForInterviewAt, @JsonKey(name: 'is_qualified')  bool? isQualified, @JsonKey(name: 'qualified_at')  DateTime? qualifiedAt, @JsonKey(name: 'is_selected_final')  bool? isSelectedFinal, @JsonKey(name: 'selected_at')  DateTime? selectedAt, @JsonKey(name: 'registered_at')  DateTime? registeredAt, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'academic_sessions')  SessionRef? session, @JsonKey(name: 'institutions')  InstitutionRef? institution, @JsonKey(name: 'applicants')  AdmissionApplicantBrief? applicant,  List<AdmissionParentBrief> parents, @JsonKey(name: 'interview_schedules')  List<AdmissionInterviewSchedule> interviewSchedules, @JsonKey(name: 'interview_attendance')  List<AdmissionInterviewAttendance> interviewAttendance, @JsonKey(name: 'admission_reviews')  List<AdmissionReview> reviews)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionApplicationRow() when $default != null:
return $default(_that.applicationId,_that.applicationNo,_that.applicationStatus,_that.paymentStatus,_that.registrationFee,_that.submittedAt,_that.createdAt,_that.updatedAt,_that.calledForInterview,_that.calledForInterviewAt,_that.isQualified,_that.qualifiedAt,_that.isSelectedFinal,_that.selectedAt,_that.registeredAt,_that.classRef,_that.session,_that.institution,_that.applicant,_that.parents,_that.interviewSchedules,_that.interviewAttendance,_that.reviews);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'application_id')  String applicationId, @JsonKey(name: 'application_no')  String? applicationNo, @JsonKey(name: 'application_status')  String? applicationStatus, @JsonKey(name: 'payment_status')  String? paymentStatus, @JsonKey(name: 'registration_fee')@NullableDecimalConverter()  Decimal? registrationFee, @JsonKey(name: 'submitted_at')  DateTime? submittedAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'called_for_interview')  bool? calledForInterview, @JsonKey(name: 'called_for_interview_at')  DateTime? calledForInterviewAt, @JsonKey(name: 'is_qualified')  bool? isQualified, @JsonKey(name: 'qualified_at')  DateTime? qualifiedAt, @JsonKey(name: 'is_selected_final')  bool? isSelectedFinal, @JsonKey(name: 'selected_at')  DateTime? selectedAt, @JsonKey(name: 'registered_at')  DateTime? registeredAt, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'academic_sessions')  SessionRef? session, @JsonKey(name: 'institutions')  InstitutionRef? institution, @JsonKey(name: 'applicants')  AdmissionApplicantBrief? applicant,  List<AdmissionParentBrief> parents, @JsonKey(name: 'interview_schedules')  List<AdmissionInterviewSchedule> interviewSchedules, @JsonKey(name: 'interview_attendance')  List<AdmissionInterviewAttendance> interviewAttendance, @JsonKey(name: 'admission_reviews')  List<AdmissionReview> reviews)  $default,) {final _that = this;
switch (_that) {
case _AdmissionApplicationRow():
return $default(_that.applicationId,_that.applicationNo,_that.applicationStatus,_that.paymentStatus,_that.registrationFee,_that.submittedAt,_that.createdAt,_that.updatedAt,_that.calledForInterview,_that.calledForInterviewAt,_that.isQualified,_that.qualifiedAt,_that.isSelectedFinal,_that.selectedAt,_that.registeredAt,_that.classRef,_that.session,_that.institution,_that.applicant,_that.parents,_that.interviewSchedules,_that.interviewAttendance,_that.reviews);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'application_id')  String applicationId, @JsonKey(name: 'application_no')  String? applicationNo, @JsonKey(name: 'application_status')  String? applicationStatus, @JsonKey(name: 'payment_status')  String? paymentStatus, @JsonKey(name: 'registration_fee')@NullableDecimalConverter()  Decimal? registrationFee, @JsonKey(name: 'submitted_at')  DateTime? submittedAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'called_for_interview')  bool? calledForInterview, @JsonKey(name: 'called_for_interview_at')  DateTime? calledForInterviewAt, @JsonKey(name: 'is_qualified')  bool? isQualified, @JsonKey(name: 'qualified_at')  DateTime? qualifiedAt, @JsonKey(name: 'is_selected_final')  bool? isSelectedFinal, @JsonKey(name: 'selected_at')  DateTime? selectedAt, @JsonKey(name: 'registered_at')  DateTime? registeredAt, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'academic_sessions')  SessionRef? session, @JsonKey(name: 'institutions')  InstitutionRef? institution, @JsonKey(name: 'applicants')  AdmissionApplicantBrief? applicant,  List<AdmissionParentBrief> parents, @JsonKey(name: 'interview_schedules')  List<AdmissionInterviewSchedule> interviewSchedules, @JsonKey(name: 'interview_attendance')  List<AdmissionInterviewAttendance> interviewAttendance, @JsonKey(name: 'admission_reviews')  List<AdmissionReview> reviews)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionApplicationRow() when $default != null:
return $default(_that.applicationId,_that.applicationNo,_that.applicationStatus,_that.paymentStatus,_that.registrationFee,_that.submittedAt,_that.createdAt,_that.updatedAt,_that.calledForInterview,_that.calledForInterviewAt,_that.isQualified,_that.qualifiedAt,_that.isSelectedFinal,_that.selectedAt,_that.registeredAt,_that.classRef,_that.session,_that.institution,_that.applicant,_that.parents,_that.interviewSchedules,_that.interviewAttendance,_that.reviews);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionApplicationRow implements AdmissionApplicationRow {
  const _AdmissionApplicationRow({@JsonKey(name: 'application_id') required this.applicationId, @JsonKey(name: 'application_no') this.applicationNo, @JsonKey(name: 'application_status') this.applicationStatus, @JsonKey(name: 'payment_status') this.paymentStatus, @JsonKey(name: 'registration_fee')@NullableDecimalConverter() this.registrationFee, @JsonKey(name: 'submitted_at') this.submittedAt, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'called_for_interview') this.calledForInterview, @JsonKey(name: 'called_for_interview_at') this.calledForInterviewAt, @JsonKey(name: 'is_qualified') this.isQualified, @JsonKey(name: 'qualified_at') this.qualifiedAt, @JsonKey(name: 'is_selected_final') this.isSelectedFinal, @JsonKey(name: 'selected_at') this.selectedAt, @JsonKey(name: 'registered_at') this.registeredAt, @JsonKey(name: 'classes') this.classRef, @JsonKey(name: 'academic_sessions') this.session, @JsonKey(name: 'institutions') this.institution, @JsonKey(name: 'applicants') this.applicant,  List<AdmissionParentBrief> parents = const <AdmissionParentBrief>[], @JsonKey(name: 'interview_schedules')  List<AdmissionInterviewSchedule> interviewSchedules = const <AdmissionInterviewSchedule>[], @JsonKey(name: 'interview_attendance')  List<AdmissionInterviewAttendance> interviewAttendance = const <AdmissionInterviewAttendance>[], @JsonKey(name: 'admission_reviews')  List<AdmissionReview> reviews = const <AdmissionReview>[]}): _parents = parents,_interviewSchedules = interviewSchedules,_interviewAttendance = interviewAttendance,_reviews = reviews;
  factory _AdmissionApplicationRow.fromJson(Map<String, dynamic> json) => _$AdmissionApplicationRowFromJson(json);

@override@JsonKey(name: 'application_id') final  String applicationId;
@override@JsonKey(name: 'application_no') final  String? applicationNo;
@override@JsonKey(name: 'application_status') final  String? applicationStatus;
@override@JsonKey(name: 'payment_status') final  String? paymentStatus;
@override@JsonKey(name: 'registration_fee')@NullableDecimalConverter() final  Decimal? registrationFee;
@override@JsonKey(name: 'submitted_at') final  DateTime? submittedAt;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
@override@JsonKey(name: 'called_for_interview') final  bool? calledForInterview;
@override@JsonKey(name: 'called_for_interview_at') final  DateTime? calledForInterviewAt;
@override@JsonKey(name: 'is_qualified') final  bool? isQualified;
@override@JsonKey(name: 'qualified_at') final  DateTime? qualifiedAt;
@override@JsonKey(name: 'is_selected_final') final  bool? isSelectedFinal;
@override@JsonKey(name: 'selected_at') final  DateTime? selectedAt;
@override@JsonKey(name: 'registered_at') final  DateTime? registeredAt;
@override@JsonKey(name: 'classes') final  ClassRef? classRef;
@override@JsonKey(name: 'academic_sessions') final  SessionRef? session;
@override@JsonKey(name: 'institutions') final  InstitutionRef? institution;
@override@JsonKey(name: 'applicants') final  AdmissionApplicantBrief? applicant;
 final  List<AdmissionParentBrief> _parents;
@override@JsonKey() List<AdmissionParentBrief> get parents {
  if (_parents is EqualUnmodifiableListView) return _parents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parents);
}

 final  List<AdmissionInterviewSchedule> _interviewSchedules;
@override@JsonKey(name: 'interview_schedules') List<AdmissionInterviewSchedule> get interviewSchedules {
  if (_interviewSchedules is EqualUnmodifiableListView) return _interviewSchedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interviewSchedules);
}

 final  List<AdmissionInterviewAttendance> _interviewAttendance;
@override@JsonKey(name: 'interview_attendance') List<AdmissionInterviewAttendance> get interviewAttendance {
  if (_interviewAttendance is EqualUnmodifiableListView) return _interviewAttendance;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interviewAttendance);
}

 final  List<AdmissionReview> _reviews;
@override@JsonKey(name: 'admission_reviews') List<AdmissionReview> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}


/// Create a copy of AdmissionApplicationRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionApplicationRowCopyWith<_AdmissionApplicationRow> get copyWith => __$AdmissionApplicationRowCopyWithImpl<_AdmissionApplicationRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionApplicationRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionApplicationRow&&(identical(other.applicationId, applicationId) || other.applicationId == applicationId)&&(identical(other.applicationNo, applicationNo) || other.applicationNo == applicationNo)&&(identical(other.applicationStatus, applicationStatus) || other.applicationStatus == applicationStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.registrationFee, registrationFee) || other.registrationFee == registrationFee)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.calledForInterview, calledForInterview) || other.calledForInterview == calledForInterview)&&(identical(other.calledForInterviewAt, calledForInterviewAt) || other.calledForInterviewAt == calledForInterviewAt)&&(identical(other.isQualified, isQualified) || other.isQualified == isQualified)&&(identical(other.qualifiedAt, qualifiedAt) || other.qualifiedAt == qualifiedAt)&&(identical(other.isSelectedFinal, isSelectedFinal) || other.isSelectedFinal == isSelectedFinal)&&(identical(other.selectedAt, selectedAt) || other.selectedAt == selectedAt)&&(identical(other.registeredAt, registeredAt) || other.registeredAt == registeredAt)&&(identical(other.classRef, classRef) || other.classRef == classRef)&&(identical(other.session, session) || other.session == session)&&(identical(other.institution, institution) || other.institution == institution)&&(identical(other.applicant, applicant) || other.applicant == applicant)&&const DeepCollectionEquality().equals(other.parents, _parents)&&const DeepCollectionEquality().equals(other.interviewSchedules, _interviewSchedules)&&const DeepCollectionEquality().equals(other.interviewAttendance, _interviewAttendance)&&const DeepCollectionEquality().equals(other.reviews, _reviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,applicationId,applicationNo,applicationStatus,paymentStatus,registrationFee,submittedAt,createdAt,updatedAt,calledForInterview,calledForInterviewAt,isQualified,qualifiedAt,isSelectedFinal,selectedAt,registeredAt,classRef,session,institution,applicant,const DeepCollectionEquality().hash(_parents),const DeepCollectionEquality().hash(_interviewSchedules),const DeepCollectionEquality().hash(_interviewAttendance),const DeepCollectionEquality().hash(_reviews)]);
}

@override
String toString() {
    return 'AdmissionApplicationRow(applicationId: $applicationId, applicationNo: $applicationNo, applicationStatus: $applicationStatus, paymentStatus: $paymentStatus, registrationFee: $registrationFee, submittedAt: $submittedAt, createdAt: $createdAt, updatedAt: $updatedAt, calledForInterview: $calledForInterview, calledForInterviewAt: $calledForInterviewAt, isQualified: $isQualified, qualifiedAt: $qualifiedAt, isSelectedFinal: $isSelectedFinal, selectedAt: $selectedAt, registeredAt: $registeredAt, classRef: $classRef, session: $session, institution: $institution, applicant: $applicant, parents: $parents, interviewSchedules: $interviewSchedules, interviewAttendance: $interviewAttendance, reviews: $reviews)';
}


}

/// @nodoc
abstract mixin class _$AdmissionApplicationRowCopyWith<$Res> implements $AdmissionApplicationRowCopyWith<$Res> {
  factory _$AdmissionApplicationRowCopyWith(_AdmissionApplicationRow value, $Res Function(_AdmissionApplicationRow) _then) = __$AdmissionApplicationRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'application_id') String applicationId,@JsonKey(name: 'application_no') String? applicationNo,@JsonKey(name: 'application_status') String? applicationStatus,@JsonKey(name: 'payment_status') String? paymentStatus,@JsonKey(name: 'registration_fee')@NullableDecimalConverter() Decimal? registrationFee,@JsonKey(name: 'submitted_at') DateTime? submittedAt,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'called_for_interview') bool? calledForInterview,@JsonKey(name: 'called_for_interview_at') DateTime? calledForInterviewAt,@JsonKey(name: 'is_qualified') bool? isQualified,@JsonKey(name: 'qualified_at') DateTime? qualifiedAt,@JsonKey(name: 'is_selected_final') bool? isSelectedFinal,@JsonKey(name: 'selected_at') DateTime? selectedAt,@JsonKey(name: 'registered_at') DateTime? registeredAt,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'academic_sessions') SessionRef? session,@JsonKey(name: 'institutions') InstitutionRef? institution,@JsonKey(name: 'applicants') AdmissionApplicantBrief? applicant, List<AdmissionParentBrief> parents,@JsonKey(name: 'interview_schedules') List<AdmissionInterviewSchedule> interviewSchedules,@JsonKey(name: 'interview_attendance') List<AdmissionInterviewAttendance> interviewAttendance,@JsonKey(name: 'admission_reviews') List<AdmissionReview> reviews
});


@override $ClassRefCopyWith<$Res>? get classRef;@override $SessionRefCopyWith<$Res>? get session;@override $InstitutionRefCopyWith<$Res>? get institution;@override $AdmissionApplicantBriefCopyWith<$Res>? get applicant;

}
/// @nodoc
class __$AdmissionApplicationRowCopyWithImpl<$Res>
    implements _$AdmissionApplicationRowCopyWith<$Res> {
  __$AdmissionApplicationRowCopyWithImpl(this._self, this._then);

  final _AdmissionApplicationRow _self;
  final $Res Function(_AdmissionApplicationRow) _then;

/// Create a copy of AdmissionApplicationRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? applicationId = null,Object? applicationNo = freezed,Object? applicationStatus = freezed,Object? paymentStatus = freezed,Object? registrationFee = freezed,Object? submittedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? calledForInterview = freezed,Object? calledForInterviewAt = freezed,Object? isQualified = freezed,Object? qualifiedAt = freezed,Object? isSelectedFinal = freezed,Object? selectedAt = freezed,Object? registeredAt = freezed,Object? classRef = freezed,Object? session = freezed,Object? institution = freezed,Object? applicant = freezed,Object? parents = null,Object? interviewSchedules = null,Object? interviewAttendance = null,Object? reviews = null,}) {
  return _then(_AdmissionApplicationRow(
applicationId: null == applicationId ? _self.applicationId : applicationId // ignore: cast_nullable_to_non_nullable
as String,applicationNo: freezed == applicationNo ? _self.applicationNo : applicationNo // ignore: cast_nullable_to_non_nullable
as String?,applicationStatus: freezed == applicationStatus ? _self.applicationStatus : applicationStatus // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,registrationFee: freezed == registrationFee ? _self.registrationFee : registrationFee // ignore: cast_nullable_to_non_nullable
as Decimal?,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,calledForInterview: freezed == calledForInterview ? _self.calledForInterview : calledForInterview // ignore: cast_nullable_to_non_nullable
as bool?,calledForInterviewAt: freezed == calledForInterviewAt ? _self.calledForInterviewAt : calledForInterviewAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isQualified: freezed == isQualified ? _self.isQualified : isQualified // ignore: cast_nullable_to_non_nullable
as bool?,qualifiedAt: freezed == qualifiedAt ? _self.qualifiedAt : qualifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isSelectedFinal: freezed == isSelectedFinal ? _self.isSelectedFinal : isSelectedFinal // ignore: cast_nullable_to_non_nullable
as bool?,selectedAt: freezed == selectedAt ? _self.selectedAt : selectedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,registeredAt: freezed == registeredAt ? _self.registeredAt : registeredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,institution: freezed == institution ? _self.institution : institution // ignore: cast_nullable_to_non_nullable
as InstitutionRef?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as AdmissionApplicantBrief?,parents: null == parents ? _self._parents : parents // ignore: cast_nullable_to_non_nullable
as List<AdmissionParentBrief>,interviewSchedules: null == interviewSchedules ? _self._interviewSchedules : interviewSchedules // ignore: cast_nullable_to_non_nullable
as List<AdmissionInterviewSchedule>,interviewAttendance: null == interviewAttendance ? _self._interviewAttendance : interviewAttendance // ignore: cast_nullable_to_non_nullable
as List<AdmissionInterviewAttendance>,reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<AdmissionReview>,
  ));
}

/// Create a copy of AdmissionApplicationRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get classRef {
    if (_self.classRef == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.classRef!, (value) {
    return _then(_self.copyWith(classRef: value));
  });
}/// Create a copy of AdmissionApplicationRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionRefCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $SessionRefCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}/// Create a copy of AdmissionApplicationRow
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
}/// Create a copy of AdmissionApplicationRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdmissionApplicantBriefCopyWith<$Res>? get applicant {
    if (_self.applicant == null) {
    return null;
  }

  return $AdmissionApplicantBriefCopyWith<$Res>(_self.applicant!, (value) {
    return _then(_self.copyWith(applicant: value));
  });
}
}


/// @nodoc
mixin _$AdmissionApplicationPage {

 int get total; int get page; int get limit; List<AdmissionApplicationRow> get data;
/// Create a copy of AdmissionApplicationPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionApplicationPageCopyWith<AdmissionApplicationPage> get copyWith => _$AdmissionApplicationPageCopyWithImpl<AdmissionApplicationPage>(this as AdmissionApplicationPage, _$identity);

  /// Serializes this AdmissionApplicationPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionApplicationPage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionApplicationPage&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.limit, _this.limit) || other.limit == _this.limit)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionApplicationPage;
  return Object.hash(runtimeType,_this.total,_this.page,_this.limit,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as AdmissionApplicationPage;
  return 'AdmissionApplicationPage(total: ${_this.total}, page: ${_this.page}, limit: ${_this.limit}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $AdmissionApplicationPageCopyWith<$Res>  {
  factory $AdmissionApplicationPageCopyWith(AdmissionApplicationPage value, $Res Function(AdmissionApplicationPage) _then) = _$AdmissionApplicationPageCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, List<AdmissionApplicationRow> data
});




}
/// @nodoc
class _$AdmissionApplicationPageCopyWithImpl<$Res>
    implements $AdmissionApplicationPageCopyWith<$Res> {
  _$AdmissionApplicationPageCopyWithImpl(this._self, this._then);

  final AdmissionApplicationPage _self;
  final $Res Function(AdmissionApplicationPage) _then;

/// Create a copy of AdmissionApplicationPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(AdmissionApplicationPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AdmissionApplicationRow>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionApplicationPage].
extension AdmissionApplicationPagePatterns on AdmissionApplicationPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionApplicationPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionApplicationPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionApplicationPage value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionApplicationPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionApplicationPage value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionApplicationPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<AdmissionApplicationRow> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionApplicationPage() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<AdmissionApplicationRow> data)  $default,) {final _that = this;
switch (_that) {
case _AdmissionApplicationPage():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int limit,  List<AdmissionApplicationRow> data)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionApplicationPage() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionApplicationPage implements AdmissionApplicationPage {
  const _AdmissionApplicationPage({this.total = 0, this.page = 1, this.limit = 20,  List<AdmissionApplicationRow> data = const <AdmissionApplicationRow>[]}): _data = data;
  factory _AdmissionApplicationPage.fromJson(Map<String, dynamic> json) => _$AdmissionApplicationPageFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
 final  List<AdmissionApplicationRow> _data;
@override@JsonKey() List<AdmissionApplicationRow> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of AdmissionApplicationPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionApplicationPageCopyWith<_AdmissionApplicationPage> get copyWith => __$AdmissionApplicationPageCopyWithImpl<_AdmissionApplicationPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionApplicationPageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionApplicationPage&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,page,limit,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'AdmissionApplicationPage(total: $total, page: $page, limit: $limit, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AdmissionApplicationPageCopyWith<$Res> implements $AdmissionApplicationPageCopyWith<$Res> {
  factory _$AdmissionApplicationPageCopyWith(_AdmissionApplicationPage value, $Res Function(_AdmissionApplicationPage) _then) = __$AdmissionApplicationPageCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, List<AdmissionApplicationRow> data
});




}
/// @nodoc
class __$AdmissionApplicationPageCopyWithImpl<$Res>
    implements _$AdmissionApplicationPageCopyWith<$Res> {
  __$AdmissionApplicationPageCopyWithImpl(this._self, this._then);

  final _AdmissionApplicationPage _self;
  final $Res Function(_AdmissionApplicationPage) _then;

/// Create a copy of AdmissionApplicationPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(_AdmissionApplicationPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AdmissionApplicationRow>,
  ));
}


}


/// @nodoc
mixin _$AdmissionCategoryRef {

@JsonKey(name: 'category_id') String? get categoryId;@JsonKey(name: 'category_name') String? get categoryName;
/// Create a copy of AdmissionCategoryRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionCategoryRefCopyWith<AdmissionCategoryRef> get copyWith => _$AdmissionCategoryRefCopyWithImpl<AdmissionCategoryRef>(this as AdmissionCategoryRef, _$identity);

  /// Serializes this AdmissionCategoryRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionCategoryRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionCategoryRef&&(identical(other.categoryId, _this.categoryId) || other.categoryId == _this.categoryId)&&(identical(other.categoryName, _this.categoryName) || other.categoryName == _this.categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionCategoryRef;
  return Object.hash(runtimeType,_this.categoryId,_this.categoryName);
}

@override
String toString() {
  final _this = this as AdmissionCategoryRef;
  return 'AdmissionCategoryRef(categoryId: ${_this.categoryId}, categoryName: ${_this.categoryName})';
}


}

/// @nodoc
abstract mixin class $AdmissionCategoryRefCopyWith<$Res>  {
  factory $AdmissionCategoryRefCopyWith(AdmissionCategoryRef value, $Res Function(AdmissionCategoryRef) _then) = _$AdmissionCategoryRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'category_id') String? categoryId,@JsonKey(name: 'category_name') String? categoryName
});




}
/// @nodoc
class _$AdmissionCategoryRefCopyWithImpl<$Res>
    implements $AdmissionCategoryRefCopyWith<$Res> {
  _$AdmissionCategoryRefCopyWithImpl(this._self, this._then);

  final AdmissionCategoryRef _self;
  final $Res Function(AdmissionCategoryRef) _then;

/// Create a copy of AdmissionCategoryRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = freezed,Object? categoryName = freezed,}) {
  return _then(AdmissionCategoryRef(
categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionCategoryRef].
extension AdmissionCategoryRefPatterns on AdmissionCategoryRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionCategoryRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionCategoryRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionCategoryRef value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionCategoryRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionCategoryRef value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionCategoryRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'category_id')  String? categoryId, @JsonKey(name: 'category_name')  String? categoryName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionCategoryRef() when $default != null:
return $default(_that.categoryId,_that.categoryName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'category_id')  String? categoryId, @JsonKey(name: 'category_name')  String? categoryName)  $default,) {final _that = this;
switch (_that) {
case _AdmissionCategoryRef():
return $default(_that.categoryId,_that.categoryName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'category_id')  String? categoryId, @JsonKey(name: 'category_name')  String? categoryName)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionCategoryRef() when $default != null:
return $default(_that.categoryId,_that.categoryName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionCategoryRef implements AdmissionCategoryRef {
  const _AdmissionCategoryRef({@JsonKey(name: 'category_id') this.categoryId, @JsonKey(name: 'category_name') this.categoryName});
  factory _AdmissionCategoryRef.fromJson(Map<String, dynamic> json) => _$AdmissionCategoryRefFromJson(json);

@override@JsonKey(name: 'category_id') final  String? categoryId;
@override@JsonKey(name: 'category_name') final  String? categoryName;

/// Create a copy of AdmissionCategoryRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionCategoryRefCopyWith<_AdmissionCategoryRef> get copyWith => __$AdmissionCategoryRefCopyWithImpl<_AdmissionCategoryRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionCategoryRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionCategoryRef&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,categoryId,categoryName);
}

@override
String toString() {
    return 'AdmissionCategoryRef(categoryId: $categoryId, categoryName: $categoryName)';
}


}

/// @nodoc
abstract mixin class _$AdmissionCategoryRefCopyWith<$Res> implements $AdmissionCategoryRefCopyWith<$Res> {
  factory _$AdmissionCategoryRefCopyWith(_AdmissionCategoryRef value, $Res Function(_AdmissionCategoryRef) _then) = __$AdmissionCategoryRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'category_id') String? categoryId,@JsonKey(name: 'category_name') String? categoryName
});




}
/// @nodoc
class __$AdmissionCategoryRefCopyWithImpl<$Res>
    implements _$AdmissionCategoryRefCopyWith<$Res> {
  __$AdmissionCategoryRefCopyWithImpl(this._self, this._then);

  final _AdmissionCategoryRef _self;
  final $Res Function(_AdmissionCategoryRef) _then;

/// Create a copy of AdmissionCategoryRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryId = freezed,Object? categoryName = freezed,}) {
  return _then(_AdmissionCategoryRef(
categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdmissionReligionRef {

@JsonKey(name: 'religion_id') String? get religionId;@JsonKey(name: 'religion_name') String? get religionName;
/// Create a copy of AdmissionReligionRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionReligionRefCopyWith<AdmissionReligionRef> get copyWith => _$AdmissionReligionRefCopyWithImpl<AdmissionReligionRef>(this as AdmissionReligionRef, _$identity);

  /// Serializes this AdmissionReligionRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionReligionRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionReligionRef&&(identical(other.religionId, _this.religionId) || other.religionId == _this.religionId)&&(identical(other.religionName, _this.religionName) || other.religionName == _this.religionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionReligionRef;
  return Object.hash(runtimeType,_this.religionId,_this.religionName);
}

@override
String toString() {
  final _this = this as AdmissionReligionRef;
  return 'AdmissionReligionRef(religionId: ${_this.religionId}, religionName: ${_this.religionName})';
}


}

/// @nodoc
abstract mixin class $AdmissionReligionRefCopyWith<$Res>  {
  factory $AdmissionReligionRefCopyWith(AdmissionReligionRef value, $Res Function(AdmissionReligionRef) _then) = _$AdmissionReligionRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'religion_id') String? religionId,@JsonKey(name: 'religion_name') String? religionName
});




}
/// @nodoc
class _$AdmissionReligionRefCopyWithImpl<$Res>
    implements $AdmissionReligionRefCopyWith<$Res> {
  _$AdmissionReligionRefCopyWithImpl(this._self, this._then);

  final AdmissionReligionRef _self;
  final $Res Function(AdmissionReligionRef) _then;

/// Create a copy of AdmissionReligionRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? religionId = freezed,Object? religionName = freezed,}) {
  return _then(AdmissionReligionRef(
religionId: freezed == religionId ? _self.religionId : religionId // ignore: cast_nullable_to_non_nullable
as String?,religionName: freezed == religionName ? _self.religionName : religionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionReligionRef].
extension AdmissionReligionRefPatterns on AdmissionReligionRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionReligionRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionReligionRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionReligionRef value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionReligionRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionReligionRef value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionReligionRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'religion_id')  String? religionId, @JsonKey(name: 'religion_name')  String? religionName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionReligionRef() when $default != null:
return $default(_that.religionId,_that.religionName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'religion_id')  String? religionId, @JsonKey(name: 'religion_name')  String? religionName)  $default,) {final _that = this;
switch (_that) {
case _AdmissionReligionRef():
return $default(_that.religionId,_that.religionName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'religion_id')  String? religionId, @JsonKey(name: 'religion_name')  String? religionName)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionReligionRef() when $default != null:
return $default(_that.religionId,_that.religionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionReligionRef implements AdmissionReligionRef {
  const _AdmissionReligionRef({@JsonKey(name: 'religion_id') this.religionId, @JsonKey(name: 'religion_name') this.religionName});
  factory _AdmissionReligionRef.fromJson(Map<String, dynamic> json) => _$AdmissionReligionRefFromJson(json);

@override@JsonKey(name: 'religion_id') final  String? religionId;
@override@JsonKey(name: 'religion_name') final  String? religionName;

/// Create a copy of AdmissionReligionRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionReligionRefCopyWith<_AdmissionReligionRef> get copyWith => __$AdmissionReligionRefCopyWithImpl<_AdmissionReligionRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionReligionRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionReligionRef&&(identical(other.religionId, religionId) || other.religionId == religionId)&&(identical(other.religionName, religionName) || other.religionName == religionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,religionId,religionName);
}

@override
String toString() {
    return 'AdmissionReligionRef(religionId: $religionId, religionName: $religionName)';
}


}

/// @nodoc
abstract mixin class _$AdmissionReligionRefCopyWith<$Res> implements $AdmissionReligionRefCopyWith<$Res> {
  factory _$AdmissionReligionRefCopyWith(_AdmissionReligionRef value, $Res Function(_AdmissionReligionRef) _then) = __$AdmissionReligionRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'religion_id') String? religionId,@JsonKey(name: 'religion_name') String? religionName
});




}
/// @nodoc
class __$AdmissionReligionRefCopyWithImpl<$Res>
    implements _$AdmissionReligionRefCopyWith<$Res> {
  __$AdmissionReligionRefCopyWithImpl(this._self, this._then);

  final _AdmissionReligionRef _self;
  final $Res Function(_AdmissionReligionRef) _then;

/// Create a copy of AdmissionReligionRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? religionId = freezed,Object? religionName = freezed,}) {
  return _then(_AdmissionReligionRef(
religionId: freezed == religionId ? _self.religionId : religionId // ignore: cast_nullable_to_non_nullable
as String?,religionName: freezed == religionName ? _self.religionName : religionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdmissionApplicant {

@JsonKey(name: 'applicant_id') String? get applicantId;@JsonKey(name: 'application_id') String? get applicationId;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'middle_name') String? get middleName;@JsonKey(name: 'last_name') String? get lastName; String? get gender; DateTime? get dob;@JsonKey(name: 'blood_group') String? get bloodGroup; String? get nationality;@JsonKey(name: 'aadhaar_no') String? get aadhaarNo;@JsonKey(name: 'birth_certificate_no') String? get birthCertificateNo;@JsonKey(name: 'mother_tongue') String? get motherTongue;@JsonKey(name: 'photo_url') String? get photoUrl; String? get caste;@JsonKey(name: 'contact_no') String? get contactNo;@JsonKey(name: 'email_id') String? get emailId;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'categories') AdmissionCategoryRef? get category;@JsonKey(name: 'religions') AdmissionReligionRef? get religion;@JsonKey(name: 'admission_applications') AdmissionApplicationDetail? get application;
/// Create a copy of AdmissionApplicant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionApplicantCopyWith<AdmissionApplicant> get copyWith => _$AdmissionApplicantCopyWithImpl<AdmissionApplicant>(this as AdmissionApplicant, _$identity);

  /// Serializes this AdmissionApplicant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionApplicant;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionApplicant&&(identical(other.applicantId, _this.applicantId) || other.applicantId == _this.applicantId)&&(identical(other.applicationId, _this.applicationId) || other.applicationId == _this.applicationId)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.middleName, _this.middleName) || other.middleName == _this.middleName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.dob, _this.dob) || other.dob == _this.dob)&&(identical(other.bloodGroup, _this.bloodGroup) || other.bloodGroup == _this.bloodGroup)&&(identical(other.nationality, _this.nationality) || other.nationality == _this.nationality)&&(identical(other.aadhaarNo, _this.aadhaarNo) || other.aadhaarNo == _this.aadhaarNo)&&(identical(other.birthCertificateNo, _this.birthCertificateNo) || other.birthCertificateNo == _this.birthCertificateNo)&&(identical(other.motherTongue, _this.motherTongue) || other.motherTongue == _this.motherTongue)&&(identical(other.photoUrl, _this.photoUrl) || other.photoUrl == _this.photoUrl)&&(identical(other.caste, _this.caste) || other.caste == _this.caste)&&(identical(other.contactNo, _this.contactNo) || other.contactNo == _this.contactNo)&&(identical(other.emailId, _this.emailId) || other.emailId == _this.emailId)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.religion, _this.religion) || other.religion == _this.religion)&&(identical(other.application, _this.application) || other.application == _this.application));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionApplicant;
  return Object.hashAll([runtimeType,_this.applicantId,_this.applicationId,_this.firstName,_this.middleName,_this.lastName,_this.gender,_this.dob,_this.bloodGroup,_this.nationality,_this.aadhaarNo,_this.birthCertificateNo,_this.motherTongue,_this.photoUrl,_this.caste,_this.contactNo,_this.emailId,_this.createdAt,_this.category,_this.religion,_this.application]);
}

@override
String toString() {
  final _this = this as AdmissionApplicant;
  return 'AdmissionApplicant(applicantId: ${_this.applicantId}, applicationId: ${_this.applicationId}, firstName: ${_this.firstName}, middleName: ${_this.middleName}, lastName: ${_this.lastName}, gender: ${_this.gender}, dob: ${_this.dob}, bloodGroup: ${_this.bloodGroup}, nationality: ${_this.nationality}, aadhaarNo: ${_this.aadhaarNo}, birthCertificateNo: ${_this.birthCertificateNo}, motherTongue: ${_this.motherTongue}, photoUrl: ${_this.photoUrl}, caste: ${_this.caste}, contactNo: ${_this.contactNo}, emailId: ${_this.emailId}, createdAt: ${_this.createdAt}, category: ${_this.category}, religion: ${_this.religion}, application: ${_this.application})';
}


}

/// @nodoc
abstract mixin class $AdmissionApplicantCopyWith<$Res>  {
  factory $AdmissionApplicantCopyWith(AdmissionApplicant value, $Res Function(AdmissionApplicant) _then) = _$AdmissionApplicantCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'applicant_id') String? applicantId,@JsonKey(name: 'application_id') String? applicationId,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'middle_name') String? middleName,@JsonKey(name: 'last_name') String? lastName, String? gender, DateTime? dob,@JsonKey(name: 'blood_group') String? bloodGroup, String? nationality,@JsonKey(name: 'aadhaar_no') String? aadhaarNo,@JsonKey(name: 'birth_certificate_no') String? birthCertificateNo,@JsonKey(name: 'mother_tongue') String? motherTongue,@JsonKey(name: 'photo_url') String? photoUrl, String? caste,@JsonKey(name: 'contact_no') String? contactNo,@JsonKey(name: 'email_id') String? emailId,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'categories') AdmissionCategoryRef? category,@JsonKey(name: 'religions') AdmissionReligionRef? religion,@JsonKey(name: 'admission_applications') AdmissionApplicationDetail? application
});


$AdmissionCategoryRefCopyWith<$Res>? get category;$AdmissionReligionRefCopyWith<$Res>? get religion;$AdmissionApplicationDetailCopyWith<$Res>? get application;

}
/// @nodoc
class _$AdmissionApplicantCopyWithImpl<$Res>
    implements $AdmissionApplicantCopyWith<$Res> {
  _$AdmissionApplicantCopyWithImpl(this._self, this._then);

  final AdmissionApplicant _self;
  final $Res Function(AdmissionApplicant) _then;

/// Create a copy of AdmissionApplicant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? applicantId = freezed,Object? applicationId = freezed,Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? gender = freezed,Object? dob = freezed,Object? bloodGroup = freezed,Object? nationality = freezed,Object? aadhaarNo = freezed,Object? birthCertificateNo = freezed,Object? motherTongue = freezed,Object? photoUrl = freezed,Object? caste = freezed,Object? contactNo = freezed,Object? emailId = freezed,Object? createdAt = freezed,Object? category = freezed,Object? religion = freezed,Object? application = freezed,}) {
  return _then(AdmissionApplicant(
applicantId: freezed == applicantId ? _self.applicantId : applicantId // ignore: cast_nullable_to_non_nullable
as String?,applicationId: freezed == applicationId ? _self.applicationId : applicationId // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,bloodGroup: freezed == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String?,nationality: freezed == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String?,aadhaarNo: freezed == aadhaarNo ? _self.aadhaarNo : aadhaarNo // ignore: cast_nullable_to_non_nullable
as String?,birthCertificateNo: freezed == birthCertificateNo ? _self.birthCertificateNo : birthCertificateNo // ignore: cast_nullable_to_non_nullable
as String?,motherTongue: freezed == motherTongue ? _self.motherTongue : motherTongue // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,caste: freezed == caste ? _self.caste : caste // ignore: cast_nullable_to_non_nullable
as String?,contactNo: freezed == contactNo ? _self.contactNo : contactNo // ignore: cast_nullable_to_non_nullable
as String?,emailId: freezed == emailId ? _self.emailId : emailId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as AdmissionCategoryRef?,religion: freezed == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as AdmissionReligionRef?,application: freezed == application ? _self.application : application // ignore: cast_nullable_to_non_nullable
as AdmissionApplicationDetail?,
  ));
}
/// Create a copy of AdmissionApplicant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdmissionCategoryRefCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $AdmissionCategoryRefCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of AdmissionApplicant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdmissionReligionRefCopyWith<$Res>? get religion {
    if (_self.religion == null) {
    return null;
  }

  return $AdmissionReligionRefCopyWith<$Res>(_self.religion!, (value) {
    return _then(_self.copyWith(religion: value));
  });
}/// Create a copy of AdmissionApplicant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdmissionApplicationDetailCopyWith<$Res>? get application {
    if (_self.application == null) {
    return null;
  }

  return $AdmissionApplicationDetailCopyWith<$Res>(_self.application!, (value) {
    return _then(_self.copyWith(application: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdmissionApplicant].
extension AdmissionApplicantPatterns on AdmissionApplicant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionApplicant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionApplicant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionApplicant value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionApplicant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionApplicant value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionApplicant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'applicant_id')  String? applicantId, @JsonKey(name: 'application_id')  String? applicationId, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  DateTime? dob, @JsonKey(name: 'blood_group')  String? bloodGroup,  String? nationality, @JsonKey(name: 'aadhaar_no')  String? aadhaarNo, @JsonKey(name: 'birth_certificate_no')  String? birthCertificateNo, @JsonKey(name: 'mother_tongue')  String? motherTongue, @JsonKey(name: 'photo_url')  String? photoUrl,  String? caste, @JsonKey(name: 'contact_no')  String? contactNo, @JsonKey(name: 'email_id')  String? emailId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'categories')  AdmissionCategoryRef? category, @JsonKey(name: 'religions')  AdmissionReligionRef? religion, @JsonKey(name: 'admission_applications')  AdmissionApplicationDetail? application)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionApplicant() when $default != null:
return $default(_that.applicantId,_that.applicationId,_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.dob,_that.bloodGroup,_that.nationality,_that.aadhaarNo,_that.birthCertificateNo,_that.motherTongue,_that.photoUrl,_that.caste,_that.contactNo,_that.emailId,_that.createdAt,_that.category,_that.religion,_that.application);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'applicant_id')  String? applicantId, @JsonKey(name: 'application_id')  String? applicationId, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  DateTime? dob, @JsonKey(name: 'blood_group')  String? bloodGroup,  String? nationality, @JsonKey(name: 'aadhaar_no')  String? aadhaarNo, @JsonKey(name: 'birth_certificate_no')  String? birthCertificateNo, @JsonKey(name: 'mother_tongue')  String? motherTongue, @JsonKey(name: 'photo_url')  String? photoUrl,  String? caste, @JsonKey(name: 'contact_no')  String? contactNo, @JsonKey(name: 'email_id')  String? emailId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'categories')  AdmissionCategoryRef? category, @JsonKey(name: 'religions')  AdmissionReligionRef? religion, @JsonKey(name: 'admission_applications')  AdmissionApplicationDetail? application)  $default,) {final _that = this;
switch (_that) {
case _AdmissionApplicant():
return $default(_that.applicantId,_that.applicationId,_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.dob,_that.bloodGroup,_that.nationality,_that.aadhaarNo,_that.birthCertificateNo,_that.motherTongue,_that.photoUrl,_that.caste,_that.contactNo,_that.emailId,_that.createdAt,_that.category,_that.religion,_that.application);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'applicant_id')  String? applicantId, @JsonKey(name: 'application_id')  String? applicationId, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'middle_name')  String? middleName, @JsonKey(name: 'last_name')  String? lastName,  String? gender,  DateTime? dob, @JsonKey(name: 'blood_group')  String? bloodGroup,  String? nationality, @JsonKey(name: 'aadhaar_no')  String? aadhaarNo, @JsonKey(name: 'birth_certificate_no')  String? birthCertificateNo, @JsonKey(name: 'mother_tongue')  String? motherTongue, @JsonKey(name: 'photo_url')  String? photoUrl,  String? caste, @JsonKey(name: 'contact_no')  String? contactNo, @JsonKey(name: 'email_id')  String? emailId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'categories')  AdmissionCategoryRef? category, @JsonKey(name: 'religions')  AdmissionReligionRef? religion, @JsonKey(name: 'admission_applications')  AdmissionApplicationDetail? application)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionApplicant() when $default != null:
return $default(_that.applicantId,_that.applicationId,_that.firstName,_that.middleName,_that.lastName,_that.gender,_that.dob,_that.bloodGroup,_that.nationality,_that.aadhaarNo,_that.birthCertificateNo,_that.motherTongue,_that.photoUrl,_that.caste,_that.contactNo,_that.emailId,_that.createdAt,_that.category,_that.religion,_that.application);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionApplicant extends AdmissionApplicant {
  const _AdmissionApplicant({@JsonKey(name: 'applicant_id') this.applicantId, @JsonKey(name: 'application_id') this.applicationId, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'middle_name') this.middleName, @JsonKey(name: 'last_name') this.lastName, this.gender, this.dob, @JsonKey(name: 'blood_group') this.bloodGroup, this.nationality, @JsonKey(name: 'aadhaar_no') this.aadhaarNo, @JsonKey(name: 'birth_certificate_no') this.birthCertificateNo, @JsonKey(name: 'mother_tongue') this.motherTongue, @JsonKey(name: 'photo_url') this.photoUrl, this.caste, @JsonKey(name: 'contact_no') this.contactNo, @JsonKey(name: 'email_id') this.emailId, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'categories') this.category, @JsonKey(name: 'religions') this.religion, @JsonKey(name: 'admission_applications') this.application}): super._();
  factory _AdmissionApplicant.fromJson(Map<String, dynamic> json) => _$AdmissionApplicantFromJson(json);

@override@JsonKey(name: 'applicant_id') final  String? applicantId;
@override@JsonKey(name: 'application_id') final  String? applicationId;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'middle_name') final  String? middleName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override final  String? gender;
@override final  DateTime? dob;
@override@JsonKey(name: 'blood_group') final  String? bloodGroup;
@override final  String? nationality;
@override@JsonKey(name: 'aadhaar_no') final  String? aadhaarNo;
@override@JsonKey(name: 'birth_certificate_no') final  String? birthCertificateNo;
@override@JsonKey(name: 'mother_tongue') final  String? motherTongue;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;
@override final  String? caste;
@override@JsonKey(name: 'contact_no') final  String? contactNo;
@override@JsonKey(name: 'email_id') final  String? emailId;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'categories') final  AdmissionCategoryRef? category;
@override@JsonKey(name: 'religions') final  AdmissionReligionRef? religion;
@override@JsonKey(name: 'admission_applications') final  AdmissionApplicationDetail? application;

/// Create a copy of AdmissionApplicant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionApplicantCopyWith<_AdmissionApplicant> get copyWith => __$AdmissionApplicantCopyWithImpl<_AdmissionApplicant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionApplicantToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionApplicant&&(identical(other.applicantId, applicantId) || other.applicantId == applicantId)&&(identical(other.applicationId, applicationId) || other.applicationId == applicationId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.bloodGroup, bloodGroup) || other.bloodGroup == bloodGroup)&&(identical(other.nationality, nationality) || other.nationality == nationality)&&(identical(other.aadhaarNo, aadhaarNo) || other.aadhaarNo == aadhaarNo)&&(identical(other.birthCertificateNo, birthCertificateNo) || other.birthCertificateNo == birthCertificateNo)&&(identical(other.motherTongue, motherTongue) || other.motherTongue == motherTongue)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.caste, caste) || other.caste == caste)&&(identical(other.contactNo, contactNo) || other.contactNo == contactNo)&&(identical(other.emailId, emailId) || other.emailId == emailId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.category, category) || other.category == category)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.application, application) || other.application == application));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,applicantId,applicationId,firstName,middleName,lastName,gender,dob,bloodGroup,nationality,aadhaarNo,birthCertificateNo,motherTongue,photoUrl,caste,contactNo,emailId,createdAt,category,religion,application]);
}

@override
String toString() {
    return 'AdmissionApplicant(applicantId: $applicantId, applicationId: $applicationId, firstName: $firstName, middleName: $middleName, lastName: $lastName, gender: $gender, dob: $dob, bloodGroup: $bloodGroup, nationality: $nationality, aadhaarNo: $aadhaarNo, birthCertificateNo: $birthCertificateNo, motherTongue: $motherTongue, photoUrl: $photoUrl, caste: $caste, contactNo: $contactNo, emailId: $emailId, createdAt: $createdAt, category: $category, religion: $religion, application: $application)';
}


}

/// @nodoc
abstract mixin class _$AdmissionApplicantCopyWith<$Res> implements $AdmissionApplicantCopyWith<$Res> {
  factory _$AdmissionApplicantCopyWith(_AdmissionApplicant value, $Res Function(_AdmissionApplicant) _then) = __$AdmissionApplicantCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'applicant_id') String? applicantId,@JsonKey(name: 'application_id') String? applicationId,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'middle_name') String? middleName,@JsonKey(name: 'last_name') String? lastName, String? gender, DateTime? dob,@JsonKey(name: 'blood_group') String? bloodGroup, String? nationality,@JsonKey(name: 'aadhaar_no') String? aadhaarNo,@JsonKey(name: 'birth_certificate_no') String? birthCertificateNo,@JsonKey(name: 'mother_tongue') String? motherTongue,@JsonKey(name: 'photo_url') String? photoUrl, String? caste,@JsonKey(name: 'contact_no') String? contactNo,@JsonKey(name: 'email_id') String? emailId,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'categories') AdmissionCategoryRef? category,@JsonKey(name: 'religions') AdmissionReligionRef? religion,@JsonKey(name: 'admission_applications') AdmissionApplicationDetail? application
});


@override $AdmissionCategoryRefCopyWith<$Res>? get category;@override $AdmissionReligionRefCopyWith<$Res>? get religion;@override $AdmissionApplicationDetailCopyWith<$Res>? get application;

}
/// @nodoc
class __$AdmissionApplicantCopyWithImpl<$Res>
    implements _$AdmissionApplicantCopyWith<$Res> {
  __$AdmissionApplicantCopyWithImpl(this._self, this._then);

  final _AdmissionApplicant _self;
  final $Res Function(_AdmissionApplicant) _then;

/// Create a copy of AdmissionApplicant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? applicantId = freezed,Object? applicationId = freezed,Object? firstName = freezed,Object? middleName = freezed,Object? lastName = freezed,Object? gender = freezed,Object? dob = freezed,Object? bloodGroup = freezed,Object? nationality = freezed,Object? aadhaarNo = freezed,Object? birthCertificateNo = freezed,Object? motherTongue = freezed,Object? photoUrl = freezed,Object? caste = freezed,Object? contactNo = freezed,Object? emailId = freezed,Object? createdAt = freezed,Object? category = freezed,Object? religion = freezed,Object? application = freezed,}) {
  return _then(_AdmissionApplicant(
applicantId: freezed == applicantId ? _self.applicantId : applicantId // ignore: cast_nullable_to_non_nullable
as String?,applicationId: freezed == applicationId ? _self.applicationId : applicationId // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,bloodGroup: freezed == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String?,nationality: freezed == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String?,aadhaarNo: freezed == aadhaarNo ? _self.aadhaarNo : aadhaarNo // ignore: cast_nullable_to_non_nullable
as String?,birthCertificateNo: freezed == birthCertificateNo ? _self.birthCertificateNo : birthCertificateNo // ignore: cast_nullable_to_non_nullable
as String?,motherTongue: freezed == motherTongue ? _self.motherTongue : motherTongue // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,caste: freezed == caste ? _self.caste : caste // ignore: cast_nullable_to_non_nullable
as String?,contactNo: freezed == contactNo ? _self.contactNo : contactNo // ignore: cast_nullable_to_non_nullable
as String?,emailId: freezed == emailId ? _self.emailId : emailId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as AdmissionCategoryRef?,religion: freezed == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as AdmissionReligionRef?,application: freezed == application ? _self.application : application // ignore: cast_nullable_to_non_nullable
as AdmissionApplicationDetail?,
  ));
}

/// Create a copy of AdmissionApplicant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdmissionCategoryRefCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $AdmissionCategoryRefCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of AdmissionApplicant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdmissionReligionRefCopyWith<$Res>? get religion {
    if (_self.religion == null) {
    return null;
  }

  return $AdmissionReligionRefCopyWith<$Res>(_self.religion!, (value) {
    return _then(_self.copyWith(religion: value));
  });
}/// Create a copy of AdmissionApplicant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdmissionApplicationDetailCopyWith<$Res>? get application {
    if (_self.application == null) {
    return null;
  }

  return $AdmissionApplicationDetailCopyWith<$Res>(_self.application!, (value) {
    return _then(_self.copyWith(application: value));
  });
}
}


/// @nodoc
mixin _$AdmissionParent {

@JsonKey(name: 'parent_id') String? get parentId;@JsonKey(name: 'relation_type') String? get relationType;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName; String? get occupation; String? get organization;@JsonKey(name: 'annual_income')@NullableDecimalConverter() Decimal? get annualIncome;@JsonKey(name: 'mobile_no') String? get mobileNo; String? get email; String? get qualification;@JsonKey(name: 'aadhaar_no') String? get aadhaarNo; String? get designation;@JsonKey(name: 'office_address') String? get officeAddress;@JsonKey(name: 'is_alumni') bool? get isAlumni;
/// Create a copy of AdmissionParent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionParentCopyWith<AdmissionParent> get copyWith => _$AdmissionParentCopyWithImpl<AdmissionParent>(this as AdmissionParent, _$identity);

  /// Serializes this AdmissionParent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionParent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionParent&&(identical(other.parentId, _this.parentId) || other.parentId == _this.parentId)&&(identical(other.relationType, _this.relationType) || other.relationType == _this.relationType)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.occupation, _this.occupation) || other.occupation == _this.occupation)&&(identical(other.organization, _this.organization) || other.organization == _this.organization)&&(identical(other.annualIncome, _this.annualIncome) || other.annualIncome == _this.annualIncome)&&(identical(other.mobileNo, _this.mobileNo) || other.mobileNo == _this.mobileNo)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.qualification, _this.qualification) || other.qualification == _this.qualification)&&(identical(other.aadhaarNo, _this.aadhaarNo) || other.aadhaarNo == _this.aadhaarNo)&&(identical(other.designation, _this.designation) || other.designation == _this.designation)&&(identical(other.officeAddress, _this.officeAddress) || other.officeAddress == _this.officeAddress)&&(identical(other.isAlumni, _this.isAlumni) || other.isAlumni == _this.isAlumni));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionParent;
  return Object.hash(runtimeType,_this.parentId,_this.relationType,_this.firstName,_this.lastName,_this.occupation,_this.organization,_this.annualIncome,_this.mobileNo,_this.email,_this.qualification,_this.aadhaarNo,_this.designation,_this.officeAddress,_this.isAlumni);
}

@override
String toString() {
  final _this = this as AdmissionParent;
  return 'AdmissionParent(parentId: ${_this.parentId}, relationType: ${_this.relationType}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, occupation: ${_this.occupation}, organization: ${_this.organization}, annualIncome: ${_this.annualIncome}, mobileNo: ${_this.mobileNo}, email: ${_this.email}, qualification: ${_this.qualification}, aadhaarNo: ${_this.aadhaarNo}, designation: ${_this.designation}, officeAddress: ${_this.officeAddress}, isAlumni: ${_this.isAlumni})';
}


}

/// @nodoc
abstract mixin class $AdmissionParentCopyWith<$Res>  {
  factory $AdmissionParentCopyWith(AdmissionParent value, $Res Function(AdmissionParent) _then) = _$AdmissionParentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'parent_id') String? parentId,@JsonKey(name: 'relation_type') String? relationType,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName, String? occupation, String? organization,@JsonKey(name: 'annual_income')@NullableDecimalConverter() Decimal? annualIncome,@JsonKey(name: 'mobile_no') String? mobileNo, String? email, String? qualification,@JsonKey(name: 'aadhaar_no') String? aadhaarNo, String? designation,@JsonKey(name: 'office_address') String? officeAddress,@JsonKey(name: 'is_alumni') bool? isAlumni
});




}
/// @nodoc
class _$AdmissionParentCopyWithImpl<$Res>
    implements $AdmissionParentCopyWith<$Res> {
  _$AdmissionParentCopyWithImpl(this._self, this._then);

  final AdmissionParent _self;
  final $Res Function(AdmissionParent) _then;

/// Create a copy of AdmissionParent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parentId = freezed,Object? relationType = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? occupation = freezed,Object? organization = freezed,Object? annualIncome = freezed,Object? mobileNo = freezed,Object? email = freezed,Object? qualification = freezed,Object? aadhaarNo = freezed,Object? designation = freezed,Object? officeAddress = freezed,Object? isAlumni = freezed,}) {
  return _then(AdmissionParent(
parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,relationType: freezed == relationType ? _self.relationType : relationType // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,occupation: freezed == occupation ? _self.occupation : occupation // ignore: cast_nullable_to_non_nullable
as String?,organization: freezed == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as String?,annualIncome: freezed == annualIncome ? _self.annualIncome : annualIncome // ignore: cast_nullable_to_non_nullable
as Decimal?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,qualification: freezed == qualification ? _self.qualification : qualification // ignore: cast_nullable_to_non_nullable
as String?,aadhaarNo: freezed == aadhaarNo ? _self.aadhaarNo : aadhaarNo // ignore: cast_nullable_to_non_nullable
as String?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,officeAddress: freezed == officeAddress ? _self.officeAddress : officeAddress // ignore: cast_nullable_to_non_nullable
as String?,isAlumni: freezed == isAlumni ? _self.isAlumni : isAlumni // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionParent].
extension AdmissionParentPatterns on AdmissionParent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionParent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionParent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionParent value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionParent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionParent value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionParent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_id')  String? parentId, @JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName,  String? occupation,  String? organization, @JsonKey(name: 'annual_income')@NullableDecimalConverter()  Decimal? annualIncome, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email,  String? qualification, @JsonKey(name: 'aadhaar_no')  String? aadhaarNo,  String? designation, @JsonKey(name: 'office_address')  String? officeAddress, @JsonKey(name: 'is_alumni')  bool? isAlumni)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionParent() when $default != null:
return $default(_that.parentId,_that.relationType,_that.firstName,_that.lastName,_that.occupation,_that.organization,_that.annualIncome,_that.mobileNo,_that.email,_that.qualification,_that.aadhaarNo,_that.designation,_that.officeAddress,_that.isAlumni);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_id')  String? parentId, @JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName,  String? occupation,  String? organization, @JsonKey(name: 'annual_income')@NullableDecimalConverter()  Decimal? annualIncome, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email,  String? qualification, @JsonKey(name: 'aadhaar_no')  String? aadhaarNo,  String? designation, @JsonKey(name: 'office_address')  String? officeAddress, @JsonKey(name: 'is_alumni')  bool? isAlumni)  $default,) {final _that = this;
switch (_that) {
case _AdmissionParent():
return $default(_that.parentId,_that.relationType,_that.firstName,_that.lastName,_that.occupation,_that.organization,_that.annualIncome,_that.mobileNo,_that.email,_that.qualification,_that.aadhaarNo,_that.designation,_that.officeAddress,_that.isAlumni);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'parent_id')  String? parentId, @JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName,  String? occupation,  String? organization, @JsonKey(name: 'annual_income')@NullableDecimalConverter()  Decimal? annualIncome, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email,  String? qualification, @JsonKey(name: 'aadhaar_no')  String? aadhaarNo,  String? designation, @JsonKey(name: 'office_address')  String? officeAddress, @JsonKey(name: 'is_alumni')  bool? isAlumni)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionParent() when $default != null:
return $default(_that.parentId,_that.relationType,_that.firstName,_that.lastName,_that.occupation,_that.organization,_that.annualIncome,_that.mobileNo,_that.email,_that.qualification,_that.aadhaarNo,_that.designation,_that.officeAddress,_that.isAlumni);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionParent extends AdmissionParent {
  const _AdmissionParent({@JsonKey(name: 'parent_id') this.parentId, @JsonKey(name: 'relation_type') this.relationType, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, this.occupation, this.organization, @JsonKey(name: 'annual_income')@NullableDecimalConverter() this.annualIncome, @JsonKey(name: 'mobile_no') this.mobileNo, this.email, this.qualification, @JsonKey(name: 'aadhaar_no') this.aadhaarNo, this.designation, @JsonKey(name: 'office_address') this.officeAddress, @JsonKey(name: 'is_alumni') this.isAlumni}): super._();
  factory _AdmissionParent.fromJson(Map<String, dynamic> json) => _$AdmissionParentFromJson(json);

@override@JsonKey(name: 'parent_id') final  String? parentId;
@override@JsonKey(name: 'relation_type') final  String? relationType;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override final  String? occupation;
@override final  String? organization;
@override@JsonKey(name: 'annual_income')@NullableDecimalConverter() final  Decimal? annualIncome;
@override@JsonKey(name: 'mobile_no') final  String? mobileNo;
@override final  String? email;
@override final  String? qualification;
@override@JsonKey(name: 'aadhaar_no') final  String? aadhaarNo;
@override final  String? designation;
@override@JsonKey(name: 'office_address') final  String? officeAddress;
@override@JsonKey(name: 'is_alumni') final  bool? isAlumni;

/// Create a copy of AdmissionParent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionParentCopyWith<_AdmissionParent> get copyWith => __$AdmissionParentCopyWithImpl<_AdmissionParent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionParentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionParent&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.relationType, relationType) || other.relationType == relationType)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.occupation, occupation) || other.occupation == occupation)&&(identical(other.organization, organization) || other.organization == organization)&&(identical(other.annualIncome, annualIncome) || other.annualIncome == annualIncome)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.email, email) || other.email == email)&&(identical(other.qualification, qualification) || other.qualification == qualification)&&(identical(other.aadhaarNo, aadhaarNo) || other.aadhaarNo == aadhaarNo)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.officeAddress, officeAddress) || other.officeAddress == officeAddress)&&(identical(other.isAlumni, isAlumni) || other.isAlumni == isAlumni));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,parentId,relationType,firstName,lastName,occupation,organization,annualIncome,mobileNo,email,qualification,aadhaarNo,designation,officeAddress,isAlumni);
}

@override
String toString() {
    return 'AdmissionParent(parentId: $parentId, relationType: $relationType, firstName: $firstName, lastName: $lastName, occupation: $occupation, organization: $organization, annualIncome: $annualIncome, mobileNo: $mobileNo, email: $email, qualification: $qualification, aadhaarNo: $aadhaarNo, designation: $designation, officeAddress: $officeAddress, isAlumni: $isAlumni)';
}


}

/// @nodoc
abstract mixin class _$AdmissionParentCopyWith<$Res> implements $AdmissionParentCopyWith<$Res> {
  factory _$AdmissionParentCopyWith(_AdmissionParent value, $Res Function(_AdmissionParent) _then) = __$AdmissionParentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'parent_id') String? parentId,@JsonKey(name: 'relation_type') String? relationType,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName, String? occupation, String? organization,@JsonKey(name: 'annual_income')@NullableDecimalConverter() Decimal? annualIncome,@JsonKey(name: 'mobile_no') String? mobileNo, String? email, String? qualification,@JsonKey(name: 'aadhaar_no') String? aadhaarNo, String? designation,@JsonKey(name: 'office_address') String? officeAddress,@JsonKey(name: 'is_alumni') bool? isAlumni
});




}
/// @nodoc
class __$AdmissionParentCopyWithImpl<$Res>
    implements _$AdmissionParentCopyWith<$Res> {
  __$AdmissionParentCopyWithImpl(this._self, this._then);

  final _AdmissionParent _self;
  final $Res Function(_AdmissionParent) _then;

/// Create a copy of AdmissionParent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parentId = freezed,Object? relationType = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? occupation = freezed,Object? organization = freezed,Object? annualIncome = freezed,Object? mobileNo = freezed,Object? email = freezed,Object? qualification = freezed,Object? aadhaarNo = freezed,Object? designation = freezed,Object? officeAddress = freezed,Object? isAlumni = freezed,}) {
  return _then(_AdmissionParent(
parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,relationType: freezed == relationType ? _self.relationType : relationType // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,occupation: freezed == occupation ? _self.occupation : occupation // ignore: cast_nullable_to_non_nullable
as String?,organization: freezed == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as String?,annualIncome: freezed == annualIncome ? _self.annualIncome : annualIncome // ignore: cast_nullable_to_non_nullable
as Decimal?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,qualification: freezed == qualification ? _self.qualification : qualification // ignore: cast_nullable_to_non_nullable
as String?,aadhaarNo: freezed == aadhaarNo ? _self.aadhaarNo : aadhaarNo // ignore: cast_nullable_to_non_nullable
as String?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,officeAddress: freezed == officeAddress ? _self.officeAddress : officeAddress // ignore: cast_nullable_to_non_nullable
as String?,isAlumni: freezed == isAlumni ? _self.isAlumni : isAlumni // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$AdmissionSibling {

@JsonKey(name: 'sibling_id') String? get siblingId;@JsonKey(name: 'sibling_name') String? get siblingName;@JsonKey(name: 'admission_no') String? get admissionNo;@JsonKey(name: 'class_name') String? get className;@JsonKey(name: 'institution_name') String? get institutionName;@JsonKey(name: 'currently_studying') bool? get currentlyStudying;@JsonKey(name: 'relation_type') String? get relationType;
/// Create a copy of AdmissionSibling
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionSiblingCopyWith<AdmissionSibling> get copyWith => _$AdmissionSiblingCopyWithImpl<AdmissionSibling>(this as AdmissionSibling, _$identity);

  /// Serializes this AdmissionSibling to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionSibling;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionSibling&&(identical(other.siblingId, _this.siblingId) || other.siblingId == _this.siblingId)&&(identical(other.siblingName, _this.siblingName) || other.siblingName == _this.siblingName)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.institutionName, _this.institutionName) || other.institutionName == _this.institutionName)&&(identical(other.currentlyStudying, _this.currentlyStudying) || other.currentlyStudying == _this.currentlyStudying)&&(identical(other.relationType, _this.relationType) || other.relationType == _this.relationType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionSibling;
  return Object.hash(runtimeType,_this.siblingId,_this.siblingName,_this.admissionNo,_this.className,_this.institutionName,_this.currentlyStudying,_this.relationType);
}

@override
String toString() {
  final _this = this as AdmissionSibling;
  return 'AdmissionSibling(siblingId: ${_this.siblingId}, siblingName: ${_this.siblingName}, admissionNo: ${_this.admissionNo}, className: ${_this.className}, institutionName: ${_this.institutionName}, currentlyStudying: ${_this.currentlyStudying}, relationType: ${_this.relationType})';
}


}

/// @nodoc
abstract mixin class $AdmissionSiblingCopyWith<$Res>  {
  factory $AdmissionSiblingCopyWith(AdmissionSibling value, $Res Function(AdmissionSibling) _then) = _$AdmissionSiblingCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sibling_id') String? siblingId,@JsonKey(name: 'sibling_name') String? siblingName,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'institution_name') String? institutionName,@JsonKey(name: 'currently_studying') bool? currentlyStudying,@JsonKey(name: 'relation_type') String? relationType
});




}
/// @nodoc
class _$AdmissionSiblingCopyWithImpl<$Res>
    implements $AdmissionSiblingCopyWith<$Res> {
  _$AdmissionSiblingCopyWithImpl(this._self, this._then);

  final AdmissionSibling _self;
  final $Res Function(AdmissionSibling) _then;

/// Create a copy of AdmissionSibling
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? siblingId = freezed,Object? siblingName = freezed,Object? admissionNo = freezed,Object? className = freezed,Object? institutionName = freezed,Object? currentlyStudying = freezed,Object? relationType = freezed,}) {
  return _then(AdmissionSibling(
siblingId: freezed == siblingId ? _self.siblingId : siblingId // ignore: cast_nullable_to_non_nullable
as String?,siblingName: freezed == siblingName ? _self.siblingName : siblingName // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,institutionName: freezed == institutionName ? _self.institutionName : institutionName // ignore: cast_nullable_to_non_nullable
as String?,currentlyStudying: freezed == currentlyStudying ? _self.currentlyStudying : currentlyStudying // ignore: cast_nullable_to_non_nullable
as bool?,relationType: freezed == relationType ? _self.relationType : relationType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionSibling].
extension AdmissionSiblingPatterns on AdmissionSibling {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionSibling value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionSibling() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionSibling value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionSibling():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionSibling value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionSibling() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sibling_id')  String? siblingId, @JsonKey(name: 'sibling_name')  String? siblingName, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'institution_name')  String? institutionName, @JsonKey(name: 'currently_studying')  bool? currentlyStudying, @JsonKey(name: 'relation_type')  String? relationType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionSibling() when $default != null:
return $default(_that.siblingId,_that.siblingName,_that.admissionNo,_that.className,_that.institutionName,_that.currentlyStudying,_that.relationType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sibling_id')  String? siblingId, @JsonKey(name: 'sibling_name')  String? siblingName, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'institution_name')  String? institutionName, @JsonKey(name: 'currently_studying')  bool? currentlyStudying, @JsonKey(name: 'relation_type')  String? relationType)  $default,) {final _that = this;
switch (_that) {
case _AdmissionSibling():
return $default(_that.siblingId,_that.siblingName,_that.admissionNo,_that.className,_that.institutionName,_that.currentlyStudying,_that.relationType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sibling_id')  String? siblingId, @JsonKey(name: 'sibling_name')  String? siblingName, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'institution_name')  String? institutionName, @JsonKey(name: 'currently_studying')  bool? currentlyStudying, @JsonKey(name: 'relation_type')  String? relationType)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionSibling() when $default != null:
return $default(_that.siblingId,_that.siblingName,_that.admissionNo,_that.className,_that.institutionName,_that.currentlyStudying,_that.relationType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionSibling implements AdmissionSibling {
  const _AdmissionSibling({@JsonKey(name: 'sibling_id') this.siblingId, @JsonKey(name: 'sibling_name') this.siblingName, @JsonKey(name: 'admission_no') this.admissionNo, @JsonKey(name: 'class_name') this.className, @JsonKey(name: 'institution_name') this.institutionName, @JsonKey(name: 'currently_studying') this.currentlyStudying, @JsonKey(name: 'relation_type') this.relationType});
  factory _AdmissionSibling.fromJson(Map<String, dynamic> json) => _$AdmissionSiblingFromJson(json);

@override@JsonKey(name: 'sibling_id') final  String? siblingId;
@override@JsonKey(name: 'sibling_name') final  String? siblingName;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override@JsonKey(name: 'class_name') final  String? className;
@override@JsonKey(name: 'institution_name') final  String? institutionName;
@override@JsonKey(name: 'currently_studying') final  bool? currentlyStudying;
@override@JsonKey(name: 'relation_type') final  String? relationType;

/// Create a copy of AdmissionSibling
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionSiblingCopyWith<_AdmissionSibling> get copyWith => __$AdmissionSiblingCopyWithImpl<_AdmissionSibling>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionSiblingToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionSibling&&(identical(other.siblingId, siblingId) || other.siblingId == siblingId)&&(identical(other.siblingName, siblingName) || other.siblingName == siblingName)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.className, className) || other.className == className)&&(identical(other.institutionName, institutionName) || other.institutionName == institutionName)&&(identical(other.currentlyStudying, currentlyStudying) || other.currentlyStudying == currentlyStudying)&&(identical(other.relationType, relationType) || other.relationType == relationType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,siblingId,siblingName,admissionNo,className,institutionName,currentlyStudying,relationType);
}

@override
String toString() {
    return 'AdmissionSibling(siblingId: $siblingId, siblingName: $siblingName, admissionNo: $admissionNo, className: $className, institutionName: $institutionName, currentlyStudying: $currentlyStudying, relationType: $relationType)';
}


}

/// @nodoc
abstract mixin class _$AdmissionSiblingCopyWith<$Res> implements $AdmissionSiblingCopyWith<$Res> {
  factory _$AdmissionSiblingCopyWith(_AdmissionSibling value, $Res Function(_AdmissionSibling) _then) = __$AdmissionSiblingCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sibling_id') String? siblingId,@JsonKey(name: 'sibling_name') String? siblingName,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'institution_name') String? institutionName,@JsonKey(name: 'currently_studying') bool? currentlyStudying,@JsonKey(name: 'relation_type') String? relationType
});




}
/// @nodoc
class __$AdmissionSiblingCopyWithImpl<$Res>
    implements _$AdmissionSiblingCopyWith<$Res> {
  __$AdmissionSiblingCopyWithImpl(this._self, this._then);

  final _AdmissionSibling _self;
  final $Res Function(_AdmissionSibling) _then;

/// Create a copy of AdmissionSibling
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? siblingId = freezed,Object? siblingName = freezed,Object? admissionNo = freezed,Object? className = freezed,Object? institutionName = freezed,Object? currentlyStudying = freezed,Object? relationType = freezed,}) {
  return _then(_AdmissionSibling(
siblingId: freezed == siblingId ? _self.siblingId : siblingId // ignore: cast_nullable_to_non_nullable
as String?,siblingName: freezed == siblingName ? _self.siblingName : siblingName // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,institutionName: freezed == institutionName ? _self.institutionName : institutionName // ignore: cast_nullable_to_non_nullable
as String?,currentlyStudying: freezed == currentlyStudying ? _self.currentlyStudying : currentlyStudying // ignore: cast_nullable_to_non_nullable
as bool?,relationType: freezed == relationType ? _self.relationType : relationType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdmissionAddress {

@JsonKey(name: 'address_id') String? get addressId;@JsonKey(name: 'address_type') String? get addressType;@JsonKey(name: 'address_line1') String? get addressLine1;@JsonKey(name: 'address_line2') String? get addressLine2; String? get city; String? get district; String? get state; String? get country;@LooseStringConverter() String? get pincode;
/// Create a copy of AdmissionAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionAddressCopyWith<AdmissionAddress> get copyWith => _$AdmissionAddressCopyWithImpl<AdmissionAddress>(this as AdmissionAddress, _$identity);

  /// Serializes this AdmissionAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionAddress;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionAddress&&(identical(other.addressId, _this.addressId) || other.addressId == _this.addressId)&&(identical(other.addressType, _this.addressType) || other.addressType == _this.addressType)&&(identical(other.addressLine1, _this.addressLine1) || other.addressLine1 == _this.addressLine1)&&(identical(other.addressLine2, _this.addressLine2) || other.addressLine2 == _this.addressLine2)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.district, _this.district) || other.district == _this.district)&&(identical(other.state, _this.state) || other.state == _this.state)&&(identical(other.country, _this.country) || other.country == _this.country)&&(identical(other.pincode, _this.pincode) || other.pincode == _this.pincode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionAddress;
  return Object.hash(runtimeType,_this.addressId,_this.addressType,_this.addressLine1,_this.addressLine2,_this.city,_this.district,_this.state,_this.country,_this.pincode);
}

@override
String toString() {
  final _this = this as AdmissionAddress;
  return 'AdmissionAddress(addressId: ${_this.addressId}, addressType: ${_this.addressType}, addressLine1: ${_this.addressLine1}, addressLine2: ${_this.addressLine2}, city: ${_this.city}, district: ${_this.district}, state: ${_this.state}, country: ${_this.country}, pincode: ${_this.pincode})';
}


}

/// @nodoc
abstract mixin class $AdmissionAddressCopyWith<$Res>  {
  factory $AdmissionAddressCopyWith(AdmissionAddress value, $Res Function(AdmissionAddress) _then) = _$AdmissionAddressCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'address_id') String? addressId,@JsonKey(name: 'address_type') String? addressType,@JsonKey(name: 'address_line1') String? addressLine1,@JsonKey(name: 'address_line2') String? addressLine2, String? city, String? district, String? state, String? country,@LooseStringConverter() String? pincode
});




}
/// @nodoc
class _$AdmissionAddressCopyWithImpl<$Res>
    implements $AdmissionAddressCopyWith<$Res> {
  _$AdmissionAddressCopyWithImpl(this._self, this._then);

  final AdmissionAddress _self;
  final $Res Function(AdmissionAddress) _then;

/// Create a copy of AdmissionAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addressId = freezed,Object? addressType = freezed,Object? addressLine1 = freezed,Object? addressLine2 = freezed,Object? city = freezed,Object? district = freezed,Object? state = freezed,Object? country = freezed,Object? pincode = freezed,}) {
  return _then(AdmissionAddress(
addressId: freezed == addressId ? _self.addressId : addressId // ignore: cast_nullable_to_non_nullable
as String?,addressType: freezed == addressType ? _self.addressType : addressType // ignore: cast_nullable_to_non_nullable
as String?,addressLine1: freezed == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String?,addressLine2: freezed == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,pincode: freezed == pincode ? _self.pincode : pincode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionAddress].
extension AdmissionAddressPatterns on AdmissionAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionAddress value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionAddress value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'address_id')  String? addressId, @JsonKey(name: 'address_type')  String? addressType, @JsonKey(name: 'address_line1')  String? addressLine1, @JsonKey(name: 'address_line2')  String? addressLine2,  String? city,  String? district,  String? state,  String? country, @LooseStringConverter()  String? pincode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionAddress() when $default != null:
return $default(_that.addressId,_that.addressType,_that.addressLine1,_that.addressLine2,_that.city,_that.district,_that.state,_that.country,_that.pincode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'address_id')  String? addressId, @JsonKey(name: 'address_type')  String? addressType, @JsonKey(name: 'address_line1')  String? addressLine1, @JsonKey(name: 'address_line2')  String? addressLine2,  String? city,  String? district,  String? state,  String? country, @LooseStringConverter()  String? pincode)  $default,) {final _that = this;
switch (_that) {
case _AdmissionAddress():
return $default(_that.addressId,_that.addressType,_that.addressLine1,_that.addressLine2,_that.city,_that.district,_that.state,_that.country,_that.pincode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'address_id')  String? addressId, @JsonKey(name: 'address_type')  String? addressType, @JsonKey(name: 'address_line1')  String? addressLine1, @JsonKey(name: 'address_line2')  String? addressLine2,  String? city,  String? district,  String? state,  String? country, @LooseStringConverter()  String? pincode)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionAddress() when $default != null:
return $default(_that.addressId,_that.addressType,_that.addressLine1,_that.addressLine2,_that.city,_that.district,_that.state,_that.country,_that.pincode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionAddress extends AdmissionAddress {
  const _AdmissionAddress({@JsonKey(name: 'address_id') this.addressId, @JsonKey(name: 'address_type') this.addressType, @JsonKey(name: 'address_line1') this.addressLine1, @JsonKey(name: 'address_line2') this.addressLine2, this.city, this.district, this.state, this.country, @LooseStringConverter() this.pincode}): super._();
  factory _AdmissionAddress.fromJson(Map<String, dynamic> json) => _$AdmissionAddressFromJson(json);

@override@JsonKey(name: 'address_id') final  String? addressId;
@override@JsonKey(name: 'address_type') final  String? addressType;
@override@JsonKey(name: 'address_line1') final  String? addressLine1;
@override@JsonKey(name: 'address_line2') final  String? addressLine2;
@override final  String? city;
@override final  String? district;
@override final  String? state;
@override final  String? country;
@override@LooseStringConverter() final  String? pincode;

/// Create a copy of AdmissionAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionAddressCopyWith<_AdmissionAddress> get copyWith => __$AdmissionAddressCopyWithImpl<_AdmissionAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionAddressToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionAddress&&(identical(other.addressId, addressId) || other.addressId == addressId)&&(identical(other.addressType, addressType) || other.addressType == addressType)&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.addressLine2, addressLine2) || other.addressLine2 == addressLine2)&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.pincode, pincode) || other.pincode == pincode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,addressId,addressType,addressLine1,addressLine2,city,district,state,country,pincode);
}

@override
String toString() {
    return 'AdmissionAddress(addressId: $addressId, addressType: $addressType, addressLine1: $addressLine1, addressLine2: $addressLine2, city: $city, district: $district, state: $state, country: $country, pincode: $pincode)';
}


}

/// @nodoc
abstract mixin class _$AdmissionAddressCopyWith<$Res> implements $AdmissionAddressCopyWith<$Res> {
  factory _$AdmissionAddressCopyWith(_AdmissionAddress value, $Res Function(_AdmissionAddress) _then) = __$AdmissionAddressCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'address_id') String? addressId,@JsonKey(name: 'address_type') String? addressType,@JsonKey(name: 'address_line1') String? addressLine1,@JsonKey(name: 'address_line2') String? addressLine2, String? city, String? district, String? state, String? country,@LooseStringConverter() String? pincode
});




}
/// @nodoc
class __$AdmissionAddressCopyWithImpl<$Res>
    implements _$AdmissionAddressCopyWith<$Res> {
  __$AdmissionAddressCopyWithImpl(this._self, this._then);

  final _AdmissionAddress _self;
  final $Res Function(_AdmissionAddress) _then;

/// Create a copy of AdmissionAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addressId = freezed,Object? addressType = freezed,Object? addressLine1 = freezed,Object? addressLine2 = freezed,Object? city = freezed,Object? district = freezed,Object? state = freezed,Object? country = freezed,Object? pincode = freezed,}) {
  return _then(_AdmissionAddress(
addressId: freezed == addressId ? _self.addressId : addressId // ignore: cast_nullable_to_non_nullable
as String?,addressType: freezed == addressType ? _self.addressType : addressType // ignore: cast_nullable_to_non_nullable
as String?,addressLine1: freezed == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String?,addressLine2: freezed == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,pincode: freezed == pincode ? _self.pincode : pincode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdmissionEmergencyContact {

@JsonKey(name: 'contact_id') String? get contactId;@JsonKey(name: 'contact_name') String? get contactName; String? get relation;@JsonKey(name: 'mobile_no') String? get mobileNo; String? get email;
/// Create a copy of AdmissionEmergencyContact
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionEmergencyContactCopyWith<AdmissionEmergencyContact> get copyWith => _$AdmissionEmergencyContactCopyWithImpl<AdmissionEmergencyContact>(this as AdmissionEmergencyContact, _$identity);

  /// Serializes this AdmissionEmergencyContact to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionEmergencyContact;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionEmergencyContact&&(identical(other.contactId, _this.contactId) || other.contactId == _this.contactId)&&(identical(other.contactName, _this.contactName) || other.contactName == _this.contactName)&&(identical(other.relation, _this.relation) || other.relation == _this.relation)&&(identical(other.mobileNo, _this.mobileNo) || other.mobileNo == _this.mobileNo)&&(identical(other.email, _this.email) || other.email == _this.email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionEmergencyContact;
  return Object.hash(runtimeType,_this.contactId,_this.contactName,_this.relation,_this.mobileNo,_this.email);
}

@override
String toString() {
  final _this = this as AdmissionEmergencyContact;
  return 'AdmissionEmergencyContact(contactId: ${_this.contactId}, contactName: ${_this.contactName}, relation: ${_this.relation}, mobileNo: ${_this.mobileNo}, email: ${_this.email})';
}


}

/// @nodoc
abstract mixin class $AdmissionEmergencyContactCopyWith<$Res>  {
  factory $AdmissionEmergencyContactCopyWith(AdmissionEmergencyContact value, $Res Function(AdmissionEmergencyContact) _then) = _$AdmissionEmergencyContactCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'contact_id') String? contactId,@JsonKey(name: 'contact_name') String? contactName, String? relation,@JsonKey(name: 'mobile_no') String? mobileNo, String? email
});




}
/// @nodoc
class _$AdmissionEmergencyContactCopyWithImpl<$Res>
    implements $AdmissionEmergencyContactCopyWith<$Res> {
  _$AdmissionEmergencyContactCopyWithImpl(this._self, this._then);

  final AdmissionEmergencyContact _self;
  final $Res Function(AdmissionEmergencyContact) _then;

/// Create a copy of AdmissionEmergencyContact
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contactId = freezed,Object? contactName = freezed,Object? relation = freezed,Object? mobileNo = freezed,Object? email = freezed,}) {
  return _then(AdmissionEmergencyContact(
contactId: freezed == contactId ? _self.contactId : contactId // ignore: cast_nullable_to_non_nullable
as String?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,relation: freezed == relation ? _self.relation : relation // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionEmergencyContact].
extension AdmissionEmergencyContactPatterns on AdmissionEmergencyContact {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionEmergencyContact value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionEmergencyContact() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionEmergencyContact value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionEmergencyContact():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionEmergencyContact value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionEmergencyContact() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'contact_id')  String? contactId, @JsonKey(name: 'contact_name')  String? contactName,  String? relation, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionEmergencyContact() when $default != null:
return $default(_that.contactId,_that.contactName,_that.relation,_that.mobileNo,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'contact_id')  String? contactId, @JsonKey(name: 'contact_name')  String? contactName,  String? relation, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email)  $default,) {final _that = this;
switch (_that) {
case _AdmissionEmergencyContact():
return $default(_that.contactId,_that.contactName,_that.relation,_that.mobileNo,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'contact_id')  String? contactId, @JsonKey(name: 'contact_name')  String? contactName,  String? relation, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionEmergencyContact() when $default != null:
return $default(_that.contactId,_that.contactName,_that.relation,_that.mobileNo,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionEmergencyContact implements AdmissionEmergencyContact {
  const _AdmissionEmergencyContact({@JsonKey(name: 'contact_id') this.contactId, @JsonKey(name: 'contact_name') this.contactName, this.relation, @JsonKey(name: 'mobile_no') this.mobileNo, this.email});
  factory _AdmissionEmergencyContact.fromJson(Map<String, dynamic> json) => _$AdmissionEmergencyContactFromJson(json);

@override@JsonKey(name: 'contact_id') final  String? contactId;
@override@JsonKey(name: 'contact_name') final  String? contactName;
@override final  String? relation;
@override@JsonKey(name: 'mobile_no') final  String? mobileNo;
@override final  String? email;

/// Create a copy of AdmissionEmergencyContact
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionEmergencyContactCopyWith<_AdmissionEmergencyContact> get copyWith => __$AdmissionEmergencyContactCopyWithImpl<_AdmissionEmergencyContact>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionEmergencyContactToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionEmergencyContact&&(identical(other.contactId, contactId) || other.contactId == contactId)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.relation, relation) || other.relation == relation)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,contactId,contactName,relation,mobileNo,email);
}

@override
String toString() {
    return 'AdmissionEmergencyContact(contactId: $contactId, contactName: $contactName, relation: $relation, mobileNo: $mobileNo, email: $email)';
}


}

/// @nodoc
abstract mixin class _$AdmissionEmergencyContactCopyWith<$Res> implements $AdmissionEmergencyContactCopyWith<$Res> {
  factory _$AdmissionEmergencyContactCopyWith(_AdmissionEmergencyContact value, $Res Function(_AdmissionEmergencyContact) _then) = __$AdmissionEmergencyContactCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'contact_id') String? contactId,@JsonKey(name: 'contact_name') String? contactName, String? relation,@JsonKey(name: 'mobile_no') String? mobileNo, String? email
});




}
/// @nodoc
class __$AdmissionEmergencyContactCopyWithImpl<$Res>
    implements _$AdmissionEmergencyContactCopyWith<$Res> {
  __$AdmissionEmergencyContactCopyWithImpl(this._self, this._then);

  final _AdmissionEmergencyContact _self;
  final $Res Function(_AdmissionEmergencyContact) _then;

/// Create a copy of AdmissionEmergencyContact
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contactId = freezed,Object? contactName = freezed,Object? relation = freezed,Object? mobileNo = freezed,Object? email = freezed,}) {
  return _then(_AdmissionEmergencyContact(
contactId: freezed == contactId ? _self.contactId : contactId // ignore: cast_nullable_to_non_nullable
as String?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,relation: freezed == relation ? _self.relation : relation // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdmissionPreviousSchool {

@JsonKey(name: 'previous_school_id') String? get previousSchoolId;@JsonKey(name: 'school_name') String? get schoolName;@JsonKey(name: 'board_name') String? get boardName;@JsonKey(name: 'class_last_attended') String? get classLastAttended;@LooseStringConverter() String? get percentage;@JsonKey(name: 'passing_year') int? get passingYear;@JsonKey(name: 'tc_number') String? get tcNumber;@JsonKey(name: 'reason_for_leaving') String? get reasonForLeaving;
/// Create a copy of AdmissionPreviousSchool
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionPreviousSchoolCopyWith<AdmissionPreviousSchool> get copyWith => _$AdmissionPreviousSchoolCopyWithImpl<AdmissionPreviousSchool>(this as AdmissionPreviousSchool, _$identity);

  /// Serializes this AdmissionPreviousSchool to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionPreviousSchool;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionPreviousSchool&&(identical(other.previousSchoolId, _this.previousSchoolId) || other.previousSchoolId == _this.previousSchoolId)&&(identical(other.schoolName, _this.schoolName) || other.schoolName == _this.schoolName)&&(identical(other.boardName, _this.boardName) || other.boardName == _this.boardName)&&(identical(other.classLastAttended, _this.classLastAttended) || other.classLastAttended == _this.classLastAttended)&&(identical(other.percentage, _this.percentage) || other.percentage == _this.percentage)&&(identical(other.passingYear, _this.passingYear) || other.passingYear == _this.passingYear)&&(identical(other.tcNumber, _this.tcNumber) || other.tcNumber == _this.tcNumber)&&(identical(other.reasonForLeaving, _this.reasonForLeaving) || other.reasonForLeaving == _this.reasonForLeaving));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionPreviousSchool;
  return Object.hash(runtimeType,_this.previousSchoolId,_this.schoolName,_this.boardName,_this.classLastAttended,_this.percentage,_this.passingYear,_this.tcNumber,_this.reasonForLeaving);
}

@override
String toString() {
  final _this = this as AdmissionPreviousSchool;
  return 'AdmissionPreviousSchool(previousSchoolId: ${_this.previousSchoolId}, schoolName: ${_this.schoolName}, boardName: ${_this.boardName}, classLastAttended: ${_this.classLastAttended}, percentage: ${_this.percentage}, passingYear: ${_this.passingYear}, tcNumber: ${_this.tcNumber}, reasonForLeaving: ${_this.reasonForLeaving})';
}


}

/// @nodoc
abstract mixin class $AdmissionPreviousSchoolCopyWith<$Res>  {
  factory $AdmissionPreviousSchoolCopyWith(AdmissionPreviousSchool value, $Res Function(AdmissionPreviousSchool) _then) = _$AdmissionPreviousSchoolCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'previous_school_id') String? previousSchoolId,@JsonKey(name: 'school_name') String? schoolName,@JsonKey(name: 'board_name') String? boardName,@JsonKey(name: 'class_last_attended') String? classLastAttended,@LooseStringConverter() String? percentage,@JsonKey(name: 'passing_year') int? passingYear,@JsonKey(name: 'tc_number') String? tcNumber,@JsonKey(name: 'reason_for_leaving') String? reasonForLeaving
});




}
/// @nodoc
class _$AdmissionPreviousSchoolCopyWithImpl<$Res>
    implements $AdmissionPreviousSchoolCopyWith<$Res> {
  _$AdmissionPreviousSchoolCopyWithImpl(this._self, this._then);

  final AdmissionPreviousSchool _self;
  final $Res Function(AdmissionPreviousSchool) _then;

/// Create a copy of AdmissionPreviousSchool
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? previousSchoolId = freezed,Object? schoolName = freezed,Object? boardName = freezed,Object? classLastAttended = freezed,Object? percentage = freezed,Object? passingYear = freezed,Object? tcNumber = freezed,Object? reasonForLeaving = freezed,}) {
  return _then(AdmissionPreviousSchool(
previousSchoolId: freezed == previousSchoolId ? _self.previousSchoolId : previousSchoolId // ignore: cast_nullable_to_non_nullable
as String?,schoolName: freezed == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String?,boardName: freezed == boardName ? _self.boardName : boardName // ignore: cast_nullable_to_non_nullable
as String?,classLastAttended: freezed == classLastAttended ? _self.classLastAttended : classLastAttended // ignore: cast_nullable_to_non_nullable
as String?,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as String?,passingYear: freezed == passingYear ? _self.passingYear : passingYear // ignore: cast_nullable_to_non_nullable
as int?,tcNumber: freezed == tcNumber ? _self.tcNumber : tcNumber // ignore: cast_nullable_to_non_nullable
as String?,reasonForLeaving: freezed == reasonForLeaving ? _self.reasonForLeaving : reasonForLeaving // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionPreviousSchool].
extension AdmissionPreviousSchoolPatterns on AdmissionPreviousSchool {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionPreviousSchool value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionPreviousSchool() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionPreviousSchool value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionPreviousSchool():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionPreviousSchool value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionPreviousSchool() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'previous_school_id')  String? previousSchoolId, @JsonKey(name: 'school_name')  String? schoolName, @JsonKey(name: 'board_name')  String? boardName, @JsonKey(name: 'class_last_attended')  String? classLastAttended, @LooseStringConverter()  String? percentage, @JsonKey(name: 'passing_year')  int? passingYear, @JsonKey(name: 'tc_number')  String? tcNumber, @JsonKey(name: 'reason_for_leaving')  String? reasonForLeaving)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionPreviousSchool() when $default != null:
return $default(_that.previousSchoolId,_that.schoolName,_that.boardName,_that.classLastAttended,_that.percentage,_that.passingYear,_that.tcNumber,_that.reasonForLeaving);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'previous_school_id')  String? previousSchoolId, @JsonKey(name: 'school_name')  String? schoolName, @JsonKey(name: 'board_name')  String? boardName, @JsonKey(name: 'class_last_attended')  String? classLastAttended, @LooseStringConverter()  String? percentage, @JsonKey(name: 'passing_year')  int? passingYear, @JsonKey(name: 'tc_number')  String? tcNumber, @JsonKey(name: 'reason_for_leaving')  String? reasonForLeaving)  $default,) {final _that = this;
switch (_that) {
case _AdmissionPreviousSchool():
return $default(_that.previousSchoolId,_that.schoolName,_that.boardName,_that.classLastAttended,_that.percentage,_that.passingYear,_that.tcNumber,_that.reasonForLeaving);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'previous_school_id')  String? previousSchoolId, @JsonKey(name: 'school_name')  String? schoolName, @JsonKey(name: 'board_name')  String? boardName, @JsonKey(name: 'class_last_attended')  String? classLastAttended, @LooseStringConverter()  String? percentage, @JsonKey(name: 'passing_year')  int? passingYear, @JsonKey(name: 'tc_number')  String? tcNumber, @JsonKey(name: 'reason_for_leaving')  String? reasonForLeaving)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionPreviousSchool() when $default != null:
return $default(_that.previousSchoolId,_that.schoolName,_that.boardName,_that.classLastAttended,_that.percentage,_that.passingYear,_that.tcNumber,_that.reasonForLeaving);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionPreviousSchool implements AdmissionPreviousSchool {
  const _AdmissionPreviousSchool({@JsonKey(name: 'previous_school_id') this.previousSchoolId, @JsonKey(name: 'school_name') this.schoolName, @JsonKey(name: 'board_name') this.boardName, @JsonKey(name: 'class_last_attended') this.classLastAttended, @LooseStringConverter() this.percentage, @JsonKey(name: 'passing_year') this.passingYear, @JsonKey(name: 'tc_number') this.tcNumber, @JsonKey(name: 'reason_for_leaving') this.reasonForLeaving});
  factory _AdmissionPreviousSchool.fromJson(Map<String, dynamic> json) => _$AdmissionPreviousSchoolFromJson(json);

@override@JsonKey(name: 'previous_school_id') final  String? previousSchoolId;
@override@JsonKey(name: 'school_name') final  String? schoolName;
@override@JsonKey(name: 'board_name') final  String? boardName;
@override@JsonKey(name: 'class_last_attended') final  String? classLastAttended;
@override@LooseStringConverter() final  String? percentage;
@override@JsonKey(name: 'passing_year') final  int? passingYear;
@override@JsonKey(name: 'tc_number') final  String? tcNumber;
@override@JsonKey(name: 'reason_for_leaving') final  String? reasonForLeaving;

/// Create a copy of AdmissionPreviousSchool
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionPreviousSchoolCopyWith<_AdmissionPreviousSchool> get copyWith => __$AdmissionPreviousSchoolCopyWithImpl<_AdmissionPreviousSchool>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionPreviousSchoolToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionPreviousSchool&&(identical(other.previousSchoolId, previousSchoolId) || other.previousSchoolId == previousSchoolId)&&(identical(other.schoolName, schoolName) || other.schoolName == schoolName)&&(identical(other.boardName, boardName) || other.boardName == boardName)&&(identical(other.classLastAttended, classLastAttended) || other.classLastAttended == classLastAttended)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.passingYear, passingYear) || other.passingYear == passingYear)&&(identical(other.tcNumber, tcNumber) || other.tcNumber == tcNumber)&&(identical(other.reasonForLeaving, reasonForLeaving) || other.reasonForLeaving == reasonForLeaving));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,previousSchoolId,schoolName,boardName,classLastAttended,percentage,passingYear,tcNumber,reasonForLeaving);
}

@override
String toString() {
    return 'AdmissionPreviousSchool(previousSchoolId: $previousSchoolId, schoolName: $schoolName, boardName: $boardName, classLastAttended: $classLastAttended, percentage: $percentage, passingYear: $passingYear, tcNumber: $tcNumber, reasonForLeaving: $reasonForLeaving)';
}


}

/// @nodoc
abstract mixin class _$AdmissionPreviousSchoolCopyWith<$Res> implements $AdmissionPreviousSchoolCopyWith<$Res> {
  factory _$AdmissionPreviousSchoolCopyWith(_AdmissionPreviousSchool value, $Res Function(_AdmissionPreviousSchool) _then) = __$AdmissionPreviousSchoolCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'previous_school_id') String? previousSchoolId,@JsonKey(name: 'school_name') String? schoolName,@JsonKey(name: 'board_name') String? boardName,@JsonKey(name: 'class_last_attended') String? classLastAttended,@LooseStringConverter() String? percentage,@JsonKey(name: 'passing_year') int? passingYear,@JsonKey(name: 'tc_number') String? tcNumber,@JsonKey(name: 'reason_for_leaving') String? reasonForLeaving
});




}
/// @nodoc
class __$AdmissionPreviousSchoolCopyWithImpl<$Res>
    implements _$AdmissionPreviousSchoolCopyWith<$Res> {
  __$AdmissionPreviousSchoolCopyWithImpl(this._self, this._then);

  final _AdmissionPreviousSchool _self;
  final $Res Function(_AdmissionPreviousSchool) _then;

/// Create a copy of AdmissionPreviousSchool
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? previousSchoolId = freezed,Object? schoolName = freezed,Object? boardName = freezed,Object? classLastAttended = freezed,Object? percentage = freezed,Object? passingYear = freezed,Object? tcNumber = freezed,Object? reasonForLeaving = freezed,}) {
  return _then(_AdmissionPreviousSchool(
previousSchoolId: freezed == previousSchoolId ? _self.previousSchoolId : previousSchoolId // ignore: cast_nullable_to_non_nullable
as String?,schoolName: freezed == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String?,boardName: freezed == boardName ? _self.boardName : boardName // ignore: cast_nullable_to_non_nullable
as String?,classLastAttended: freezed == classLastAttended ? _self.classLastAttended : classLastAttended // ignore: cast_nullable_to_non_nullable
as String?,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as String?,passingYear: freezed == passingYear ? _self.passingYear : passingYear // ignore: cast_nullable_to_non_nullable
as int?,tcNumber: freezed == tcNumber ? _self.tcNumber : tcNumber // ignore: cast_nullable_to_non_nullable
as String?,reasonForLeaving: freezed == reasonForLeaving ? _self.reasonForLeaving : reasonForLeaving // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdmissionDocumentType {

@JsonKey(name: 'document_type_id') String? get documentTypeId;@JsonKey(name: 'document_name') String? get documentName;@JsonKey(name: 'is_mandatory') bool? get isMandatory;
/// Create a copy of AdmissionDocumentType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionDocumentTypeCopyWith<AdmissionDocumentType> get copyWith => _$AdmissionDocumentTypeCopyWithImpl<AdmissionDocumentType>(this as AdmissionDocumentType, _$identity);

  /// Serializes this AdmissionDocumentType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionDocumentType;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionDocumentType&&(identical(other.documentTypeId, _this.documentTypeId) || other.documentTypeId == _this.documentTypeId)&&(identical(other.documentName, _this.documentName) || other.documentName == _this.documentName)&&(identical(other.isMandatory, _this.isMandatory) || other.isMandatory == _this.isMandatory));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionDocumentType;
  return Object.hash(runtimeType,_this.documentTypeId,_this.documentName,_this.isMandatory);
}

@override
String toString() {
  final _this = this as AdmissionDocumentType;
  return 'AdmissionDocumentType(documentTypeId: ${_this.documentTypeId}, documentName: ${_this.documentName}, isMandatory: ${_this.isMandatory})';
}


}

/// @nodoc
abstract mixin class $AdmissionDocumentTypeCopyWith<$Res>  {
  factory $AdmissionDocumentTypeCopyWith(AdmissionDocumentType value, $Res Function(AdmissionDocumentType) _then) = _$AdmissionDocumentTypeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'document_type_id') String? documentTypeId,@JsonKey(name: 'document_name') String? documentName,@JsonKey(name: 'is_mandatory') bool? isMandatory
});




}
/// @nodoc
class _$AdmissionDocumentTypeCopyWithImpl<$Res>
    implements $AdmissionDocumentTypeCopyWith<$Res> {
  _$AdmissionDocumentTypeCopyWithImpl(this._self, this._then);

  final AdmissionDocumentType _self;
  final $Res Function(AdmissionDocumentType) _then;

/// Create a copy of AdmissionDocumentType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? documentTypeId = freezed,Object? documentName = freezed,Object? isMandatory = freezed,}) {
  return _then(AdmissionDocumentType(
documentTypeId: freezed == documentTypeId ? _self.documentTypeId : documentTypeId // ignore: cast_nullable_to_non_nullable
as String?,documentName: freezed == documentName ? _self.documentName : documentName // ignore: cast_nullable_to_non_nullable
as String?,isMandatory: freezed == isMandatory ? _self.isMandatory : isMandatory // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionDocumentType].
extension AdmissionDocumentTypePatterns on AdmissionDocumentType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionDocumentType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionDocumentType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionDocumentType value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionDocumentType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionDocumentType value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionDocumentType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_type_id')  String? documentTypeId, @JsonKey(name: 'document_name')  String? documentName, @JsonKey(name: 'is_mandatory')  bool? isMandatory)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionDocumentType() when $default != null:
return $default(_that.documentTypeId,_that.documentName,_that.isMandatory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_type_id')  String? documentTypeId, @JsonKey(name: 'document_name')  String? documentName, @JsonKey(name: 'is_mandatory')  bool? isMandatory)  $default,) {final _that = this;
switch (_that) {
case _AdmissionDocumentType():
return $default(_that.documentTypeId,_that.documentName,_that.isMandatory);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'document_type_id')  String? documentTypeId, @JsonKey(name: 'document_name')  String? documentName, @JsonKey(name: 'is_mandatory')  bool? isMandatory)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionDocumentType() when $default != null:
return $default(_that.documentTypeId,_that.documentName,_that.isMandatory);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionDocumentType implements AdmissionDocumentType {
  const _AdmissionDocumentType({@JsonKey(name: 'document_type_id') this.documentTypeId, @JsonKey(name: 'document_name') this.documentName, @JsonKey(name: 'is_mandatory') this.isMandatory});
  factory _AdmissionDocumentType.fromJson(Map<String, dynamic> json) => _$AdmissionDocumentTypeFromJson(json);

@override@JsonKey(name: 'document_type_id') final  String? documentTypeId;
@override@JsonKey(name: 'document_name') final  String? documentName;
@override@JsonKey(name: 'is_mandatory') final  bool? isMandatory;

/// Create a copy of AdmissionDocumentType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionDocumentTypeCopyWith<_AdmissionDocumentType> get copyWith => __$AdmissionDocumentTypeCopyWithImpl<_AdmissionDocumentType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionDocumentTypeToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionDocumentType&&(identical(other.documentTypeId, documentTypeId) || other.documentTypeId == documentTypeId)&&(identical(other.documentName, documentName) || other.documentName == documentName)&&(identical(other.isMandatory, isMandatory) || other.isMandatory == isMandatory));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,documentTypeId,documentName,isMandatory);
}

@override
String toString() {
    return 'AdmissionDocumentType(documentTypeId: $documentTypeId, documentName: $documentName, isMandatory: $isMandatory)';
}


}

/// @nodoc
abstract mixin class _$AdmissionDocumentTypeCopyWith<$Res> implements $AdmissionDocumentTypeCopyWith<$Res> {
  factory _$AdmissionDocumentTypeCopyWith(_AdmissionDocumentType value, $Res Function(_AdmissionDocumentType) _then) = __$AdmissionDocumentTypeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'document_type_id') String? documentTypeId,@JsonKey(name: 'document_name') String? documentName,@JsonKey(name: 'is_mandatory') bool? isMandatory
});




}
/// @nodoc
class __$AdmissionDocumentTypeCopyWithImpl<$Res>
    implements _$AdmissionDocumentTypeCopyWith<$Res> {
  __$AdmissionDocumentTypeCopyWithImpl(this._self, this._then);

  final _AdmissionDocumentType _self;
  final $Res Function(_AdmissionDocumentType) _then;

/// Create a copy of AdmissionDocumentType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? documentTypeId = freezed,Object? documentName = freezed,Object? isMandatory = freezed,}) {
  return _then(_AdmissionDocumentType(
documentTypeId: freezed == documentTypeId ? _self.documentTypeId : documentTypeId // ignore: cast_nullable_to_non_nullable
as String?,documentName: freezed == documentName ? _self.documentName : documentName // ignore: cast_nullable_to_non_nullable
as String?,isMandatory: freezed == isMandatory ? _self.isMandatory : isMandatory // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$AdmissionDocument {

@JsonKey(name: 'document_id') String get documentId;@JsonKey(name: 'document_type_id') String? get documentTypeId;@JsonKey(name: 'file_name') String? get fileName;@JsonKey(name: 'file_url') String? get fileUrl;@JsonKey(name: 'file_size')@LooseNumConverter() num? get fileSize;@JsonKey(name: 'mime_type') String? get mimeType;@JsonKey(name: 'verification_status') String? get verificationStatus; String? get remarks;@JsonKey(name: 'upload_date') DateTime? get uploadDate;@JsonKey(name: 'document_types') AdmissionDocumentType? get documentType;
/// Create a copy of AdmissionDocument
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionDocumentCopyWith<AdmissionDocument> get copyWith => _$AdmissionDocumentCopyWithImpl<AdmissionDocument>(this as AdmissionDocument, _$identity);

  /// Serializes this AdmissionDocument to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionDocument;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionDocument&&(identical(other.documentId, _this.documentId) || other.documentId == _this.documentId)&&(identical(other.documentTypeId, _this.documentTypeId) || other.documentTypeId == _this.documentTypeId)&&(identical(other.fileName, _this.fileName) || other.fileName == _this.fileName)&&(identical(other.fileUrl, _this.fileUrl) || other.fileUrl == _this.fileUrl)&&(identical(other.fileSize, _this.fileSize) || other.fileSize == _this.fileSize)&&(identical(other.mimeType, _this.mimeType) || other.mimeType == _this.mimeType)&&(identical(other.verificationStatus, _this.verificationStatus) || other.verificationStatus == _this.verificationStatus)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.uploadDate, _this.uploadDate) || other.uploadDate == _this.uploadDate)&&(identical(other.documentType, _this.documentType) || other.documentType == _this.documentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionDocument;
  return Object.hash(runtimeType,_this.documentId,_this.documentTypeId,_this.fileName,_this.fileUrl,_this.fileSize,_this.mimeType,_this.verificationStatus,_this.remarks,_this.uploadDate,_this.documentType);
}

@override
String toString() {
  final _this = this as AdmissionDocument;
  return 'AdmissionDocument(documentId: ${_this.documentId}, documentTypeId: ${_this.documentTypeId}, fileName: ${_this.fileName}, fileUrl: ${_this.fileUrl}, fileSize: ${_this.fileSize}, mimeType: ${_this.mimeType}, verificationStatus: ${_this.verificationStatus}, remarks: ${_this.remarks}, uploadDate: ${_this.uploadDate}, documentType: ${_this.documentType})';
}


}

/// @nodoc
abstract mixin class $AdmissionDocumentCopyWith<$Res>  {
  factory $AdmissionDocumentCopyWith(AdmissionDocument value, $Res Function(AdmissionDocument) _then) = _$AdmissionDocumentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'document_id') String documentId,@JsonKey(name: 'document_type_id') String? documentTypeId,@JsonKey(name: 'file_name') String? fileName,@JsonKey(name: 'file_url') String? fileUrl,@JsonKey(name: 'file_size')@LooseNumConverter() num? fileSize,@JsonKey(name: 'mime_type') String? mimeType,@JsonKey(name: 'verification_status') String? verificationStatus, String? remarks,@JsonKey(name: 'upload_date') DateTime? uploadDate,@JsonKey(name: 'document_types') AdmissionDocumentType? documentType
});


$AdmissionDocumentTypeCopyWith<$Res>? get documentType;

}
/// @nodoc
class _$AdmissionDocumentCopyWithImpl<$Res>
    implements $AdmissionDocumentCopyWith<$Res> {
  _$AdmissionDocumentCopyWithImpl(this._self, this._then);

  final AdmissionDocument _self;
  final $Res Function(AdmissionDocument) _then;

/// Create a copy of AdmissionDocument
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? documentId = null,Object? documentTypeId = freezed,Object? fileName = freezed,Object? fileUrl = freezed,Object? fileSize = freezed,Object? mimeType = freezed,Object? verificationStatus = freezed,Object? remarks = freezed,Object? uploadDate = freezed,Object? documentType = freezed,}) {
  return _then(AdmissionDocument(
documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,documentTypeId: freezed == documentTypeId ? _self.documentTypeId : documentTypeId // ignore: cast_nullable_to_non_nullable
as String?,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,fileUrl: freezed == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String?,fileSize: freezed == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as num?,mimeType: freezed == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,uploadDate: freezed == uploadDate ? _self.uploadDate : uploadDate // ignore: cast_nullable_to_non_nullable
as DateTime?,documentType: freezed == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as AdmissionDocumentType?,
  ));
}
/// Create a copy of AdmissionDocument
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdmissionDocumentTypeCopyWith<$Res>? get documentType {
    if (_self.documentType == null) {
    return null;
  }

  return $AdmissionDocumentTypeCopyWith<$Res>(_self.documentType!, (value) {
    return _then(_self.copyWith(documentType: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdmissionDocument].
extension AdmissionDocumentPatterns on AdmissionDocument {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionDocument value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionDocument() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionDocument value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionDocument():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionDocument value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionDocument() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'document_type_id')  String? documentTypeId, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'file_url')  String? fileUrl, @JsonKey(name: 'file_size')@LooseNumConverter()  num? fileSize, @JsonKey(name: 'mime_type')  String? mimeType, @JsonKey(name: 'verification_status')  String? verificationStatus,  String? remarks, @JsonKey(name: 'upload_date')  DateTime? uploadDate, @JsonKey(name: 'document_types')  AdmissionDocumentType? documentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionDocument() when $default != null:
return $default(_that.documentId,_that.documentTypeId,_that.fileName,_that.fileUrl,_that.fileSize,_that.mimeType,_that.verificationStatus,_that.remarks,_that.uploadDate,_that.documentType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'document_type_id')  String? documentTypeId, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'file_url')  String? fileUrl, @JsonKey(name: 'file_size')@LooseNumConverter()  num? fileSize, @JsonKey(name: 'mime_type')  String? mimeType, @JsonKey(name: 'verification_status')  String? verificationStatus,  String? remarks, @JsonKey(name: 'upload_date')  DateTime? uploadDate, @JsonKey(name: 'document_types')  AdmissionDocumentType? documentType)  $default,) {final _that = this;
switch (_that) {
case _AdmissionDocument():
return $default(_that.documentId,_that.documentTypeId,_that.fileName,_that.fileUrl,_that.fileSize,_that.mimeType,_that.verificationStatus,_that.remarks,_that.uploadDate,_that.documentType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'document_type_id')  String? documentTypeId, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'file_url')  String? fileUrl, @JsonKey(name: 'file_size')@LooseNumConverter()  num? fileSize, @JsonKey(name: 'mime_type')  String? mimeType, @JsonKey(name: 'verification_status')  String? verificationStatus,  String? remarks, @JsonKey(name: 'upload_date')  DateTime? uploadDate, @JsonKey(name: 'document_types')  AdmissionDocumentType? documentType)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionDocument() when $default != null:
return $default(_that.documentId,_that.documentTypeId,_that.fileName,_that.fileUrl,_that.fileSize,_that.mimeType,_that.verificationStatus,_that.remarks,_that.uploadDate,_that.documentType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionDocument implements AdmissionDocument {
  const _AdmissionDocument({@JsonKey(name: 'document_id') required this.documentId, @JsonKey(name: 'document_type_id') this.documentTypeId, @JsonKey(name: 'file_name') this.fileName, @JsonKey(name: 'file_url') this.fileUrl, @JsonKey(name: 'file_size')@LooseNumConverter() this.fileSize, @JsonKey(name: 'mime_type') this.mimeType, @JsonKey(name: 'verification_status') this.verificationStatus, this.remarks, @JsonKey(name: 'upload_date') this.uploadDate, @JsonKey(name: 'document_types') this.documentType});
  factory _AdmissionDocument.fromJson(Map<String, dynamic> json) => _$AdmissionDocumentFromJson(json);

@override@JsonKey(name: 'document_id') final  String documentId;
@override@JsonKey(name: 'document_type_id') final  String? documentTypeId;
@override@JsonKey(name: 'file_name') final  String? fileName;
@override@JsonKey(name: 'file_url') final  String? fileUrl;
@override@JsonKey(name: 'file_size')@LooseNumConverter() final  num? fileSize;
@override@JsonKey(name: 'mime_type') final  String? mimeType;
@override@JsonKey(name: 'verification_status') final  String? verificationStatus;
@override final  String? remarks;
@override@JsonKey(name: 'upload_date') final  DateTime? uploadDate;
@override@JsonKey(name: 'document_types') final  AdmissionDocumentType? documentType;

/// Create a copy of AdmissionDocument
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionDocumentCopyWith<_AdmissionDocument> get copyWith => __$AdmissionDocumentCopyWithImpl<_AdmissionDocument>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionDocumentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionDocument&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.documentTypeId, documentTypeId) || other.documentTypeId == documentTypeId)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.verificationStatus, verificationStatus) || other.verificationStatus == verificationStatus)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.uploadDate, uploadDate) || other.uploadDate == uploadDate)&&(identical(other.documentType, documentType) || other.documentType == documentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,documentId,documentTypeId,fileName,fileUrl,fileSize,mimeType,verificationStatus,remarks,uploadDate,documentType);
}

@override
String toString() {
    return 'AdmissionDocument(documentId: $documentId, documentTypeId: $documentTypeId, fileName: $fileName, fileUrl: $fileUrl, fileSize: $fileSize, mimeType: $mimeType, verificationStatus: $verificationStatus, remarks: $remarks, uploadDate: $uploadDate, documentType: $documentType)';
}


}

/// @nodoc
abstract mixin class _$AdmissionDocumentCopyWith<$Res> implements $AdmissionDocumentCopyWith<$Res> {
  factory _$AdmissionDocumentCopyWith(_AdmissionDocument value, $Res Function(_AdmissionDocument) _then) = __$AdmissionDocumentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'document_id') String documentId,@JsonKey(name: 'document_type_id') String? documentTypeId,@JsonKey(name: 'file_name') String? fileName,@JsonKey(name: 'file_url') String? fileUrl,@JsonKey(name: 'file_size')@LooseNumConverter() num? fileSize,@JsonKey(name: 'mime_type') String? mimeType,@JsonKey(name: 'verification_status') String? verificationStatus, String? remarks,@JsonKey(name: 'upload_date') DateTime? uploadDate,@JsonKey(name: 'document_types') AdmissionDocumentType? documentType
});


@override $AdmissionDocumentTypeCopyWith<$Res>? get documentType;

}
/// @nodoc
class __$AdmissionDocumentCopyWithImpl<$Res>
    implements _$AdmissionDocumentCopyWith<$Res> {
  __$AdmissionDocumentCopyWithImpl(this._self, this._then);

  final _AdmissionDocument _self;
  final $Res Function(_AdmissionDocument) _then;

/// Create a copy of AdmissionDocument
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? documentId = null,Object? documentTypeId = freezed,Object? fileName = freezed,Object? fileUrl = freezed,Object? fileSize = freezed,Object? mimeType = freezed,Object? verificationStatus = freezed,Object? remarks = freezed,Object? uploadDate = freezed,Object? documentType = freezed,}) {
  return _then(_AdmissionDocument(
documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,documentTypeId: freezed == documentTypeId ? _self.documentTypeId : documentTypeId // ignore: cast_nullable_to_non_nullable
as String?,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,fileUrl: freezed == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String?,fileSize: freezed == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as num?,mimeType: freezed == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,uploadDate: freezed == uploadDate ? _self.uploadDate : uploadDate // ignore: cast_nullable_to_non_nullable
as DateTime?,documentType: freezed == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as AdmissionDocumentType?,
  ));
}

/// Create a copy of AdmissionDocument
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdmissionDocumentTypeCopyWith<$Res>? get documentType {
    if (_self.documentType == null) {
    return null;
  }

  return $AdmissionDocumentTypeCopyWith<$Res>(_self.documentType!, (value) {
    return _then(_self.copyWith(documentType: value));
  });
}
}


/// @nodoc
mixin _$AdmissionEntranceTest {

@JsonKey(name: 'test_id') String? get testId;@JsonKey(name: 'test_name') String? get testName;@JsonKey(name: 'test_date') DateTime? get testDate;@JsonKey(name: 'start_time') DateTime? get startTime;@JsonKey(name: 'end_time') DateTime? get endTime; String? get venue;
/// Create a copy of AdmissionEntranceTest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionEntranceTestCopyWith<AdmissionEntranceTest> get copyWith => _$AdmissionEntranceTestCopyWithImpl<AdmissionEntranceTest>(this as AdmissionEntranceTest, _$identity);

  /// Serializes this AdmissionEntranceTest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionEntranceTest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionEntranceTest&&(identical(other.testId, _this.testId) || other.testId == _this.testId)&&(identical(other.testName, _this.testName) || other.testName == _this.testName)&&(identical(other.testDate, _this.testDate) || other.testDate == _this.testDate)&&(identical(other.startTime, _this.startTime) || other.startTime == _this.startTime)&&(identical(other.endTime, _this.endTime) || other.endTime == _this.endTime)&&(identical(other.venue, _this.venue) || other.venue == _this.venue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionEntranceTest;
  return Object.hash(runtimeType,_this.testId,_this.testName,_this.testDate,_this.startTime,_this.endTime,_this.venue);
}

@override
String toString() {
  final _this = this as AdmissionEntranceTest;
  return 'AdmissionEntranceTest(testId: ${_this.testId}, testName: ${_this.testName}, testDate: ${_this.testDate}, startTime: ${_this.startTime}, endTime: ${_this.endTime}, venue: ${_this.venue})';
}


}

/// @nodoc
abstract mixin class $AdmissionEntranceTestCopyWith<$Res>  {
  factory $AdmissionEntranceTestCopyWith(AdmissionEntranceTest value, $Res Function(AdmissionEntranceTest) _then) = _$AdmissionEntranceTestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'test_id') String? testId,@JsonKey(name: 'test_name') String? testName,@JsonKey(name: 'test_date') DateTime? testDate,@JsonKey(name: 'start_time') DateTime? startTime,@JsonKey(name: 'end_time') DateTime? endTime, String? venue
});




}
/// @nodoc
class _$AdmissionEntranceTestCopyWithImpl<$Res>
    implements $AdmissionEntranceTestCopyWith<$Res> {
  _$AdmissionEntranceTestCopyWithImpl(this._self, this._then);

  final AdmissionEntranceTest _self;
  final $Res Function(AdmissionEntranceTest) _then;

/// Create a copy of AdmissionEntranceTest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? testId = freezed,Object? testName = freezed,Object? testDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? venue = freezed,}) {
  return _then(AdmissionEntranceTest(
testId: freezed == testId ? _self.testId : testId // ignore: cast_nullable_to_non_nullable
as String?,testName: freezed == testName ? _self.testName : testName // ignore: cast_nullable_to_non_nullable
as String?,testDate: freezed == testDate ? _self.testDate : testDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,venue: freezed == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionEntranceTest].
extension AdmissionEntranceTestPatterns on AdmissionEntranceTest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionEntranceTest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionEntranceTest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionEntranceTest value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionEntranceTest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionEntranceTest value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionEntranceTest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'test_id')  String? testId, @JsonKey(name: 'test_name')  String? testName, @JsonKey(name: 'test_date')  DateTime? testDate, @JsonKey(name: 'start_time')  DateTime? startTime, @JsonKey(name: 'end_time')  DateTime? endTime,  String? venue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionEntranceTest() when $default != null:
return $default(_that.testId,_that.testName,_that.testDate,_that.startTime,_that.endTime,_that.venue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'test_id')  String? testId, @JsonKey(name: 'test_name')  String? testName, @JsonKey(name: 'test_date')  DateTime? testDate, @JsonKey(name: 'start_time')  DateTime? startTime, @JsonKey(name: 'end_time')  DateTime? endTime,  String? venue)  $default,) {final _that = this;
switch (_that) {
case _AdmissionEntranceTest():
return $default(_that.testId,_that.testName,_that.testDate,_that.startTime,_that.endTime,_that.venue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'test_id')  String? testId, @JsonKey(name: 'test_name')  String? testName, @JsonKey(name: 'test_date')  DateTime? testDate, @JsonKey(name: 'start_time')  DateTime? startTime, @JsonKey(name: 'end_time')  DateTime? endTime,  String? venue)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionEntranceTest() when $default != null:
return $default(_that.testId,_that.testName,_that.testDate,_that.startTime,_that.endTime,_that.venue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionEntranceTest implements AdmissionEntranceTest {
  const _AdmissionEntranceTest({@JsonKey(name: 'test_id') this.testId, @JsonKey(name: 'test_name') this.testName, @JsonKey(name: 'test_date') this.testDate, @JsonKey(name: 'start_time') this.startTime, @JsonKey(name: 'end_time') this.endTime, this.venue});
  factory _AdmissionEntranceTest.fromJson(Map<String, dynamic> json) => _$AdmissionEntranceTestFromJson(json);

@override@JsonKey(name: 'test_id') final  String? testId;
@override@JsonKey(name: 'test_name') final  String? testName;
@override@JsonKey(name: 'test_date') final  DateTime? testDate;
@override@JsonKey(name: 'start_time') final  DateTime? startTime;
@override@JsonKey(name: 'end_time') final  DateTime? endTime;
@override final  String? venue;

/// Create a copy of AdmissionEntranceTest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionEntranceTestCopyWith<_AdmissionEntranceTest> get copyWith => __$AdmissionEntranceTestCopyWithImpl<_AdmissionEntranceTest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionEntranceTestToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionEntranceTest&&(identical(other.testId, testId) || other.testId == testId)&&(identical(other.testName, testName) || other.testName == testName)&&(identical(other.testDate, testDate) || other.testDate == testDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.venue, venue) || other.venue == venue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,testId,testName,testDate,startTime,endTime,venue);
}

@override
String toString() {
    return 'AdmissionEntranceTest(testId: $testId, testName: $testName, testDate: $testDate, startTime: $startTime, endTime: $endTime, venue: $venue)';
}


}

/// @nodoc
abstract mixin class _$AdmissionEntranceTestCopyWith<$Res> implements $AdmissionEntranceTestCopyWith<$Res> {
  factory _$AdmissionEntranceTestCopyWith(_AdmissionEntranceTest value, $Res Function(_AdmissionEntranceTest) _then) = __$AdmissionEntranceTestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'test_id') String? testId,@JsonKey(name: 'test_name') String? testName,@JsonKey(name: 'test_date') DateTime? testDate,@JsonKey(name: 'start_time') DateTime? startTime,@JsonKey(name: 'end_time') DateTime? endTime, String? venue
});




}
/// @nodoc
class __$AdmissionEntranceTestCopyWithImpl<$Res>
    implements _$AdmissionEntranceTestCopyWith<$Res> {
  __$AdmissionEntranceTestCopyWithImpl(this._self, this._then);

  final _AdmissionEntranceTest _self;
  final $Res Function(_AdmissionEntranceTest) _then;

/// Create a copy of AdmissionEntranceTest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? testId = freezed,Object? testName = freezed,Object? testDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? venue = freezed,}) {
  return _then(_AdmissionEntranceTest(
testId: freezed == testId ? _self.testId : testId // ignore: cast_nullable_to_non_nullable
as String?,testName: freezed == testName ? _self.testName : testName // ignore: cast_nullable_to_non_nullable
as String?,testDate: freezed == testDate ? _self.testDate : testDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,venue: freezed == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdmissionEntranceTestAssignment {

@JsonKey(name: 'assignment_id') String? get assignmentId;@JsonKey(name: 'registration_number') String? get registrationNumber;@JsonKey(name: 'seat_number') String? get seatNumber;@JsonKey(name: 'assigned_at') DateTime? get assignedAt;@JsonKey(name: 'entrance_tests') AdmissionEntranceTest? get test;
/// Create a copy of AdmissionEntranceTestAssignment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionEntranceTestAssignmentCopyWith<AdmissionEntranceTestAssignment> get copyWith => _$AdmissionEntranceTestAssignmentCopyWithImpl<AdmissionEntranceTestAssignment>(this as AdmissionEntranceTestAssignment, _$identity);

  /// Serializes this AdmissionEntranceTestAssignment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionEntranceTestAssignment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionEntranceTestAssignment&&(identical(other.assignmentId, _this.assignmentId) || other.assignmentId == _this.assignmentId)&&(identical(other.registrationNumber, _this.registrationNumber) || other.registrationNumber == _this.registrationNumber)&&(identical(other.seatNumber, _this.seatNumber) || other.seatNumber == _this.seatNumber)&&(identical(other.assignedAt, _this.assignedAt) || other.assignedAt == _this.assignedAt)&&(identical(other.test, _this.test) || other.test == _this.test));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionEntranceTestAssignment;
  return Object.hash(runtimeType,_this.assignmentId,_this.registrationNumber,_this.seatNumber,_this.assignedAt,_this.test);
}

@override
String toString() {
  final _this = this as AdmissionEntranceTestAssignment;
  return 'AdmissionEntranceTestAssignment(assignmentId: ${_this.assignmentId}, registrationNumber: ${_this.registrationNumber}, seatNumber: ${_this.seatNumber}, assignedAt: ${_this.assignedAt}, test: ${_this.test})';
}


}

/// @nodoc
abstract mixin class $AdmissionEntranceTestAssignmentCopyWith<$Res>  {
  factory $AdmissionEntranceTestAssignmentCopyWith(AdmissionEntranceTestAssignment value, $Res Function(AdmissionEntranceTestAssignment) _then) = _$AdmissionEntranceTestAssignmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'assignment_id') String? assignmentId,@JsonKey(name: 'registration_number') String? registrationNumber,@JsonKey(name: 'seat_number') String? seatNumber,@JsonKey(name: 'assigned_at') DateTime? assignedAt,@JsonKey(name: 'entrance_tests') AdmissionEntranceTest? test
});


$AdmissionEntranceTestCopyWith<$Res>? get test;

}
/// @nodoc
class _$AdmissionEntranceTestAssignmentCopyWithImpl<$Res>
    implements $AdmissionEntranceTestAssignmentCopyWith<$Res> {
  _$AdmissionEntranceTestAssignmentCopyWithImpl(this._self, this._then);

  final AdmissionEntranceTestAssignment _self;
  final $Res Function(AdmissionEntranceTestAssignment) _then;

/// Create a copy of AdmissionEntranceTestAssignment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assignmentId = freezed,Object? registrationNumber = freezed,Object? seatNumber = freezed,Object? assignedAt = freezed,Object? test = freezed,}) {
  return _then(AdmissionEntranceTestAssignment(
assignmentId: freezed == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String?,registrationNumber: freezed == registrationNumber ? _self.registrationNumber : registrationNumber // ignore: cast_nullable_to_non_nullable
as String?,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,assignedAt: freezed == assignedAt ? _self.assignedAt : assignedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,test: freezed == test ? _self.test : test // ignore: cast_nullable_to_non_nullable
as AdmissionEntranceTest?,
  ));
}
/// Create a copy of AdmissionEntranceTestAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdmissionEntranceTestCopyWith<$Res>? get test {
    if (_self.test == null) {
    return null;
  }

  return $AdmissionEntranceTestCopyWith<$Res>(_self.test!, (value) {
    return _then(_self.copyWith(test: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdmissionEntranceTestAssignment].
extension AdmissionEntranceTestAssignmentPatterns on AdmissionEntranceTestAssignment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionEntranceTestAssignment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionEntranceTestAssignment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionEntranceTestAssignment value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionEntranceTestAssignment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionEntranceTestAssignment value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionEntranceTestAssignment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'assignment_id')  String? assignmentId, @JsonKey(name: 'registration_number')  String? registrationNumber, @JsonKey(name: 'seat_number')  String? seatNumber, @JsonKey(name: 'assigned_at')  DateTime? assignedAt, @JsonKey(name: 'entrance_tests')  AdmissionEntranceTest? test)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionEntranceTestAssignment() when $default != null:
return $default(_that.assignmentId,_that.registrationNumber,_that.seatNumber,_that.assignedAt,_that.test);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'assignment_id')  String? assignmentId, @JsonKey(name: 'registration_number')  String? registrationNumber, @JsonKey(name: 'seat_number')  String? seatNumber, @JsonKey(name: 'assigned_at')  DateTime? assignedAt, @JsonKey(name: 'entrance_tests')  AdmissionEntranceTest? test)  $default,) {final _that = this;
switch (_that) {
case _AdmissionEntranceTestAssignment():
return $default(_that.assignmentId,_that.registrationNumber,_that.seatNumber,_that.assignedAt,_that.test);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'assignment_id')  String? assignmentId, @JsonKey(name: 'registration_number')  String? registrationNumber, @JsonKey(name: 'seat_number')  String? seatNumber, @JsonKey(name: 'assigned_at')  DateTime? assignedAt, @JsonKey(name: 'entrance_tests')  AdmissionEntranceTest? test)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionEntranceTestAssignment() when $default != null:
return $default(_that.assignmentId,_that.registrationNumber,_that.seatNumber,_that.assignedAt,_that.test);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionEntranceTestAssignment implements AdmissionEntranceTestAssignment {
  const _AdmissionEntranceTestAssignment({@JsonKey(name: 'assignment_id') this.assignmentId, @JsonKey(name: 'registration_number') this.registrationNumber, @JsonKey(name: 'seat_number') this.seatNumber, @JsonKey(name: 'assigned_at') this.assignedAt, @JsonKey(name: 'entrance_tests') this.test});
  factory _AdmissionEntranceTestAssignment.fromJson(Map<String, dynamic> json) => _$AdmissionEntranceTestAssignmentFromJson(json);

@override@JsonKey(name: 'assignment_id') final  String? assignmentId;
@override@JsonKey(name: 'registration_number') final  String? registrationNumber;
@override@JsonKey(name: 'seat_number') final  String? seatNumber;
@override@JsonKey(name: 'assigned_at') final  DateTime? assignedAt;
@override@JsonKey(name: 'entrance_tests') final  AdmissionEntranceTest? test;

/// Create a copy of AdmissionEntranceTestAssignment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionEntranceTestAssignmentCopyWith<_AdmissionEntranceTestAssignment> get copyWith => __$AdmissionEntranceTestAssignmentCopyWithImpl<_AdmissionEntranceTestAssignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionEntranceTestAssignmentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionEntranceTestAssignment&&(identical(other.assignmentId, assignmentId) || other.assignmentId == assignmentId)&&(identical(other.registrationNumber, registrationNumber) || other.registrationNumber == registrationNumber)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.assignedAt, assignedAt) || other.assignedAt == assignedAt)&&(identical(other.test, test) || other.test == test));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,assignmentId,registrationNumber,seatNumber,assignedAt,test);
}

@override
String toString() {
    return 'AdmissionEntranceTestAssignment(assignmentId: $assignmentId, registrationNumber: $registrationNumber, seatNumber: $seatNumber, assignedAt: $assignedAt, test: $test)';
}


}

/// @nodoc
abstract mixin class _$AdmissionEntranceTestAssignmentCopyWith<$Res> implements $AdmissionEntranceTestAssignmentCopyWith<$Res> {
  factory _$AdmissionEntranceTestAssignmentCopyWith(_AdmissionEntranceTestAssignment value, $Res Function(_AdmissionEntranceTestAssignment) _then) = __$AdmissionEntranceTestAssignmentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'assignment_id') String? assignmentId,@JsonKey(name: 'registration_number') String? registrationNumber,@JsonKey(name: 'seat_number') String? seatNumber,@JsonKey(name: 'assigned_at') DateTime? assignedAt,@JsonKey(name: 'entrance_tests') AdmissionEntranceTest? test
});


@override $AdmissionEntranceTestCopyWith<$Res>? get test;

}
/// @nodoc
class __$AdmissionEntranceTestAssignmentCopyWithImpl<$Res>
    implements _$AdmissionEntranceTestAssignmentCopyWith<$Res> {
  __$AdmissionEntranceTestAssignmentCopyWithImpl(this._self, this._then);

  final _AdmissionEntranceTestAssignment _self;
  final $Res Function(_AdmissionEntranceTestAssignment) _then;

/// Create a copy of AdmissionEntranceTestAssignment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assignmentId = freezed,Object? registrationNumber = freezed,Object? seatNumber = freezed,Object? assignedAt = freezed,Object? test = freezed,}) {
  return _then(_AdmissionEntranceTestAssignment(
assignmentId: freezed == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String?,registrationNumber: freezed == registrationNumber ? _self.registrationNumber : registrationNumber // ignore: cast_nullable_to_non_nullable
as String?,seatNumber: freezed == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String?,assignedAt: freezed == assignedAt ? _self.assignedAt : assignedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,test: freezed == test ? _self.test : test // ignore: cast_nullable_to_non_nullable
as AdmissionEntranceTest?,
  ));
}

/// Create a copy of AdmissionEntranceTestAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdmissionEntranceTestCopyWith<$Res>? get test {
    if (_self.test == null) {
    return null;
  }

  return $AdmissionEntranceTestCopyWith<$Res>(_self.test!, (value) {
    return _then(_self.copyWith(test: value));
  });
}
}


/// @nodoc
mixin _$AdmissionApplicationDetail {

@JsonKey(name: 'application_id') String get applicationId;@JsonKey(name: 'application_no') String? get applicationNo;@JsonKey(name: 'application_status') String? get applicationStatus;@JsonKey(name: 'payment_status') String? get paymentStatus;@JsonKey(name: 'registration_fee')@NullableDecimalConverter() Decimal? get registrationFee;@JsonKey(name: 'submitted_at') DateTime? get submittedAt;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;@JsonKey(name: 'payment_rejection_reason') String? get paymentRejectionReason;@JsonKey(name: 'called_for_interview') bool? get calledForInterview;@JsonKey(name: 'called_for_interview_at') DateTime? get calledForInterviewAt;@JsonKey(name: 'is_qualified') bool? get isQualified;@JsonKey(name: 'qualified_at') DateTime? get qualifiedAt;@JsonKey(name: 'is_selected_final') bool? get isSelectedFinal;@JsonKey(name: 'selected_at') DateTime? get selectedAt;@JsonKey(name: 'registered_at') DateTime? get registeredAt;@JsonKey(name: 'classes') ClassRef? get classRef;@JsonKey(name: 'academic_sessions') SessionRef? get session;@JsonKey(name: 'institutions') InstitutionRef? get institution;@JsonKey(name: 'applicants') AdmissionApplicant? get applicant; List<AdmissionParent> get parents; List<AdmissionSibling> get siblings; List<AdmissionAddress> get addresses;@JsonKey(name: 'emergency_contacts') List<AdmissionEmergencyContact> get emergencyContacts;@JsonKey(name: 'previous_schools') List<AdmissionPreviousSchool> get previousSchools;@JsonKey(name: 'applicant_documents') List<AdmissionDocument> get documents;@JsonKey(name: 'admission_reviews') List<AdmissionReview> get reviews;@JsonKey(name: 'entrance_test_assignments') List<AdmissionEntranceTestAssignment> get entranceTests;@JsonKey(name: 'interview_attendance') List<AdmissionInterviewAttendance> get interviewAttendance;
/// Create a copy of AdmissionApplicationDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionApplicationDetailCopyWith<AdmissionApplicationDetail> get copyWith => _$AdmissionApplicationDetailCopyWithImpl<AdmissionApplicationDetail>(this as AdmissionApplicationDetail, _$identity);

  /// Serializes this AdmissionApplicationDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionApplicationDetail;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionApplicationDetail&&(identical(other.applicationId, _this.applicationId) || other.applicationId == _this.applicationId)&&(identical(other.applicationNo, _this.applicationNo) || other.applicationNo == _this.applicationNo)&&(identical(other.applicationStatus, _this.applicationStatus) || other.applicationStatus == _this.applicationStatus)&&(identical(other.paymentStatus, _this.paymentStatus) || other.paymentStatus == _this.paymentStatus)&&(identical(other.registrationFee, _this.registrationFee) || other.registrationFee == _this.registrationFee)&&(identical(other.submittedAt, _this.submittedAt) || other.submittedAt == _this.submittedAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.paymentRejectionReason, _this.paymentRejectionReason) || other.paymentRejectionReason == _this.paymentRejectionReason)&&(identical(other.calledForInterview, _this.calledForInterview) || other.calledForInterview == _this.calledForInterview)&&(identical(other.calledForInterviewAt, _this.calledForInterviewAt) || other.calledForInterviewAt == _this.calledForInterviewAt)&&(identical(other.isQualified, _this.isQualified) || other.isQualified == _this.isQualified)&&(identical(other.qualifiedAt, _this.qualifiedAt) || other.qualifiedAt == _this.qualifiedAt)&&(identical(other.isSelectedFinal, _this.isSelectedFinal) || other.isSelectedFinal == _this.isSelectedFinal)&&(identical(other.selectedAt, _this.selectedAt) || other.selectedAt == _this.selectedAt)&&(identical(other.registeredAt, _this.registeredAt) || other.registeredAt == _this.registeredAt)&&(identical(other.classRef, _this.classRef) || other.classRef == _this.classRef)&&(identical(other.session, _this.session) || other.session == _this.session)&&(identical(other.institution, _this.institution) || other.institution == _this.institution)&&(identical(other.applicant, _this.applicant) || other.applicant == _this.applicant)&&const DeepCollectionEquality().equals(other.parents, _this.parents)&&const DeepCollectionEquality().equals(other.siblings, _this.siblings)&&const DeepCollectionEquality().equals(other.addresses, _this.addresses)&&const DeepCollectionEquality().equals(other.emergencyContacts, _this.emergencyContacts)&&const DeepCollectionEquality().equals(other.previousSchools, _this.previousSchools)&&const DeepCollectionEquality().equals(other.documents, _this.documents)&&const DeepCollectionEquality().equals(other.reviews, _this.reviews)&&const DeepCollectionEquality().equals(other.entranceTests, _this.entranceTests)&&const DeepCollectionEquality().equals(other.interviewAttendance, _this.interviewAttendance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionApplicationDetail;
  return Object.hashAll([runtimeType,_this.applicationId,_this.applicationNo,_this.applicationStatus,_this.paymentStatus,_this.registrationFee,_this.submittedAt,_this.createdAt,_this.updatedAt,_this.paymentRejectionReason,_this.calledForInterview,_this.calledForInterviewAt,_this.isQualified,_this.qualifiedAt,_this.isSelectedFinal,_this.selectedAt,_this.registeredAt,_this.classRef,_this.session,_this.institution,_this.applicant,const DeepCollectionEquality().hash(_this.parents),const DeepCollectionEquality().hash(_this.siblings),const DeepCollectionEquality().hash(_this.addresses),const DeepCollectionEquality().hash(_this.emergencyContacts),const DeepCollectionEquality().hash(_this.previousSchools),const DeepCollectionEquality().hash(_this.documents),const DeepCollectionEquality().hash(_this.reviews),const DeepCollectionEquality().hash(_this.entranceTests),const DeepCollectionEquality().hash(_this.interviewAttendance)]);
}

@override
String toString() {
  final _this = this as AdmissionApplicationDetail;
  return 'AdmissionApplicationDetail(applicationId: ${_this.applicationId}, applicationNo: ${_this.applicationNo}, applicationStatus: ${_this.applicationStatus}, paymentStatus: ${_this.paymentStatus}, registrationFee: ${_this.registrationFee}, submittedAt: ${_this.submittedAt}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, paymentRejectionReason: ${_this.paymentRejectionReason}, calledForInterview: ${_this.calledForInterview}, calledForInterviewAt: ${_this.calledForInterviewAt}, isQualified: ${_this.isQualified}, qualifiedAt: ${_this.qualifiedAt}, isSelectedFinal: ${_this.isSelectedFinal}, selectedAt: ${_this.selectedAt}, registeredAt: ${_this.registeredAt}, classRef: ${_this.classRef}, session: ${_this.session}, institution: ${_this.institution}, applicant: ${_this.applicant}, parents: ${_this.parents}, siblings: ${_this.siblings}, addresses: ${_this.addresses}, emergencyContacts: ${_this.emergencyContacts}, previousSchools: ${_this.previousSchools}, documents: ${_this.documents}, reviews: ${_this.reviews}, entranceTests: ${_this.entranceTests}, interviewAttendance: ${_this.interviewAttendance})';
}


}

/// @nodoc
abstract mixin class $AdmissionApplicationDetailCopyWith<$Res>  {
  factory $AdmissionApplicationDetailCopyWith(AdmissionApplicationDetail value, $Res Function(AdmissionApplicationDetail) _then) = _$AdmissionApplicationDetailCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'application_id') String applicationId,@JsonKey(name: 'application_no') String? applicationNo,@JsonKey(name: 'application_status') String? applicationStatus,@JsonKey(name: 'payment_status') String? paymentStatus,@JsonKey(name: 'registration_fee')@NullableDecimalConverter() Decimal? registrationFee,@JsonKey(name: 'submitted_at') DateTime? submittedAt,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'payment_rejection_reason') String? paymentRejectionReason,@JsonKey(name: 'called_for_interview') bool? calledForInterview,@JsonKey(name: 'called_for_interview_at') DateTime? calledForInterviewAt,@JsonKey(name: 'is_qualified') bool? isQualified,@JsonKey(name: 'qualified_at') DateTime? qualifiedAt,@JsonKey(name: 'is_selected_final') bool? isSelectedFinal,@JsonKey(name: 'selected_at') DateTime? selectedAt,@JsonKey(name: 'registered_at') DateTime? registeredAt,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'academic_sessions') SessionRef? session,@JsonKey(name: 'institutions') InstitutionRef? institution,@JsonKey(name: 'applicants') AdmissionApplicant? applicant, List<AdmissionParent> parents, List<AdmissionSibling> siblings, List<AdmissionAddress> addresses,@JsonKey(name: 'emergency_contacts') List<AdmissionEmergencyContact> emergencyContacts,@JsonKey(name: 'previous_schools') List<AdmissionPreviousSchool> previousSchools,@JsonKey(name: 'applicant_documents') List<AdmissionDocument> documents,@JsonKey(name: 'admission_reviews') List<AdmissionReview> reviews,@JsonKey(name: 'entrance_test_assignments') List<AdmissionEntranceTestAssignment> entranceTests,@JsonKey(name: 'interview_attendance') List<AdmissionInterviewAttendance> interviewAttendance
});


$ClassRefCopyWith<$Res>? get classRef;$SessionRefCopyWith<$Res>? get session;$InstitutionRefCopyWith<$Res>? get institution;$AdmissionApplicantCopyWith<$Res>? get applicant;

}
/// @nodoc
class _$AdmissionApplicationDetailCopyWithImpl<$Res>
    implements $AdmissionApplicationDetailCopyWith<$Res> {
  _$AdmissionApplicationDetailCopyWithImpl(this._self, this._then);

  final AdmissionApplicationDetail _self;
  final $Res Function(AdmissionApplicationDetail) _then;

/// Create a copy of AdmissionApplicationDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? applicationId = null,Object? applicationNo = freezed,Object? applicationStatus = freezed,Object? paymentStatus = freezed,Object? registrationFee = freezed,Object? submittedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? paymentRejectionReason = freezed,Object? calledForInterview = freezed,Object? calledForInterviewAt = freezed,Object? isQualified = freezed,Object? qualifiedAt = freezed,Object? isSelectedFinal = freezed,Object? selectedAt = freezed,Object? registeredAt = freezed,Object? classRef = freezed,Object? session = freezed,Object? institution = freezed,Object? applicant = freezed,Object? parents = null,Object? siblings = null,Object? addresses = null,Object? emergencyContacts = null,Object? previousSchools = null,Object? documents = null,Object? reviews = null,Object? entranceTests = null,Object? interviewAttendance = null,}) {
  return _then(AdmissionApplicationDetail(
applicationId: null == applicationId ? _self.applicationId : applicationId // ignore: cast_nullable_to_non_nullable
as String,applicationNo: freezed == applicationNo ? _self.applicationNo : applicationNo // ignore: cast_nullable_to_non_nullable
as String?,applicationStatus: freezed == applicationStatus ? _self.applicationStatus : applicationStatus // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,registrationFee: freezed == registrationFee ? _self.registrationFee : registrationFee // ignore: cast_nullable_to_non_nullable
as Decimal?,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentRejectionReason: freezed == paymentRejectionReason ? _self.paymentRejectionReason : paymentRejectionReason // ignore: cast_nullable_to_non_nullable
as String?,calledForInterview: freezed == calledForInterview ? _self.calledForInterview : calledForInterview // ignore: cast_nullable_to_non_nullable
as bool?,calledForInterviewAt: freezed == calledForInterviewAt ? _self.calledForInterviewAt : calledForInterviewAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isQualified: freezed == isQualified ? _self.isQualified : isQualified // ignore: cast_nullable_to_non_nullable
as bool?,qualifiedAt: freezed == qualifiedAt ? _self.qualifiedAt : qualifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isSelectedFinal: freezed == isSelectedFinal ? _self.isSelectedFinal : isSelectedFinal // ignore: cast_nullable_to_non_nullable
as bool?,selectedAt: freezed == selectedAt ? _self.selectedAt : selectedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,registeredAt: freezed == registeredAt ? _self.registeredAt : registeredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,institution: freezed == institution ? _self.institution : institution // ignore: cast_nullable_to_non_nullable
as InstitutionRef?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as AdmissionApplicant?,parents: null == parents ? _self.parents : parents // ignore: cast_nullable_to_non_nullable
as List<AdmissionParent>,siblings: null == siblings ? _self.siblings : siblings // ignore: cast_nullable_to_non_nullable
as List<AdmissionSibling>,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<AdmissionAddress>,emergencyContacts: null == emergencyContacts ? _self.emergencyContacts : emergencyContacts // ignore: cast_nullable_to_non_nullable
as List<AdmissionEmergencyContact>,previousSchools: null == previousSchools ? _self.previousSchools : previousSchools // ignore: cast_nullable_to_non_nullable
as List<AdmissionPreviousSchool>,documents: null == documents ? _self.documents : documents // ignore: cast_nullable_to_non_nullable
as List<AdmissionDocument>,reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<AdmissionReview>,entranceTests: null == entranceTests ? _self.entranceTests : entranceTests // ignore: cast_nullable_to_non_nullable
as List<AdmissionEntranceTestAssignment>,interviewAttendance: null == interviewAttendance ? _self.interviewAttendance : interviewAttendance // ignore: cast_nullable_to_non_nullable
as List<AdmissionInterviewAttendance>,
  ));
}
/// Create a copy of AdmissionApplicationDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get classRef {
    if (_self.classRef == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.classRef!, (value) {
    return _then(_self.copyWith(classRef: value));
  });
}/// Create a copy of AdmissionApplicationDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionRefCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $SessionRefCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}/// Create a copy of AdmissionApplicationDetail
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
}/// Create a copy of AdmissionApplicationDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdmissionApplicantCopyWith<$Res>? get applicant {
    if (_self.applicant == null) {
    return null;
  }

  return $AdmissionApplicantCopyWith<$Res>(_self.applicant!, (value) {
    return _then(_self.copyWith(applicant: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdmissionApplicationDetail].
extension AdmissionApplicationDetailPatterns on AdmissionApplicationDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionApplicationDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionApplicationDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionApplicationDetail value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionApplicationDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionApplicationDetail value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionApplicationDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'application_id')  String applicationId, @JsonKey(name: 'application_no')  String? applicationNo, @JsonKey(name: 'application_status')  String? applicationStatus, @JsonKey(name: 'payment_status')  String? paymentStatus, @JsonKey(name: 'registration_fee')@NullableDecimalConverter()  Decimal? registrationFee, @JsonKey(name: 'submitted_at')  DateTime? submittedAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'payment_rejection_reason')  String? paymentRejectionReason, @JsonKey(name: 'called_for_interview')  bool? calledForInterview, @JsonKey(name: 'called_for_interview_at')  DateTime? calledForInterviewAt, @JsonKey(name: 'is_qualified')  bool? isQualified, @JsonKey(name: 'qualified_at')  DateTime? qualifiedAt, @JsonKey(name: 'is_selected_final')  bool? isSelectedFinal, @JsonKey(name: 'selected_at')  DateTime? selectedAt, @JsonKey(name: 'registered_at')  DateTime? registeredAt, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'academic_sessions')  SessionRef? session, @JsonKey(name: 'institutions')  InstitutionRef? institution, @JsonKey(name: 'applicants')  AdmissionApplicant? applicant,  List<AdmissionParent> parents,  List<AdmissionSibling> siblings,  List<AdmissionAddress> addresses, @JsonKey(name: 'emergency_contacts')  List<AdmissionEmergencyContact> emergencyContacts, @JsonKey(name: 'previous_schools')  List<AdmissionPreviousSchool> previousSchools, @JsonKey(name: 'applicant_documents')  List<AdmissionDocument> documents, @JsonKey(name: 'admission_reviews')  List<AdmissionReview> reviews, @JsonKey(name: 'entrance_test_assignments')  List<AdmissionEntranceTestAssignment> entranceTests, @JsonKey(name: 'interview_attendance')  List<AdmissionInterviewAttendance> interviewAttendance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionApplicationDetail() when $default != null:
return $default(_that.applicationId,_that.applicationNo,_that.applicationStatus,_that.paymentStatus,_that.registrationFee,_that.submittedAt,_that.createdAt,_that.updatedAt,_that.paymentRejectionReason,_that.calledForInterview,_that.calledForInterviewAt,_that.isQualified,_that.qualifiedAt,_that.isSelectedFinal,_that.selectedAt,_that.registeredAt,_that.classRef,_that.session,_that.institution,_that.applicant,_that.parents,_that.siblings,_that.addresses,_that.emergencyContacts,_that.previousSchools,_that.documents,_that.reviews,_that.entranceTests,_that.interviewAttendance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'application_id')  String applicationId, @JsonKey(name: 'application_no')  String? applicationNo, @JsonKey(name: 'application_status')  String? applicationStatus, @JsonKey(name: 'payment_status')  String? paymentStatus, @JsonKey(name: 'registration_fee')@NullableDecimalConverter()  Decimal? registrationFee, @JsonKey(name: 'submitted_at')  DateTime? submittedAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'payment_rejection_reason')  String? paymentRejectionReason, @JsonKey(name: 'called_for_interview')  bool? calledForInterview, @JsonKey(name: 'called_for_interview_at')  DateTime? calledForInterviewAt, @JsonKey(name: 'is_qualified')  bool? isQualified, @JsonKey(name: 'qualified_at')  DateTime? qualifiedAt, @JsonKey(name: 'is_selected_final')  bool? isSelectedFinal, @JsonKey(name: 'selected_at')  DateTime? selectedAt, @JsonKey(name: 'registered_at')  DateTime? registeredAt, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'academic_sessions')  SessionRef? session, @JsonKey(name: 'institutions')  InstitutionRef? institution, @JsonKey(name: 'applicants')  AdmissionApplicant? applicant,  List<AdmissionParent> parents,  List<AdmissionSibling> siblings,  List<AdmissionAddress> addresses, @JsonKey(name: 'emergency_contacts')  List<AdmissionEmergencyContact> emergencyContacts, @JsonKey(name: 'previous_schools')  List<AdmissionPreviousSchool> previousSchools, @JsonKey(name: 'applicant_documents')  List<AdmissionDocument> documents, @JsonKey(name: 'admission_reviews')  List<AdmissionReview> reviews, @JsonKey(name: 'entrance_test_assignments')  List<AdmissionEntranceTestAssignment> entranceTests, @JsonKey(name: 'interview_attendance')  List<AdmissionInterviewAttendance> interviewAttendance)  $default,) {final _that = this;
switch (_that) {
case _AdmissionApplicationDetail():
return $default(_that.applicationId,_that.applicationNo,_that.applicationStatus,_that.paymentStatus,_that.registrationFee,_that.submittedAt,_that.createdAt,_that.updatedAt,_that.paymentRejectionReason,_that.calledForInterview,_that.calledForInterviewAt,_that.isQualified,_that.qualifiedAt,_that.isSelectedFinal,_that.selectedAt,_that.registeredAt,_that.classRef,_that.session,_that.institution,_that.applicant,_that.parents,_that.siblings,_that.addresses,_that.emergencyContacts,_that.previousSchools,_that.documents,_that.reviews,_that.entranceTests,_that.interviewAttendance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'application_id')  String applicationId, @JsonKey(name: 'application_no')  String? applicationNo, @JsonKey(name: 'application_status')  String? applicationStatus, @JsonKey(name: 'payment_status')  String? paymentStatus, @JsonKey(name: 'registration_fee')@NullableDecimalConverter()  Decimal? registrationFee, @JsonKey(name: 'submitted_at')  DateTime? submittedAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'payment_rejection_reason')  String? paymentRejectionReason, @JsonKey(name: 'called_for_interview')  bool? calledForInterview, @JsonKey(name: 'called_for_interview_at')  DateTime? calledForInterviewAt, @JsonKey(name: 'is_qualified')  bool? isQualified, @JsonKey(name: 'qualified_at')  DateTime? qualifiedAt, @JsonKey(name: 'is_selected_final')  bool? isSelectedFinal, @JsonKey(name: 'selected_at')  DateTime? selectedAt, @JsonKey(name: 'registered_at')  DateTime? registeredAt, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'academic_sessions')  SessionRef? session, @JsonKey(name: 'institutions')  InstitutionRef? institution, @JsonKey(name: 'applicants')  AdmissionApplicant? applicant,  List<AdmissionParent> parents,  List<AdmissionSibling> siblings,  List<AdmissionAddress> addresses, @JsonKey(name: 'emergency_contacts')  List<AdmissionEmergencyContact> emergencyContacts, @JsonKey(name: 'previous_schools')  List<AdmissionPreviousSchool> previousSchools, @JsonKey(name: 'applicant_documents')  List<AdmissionDocument> documents, @JsonKey(name: 'admission_reviews')  List<AdmissionReview> reviews, @JsonKey(name: 'entrance_test_assignments')  List<AdmissionEntranceTestAssignment> entranceTests, @JsonKey(name: 'interview_attendance')  List<AdmissionInterviewAttendance> interviewAttendance)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionApplicationDetail() when $default != null:
return $default(_that.applicationId,_that.applicationNo,_that.applicationStatus,_that.paymentStatus,_that.registrationFee,_that.submittedAt,_that.createdAt,_that.updatedAt,_that.paymentRejectionReason,_that.calledForInterview,_that.calledForInterviewAt,_that.isQualified,_that.qualifiedAt,_that.isSelectedFinal,_that.selectedAt,_that.registeredAt,_that.classRef,_that.session,_that.institution,_that.applicant,_that.parents,_that.siblings,_that.addresses,_that.emergencyContacts,_that.previousSchools,_that.documents,_that.reviews,_that.entranceTests,_that.interviewAttendance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionApplicationDetail implements AdmissionApplicationDetail {
  const _AdmissionApplicationDetail({@JsonKey(name: 'application_id') required this.applicationId, @JsonKey(name: 'application_no') this.applicationNo, @JsonKey(name: 'application_status') this.applicationStatus, @JsonKey(name: 'payment_status') this.paymentStatus, @JsonKey(name: 'registration_fee')@NullableDecimalConverter() this.registrationFee, @JsonKey(name: 'submitted_at') this.submittedAt, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'payment_rejection_reason') this.paymentRejectionReason, @JsonKey(name: 'called_for_interview') this.calledForInterview, @JsonKey(name: 'called_for_interview_at') this.calledForInterviewAt, @JsonKey(name: 'is_qualified') this.isQualified, @JsonKey(name: 'qualified_at') this.qualifiedAt, @JsonKey(name: 'is_selected_final') this.isSelectedFinal, @JsonKey(name: 'selected_at') this.selectedAt, @JsonKey(name: 'registered_at') this.registeredAt, @JsonKey(name: 'classes') this.classRef, @JsonKey(name: 'academic_sessions') this.session, @JsonKey(name: 'institutions') this.institution, @JsonKey(name: 'applicants') this.applicant,  List<AdmissionParent> parents = const <AdmissionParent>[],  List<AdmissionSibling> siblings = const <AdmissionSibling>[],  List<AdmissionAddress> addresses = const <AdmissionAddress>[], @JsonKey(name: 'emergency_contacts')  List<AdmissionEmergencyContact> emergencyContacts = const <AdmissionEmergencyContact>[], @JsonKey(name: 'previous_schools')  List<AdmissionPreviousSchool> previousSchools = const <AdmissionPreviousSchool>[], @JsonKey(name: 'applicant_documents')  List<AdmissionDocument> documents = const <AdmissionDocument>[], @JsonKey(name: 'admission_reviews')  List<AdmissionReview> reviews = const <AdmissionReview>[], @JsonKey(name: 'entrance_test_assignments')  List<AdmissionEntranceTestAssignment> entranceTests = const <AdmissionEntranceTestAssignment>[], @JsonKey(name: 'interview_attendance')  List<AdmissionInterviewAttendance> interviewAttendance = const <AdmissionInterviewAttendance>[]}): _parents = parents,_siblings = siblings,_addresses = addresses,_emergencyContacts = emergencyContacts,_previousSchools = previousSchools,_documents = documents,_reviews = reviews,_entranceTests = entranceTests,_interviewAttendance = interviewAttendance;
  factory _AdmissionApplicationDetail.fromJson(Map<String, dynamic> json) => _$AdmissionApplicationDetailFromJson(json);

@override@JsonKey(name: 'application_id') final  String applicationId;
@override@JsonKey(name: 'application_no') final  String? applicationNo;
@override@JsonKey(name: 'application_status') final  String? applicationStatus;
@override@JsonKey(name: 'payment_status') final  String? paymentStatus;
@override@JsonKey(name: 'registration_fee')@NullableDecimalConverter() final  Decimal? registrationFee;
@override@JsonKey(name: 'submitted_at') final  DateTime? submittedAt;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
@override@JsonKey(name: 'payment_rejection_reason') final  String? paymentRejectionReason;
@override@JsonKey(name: 'called_for_interview') final  bool? calledForInterview;
@override@JsonKey(name: 'called_for_interview_at') final  DateTime? calledForInterviewAt;
@override@JsonKey(name: 'is_qualified') final  bool? isQualified;
@override@JsonKey(name: 'qualified_at') final  DateTime? qualifiedAt;
@override@JsonKey(name: 'is_selected_final') final  bool? isSelectedFinal;
@override@JsonKey(name: 'selected_at') final  DateTime? selectedAt;
@override@JsonKey(name: 'registered_at') final  DateTime? registeredAt;
@override@JsonKey(name: 'classes') final  ClassRef? classRef;
@override@JsonKey(name: 'academic_sessions') final  SessionRef? session;
@override@JsonKey(name: 'institutions') final  InstitutionRef? institution;
@override@JsonKey(name: 'applicants') final  AdmissionApplicant? applicant;
 final  List<AdmissionParent> _parents;
@override@JsonKey() List<AdmissionParent> get parents {
  if (_parents is EqualUnmodifiableListView) return _parents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parents);
}

 final  List<AdmissionSibling> _siblings;
@override@JsonKey() List<AdmissionSibling> get siblings {
  if (_siblings is EqualUnmodifiableListView) return _siblings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_siblings);
}

 final  List<AdmissionAddress> _addresses;
@override@JsonKey() List<AdmissionAddress> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}

 final  List<AdmissionEmergencyContact> _emergencyContacts;
@override@JsonKey(name: 'emergency_contacts') List<AdmissionEmergencyContact> get emergencyContacts {
  if (_emergencyContacts is EqualUnmodifiableListView) return _emergencyContacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_emergencyContacts);
}

 final  List<AdmissionPreviousSchool> _previousSchools;
@override@JsonKey(name: 'previous_schools') List<AdmissionPreviousSchool> get previousSchools {
  if (_previousSchools is EqualUnmodifiableListView) return _previousSchools;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_previousSchools);
}

 final  List<AdmissionDocument> _documents;
@override@JsonKey(name: 'applicant_documents') List<AdmissionDocument> get documents {
  if (_documents is EqualUnmodifiableListView) return _documents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_documents);
}

 final  List<AdmissionReview> _reviews;
@override@JsonKey(name: 'admission_reviews') List<AdmissionReview> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}

 final  List<AdmissionEntranceTestAssignment> _entranceTests;
@override@JsonKey(name: 'entrance_test_assignments') List<AdmissionEntranceTestAssignment> get entranceTests {
  if (_entranceTests is EqualUnmodifiableListView) return _entranceTests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entranceTests);
}

 final  List<AdmissionInterviewAttendance> _interviewAttendance;
@override@JsonKey(name: 'interview_attendance') List<AdmissionInterviewAttendance> get interviewAttendance {
  if (_interviewAttendance is EqualUnmodifiableListView) return _interviewAttendance;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interviewAttendance);
}


/// Create a copy of AdmissionApplicationDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionApplicationDetailCopyWith<_AdmissionApplicationDetail> get copyWith => __$AdmissionApplicationDetailCopyWithImpl<_AdmissionApplicationDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionApplicationDetailToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionApplicationDetail&&(identical(other.applicationId, applicationId) || other.applicationId == applicationId)&&(identical(other.applicationNo, applicationNo) || other.applicationNo == applicationNo)&&(identical(other.applicationStatus, applicationStatus) || other.applicationStatus == applicationStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.registrationFee, registrationFee) || other.registrationFee == registrationFee)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.paymentRejectionReason, paymentRejectionReason) || other.paymentRejectionReason == paymentRejectionReason)&&(identical(other.calledForInterview, calledForInterview) || other.calledForInterview == calledForInterview)&&(identical(other.calledForInterviewAt, calledForInterviewAt) || other.calledForInterviewAt == calledForInterviewAt)&&(identical(other.isQualified, isQualified) || other.isQualified == isQualified)&&(identical(other.qualifiedAt, qualifiedAt) || other.qualifiedAt == qualifiedAt)&&(identical(other.isSelectedFinal, isSelectedFinal) || other.isSelectedFinal == isSelectedFinal)&&(identical(other.selectedAt, selectedAt) || other.selectedAt == selectedAt)&&(identical(other.registeredAt, registeredAt) || other.registeredAt == registeredAt)&&(identical(other.classRef, classRef) || other.classRef == classRef)&&(identical(other.session, session) || other.session == session)&&(identical(other.institution, institution) || other.institution == institution)&&(identical(other.applicant, applicant) || other.applicant == applicant)&&const DeepCollectionEquality().equals(other.parents, _parents)&&const DeepCollectionEquality().equals(other.siblings, _siblings)&&const DeepCollectionEquality().equals(other.addresses, _addresses)&&const DeepCollectionEquality().equals(other.emergencyContacts, _emergencyContacts)&&const DeepCollectionEquality().equals(other.previousSchools, _previousSchools)&&const DeepCollectionEquality().equals(other.documents, _documents)&&const DeepCollectionEquality().equals(other.reviews, _reviews)&&const DeepCollectionEquality().equals(other.entranceTests, _entranceTests)&&const DeepCollectionEquality().equals(other.interviewAttendance, _interviewAttendance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,applicationId,applicationNo,applicationStatus,paymentStatus,registrationFee,submittedAt,createdAt,updatedAt,paymentRejectionReason,calledForInterview,calledForInterviewAt,isQualified,qualifiedAt,isSelectedFinal,selectedAt,registeredAt,classRef,session,institution,applicant,const DeepCollectionEquality().hash(_parents),const DeepCollectionEquality().hash(_siblings),const DeepCollectionEquality().hash(_addresses),const DeepCollectionEquality().hash(_emergencyContacts),const DeepCollectionEquality().hash(_previousSchools),const DeepCollectionEquality().hash(_documents),const DeepCollectionEquality().hash(_reviews),const DeepCollectionEquality().hash(_entranceTests),const DeepCollectionEquality().hash(_interviewAttendance)]);
}

@override
String toString() {
    return 'AdmissionApplicationDetail(applicationId: $applicationId, applicationNo: $applicationNo, applicationStatus: $applicationStatus, paymentStatus: $paymentStatus, registrationFee: $registrationFee, submittedAt: $submittedAt, createdAt: $createdAt, updatedAt: $updatedAt, paymentRejectionReason: $paymentRejectionReason, calledForInterview: $calledForInterview, calledForInterviewAt: $calledForInterviewAt, isQualified: $isQualified, qualifiedAt: $qualifiedAt, isSelectedFinal: $isSelectedFinal, selectedAt: $selectedAt, registeredAt: $registeredAt, classRef: $classRef, session: $session, institution: $institution, applicant: $applicant, parents: $parents, siblings: $siblings, addresses: $addresses, emergencyContacts: $emergencyContacts, previousSchools: $previousSchools, documents: $documents, reviews: $reviews, entranceTests: $entranceTests, interviewAttendance: $interviewAttendance)';
}


}

/// @nodoc
abstract mixin class _$AdmissionApplicationDetailCopyWith<$Res> implements $AdmissionApplicationDetailCopyWith<$Res> {
  factory _$AdmissionApplicationDetailCopyWith(_AdmissionApplicationDetail value, $Res Function(_AdmissionApplicationDetail) _then) = __$AdmissionApplicationDetailCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'application_id') String applicationId,@JsonKey(name: 'application_no') String? applicationNo,@JsonKey(name: 'application_status') String? applicationStatus,@JsonKey(name: 'payment_status') String? paymentStatus,@JsonKey(name: 'registration_fee')@NullableDecimalConverter() Decimal? registrationFee,@JsonKey(name: 'submitted_at') DateTime? submittedAt,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'payment_rejection_reason') String? paymentRejectionReason,@JsonKey(name: 'called_for_interview') bool? calledForInterview,@JsonKey(name: 'called_for_interview_at') DateTime? calledForInterviewAt,@JsonKey(name: 'is_qualified') bool? isQualified,@JsonKey(name: 'qualified_at') DateTime? qualifiedAt,@JsonKey(name: 'is_selected_final') bool? isSelectedFinal,@JsonKey(name: 'selected_at') DateTime? selectedAt,@JsonKey(name: 'registered_at') DateTime? registeredAt,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'academic_sessions') SessionRef? session,@JsonKey(name: 'institutions') InstitutionRef? institution,@JsonKey(name: 'applicants') AdmissionApplicant? applicant, List<AdmissionParent> parents, List<AdmissionSibling> siblings, List<AdmissionAddress> addresses,@JsonKey(name: 'emergency_contacts') List<AdmissionEmergencyContact> emergencyContacts,@JsonKey(name: 'previous_schools') List<AdmissionPreviousSchool> previousSchools,@JsonKey(name: 'applicant_documents') List<AdmissionDocument> documents,@JsonKey(name: 'admission_reviews') List<AdmissionReview> reviews,@JsonKey(name: 'entrance_test_assignments') List<AdmissionEntranceTestAssignment> entranceTests,@JsonKey(name: 'interview_attendance') List<AdmissionInterviewAttendance> interviewAttendance
});


@override $ClassRefCopyWith<$Res>? get classRef;@override $SessionRefCopyWith<$Res>? get session;@override $InstitutionRefCopyWith<$Res>? get institution;@override $AdmissionApplicantCopyWith<$Res>? get applicant;

}
/// @nodoc
class __$AdmissionApplicationDetailCopyWithImpl<$Res>
    implements _$AdmissionApplicationDetailCopyWith<$Res> {
  __$AdmissionApplicationDetailCopyWithImpl(this._self, this._then);

  final _AdmissionApplicationDetail _self;
  final $Res Function(_AdmissionApplicationDetail) _then;

/// Create a copy of AdmissionApplicationDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? applicationId = null,Object? applicationNo = freezed,Object? applicationStatus = freezed,Object? paymentStatus = freezed,Object? registrationFee = freezed,Object? submittedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? paymentRejectionReason = freezed,Object? calledForInterview = freezed,Object? calledForInterviewAt = freezed,Object? isQualified = freezed,Object? qualifiedAt = freezed,Object? isSelectedFinal = freezed,Object? selectedAt = freezed,Object? registeredAt = freezed,Object? classRef = freezed,Object? session = freezed,Object? institution = freezed,Object? applicant = freezed,Object? parents = null,Object? siblings = null,Object? addresses = null,Object? emergencyContacts = null,Object? previousSchools = null,Object? documents = null,Object? reviews = null,Object? entranceTests = null,Object? interviewAttendance = null,}) {
  return _then(_AdmissionApplicationDetail(
applicationId: null == applicationId ? _self.applicationId : applicationId // ignore: cast_nullable_to_non_nullable
as String,applicationNo: freezed == applicationNo ? _self.applicationNo : applicationNo // ignore: cast_nullable_to_non_nullable
as String?,applicationStatus: freezed == applicationStatus ? _self.applicationStatus : applicationStatus // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,registrationFee: freezed == registrationFee ? _self.registrationFee : registrationFee // ignore: cast_nullable_to_non_nullable
as Decimal?,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentRejectionReason: freezed == paymentRejectionReason ? _self.paymentRejectionReason : paymentRejectionReason // ignore: cast_nullable_to_non_nullable
as String?,calledForInterview: freezed == calledForInterview ? _self.calledForInterview : calledForInterview // ignore: cast_nullable_to_non_nullable
as bool?,calledForInterviewAt: freezed == calledForInterviewAt ? _self.calledForInterviewAt : calledForInterviewAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isQualified: freezed == isQualified ? _self.isQualified : isQualified // ignore: cast_nullable_to_non_nullable
as bool?,qualifiedAt: freezed == qualifiedAt ? _self.qualifiedAt : qualifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isSelectedFinal: freezed == isSelectedFinal ? _self.isSelectedFinal : isSelectedFinal // ignore: cast_nullable_to_non_nullable
as bool?,selectedAt: freezed == selectedAt ? _self.selectedAt : selectedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,registeredAt: freezed == registeredAt ? _self.registeredAt : registeredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,institution: freezed == institution ? _self.institution : institution // ignore: cast_nullable_to_non_nullable
as InstitutionRef?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as AdmissionApplicant?,parents: null == parents ? _self._parents : parents // ignore: cast_nullable_to_non_nullable
as List<AdmissionParent>,siblings: null == siblings ? _self._siblings : siblings // ignore: cast_nullable_to_non_nullable
as List<AdmissionSibling>,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<AdmissionAddress>,emergencyContacts: null == emergencyContacts ? _self._emergencyContacts : emergencyContacts // ignore: cast_nullable_to_non_nullable
as List<AdmissionEmergencyContact>,previousSchools: null == previousSchools ? _self._previousSchools : previousSchools // ignore: cast_nullable_to_non_nullable
as List<AdmissionPreviousSchool>,documents: null == documents ? _self._documents : documents // ignore: cast_nullable_to_non_nullable
as List<AdmissionDocument>,reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<AdmissionReview>,entranceTests: null == entranceTests ? _self._entranceTests : entranceTests // ignore: cast_nullable_to_non_nullable
as List<AdmissionEntranceTestAssignment>,interviewAttendance: null == interviewAttendance ? _self._interviewAttendance : interviewAttendance // ignore: cast_nullable_to_non_nullable
as List<AdmissionInterviewAttendance>,
  ));
}

/// Create a copy of AdmissionApplicationDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get classRef {
    if (_self.classRef == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.classRef!, (value) {
    return _then(_self.copyWith(classRef: value));
  });
}/// Create a copy of AdmissionApplicationDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionRefCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $SessionRefCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}/// Create a copy of AdmissionApplicationDetail
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
}/// Create a copy of AdmissionApplicationDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdmissionApplicantCopyWith<$Res>? get applicant {
    if (_self.applicant == null) {
    return null;
  }

  return $AdmissionApplicantCopyWith<$Res>(_self.applicant!, (value) {
    return _then(_self.copyWith(applicant: value));
  });
}
}


/// @nodoc
mixin _$AdmissionBulkFailure {

@JsonKey(name: 'application_id') String? get applicationId; String? get reason;
/// Create a copy of AdmissionBulkFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionBulkFailureCopyWith<AdmissionBulkFailure> get copyWith => _$AdmissionBulkFailureCopyWithImpl<AdmissionBulkFailure>(this as AdmissionBulkFailure, _$identity);

  /// Serializes this AdmissionBulkFailure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionBulkFailure;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionBulkFailure&&(identical(other.applicationId, _this.applicationId) || other.applicationId == _this.applicationId)&&(identical(other.reason, _this.reason) || other.reason == _this.reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionBulkFailure;
  return Object.hash(runtimeType,_this.applicationId,_this.reason);
}

@override
String toString() {
  final _this = this as AdmissionBulkFailure;
  return 'AdmissionBulkFailure(applicationId: ${_this.applicationId}, reason: ${_this.reason})';
}


}

/// @nodoc
abstract mixin class $AdmissionBulkFailureCopyWith<$Res>  {
  factory $AdmissionBulkFailureCopyWith(AdmissionBulkFailure value, $Res Function(AdmissionBulkFailure) _then) = _$AdmissionBulkFailureCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'application_id') String? applicationId, String? reason
});




}
/// @nodoc
class _$AdmissionBulkFailureCopyWithImpl<$Res>
    implements $AdmissionBulkFailureCopyWith<$Res> {
  _$AdmissionBulkFailureCopyWithImpl(this._self, this._then);

  final AdmissionBulkFailure _self;
  final $Res Function(AdmissionBulkFailure) _then;

/// Create a copy of AdmissionBulkFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? applicationId = freezed,Object? reason = freezed,}) {
  return _then(AdmissionBulkFailure(
applicationId: freezed == applicationId ? _self.applicationId : applicationId // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionBulkFailure].
extension AdmissionBulkFailurePatterns on AdmissionBulkFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionBulkFailure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionBulkFailure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionBulkFailure value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionBulkFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionBulkFailure value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionBulkFailure() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'application_id')  String? applicationId,  String? reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionBulkFailure() when $default != null:
return $default(_that.applicationId,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'application_id')  String? applicationId,  String? reason)  $default,) {final _that = this;
switch (_that) {
case _AdmissionBulkFailure():
return $default(_that.applicationId,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'application_id')  String? applicationId,  String? reason)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionBulkFailure() when $default != null:
return $default(_that.applicationId,_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionBulkFailure implements AdmissionBulkFailure {
  const _AdmissionBulkFailure({@JsonKey(name: 'application_id') this.applicationId, this.reason});
  factory _AdmissionBulkFailure.fromJson(Map<String, dynamic> json) => _$AdmissionBulkFailureFromJson(json);

@override@JsonKey(name: 'application_id') final  String? applicationId;
@override final  String? reason;

/// Create a copy of AdmissionBulkFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionBulkFailureCopyWith<_AdmissionBulkFailure> get copyWith => __$AdmissionBulkFailureCopyWithImpl<_AdmissionBulkFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionBulkFailureToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionBulkFailure&&(identical(other.applicationId, applicationId) || other.applicationId == applicationId)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,applicationId,reason);
}

@override
String toString() {
    return 'AdmissionBulkFailure(applicationId: $applicationId, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$AdmissionBulkFailureCopyWith<$Res> implements $AdmissionBulkFailureCopyWith<$Res> {
  factory _$AdmissionBulkFailureCopyWith(_AdmissionBulkFailure value, $Res Function(_AdmissionBulkFailure) _then) = __$AdmissionBulkFailureCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'application_id') String? applicationId, String? reason
});




}
/// @nodoc
class __$AdmissionBulkFailureCopyWithImpl<$Res>
    implements _$AdmissionBulkFailureCopyWith<$Res> {
  __$AdmissionBulkFailureCopyWithImpl(this._self, this._then);

  final _AdmissionBulkFailure _self;
  final $Res Function(_AdmissionBulkFailure) _then;

/// Create a copy of AdmissionBulkFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? applicationId = freezed,Object? reason = freezed,}) {
  return _then(_AdmissionBulkFailure(
applicationId: freezed == applicationId ? _self.applicationId : applicationId // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdmissionBulkResult {

 List<String> get succeeded; List<AdmissionBulkFailure> get failed;
/// Create a copy of AdmissionBulkResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionBulkResultCopyWith<AdmissionBulkResult> get copyWith => _$AdmissionBulkResultCopyWithImpl<AdmissionBulkResult>(this as AdmissionBulkResult, _$identity);

  /// Serializes this AdmissionBulkResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionBulkResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionBulkResult&&const DeepCollectionEquality().equals(other.succeeded, _this.succeeded)&&const DeepCollectionEquality().equals(other.failed, _this.failed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionBulkResult;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.succeeded),const DeepCollectionEquality().hash(_this.failed));
}

@override
String toString() {
  final _this = this as AdmissionBulkResult;
  return 'AdmissionBulkResult(succeeded: ${_this.succeeded}, failed: ${_this.failed})';
}


}

/// @nodoc
abstract mixin class $AdmissionBulkResultCopyWith<$Res>  {
  factory $AdmissionBulkResultCopyWith(AdmissionBulkResult value, $Res Function(AdmissionBulkResult) _then) = _$AdmissionBulkResultCopyWithImpl;
@useResult
$Res call({
 List<String> succeeded, List<AdmissionBulkFailure> failed
});




}
/// @nodoc
class _$AdmissionBulkResultCopyWithImpl<$Res>
    implements $AdmissionBulkResultCopyWith<$Res> {
  _$AdmissionBulkResultCopyWithImpl(this._self, this._then);

  final AdmissionBulkResult _self;
  final $Res Function(AdmissionBulkResult) _then;

/// Create a copy of AdmissionBulkResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? succeeded = null,Object? failed = null,}) {
  return _then(AdmissionBulkResult(
succeeded: null == succeeded ? _self.succeeded : succeeded // ignore: cast_nullable_to_non_nullable
as List<String>,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as List<AdmissionBulkFailure>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionBulkResult].
extension AdmissionBulkResultPatterns on AdmissionBulkResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionBulkResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionBulkResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionBulkResult value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionBulkResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionBulkResult value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionBulkResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> succeeded,  List<AdmissionBulkFailure> failed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionBulkResult() when $default != null:
return $default(_that.succeeded,_that.failed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> succeeded,  List<AdmissionBulkFailure> failed)  $default,) {final _that = this;
switch (_that) {
case _AdmissionBulkResult():
return $default(_that.succeeded,_that.failed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> succeeded,  List<AdmissionBulkFailure> failed)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionBulkResult() when $default != null:
return $default(_that.succeeded,_that.failed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionBulkResult implements AdmissionBulkResult {
  const _AdmissionBulkResult({ List<String> succeeded = const <String>[],  List<AdmissionBulkFailure> failed = const <AdmissionBulkFailure>[]}): _succeeded = succeeded,_failed = failed;
  factory _AdmissionBulkResult.fromJson(Map<String, dynamic> json) => _$AdmissionBulkResultFromJson(json);

 final  List<String> _succeeded;
@override@JsonKey() List<String> get succeeded {
  if (_succeeded is EqualUnmodifiableListView) return _succeeded;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_succeeded);
}

 final  List<AdmissionBulkFailure> _failed;
@override@JsonKey() List<AdmissionBulkFailure> get failed {
  if (_failed is EqualUnmodifiableListView) return _failed;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_failed);
}


/// Create a copy of AdmissionBulkResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionBulkResultCopyWith<_AdmissionBulkResult> get copyWith => __$AdmissionBulkResultCopyWithImpl<_AdmissionBulkResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionBulkResultToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionBulkResult&&const DeepCollectionEquality().equals(other.succeeded, _succeeded)&&const DeepCollectionEquality().equals(other.failed, _failed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_succeeded),const DeepCollectionEquality().hash(_failed));
}

@override
String toString() {
    return 'AdmissionBulkResult(succeeded: $succeeded, failed: $failed)';
}


}

/// @nodoc
abstract mixin class _$AdmissionBulkResultCopyWith<$Res> implements $AdmissionBulkResultCopyWith<$Res> {
  factory _$AdmissionBulkResultCopyWith(_AdmissionBulkResult value, $Res Function(_AdmissionBulkResult) _then) = __$AdmissionBulkResultCopyWithImpl;
@override @useResult
$Res call({
 List<String> succeeded, List<AdmissionBulkFailure> failed
});




}
/// @nodoc
class __$AdmissionBulkResultCopyWithImpl<$Res>
    implements _$AdmissionBulkResultCopyWith<$Res> {
  __$AdmissionBulkResultCopyWithImpl(this._self, this._then);

  final _AdmissionBulkResult _self;
  final $Res Function(_AdmissionBulkResult) _then;

/// Create a copy of AdmissionBulkResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? succeeded = null,Object? failed = null,}) {
  return _then(_AdmissionBulkResult(
succeeded: null == succeeded ? _self._succeeded : succeeded // ignore: cast_nullable_to_non_nullable
as List<String>,failed: null == failed ? _self._failed : failed // ignore: cast_nullable_to_non_nullable
as List<AdmissionBulkFailure>,
  ));
}


}


/// @nodoc
mixin _$AdmissionRegistrationResult {

@JsonKey(name: 'student_id') String? get studentId;@JsonKey(name: 'application_id') String? get applicationId;@JsonKey(name: 'admission_no') String? get admissionNo;@JsonKey(name: 'admission_date') DateTime? get admissionDate; String? get username; String? get password;@JsonKey(name: 'documents_carried_forward') int? get documentsCarriedForward;
/// Create a copy of AdmissionRegistrationResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionRegistrationResultCopyWith<AdmissionRegistrationResult> get copyWith => _$AdmissionRegistrationResultCopyWithImpl<AdmissionRegistrationResult>(this as AdmissionRegistrationResult, _$identity);

  /// Serializes this AdmissionRegistrationResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionRegistrationResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionRegistrationResult&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.applicationId, _this.applicationId) || other.applicationId == _this.applicationId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.admissionDate, _this.admissionDate) || other.admissionDate == _this.admissionDate)&&(identical(other.username, _this.username) || other.username == _this.username)&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.documentsCarriedForward, _this.documentsCarriedForward) || other.documentsCarriedForward == _this.documentsCarriedForward));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionRegistrationResult;
  return Object.hash(runtimeType,_this.studentId,_this.applicationId,_this.admissionNo,_this.admissionDate,_this.username,_this.password,_this.documentsCarriedForward);
}

@override
String toString() {
  final _this = this as AdmissionRegistrationResult;
  return 'AdmissionRegistrationResult(studentId: ${_this.studentId}, applicationId: ${_this.applicationId}, admissionNo: ${_this.admissionNo}, admissionDate: ${_this.admissionDate}, username: ${_this.username}, password: ${_this.password}, documentsCarriedForward: ${_this.documentsCarriedForward})';
}


}

/// @nodoc
abstract mixin class $AdmissionRegistrationResultCopyWith<$Res>  {
  factory $AdmissionRegistrationResultCopyWith(AdmissionRegistrationResult value, $Res Function(AdmissionRegistrationResult) _then) = _$AdmissionRegistrationResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'application_id') String? applicationId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'admission_date') DateTime? admissionDate, String? username, String? password,@JsonKey(name: 'documents_carried_forward') int? documentsCarriedForward
});




}
/// @nodoc
class _$AdmissionRegistrationResultCopyWithImpl<$Res>
    implements $AdmissionRegistrationResultCopyWith<$Res> {
  _$AdmissionRegistrationResultCopyWithImpl(this._self, this._then);

  final AdmissionRegistrationResult _self;
  final $Res Function(AdmissionRegistrationResult) _then;

/// Create a copy of AdmissionRegistrationResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = freezed,Object? applicationId = freezed,Object? admissionNo = freezed,Object? admissionDate = freezed,Object? username = freezed,Object? password = freezed,Object? documentsCarriedForward = freezed,}) {
  return _then(AdmissionRegistrationResult(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,applicationId: freezed == applicationId ? _self.applicationId : applicationId // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,admissionDate: freezed == admissionDate ? _self.admissionDate : admissionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,documentsCarriedForward: freezed == documentsCarriedForward ? _self.documentsCarriedForward : documentsCarriedForward // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionRegistrationResult].
extension AdmissionRegistrationResultPatterns on AdmissionRegistrationResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionRegistrationResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionRegistrationResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionRegistrationResult value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionRegistrationResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionRegistrationResult value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionRegistrationResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'application_id')  String? applicationId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate,  String? username,  String? password, @JsonKey(name: 'documents_carried_forward')  int? documentsCarriedForward)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionRegistrationResult() when $default != null:
return $default(_that.studentId,_that.applicationId,_that.admissionNo,_that.admissionDate,_that.username,_that.password,_that.documentsCarriedForward);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'application_id')  String? applicationId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate,  String? username,  String? password, @JsonKey(name: 'documents_carried_forward')  int? documentsCarriedForward)  $default,) {final _that = this;
switch (_that) {
case _AdmissionRegistrationResult():
return $default(_that.studentId,_that.applicationId,_that.admissionNo,_that.admissionDate,_that.username,_that.password,_that.documentsCarriedForward);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'application_id')  String? applicationId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'admission_date')  DateTime? admissionDate,  String? username,  String? password, @JsonKey(name: 'documents_carried_forward')  int? documentsCarriedForward)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionRegistrationResult() when $default != null:
return $default(_that.studentId,_that.applicationId,_that.admissionNo,_that.admissionDate,_that.username,_that.password,_that.documentsCarriedForward);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionRegistrationResult implements AdmissionRegistrationResult {
  const _AdmissionRegistrationResult({@JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'application_id') this.applicationId, @JsonKey(name: 'admission_no') this.admissionNo, @JsonKey(name: 'admission_date') this.admissionDate, this.username, this.password, @JsonKey(name: 'documents_carried_forward') this.documentsCarriedForward});
  factory _AdmissionRegistrationResult.fromJson(Map<String, dynamic> json) => _$AdmissionRegistrationResultFromJson(json);

@override@JsonKey(name: 'student_id') final  String? studentId;
@override@JsonKey(name: 'application_id') final  String? applicationId;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override@JsonKey(name: 'admission_date') final  DateTime? admissionDate;
@override final  String? username;
@override final  String? password;
@override@JsonKey(name: 'documents_carried_forward') final  int? documentsCarriedForward;

/// Create a copy of AdmissionRegistrationResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionRegistrationResultCopyWith<_AdmissionRegistrationResult> get copyWith => __$AdmissionRegistrationResultCopyWithImpl<_AdmissionRegistrationResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionRegistrationResultToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionRegistrationResult&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.applicationId, applicationId) || other.applicationId == applicationId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.admissionDate, admissionDate) || other.admissionDate == admissionDate)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.documentsCarriedForward, documentsCarriedForward) || other.documentsCarriedForward == documentsCarriedForward));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,applicationId,admissionNo,admissionDate,username,password,documentsCarriedForward);
}

@override
String toString() {
    return 'AdmissionRegistrationResult(studentId: $studentId, applicationId: $applicationId, admissionNo: $admissionNo, admissionDate: $admissionDate, username: $username, password: $password, documentsCarriedForward: $documentsCarriedForward)';
}


}

/// @nodoc
abstract mixin class _$AdmissionRegistrationResultCopyWith<$Res> implements $AdmissionRegistrationResultCopyWith<$Res> {
  factory _$AdmissionRegistrationResultCopyWith(_AdmissionRegistrationResult value, $Res Function(_AdmissionRegistrationResult) _then) = __$AdmissionRegistrationResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'application_id') String? applicationId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'admission_date') DateTime? admissionDate, String? username, String? password,@JsonKey(name: 'documents_carried_forward') int? documentsCarriedForward
});




}
/// @nodoc
class __$AdmissionRegistrationResultCopyWithImpl<$Res>
    implements _$AdmissionRegistrationResultCopyWith<$Res> {
  __$AdmissionRegistrationResultCopyWithImpl(this._self, this._then);

  final _AdmissionRegistrationResult _self;
  final $Res Function(_AdmissionRegistrationResult) _then;

/// Create a copy of AdmissionRegistrationResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = freezed,Object? applicationId = freezed,Object? admissionNo = freezed,Object? admissionDate = freezed,Object? username = freezed,Object? password = freezed,Object? documentsCarriedForward = freezed,}) {
  return _then(_AdmissionRegistrationResult(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,applicationId: freezed == applicationId ? _self.applicationId : applicationId // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,admissionDate: freezed == admissionDate ? _self.admissionDate : admissionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,documentsCarriedForward: freezed == documentsCarriedForward ? _self.documentsCarriedForward : documentsCarriedForward // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$AdmissionStartedApplication {

@JsonKey(name: 'application_id') String get applicationId;@JsonKey(name: 'application_no') String? get applicationNo;
/// Create a copy of AdmissionStartedApplication
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionStartedApplicationCopyWith<AdmissionStartedApplication> get copyWith => _$AdmissionStartedApplicationCopyWithImpl<AdmissionStartedApplication>(this as AdmissionStartedApplication, _$identity);

  /// Serializes this AdmissionStartedApplication to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionStartedApplication;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionStartedApplication&&(identical(other.applicationId, _this.applicationId) || other.applicationId == _this.applicationId)&&(identical(other.applicationNo, _this.applicationNo) || other.applicationNo == _this.applicationNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionStartedApplication;
  return Object.hash(runtimeType,_this.applicationId,_this.applicationNo);
}

@override
String toString() {
  final _this = this as AdmissionStartedApplication;
  return 'AdmissionStartedApplication(applicationId: ${_this.applicationId}, applicationNo: ${_this.applicationNo})';
}


}

/// @nodoc
abstract mixin class $AdmissionStartedApplicationCopyWith<$Res>  {
  factory $AdmissionStartedApplicationCopyWith(AdmissionStartedApplication value, $Res Function(AdmissionStartedApplication) _then) = _$AdmissionStartedApplicationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'application_id') String applicationId,@JsonKey(name: 'application_no') String? applicationNo
});




}
/// @nodoc
class _$AdmissionStartedApplicationCopyWithImpl<$Res>
    implements $AdmissionStartedApplicationCopyWith<$Res> {
  _$AdmissionStartedApplicationCopyWithImpl(this._self, this._then);

  final AdmissionStartedApplication _self;
  final $Res Function(AdmissionStartedApplication) _then;

/// Create a copy of AdmissionStartedApplication
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? applicationId = null,Object? applicationNo = freezed,}) {
  return _then(AdmissionStartedApplication(
applicationId: null == applicationId ? _self.applicationId : applicationId // ignore: cast_nullable_to_non_nullable
as String,applicationNo: freezed == applicationNo ? _self.applicationNo : applicationNo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionStartedApplication].
extension AdmissionStartedApplicationPatterns on AdmissionStartedApplication {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionStartedApplication value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionStartedApplication() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionStartedApplication value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionStartedApplication():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionStartedApplication value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionStartedApplication() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'application_id')  String applicationId, @JsonKey(name: 'application_no')  String? applicationNo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionStartedApplication() when $default != null:
return $default(_that.applicationId,_that.applicationNo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'application_id')  String applicationId, @JsonKey(name: 'application_no')  String? applicationNo)  $default,) {final _that = this;
switch (_that) {
case _AdmissionStartedApplication():
return $default(_that.applicationId,_that.applicationNo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'application_id')  String applicationId, @JsonKey(name: 'application_no')  String? applicationNo)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionStartedApplication() when $default != null:
return $default(_that.applicationId,_that.applicationNo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionStartedApplication implements AdmissionStartedApplication {
  const _AdmissionStartedApplication({@JsonKey(name: 'application_id') required this.applicationId, @JsonKey(name: 'application_no') this.applicationNo});
  factory _AdmissionStartedApplication.fromJson(Map<String, dynamic> json) => _$AdmissionStartedApplicationFromJson(json);

@override@JsonKey(name: 'application_id') final  String applicationId;
@override@JsonKey(name: 'application_no') final  String? applicationNo;

/// Create a copy of AdmissionStartedApplication
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionStartedApplicationCopyWith<_AdmissionStartedApplication> get copyWith => __$AdmissionStartedApplicationCopyWithImpl<_AdmissionStartedApplication>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionStartedApplicationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionStartedApplication&&(identical(other.applicationId, applicationId) || other.applicationId == applicationId)&&(identical(other.applicationNo, applicationNo) || other.applicationNo == applicationNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,applicationId,applicationNo);
}

@override
String toString() {
    return 'AdmissionStartedApplication(applicationId: $applicationId, applicationNo: $applicationNo)';
}


}

/// @nodoc
abstract mixin class _$AdmissionStartedApplicationCopyWith<$Res> implements $AdmissionStartedApplicationCopyWith<$Res> {
  factory _$AdmissionStartedApplicationCopyWith(_AdmissionStartedApplication value, $Res Function(_AdmissionStartedApplication) _then) = __$AdmissionStartedApplicationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'application_id') String applicationId,@JsonKey(name: 'application_no') String? applicationNo
});




}
/// @nodoc
class __$AdmissionStartedApplicationCopyWithImpl<$Res>
    implements _$AdmissionStartedApplicationCopyWith<$Res> {
  __$AdmissionStartedApplicationCopyWithImpl(this._self, this._then);

  final _AdmissionStartedApplication _self;
  final $Res Function(_AdmissionStartedApplication) _then;

/// Create a copy of AdmissionStartedApplication
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? applicationId = null,Object? applicationNo = freezed,}) {
  return _then(_AdmissionStartedApplication(
applicationId: null == applicationId ? _self.applicationId : applicationId // ignore: cast_nullable_to_non_nullable
as String,applicationNo: freezed == applicationNo ? _self.applicationNo : applicationNo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdmissionActiveSession {

@JsonKey(name: 'session_id') String get sessionId;@JsonKey(name: 'session_name') String? get sessionName;
/// Create a copy of AdmissionActiveSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionActiveSessionCopyWith<AdmissionActiveSession> get copyWith => _$AdmissionActiveSessionCopyWithImpl<AdmissionActiveSession>(this as AdmissionActiveSession, _$identity);

  /// Serializes this AdmissionActiveSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdmissionActiveSession;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionActiveSession&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.sessionName, _this.sessionName) || other.sessionName == _this.sessionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdmissionActiveSession;
  return Object.hash(runtimeType,_this.sessionId,_this.sessionName);
}

@override
String toString() {
  final _this = this as AdmissionActiveSession;
  return 'AdmissionActiveSession(sessionId: ${_this.sessionId}, sessionName: ${_this.sessionName})';
}


}

/// @nodoc
abstract mixin class $AdmissionActiveSessionCopyWith<$Res>  {
  factory $AdmissionActiveSessionCopyWith(AdmissionActiveSession value, $Res Function(AdmissionActiveSession) _then) = _$AdmissionActiveSessionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'session_name') String? sessionName
});




}
/// @nodoc
class _$AdmissionActiveSessionCopyWithImpl<$Res>
    implements $AdmissionActiveSessionCopyWith<$Res> {
  _$AdmissionActiveSessionCopyWithImpl(this._self, this._then);

  final AdmissionActiveSession _self;
  final $Res Function(AdmissionActiveSession) _then;

/// Create a copy of AdmissionActiveSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,Object? sessionName = freezed,}) {
  return _then(AdmissionActiveSession(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,sessionName: freezed == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionActiveSession].
extension AdmissionActiveSessionPatterns on AdmissionActiveSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionActiveSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionActiveSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionActiveSession value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionActiveSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionActiveSession value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionActiveSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'session_name')  String? sessionName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionActiveSession() when $default != null:
return $default(_that.sessionId,_that.sessionName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'session_name')  String? sessionName)  $default,) {final _that = this;
switch (_that) {
case _AdmissionActiveSession():
return $default(_that.sessionId,_that.sessionName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'session_name')  String? sessionName)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionActiveSession() when $default != null:
return $default(_that.sessionId,_that.sessionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionActiveSession implements AdmissionActiveSession {
  const _AdmissionActiveSession({@JsonKey(name: 'session_id') required this.sessionId, @JsonKey(name: 'session_name') this.sessionName});
  factory _AdmissionActiveSession.fromJson(Map<String, dynamic> json) => _$AdmissionActiveSessionFromJson(json);

@override@JsonKey(name: 'session_id') final  String sessionId;
@override@JsonKey(name: 'session_name') final  String? sessionName;

/// Create a copy of AdmissionActiveSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionActiveSessionCopyWith<_AdmissionActiveSession> get copyWith => __$AdmissionActiveSessionCopyWithImpl<_AdmissionActiveSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionActiveSessionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionActiveSession&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.sessionName, sessionName) || other.sessionName == sessionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sessionId,sessionName);
}

@override
String toString() {
    return 'AdmissionActiveSession(sessionId: $sessionId, sessionName: $sessionName)';
}


}

/// @nodoc
abstract mixin class _$AdmissionActiveSessionCopyWith<$Res> implements $AdmissionActiveSessionCopyWith<$Res> {
  factory _$AdmissionActiveSessionCopyWith(_AdmissionActiveSession value, $Res Function(_AdmissionActiveSession) _then) = __$AdmissionActiveSessionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'session_name') String? sessionName
});




}
/// @nodoc
class __$AdmissionActiveSessionCopyWithImpl<$Res>
    implements _$AdmissionActiveSessionCopyWith<$Res> {
  __$AdmissionActiveSessionCopyWithImpl(this._self, this._then);

  final _AdmissionActiveSession _self;
  final $Res Function(_AdmissionActiveSession) _then;

/// Create a copy of AdmissionActiveSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,Object? sessionName = freezed,}) {
  return _then(_AdmissionActiveSession(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,sessionName: freezed == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
