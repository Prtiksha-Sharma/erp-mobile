// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_academics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AcademicsActiveSession {

@JsonKey(name: 'session_id') String get sessionId;@JsonKey(name: 'session_name') String? get sessionName;
/// Create a copy of AcademicsActiveSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcademicsActiveSessionCopyWith<AcademicsActiveSession> get copyWith => _$AcademicsActiveSessionCopyWithImpl<AcademicsActiveSession>(this as AcademicsActiveSession, _$identity);

  /// Serializes this AcademicsActiveSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AcademicsActiveSession;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcademicsActiveSession&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.sessionName, _this.sessionName) || other.sessionName == _this.sessionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AcademicsActiveSession;
  return Object.hash(runtimeType,_this.sessionId,_this.sessionName);
}

@override
String toString() {
  final _this = this as AcademicsActiveSession;
  return 'AcademicsActiveSession(sessionId: ${_this.sessionId}, sessionName: ${_this.sessionName})';
}


}

/// @nodoc
abstract mixin class $AcademicsActiveSessionCopyWith<$Res>  {
  factory $AcademicsActiveSessionCopyWith(AcademicsActiveSession value, $Res Function(AcademicsActiveSession) _then) = _$AcademicsActiveSessionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'session_name') String? sessionName
});




}
/// @nodoc
class _$AcademicsActiveSessionCopyWithImpl<$Res>
    implements $AcademicsActiveSessionCopyWith<$Res> {
  _$AcademicsActiveSessionCopyWithImpl(this._self, this._then);

  final AcademicsActiveSession _self;
  final $Res Function(AcademicsActiveSession) _then;

/// Create a copy of AcademicsActiveSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,Object? sessionName = freezed,}) {
  return _then(AcademicsActiveSession(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,sessionName: freezed == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AcademicsActiveSession].
extension AcademicsActiveSessionPatterns on AcademicsActiveSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcademicsActiveSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcademicsActiveSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcademicsActiveSession value)  $default,){
final _that = this;
switch (_that) {
case _AcademicsActiveSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcademicsActiveSession value)?  $default,){
final _that = this;
switch (_that) {
case _AcademicsActiveSession() when $default != null:
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
case _AcademicsActiveSession() when $default != null:
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
case _AcademicsActiveSession():
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
case _AcademicsActiveSession() when $default != null:
return $default(_that.sessionId,_that.sessionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcademicsActiveSession implements AcademicsActiveSession {
  const _AcademicsActiveSession({@JsonKey(name: 'session_id') required this.sessionId, @JsonKey(name: 'session_name') this.sessionName});
  factory _AcademicsActiveSession.fromJson(Map<String, dynamic> json) => _$AcademicsActiveSessionFromJson(json);

@override@JsonKey(name: 'session_id') final  String sessionId;
@override@JsonKey(name: 'session_name') final  String? sessionName;

/// Create a copy of AcademicsActiveSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcademicsActiveSessionCopyWith<_AcademicsActiveSession> get copyWith => __$AcademicsActiveSessionCopyWithImpl<_AcademicsActiveSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcademicsActiveSessionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcademicsActiveSession&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.sessionName, sessionName) || other.sessionName == sessionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sessionId,sessionName);
}

@override
String toString() {
    return 'AcademicsActiveSession(sessionId: $sessionId, sessionName: $sessionName)';
}


}

/// @nodoc
abstract mixin class _$AcademicsActiveSessionCopyWith<$Res> implements $AcademicsActiveSessionCopyWith<$Res> {
  factory _$AcademicsActiveSessionCopyWith(_AcademicsActiveSession value, $Res Function(_AcademicsActiveSession) _then) = __$AcademicsActiveSessionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'session_name') String? sessionName
});




}
/// @nodoc
class __$AcademicsActiveSessionCopyWithImpl<$Res>
    implements _$AcademicsActiveSessionCopyWith<$Res> {
  __$AcademicsActiveSessionCopyWithImpl(this._self, this._then);

  final _AcademicsActiveSession _self;
  final $Res Function(_AcademicsActiveSession) _then;

/// Create a copy of AcademicsActiveSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,Object? sessionName = freezed,}) {
  return _then(_AcademicsActiveSession(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,sessionName: freezed == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AcademicSubject {

@JsonKey(name: 'subject_id') String get subjectId;@JsonKey(name: 'institution_id') String? get institutionId;@JsonKey(name: 'subject_name') String get subjectName;@JsonKey(name: 'subject_code') String? get subjectCode;@JsonKey(name: 'subject_type') String? get subjectType;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of AcademicSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcademicSubjectCopyWith<AcademicSubject> get copyWith => _$AcademicSubjectCopyWithImpl<AcademicSubject>(this as AcademicSubject, _$identity);

  /// Serializes this AcademicSubject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AcademicSubject;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcademicSubject&&(identical(other.subjectId, _this.subjectId) || other.subjectId == _this.subjectId)&&(identical(other.institutionId, _this.institutionId) || other.institutionId == _this.institutionId)&&(identical(other.subjectName, _this.subjectName) || other.subjectName == _this.subjectName)&&(identical(other.subjectCode, _this.subjectCode) || other.subjectCode == _this.subjectCode)&&(identical(other.subjectType, _this.subjectType) || other.subjectType == _this.subjectType)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AcademicSubject;
  return Object.hash(runtimeType,_this.subjectId,_this.institutionId,_this.subjectName,_this.subjectCode,_this.subjectType,_this.isActive,_this.createdAt);
}

@override
String toString() {
  final _this = this as AcademicSubject;
  return 'AcademicSubject(subjectId: ${_this.subjectId}, institutionId: ${_this.institutionId}, subjectName: ${_this.subjectName}, subjectCode: ${_this.subjectCode}, subjectType: ${_this.subjectType}, isActive: ${_this.isActive}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $AcademicSubjectCopyWith<$Res>  {
  factory $AcademicSubjectCopyWith(AcademicSubject value, $Res Function(AcademicSubject) _then) = _$AcademicSubjectCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'subject_id') String subjectId,@JsonKey(name: 'institution_id') String? institutionId,@JsonKey(name: 'subject_name') String subjectName,@JsonKey(name: 'subject_code') String? subjectCode,@JsonKey(name: 'subject_type') String? subjectType,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$AcademicSubjectCopyWithImpl<$Res>
    implements $AcademicSubjectCopyWith<$Res> {
  _$AcademicSubjectCopyWithImpl(this._self, this._then);

  final AcademicSubject _self;
  final $Res Function(AcademicSubject) _then;

/// Create a copy of AcademicSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subjectId = null,Object? institutionId = freezed,Object? subjectName = null,Object? subjectCode = freezed,Object? subjectType = freezed,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(AcademicSubject(
subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,institutionId: freezed == institutionId ? _self.institutionId : institutionId // ignore: cast_nullable_to_non_nullable
as String?,subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,subjectCode: freezed == subjectCode ? _self.subjectCode : subjectCode // ignore: cast_nullable_to_non_nullable
as String?,subjectType: freezed == subjectType ? _self.subjectType : subjectType // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AcademicSubject].
extension AcademicSubjectPatterns on AcademicSubject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcademicSubject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcademicSubject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcademicSubject value)  $default,){
final _that = this;
switch (_that) {
case _AcademicSubject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcademicSubject value)?  $default,){
final _that = this;
switch (_that) {
case _AcademicSubject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'subject_id')  String subjectId, @JsonKey(name: 'institution_id')  String? institutionId, @JsonKey(name: 'subject_name')  String subjectName, @JsonKey(name: 'subject_code')  String? subjectCode, @JsonKey(name: 'subject_type')  String? subjectType, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcademicSubject() when $default != null:
return $default(_that.subjectId,_that.institutionId,_that.subjectName,_that.subjectCode,_that.subjectType,_that.isActive,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'subject_id')  String subjectId, @JsonKey(name: 'institution_id')  String? institutionId, @JsonKey(name: 'subject_name')  String subjectName, @JsonKey(name: 'subject_code')  String? subjectCode, @JsonKey(name: 'subject_type')  String? subjectType, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _AcademicSubject():
return $default(_that.subjectId,_that.institutionId,_that.subjectName,_that.subjectCode,_that.subjectType,_that.isActive,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'subject_id')  String subjectId, @JsonKey(name: 'institution_id')  String? institutionId, @JsonKey(name: 'subject_name')  String subjectName, @JsonKey(name: 'subject_code')  String? subjectCode, @JsonKey(name: 'subject_type')  String? subjectType, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _AcademicSubject() when $default != null:
return $default(_that.subjectId,_that.institutionId,_that.subjectName,_that.subjectCode,_that.subjectType,_that.isActive,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcademicSubject implements AcademicSubject {
  const _AcademicSubject({@JsonKey(name: 'subject_id') required this.subjectId, @JsonKey(name: 'institution_id') this.institutionId, @JsonKey(name: 'subject_name') required this.subjectName, @JsonKey(name: 'subject_code') this.subjectCode, @JsonKey(name: 'subject_type') this.subjectType, @JsonKey(name: 'is_active') this.isActive = true, @JsonKey(name: 'created_at') this.createdAt});
  factory _AcademicSubject.fromJson(Map<String, dynamic> json) => _$AcademicSubjectFromJson(json);

@override@JsonKey(name: 'subject_id') final  String subjectId;
@override@JsonKey(name: 'institution_id') final  String? institutionId;
@override@JsonKey(name: 'subject_name') final  String subjectName;
@override@JsonKey(name: 'subject_code') final  String? subjectCode;
@override@JsonKey(name: 'subject_type') final  String? subjectType;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of AcademicSubject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcademicSubjectCopyWith<_AcademicSubject> get copyWith => __$AcademicSubjectCopyWithImpl<_AcademicSubject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcademicSubjectToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcademicSubject&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.institutionId, institutionId) || other.institutionId == institutionId)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.subjectCode, subjectCode) || other.subjectCode == subjectCode)&&(identical(other.subjectType, subjectType) || other.subjectType == subjectType)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,subjectId,institutionId,subjectName,subjectCode,subjectType,isActive,createdAt);
}

