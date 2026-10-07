// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_school_life_exams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminExamType {

@JsonKey(name: 'exam_type_id') String get examTypeId;@JsonKey(name: 'type_name') String get typeName;@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of AdminExamType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminExamTypeCopyWith<AdminExamType> get copyWith => _$AdminExamTypeCopyWithImpl<AdminExamType>(this as AdminExamType, _$identity);

  /// Serializes this AdminExamType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminExamType;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminExamType&&(identical(other.examTypeId, _this.examTypeId) || other.examTypeId == _this.examTypeId)&&(identical(other.typeName, _this.typeName) || other.typeName == _this.typeName)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminExamType;
  return Object.hash(runtimeType,_this.examTypeId,_this.typeName,_this.isActive);
}

@override
String toString() {
  final _this = this as AdminExamType;
  return 'AdminExamType(examTypeId: ${_this.examTypeId}, typeName: ${_this.typeName}, isActive: ${_this.isActive})';
}


}

/// @nodoc
abstract mixin class $AdminExamTypeCopyWith<$Res>  {
  factory $AdminExamTypeCopyWith(AdminExamType value, $Res Function(AdminExamType) _then) = _$AdminExamTypeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'exam_type_id') String examTypeId,@JsonKey(name: 'type_name') String typeName,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class _$AdminExamTypeCopyWithImpl<$Res>
    implements $AdminExamTypeCopyWith<$Res> {
  _$AdminExamTypeCopyWithImpl(this._self, this._then);

  final AdminExamType _self;
  final $Res Function(AdminExamType) _then;

/// Create a copy of AdminExamType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? examTypeId = null,Object? typeName = null,Object? isActive = null,}) {
  return _then(AdminExamType(
examTypeId: null == examTypeId ? _self.examTypeId : examTypeId // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminExamType].
extension AdminExamTypePatterns on AdminExamType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminExamType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminExamType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminExamType value)  $default,){
final _that = this;
switch (_that) {
case _AdminExamType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminExamType value)?  $default,){
final _that = this;
switch (_that) {
case _AdminExamType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_type_id')  String examTypeId, @JsonKey(name: 'type_name')  String typeName, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminExamType() when $default != null:
return $default(_that.examTypeId,_that.typeName,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_type_id')  String examTypeId, @JsonKey(name: 'type_name')  String typeName, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _AdminExamType():
return $default(_that.examTypeId,_that.typeName,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'exam_type_id')  String examTypeId, @JsonKey(name: 'type_name')  String typeName, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _AdminExamType() when $default != null:
return $default(_that.examTypeId,_that.typeName,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminExamType implements AdminExamType {
  const _AdminExamType({@JsonKey(name: 'exam_type_id') required this.examTypeId, @JsonKey(name: 'type_name') required this.typeName, @JsonKey(name: 'is_active') this.isActive = true});
  factory _AdminExamType.fromJson(Map<String, dynamic> json) => _$AdminExamTypeFromJson(json);

@override@JsonKey(name: 'exam_type_id') final  String examTypeId;
@override@JsonKey(name: 'type_name') final  String typeName;
@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of AdminExamType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminExamTypeCopyWith<_AdminExamType> get copyWith => __$AdminExamTypeCopyWithImpl<_AdminExamType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminExamTypeToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminExamType&&(identical(other.examTypeId, examTypeId) || other.examTypeId == examTypeId)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,examTypeId,typeName,isActive);
}

@override
String toString() {
    return 'AdminExamType(examTypeId: $examTypeId, typeName: $typeName, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$AdminExamTypeCopyWith<$Res> implements $AdminExamTypeCopyWith<$Res> {
  factory _$AdminExamTypeCopyWith(_AdminExamType value, $Res Function(_AdminExamType) _then) = __$AdminExamTypeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'exam_type_id') String examTypeId,@JsonKey(name: 'type_name') String typeName,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class __$AdminExamTypeCopyWithImpl<$Res>
    implements _$AdminExamTypeCopyWith<$Res> {
  __$AdminExamTypeCopyWithImpl(this._self, this._then);

  final _AdminExamType _self;
  final $Res Function(_AdminExamType) _then;

/// Create a copy of AdminExamType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? examTypeId = null,Object? typeName = null,Object? isActive = null,}) {
  return _then(_AdminExamType(
examTypeId: null == examTypeId ? _self.examTypeId : examTypeId // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$AdminExam {

@JsonKey(name: 'exam_id') String get examId;@JsonKey(name: 'exam_name') String get examName;@JsonKey(name: 'exam_type_id') String? get examTypeId;@JsonKey(name: 'session_id') String? get sessionId;@JsonKey(name: 'start_date') DateTime? get startDate;@JsonKey(name: 'end_date') DateTime? get endDate;@JsonKey(name: 'exam_types') ExamTypeRef? get examType;@JsonKey(name: 'academic_sessions') SessionRef? get session;
/// Create a copy of AdminExam
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminExamCopyWith<AdminExam> get copyWith => _$AdminExamCopyWithImpl<AdminExam>(this as AdminExam, _$identity);

  /// Serializes this AdminExam to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminExam;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminExam&&(identical(other.examId, _this.examId) || other.examId == _this.examId)&&(identical(other.examName, _this.examName) || other.examName == _this.examName)&&(identical(other.examTypeId, _this.examTypeId) || other.examTypeId == _this.examTypeId)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.endDate, _this.endDate) || other.endDate == _this.endDate)&&(identical(other.examType, _this.examType) || other.examType == _this.examType)&&(identical(other.session, _this.session) || other.session == _this.session));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminExam;
  return Object.hash(runtimeType,_this.examId,_this.examName,_this.examTypeId,_this.sessionId,_this.startDate,_this.endDate,_this.examType,_this.session);
}

@override
String toString() {
  final _this = this as AdminExam;
  return 'AdminExam(examId: ${_this.examId}, examName: ${_this.examName}, examTypeId: ${_this.examTypeId}, sessionId: ${_this.sessionId}, startDate: ${_this.startDate}, endDate: ${_this.endDate}, examType: ${_this.examType}, session: ${_this.session})';
}


}

/// @nodoc
abstract mixin class $AdminExamCopyWith<$Res>  {
  factory $AdminExamCopyWith(AdminExam value, $Res Function(AdminExam) _then) = _$AdminExamCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'exam_id') String examId,@JsonKey(name: 'exam_name') String examName,@JsonKey(name: 'exam_type_id') String? examTypeId,@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'exam_types') ExamTypeRef? examType,@JsonKey(name: 'academic_sessions') SessionRef? session
});


$ExamTypeRefCopyWith<$Res>? get examType;$SessionRefCopyWith<$Res>? get session;

}
/// @nodoc
class _$AdminExamCopyWithImpl<$Res>
    implements $AdminExamCopyWith<$Res> {
  _$AdminExamCopyWithImpl(this._self, this._then);

  final AdminExam _self;
  final $Res Function(AdminExam) _then;

/// Create a copy of AdminExam
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? examId = null,Object? examName = null,Object? examTypeId = freezed,Object? sessionId = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? examType = freezed,Object? session = freezed,}) {
  return _then(AdminExam(
examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,examName: null == examName ? _self.examName : examName // ignore: cast_nullable_to_non_nullable
as String,examTypeId: freezed == examTypeId ? _self.examTypeId : examTypeId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,examType: freezed == examType ? _self.examType : examType // ignore: cast_nullable_to_non_nullable
as ExamTypeRef?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,
  ));
}
/// Create a copy of AdminExam
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExamTypeRefCopyWith<$Res>? get examType {
    if (_self.examType == null) {
    return null;
  }

  return $ExamTypeRefCopyWith<$Res>(_self.examType!, (value) {
    return _then(_self.copyWith(examType: value));
  });
}/// Create a copy of AdminExam
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


