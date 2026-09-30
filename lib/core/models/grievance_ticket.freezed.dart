// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grievance_ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GrievanceApplicantRef {

@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName;
/// Create a copy of GrievanceApplicantRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GrievanceApplicantRefCopyWith<GrievanceApplicantRef> get copyWith => _$GrievanceApplicantRefCopyWithImpl<GrievanceApplicantRef>(this as GrievanceApplicantRef, _$identity);

  /// Serializes this GrievanceApplicantRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GrievanceApplicantRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GrievanceApplicantRef&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GrievanceApplicantRef;
  return Object.hash(runtimeType,_this.firstName,_this.lastName);
}

@override
String toString() {
  final _this = this as GrievanceApplicantRef;
  return 'GrievanceApplicantRef(firstName: ${_this.firstName}, lastName: ${_this.lastName})';
}


}

/// @nodoc
abstract mixin class $GrievanceApplicantRefCopyWith<$Res>  {
  factory $GrievanceApplicantRefCopyWith(GrievanceApplicantRef value, $Res Function(GrievanceApplicantRef) _then) = _$GrievanceApplicantRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName
});




}
/// @nodoc
class _$GrievanceApplicantRefCopyWithImpl<$Res>
    implements $GrievanceApplicantRefCopyWith<$Res> {
  _$GrievanceApplicantRefCopyWithImpl(this._self, this._then);

  final GrievanceApplicantRef _self;
  final $Res Function(GrievanceApplicantRef) _then;

/// Create a copy of GrievanceApplicantRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? lastName = freezed,}) {
  return _then(GrievanceApplicantRef(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GrievanceApplicantRef].
extension GrievanceApplicantRefPatterns on GrievanceApplicantRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GrievanceApplicantRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GrievanceApplicantRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GrievanceApplicantRef value)  $default,){
final _that = this;
switch (_that) {
case _GrievanceApplicantRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GrievanceApplicantRef value)?  $default,){
final _that = this;
switch (_that) {
case _GrievanceApplicantRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GrievanceApplicantRef() when $default != null:
return $default(_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName)  $default,) {final _that = this;
switch (_that) {
case _GrievanceApplicantRef():
return $default(_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName)?  $default,) {final _that = this;
switch (_that) {
case _GrievanceApplicantRef() when $default != null:
return $default(_that.firstName,_that.lastName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GrievanceApplicantRef implements GrievanceApplicantRef {
  const _GrievanceApplicantRef({@JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName});
  factory _GrievanceApplicantRef.fromJson(Map<String, dynamic> json) => _$GrievanceApplicantRefFromJson(json);

@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;

/// Create a copy of GrievanceApplicantRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GrievanceApplicantRefCopyWith<_GrievanceApplicantRef> get copyWith => __$GrievanceApplicantRefCopyWithImpl<_GrievanceApplicantRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GrievanceApplicantRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GrievanceApplicantRef&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,firstName,lastName);
}

@override
String toString() {
    return 'GrievanceApplicantRef(firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class _$GrievanceApplicantRefCopyWith<$Res> implements $GrievanceApplicantRefCopyWith<$Res> {
  factory _$GrievanceApplicantRefCopyWith(_GrievanceApplicantRef value, $Res Function(_GrievanceApplicantRef) _then) = __$GrievanceApplicantRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName
});




}
/// @nodoc
class __$GrievanceApplicantRefCopyWithImpl<$Res>
    implements _$GrievanceApplicantRefCopyWith<$Res> {
  __$GrievanceApplicantRefCopyWithImpl(this._self, this._then);

  final _GrievanceApplicantRef _self;
  final $Res Function(_GrievanceApplicantRef) _then;

/// Create a copy of GrievanceApplicantRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? lastName = freezed,}) {
  return _then(_GrievanceApplicantRef(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$GrievanceStudentRef {

@JsonKey(name: 'student_id') String get studentId; GrievanceApplicantRef get applicants;
/// Create a copy of GrievanceStudentRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GrievanceStudentRefCopyWith<GrievanceStudentRef> get copyWith => _$GrievanceStudentRefCopyWithImpl<GrievanceStudentRef>(this as GrievanceStudentRef, _$identity);

  /// Serializes this GrievanceStudentRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GrievanceStudentRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GrievanceStudentRef&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.applicants, _this.applicants) || other.applicants == _this.applicants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GrievanceStudentRef;
  return Object.hash(runtimeType,_this.studentId,_this.applicants);
}

@override
String toString() {
  final _this = this as GrievanceStudentRef;
  return 'GrievanceStudentRef(studentId: ${_this.studentId}, applicants: ${_this.applicants})';
}


}

/// @nodoc
abstract mixin class $GrievanceStudentRefCopyWith<$Res>  {
  factory $GrievanceStudentRefCopyWith(GrievanceStudentRef value, $Res Function(GrievanceStudentRef) _then) = _$GrievanceStudentRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String studentId, GrievanceApplicantRef applicants
});


$GrievanceApplicantRefCopyWith<$Res> get applicants;

}
/// @nodoc
class _$GrievanceStudentRefCopyWithImpl<$Res>
    implements $GrievanceStudentRefCopyWith<$Res> {
  _$GrievanceStudentRefCopyWithImpl(this._self, this._then);

  final GrievanceStudentRef _self;
  final $Res Function(GrievanceStudentRef) _then;

/// Create a copy of GrievanceStudentRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? applicants = null,}) {
  return _then(GrievanceStudentRef(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,applicants: null == applicants ? _self.applicants : applicants // ignore: cast_nullable_to_non_nullable
as GrievanceApplicantRef,
  ));
}
/// Create a copy of GrievanceStudentRef
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GrievanceApplicantRefCopyWith<$Res> get applicants {
  
  return $GrievanceApplicantRefCopyWith<$Res>(_self.applicants, (value) {
    return _then(_self.copyWith(applicants: value));
  });
}
}


/// Adds pattern-matching-related methods to [GrievanceStudentRef].
extension GrievanceStudentRefPatterns on GrievanceStudentRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GrievanceStudentRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GrievanceStudentRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GrievanceStudentRef value)  $default,){
final _that = this;
switch (_that) {
case _GrievanceStudentRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GrievanceStudentRef value)?  $default,){
final _that = this;
switch (_that) {
case _GrievanceStudentRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId,  GrievanceApplicantRef applicants)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GrievanceStudentRef() when $default != null:
return $default(_that.studentId,_that.applicants);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId,  GrievanceApplicantRef applicants)  $default,) {final _that = this;
switch (_that) {
case _GrievanceStudentRef():
return $default(_that.studentId,_that.applicants);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String studentId,  GrievanceApplicantRef applicants)?  $default,) {final _that = this;
switch (_that) {
case _GrievanceStudentRef() when $default != null:
return $default(_that.studentId,_that.applicants);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GrievanceStudentRef implements GrievanceStudentRef {
  const _GrievanceStudentRef({@JsonKey(name: 'student_id') required this.studentId, required this.applicants});
  factory _GrievanceStudentRef.fromJson(Map<String, dynamic> json) => _$GrievanceStudentRefFromJson(json);

@override@JsonKey(name: 'student_id') final  String studentId;
@override final  GrievanceApplicantRef applicants;

/// Create a copy of GrievanceStudentRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GrievanceStudentRefCopyWith<_GrievanceStudentRef> get copyWith => __$GrievanceStudentRefCopyWithImpl<_GrievanceStudentRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GrievanceStudentRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GrievanceStudentRef&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.applicants, applicants) || other.applicants == applicants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,applicants);
}

@override
String toString() {
    return 'GrievanceStudentRef(studentId: $studentId, applicants: $applicants)';
}


}

/// @nodoc
abstract mixin class _$GrievanceStudentRefCopyWith<$Res> implements $GrievanceStudentRefCopyWith<$Res> {
  factory _$GrievanceStudentRefCopyWith(_GrievanceStudentRef value, $Res Function(_GrievanceStudentRef) _then) = __$GrievanceStudentRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String studentId, GrievanceApplicantRef applicants
});