@override
String toString() {
    return 'AcademicSubject(subjectId: $subjectId, institutionId: $institutionId, subjectName: $subjectName, subjectCode: $subjectCode, subjectType: $subjectType, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AcademicSubjectCopyWith<$Res> implements $AcademicSubjectCopyWith<$Res> {
  factory _$AcademicSubjectCopyWith(_AcademicSubject value, $Res Function(_AcademicSubject) _then) = __$AcademicSubjectCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'subject_id') String subjectId,@JsonKey(name: 'institution_id') String? institutionId,@JsonKey(name: 'subject_name') String subjectName,@JsonKey(name: 'subject_code') String? subjectCode,@JsonKey(name: 'subject_type') String? subjectType,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$AcademicSubjectCopyWithImpl<$Res>
    implements _$AcademicSubjectCopyWith<$Res> {
  __$AcademicSubjectCopyWithImpl(this._self, this._then);

  final _AcademicSubject _self;
  final $Res Function(_AcademicSubject) _then;

/// Create a copy of AcademicSubject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subjectId = null,Object? institutionId = freezed,Object? subjectName = null,Object? subjectCode = freezed,Object? subjectType = freezed,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_AcademicSubject(
subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,institutionId: freezed == institutionId ? _self.institutionId : institutionId // ignore: cast_nullable_to_non_nullable
as String?,subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,subjectCode: freezed == subjectCode ? _self.subjectCode : subjectCode // ignore: cast_nullable_to_non_nullable
as String?,subjectType: freezed == subjectType ? _self.subjectType : subjectType // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$ClassSubjectAssignment {

@JsonKey(name: 'class_subject_id') String get classSubjectId;@JsonKey(name: 'class_id') String get classId;@JsonKey(name: 'subject_id') String get subjectId;@JsonKey(name: 'session_id') String? get sessionId;@JsonKey(name: 'classes') ClassRef? get classRef;@JsonKey(name: 'academic_subjects') SubjectRef? get subject;@JsonKey(name: 'academic_sessions') SessionRef? get session;
/// Create a copy of ClassSubjectAssignment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassSubjectAssignmentCopyWith<ClassSubjectAssignment> get copyWith => _$ClassSubjectAssignmentCopyWithImpl<ClassSubjectAssignment>(this as ClassSubjectAssignment, _$identity);

  /// Serializes this ClassSubjectAssignment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassSubjectAssignment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassSubjectAssignment&&(identical(other.classSubjectId, _this.classSubjectId) || other.classSubjectId == _this.classSubjectId)&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.subjectId, _this.subjectId) || other.subjectId == _this.subjectId)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.classRef, _this.classRef) || other.classRef == _this.classRef)&&(identical(other.subject, _this.subject) || other.subject == _this.subject)&&(identical(other.session, _this.session) || other.session == _this.session));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassSubjectAssignment;
  return Object.hash(runtimeType,_this.classSubjectId,_this.classId,_this.subjectId,_this.sessionId,_this.classRef,_this.subject,_this.session);
}

@override
String toString() {
  final _this = this as ClassSubjectAssignment;
  return 'ClassSubjectAssignment(classSubjectId: ${_this.classSubjectId}, classId: ${_this.classId}, subjectId: ${_this.subjectId}, sessionId: ${_this.sessionId}, classRef: ${_this.classRef}, subject: ${_this.subject}, session: ${_this.session})';
}


}

/// @nodoc
abstract mixin class $ClassSubjectAssignmentCopyWith<$Res>  {
  factory $ClassSubjectAssignmentCopyWith(ClassSubjectAssignment value, $Res Function(ClassSubjectAssignment) _then) = _$ClassSubjectAssignmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'class_subject_id') String classSubjectId,@JsonKey(name: 'class_id') String classId,@JsonKey(name: 'subject_id') String subjectId,@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject,@JsonKey(name: 'academic_sessions') SessionRef? session
});


$ClassRefCopyWith<$Res>? get classRef;$SubjectRefCopyWith<$Res>? get subject;$SessionRefCopyWith<$Res>? get session;

}
/// @nodoc
class _$ClassSubjectAssignmentCopyWithImpl<$Res>
    implements $ClassSubjectAssignmentCopyWith<$Res> {
  _$ClassSubjectAssignmentCopyWithImpl(this._self, this._then);

  final ClassSubjectAssignment _self;
  final $Res Function(ClassSubjectAssignment) _then;

/// Create a copy of ClassSubjectAssignment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classSubjectId = null,Object? classId = null,Object? subjectId = null,Object? sessionId = freezed,Object? classRef = freezed,Object? subject = freezed,Object? session = freezed,}) {
  return _then(ClassSubjectAssignment(
classSubjectId: null == classSubjectId ? _self.classSubjectId : classSubjectId // ignore: cast_nullable_to_non_nullable
as String,classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,
  ));
}
/// Create a copy of ClassSubjectAssignment
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
}/// Create a copy of ClassSubjectAssignment
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
}/// Create a copy of ClassSubjectAssignment
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
}
}


/// Adds pattern-matching-related methods to [ClassSubjectAssignment].
extension ClassSubjectAssignmentPatterns on ClassSubjectAssignment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassSubjectAssignment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassSubjectAssignment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassSubjectAssignment value)  $default,){
final _that = this;
switch (_that) {
case _ClassSubjectAssignment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassSubjectAssignment value)?  $default,){
final _that = this;
switch (_that) {
case _ClassSubjectAssignment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_subject_id')  String classSubjectId, @JsonKey(name: 'class_id')  String classId, @JsonKey(name: 'subject_id')  String subjectId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject, @JsonKey(name: 'academic_sessions')  SessionRef? session)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassSubjectAssignment() when $default != null:
return $default(_that.classSubjectId,_that.classId,_that.subjectId,_that.sessionId,_that.classRef,_that.subject,_that.session);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_subject_id')  String classSubjectId, @JsonKey(name: 'class_id')  String classId, @JsonKey(name: 'subject_id')  String subjectId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject, @JsonKey(name: 'academic_sessions')  SessionRef? session)  $default,) {final _that = this;
switch (_that) {
case _ClassSubjectAssignment():
return $default(_that.classSubjectId,_that.classId,_that.subjectId,_that.sessionId,_that.classRef,_that.subject,_that.session);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'class_subject_id')  String classSubjectId, @JsonKey(name: 'class_id')  String classId, @JsonKey(name: 'subject_id')  String subjectId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject, @JsonKey(name: 'academic_sessions')  SessionRef? session)?  $default,) {final _that = this;
switch (_that) {
case _ClassSubjectAssignment() when $default != null:
return $default(_that.classSubjectId,_that.classId,_that.subjectId,_that.sessionId,_that.classRef,_that.subject,_that.session);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassSubjectAssignment implements ClassSubjectAssignment {
  const _ClassSubjectAssignment({@JsonKey(name: 'class_subject_id') required this.classSubjectId, @JsonKey(name: 'class_id') required this.classId, @JsonKey(name: 'subject_id') required this.subjectId, @JsonKey(name: 'session_id') this.sessionId, @JsonKey(name: 'classes') this.classRef, @JsonKey(name: 'academic_subjects') this.subject, @JsonKey(name: 'academic_sessions') this.session});
  factory _ClassSubjectAssignment.fromJson(Map<String, dynamic> json) => _$ClassSubjectAssignmentFromJson(json);

@override@JsonKey(name: 'class_subject_id') final  String classSubjectId;
@override@JsonKey(name: 'class_id') final  String classId;
@override@JsonKey(name: 'subject_id') final  String subjectId;
@override@JsonKey(name: 'session_id') final  String? sessionId;
@override@JsonKey(name: 'classes') final  ClassRef? classRef;
@override@JsonKey(name: 'academic_subjects') final  SubjectRef? subject;
@override@JsonKey(name: 'academic_sessions') final  SessionRef? session;

/// Create a copy of ClassSubjectAssignment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassSubjectAssignmentCopyWith<_ClassSubjectAssignment> get copyWith => __$ClassSubjectAssignmentCopyWithImpl<_ClassSubjectAssignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassSubjectAssignmentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassSubjectAssignment&&(identical(other.classSubjectId, classSubjectId) || other.classSubjectId == classSubjectId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.classRef, classRef) || other.classRef == classRef)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.session, session) || other.session == session));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,classSubjectId,classId,subjectId,sessionId,classRef,subject,session);
}

@override
String toString() {
    return 'ClassSubjectAssignment(classSubjectId: $classSubjectId, classId: $classId, subjectId: $subjectId, sessionId: $sessionId, classRef: $classRef, subject: $subject, session: $session)';
}


}

/// @nodoc
abstract mixin class _$ClassSubjectAssignmentCopyWith<$Res> implements $ClassSubjectAssignmentCopyWith<$Res> {
  factory _$ClassSubjectAssignmentCopyWith(_ClassSubjectAssignment value, $Res Function(_ClassSubjectAssignment) _then) = __$ClassSubjectAssignmentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'class_subject_id') String classSubjectId,@JsonKey(name: 'class_id') String classId,@JsonKey(name: 'subject_id') String subjectId,@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject,@JsonKey(name: 'academic_sessions') SessionRef? session
});


@override $ClassRefCopyWith<$Res>? get classRef;@override $SubjectRefCopyWith<$Res>? get subject;@override $SessionRefCopyWith<$Res>? get session;

}
/// @nodoc
class __$ClassSubjectAssignmentCopyWithImpl<$Res>
    implements _$ClassSubjectAssignmentCopyWith<$Res> {
  __$ClassSubjectAssignmentCopyWithImpl(this._self, this._then);

  final _ClassSubjectAssignment _self;
  final $Res Function(_ClassSubjectAssignment) _then;

/// Create a copy of ClassSubjectAssignment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classSubjectId = null,Object? classId = null,Object? subjectId = null,Object? sessionId = freezed,Object? classRef = freezed,Object? subject = freezed,Object? session = freezed,}) {
  return _then(_ClassSubjectAssignment(
classSubjectId: null == classSubjectId ? _self.classSubjectId : classSubjectId // ignore: cast_nullable_to_non_nullable
as String,classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,
  ));
}

/// Create a copy of ClassSubjectAssignment
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
}/// Create a copy of ClassSubjectAssignment
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
}/// Create a copy of ClassSubjectAssignment
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
}
}


/// @nodoc
mixin _$AcademicStaffRef {

@JsonKey(name: 'staff_id') String? get staffId;@JsonKey(name: 'full_name') String? get fullName;@JsonKey(name: 'employee_code') String? get employeeCode; String? get designation;@JsonKey(name: 'contact_number') String? get contactNumber;@JsonKey(name: 'profile_photo_url') String? get profilePhotoUrl;
/// Create a copy of AcademicStaffRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcademicStaffRefCopyWith<AcademicStaffRef> get copyWith => _$AcademicStaffRefCopyWithImpl<AcademicStaffRef>(this as AcademicStaffRef, _$identity);

  /// Serializes this AcademicStaffRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AcademicStaffRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcademicStaffRef&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.designation, _this.designation) || other.designation == _this.designation)&&(identical(other.contactNumber, _this.contactNumber) || other.contactNumber == _this.contactNumber)&&(identical(other.profilePhotoUrl, _this.profilePhotoUrl) || other.profilePhotoUrl == _this.profilePhotoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AcademicStaffRef;
  return Object.hash(runtimeType,_this.staffId,_this.fullName,_this.employeeCode,_this.designation,_this.contactNumber,_this.profilePhotoUrl);
}

@override
String toString() {
  final _this = this as AcademicStaffRef;
  return 'AcademicStaffRef(staffId: ${_this.staffId}, fullName: ${_this.fullName}, employeeCode: ${_this.employeeCode}, designation: ${_this.designation}, contactNumber: ${_this.contactNumber}, profilePhotoUrl: ${_this.profilePhotoUrl})';
}


}