/// Adds pattern-matching-related methods to [AdminExam].
extension AdminExamPatterns on AdminExam {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminExam value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminExam() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminExam value)  $default,){
final _that = this;
switch (_that) {
case _AdminExam():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminExam value)?  $default,){
final _that = this;
switch (_that) {
case _AdminExam() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_id')  String examId, @JsonKey(name: 'exam_name')  String examName, @JsonKey(name: 'exam_type_id')  String? examTypeId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'exam_types')  ExamTypeRef? examType, @JsonKey(name: 'academic_sessions')  SessionRef? session)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminExam() when $default != null:
return $default(_that.examId,_that.examName,_that.examTypeId,_that.sessionId,_that.startDate,_that.endDate,_that.examType,_that.session);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_id')  String examId, @JsonKey(name: 'exam_name')  String examName, @JsonKey(name: 'exam_type_id')  String? examTypeId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'exam_types')  ExamTypeRef? examType, @JsonKey(name: 'academic_sessions')  SessionRef? session)  $default,) {final _that = this;
switch (_that) {
case _AdminExam():
return $default(_that.examId,_that.examName,_that.examTypeId,_that.sessionId,_that.startDate,_that.endDate,_that.examType,_that.session);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'exam_id')  String examId, @JsonKey(name: 'exam_name')  String examName, @JsonKey(name: 'exam_type_id')  String? examTypeId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'exam_types')  ExamTypeRef? examType, @JsonKey(name: 'academic_sessions')  SessionRef? session)?  $default,) {final _that = this;
switch (_that) {
case _AdminExam() when $default != null:
return $default(_that.examId,_that.examName,_that.examTypeId,_that.sessionId,_that.startDate,_that.endDate,_that.examType,_that.session);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminExam implements AdminExam {
  const _AdminExam({@JsonKey(name: 'exam_id') required this.examId, @JsonKey(name: 'exam_name') required this.examName, @JsonKey(name: 'exam_type_id') this.examTypeId, @JsonKey(name: 'session_id') this.sessionId, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'end_date') this.endDate, @JsonKey(name: 'exam_types') this.examType, @JsonKey(name: 'academic_sessions') this.session});
  factory _AdminExam.fromJson(Map<String, dynamic> json) => _$AdminExamFromJson(json);

@override@JsonKey(name: 'exam_id') final  String examId;
@override@JsonKey(name: 'exam_name') final  String examName;
@override@JsonKey(name: 'exam_type_id') final  String? examTypeId;
@override@JsonKey(name: 'session_id') final  String? sessionId;
@override@JsonKey(name: 'start_date') final  DateTime? startDate;
@override@JsonKey(name: 'end_date') final  DateTime? endDate;
@override@JsonKey(name: 'exam_types') final  ExamTypeRef? examType;
@override@JsonKey(name: 'academic_sessions') final  SessionRef? session;

/// Create a copy of AdminExam
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminExamCopyWith<_AdminExam> get copyWith => __$AdminExamCopyWithImpl<_AdminExam>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminExamToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminExam&&(identical(other.examId, examId) || other.examId == examId)&&(identical(other.examName, examName) || other.examName == examName)&&(identical(other.examTypeId, examTypeId) || other.examTypeId == examTypeId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.examType, examType) || other.examType == examType)&&(identical(other.session, session) || other.session == session));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,examId,examName,examTypeId,sessionId,startDate,endDate,examType,session);
}

@override
String toString() {
    return 'AdminExam(examId: $examId, examName: $examName, examTypeId: $examTypeId, sessionId: $sessionId, startDate: $startDate, endDate: $endDate, examType: $examType, session: $session)';
}


}

/// @nodoc
abstract mixin class _$AdminExamCopyWith<$Res> implements $AdminExamCopyWith<$Res> {
  factory _$AdminExamCopyWith(_AdminExam value, $Res Function(_AdminExam) _then) = __$AdminExamCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'exam_id') String examId,@JsonKey(name: 'exam_name') String examName,@JsonKey(name: 'exam_type_id') String? examTypeId,@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'exam_types') ExamTypeRef? examType,@JsonKey(name: 'academic_sessions') SessionRef? session
});


@override $ExamTypeRefCopyWith<$Res>? get examType;@override $SessionRefCopyWith<$Res>? get session;

}
/// @nodoc
class __$AdminExamCopyWithImpl<$Res>
    implements _$AdminExamCopyWith<$Res> {
  __$AdminExamCopyWithImpl(this._self, this._then);

  final _AdminExam _self;
  final $Res Function(_AdminExam) _then;

/// Create a copy of AdminExam
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? examId = null,Object? examName = null,Object? examTypeId = freezed,Object? sessionId = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? examType = freezed,Object? session = freezed,}) {
  return _then(_AdminExam(
examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,examName: null == examName ? _self.examName : examName // ignore: cast_nullable_to_non_nullable
as String,examTypeId: freezed == examTypeId ? _self.examTypeId : examTypeId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,examType: freezed == examType ? _self.examType : examType // ignore: cast_nullable_to_non_nullable
as ExamTypeRef?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,
  ));
}

/// Create a copy of AdminExam
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExamTypeRefCopyWith<$Res>? get examType {
    if (_self.examType == null) {
    return null;
  }

  return $ExamTypeRefCopyWith<$Res>(_self.examType!, (value) {
    return _then(_self.copyWith(examType: value));
  });
}/// Create a copy of AdminExam
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
mixin _$AdminExamSchedule {

@JsonKey(name: 'exam_schedule_id') String get examScheduleId;@JsonKey(name: 'exam_id') String? get examId;@JsonKey(name: 'class_id') String? get classId;@JsonKey(name: 'section_id') String? get sectionId;@JsonKey(name: 'subject_id') String? get subjectId;@JsonKey(name: 'exam_date') DateTime? get examDate;@JsonKey(name: 'start_time') DateTime? get startTime;@JsonKey(name: 'end_time') DateTime? get endTime;@JsonKey(name: 'max_marks')@LooseNumConverter() num? get maxMarks;@JsonKey(name: 'passing_marks')@LooseNumConverter() num? get passingMarks; String? get room;@JsonKey(name: 'classes') ClassRef? get classRef;@JsonKey(name: 'sections') SectionRef? get sectionRef;@JsonKey(name: 'academic_subjects') SubjectRef? get subject;
/// Create a copy of AdminExamSchedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminExamScheduleCopyWith<AdminExamSchedule> get copyWith => _$AdminExamScheduleCopyWithImpl<AdminExamSchedule>(this as AdminExamSchedule, _$identity);

  /// Serializes this AdminExamSchedule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminExamSchedule;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminExamSchedule&&(identical(other.examScheduleId, _this.examScheduleId) || other.examScheduleId == _this.examScheduleId)&&(identical(other.examId, _this.examId) || other.examId == _this.examId)&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId)&&(identical(other.subjectId, _this.subjectId) || other.subjectId == _this.subjectId)&&(identical(other.examDate, _this.examDate) || other.examDate == _this.examDate)&&(identical(other.startTime, _this.startTime) || other.startTime == _this.startTime)&&(identical(other.endTime, _this.endTime) || other.endTime == _this.endTime)&&(identical(other.maxMarks, _this.maxMarks) || other.maxMarks == _this.maxMarks)&&(identical(other.passingMarks, _this.passingMarks) || other.passingMarks == _this.passingMarks)&&(identical(other.room, _this.room) || other.room == _this.room)&&(identical(other.classRef, _this.classRef) || other.classRef == _this.classRef)&&(identical(other.sectionRef, _this.sectionRef) || other.sectionRef == _this.sectionRef)&&(identical(other.subject, _this.subject) || other.subject == _this.subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminExamSchedule;
  return Object.hash(runtimeType,_this.examScheduleId,_this.examId,_this.classId,_this.sectionId,_this.subjectId,_this.examDate,_this.startTime,_this.endTime,_this.maxMarks,_this.passingMarks,_this.room,_this.classRef,_this.sectionRef,_this.subject);
}

