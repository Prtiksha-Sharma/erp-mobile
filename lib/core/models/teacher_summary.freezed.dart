// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TeacherSummary {

@JsonKey(name: 'staff_id') String get staffId;@JsonKey(name: 'full_name') String get fullName;@JsonKey(name: 'employee_code') String? get employeeCode; String? get designation;@JsonKey(name: 'contact_number') String? get contactNumber;@JsonKey(name: 'profile_photo_url') String? get profilePhotoUrl;
/// Create a copy of TeacherSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeacherSummaryCopyWith<TeacherSummary> get copyWith => _$TeacherSummaryCopyWithImpl<TeacherSummary>(this as TeacherSummary, _$identity);

  /// Serializes this TeacherSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TeacherSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeacherSummary&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.designation, _this.designation) || other.designation == _this.designation)&&(identical(other.contactNumber, _this.contactNumber) || other.contactNumber == _this.contactNumber)&&(identical(other.profilePhotoUrl, _this.profilePhotoUrl) || other.profilePhotoUrl == _this.profilePhotoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TeacherSummary;
  return Object.hash(runtimeType,_this.staffId,_this.fullName,_this.employeeCode,_this.designation,_this.contactNumber,_this.profilePhotoUrl);
}

@override
String toString() {
  final _this = this as TeacherSummary;
  return 'TeacherSummary(staffId: ${_this.staffId}, fullName: ${_this.fullName}, employeeCode: ${_this.employeeCode}, designation: ${_this.designation}, contactNumber: ${_this.contactNumber}, profilePhotoUrl: ${_this.profilePhotoUrl})';
}


}