/// @nodoc
abstract mixin class $AcademicStaffRefCopyWith<$Res>  {
  factory $AcademicStaffRefCopyWith(AcademicStaffRef value, $Res Function(AcademicStaffRef) _then) = _$AcademicStaffRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'employee_code') String? employeeCode, String? designation,@JsonKey(name: 'contact_number') String? contactNumber,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl
});




}
/// @nodoc
class _$AcademicStaffRefCopyWithImpl<$Res>
    implements $AcademicStaffRefCopyWith<$Res> {
  _$AcademicStaffRefCopyWithImpl(this._self, this._then);

  final AcademicStaffRef _self;
  final $Res Function(AcademicStaffRef) _then;

/// Create a copy of AcademicStaffRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = freezed,Object? fullName = freezed,Object? employeeCode = freezed,Object? designation = freezed,Object? contactNumber = freezed,Object? profilePhotoUrl = freezed,}) {
  return _then(AcademicStaffRef(
staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AcademicStaffRef].
extension AcademicStaffRefPatterns on AcademicStaffRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcademicStaffRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcademicStaffRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcademicStaffRef value)  $default,){
final _that = this;
switch (_that) {
case _AcademicStaffRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcademicStaffRef value)?  $default,){
final _that = this;
switch (_that) {
case _AcademicStaffRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? designation, @JsonKey(name: 'contact_number')  String? contactNumber, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcademicStaffRef() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? designation, @JsonKey(name: 'contact_number')  String? contactNumber, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl)  $default,) {final _that = this;
switch (_that) {
case _AcademicStaffRef():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? designation, @JsonKey(name: 'contact_number')  String? contactNumber, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl)?  $default,) {final _that = this;
switch (_that) {
case _AcademicStaffRef() when $default != null:
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.designation,_that.contactNumber,_that.profilePhotoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcademicStaffRef implements AcademicStaffRef {
  const _AcademicStaffRef({@JsonKey(name: 'staff_id') this.staffId, @JsonKey(name: 'full_name') this.fullName, @JsonKey(name: 'employee_code') this.employeeCode, this.designation, @JsonKey(name: 'contact_number') this.contactNumber, @JsonKey(name: 'profile_photo_url') this.profilePhotoUrl});
  factory _AcademicStaffRef.fromJson(Map<String, dynamic> json) => _$AcademicStaffRefFromJson(json);

@override@JsonKey(name: 'staff_id') final  String? staffId;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override final  String? designation;
@override@JsonKey(name: 'contact_number') final  String? contactNumber;
@override@JsonKey(name: 'profile_photo_url') final  String? profilePhotoUrl;

/// Create a copy of AcademicStaffRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcademicStaffRefCopyWith<_AcademicStaffRef> get copyWith => __$AcademicStaffRefCopyWithImpl<_AcademicStaffRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcademicStaffRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcademicStaffRef&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.contactNumber, contactNumber) || other.contactNumber == contactNumber)&&(identical(other.profilePhotoUrl, profilePhotoUrl) || other.profilePhotoUrl == profilePhotoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,fullName,employeeCode,designation,contactNumber,profilePhotoUrl);
}

@override
String toString() {
    return 'AcademicStaffRef(staffId: $staffId, fullName: $fullName, employeeCode: $employeeCode, designation: $designation, contactNumber: $contactNumber, profilePhotoUrl: $profilePhotoUrl)';
}


}

/// @nodoc
abstract mixin class _$AcademicStaffRefCopyWith<$Res> implements $AcademicStaffRefCopyWith<$Res> {
  factory _$AcademicStaffRefCopyWith(_AcademicStaffRef value, $Res Function(_AcademicStaffRef) _then) = __$AcademicStaffRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'employee_code') String? employeeCode, String? designation,@JsonKey(name: 'contact_number') String? contactNumber,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl
});




}
/// @nodoc
class __$AcademicStaffRefCopyWithImpl<$Res>
    implements _$AcademicStaffRefCopyWith<$Res> {
  __$AcademicStaffRefCopyWithImpl(this._self, this._then);

  final _AcademicStaffRef _self;
  final $Res Function(_AcademicStaffRef) _then;

/// Create a copy of AcademicStaffRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = freezed,Object? fullName = freezed,Object? employeeCode = freezed,Object? designation = freezed,Object? contactNumber = freezed,Object? profilePhotoUrl = freezed,}) {
  return _then(_AcademicStaffRef(
staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SubjectTeacherAssignment {

@JsonKey(name: 'subject_teacher_id') String get subjectTeacherId;@JsonKey(name: 'staff_id') String? get staffId;@JsonKey(name: 'class_id') String? get classId;@JsonKey(name: 'section_id') String? get sectionId;@JsonKey(name: 'subject_id') String? get subjectId;@JsonKey(name: 'session_id') String? get sessionId;@JsonKey(name: 'staff_accounts') AcademicStaffRef? get staff;@JsonKey(name: 'classes') ClassRef? get classRef;@JsonKey(name: 'sections') SectionRef? get sectionRef;@JsonKey(name: 'academic_subjects') SubjectRef? get subject;@JsonKey(name: 'academic_sessions') SessionRef? get session;
/// Create a copy of SubjectTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectTeacherAssignmentCopyWith<SubjectTeacherAssignment> get copyWith => _$SubjectTeacherAssignmentCopyWithImpl<SubjectTeacherAssignment>(this as SubjectTeacherAssignment, _$identity);

  /// Serializes this SubjectTeacherAssignment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SubjectTeacherAssignment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubjectTeacherAssignment&&(identical(other.subjectTeacherId, _this.subjectTeacherId) || other.subjectTeacherId == _this.subjectTeacherId)&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId)&&(identical(other.subjectId, _this.subjectId) || other.subjectId == _this.subjectId)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.staff, _this.staff) || other.staff == _this.staff)&&(identical(other.classRef, _this.classRef) || other.classRef == _this.classRef)&&(identical(other.sectionRef, _this.sectionRef) || other.sectionRef == _this.sectionRef)&&(identical(other.subject, _this.subject) || other.subject == _this.subject)&&(identical(other.session, _this.session) || other.session == _this.session));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SubjectTeacherAssignment;
  return Object.hash(runtimeType,_this.subjectTeacherId,_this.staffId,_this.classId,_this.sectionId,_this.subjectId,_this.sessionId,_this.staff,_this.classRef,_this.sectionRef,_this.subject,_this.session);
}

@override
String toString() {
  final _this = this as SubjectTeacherAssignment;
  return 'SubjectTeacherAssignment(subjectTeacherId: ${_this.subjectTeacherId}, staffId: ${_this.staffId}, classId: ${_this.classId}, sectionId: ${_this.sectionId}, subjectId: ${_this.subjectId}, sessionId: ${_this.sessionId}, staff: ${_this.staff}, classRef: ${_this.classRef}, sectionRef: ${_this.sectionRef}, subject: ${_this.subject}, session: ${_this.session})';
}


}

/// @nodoc
abstract mixin class $SubjectTeacherAssignmentCopyWith<$Res>  {
  factory $SubjectTeacherAssignmentCopyWith(SubjectTeacherAssignment value, $Res Function(SubjectTeacherAssignment) _then) = _$SubjectTeacherAssignmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'subject_teacher_id') String subjectTeacherId,@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'subject_id') String? subjectId,@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'staff_accounts') AcademicStaffRef? staff,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject,@JsonKey(name: 'academic_sessions') SessionRef? session
});


$AcademicStaffRefCopyWith<$Res>? get staff;$ClassRefCopyWith<$Res>? get classRef;$SectionRefCopyWith<$Res>? get sectionRef;$SubjectRefCopyWith<$Res>? get subject;$SessionRefCopyWith<$Res>? get session;

}
/// @nodoc
class _$SubjectTeacherAssignmentCopyWithImpl<$Res>
    implements $SubjectTeacherAssignmentCopyWith<$Res> {
  _$SubjectTeacherAssignmentCopyWithImpl(this._self, this._then);

  final SubjectTeacherAssignment _self;
  final $Res Function(SubjectTeacherAssignment) _then;

/// Create a copy of SubjectTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subjectTeacherId = null,Object? staffId = freezed,Object? classId = freezed,Object? sectionId = freezed,Object? subjectId = freezed,Object? sessionId = freezed,Object? staff = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,Object? session = freezed,}) {
  return _then(SubjectTeacherAssignment(
subjectTeacherId: null == subjectTeacherId ? _self.subjectTeacherId : subjectTeacherId // ignore: cast_nullable_to_non_nullable
as String,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,staff: freezed == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as AcademicStaffRef?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,
  ));
}
/// Create a copy of SubjectTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcademicStaffRefCopyWith<$Res>? get staff {
    if (_self.staff == null) {
    return null;
  }

  return $AcademicStaffRefCopyWith<$Res>(_self.staff!, (value) {
    return _then(_self.copyWith(staff: value));
  });
}/// Create a copy of SubjectTeacherAssignment
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
}/// Create a copy of SubjectTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get sectionRef {
    if (_self.sectionRef == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.sectionRef!, (value) {
    return _then(_self.copyWith(sectionRef: value));
  });
}/// Create a copy of SubjectTeacherAssignment
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
}/// Create a copy of SubjectTeacherAssignment
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
}
}


/// Adds pattern-matching-related methods to [SubjectTeacherAssignment].
extension SubjectTeacherAssignmentPatterns on SubjectTeacherAssignment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubjectTeacherAssignment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubjectTeacherAssignment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubjectTeacherAssignment value)  $default,){
final _that = this;
switch (_that) {
case _SubjectTeacherAssignment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubjectTeacherAssignment value)?  $default,){
final _that = this;
switch (_that) {
case _SubjectTeacherAssignment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'subject_teacher_id')  String subjectTeacherId, @JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'staff_accounts')  AcademicStaffRef? staff, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject, @JsonKey(name: 'academic_sessions')  SessionRef? session)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubjectTeacherAssignment() when $default != null:
return $default(_that.subjectTeacherId,_that.staffId,_that.classId,_that.sectionId,_that.subjectId,_that.sessionId,_that.staff,_that.classRef,_that.sectionRef,_that.subject,_that.session);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'subject_teacher_id')  String subjectTeacherId, @JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'staff_accounts')  AcademicStaffRef? staff, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject, @JsonKey(name: 'academic_sessions')  SessionRef? session)  $default,) {final _that = this;
switch (_that) {
case _SubjectTeacherAssignment():
return $default(_that.subjectTeacherId,_that.staffId,_that.classId,_that.sectionId,_that.subjectId,_that.sessionId,_that.staff,_that.classRef,_that.sectionRef,_that.subject,_that.session);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'subject_teacher_id')  String subjectTeacherId, @JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'staff_accounts')  AcademicStaffRef? staff, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject, @JsonKey(name: 'academic_sessions')  SessionRef? session)?  $default,) {final _that = this;
switch (_that) {
case _SubjectTeacherAssignment() when $default != null:
return $default(_that.subjectTeacherId,_that.staffId,_that.classId,_that.sectionId,_that.subjectId,_that.sessionId,_that.staff,_that.classRef,_that.sectionRef,_that.subject,_that.session);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubjectTeacherAssignment implements SubjectTeacherAssignment {
  const _SubjectTeacherAssignment({@JsonKey(name: 'subject_teacher_id') required this.subjectTeacherId, @JsonKey(name: 'staff_id') this.staffId, @JsonKey(name: 'class_id') this.classId, @JsonKey(name: 'section_id') this.sectionId, @JsonKey(name: 'subject_id') this.subjectId, @JsonKey(name: 'session_id') this.sessionId, @JsonKey(name: 'staff_accounts') this.staff, @JsonKey(name: 'classes') this.classRef, @JsonKey(name: 'sections') this.sectionRef, @JsonKey(name: 'academic_subjects') this.subject, @JsonKey(name: 'academic_sessions') this.session});
  factory _SubjectTeacherAssignment.fromJson(Map<String, dynamic> json) => _$SubjectTeacherAssignmentFromJson(json);

@override@JsonKey(name: 'subject_teacher_id') final  String subjectTeacherId;
@override@JsonKey(name: 'staff_id') final  String? staffId;
@override@JsonKey(name: 'class_id') final  String? classId;
@override@JsonKey(name: 'section_id') final  String? sectionId;
@override@JsonKey(name: 'subject_id') final  String? subjectId;
@override@JsonKey(name: 'session_id') final  String? sessionId;
@override@JsonKey(name: 'staff_accounts') final  AcademicStaffRef? staff;
@override@JsonKey(name: 'classes') final  ClassRef? classRef;
@override@JsonKey(name: 'sections') final  SectionRef? sectionRef;
@override@JsonKey(name: 'academic_subjects') final  SubjectRef? subject;
@override@JsonKey(name: 'academic_sessions') final  SessionRef? session;

/// Create a copy of SubjectTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubjectTeacherAssignmentCopyWith<_SubjectTeacherAssignment> get copyWith => __$SubjectTeacherAssignmentCopyWithImpl<_SubjectTeacherAssignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubjectTeacherAssignmentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubjectTeacherAssignment&&(identical(other.subjectTeacherId, subjectTeacherId) || other.subjectTeacherId == subjectTeacherId)&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.staff, staff) || other.staff == staff)&&(identical(other.classRef, classRef) || other.classRef == classRef)&&(identical(other.sectionRef, sectionRef) || other.sectionRef == sectionRef)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.session, session) || other.session == session));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,subjectTeacherId,staffId,classId,sectionId,subjectId,sessionId,staff,classRef,sectionRef,subject,session);
}

@override
String toString() {
    return 'SubjectTeacherAssignment(subjectTeacherId: $subjectTeacherId, staffId: $staffId, classId: $classId, sectionId: $sectionId, subjectId: $subjectId, sessionId: $sessionId, staff: $staff, classRef: $classRef, sectionRef: $sectionRef, subject: $subject, session: $session)';
}


}

/// @nodoc
abstract mixin class _$SubjectTeacherAssignmentCopyWith<$Res> implements $SubjectTeacherAssignmentCopyWith<$Res> {
  factory _$SubjectTeacherAssignmentCopyWith(_SubjectTeacherAssignment value, $Res Function(_SubjectTeacherAssignment) _then) = __$SubjectTeacherAssignmentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'subject_teacher_id') String subjectTeacherId,@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'subject_id') String? subjectId,@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'staff_accounts') AcademicStaffRef? staff,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject,@JsonKey(name: 'academic_sessions') SessionRef? session
});