@override
String toString() {
  final _this = this as AdminExamSchedule;
  return 'AdminExamSchedule(examScheduleId: ${_this.examScheduleId}, examId: ${_this.examId}, classId: ${_this.classId}, sectionId: ${_this.sectionId}, subjectId: ${_this.subjectId}, examDate: ${_this.examDate}, startTime: ${_this.startTime}, endTime: ${_this.endTime}, maxMarks: ${_this.maxMarks}, passingMarks: ${_this.passingMarks}, room: ${_this.room}, classRef: ${_this.classRef}, sectionRef: ${_this.sectionRef}, subject: ${_this.subject})';
}


}

/// @nodoc
abstract mixin class $AdminExamScheduleCopyWith<$Res>  {
  factory $AdminExamScheduleCopyWith(AdminExamSchedule value, $Res Function(AdminExamSchedule) _then) = _$AdminExamScheduleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'exam_schedule_id') String examScheduleId,@JsonKey(name: 'exam_id') String? examId,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'subject_id') String? subjectId,@JsonKey(name: 'exam_date') DateTime? examDate,@JsonKey(name: 'start_time') DateTime? startTime,@JsonKey(name: 'end_time') DateTime? endTime,@JsonKey(name: 'max_marks')@LooseNumConverter() num? maxMarks,@JsonKey(name: 'passing_marks')@LooseNumConverter() num? passingMarks, String? room,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject
});


$ClassRefCopyWith<$Res>? get classRef;$SectionRefCopyWith<$Res>? get sectionRef;$SubjectRefCopyWith<$Res>? get subject;

}
/// @nodoc
class _$AdminExamScheduleCopyWithImpl<$Res>
    implements $AdminExamScheduleCopyWith<$Res> {
  _$AdminExamScheduleCopyWithImpl(this._self, this._then);

  final AdminExamSchedule _self;
  final $Res Function(AdminExamSchedule) _then;

/// Create a copy of AdminExamSchedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? examScheduleId = null,Object? examId = freezed,Object? classId = freezed,Object? sectionId = freezed,Object? subjectId = freezed,Object? examDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? maxMarks = freezed,Object? passingMarks = freezed,Object? room = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,}) {
  return _then(AdminExamSchedule(
examScheduleId: null == examScheduleId ? _self.examScheduleId : examScheduleId // ignore: cast_nullable_to_non_nullable
as String,examId: freezed == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String?,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String?,examDate: freezed == examDate ? _self.examDate : examDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,maxMarks: freezed == maxMarks ? _self.maxMarks : maxMarks // ignore: cast_nullable_to_non_nullable
as num?,passingMarks: freezed == passingMarks ? _self.passingMarks : passingMarks // ignore: cast_nullable_to_non_nullable
as num?,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,
  ));
}
/// Create a copy of AdminExamSchedule
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
}/// Create a copy of AdminExamSchedule
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
}/// Create a copy of AdminExamSchedule
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
}
}


/// Adds pattern-matching-related methods to [AdminExamSchedule].
extension AdminExamSchedulePatterns on AdminExamSchedule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminExamSchedule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminExamSchedule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminExamSchedule value)  $default,){
final _that = this;
switch (_that) {
case _AdminExamSchedule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminExamSchedule value)?  $default,){
final _that = this;
switch (_that) {
case _AdminExamSchedule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_schedule_id')  String examScheduleId, @JsonKey(name: 'exam_id')  String? examId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'exam_date')  DateTime? examDate, @JsonKey(name: 'start_time')  DateTime? startTime, @JsonKey(name: 'end_time')  DateTime? endTime, @JsonKey(name: 'max_marks')@LooseNumConverter()  num? maxMarks, @JsonKey(name: 'passing_marks')@LooseNumConverter()  num? passingMarks,  String? room, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminExamSchedule() when $default != null:
return $default(_that.examScheduleId,_that.examId,_that.classId,_that.sectionId,_that.subjectId,_that.examDate,_that.startTime,_that.endTime,_that.maxMarks,_that.passingMarks,_that.room,_that.classRef,_that.sectionRef,_that.subject);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_schedule_id')  String examScheduleId, @JsonKey(name: 'exam_id')  String? examId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'exam_date')  DateTime? examDate, @JsonKey(name: 'start_time')  DateTime? startTime, @JsonKey(name: 'end_time')  DateTime? endTime, @JsonKey(name: 'max_marks')@LooseNumConverter()  num? maxMarks, @JsonKey(name: 'passing_marks')@LooseNumConverter()  num? passingMarks,  String? room, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject)  $default,) {final _that = this;
switch (_that) {
case _AdminExamSchedule():
return $default(_that.examScheduleId,_that.examId,_that.classId,_that.sectionId,_that.subjectId,_that.examDate,_that.startTime,_that.endTime,_that.maxMarks,_that.passingMarks,_that.room,_that.classRef,_that.sectionRef,_that.subject);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'exam_schedule_id')  String examScheduleId, @JsonKey(name: 'exam_id')  String? examId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'exam_date')  DateTime? examDate, @JsonKey(name: 'start_time')  DateTime? startTime, @JsonKey(name: 'end_time')  DateTime? endTime, @JsonKey(name: 'max_marks')@LooseNumConverter()  num? maxMarks, @JsonKey(name: 'passing_marks')@LooseNumConverter()  num? passingMarks,  String? room, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject)?  $default,) {final _that = this;
switch (_that) {
case _AdminExamSchedule() when $default != null:
return $default(_that.examScheduleId,_that.examId,_that.classId,_that.sectionId,_that.subjectId,_that.examDate,_that.startTime,_that.endTime,_that.maxMarks,_that.passingMarks,_that.room,_that.classRef,_that.sectionRef,_that.subject);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminExamSchedule implements AdminExamSchedule {
  const _AdminExamSchedule({@JsonKey(name: 'exam_schedule_id') required this.examScheduleId, @JsonKey(name: 'exam_id') this.examId, @JsonKey(name: 'class_id') this.classId, @JsonKey(name: 'section_id') this.sectionId, @JsonKey(name: 'subject_id') this.subjectId, @JsonKey(name: 'exam_date') this.examDate, @JsonKey(name: 'start_time') this.startTime, @JsonKey(name: 'end_time') this.endTime, @JsonKey(name: 'max_marks')@LooseNumConverter() this.maxMarks, @JsonKey(name: 'passing_marks')@LooseNumConverter() this.passingMarks, this.room, @JsonKey(name: 'classes') this.classRef, @JsonKey(name: 'sections') this.sectionRef, @JsonKey(name: 'academic_subjects') this.subject});
  factory _AdminExamSchedule.fromJson(Map<String, dynamic> json) => _$AdminExamScheduleFromJson(json);

@override@JsonKey(name: 'exam_schedule_id') final  String examScheduleId;
@override@JsonKey(name: 'exam_id') final  String? examId;
@override@JsonKey(name: 'class_id') final  String? classId;
@override@JsonKey(name: 'section_id') final  String? sectionId;
@override@JsonKey(name: 'subject_id') final  String? subjectId;
@override@JsonKey(name: 'exam_date') final  DateTime? examDate;
@override@JsonKey(name: 'start_time') final  DateTime? startTime;
@override@JsonKey(name: 'end_time') final  DateTime? endTime;
@override@JsonKey(name: 'max_marks')@LooseNumConverter() final  num? maxMarks;
@override@JsonKey(name: 'passing_marks')@LooseNumConverter() final  num? passingMarks;
@override final  String? room;
@override@JsonKey(name: 'classes') final  ClassRef? classRef;
@override@JsonKey(name: 'sections') final  SectionRef? sectionRef;
@override@JsonKey(name: 'academic_subjects') final  SubjectRef? subject;

/// Create a copy of AdminExamSchedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminExamScheduleCopyWith<_AdminExamSchedule> get copyWith => __$AdminExamScheduleCopyWithImpl<_AdminExamSchedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminExamScheduleToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminExamSchedule&&(identical(other.examScheduleId, examScheduleId) || other.examScheduleId == examScheduleId)&&(identical(other.examId, examId) || other.examId == examId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.examDate, examDate) || other.examDate == examDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.maxMarks, maxMarks) || other.maxMarks == maxMarks)&&(identical(other.passingMarks, passingMarks) || other.passingMarks == passingMarks)&&(identical(other.room, room) || other.room == room)&&(identical(other.classRef, classRef) || other.classRef == classRef)&&(identical(other.sectionRef, sectionRef) || other.sectionRef == sectionRef)&&(identical(other.subject, subject) || other.subject == subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,examScheduleId,examId,classId,sectionId,subjectId,examDate,startTime,endTime,maxMarks,passingMarks,room,classRef,sectionRef,subject);
}

@override
String toString() {
    return 'AdminExamSchedule(examScheduleId: $examScheduleId, examId: $examId, classId: $classId, sectionId: $sectionId, subjectId: $subjectId, examDate: $examDate, startTime: $startTime, endTime: $endTime, maxMarks: $maxMarks, passingMarks: $passingMarks, room: $room, classRef: $classRef, sectionRef: $sectionRef, subject: $subject)';
}


}

/// @nodoc
abstract mixin class _$AdminExamScheduleCopyWith<$Res> implements $AdminExamScheduleCopyWith<$Res> {
  factory _$AdminExamScheduleCopyWith(_AdminExamSchedule value, $Res Function(_AdminExamSchedule) _then) = __$AdminExamScheduleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'exam_schedule_id') String examScheduleId,@JsonKey(name: 'exam_id') String? examId,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'subject_id') String? subjectId,@JsonKey(name: 'exam_date') DateTime? examDate,@JsonKey(name: 'start_time') DateTime? startTime,@JsonKey(name: 'end_time') DateTime? endTime,@JsonKey(name: 'max_marks')@LooseNumConverter() num? maxMarks,@JsonKey(name: 'passing_marks')@LooseNumConverter() num? passingMarks, String? room,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject
});