@override $GrievanceApplicantRefCopyWith<$Res> get applicants;

}
/// @nodoc
class __$GrievanceStudentRefCopyWithImpl<$Res>
    implements _$GrievanceStudentRefCopyWith<$Res> {
  __$GrievanceStudentRefCopyWithImpl(this._self, this._then);

  final _GrievanceStudentRef _self;
  final $Res Function(_GrievanceStudentRef) _then;

/// Create a copy of GrievanceStudentRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? applicants = null,}) {
  return _then(_GrievanceStudentRef(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,applicants: null == applicants ? _self.applicants : applicants // ignore: cast_nullable_to_non_nullable
as GrievanceApplicantRef,
  ));
}

/// Create a copy of GrievanceStudentRef
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GrievanceApplicantRefCopyWith<$Res> get applicants {
  
  return $GrievanceApplicantRefCopyWith<$Res>(_self.applicants, (value) {
    return _then(_self.copyWith(applicants: value));
  });
}
}


/// @nodoc
mixin _$GrievanceStaffRef {

@JsonKey(name: 'full_name') String get fullName;
/// Create a copy of GrievanceStaffRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GrievanceStaffRefCopyWith<GrievanceStaffRef> get copyWith => _$GrievanceStaffRefCopyWithImpl<GrievanceStaffRef>(this as GrievanceStaffRef, _$identity);

  /// Serializes this GrievanceStaffRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GrievanceStaffRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GrievanceStaffRef&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GrievanceStaffRef;
  return Object.hash(runtimeType,_this.fullName);
}