@override $AcademicStaffRefCopyWith<$Res>? get staff;@override $ClassRefCopyWith<$Res>? get classRef;@override $SectionRefCopyWith<$Res>? get sectionRef;@override $SubjectRefCopyWith<$Res>? get subject;@override $SessionRefCopyWith<$Res>? get session;

}
/// @nodoc
class __$SubjectTeacherAssignmentCopyWithImpl<$Res>
    implements _$SubjectTeacherAssignmentCopyWith<$Res> {
  __$SubjectTeacherAssignmentCopyWithImpl(this._self, this._then);

  final _SubjectTeacherAssignment _self;
  final $Res Function(_SubjectTeacherAssignment) _then;

/// Create a copy of SubjectTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subjectTeacherId = null,Object? staffId = freezed,Object? classId = freezed,Object? sectionId = freezed,Object? subjectId = freezed,Object? sessionId = freezed,Object? staff = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,Object? session = freezed,}) {
  return _then(_SubjectTeacherAssignment(
subjectTeacherId: null == subjectTeacherId ? _self.subjectTeacherId : subjectTeacherId // ignore: cast_nullable_to_non_nullable
as String,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,staff: freezed == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as AcademicStaffRef?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,
  ));
}

/// Create a copy of SubjectTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcademicStaffRefCopyWith<$Res>? get staff {
    if (_self.staff == null) {
    return null;
  }

  return $AcademicStaffRefCopyWith<$Res>(_self.staff!, (value) {
    return _then(_self.copyWith(staff: value));
  });
}/// Create a copy of SubjectTeacherAssignment
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
}/// Create a copy of SubjectTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get sectionRef {
    if (_self.sectionRef == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.sectionRef!, (value) {
    return _then(_self.copyWith(sectionRef: value));
  });
}/// Create a copy of SubjectTeacherAssignment
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
}/// Create a copy of SubjectTeacherAssignment
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
}
}


/// @nodoc
mixin _$AdminTimetableEntry {

@JsonKey(name: 'timetable_entry_id') String get timetableEntryId;@JsonKey(name: 'class_id') String? get classId;@JsonKey(name: 'section_id') String? get sectionId;@JsonKey(name: 'subject_id') String? get subjectId;@JsonKey(name: 'staff_id') String? get staffId;@JsonKey(name: 'session_id') String? get sessionId;@JsonKey(name: 'day_of_week') int get dayOfWeek;@JsonKey(name: 'period_number') int get periodNumber;@JsonKey(name: 'start_time') DateTime? get startTime;@JsonKey(name: 'end_time') DateTime? get endTime; String? get room;@JsonKey(name: 'period_type') String get periodType;@JsonKey(name: 'break_label') String? get breakLabel;@JsonKey(name: 'classes') ClassRef? get classRef;@JsonKey(name: 'sections') SectionRef? get sectionRef;@JsonKey(name: 'academic_subjects') SubjectRef? get subject;@JsonKey(name: 'staff_accounts') AcademicStaffRef? get staff;
/// Create a copy of AdminTimetableEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminTimetableEntryCopyWith<AdminTimetableEntry> get copyWith => _$AdminTimetableEntryCopyWithImpl<AdminTimetableEntry>(this as AdminTimetableEntry, _$identity);

  /// Serializes this AdminTimetableEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminTimetableEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminTimetableEntry&&(identical(other.timetableEntryId, _this.timetableEntryId) || other.timetableEntryId == _this.timetableEntryId)&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId)&&(identical(other.subjectId, _this.subjectId) || other.subjectId == _this.subjectId)&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.dayOfWeek, _this.dayOfWeek) || other.dayOfWeek == _this.dayOfWeek)&&(identical(other.periodNumber, _this.periodNumber) || other.periodNumber == _this.periodNumber)&&(identical(other.startTime, _this.startTime) || other.startTime == _this.startTime)&&(identical(other.endTime, _this.endTime) || other.endTime == _this.endTime)&&(identical(other.room, _this.room) || other.room == _this.room)&&(identical(other.periodType, _this.periodType) || other.periodType == _this.periodType)&&(identical(other.breakLabel, _this.breakLabel) || other.breakLabel == _this.breakLabel)&&(identical(other.classRef, _this.classRef) || other.classRef == _this.classRef)&&(identical(other.sectionRef, _this.sectionRef) || other.sectionRef == _this.sectionRef)&&(identical(other.subject, _this.subject) || other.subject == _this.subject)&&(identical(other.staff, _this.staff) || other.staff == _this.staff));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminTimetableEntry;
  return Object.hash(runtimeType,_this.timetableEntryId,_this.classId,_this.sectionId,_this.subjectId,_this.staffId,_this.sessionId,_this.dayOfWeek,_this.periodNumber,_this.startTime,_this.endTime,_this.room,_this.periodType,_this.breakLabel,_this.classRef,_this.sectionRef,_this.subject,_this.staff);
}

@override
String toString() {
  final _this = this as AdminTimetableEntry;
  return 'AdminTimetableEntry(timetableEntryId: ${_this.timetableEntryId}, classId: ${_this.classId}, sectionId: ${_this.sectionId}, subjectId: ${_this.subjectId}, staffId: ${_this.staffId}, sessionId: ${_this.sessionId}, dayOfWeek: ${_this.dayOfWeek}, periodNumber: ${_this.periodNumber}, startTime: ${_this.startTime}, endTime: ${_this.endTime}, room: ${_this.room}, periodType: ${_this.periodType}, breakLabel: ${_this.breakLabel}, classRef: ${_this.classRef}, sectionRef: ${_this.sectionRef}, subject: ${_this.subject}, staff: ${_this.staff})';
}


}

/// @nodoc
abstract mixin class $AdminTimetableEntryCopyWith<$Res>  {
  factory $AdminTimetableEntryCopyWith(AdminTimetableEntry value, $Res Function(AdminTimetableEntry) _then) = _$AdminTimetableEntryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'timetable_entry_id') String timetableEntryId,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'subject_id') String? subjectId,@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'day_of_week') int dayOfWeek,@JsonKey(name: 'period_number') int periodNumber,@JsonKey(name: 'start_time') DateTime? startTime,@JsonKey(name: 'end_time') DateTime? endTime, String? room,@JsonKey(name: 'period_type') String periodType,@JsonKey(name: 'break_label') String? breakLabel,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject,@JsonKey(name: 'staff_accounts') AcademicStaffRef? staff
});