@override $ClassRefCopyWith<$Res>? get classRef;@override $SectionRefCopyWith<$Res>? get sectionRef;@override $SubjectRefCopyWith<$Res>? get subject;

}
/// @nodoc
class __$AdminExamScheduleCopyWithImpl<$Res>
    implements _$AdminExamScheduleCopyWith<$Res> {
  __$AdminExamScheduleCopyWithImpl(this._self, this._then);

  final _AdminExamSchedule _self;
  final $Res Function(_AdminExamSchedule) _then;

/// Create a copy of AdminExamSchedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? examScheduleId = null,Object? examId = freezed,Object? classId = freezed,Object? sectionId = freezed,Object? subjectId = freezed,Object? examDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? maxMarks = freezed,Object? passingMarks = freezed,Object? room = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,}) {
  return _then(_AdminExamSchedule(
examScheduleId: null == examScheduleId ? _self.examScheduleId : examScheduleId // ignore: cast_nullable_to_non_nullable
as String,examId: freezed == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String?,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String?,examDate: freezed == examDate ? _self.examDate : examDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,maxMarks: freezed == maxMarks ? _self.maxMarks : maxMarks // ignore: cast_nullable_to_non_nullable
as num?,passingMarks: freezed == passingMarks ? _self.passingMarks : passingMarks // ignore: cast_nullable_to_non_nullable
as num?,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,
  ));
}

/// Create a copy of AdminExamSchedule
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
}/// Create a copy of AdminExamSchedule
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
}/// Create a copy of AdminExamSchedule
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
}
}


/// @nodoc
mixin _$AdminExamResultStudent {

@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'admission_no') String? get admissionNo;@JsonKey(name: 'roll_no')@LooseStringConverter() String? get rollNo;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName; List<ReportCardSubject> get subjects;@JsonKey(name: 'total_obtained')@LooseNumConverter() num? get totalObtained;@JsonKey(name: 'total_max')@LooseNumConverter() num? get totalMax;@JsonKey(name: 'all_entered') bool get allEntered;@LooseNumConverter() num? get percentage;@JsonKey(name: 'overall_result') String? get overallResult;@LooseNumConverter() num? get rank;
/// Create a copy of AdminExamResultStudent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminExamResultStudentCopyWith<AdminExamResultStudent> get copyWith => _$AdminExamResultStudentCopyWithImpl<AdminExamResultStudent>(this as AdminExamResultStudent, _$identity);

  /// Serializes this AdminExamResultStudent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminExamResultStudent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminExamResultStudent&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.rollNo, _this.rollNo) || other.rollNo == _this.rollNo)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&const DeepCollectionEquality().equals(other.subjects, _this.subjects)&&(identical(other.totalObtained, _this.totalObtained) || other.totalObtained == _this.totalObtained)&&(identical(other.totalMax, _this.totalMax) || other.totalMax == _this.totalMax)&&(identical(other.allEntered, _this.allEntered) || other.allEntered == _this.allEntered)&&(identical(other.percentage, _this.percentage) || other.percentage == _this.percentage)&&(identical(other.overallResult, _this.overallResult) || other.overallResult == _this.overallResult)&&(identical(other.rank, _this.rank) || other.rank == _this.rank));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminExamResultStudent;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.rollNo,_this.firstName,_this.lastName,const DeepCollectionEquality().hash(_this.subjects),_this.totalObtained,_this.totalMax,_this.allEntered,_this.percentage,_this.overallResult,_this.rank);
}

@override
String toString() {
  final _this = this as AdminExamResultStudent;
  return 'AdminExamResultStudent(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, rollNo: ${_this.rollNo}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, subjects: ${_this.subjects}, totalObtained: ${_this.totalObtained}, totalMax: ${_this.totalMax}, allEntered: ${_this.allEntered}, percentage: ${_this.percentage}, overallResult: ${_this.overallResult}, rank: ${_this.rank})';
}


}