/// @nodoc
abstract mixin class $TeacherSummaryCopyWith<$Res>  {
  factory $TeacherSummaryCopyWith(TeacherSummary value, $Res Function(TeacherSummary) _then) = _$TeacherSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'employee_code') String? employeeCode, String? designation,@JsonKey(name: 'contact_number') String? contactNumber,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl
});




}
/// @nodoc
class _$TeacherSummaryCopyWithImpl<$Res>
    implements $TeacherSummaryCopyWith<$Res> {
  _$TeacherSummaryCopyWithImpl(this._self, this._then);

  final TeacherSummary _self;
  final $Res Function(TeacherSummary) _then;

/// Create a copy of TeacherSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = null,Object? fullName = null,Object? employeeCode = freezed,Object? designation = freezed,Object? contactNumber = freezed,Object? profilePhotoUrl = freezed,}) {
  return _then(TeacherSummary(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TeacherSummary].
extension TeacherSummaryPatterns on TeacherSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeacherSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeacherSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeacherSummary value)  $default,){
final _that = this;
switch (_that) {
case _TeacherSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeacherSummary value)?  $default,){
final _that = this;
switch (_that) {
case _TeacherSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? designation, @JsonKey(name: 'contact_number')  String? contactNumber, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeacherSummary() when $default != null:
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.designation,_that.contactNumber,_that.profilePhotoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? designation, @JsonKey(name: 'contact_number')  String? contactNumber, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl)  $default,) {final _that = this;
switch (_that) {
case _TeacherSummary():
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.designation,_that.contactNumber,_that.profilePhotoUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? designation, @JsonKey(name: 'contact_number')  String? contactNumber, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl)?  $default,) {final _that = this;
switch (_that) {
case _TeacherSummary() when $default != null:
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.designation,_that.contactNumber,_that.profilePhotoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeacherSummary implements TeacherSummary {
  const _TeacherSummary({@JsonKey(name: 'staff_id') required this.staffId, @JsonKey(name: 'full_name') required this.fullName, @JsonKey(name: 'employee_code') this.employeeCode, this.designation, @JsonKey(name: 'contact_number') this.contactNumber, @JsonKey(name: 'profile_photo_url') this.profilePhotoUrl});
  factory _TeacherSummary.fromJson(Map<String, dynamic> json) => _$TeacherSummaryFromJson(json);

@override@JsonKey(name: 'staff_id') final  String staffId;
@override@JsonKey(name: 'full_name') final  String fullName;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override final  String? designation;
@override@JsonKey(name: 'contact_number') final  String? contactNumber;
@override@JsonKey(name: 'profile_photo_url') final  String? profilePhotoUrl;

/// Create a copy of TeacherSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeacherSummaryCopyWith<_TeacherSummary> get copyWith => __$TeacherSummaryCopyWithImpl<_TeacherSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeacherSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeacherSummary&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.contactNumber, contactNumber) || other.contactNumber == contactNumber)&&(identical(other.profilePhotoUrl, profilePhotoUrl) || other.profilePhotoUrl == profilePhotoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,fullName,employeeCode,designation,contactNumber,profilePhotoUrl);
}

@override
String toString() {
    return 'TeacherSummary(staffId: $staffId, fullName: $fullName, employeeCode: $employeeCode, designation: $designation, contactNumber: $contactNumber, profilePhotoUrl: $profilePhotoUrl)';
}


}

/// @nodoc
abstract mixin class _$TeacherSummaryCopyWith<$Res> implements $TeacherSummaryCopyWith<$Res> {
  factory _$TeacherSummaryCopyWith(_TeacherSummary value, $Res Function(_TeacherSummary) _then) = __$TeacherSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'employee_code') String? employeeCode, String? designation,@JsonKey(name: 'contact_number') String? contactNumber,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl
});




}
/// @nodoc
class __$TeacherSummaryCopyWithImpl<$Res>
    implements _$TeacherSummaryCopyWith<$Res> {
  __$TeacherSummaryCopyWithImpl(this._self, this._then);

  final _TeacherSummary _self;
  final $Res Function(_TeacherSummary) _then;

/// Create a copy of TeacherSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = null,Object? fullName = null,Object? employeeCode = freezed,Object? designation = freezed,Object? contactNumber = freezed,Object? profilePhotoUrl = freezed,}) {
  return _then(_TeacherSummary(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ChildTeachers {

@JsonKey(name: 'class_teacher') TeacherSummary? get classTeacher;@JsonKey(name: 'subject_teachers') List<TeacherSummary> get subjectTeachers;
/// Create a copy of ChildTeachers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChildTeachersCopyWith<ChildTeachers> get copyWith => _$ChildTeachersCopyWithImpl<ChildTeachers>(this as ChildTeachers, _$identity);

  /// Serializes this ChildTeachers to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ChildTeachers;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChildTeachers&&(identical(other.classTeacher, _this.classTeacher) || other.classTeacher == _this.classTeacher)&&const DeepCollectionEquality().equals(other.subjectTeachers, _this.subjectTeachers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ChildTeachers;
  return Object.hash(runtimeType,_this.classTeacher,const DeepCollectionEquality().hash(_this.subjectTeachers));
}

@override
String toString() {
  final _this = this as ChildTeachers;
  return 'ChildTeachers(classTeacher: ${_this.classTeacher}, subjectTeachers: ${_this.subjectTeachers})';
}


}

/// @nodoc
abstract mixin class $ChildTeachersCopyWith<$Res>  {
  factory $ChildTeachersCopyWith(ChildTeachers value, $Res Function(ChildTeachers) _then) = _$ChildTeachersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'class_teacher') TeacherSummary? classTeacher,@JsonKey(name: 'subject_teachers') List<TeacherSummary> subjectTeachers
});