$ClassRefCopyWith<$Res>? get classRef;$SectionRefCopyWith<$Res>? get sectionRef;$SubjectRefCopyWith<$Res>? get subject;$AcademicStaffRefCopyWith<$Res>? get staff;

}
/// @nodoc
class _$AdminTimetableEntryCopyWithImpl<$Res>
    implements $AdminTimetableEntryCopyWith<$Res> {
  _$AdminTimetableEntryCopyWithImpl(this._self, this._then);

  final AdminTimetableEntry _self;
  final $Res Function(AdminTimetableEntry) _then;

/// Create a copy of AdminTimetableEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timetableEntryId = null,Object? classId = freezed,Object? sectionId = freezed,Object? subjectId = freezed,Object? staffId = freezed,Object? sessionId = freezed,Object? dayOfWeek = null,Object? periodNumber = null,Object? startTime = freezed,Object? endTime = freezed,Object? room = freezed,Object? periodType = null,Object? breakLabel = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,Object? staff = freezed,}) {
  return _then(AdminTimetableEntry(
timetableEntryId: null == timetableEntryId ? _self.timetableEntryId : timetableEntryId // ignore: cast_nullable_to_non_nullable
as String,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String?,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,dayOfWeek: null == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as int,periodNumber: null == periodNumber ? _self.periodNumber : periodNumber // ignore: cast_nullable_to_non_nullable
as int,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String?,periodType: null == periodType ? _self.periodType : periodType // ignore: cast_nullable_to_non_nullable
as String,breakLabel: freezed == breakLabel ? _self.breakLabel : breakLabel // ignore: cast_nullable_to_non_nullable
as String?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,staff: freezed == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as AcademicStaffRef?,
  ));
}
/// Create a copy of AdminTimetableEntry
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
}/// Create a copy of AdminTimetableEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get sectionRef {
    if (_self.sectionRef == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.sectionRef!, (value) {
    return _then(_self.copyWith(sectionRef: value));
  });
}/// Create a copy of AdminTimetableEntry
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
}/// Create a copy of AdminTimetableEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcademicStaffRefCopyWith<$Res>? get staff {
    if (_self.staff == null) {
    return null;
  }

  return $AcademicStaffRefCopyWith<$Res>(_self.staff!, (value) {
    return _then(_self.copyWith(staff: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminTimetableEntry].
extension AdminTimetableEntryPatterns on AdminTimetableEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminTimetableEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminTimetableEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminTimetableEntry value)  $default,){
final _that = this;
switch (_that) {
case _AdminTimetableEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminTimetableEntry value)?  $default,){
final _that = this;
switch (_that) {
case _AdminTimetableEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'timetable_entry_id')  String timetableEntryId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'day_of_week')  int dayOfWeek, @JsonKey(name: 'period_number')  int periodNumber, @JsonKey(name: 'start_time')  DateTime? startTime, @JsonKey(name: 'end_time')  DateTime? endTime,  String? room, @JsonKey(name: 'period_type')  String periodType, @JsonKey(name: 'break_label')  String? breakLabel, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject, @JsonKey(name: 'staff_accounts')  AcademicStaffRef? staff)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminTimetableEntry() when $default != null:
return $default(_that.timetableEntryId,_that.classId,_that.sectionId,_that.subjectId,_that.staffId,_that.sessionId,_that.dayOfWeek,_that.periodNumber,_that.startTime,_that.endTime,_that.room,_that.periodType,_that.breakLabel,_that.classRef,_that.sectionRef,_that.subject,_that.staff);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'timetable_entry_id')  String timetableEntryId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'day_of_week')  int dayOfWeek, @JsonKey(name: 'period_number')  int periodNumber, @JsonKey(name: 'start_time')  DateTime? startTime, @JsonKey(name: 'end_time')  DateTime? endTime,  String? room, @JsonKey(name: 'period_type')  String periodType, @JsonKey(name: 'break_label')  String? breakLabel, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject, @JsonKey(name: 'staff_accounts')  AcademicStaffRef? staff)  $default,) {final _that = this;
switch (_that) {
case _AdminTimetableEntry():
return $default(_that.timetableEntryId,_that.classId,_that.sectionId,_that.subjectId,_that.staffId,_that.sessionId,_that.dayOfWeek,_that.periodNumber,_that.startTime,_that.endTime,_that.room,_that.periodType,_that.breakLabel,_that.classRef,_that.sectionRef,_that.subject,_that.staff);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'timetable_entry_id')  String timetableEntryId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'day_of_week')  int dayOfWeek, @JsonKey(name: 'period_number')  int periodNumber, @JsonKey(name: 'start_time')  DateTime? startTime, @JsonKey(name: 'end_time')  DateTime? endTime,  String? room, @JsonKey(name: 'period_type')  String periodType, @JsonKey(name: 'break_label')  String? breakLabel, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject, @JsonKey(name: 'staff_accounts')  AcademicStaffRef? staff)?  $default,) {final _that = this;
switch (_that) {
case _AdminTimetableEntry() when $default != null:
return $default(_that.timetableEntryId,_that.classId,_that.sectionId,_that.subjectId,_that.staffId,_that.sessionId,_that.dayOfWeek,_that.periodNumber,_that.startTime,_that.endTime,_that.room,_that.periodType,_that.breakLabel,_that.classRef,_that.sectionRef,_that.subject,_that.staff);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminTimetableEntry implements AdminTimetableEntry {
  const _AdminTimetableEntry({@JsonKey(name: 'timetable_entry_id') required this.timetableEntryId, @JsonKey(name: 'class_id') this.classId, @JsonKey(name: 'section_id') this.sectionId, @JsonKey(name: 'subject_id') this.subjectId, @JsonKey(name: 'staff_id') this.staffId, @JsonKey(name: 'session_id') this.sessionId, @JsonKey(name: 'day_of_week') required this.dayOfWeek, @JsonKey(name: 'period_number') required this.periodNumber, @JsonKey(name: 'start_time') this.startTime, @JsonKey(name: 'end_time') this.endTime, this.room, @JsonKey(name: 'period_type') this.periodType = 'CLASS', @JsonKey(name: 'break_label') this.breakLabel, @JsonKey(name: 'classes') this.classRef, @JsonKey(name: 'sections') this.sectionRef, @JsonKey(name: 'academic_subjects') this.subject, @JsonKey(name: 'staff_accounts') this.staff});
  factory _AdminTimetableEntry.fromJson(Map<String, dynamic> json) => _$AdminTimetableEntryFromJson(json);

@override@JsonKey(name: 'timetable_entry_id') final  String timetableEntryId;
@override@JsonKey(name: 'class_id') final  String? classId;
@override@JsonKey(name: 'section_id') final  String? sectionId;
@override@JsonKey(name: 'subject_id') final  String? subjectId;
@override@JsonKey(name: 'staff_id') final  String? staffId;
@override@JsonKey(name: 'session_id') final  String? sessionId;
@override@JsonKey(name: 'day_of_week') final  int dayOfWeek;
@override@JsonKey(name: 'period_number') final  int periodNumber;
@override@JsonKey(name: 'start_time') final  DateTime? startTime;
@override@JsonKey(name: 'end_time') final  DateTime? endTime;
@override final  String? room;
@override@JsonKey(name: 'period_type') final  String periodType;
@override@JsonKey(name: 'break_label') final  String? breakLabel;
@override@JsonKey(name: 'classes') final  ClassRef? classRef;
@override@JsonKey(name: 'sections') final  SectionRef? sectionRef;
@override@JsonKey(name: 'academic_subjects') final  SubjectRef? subject;
@override@JsonKey(name: 'staff_accounts') final  AcademicStaffRef? staff;

/// Create a copy of AdminTimetableEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminTimetableEntryCopyWith<_AdminTimetableEntry> get copyWith => __$AdminTimetableEntryCopyWithImpl<_AdminTimetableEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminTimetableEntryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminTimetableEntry&&(identical(other.timetableEntryId, timetableEntryId) || other.timetableEntryId == timetableEntryId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.dayOfWeek, dayOfWeek) || other.dayOfWeek == dayOfWeek)&&(identical(other.periodNumber, periodNumber) || other.periodNumber == periodNumber)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.room, room) || other.room == room)&&(identical(other.periodType, periodType) || other.periodType == periodType)&&(identical(other.breakLabel, breakLabel) || other.breakLabel == breakLabel)&&(identical(other.classRef, classRef) || other.classRef == classRef)&&(identical(other.sectionRef, sectionRef) || other.sectionRef == sectionRef)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.staff, staff) || other.staff == staff));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,timetableEntryId,classId,sectionId,subjectId,staffId,sessionId,dayOfWeek,periodNumber,startTime,endTime,room,periodType,breakLabel,classRef,sectionRef,subject,staff);
}

@override
String toString() {
    return 'AdminTimetableEntry(timetableEntryId: $timetableEntryId, classId: $classId, sectionId: $sectionId, subjectId: $subjectId, staffId: $staffId, sessionId: $sessionId, dayOfWeek: $dayOfWeek, periodNumber: $periodNumber, startTime: $startTime, endTime: $endTime, room: $room, periodType: $periodType, breakLabel: $breakLabel, classRef: $classRef, sectionRef: $sectionRef, subject: $subject, staff: $staff)';
}


}

/// @nodoc
abstract mixin class _$AdminTimetableEntryCopyWith<$Res> implements $AdminTimetableEntryCopyWith<$Res> {
  factory _$AdminTimetableEntryCopyWith(_AdminTimetableEntry value, $Res Function(_AdminTimetableEntry) _then) = __$AdminTimetableEntryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'timetable_entry_id') String timetableEntryId,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'subject_id') String? subjectId,@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'day_of_week') int dayOfWeek,@JsonKey(name: 'period_number') int periodNumber,@JsonKey(name: 'start_time') DateTime? startTime,@JsonKey(name: 'end_time') DateTime? endTime, String? room,@JsonKey(name: 'period_type') String periodType,@JsonKey(name: 'break_label') String? breakLabel,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject,@JsonKey(name: 'staff_accounts') AcademicStaffRef? staff
});


@override $ClassRefCopyWith<$Res>? get classRef;@override $SectionRefCopyWith<$Res>? get sectionRef;@override $SubjectRefCopyWith<$Res>? get subject;@override $AcademicStaffRefCopyWith<$Res>? get staff;

}
/// @nodoc
class __$AdminTimetableEntryCopyWithImpl<$Res>
    implements _$AdminTimetableEntryCopyWith<$Res> {
  __$AdminTimetableEntryCopyWithImpl(this._self, this._then);

  final _AdminTimetableEntry _self;
  final $Res Function(_AdminTimetableEntry) _then;

/// Create a copy of AdminTimetableEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timetableEntryId = null,Object? classId = freezed,Object? sectionId = freezed,Object? subjectId = freezed,Object? staffId = freezed,Object? sessionId = freezed,Object? dayOfWeek = null,Object? periodNumber = null,Object? startTime = freezed,Object? endTime = freezed,Object? room = freezed,Object? periodType = null,Object? breakLabel = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,Object? staff = freezed,}) {
  return _then(_AdminTimetableEntry(
timetableEntryId: null == timetableEntryId ? _self.timetableEntryId : timetableEntryId // ignore: cast_nullable_to_non_nullable
as String,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String?,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,dayOfWeek: null == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as int,periodNumber: null == periodNumber ? _self.periodNumber : periodNumber // ignore: cast_nullable_to_non_nullable
as int,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String?,periodType: null == periodType ? _self.periodType : periodType // ignore: cast_nullable_to_non_nullable
as String,breakLabel: freezed == breakLabel ? _self.breakLabel : breakLabel // ignore: cast_nullable_to_non_nullable
as String?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,staff: freezed == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as AcademicStaffRef?,
  ));
}

/// Create a copy of AdminTimetableEntry
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
}/// Create a copy of AdminTimetableEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get sectionRef {
    if (_self.sectionRef == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.sectionRef!, (value) {
    return _then(_self.copyWith(sectionRef: value));
  });
}/// Create a copy of AdminTimetableEntry
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
}/// Create a copy of AdminTimetableEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcademicStaffRefCopyWith<$Res>? get staff {
    if (_self.staff == null) {
    return null;
  }

  return $AcademicStaffRefCopyWith<$Res>(_self.staff!, (value) {
    return _then(_self.copyWith(staff: value));
  });
}
}


/// @nodoc
mixin _$TimetableSettings {

@JsonKey(name: 'working_days') List<int> get workingDays;
/// Create a copy of TimetableSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimetableSettingsCopyWith<TimetableSettings> get copyWith => _$TimetableSettingsCopyWithImpl<TimetableSettings>(this as TimetableSettings, _$identity);

  /// Serializes this TimetableSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TimetableSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimetableSettings&&const DeepCollectionEquality().equals(other.workingDays, _this.workingDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TimetableSettings;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.workingDays));
}

@override
String toString() {
  final _this = this as TimetableSettings;
  return 'TimetableSettings(workingDays: ${_this.workingDays})';
}


}

/// @nodoc
abstract mixin class $TimetableSettingsCopyWith<$Res>  {
  factory $TimetableSettingsCopyWith(TimetableSettings value, $Res Function(TimetableSettings) _then) = _$TimetableSettingsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'working_days') List<int> workingDays
});




}
/// @nodoc
class _$TimetableSettingsCopyWithImpl<$Res>
    implements $TimetableSettingsCopyWith<$Res> {
  _$TimetableSettingsCopyWithImpl(this._self, this._then);

  final TimetableSettings _self;
  final $Res Function(TimetableSettings) _then;

/// Create a copy of TimetableSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? workingDays = null,}) {
  return _then(TimetableSettings(
workingDays: null == workingDays ? _self.workingDays : workingDays // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [TimetableSettings].
extension TimetableSettingsPatterns on TimetableSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimetableSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimetableSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimetableSettings value)  $default,){
final _that = this;
switch (_that) {
case _TimetableSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimetableSettings value)?  $default,){
final _that = this;
switch (_that) {
case _TimetableSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'working_days')  List<int> workingDays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimetableSettings() when $default != null:
return $default(_that.workingDays);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'working_days')  List<int> workingDays)  $default,) {final _that = this;
switch (_that) {
case _TimetableSettings():
return $default(_that.workingDays);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'working_days')  List<int> workingDays)?  $default,) {final _that = this;
switch (_that) {
case _TimetableSettings() when $default != null:
return $default(_that.workingDays);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TimetableSettings implements TimetableSettings {
  const _TimetableSettings({@JsonKey(name: 'working_days')  List<int> workingDays = const <int>[1, 2, 3, 4, 5, 6]}): _workingDays = workingDays;
  factory _TimetableSettings.fromJson(Map<String, dynamic> json) => _$TimetableSettingsFromJson(json);

 final  List<int> _workingDays;
@override@JsonKey(name: 'working_days') List<int> get workingDays {
  if (_workingDays is EqualUnmodifiableListView) return _workingDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_workingDays);
}


/// Create a copy of TimetableSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimetableSettingsCopyWith<_TimetableSettings> get copyWith => __$TimetableSettingsCopyWithImpl<_TimetableSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimetableSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimetableSettings&&const DeepCollectionEquality().equals(other.workingDays, _workingDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_workingDays));
}

@override
String toString() {
    return 'TimetableSettings(workingDays: $workingDays)';
}


}