@override
String toString() {
  final _this = this as GrievanceStaffRef;
  return 'GrievanceStaffRef(fullName: ${_this.fullName})';
}


}

/// @nodoc
abstract mixin class $GrievanceStaffRefCopyWith<$Res>  {
  factory $GrievanceStaffRefCopyWith(GrievanceStaffRef value, $Res Function(GrievanceStaffRef) _then) = _$GrievanceStaffRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'full_name') String fullName
});




}
/// @nodoc
class _$GrievanceStaffRefCopyWithImpl<$Res>
    implements $GrievanceStaffRefCopyWith<$Res> {
  _$GrievanceStaffRefCopyWithImpl(this._self, this._then);

  final GrievanceStaffRef _self;
  final $Res Function(GrievanceStaffRef) _then;

/// Create a copy of GrievanceStaffRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = null,}) {
  return _then(GrievanceStaffRef(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GrievanceStaffRef].
extension GrievanceStaffRefPatterns on GrievanceStaffRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GrievanceStaffRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GrievanceStaffRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GrievanceStaffRef value)  $default,){
final _that = this;
switch (_that) {
case _GrievanceStaffRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GrievanceStaffRef value)?  $default,){
final _that = this;
switch (_that) {
case _GrievanceStaffRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'full_name')  String fullName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GrievanceStaffRef() when $default != null:
return $default(_that.fullName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'full_name')  String fullName)  $default,) {final _that = this;
switch (_that) {
case _GrievanceStaffRef():
return $default(_that.fullName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'full_name')  String fullName)?  $default,) {final _that = this;
switch (_that) {
case _GrievanceStaffRef() when $default != null:
return $default(_that.fullName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GrievanceStaffRef implements GrievanceStaffRef {
  const _GrievanceStaffRef({@JsonKey(name: 'full_name') required this.fullName});
  factory _GrievanceStaffRef.fromJson(Map<String, dynamic> json) => _$GrievanceStaffRefFromJson(json);

@override@JsonKey(name: 'full_name') final  String fullName;

/// Create a copy of GrievanceStaffRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GrievanceStaffRefCopyWith<_GrievanceStaffRef> get copyWith => __$GrievanceStaffRefCopyWithImpl<_GrievanceStaffRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GrievanceStaffRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GrievanceStaffRef&&(identical(other.fullName, fullName) || other.fullName == fullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,fullName);
}

@override
String toString() {
    return 'GrievanceStaffRef(fullName: $fullName)';
}


}

/// @nodoc
abstract mixin class _$GrievanceStaffRefCopyWith<$Res> implements $GrievanceStaffRefCopyWith<$Res> {
  factory _$GrievanceStaffRefCopyWith(_GrievanceStaffRef value, $Res Function(_GrievanceStaffRef) _then) = __$GrievanceStaffRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'full_name') String fullName
});




}
/// @nodoc
class __$GrievanceStaffRefCopyWithImpl<$Res>
    implements _$GrievanceStaffRefCopyWith<$Res> {
  __$GrievanceStaffRefCopyWithImpl(this._self, this._then);

  final _GrievanceStaffRef _self;
  final $Res Function(_GrievanceStaffRef) _then;

/// Create a copy of GrievanceStaffRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = null,}) {
  return _then(_GrievanceStaffRef(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$GrievanceResponse {

@JsonKey(name: 'response_id') String get responseId;@JsonKey(name: 'responder_role') String get responderRole; String get body;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of GrievanceResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GrievanceResponseCopyWith<GrievanceResponse> get copyWith => _$GrievanceResponseCopyWithImpl<GrievanceResponse>(this as GrievanceResponse, _$identity);

  /// Serializes this GrievanceResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GrievanceResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GrievanceResponse&&(identical(other.responseId, _this.responseId) || other.responseId == _this.responseId)&&(identical(other.responderRole, _this.responderRole) || other.responderRole == _this.responderRole)&&(identical(other.body, _this.body) || other.body == _this.body)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GrievanceResponse;
  return Object.hash(runtimeType,_this.responseId,_this.responderRole,_this.body,_this.createdAt);
}

@override
String toString() {
  final _this = this as GrievanceResponse;
  return 'GrievanceResponse(responseId: ${_this.responseId}, responderRole: ${_this.responderRole}, body: ${_this.body}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $GrievanceResponseCopyWith<$Res>  {
  factory $GrievanceResponseCopyWith(GrievanceResponse value, $Res Function(GrievanceResponse) _then) = _$GrievanceResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'response_id') String responseId,@JsonKey(name: 'responder_role') String responderRole, String body,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$GrievanceResponseCopyWithImpl<$Res>
    implements $GrievanceResponseCopyWith<$Res> {
  _$GrievanceResponseCopyWithImpl(this._self, this._then);

  final GrievanceResponse _self;
  final $Res Function(GrievanceResponse) _then;

/// Create a copy of GrievanceResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? responseId = null,Object? responderRole = null,Object? body = null,Object? createdAt = null,}) {
  return _then(GrievanceResponse(
responseId: null == responseId ? _self.responseId : responseId // ignore: cast_nullable_to_non_nullable
as String,responderRole: null == responderRole ? _self.responderRole : responderRole // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [GrievanceResponse].
extension GrievanceResponsePatterns on GrievanceResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GrievanceResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GrievanceResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GrievanceResponse value)  $default,){
final _that = this;
switch (_that) {
case _GrievanceResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GrievanceResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GrievanceResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'response_id')  String responseId, @JsonKey(name: 'responder_role')  String responderRole,  String body, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GrievanceResponse() when $default != null:
return $default(_that.responseId,_that.responderRole,_that.body,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'response_id')  String responseId, @JsonKey(name: 'responder_role')  String responderRole,  String body, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _GrievanceResponse():
return $default(_that.responseId,_that.responderRole,_that.body,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'response_id')  String responseId, @JsonKey(name: 'responder_role')  String responderRole,  String body, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _GrievanceResponse() when $default != null:
return $default(_that.responseId,_that.responderRole,_that.body,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GrievanceResponse implements GrievanceResponse {
  const _GrievanceResponse({@JsonKey(name: 'response_id') required this.responseId, @JsonKey(name: 'responder_role') required this.responderRole, required this.body, @JsonKey(name: 'created_at') required this.createdAt});
  factory _GrievanceResponse.fromJson(Map<String, dynamic> json) => _$GrievanceResponseFromJson(json);

@override@JsonKey(name: 'response_id') final  String responseId;
@override@JsonKey(name: 'responder_role') final  String responderRole;
@override final  String body;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of GrievanceResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GrievanceResponseCopyWith<_GrievanceResponse> get copyWith => __$GrievanceResponseCopyWithImpl<_GrievanceResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GrievanceResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GrievanceResponse&&(identical(other.responseId, responseId) || other.responseId == responseId)&&(identical(other.responderRole, responderRole) || other.responderRole == responderRole)&&(identical(other.body, body) || other.body == body)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,responseId,responderRole,body,createdAt);
}

@override
String toString() {
    return 'GrievanceResponse(responseId: $responseId, responderRole: $responderRole, body: $body, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$GrievanceResponseCopyWith<$Res> implements $GrievanceResponseCopyWith<$Res> {
  factory _$GrievanceResponseCopyWith(_GrievanceResponse value, $Res Function(_GrievanceResponse) _then) = __$GrievanceResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'response_id') String responseId,@JsonKey(name: 'responder_role') String responderRole, String body,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$GrievanceResponseCopyWithImpl<$Res>
    implements _$GrievanceResponseCopyWith<$Res> {
  __$GrievanceResponseCopyWithImpl(this._self, this._then);

  final _GrievanceResponse _self;
  final $Res Function(_GrievanceResponse) _then;

/// Create a copy of GrievanceResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? responseId = null,Object? responderRole = null,Object? body = null,Object? createdAt = null,}) {
  return _then(_GrievanceResponse(
responseId: null == responseId ? _self.responseId : responseId // ignore: cast_nullable_to_non_nullable
as String,responderRole: null == responderRole ? _self.responderRole : responderRole // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$GrievanceTicket {

@JsonKey(name: 'ticket_id') String get ticketId; String? get category; String get subject; String get description; String get status; String? get priority;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'resolved_at') DateTime? get resolvedAt; GrievanceStudentRef? get students;@JsonKey(name: 'staff_accounts') GrievanceStaffRef? get staffAccounts;@JsonKey(name: 'grievance_responses') List<GrievanceResponse>? get responses;
/// Create a copy of GrievanceTicket
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GrievanceTicketCopyWith<GrievanceTicket> get copyWith => _$GrievanceTicketCopyWithImpl<GrievanceTicket>(this as GrievanceTicket, _$identity);

  /// Serializes this GrievanceTicket to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GrievanceTicket;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GrievanceTicket&&(identical(other.ticketId, _this.ticketId) || other.ticketId == _this.ticketId)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.subject, _this.subject) || other.subject == _this.subject)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.priority, _this.priority) || other.priority == _this.priority)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.resolvedAt, _this.resolvedAt) || other.resolvedAt == _this.resolvedAt)&&(identical(other.students, _this.students) || other.students == _this.students)&&(identical(other.staffAccounts, _this.staffAccounts) || other.staffAccounts == _this.staffAccounts)&&const DeepCollectionEquality().equals(other.responses, _this.responses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GrievanceTicket;
  return Object.hash(runtimeType,_this.ticketId,_this.category,_this.subject,_this.description,_this.status,_this.priority,_this.createdAt,_this.resolvedAt,_this.students,_this.staffAccounts,const DeepCollectionEquality().hash(_this.responses));
}

@override
String toString() {
  final _this = this as GrievanceTicket;
  return 'GrievanceTicket(ticketId: ${_this.ticketId}, category: ${_this.category}, subject: ${_this.subject}, description: ${_this.description}, status: ${_this.status}, priority: ${_this.priority}, createdAt: ${_this.createdAt}, resolvedAt: ${_this.resolvedAt}, students: ${_this.students}, staffAccounts: ${_this.staffAccounts}, responses: ${_this.responses})';
}


}

/// @nodoc
abstract mixin class $GrievanceTicketCopyWith<$Res>  {
  factory $GrievanceTicketCopyWith(GrievanceTicket value, $Res Function(GrievanceTicket) _then) = _$GrievanceTicketCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ticket_id') String ticketId, String? category, String subject, String description, String status, String? priority,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'resolved_at') DateTime? resolvedAt, GrievanceStudentRef? students,@JsonKey(name: 'staff_accounts') GrievanceStaffRef? staffAccounts,@JsonKey(name: 'grievance_responses') List<GrievanceResponse>? responses
});


$GrievanceStudentRefCopyWith<$Res>? get students;$GrievanceStaffRefCopyWith<$Res>? get staffAccounts;

}
/// @nodoc
class _$GrievanceTicketCopyWithImpl<$Res>
    implements $GrievanceTicketCopyWith<$Res> {
  _$GrievanceTicketCopyWithImpl(this._self, this._then);

  final GrievanceTicket _self;
  final $Res Function(GrievanceTicket) _then;

/// Create a copy of GrievanceTicket
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? category = freezed,Object? subject = null,Object? description = null,Object? status = null,Object? priority = freezed,Object? createdAt = null,Object? resolvedAt = freezed,Object? students = freezed,Object? staffAccounts = freezed,Object? responses = freezed,}) {
  return _then(GrievanceTicket(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,students: freezed == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as GrievanceStudentRef?,staffAccounts: freezed == staffAccounts ? _self.staffAccounts : staffAccounts // ignore: cast_nullable_to_non_nullable
as GrievanceStaffRef?,responses: freezed == responses ? _self.responses : responses // ignore: cast_nullable_to_non_nullable
as List<GrievanceResponse>?,
  ));
}
/// Create a copy of GrievanceTicket
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GrievanceStudentRefCopyWith<$Res>? get students {
    if (_self.students == null) {
    return null;
  }

  return $GrievanceStudentRefCopyWith<$Res>(_self.students!, (value) {
    return _then(_self.copyWith(students: value));
  });
}/// Create a copy of GrievanceTicket
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GrievanceStaffRefCopyWith<$Res>? get staffAccounts {
    if (_self.staffAccounts == null) {
    return null;
  }

  return $GrievanceStaffRefCopyWith<$Res>(_self.staffAccounts!, (value) {
    return _then(_self.copyWith(staffAccounts: value));
  });
}
}


/// Adds pattern-matching-related methods to [GrievanceTicket].
extension GrievanceTicketPatterns on GrievanceTicket {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GrievanceTicket value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GrievanceTicket() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GrievanceTicket value)  $default,){
final _that = this;
switch (_that) {
case _GrievanceTicket():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GrievanceTicket value)?  $default,){
final _that = this;
switch (_that) {
case _GrievanceTicket() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ticket_id')  String ticketId,  String? category,  String subject,  String description,  String status,  String? priority, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'resolved_at')  DateTime? resolvedAt,  GrievanceStudentRef? students, @JsonKey(name: 'staff_accounts')  GrievanceStaffRef? staffAccounts, @JsonKey(name: 'grievance_responses')  List<GrievanceResponse>? responses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GrievanceTicket() when $default != null:
return $default(_that.ticketId,_that.category,_that.subject,_that.description,_that.status,_that.priority,_that.createdAt,_that.resolvedAt,_that.students,_that.staffAccounts,_that.responses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ticket_id')  String ticketId,  String? category,  String subject,  String description,  String status,  String? priority, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'resolved_at')  DateTime? resolvedAt,  GrievanceStudentRef? students, @JsonKey(name: 'staff_accounts')  GrievanceStaffRef? staffAccounts, @JsonKey(name: 'grievance_responses')  List<GrievanceResponse>? responses)  $default,) {final _that = this;
switch (_that) {
case _GrievanceTicket():
return $default(_that.ticketId,_that.category,_that.subject,_that.description,_that.status,_that.priority,_that.createdAt,_that.resolvedAt,_that.students,_that.staffAccounts,_that.responses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ticket_id')  String ticketId,  String? category,  String subject,  String description,  String status,  String? priority, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'resolved_at')  DateTime? resolvedAt,  GrievanceStudentRef? students, @JsonKey(name: 'staff_accounts')  GrievanceStaffRef? staffAccounts, @JsonKey(name: 'grievance_responses')  List<GrievanceResponse>? responses)?  $default,) {final _that = this;
switch (_that) {
case _GrievanceTicket() when $default != null:
return $default(_that.ticketId,_that.category,_that.subject,_that.description,_that.status,_that.priority,_that.createdAt,_that.resolvedAt,_that.students,_that.staffAccounts,_that.responses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GrievanceTicket implements GrievanceTicket {
  const _GrievanceTicket({@JsonKey(name: 'ticket_id') required this.ticketId, this.category, required this.subject, required this.description, required this.status, this.priority, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'resolved_at') this.resolvedAt, this.students, @JsonKey(name: 'staff_accounts') this.staffAccounts, @JsonKey(name: 'grievance_responses')  List<GrievanceResponse>? responses}): _responses = responses;
  factory _GrievanceTicket.fromJson(Map<String, dynamic> json) => _$GrievanceTicketFromJson(json);

@override@JsonKey(name: 'ticket_id') final  String ticketId;
@override final  String? category;
@override final  String subject;
@override final  String description;
@override final  String status;
@override final  String? priority;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'resolved_at') final  DateTime? resolvedAt;
@override final  GrievanceStudentRef? students;
@override@JsonKey(name: 'staff_accounts') final  GrievanceStaffRef? staffAccounts;
 final  List<GrievanceResponse>? _responses;
@override@JsonKey(name: 'grievance_responses') List<GrievanceResponse>? get responses {
  final value = _responses;
  if (value == null) return null;
  if (_responses is EqualUnmodifiableListView) return _responses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GrievanceTicket
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GrievanceTicketCopyWith<_GrievanceTicket> get copyWith => __$GrievanceTicketCopyWithImpl<_GrievanceTicket>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GrievanceTicketToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GrievanceTicket&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.category, category) || other.category == category)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&(identical(other.students, students) || other.students == students)&&(identical(other.staffAccounts, staffAccounts) || other.staffAccounts == staffAccounts)&&const DeepCollectionEquality().equals(other.responses, _responses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,ticketId,category,subject,description,status,priority,createdAt,resolvedAt,students,staffAccounts,const DeepCollectionEquality().hash(_responses));
}

@override
String toString() {
    return 'GrievanceTicket(ticketId: $ticketId, category: $category, subject: $subject, description: $description, status: $status, priority: $priority, createdAt: $createdAt, resolvedAt: $resolvedAt, students: $students, staffAccounts: $staffAccounts, responses: $responses)';
}


}

/// @nodoc
abstract mixin class _$GrievanceTicketCopyWith<$Res> implements $GrievanceTicketCopyWith<$Res> {
  factory _$GrievanceTicketCopyWith(_GrievanceTicket value, $Res Function(_GrievanceTicket) _then) = __$GrievanceTicketCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ticket_id') String ticketId, String? category, String subject, String description, String status, String? priority,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'resolved_at') DateTime? resolvedAt, GrievanceStudentRef? students,@JsonKey(name: 'staff_accounts') GrievanceStaffRef? staffAccounts,@JsonKey(name: 'grievance_responses') List<GrievanceResponse>? responses
});


@override $GrievanceStudentRefCopyWith<$Res>? get students;@override $GrievanceStaffRefCopyWith<$Res>? get staffAccounts;

}
/// @nodoc
class __$GrievanceTicketCopyWithImpl<$Res>
    implements _$GrievanceTicketCopyWith<$Res> {
  __$GrievanceTicketCopyWithImpl(this._self, this._then);

  final _GrievanceTicket _self;
  final $Res Function(_GrievanceTicket) _then;

/// Create a copy of GrievanceTicket
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? category = freezed,Object? subject = null,Object? description = null,Object? status = null,Object? priority = freezed,Object? createdAt = null,Object? resolvedAt = freezed,Object? students = freezed,Object? staffAccounts = freezed,Object? responses = freezed,}) {
  return _then(_GrievanceTicket(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,students: freezed == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as GrievanceStudentRef?,staffAccounts: freezed == staffAccounts ? _self.staffAccounts : staffAccounts // ignore: cast_nullable_to_non_nullable
as GrievanceStaffRef?,responses: freezed == responses ? _self._responses : responses // ignore: cast_nullable_to_non_nullable
as List<GrievanceResponse>?,
  ));
}

/// Create a copy of GrievanceTicket
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GrievanceStudentRefCopyWith<$Res>? get students {
    if (_self.students == null) {
    return null;
  }

  return $GrievanceStudentRefCopyWith<$Res>(_self.students!, (value) {
    return _then(_self.copyWith(students: value));
  });
}/// Create a copy of GrievanceTicket
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GrievanceStaffRefCopyWith<$Res>? get staffAccounts {
    if (_self.staffAccounts == null) {
    return null;
  }

  return $GrievanceStaffRefCopyWith<$Res>(_self.staffAccounts!, (value) {
    return _then(_self.copyWith(staffAccounts: value));
  });
}
}

// dart format on