/// @nodoc
abstract mixin class $AdminExamResultStudentCopyWith<$Res>  {
  factory $AdminExamResultStudentCopyWith(AdminExamResultStudent value, $Res Function(AdminExamResultStudent) _then) = _$AdminExamResultStudentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName, List<ReportCardSubject> subjects,@JsonKey(name: 'total_obtained')@LooseNumConverter() num? totalObtained,@JsonKey(name: 'total_max')@LooseNumConverter() num? totalMax,@JsonKey(name: 'all_entered') bool allEntered,@LooseNumConverter() num? percentage,@JsonKey(name: 'overall_result') String? overallResult,@LooseNumConverter() num? rank
});




}
/// @nodoc
class _$AdminExamResultStudentCopyWithImpl<$Res>
    implements $AdminExamResultStudentCopyWith<$Res> {
  _$AdminExamResultStudentCopyWithImpl(this._self, this._then);

  final AdminExamResultStudent _self;
  final $Res Function(AdminExamResultStudent) _then;

/// Create a copy of AdminExamResultStudent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? rollNo = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? subjects = null,Object? totalObtained = freezed,Object? totalMax = freezed,Object? allEntered = null,Object? percentage = freezed,Object? overallResult = freezed,Object? rank = freezed,}) {
  return _then(AdminExamResultStudent(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,subjects: null == subjects ? _self.subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<ReportCardSubject>,totalObtained: freezed == totalObtained ? _self.totalObtained : totalObtained // ignore: cast_nullable_to_non_nullable
as num?,totalMax: freezed == totalMax ? _self.totalMax : totalMax // ignore: cast_nullable_to_non_nullable
as num?,allEntered: null == allEntered ? _self.allEntered : allEntered // ignore: cast_nullable_to_non_nullable
as bool,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as num?,overallResult: freezed == overallResult ? _self.overallResult : overallResult // ignore: cast_nullable_to_non_nullable
as String?,rank: freezed == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminExamResultStudent].
extension AdminExamResultStudentPatterns on AdminExamResultStudent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminExamResultStudent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminExamResultStudent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminExamResultStudent value)  $default,){
final _that = this;
switch (_that) {
case _AdminExamResultStudent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminExamResultStudent value)?  $default,){
final _that = this;
switch (_that) {
case _AdminExamResultStudent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName,  List<ReportCardSubject> subjects, @JsonKey(name: 'total_obtained')@LooseNumConverter()  num? totalObtained, @JsonKey(name: 'total_max')@LooseNumConverter()  num? totalMax, @JsonKey(name: 'all_entered')  bool allEntered, @LooseNumConverter()  num? percentage, @JsonKey(name: 'overall_result')  String? overallResult, @LooseNumConverter()  num? rank)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminExamResultStudent() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.firstName,_that.lastName,_that.subjects,_that.totalObtained,_that.totalMax,_that.allEntered,_that.percentage,_that.overallResult,_that.rank);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName,  List<ReportCardSubject> subjects, @JsonKey(name: 'total_obtained')@LooseNumConverter()  num? totalObtained, @JsonKey(name: 'total_max')@LooseNumConverter()  num? totalMax, @JsonKey(name: 'all_entered')  bool allEntered, @LooseNumConverter()  num? percentage, @JsonKey(name: 'overall_result')  String? overallResult, @LooseNumConverter()  num? rank)  $default,) {final _that = this;
switch (_that) {
case _AdminExamResultStudent():
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.firstName,_that.lastName,_that.subjects,_that.totalObtained,_that.totalMax,_that.allEntered,_that.percentage,_that.overallResult,_that.rank);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName,  List<ReportCardSubject> subjects, @JsonKey(name: 'total_obtained')@LooseNumConverter()  num? totalObtained, @JsonKey(name: 'total_max')@LooseNumConverter()  num? totalMax, @JsonKey(name: 'all_entered')  bool allEntered, @LooseNumConverter()  num? percentage, @JsonKey(name: 'overall_result')  String? overallResult, @LooseNumConverter()  num? rank)?  $default,) {final _that = this;
switch (_that) {
case _AdminExamResultStudent() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.firstName,_that.lastName,_that.subjects,_that.totalObtained,_that.totalMax,_that.allEntered,_that.percentage,_that.overallResult,_that.rank);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminExamResultStudent implements AdminExamResultStudent {
  const _AdminExamResultStudent({@JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'admission_no') this.admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter() this.rollNo, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName,  List<ReportCardSubject> subjects = const <ReportCardSubject>[], @JsonKey(name: 'total_obtained')@LooseNumConverter() this.totalObtained, @JsonKey(name: 'total_max')@LooseNumConverter() this.totalMax, @JsonKey(name: 'all_entered') this.allEntered = false, @LooseNumConverter() this.percentage, @JsonKey(name: 'overall_result') this.overallResult, @LooseNumConverter() this.rank}): _subjects = subjects;
  factory _AdminExamResultStudent.fromJson(Map<String, dynamic> json) => _$AdminExamResultStudentFromJson(json);

@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override@JsonKey(name: 'roll_no')@LooseStringConverter() final  String? rollNo;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
 final  List<ReportCardSubject> _subjects;
@override@JsonKey() List<ReportCardSubject> get subjects {
  if (_subjects is EqualUnmodifiableListView) return _subjects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subjects);
}

@override@JsonKey(name: 'total_obtained')@LooseNumConverter() final  num? totalObtained;
@override@JsonKey(name: 'total_max')@LooseNumConverter() final  num? totalMax;
@override@JsonKey(name: 'all_entered') final  bool allEntered;
@override@LooseNumConverter() final  num? percentage;
@override@JsonKey(name: 'overall_result') final  String? overallResult;
@override@LooseNumConverter() final  num? rank;

/// Create a copy of AdminExamResultStudent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminExamResultStudentCopyWith<_AdminExamResultStudent> get copyWith => __$AdminExamResultStudentCopyWithImpl<_AdminExamResultStudent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminExamResultStudentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminExamResultStudent&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.rollNo, rollNo) || other.rollNo == rollNo)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&const DeepCollectionEquality().equals(other.subjects, _subjects)&&(identical(other.totalObtained, totalObtained) || other.totalObtained == totalObtained)&&(identical(other.totalMax, totalMax) || other.totalMax == totalMax)&&(identical(other.allEntered, allEntered) || other.allEntered == allEntered)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.overallResult, overallResult) || other.overallResult == overallResult)&&(identical(other.rank, rank) || other.rank == rank));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,rollNo,firstName,lastName,const DeepCollectionEquality().hash(_subjects),totalObtained,totalMax,allEntered,percentage,overallResult,rank);
}

@override
String toString() {
    return 'AdminExamResultStudent(studentId: $studentId, admissionNo: $admissionNo, rollNo: $rollNo, firstName: $firstName, lastName: $lastName, subjects: $subjects, totalObtained: $totalObtained, totalMax: $totalMax, allEntered: $allEntered, percentage: $percentage, overallResult: $overallResult, rank: $rank)';
}


}