/// @nodoc
abstract mixin class _$TimetableSettingsCopyWith<$Res> implements $TimetableSettingsCopyWith<$Res> {
  factory _$TimetableSettingsCopyWith(_TimetableSettings value, $Res Function(_TimetableSettings) _then) = __$TimetableSettingsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'working_days') List<int> workingDays
});




}
/// @nodoc
class __$TimetableSettingsCopyWithImpl<$Res>
    implements _$TimetableSettingsCopyWith<$Res> {
  __$TimetableSettingsCopyWithImpl(this._self, this._then);

  final _TimetableSettings _self;
  final $Res Function(_TimetableSettings) _then;

/// Create a copy of TimetableSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? workingDays = null,}) {
  return _then(_TimetableSettings(
workingDays: null == workingDays ? _self._workingDays : workingDays // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}


/// @nodoc
mixin _$LessonPlanAuthor {

@JsonKey(name: 'user_id') String? get userId; String? get username;
/// Create a copy of LessonPlanAuthor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonPlanAuthorCopyWith<LessonPlanAuthor> get copyWith => _$LessonPlanAuthorCopyWithImpl<LessonPlanAuthor>(this as LessonPlanAuthor, _$identity);

  /// Serializes this LessonPlanAuthor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LessonPlanAuthor;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonPlanAuthor&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.username, _this.username) || other.username == _this.username));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LessonPlanAuthor;
  return Object.hash(runtimeType,_this.userId,_this.username);
}

@override
String toString() {
  final _this = this as LessonPlanAuthor;
  return 'LessonPlanAuthor(userId: ${_this.userId}, username: ${_this.username})';
}


}

/// @nodoc
abstract mixin class $LessonPlanAuthorCopyWith<$Res>  {
  factory $LessonPlanAuthorCopyWith(LessonPlanAuthor value, $Res Function(LessonPlanAuthor) _then) = _$LessonPlanAuthorCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String? userId, String? username
});




}
/// @nodoc
class _$LessonPlanAuthorCopyWithImpl<$Res>
    implements $LessonPlanAuthorCopyWith<$Res> {
  _$LessonPlanAuthorCopyWithImpl(this._self, this._then);

  final LessonPlanAuthor _self;
  final $Res Function(LessonPlanAuthor) _then;

/// Create a copy of LessonPlanAuthor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? username = freezed,}) {
  return _then(LessonPlanAuthor(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LessonPlanAuthor].
extension LessonPlanAuthorPatterns on LessonPlanAuthor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonPlanAuthor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonPlanAuthor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonPlanAuthor value)  $default,){
final _that = this;
switch (_that) {
case _LessonPlanAuthor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonPlanAuthor value)?  $default,){
final _that = this;
switch (_that) {
case _LessonPlanAuthor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String? userId,  String? username)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonPlanAuthor() when $default != null:
return $default(_that.userId,_that.username);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String? userId,  String? username)  $default,) {final _that = this;
switch (_that) {
case _LessonPlanAuthor():
return $default(_that.userId,_that.username);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String? userId,  String? username)?  $default,) {final _that = this;
switch (_that) {
case _LessonPlanAuthor() when $default != null:
return $default(_that.userId,_that.username);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonPlanAuthor implements LessonPlanAuthor {
  const _LessonPlanAuthor({@JsonKey(name: 'user_id') this.userId, this.username});
  factory _LessonPlanAuthor.fromJson(Map<String, dynamic> json) => _$LessonPlanAuthorFromJson(json);

@override@JsonKey(name: 'user_id') final  String? userId;
@override final  String? username;

/// Create a copy of LessonPlanAuthor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonPlanAuthorCopyWith<_LessonPlanAuthor> get copyWith => __$LessonPlanAuthorCopyWithImpl<_LessonPlanAuthor>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonPlanAuthorToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonPlanAuthor&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,userId,username);
}

@override
String toString() {
    return 'LessonPlanAuthor(userId: $userId, username: $username)';
}


}

/// @nodoc
abstract mixin class _$LessonPlanAuthorCopyWith<$Res> implements $LessonPlanAuthorCopyWith<$Res> {
  factory _$LessonPlanAuthorCopyWith(_LessonPlanAuthor value, $Res Function(_LessonPlanAuthor) _then) = __$LessonPlanAuthorCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String? userId, String? username
});




}
/// @nodoc
class __$LessonPlanAuthorCopyWithImpl<$Res>
    implements _$LessonPlanAuthorCopyWith<$Res> {
  __$LessonPlanAuthorCopyWithImpl(this._self, this._then);

  final _LessonPlanAuthor _self;
  final $Res Function(_LessonPlanAuthor) _then;

/// Create a copy of LessonPlanAuthor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? username = freezed,}) {
  return _then(_LessonPlanAuthor(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdminLessonPlan {

@JsonKey(name: 'lesson_plan_id') String get lessonPlanId;@JsonKey(name: 'class_id') String? get classId;@JsonKey(name: 'section_id') String? get sectionId;@JsonKey(name: 'subject_id') String? get subjectId;@JsonKey(name: 'session_id') String? get sessionId; String get topic; String? get description;@JsonKey(name: 'planned_date') DateTime? get plannedDate;@JsonKey(name: 'attachment_url') String? get attachmentUrl; String? get status;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'classes') ClassRef? get classRef;@JsonKey(name: 'sections') SectionRef? get sectionRef;@JsonKey(name: 'academic_subjects') SubjectRef? get subject;@JsonKey(name: 'users') LessonPlanAuthor? get author;
/// Create a copy of AdminLessonPlan
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminLessonPlanCopyWith<AdminLessonPlan> get copyWith => _$AdminLessonPlanCopyWithImpl<AdminLessonPlan>(this as AdminLessonPlan, _$identity);

  /// Serializes this AdminLessonPlan to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminLessonPlan;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminLessonPlan&&(identical(other.lessonPlanId, _this.lessonPlanId) || other.lessonPlanId == _this.lessonPlanId)&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId)&&(identical(other.subjectId, _this.subjectId) || other.subjectId == _this.subjectId)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.plannedDate, _this.plannedDate) || other.plannedDate == _this.plannedDate)&&(identical(other.attachmentUrl, _this.attachmentUrl) || other.attachmentUrl == _this.attachmentUrl)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.classRef, _this.classRef) || other.classRef == _this.classRef)&&(identical(other.sectionRef, _this.sectionRef) || other.sectionRef == _this.sectionRef)&&(identical(other.subject, _this.subject) || other.subject == _this.subject)&&(identical(other.author, _this.author) || other.author == _this.author));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminLessonPlan;
  return Object.hash(runtimeType,_this.lessonPlanId,_this.classId,_this.sectionId,_this.subjectId,_this.sessionId,_this.topic,_this.description,_this.plannedDate,_this.attachmentUrl,_this.status,_this.createdAt,_this.classRef,_this.sectionRef,_this.subject,_this.author);
}

@override
String toString() {
  final _this = this as AdminLessonPlan;
  return 'AdminLessonPlan(lessonPlanId: ${_this.lessonPlanId}, classId: ${_this.classId}, sectionId: ${_this.sectionId}, subjectId: ${_this.subjectId}, sessionId: ${_this.sessionId}, topic: ${_this.topic}, description: ${_this.description}, plannedDate: ${_this.plannedDate}, attachmentUrl: ${_this.attachmentUrl}, status: ${_this.status}, createdAt: ${_this.createdAt}, classRef: ${_this.classRef}, sectionRef: ${_this.sectionRef}, subject: ${_this.subject}, author: ${_this.author})';
}


}

/// @nodoc
abstract mixin class $AdminLessonPlanCopyWith<$Res>  {
  factory $AdminLessonPlanCopyWith(AdminLessonPlan value, $Res Function(AdminLessonPlan) _then) = _$AdminLessonPlanCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'lesson_plan_id') String lessonPlanId,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'subject_id') String? subjectId,@JsonKey(name: 'session_id') String? sessionId, String topic, String? description,@JsonKey(name: 'planned_date') DateTime? plannedDate,@JsonKey(name: 'attachment_url') String? attachmentUrl, String? status,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject,@JsonKey(name: 'users') LessonPlanAuthor? author
});


