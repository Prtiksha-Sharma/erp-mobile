// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Child {

@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'admission_no') String? get admissionNo;@JsonKey(name: 'student_status') String? get studentStatus;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName;@JsonKey(name: 'class_name') String? get className;@JsonKey(name: 'section_name') String? get sectionName;
/// Create a copy of Child
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChildCopyWith<Child> get copyWith => _$ChildCopyWithImpl<Child>(this as Child, _$identity);

  /// Serializes this Child to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Child;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Child&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.studentStatus, _this.studentStatus) || other.studentStatus == _this.studentStatus)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.sectionName, _this.sectionName) || other.sectionName == _this.sectionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Child;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.studentStatus,_this.firstName,_this.lastName,_this.className,_this.sectionName);
}

@override
String toString() {
  final _this = this as Child;
  return 'Child(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, studentStatus: ${_this.studentStatus}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, className: ${_this.className}, sectionName: ${_this.sectionName})';
}


}

/// @nodoc
abstract mixin class $ChildCopyWith<$Res>  {
  factory $ChildCopyWith(Child value, $Res Function(Child) _then) = _$ChildCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'student_status') String? studentStatus,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName
});




}
/// @nodoc
class _$ChildCopyWithImpl<$Res>
    implements $ChildCopyWith<$Res> {
  _$ChildCopyWithImpl(this._self, this._then);

  final Child _self;
  final $Res Function(Child) _then;

/// Create a copy of Child
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? studentStatus = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? className = freezed,Object? sectionName = freezed,}) {
  return _then(Child(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,studentStatus: freezed == studentStatus ? _self.studentStatus : studentStatus // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Child].
extension ChildPatterns on Child {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Child value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Child() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Child value)  $default,){
final _that = this;
switch (_that) {
case _Child():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Child value)?  $default,){
final _that = this;
switch (_that) {
case _Child() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'student_status')  String? studentStatus, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Child() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.studentStatus,_that.firstName,_that.lastName,_that.className,_that.sectionName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'student_status')  String? studentStatus, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName)  $default,) {final _that = this;
switch (_that) {
case _Child():
return $default(_that.studentId,_that.admissionNo,_that.studentStatus,_that.firstName,_that.lastName,_that.className,_that.sectionName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'student_status')  String? studentStatus, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName)?  $default,) {final _that = this;
switch (_that) {
case _Child() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.studentStatus,_that.firstName,_that.lastName,_that.className,_that.sectionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Child implements Child {
  const _Child({@JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'admission_no') this.admissionNo, @JsonKey(name: 'student_status') this.studentStatus, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, @JsonKey(name: 'class_name') this.className, @JsonKey(name: 'section_name') this.sectionName});
  factory _Child.fromJson(Map<String, dynamic> json) => _$ChildFromJson(json);

@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override@JsonKey(name: 'student_status') final  String? studentStatus;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override@JsonKey(name: 'class_name') final  String? className;
@override@JsonKey(name: 'section_name') final  String? sectionName;

/// Create a copy of Child
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChildCopyWith<_Child> get copyWith => __$ChildCopyWithImpl<_Child>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChildToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Child&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.studentStatus, studentStatus) || other.studentStatus == studentStatus)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.className, className) || other.className == className)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,studentStatus,firstName,lastName,className,sectionName);
}

@override
String toString() {
    return 'Child(studentId: $studentId, admissionNo: $admissionNo, studentStatus: $studentStatus, firstName: $firstName, lastName: $lastName, className: $className, sectionName: $sectionName)';
}


}

/// @nodoc
abstract mixin class _$ChildCopyWith<$Res> implements $ChildCopyWith<$Res> {
  factory _$ChildCopyWith(_Child value, $Res Function(_Child) _then) = __$ChildCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'student_status') String? studentStatus,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName
});




}
/// @nodoc
class __$ChildCopyWithImpl<$Res>
    implements _$ChildCopyWith<$Res> {
  __$ChildCopyWithImpl(this._self, this._then);

  final _Child _self;
  final $Res Function(_Child) _then;

/// Create a copy of Child
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? studentStatus = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? className = freezed,Object? sectionName = freezed,}) {
  return _then(_Child(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,studentStatus: freezed == studentStatus ? _self.studentStatus : studentStatus // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