/// @nodoc
abstract mixin class _$AdminExamResultStudentCopyWith<$Res> implements $AdminExamResultStudentCopyWith<$Res> {
  factory _$AdminExamResultStudentCopyWith(_AdminExamResultStudent value, $Res Function(_AdminExamResultStudent) _then) = __$AdminExamResultStudentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName, List<ReportCardSubject> subjects,@JsonKey(name: 'total_obtained')@LooseNumConverter() num? totalObtained,@JsonKey(name: 'total_max')@LooseNumConverter() num? totalMax,@JsonKey(name: 'all_entered') bool allEntered,@LooseNumConverter() num? percentage,@JsonKey(name: 'overall_result') String? overallResult,@LooseNumConverter() num? rank
});




}
/// @nodoc
class __$AdminExamResultStudentCopyWithImpl<$Res>
    implements _$AdminExamResultStudentCopyWith<$Res> {
  __$AdminExamResultStudentCopyWithImpl(this._self, this._then);

  final _AdminExamResultStudent _self;
  final $Res Function(_AdminExamResultStudent) _then;

/// Create a copy of AdminExamResultStudent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? rollNo = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? subjects = null,Object? totalObtained = freezed,Object? totalMax = freezed,Object? allEntered = null,Object? percentage = freezed,Object? overallResult = freezed,Object? rank = freezed,}) {
  return _then(_AdminExamResultStudent(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,subjects: null == subjects ? _self._subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<ReportCardSubject>,totalObtained: freezed == totalObtained ? _self.totalObtained : totalObtained // ignore: cast_nullable_to_non_nullable
as num?,totalMax: freezed == totalMax ? _self.totalMax : totalMax // ignore: cast_nullable_to_non_nullable
as num?,allEntered: null == allEntered ? _self.allEntered : allEntered // ignore: cast_nullable_to_non_nullable
as bool,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as num?,overallResult: freezed == overallResult ? _self.overallResult : overallResult // ignore: cast_nullable_to_non_nullable
as String?,rank: freezed == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}


/// @nodoc
mixin _$AdminExamResultSummary {

 AdminExam? get exam;@JsonKey(name: 'class_id') String? get classId;@JsonKey(name: 'section_id') String? get sectionId;@JsonKey(name: 'is_published') bool get isPublished;@JsonKey(name: 'class_average_percentage')@LooseNumConverter() num? get classAveragePercentage;@JsonKey(name: 'pass_percentage')@LooseNumConverter() num? get passPercentage; List<AdminExamResultStudent> get students;
/// Create a copy of AdminExamResultSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminExamResultSummaryCopyWith<AdminExamResultSummary> get copyWith => _$AdminExamResultSummaryCopyWithImpl<AdminExamResultSummary>(this as AdminExamResultSummary, _$identity);

  /// Serializes this AdminExamResultSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminExamResultSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminExamResultSummary&&(identical(other.exam, _this.exam) || other.exam == _this.exam)&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId)&&(identical(other.isPublished, _this.isPublished) || other.isPublished == _this.isPublished)&&(identical(other.classAveragePercentage, _this.classAveragePercentage) || other.classAveragePercentage == _this.classAveragePercentage)&&(identical(other.passPercentage, _this.passPercentage) || other.passPercentage == _this.passPercentage)&&const DeepCollectionEquality().equals(other.students, _this.students));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminExamResultSummary;
  return Object.hash(runtimeType,_this.exam,_this.classId,_this.sectionId,_this.isPublished,_this.classAveragePercentage,_this.passPercentage,const DeepCollectionEquality().hash(_this.students));
}

@override
String toString() {
  final _this = this as AdminExamResultSummary;
  return 'AdminExamResultSummary(exam: ${_this.exam}, classId: ${_this.classId}, sectionId: ${_this.sectionId}, isPublished: ${_this.isPublished}, classAveragePercentage: ${_this.classAveragePercentage}, passPercentage: ${_this.passPercentage}, students: ${_this.students})';
}


}

/// @nodoc
abstract mixin class $AdminExamResultSummaryCopyWith<$Res>  {
  factory $AdminExamResultSummaryCopyWith(AdminExamResultSummary value, $Res Function(AdminExamResultSummary) _then) = _$AdminExamResultSummaryCopyWithImpl;
@useResult
$Res call({
 AdminExam? exam,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'is_published') bool isPublished,@JsonKey(name: 'class_average_percentage')@LooseNumConverter() num? classAveragePercentage,@JsonKey(name: 'pass_percentage')@LooseNumConverter() num? passPercentage, List<AdminExamResultStudent> students
});


$AdminExamCopyWith<$Res>? get exam;

}
/// @nodoc
class _$AdminExamResultSummaryCopyWithImpl<$Res>
    implements $AdminExamResultSummaryCopyWith<$Res> {
  _$AdminExamResultSummaryCopyWithImpl(this._self, this._then);

  final AdminExamResultSummary _self;
  final $Res Function(AdminExamResultSummary) _then;

/// Create a copy of AdminExamResultSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? exam = freezed,Object? classId = freezed,Object? sectionId = freezed,Object? isPublished = null,Object? classAveragePercentage = freezed,Object? passPercentage = freezed,Object? students = null,}) {
  return _then(AdminExamResultSummary(
exam: freezed == exam ? _self.exam : exam // ignore: cast_nullable_to_non_nullable
as AdminExam?,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,isPublished: null == isPublished ? _self.isPublished : isPublished // ignore: cast_nullable_to_non_nullable
as bool,classAveragePercentage: freezed == classAveragePercentage ? _self.classAveragePercentage : classAveragePercentage // ignore: cast_nullable_to_non_nullable
as num?,passPercentage: freezed == passPercentage ? _self.passPercentage : passPercentage // ignore: cast_nullable_to_non_nullable
as num?,students: null == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as List<AdminExamResultStudent>,
  ));
}
/// Create a copy of AdminExamResultSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminExamCopyWith<$Res>? get exam {
    if (_self.exam == null) {
    return null;
  }

  return $AdminExamCopyWith<$Res>(_self.exam!, (value) {
    return _then(_self.copyWith(exam: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminExamResultSummary].
extension AdminExamResultSummaryPatterns on AdminExamResultSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminExamResultSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminExamResultSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminExamResultSummary value)  $default,){
final _that = this;
switch (_that) {
case _AdminExamResultSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminExamResultSummary value)?  $default,){
final _that = this;
switch (_that) {
case _AdminExamResultSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AdminExam? exam, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'is_published')  bool isPublished, @JsonKey(name: 'class_average_percentage')@LooseNumConverter()  num? classAveragePercentage, @JsonKey(name: 'pass_percentage')@LooseNumConverter()  num? passPercentage,  List<AdminExamResultStudent> students)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminExamResultSummary() when $default != null:
return $default(_that.exam,_that.classId,_that.sectionId,_that.isPublished,_that.classAveragePercentage,_that.passPercentage,_that.students);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AdminExam? exam, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'is_published')  bool isPublished, @JsonKey(name: 'class_average_percentage')@LooseNumConverter()  num? classAveragePercentage, @JsonKey(name: 'pass_percentage')@LooseNumConverter()  num? passPercentage,  List<AdminExamResultStudent> students)  $default,) {final _that = this;
switch (_that) {
case _AdminExamResultSummary():
return $default(_that.exam,_that.classId,_that.sectionId,_that.isPublished,_that.classAveragePercentage,_that.passPercentage,_that.students);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AdminExam? exam, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'is_published')  bool isPublished, @JsonKey(name: 'class_average_percentage')@LooseNumConverter()  num? classAveragePercentage, @JsonKey(name: 'pass_percentage')@LooseNumConverter()  num? passPercentage,  List<AdminExamResultStudent> students)?  $default,) {final _that = this;
switch (_that) {
case _AdminExamResultSummary() when $default != null:
return $default(_that.exam,_that.classId,_that.sectionId,_that.isPublished,_that.classAveragePercentage,_that.passPercentage,_that.students);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminExamResultSummary implements AdminExamResultSummary {
  const _AdminExamResultSummary({this.exam, @JsonKey(name: 'class_id') this.classId, @JsonKey(name: 'section_id') this.sectionId, @JsonKey(name: 'is_published') this.isPublished = false, @JsonKey(name: 'class_average_percentage')@LooseNumConverter() this.classAveragePercentage, @JsonKey(name: 'pass_percentage')@LooseNumConverter() this.passPercentage,  List<AdminExamResultStudent> students = const <AdminExamResultStudent>[]}): _students = students;
  factory _AdminExamResultSummary.fromJson(Map<String, dynamic> json) => _$AdminExamResultSummaryFromJson(json);

@override final  AdminExam? exam;
@override@JsonKey(name: 'class_id') final  String? classId;
@override@JsonKey(name: 'section_id') final  String? sectionId;
@override@JsonKey(name: 'is_published') final  bool isPublished;
@override@JsonKey(name: 'class_average_percentage')@LooseNumConverter() final  num? classAveragePercentage;
@override@JsonKey(name: 'pass_percentage')@LooseNumConverter() final  num? passPercentage;
 final  List<AdminExamResultStudent> _students;
@override@JsonKey() List<AdminExamResultStudent> get students {
  if (_students is EqualUnmodifiableListView) return _students;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_students);
}


/// Create a copy of AdminExamResultSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminExamResultSummaryCopyWith<_AdminExamResultSummary> get copyWith => __$AdminExamResultSummaryCopyWithImpl<_AdminExamResultSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminExamResultSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminExamResultSummary&&(identical(other.exam, exam) || other.exam == exam)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.isPublished, isPublished) || other.isPublished == isPublished)&&(identical(other.classAveragePercentage, classAveragePercentage) || other.classAveragePercentage == classAveragePercentage)&&(identical(other.passPercentage, passPercentage) || other.passPercentage == passPercentage)&&const DeepCollectionEquality().equals(other.students, _students));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,exam,classId,sectionId,isPublished,classAveragePercentage,passPercentage,const DeepCollectionEquality().hash(_students));
}

@override
String toString() {
    return 'AdminExamResultSummary(exam: $exam, classId: $classId, sectionId: $sectionId, isPublished: $isPublished, classAveragePercentage: $classAveragePercentage, passPercentage: $passPercentage, students: $students)';
}


}