$ClassRefCopyWith<$Res>? get classRef;$SectionRefCopyWith<$Res>? get sectionRef;$SubjectRefCopyWith<$Res>? get subject;$LessonPlanAuthorCopyWith<$Res>? get author;

}
/// @nodoc
class _$AdminLessonPlanCopyWithImpl<$Res>
    implements $AdminLessonPlanCopyWith<$Res> {
  _$AdminLessonPlanCopyWithImpl(this._self, this._then);

  final AdminLessonPlan _self;
  final $Res Function(AdminLessonPlan) _then;

/// Create a copy of AdminLessonPlan
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lessonPlanId = null,Object? classId = freezed,Object? sectionId = freezed,Object? subjectId = freezed,Object? sessionId = freezed,Object? topic = null,Object? description = freezed,Object? plannedDate = freezed,Object? attachmentUrl = freezed,Object? status = freezed,Object? createdAt = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,Object? author = freezed,}) {
  return _then(AdminLessonPlan(
lessonPlanId: null == lessonPlanId ? _self.lessonPlanId : lessonPlanId // ignore: cast_nullable_to_non_nullable
as String,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,plannedDate: freezed == plannedDate ? _self.plannedDate : plannedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as LessonPlanAuthor?,
  ));
}
/// Create a copy of AdminLessonPlan
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
}/// Create a copy of AdminLessonPlan
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get sectionRef {
    if (_self.sectionRef == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.sectionRef!, (value) {
    return _then(_self.copyWith(sectionRef: value));
  });
}/// Create a copy of AdminLessonPlan
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
}/// Create a copy of AdminLessonPlan
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonPlanAuthorCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $LessonPlanAuthorCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminLessonPlan].
extension AdminLessonPlanPatterns on AdminLessonPlan {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminLessonPlan value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminLessonPlan() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminLessonPlan value)  $default,){
final _that = this;
switch (_that) {
case _AdminLessonPlan():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminLessonPlan value)?  $default,){
final _that = this;
switch (_that) {
case _AdminLessonPlan() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'lesson_plan_id')  String lessonPlanId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'session_id')  String? sessionId,  String topic,  String? description, @JsonKey(name: 'planned_date')  DateTime? plannedDate, @JsonKey(name: 'attachment_url')  String? attachmentUrl,  String? status, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject, @JsonKey(name: 'users')  LessonPlanAuthor? author)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminLessonPlan() when $default != null:
return $default(_that.lessonPlanId,_that.classId,_that.sectionId,_that.subjectId,_that.sessionId,_that.topic,_that.description,_that.plannedDate,_that.attachmentUrl,_that.status,_that.createdAt,_that.classRef,_that.sectionRef,_that.subject,_that.author);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'lesson_plan_id')  String lessonPlanId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'session_id')  String? sessionId,  String topic,  String? description, @JsonKey(name: 'planned_date')  DateTime? plannedDate, @JsonKey(name: 'attachment_url')  String? attachmentUrl,  String? status, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject, @JsonKey(name: 'users')  LessonPlanAuthor? author)  $default,) {final _that = this;
switch (_that) {
case _AdminLessonPlan():
return $default(_that.lessonPlanId,_that.classId,_that.sectionId,_that.subjectId,_that.sessionId,_that.topic,_that.description,_that.plannedDate,_that.attachmentUrl,_that.status,_that.createdAt,_that.classRef,_that.sectionRef,_that.subject,_that.author);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'lesson_plan_id')  String lessonPlanId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'session_id')  String? sessionId,  String topic,  String? description, @JsonKey(name: 'planned_date')  DateTime? plannedDate, @JsonKey(name: 'attachment_url')  String? attachmentUrl,  String? status, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject, @JsonKey(name: 'users')  LessonPlanAuthor? author)?  $default,) {final _that = this;
switch (_that) {
case _AdminLessonPlan() when $default != null:
return $default(_that.lessonPlanId,_that.classId,_that.sectionId,_that.subjectId,_that.sessionId,_that.topic,_that.description,_that.plannedDate,_that.attachmentUrl,_that.status,_that.createdAt,_that.classRef,_that.sectionRef,_that.subject,_that.author);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminLessonPlan implements AdminLessonPlan {
  const _AdminLessonPlan({@JsonKey(name: 'lesson_plan_id') required this.lessonPlanId, @JsonKey(name: 'class_id') this.classId, @JsonKey(name: 'section_id') this.sectionId, @JsonKey(name: 'subject_id') this.subjectId, @JsonKey(name: 'session_id') this.sessionId, required this.topic, this.description, @JsonKey(name: 'planned_date') this.plannedDate, @JsonKey(name: 'attachment_url') this.attachmentUrl, this.status, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'classes') this.classRef, @JsonKey(name: 'sections') this.sectionRef, @JsonKey(name: 'academic_subjects') this.subject, @JsonKey(name: 'users') this.author});
  factory _AdminLessonPlan.fromJson(Map<String, dynamic> json) => _$AdminLessonPlanFromJson(json);

@override@JsonKey(name: 'lesson_plan_id') final  String lessonPlanId;
@override@JsonKey(name: 'class_id') final  String? classId;
@override@JsonKey(name: 'section_id') final  String? sectionId;
@override@JsonKey(name: 'subject_id') final  String? subjectId;
@override@JsonKey(name: 'session_id') final  String? sessionId;
@override final  String topic;
@override final  String? description;
@override@JsonKey(name: 'planned_date') final  DateTime? plannedDate;
@override@JsonKey(name: 'attachment_url') final  String? attachmentUrl;
@override final  String? status;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'classes') final  ClassRef? classRef;
@override@JsonKey(name: 'sections') final  SectionRef? sectionRef;
@override@JsonKey(name: 'academic_subjects') final  SubjectRef? subject;
@override@JsonKey(name: 'users') final  LessonPlanAuthor? author;

/// Create a copy of AdminLessonPlan
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminLessonPlanCopyWith<_AdminLessonPlan> get copyWith => __$AdminLessonPlanCopyWithImpl<_AdminLessonPlan>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminLessonPlanToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminLessonPlan&&(identical(other.lessonPlanId, lessonPlanId) || other.lessonPlanId == lessonPlanId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.description, description) || other.description == description)&&(identical(other.plannedDate, plannedDate) || other.plannedDate == plannedDate)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.classRef, classRef) || other.classRef == classRef)&&(identical(other.sectionRef, sectionRef) || other.sectionRef == sectionRef)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.author, author) || other.author == author));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,lessonPlanId,classId,sectionId,subjectId,sessionId,topic,description,plannedDate,attachmentUrl,status,createdAt,classRef,sectionRef,subject,author);
}

@override
String toString() {
    return 'AdminLessonPlan(lessonPlanId: $lessonPlanId, classId: $classId, sectionId: $sectionId, subjectId: $subjectId, sessionId: $sessionId, topic: $topic, description: $description, plannedDate: $plannedDate, attachmentUrl: $attachmentUrl, status: $status, createdAt: $createdAt, classRef: $classRef, sectionRef: $sectionRef, subject: $subject, author: $author)';
}


}

/// @nodoc
abstract mixin class _$AdminLessonPlanCopyWith<$Res> implements $AdminLessonPlanCopyWith<$Res> {
  factory _$AdminLessonPlanCopyWith(_AdminLessonPlan value, $Res Function(_AdminLessonPlan) _then) = __$AdminLessonPlanCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'lesson_plan_id') String lessonPlanId,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'subject_id') String? subjectId,@JsonKey(name: 'session_id') String? sessionId, String topic, String? description,@JsonKey(name: 'planned_date') DateTime? plannedDate,@JsonKey(name: 'attachment_url') String? attachmentUrl, String? status,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject,@JsonKey(name: 'users') LessonPlanAuthor? author
});


@override $ClassRefCopyWith<$Res>? get classRef;@override $SectionRefCopyWith<$Res>? get sectionRef;@override $SubjectRefCopyWith<$Res>? get subject;@override $LessonPlanAuthorCopyWith<$Res>? get author;

}
/// @nodoc
class __$AdminLessonPlanCopyWithImpl<$Res>
    implements _$AdminLessonPlanCopyWith<$Res> {
  __$AdminLessonPlanCopyWithImpl(this._self, this._then);

  final _AdminLessonPlan _self;
  final $Res Function(_AdminLessonPlan) _then;

/// Create a copy of AdminLessonPlan
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lessonPlanId = null,Object? classId = freezed,Object? sectionId = freezed,Object? subjectId = freezed,Object? sessionId = freezed,Object? topic = null,Object? description = freezed,Object? plannedDate = freezed,Object? attachmentUrl = freezed,Object? status = freezed,Object? createdAt = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,Object? author = freezed,}) {
  return _then(_AdminLessonPlan(
lessonPlanId: null == lessonPlanId ? _self.lessonPlanId : lessonPlanId // ignore: cast_nullable_to_non_nullable
as String,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,plannedDate: freezed == plannedDate ? _self.plannedDate : plannedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as LessonPlanAuthor?,
  ));
}

/// Create a copy of AdminLessonPlan
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
}/// Create a copy of AdminLessonPlan
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get sectionRef {
    if (_self.sectionRef == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.sectionRef!, (value) {
    return _then(_self.copyWith(sectionRef: value));
  });
}/// Create a copy of AdminLessonPlan
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
}/// Create a copy of AdminLessonPlan
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonPlanAuthorCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $LessonPlanAuthorCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}


/// @nodoc
mixin _$AdminHomeworkRecord {

@JsonKey(name: 'homework_id') String get homeworkId; String? get type;@JsonKey(name: 'class_id') String? get classId;@JsonKey(name: 'section_id') String? get sectionId;@JsonKey(name: 'subject_id') String? get subjectId;@JsonKey(name: 'session_id') String? get sessionId;@JsonKey(name: 'assigned_by') String? get assignedBy; String get title; String? get description;@JsonKey(name: 'attachment_url') String? get attachmentUrl;@JsonKey(name: 'assigned_date') DateTime? get assignedDate;@JsonKey(name: 'due_date') DateTime? get dueDate;@JsonKey(name: 'classes') ClassRef? get classRef;@JsonKey(name: 'sections') SectionRef? get sectionRef;@JsonKey(name: 'academic_subjects') SubjectRef? get subject;@JsonKey(name: 'users') CommentAuthor? get assignedByUser; List<SubmissionStatusRef> get submissions;
/// Create a copy of AdminHomeworkRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminHomeworkRecordCopyWith<AdminHomeworkRecord> get copyWith => _$AdminHomeworkRecordCopyWithImpl<AdminHomeworkRecord>(this as AdminHomeworkRecord, _$identity);

  /// Serializes this AdminHomeworkRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminHomeworkRecord;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminHomeworkRecord&&(identical(other.homeworkId, _this.homeworkId) || other.homeworkId == _this.homeworkId)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId)&&(identical(other.subjectId, _this.subjectId) || other.subjectId == _this.subjectId)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.assignedBy, _this.assignedBy) || other.assignedBy == _this.assignedBy)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.attachmentUrl, _this.attachmentUrl) || other.attachmentUrl == _this.attachmentUrl)&&(identical(other.assignedDate, _this.assignedDate) || other.assignedDate == _this.assignedDate)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.classRef, _this.classRef) || other.classRef == _this.classRef)&&(identical(other.sectionRef, _this.sectionRef) || other.sectionRef == _this.sectionRef)&&(identical(other.subject, _this.subject) || other.subject == _this.subject)&&(identical(other.assignedByUser, _this.assignedByUser) || other.assignedByUser == _this.assignedByUser)&&const DeepCollectionEquality().equals(other.submissions, _this.submissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminHomeworkRecord;
  return Object.hash(runtimeType,_this.homeworkId,_this.type,_this.classId,_this.sectionId,_this.subjectId,_this.sessionId,_this.assignedBy,_this.title,_this.description,_this.attachmentUrl,_this.assignedDate,_this.dueDate,_this.classRef,_this.sectionRef,_this.subject,_this.assignedByUser,const DeepCollectionEquality().hash(_this.submissions));
}

@override
String toString() {
  final _this = this as AdminHomeworkRecord;
  return 'AdminHomeworkRecord(homeworkId: ${_this.homeworkId}, type: ${_this.type}, classId: ${_this.classId}, sectionId: ${_this.sectionId}, subjectId: ${_this.subjectId}, sessionId: ${_this.sessionId}, assignedBy: ${_this.assignedBy}, title: ${_this.title}, description: ${_this.description}, attachmentUrl: ${_this.attachmentUrl}, assignedDate: ${_this.assignedDate}, dueDate: ${_this.dueDate}, classRef: ${_this.classRef}, sectionRef: ${_this.sectionRef}, subject: ${_this.subject}, assignedByUser: ${_this.assignedByUser}, submissions: ${_this.submissions})';
}


}

/// @nodoc
abstract mixin class $AdminHomeworkRecordCopyWith<$Res>  {
  factory $AdminHomeworkRecordCopyWith(AdminHomeworkRecord value, $Res Function(AdminHomeworkRecord) _then) = _$AdminHomeworkRecordCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'homework_id') String homeworkId, String? type,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'subject_id') String? subjectId,@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'assigned_by') String? assignedBy, String title, String? description,@JsonKey(name: 'attachment_url') String? attachmentUrl,@JsonKey(name: 'assigned_date') DateTime? assignedDate,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject,@JsonKey(name: 'users') CommentAuthor? assignedByUser, List<SubmissionStatusRef> submissions
});