$TeacherSummaryCopyWith<$Res>? get classTeacher;

}
/// @nodoc
class _$ChildTeachersCopyWithImpl<$Res>
    implements $ChildTeachersCopyWith<$Res> {
  _$ChildTeachersCopyWithImpl(this._self, this._then);

  final ChildTeachers _self;
  final $Res Function(ChildTeachers) _then;

/// Create a copy of ChildTeachers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classTeacher = freezed,Object? subjectTeachers = null,}) {
  return _then(ChildTeachers(
classTeacher: freezed == classTeacher ? _self.classTeacher : classTeacher // ignore: cast_nullable_to_non_nullable
as TeacherSummary?,subjectTeachers: null == subjectTeachers ? _self.subjectTeachers : subjectTeachers // ignore: cast_nullable_to_non_nullable
as List<TeacherSummary>,
  ));
}
/// Create a copy of ChildTeachers
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeacherSummaryCopyWith<$Res>? get classTeacher {
    if (_self.classTeacher == null) {
    return null;
  }

  return $TeacherSummaryCopyWith<$Res>(_self.classTeacher!, (value) {
    return _then(_self.copyWith(classTeacher: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChildTeachers].
extension ChildTeachersPatterns on ChildTeachers {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChildTeachers value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChildTeachers() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChildTeachers value)  $default,){
final _that = this;
switch (_that) {
case _ChildTeachers():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChildTeachers value)?  $default,){
final _that = this;
switch (_that) {
case _ChildTeachers() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_teacher')  TeacherSummary? classTeacher, @JsonKey(name: 'subject_teachers')  List<TeacherSummary> subjectTeachers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChildTeachers() when $default != null:
return $default(_that.classTeacher,_that.subjectTeachers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_teacher')  TeacherSummary? classTeacher, @JsonKey(name: 'subject_teachers')  List<TeacherSummary> subjectTeachers)  $default,) {final _that = this;
switch (_that) {
case _ChildTeachers():
return $default(_that.classTeacher,_that.subjectTeachers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'class_teacher')  TeacherSummary? classTeacher, @JsonKey(name: 'subject_teachers')  List<TeacherSummary> subjectTeachers)?  $default,) {final _that = this;
switch (_that) {
case _ChildTeachers() when $default != null:
return $default(_that.classTeacher,_that.subjectTeachers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChildTeachers implements ChildTeachers {
  const _ChildTeachers({@JsonKey(name: 'class_teacher') this.classTeacher, @JsonKey(name: 'subject_teachers') required  List<TeacherSummary> subjectTeachers}): _subjectTeachers = subjectTeachers;
  factory _ChildTeachers.fromJson(Map<String, dynamic> json) => _$ChildTeachersFromJson(json);

@override@JsonKey(name: 'class_teacher') final  TeacherSummary? classTeacher;
 final  List<TeacherSummary> _subjectTeachers;
@override@JsonKey(name: 'subject_teachers') List<TeacherSummary> get subjectTeachers {
  if (_subjectTeachers is EqualUnmodifiableListView) return _subjectTeachers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subjectTeachers);
}


/// Create a copy of ChildTeachers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChildTeachersCopyWith<_ChildTeachers> get copyWith => __$ChildTeachersCopyWithImpl<_ChildTeachers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChildTeachersToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChildTeachers&&(identical(other.classTeacher, classTeacher) || other.classTeacher == classTeacher)&&const DeepCollectionEquality().equals(other.subjectTeachers, _subjectTeachers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,classTeacher,const DeepCollectionEquality().hash(_subjectTeachers));
}

@override
String toString() {
    return 'ChildTeachers(classTeacher: $classTeacher, subjectTeachers: $subjectTeachers)';
}


}

/// @nodoc
abstract mixin class _$ChildTeachersCopyWith<$Res> implements $ChildTeachersCopyWith<$Res> {
  factory _$ChildTeachersCopyWith(_ChildTeachers value, $Res Function(_ChildTeachers) _then) = __$ChildTeachersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'class_teacher') TeacherSummary? classTeacher,@JsonKey(name: 'subject_teachers') List<TeacherSummary> subjectTeachers
});


@override $TeacherSummaryCopyWith<$Res>? get classTeacher;

}
/// @nodoc
class __$ChildTeachersCopyWithImpl<$Res>
    implements _$ChildTeachersCopyWith<$Res> {
  __$ChildTeachersCopyWithImpl(this._self, this._then);

  final _ChildTeachers _self;
  final $Res Function(_ChildTeachers) _then;

/// Create a copy of ChildTeachers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classTeacher = freezed,Object? subjectTeachers = null,}) {
  return _then(_ChildTeachers(
classTeacher: freezed == classTeacher ? _self.classTeacher : classTeacher // ignore: cast_nullable_to_non_nullable
as TeacherSummary?,subjectTeachers: null == subjectTeachers ? _self._subjectTeachers : subjectTeachers // ignore: cast_nullable_to_non_nullable
as List<TeacherSummary>,
  ));
}

/// Create a copy of ChildTeachers
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeacherSummaryCopyWith<$Res>? get classTeacher {
    if (_self.classTeacher == null) {
    return null;
  }

  return $TeacherSummaryCopyWith<$Res>(_self.classTeacher!, (value) {
    return _then(_self.copyWith(classTeacher: value));
  });
}
}

// dart format on