/// @nodoc
abstract mixin class _$AdminExamResultSummaryCopyWith<$Res> implements $AdminExamResultSummaryCopyWith<$Res> {
  factory _$AdminExamResultSummaryCopyWith(_AdminExamResultSummary value, $Res Function(_AdminExamResultSummary) _then) = __$AdminExamResultSummaryCopyWithImpl;
@override @useResult
$Res call({
 AdminExam? exam,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'is_published') bool isPublished,@JsonKey(name: 'class_average_percentage')@LooseNumConverter() num? classAveragePercentage,@JsonKey(name: 'pass_percentage')@LooseNumConverter() num? passPercentage, List<AdminExamResultStudent> students
});


@override $AdminExamCopyWith<$Res>? get exam;

}
/// @nodoc
class __$AdminExamResultSummaryCopyWithImpl<$Res>
    implements _$AdminExamResultSummaryCopyWith<$Res> {
  __$AdminExamResultSummaryCopyWithImpl(this._self, this._then);

  final _AdminExamResultSummary _self;
  final $Res Function(_AdminExamResultSummary) _then;

/// Create a copy of AdminExamResultSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? exam = freezed,Object? classId = freezed,Object? sectionId = freezed,Object? isPublished = null,Object? classAveragePercentage = freezed,Object? passPercentage = freezed,Object? students = null,}) {
  return _then(_AdminExamResultSummary(
exam: freezed == exam ? _self.exam : exam // ignore: cast_nullable_to_non_nullable
as AdminExam?,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,isPublished: null == isPublished ? _self.isPublished : isPublished // ignore: cast_nullable_to_non_nullable
as bool,classAveragePercentage: freezed == classAveragePercentage ? _self.classAveragePercentage : classAveragePercentage // ignore: cast_nullable_to_non_nullable
as num?,passPercentage: freezed == passPercentage ? _self.passPercentage : passPercentage // ignore: cast_nullable_to_non_nullable
as num?,students: null == students ? _self._students : students // ignore: cast_nullable_to_non_nullable
as List<AdminExamResultStudent>,
  ));
}

/// Create a copy of AdminExamResultSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminExamCopyWith<$Res>? get exam {
    if (_self.exam == null) {
    return null;
  }

  return $AdminExamCopyWith<$Res>(_self.exam!, (value) {
    return _then(_self.copyWith(exam: value));
  });
}
}


/// @nodoc
mixin _$AdminReportCard {

 AdminExam? get exam;@JsonKey(name: 'is_published') bool get isPublished;@JsonKey(name: 'class_average_percentage')@LooseNumConverter() num? get classAveragePercentage; AdminExamResultStudent? get student;
/// Create a copy of AdminReportCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminReportCardCopyWith<AdminReportCard> get copyWith => _$AdminReportCardCopyWithImpl<AdminReportCard>(this as AdminReportCard, _$identity);

  /// Serializes this AdminReportCard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminReportCard;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminReportCard&&(identical(other.exam, _this.exam) || other.exam == _this.exam)&&(identical(other.isPublished, _this.isPublished) || other.isPublished == _this.isPublished)&&(identical(other.classAveragePercentage, _this.classAveragePercentage) || other.classAveragePercentage == _this.classAveragePercentage)&&(identical(other.student, _this.student) || other.student == _this.student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminReportCard;
  return Object.hash(runtimeType,_this.exam,_this.isPublished,_this.classAveragePercentage,_this.student);
}

@override
String toString() {
  final _this = this as AdminReportCard;
  return 'AdminReportCard(exam: ${_this.exam}, isPublished: ${_this.isPublished}, classAveragePercentage: ${_this.classAveragePercentage}, student: ${_this.student})';
}


}