$ClassRefCopyWith<$Res>? get classRef;$SectionRefCopyWith<$Res>? get sectionRef;$SubjectRefCopyWith<$Res>? get subject;$CommentAuthorCopyWith<$Res>? get assignedByUser;

}
/// @nodoc
class _$AdminHomeworkRecordCopyWithImpl<$Res>
    implements $AdminHomeworkRecordCopyWith<$Res> {
  _$AdminHomeworkRecordCopyWithImpl(this._self, this._then);

  final AdminHomeworkRecord _self;
  final $Res Function(AdminHomeworkRecord) _then;

/// Create a copy of AdminHomeworkRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? homeworkId = null,Object? type = freezed,Object? classId = freezed,Object? sectionId = freezed,Object? subjectId = freezed,Object? sessionId = freezed,Object? assignedBy = freezed,Object? title = null,Object? description = freezed,Object? attachmentUrl = freezed,Object? assignedDate = freezed,Object? dueDate = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,Object? assignedByUser = freezed,Object? submissions = null,}) {
  return _then(AdminHomeworkRecord(
homeworkId: null == homeworkId ? _self.homeworkId : homeworkId // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,assignedBy: freezed == assignedBy ? _self.assignedBy : assignedBy // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,assignedDate: freezed == assignedDate ? _self.assignedDate : assignedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,assignedByUser: freezed == assignedByUser ? _self.assignedByUser : assignedByUser // ignore: cast_nullable_to_non_nullable
as CommentAuthor?,submissions: null == submissions ? _self.submissions : submissions // ignore: cast_nullable_to_non_nullable
as List<SubmissionStatusRef>,
  ));
}
/// Create a copy of AdminHomeworkRecord
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
}/// Create a copy of AdminHomeworkRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get sectionRef {
    if (_self.sectionRef == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.sectionRef!, (value) {
    return _then(_self.copyWith(sectionRef: value));
  });
}/// Create a copy of AdminHomeworkRecord
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
}/// Create a copy of AdminHomeworkRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentAuthorCopyWith<$Res>? get assignedByUser {
    if (_self.assignedByUser == null) {
    return null;
  }

  return $CommentAuthorCopyWith<$Res>(_self.assignedByUser!, (value) {
    return _then(_self.copyWith(assignedByUser: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminHomeworkRecord].
extension AdminHomeworkRecordPatterns on AdminHomeworkRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminHomeworkRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminHomeworkRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminHomeworkRecord value)  $default,){
final _that = this;
switch (_that) {
case _AdminHomeworkRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminHomeworkRecord value)?  $default,){
final _that = this;
switch (_that) {
case _AdminHomeworkRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'homework_id')  String homeworkId,  String? type, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'assigned_by')  String? assignedBy,  String title,  String? description, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'assigned_date')  DateTime? assignedDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject, @JsonKey(name: 'users')  CommentAuthor? assignedByUser,  List<SubmissionStatusRef> submissions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminHomeworkRecord() when $default != null:
return $default(_that.homeworkId,_that.type,_that.classId,_that.sectionId,_that.subjectId,_that.sessionId,_that.assignedBy,_that.title,_that.description,_that.attachmentUrl,_that.assignedDate,_that.dueDate,_that.classRef,_that.sectionRef,_that.subject,_that.assignedByUser,_that.submissions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'homework_id')  String homeworkId,  String? type, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'assigned_by')  String? assignedBy,  String title,  String? description, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'assigned_date')  DateTime? assignedDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject, @JsonKey(name: 'users')  CommentAuthor? assignedByUser,  List<SubmissionStatusRef> submissions)  $default,) {final _that = this;
switch (_that) {
case _AdminHomeworkRecord():
return $default(_that.homeworkId,_that.type,_that.classId,_that.sectionId,_that.subjectId,_that.sessionId,_that.assignedBy,_that.title,_that.description,_that.attachmentUrl,_that.assignedDate,_that.dueDate,_that.classRef,_that.sectionRef,_that.subject,_that.assignedByUser,_that.submissions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'homework_id')  String homeworkId,  String? type, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'assigned_by')  String? assignedBy,  String title,  String? description, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'assigned_date')  DateTime? assignedDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject, @JsonKey(name: 'users')  CommentAuthor? assignedByUser,  List<SubmissionStatusRef> submissions)?  $default,) {final _that = this;
switch (_that) {
case _AdminHomeworkRecord() when $default != null:
return $default(_that.homeworkId,_that.type,_that.classId,_that.sectionId,_that.subjectId,_that.sessionId,_that.assignedBy,_that.title,_that.description,_that.attachmentUrl,_that.assignedDate,_that.dueDate,_that.classRef,_that.sectionRef,_that.subject,_that.assignedByUser,_that.submissions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminHomeworkRecord implements AdminHomeworkRecord {
  const _AdminHomeworkRecord({@JsonKey(name: 'homework_id') required this.homeworkId, this.type, @JsonKey(name: 'class_id') this.classId, @JsonKey(name: 'section_id') this.sectionId, @JsonKey(name: 'subject_id') this.subjectId, @JsonKey(name: 'session_id') this.sessionId, @JsonKey(name: 'assigned_by') this.assignedBy, required this.title, this.description, @JsonKey(name: 'attachment_url') this.attachmentUrl, @JsonKey(name: 'assigned_date') this.assignedDate, @JsonKey(name: 'due_date') this.dueDate, @JsonKey(name: 'classes') this.classRef, @JsonKey(name: 'sections') this.sectionRef, @JsonKey(name: 'academic_subjects') this.subject, @JsonKey(name: 'users') this.assignedByUser,  List<SubmissionStatusRef> submissions = const <SubmissionStatusRef>[]}): _submissions = submissions;
  factory _AdminHomeworkRecord.fromJson(Map<String, dynamic> json) => _$AdminHomeworkRecordFromJson(json);

@override@JsonKey(name: 'homework_id') final  String homeworkId;
@override final  String? type;
@override@JsonKey(name: 'class_id') final  String? classId;
@override@JsonKey(name: 'section_id') final  String? sectionId;
@override@JsonKey(name: 'subject_id') final  String? subjectId;
@override@JsonKey(name: 'session_id') final  String? sessionId;
@override@JsonKey(name: 'assigned_by') final  String? assignedBy;
@override final  String title;
@override final  String? description;
@override@JsonKey(name: 'attachment_url') final  String? attachmentUrl;
@override@JsonKey(name: 'assigned_date') final  DateTime? assignedDate;
@override@JsonKey(name: 'due_date') final  DateTime? dueDate;
@override@JsonKey(name: 'classes') final  ClassRef? classRef;
@override@JsonKey(name: 'sections') final  SectionRef? sectionRef;
@override@JsonKey(name: 'academic_subjects') final  SubjectRef? subject;
@override@JsonKey(name: 'users') final  CommentAuthor? assignedByUser;
 final  List<SubmissionStatusRef> _submissions;
@override@JsonKey() List<SubmissionStatusRef> get submissions {
  if (_submissions is EqualUnmodifiableListView) return _submissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_submissions);
}


/// Create a copy of AdminHomeworkRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminHomeworkRecordCopyWith<_AdminHomeworkRecord> get copyWith => __$AdminHomeworkRecordCopyWithImpl<_AdminHomeworkRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminHomeworkRecordToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminHomeworkRecord&&(identical(other.homeworkId, homeworkId) || other.homeworkId == homeworkId)&&(identical(other.type, type) || other.type == type)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.assignedBy, assignedBy) || other.assignedBy == assignedBy)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.assignedDate, assignedDate) || other.assignedDate == assignedDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.classRef, classRef) || other.classRef == classRef)&&(identical(other.sectionRef, sectionRef) || other.sectionRef == sectionRef)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.assignedByUser, assignedByUser) || other.assignedByUser == assignedByUser)&&const DeepCollectionEquality().equals(other.submissions, _submissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,homeworkId,type,classId,sectionId,subjectId,sessionId,assignedBy,title,description,attachmentUrl,assignedDate,dueDate,classRef,sectionRef,subject,assignedByUser,const DeepCollectionEquality().hash(_submissions));
}

@override
String toString() {
    return 'AdminHomeworkRecord(homeworkId: $homeworkId, type: $type, classId: $classId, sectionId: $sectionId, subjectId: $subjectId, sessionId: $sessionId, assignedBy: $assignedBy, title: $title, description: $description, attachmentUrl: $attachmentUrl, assignedDate: $assignedDate, dueDate: $dueDate, classRef: $classRef, sectionRef: $sectionRef, subject: $subject, assignedByUser: $assignedByUser, submissions: $submissions)';
}


}

/// @nodoc
abstract mixin class _$AdminHomeworkRecordCopyWith<$Res> implements $AdminHomeworkRecordCopyWith<$Res> {
  factory _$AdminHomeworkRecordCopyWith(_AdminHomeworkRecord value, $Res Function(_AdminHomeworkRecord) _then) = __$AdminHomeworkRecordCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'homework_id') String homeworkId, String? type,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'subject_id') String? subjectId,@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'assigned_by') String? assignedBy, String title, String? description,@JsonKey(name: 'attachment_url') String? attachmentUrl,@JsonKey(name: 'assigned_date') DateTime? assignedDate,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject,@JsonKey(name: 'users') CommentAuthor? assignedByUser, List<SubmissionStatusRef> submissions
});


@override $ClassRefCopyWith<$Res>? get classRef;@override $SectionRefCopyWith<$Res>? get sectionRef;@override $SubjectRefCopyWith<$Res>? get subject;@override $CommentAuthorCopyWith<$Res>? get assignedByUser;

}
/// @nodoc
class __$AdminHomeworkRecordCopyWithImpl<$Res>
    implements _$AdminHomeworkRecordCopyWith<$Res> {
  __$AdminHomeworkRecordCopyWithImpl(this._self, this._then);

  final _AdminHomeworkRecord _self;
  final $Res Function(_AdminHomeworkRecord) _then;

/// Create a copy of AdminHomeworkRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? homeworkId = null,Object? type = freezed,Object? classId = freezed,Object? sectionId = freezed,Object? subjectId = freezed,Object? sessionId = freezed,Object? assignedBy = freezed,Object? title = null,Object? description = freezed,Object? attachmentUrl = freezed,Object? assignedDate = freezed,Object? dueDate = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,Object? assignedByUser = freezed,Object? submissions = null,}) {
  return _then(_AdminHomeworkRecord(
homeworkId: null == homeworkId ? _self.homeworkId : homeworkId // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,assignedBy: freezed == assignedBy ? _self.assignedBy : assignedBy // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,assignedDate: freezed == assignedDate ? _self.assignedDate : assignedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,assignedByUser: freezed == assignedByUser ? _self.assignedByUser : assignedByUser // ignore: cast_nullable_to_non_nullable
as CommentAuthor?,submissions: null == submissions ? _self._submissions : submissions // ignore: cast_nullable_to_non_nullable
as List<SubmissionStatusRef>,
  ));
}

/// Create a copy of AdminHomeworkRecord
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
}/// Create a copy of AdminHomeworkRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get sectionRef {
    if (_self.sectionRef == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.sectionRef!, (value) {
    return _then(_self.copyWith(sectionRef: value));
  });
}/// Create a copy of AdminHomeworkRecord
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
}/// Create a copy of AdminHomeworkRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentAuthorCopyWith<$Res>? get assignedByUser {
    if (_self.assignedByUser == null) {
    return null;
  }

  return $CommentAuthorCopyWith<$Res>(_self.assignedByUser!, (value) {
    return _then(_self.copyWith(assignedByUser: value));
  });
}
}

// dart format on