/// @nodoc
abstract mixin class $AdminReportCardCopyWith<$Res>  {
  factory $AdminReportCardCopyWith(AdminReportCard value, $Res Function(AdminReportCard) _then) = _$AdminReportCardCopyWithImpl;
@useResult
$Res call({
 AdminExam? exam,@JsonKey(name: 'is_published') bool isPublished,@JsonKey(name: 'class_average_percentage')@LooseNumConverter() num? classAveragePercentage, AdminExamResultStudent? student
});


$AdminExamCopyWith<$Res>? get exam;$AdminExamResultStudentCopyWith<$Res>? get student;

}
/// @nodoc
class _$AdminReportCardCopyWithImpl<$Res>
    implements $AdminReportCardCopyWith<$Res> {
  _$AdminReportCardCopyWithImpl(this._self, this._then);

  final AdminReportCard _self;
  final $Res Function(AdminReportCard) _then;

/// Create a copy of AdminReportCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? exam = freezed,Object? isPublished = null,Object? classAveragePercentage = freezed,Object? student = freezed,}) {
  return _then(AdminReportCard(
exam: freezed == exam ? _self.exam : exam // ignore: cast_nullable_to_non_nullable
as AdminExam?,isPublished: null == isPublished ? _self.isPublished : isPublished // ignore: cast_nullable_to_non_nullable
as bool,classAveragePercentage: freezed == classAveragePercentage ? _self.classAveragePercentage : classAveragePercentage // ignore: cast_nullable_to_non_nullable
as num?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as AdminExamResultStudent?,
  ));
}
/// Create a copy of AdminReportCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminExamCopyWith<$Res>? get exam {
    if (_self.exam == null) {
    return null;
  }

  return $AdminExamCopyWith<$Res>(_self.exam!, (value) {
    return _then(_self.copyWith(exam: value));
  });
}/// Create a copy of AdminReportCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminExamResultStudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $AdminExamResultStudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminReportCard].
extension AdminReportCardPatterns on AdminReportCard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminReportCard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminReportCard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminReportCard value)  $default,){
final _that = this;
switch (_that) {
case _AdminReportCard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminReportCard value)?  $default,){
final _that = this;
switch (_that) {
case _AdminReportCard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AdminExam? exam, @JsonKey(name: 'is_published')  bool isPublished, @JsonKey(name: 'class_average_percentage')@LooseNumConverter()  num? classAveragePercentage,  AdminExamResultStudent? student)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminReportCard() when $default != null:
return $default(_that.exam,_that.isPublished,_that.classAveragePercentage,_that.student);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AdminExam? exam, @JsonKey(name: 'is_published')  bool isPublished, @JsonKey(name: 'class_average_percentage')@LooseNumConverter()  num? classAveragePercentage,  AdminExamResultStudent? student)  $default,) {final _that = this;
switch (_that) {
case _AdminReportCard():
return $default(_that.exam,_that.isPublished,_that.classAveragePercentage,_that.student);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AdminExam? exam, @JsonKey(name: 'is_published')  bool isPublished, @JsonKey(name: 'class_average_percentage')@LooseNumConverter()  num? classAveragePercentage,  AdminExamResultStudent? student)?  $default,) {final _that = this;
switch (_that) {
case _AdminReportCard() when $default != null:
return $default(_that.exam,_that.isPublished,_that.classAveragePercentage,_that.student);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminReportCard implements AdminReportCard {
  const _AdminReportCard({this.exam, @JsonKey(name: 'is_published') this.isPublished = false, @JsonKey(name: 'class_average_percentage')@LooseNumConverter() this.classAveragePercentage, this.student});
  factory _AdminReportCard.fromJson(Map<String, dynamic> json) => _$AdminReportCardFromJson(json);

@override final  AdminExam? exam;
@override@JsonKey(name: 'is_published') final  bool isPublished;
@override@JsonKey(name: 'class_average_percentage')@LooseNumConverter() final  num? classAveragePercentage;
@override final  AdminExamResultStudent? student;

/// Create a copy of AdminReportCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminReportCardCopyWith<_AdminReportCard> get copyWith => __$AdminReportCardCopyWithImpl<_AdminReportCard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminReportCardToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminReportCard&&(identical(other.exam, exam) || other.exam == exam)&&(identical(other.isPublished, isPublished) || other.isPublished == isPublished)&&(identical(other.classAveragePercentage, classAveragePercentage) || other.classAveragePercentage == classAveragePercentage)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,exam,isPublished,classAveragePercentage,student);
}

@override
String toString() {
    return 'AdminReportCard(exam: $exam, isPublished: $isPublished, classAveragePercentage: $classAveragePercentage, student: $student)';
}


}

/// @nodoc
abstract mixin class _$AdminReportCardCopyWith<$Res> implements $AdminReportCardCopyWith<$Res> {
  factory _$AdminReportCardCopyWith(_AdminReportCard value, $Res Function(_AdminReportCard) _then) = __$AdminReportCardCopyWithImpl;
@override @useResult
$Res call({
 AdminExam? exam,@JsonKey(name: 'is_published') bool isPublished,@JsonKey(name: 'class_average_percentage')@LooseNumConverter() num? classAveragePercentage, AdminExamResultStudent? student
});


@override $AdminExamCopyWith<$Res>? get exam;@override $AdminExamResultStudentCopyWith<$Res>? get student;

}
/// @nodoc
class __$AdminReportCardCopyWithImpl<$Res>
    implements _$AdminReportCardCopyWith<$Res> {
  __$AdminReportCardCopyWithImpl(this._self, this._then);

  final _AdminReportCard _self;
  final $Res Function(_AdminReportCard) _then;

/// Create a copy of AdminReportCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? exam = freezed,Object? isPublished = null,Object? classAveragePercentage = freezed,Object? student = freezed,}) {
  return _then(_AdminReportCard(
exam: freezed == exam ? _self.exam : exam // ignore: cast_nullable_to_non_nullable
as AdminExam?,isPublished: null == isPublished ? _self.isPublished : isPublished // ignore: cast_nullable_to_non_nullable
as bool,classAveragePercentage: freezed == classAveragePercentage ? _self.classAveragePercentage : classAveragePercentage // ignore: cast_nullable_to_non_nullable
as num?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as AdminExamResultStudent?,
  ));
}

/// Create a copy of AdminReportCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminExamCopyWith<$Res>? get exam {
    if (_self.exam == null) {
    return null;
  }

  return $AdminExamCopyWith<$Res>(_self.exam!, (value) {
    return _then(_self.copyWith(exam: value));
  });
}/// Create a copy of AdminReportCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminExamResultStudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $AdminExamResultStudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// @nodoc
mixin _$ActiveAcademicSession {

@JsonKey(name: 'session_id') String get sessionId;@JsonKey(name: 'session_name') String? get sessionName;
/// Create a copy of ActiveAcademicSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActiveAcademicSessionCopyWith<ActiveAcademicSession> get copyWith => _$ActiveAcademicSessionCopyWithImpl<ActiveAcademicSession>(this as ActiveAcademicSession, _$identity);

  /// Serializes this ActiveAcademicSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ActiveAcademicSession;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActiveAcademicSession&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.sessionName, _this.sessionName) || other.sessionName == _this.sessionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ActiveAcademicSession;
  return Object.hash(runtimeType,_this.sessionId,_this.sessionName);
}

@override
String toString() {
  final _this = this as ActiveAcademicSession;
  return 'ActiveAcademicSession(sessionId: ${_this.sessionId}, sessionName: ${_this.sessionName})';
}


}

/// @nodoc
abstract mixin class $ActiveAcademicSessionCopyWith<$Res>  {
  factory $ActiveAcademicSessionCopyWith(ActiveAcademicSession value, $Res Function(ActiveAcademicSession) _then) = _$ActiveAcademicSessionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'session_name') String? sessionName
});




}
/// @nodoc
class _$ActiveAcademicSessionCopyWithImpl<$Res>
    implements $ActiveAcademicSessionCopyWith<$Res> {
  _$ActiveAcademicSessionCopyWithImpl(this._self, this._then);

  final ActiveAcademicSession _self;
  final $Res Function(ActiveAcademicSession) _then;

/// Create a copy of ActiveAcademicSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,Object? sessionName = freezed,}) {
  return _then(ActiveAcademicSession(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,sessionName: freezed == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ActiveAcademicSession].
extension ActiveAcademicSessionPatterns on ActiveAcademicSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActiveAcademicSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActiveAcademicSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActiveAcademicSession value)  $default,){
final _that = this;
switch (_that) {
case _ActiveAcademicSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActiveAcademicSession value)?  $default,){
final _that = this;
switch (_that) {
case _ActiveAcademicSession() when $default != null:
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
case _ActiveAcademicSession() when $default != null:
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
case _ActiveAcademicSession():
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
case _ActiveAcademicSession() when $default != null:
return $default(_that.sessionId,_that.sessionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActiveAcademicSession implements ActiveAcademicSession {
  const _ActiveAcademicSession({@JsonKey(name: 'session_id') required this.sessionId, @JsonKey(name: 'session_name') this.sessionName});
  factory _ActiveAcademicSession.fromJson(Map<String, dynamic> json) => _$ActiveAcademicSessionFromJson(json);

@override@JsonKey(name: 'session_id') final  String sessionId;
@override@JsonKey(name: 'session_name') final  String? sessionName;

/// Create a copy of ActiveAcademicSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActiveAcademicSessionCopyWith<_ActiveAcademicSession> get copyWith => __$ActiveAcademicSessionCopyWithImpl<_ActiveAcademicSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActiveAcademicSessionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActiveAcademicSession&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.sessionName, sessionName) || other.sessionName == sessionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sessionId,sessionName);
}

@override
String toString() {
    return 'ActiveAcademicSession(sessionId: $sessionId, sessionName: $sessionName)';
}


}

/// @nodoc
abstract mixin class _$ActiveAcademicSessionCopyWith<$Res> implements $ActiveAcademicSessionCopyWith<$Res> {
  factory _$ActiveAcademicSessionCopyWith(_ActiveAcademicSession value, $Res Function(_ActiveAcademicSession) _then) = __$ActiveAcademicSessionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'session_name') String? sessionName
});




}
/// @nodoc
class __$ActiveAcademicSessionCopyWithImpl<$Res>
    implements _$ActiveAcademicSessionCopyWith<$Res> {
  __$ActiveAcademicSessionCopyWithImpl(this._self, this._then);

  final _ActiveAcademicSession _self;
  final $Res Function(_ActiveAcademicSession) _then;

/// Create a copy of ActiveAcademicSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,Object? sessionName = freezed,}) {
  return _then(_ActiveAcademicSession(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,sessionName: freezed == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
