// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_exams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TeacherExam {

@JsonKey(name: 'exam_id') String get examId;@JsonKey(name: 'exam_name') String get examName;@JsonKey(name: 'start_date') DateTime? get startDate;@JsonKey(name: 'end_date') DateTime? get endDate;@JsonKey(name: 'exam_types') ExamTypeRef? get examType;@JsonKey(name: 'academic_sessions') SessionRef? get session;
/// Create a copy of TeacherExam
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeacherExamCopyWith<TeacherExam> get copyWith => _$TeacherExamCopyWithImpl<TeacherExam>(this as TeacherExam, _$identity);

  /// Serializes this TeacherExam to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TeacherExam;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeacherExam&&(identical(other.examId, _this.examId) || other.examId == _this.examId)&&(identical(other.examName, _this.examName) || other.examName == _this.examName)&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.endDate, _this.endDate) || other.endDate == _this.endDate)&&(identical(other.examType, _this.examType) || other.examType == _this.examType)&&(identical(other.session, _this.session) || other.session == _this.session));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TeacherExam;
  return Object.hash(runtimeType,_this.examId,_this.examName,_this.startDate,_this.endDate,_this.examType,_this.session);
}

@override
String toString() {
  final _this = this as TeacherExam;
  return 'TeacherExam(examId: ${_this.examId}, examName: ${_this.examName}, startDate: ${_this.startDate}, endDate: ${_this.endDate}, examType: ${_this.examType}, session: ${_this.session})';
}


}

/// @nodoc
abstract mixin class $TeacherExamCopyWith<$Res>  {
  factory $TeacherExamCopyWith(TeacherExam value, $Res Function(TeacherExam) _then) = _$TeacherExamCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'exam_id') String examId,@JsonKey(name: 'exam_name') String examName,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'exam_types') ExamTypeRef? examType,@JsonKey(name: 'academic_sessions') SessionRef? session
});


$ExamTypeRefCopyWith<$Res>? get examType;$SessionRefCopyWith<$Res>? get session;

}
/// @nodoc
class _$TeacherExamCopyWithImpl<$Res>
    implements $TeacherExamCopyWith<$Res> {
  _$TeacherExamCopyWithImpl(this._self, this._then);

  final TeacherExam _self;
  final $Res Function(TeacherExam) _then;

/// Create a copy of TeacherExam
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? examId = null,Object? examName = null,Object? startDate = freezed,Object? endDate = freezed,Object? examType = freezed,Object? session = freezed,}) {
  return _then(TeacherExam(
examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,examName: null == examName ? _self.examName : examName // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,examType: freezed == examType ? _self.examType : examType // ignore: cast_nullable_to_non_nullable
as ExamTypeRef?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,
  ));
}
/// Create a copy of TeacherExam
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
}/// Create a copy of TeacherExam
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


/// Adds pattern-matching-related methods to [TeacherExam].
extension TeacherExamPatterns on TeacherExam {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeacherExam value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeacherExam() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeacherExam value)  $default,){
final _that = this;
switch (_that) {
case _TeacherExam():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeacherExam value)?  $default,){
final _that = this;
switch (_that) {
case _TeacherExam() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_id')  String examId, @JsonKey(name: 'exam_name')  String examName, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'exam_types')  ExamTypeRef? examType, @JsonKey(name: 'academic_sessions')  SessionRef? session)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeacherExam() when $default != null:
return $default(_that.examId,_that.examName,_that.startDate,_that.endDate,_that.examType,_that.session);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_id')  String examId, @JsonKey(name: 'exam_name')  String examName, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'exam_types')  ExamTypeRef? examType, @JsonKey(name: 'academic_sessions')  SessionRef? session)  $default,) {final _that = this;
switch (_that) {
case _TeacherExam():
return $default(_that.examId,_that.examName,_that.startDate,_that.endDate,_that.examType,_that.session);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'exam_id')  String examId, @JsonKey(name: 'exam_name')  String examName, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'exam_types')  ExamTypeRef? examType, @JsonKey(name: 'academic_sessions')  SessionRef? session)?  $default,) {final _that = this;
switch (_that) {
case _TeacherExam() when $default != null:
return $default(_that.examId,_that.examName,_that.startDate,_that.endDate,_that.examType,_that.session);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeacherExam implements TeacherExam {
  const _TeacherExam({@JsonKey(name: 'exam_id') required this.examId, @JsonKey(name: 'exam_name') required this.examName, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'end_date') this.endDate, @JsonKey(name: 'exam_types') this.examType, @JsonKey(name: 'academic_sessions') this.session});
  factory _TeacherExam.fromJson(Map<String, dynamic> json) => _$TeacherExamFromJson(json);

@override@JsonKey(name: 'exam_id') final  String examId;
@override@JsonKey(name: 'exam_name') final  String examName;
@override@JsonKey(name: 'start_date') final  DateTime? startDate;
@override@JsonKey(name: 'end_date') final  DateTime? endDate;
@override@JsonKey(name: 'exam_types') final  ExamTypeRef? examType;
@override@JsonKey(name: 'academic_sessions') final  SessionRef? session;

/// Create a copy of TeacherExam
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeacherExamCopyWith<_TeacherExam> get copyWith => __$TeacherExamCopyWithImpl<_TeacherExam>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeacherExamToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeacherExam&&(identical(other.examId, examId) || other.examId == examId)&&(identical(other.examName, examName) || other.examName == examName)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.examType, examType) || other.examType == examType)&&(identical(other.session, session) || other.session == session));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,examId,examName,startDate,endDate,examType,session);
}

@override
String toString() {
    return 'TeacherExam(examId: $examId, examName: $examName, startDate: $startDate, endDate: $endDate, examType: $examType, session: $session)';
}


}

/// @nodoc
abstract mixin class _$TeacherExamCopyWith<$Res> implements $TeacherExamCopyWith<$Res> {
  factory _$TeacherExamCopyWith(_TeacherExam value, $Res Function(_TeacherExam) _then) = __$TeacherExamCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'exam_id') String examId,@JsonKey(name: 'exam_name') String examName,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'exam_types') ExamTypeRef? examType,@JsonKey(name: 'academic_sessions') SessionRef? session
});


@override $ExamTypeRefCopyWith<$Res>? get examType;@override $SessionRefCopyWith<$Res>? get session;

}
/// @nodoc
class __$TeacherExamCopyWithImpl<$Res>
    implements _$TeacherExamCopyWith<$Res> {
  __$TeacherExamCopyWithImpl(this._self, this._then);

  final _TeacherExam _self;
  final $Res Function(_TeacherExam) _then;

/// Create a copy of TeacherExam
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? examId = null,Object? examName = null,Object? startDate = freezed,Object? endDate = freezed,Object? examType = freezed,Object? session = freezed,}) {
  return _then(_TeacherExam(
examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,examName: null == examName ? _self.examName : examName // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,examType: freezed == examType ? _self.examType : examType // ignore: cast_nullable_to_non_nullable
as ExamTypeRef?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,
  ));
}

/// Create a copy of TeacherExam
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
}/// Create a copy of TeacherExam
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
mixin _$MarksEntryStatus {

@JsonKey(name: 'exam_schedule_id') String get examScheduleId;@JsonKey(name: 'class_name') String? get className;@JsonKey(name: 'section_name') String? get sectionName;@JsonKey(name: 'subject_id') String? get subjectId;@JsonKey(name: 'subject_name') String? get subjectName;@JsonKey(name: 'total_students') int get totalStudents;@JsonKey(name: 'entered_count') int get enteredCount;@JsonKey(name: 'pending_count') int get pendingCount;
/// Create a copy of MarksEntryStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarksEntryStatusCopyWith<MarksEntryStatus> get copyWith => _$MarksEntryStatusCopyWithImpl<MarksEntryStatus>(this as MarksEntryStatus, _$identity);

  /// Serializes this MarksEntryStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MarksEntryStatus;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarksEntryStatus&&(identical(other.examScheduleId, _this.examScheduleId) || other.examScheduleId == _this.examScheduleId)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.sectionName, _this.sectionName) || other.sectionName == _this.sectionName)&&(identical(other.subjectId, _this.subjectId) || other.subjectId == _this.subjectId)&&(identical(other.subjectName, _this.subjectName) || other.subjectName == _this.subjectName)&&(identical(other.totalStudents, _this.totalStudents) || other.totalStudents == _this.totalStudents)&&(identical(other.enteredCount, _this.enteredCount) || other.enteredCount == _this.enteredCount)&&(identical(other.pendingCount, _this.pendingCount) || other.pendingCount == _this.pendingCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MarksEntryStatus;
  return Object.hash(runtimeType,_this.examScheduleId,_this.className,_this.sectionName,_this.subjectId,_this.subjectName,_this.totalStudents,_this.enteredCount,_this.pendingCount);
}

@override
String toString() {
  final _this = this as MarksEntryStatus;
  return 'MarksEntryStatus(examScheduleId: ${_this.examScheduleId}, className: ${_this.className}, sectionName: ${_this.sectionName}, subjectId: ${_this.subjectId}, subjectName: ${_this.subjectName}, totalStudents: ${_this.totalStudents}, enteredCount: ${_this.enteredCount}, pendingCount: ${_this.pendingCount})';
}


}

/// @nodoc
abstract mixin class $MarksEntryStatusCopyWith<$Res>  {
  factory $MarksEntryStatusCopyWith(MarksEntryStatus value, $Res Function(MarksEntryStatus) _then) = _$MarksEntryStatusCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'exam_schedule_id') String examScheduleId,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName,@JsonKey(name: 'subject_id') String? subjectId,@JsonKey(name: 'subject_name') String? subjectName,@JsonKey(name: 'total_students') int totalStudents,@JsonKey(name: 'entered_count') int enteredCount,@JsonKey(name: 'pending_count') int pendingCount
});




}
/// @nodoc
class _$MarksEntryStatusCopyWithImpl<$Res>
    implements $MarksEntryStatusCopyWith<$Res> {
  _$MarksEntryStatusCopyWithImpl(this._self, this._then);

  final MarksEntryStatus _self;
  final $Res Function(MarksEntryStatus) _then;

/// Create a copy of MarksEntryStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? examScheduleId = null,Object? className = freezed,Object? sectionName = freezed,Object? subjectId = freezed,Object? subjectName = freezed,Object? totalStudents = null,Object? enteredCount = null,Object? pendingCount = null,}) {
  return _then(MarksEntryStatus(
examScheduleId: null == examScheduleId ? _self.examScheduleId : examScheduleId // ignore: cast_nullable_to_non_nullable
as String,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String?,subjectName: freezed == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String?,totalStudents: null == totalStudents ? _self.totalStudents : totalStudents // ignore: cast_nullable_to_non_nullable
as int,enteredCount: null == enteredCount ? _self.enteredCount : enteredCount // ignore: cast_nullable_to_non_nullable
as int,pendingCount: null == pendingCount ? _self.pendingCount : pendingCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MarksEntryStatus].
extension MarksEntryStatusPatterns on MarksEntryStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarksEntryStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarksEntryStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarksEntryStatus value)  $default,){
final _that = this;
switch (_that) {
case _MarksEntryStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarksEntryStatus value)?  $default,){
final _that = this;
switch (_that) {
case _MarksEntryStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_schedule_id')  String examScheduleId, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'subject_name')  String? subjectName, @JsonKey(name: 'total_students')  int totalStudents, @JsonKey(name: 'entered_count')  int enteredCount, @JsonKey(name: 'pending_count')  int pendingCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarksEntryStatus() when $default != null:
return $default(_that.examScheduleId,_that.className,_that.sectionName,_that.subjectId,_that.subjectName,_that.totalStudents,_that.enteredCount,_that.pendingCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_schedule_id')  String examScheduleId, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'subject_name')  String? subjectName, @JsonKey(name: 'total_students')  int totalStudents, @JsonKey(name: 'entered_count')  int enteredCount, @JsonKey(name: 'pending_count')  int pendingCount)  $default,) {final _that = this;
switch (_that) {
case _MarksEntryStatus():
return $default(_that.examScheduleId,_that.className,_that.sectionName,_that.subjectId,_that.subjectName,_that.totalStudents,_that.enteredCount,_that.pendingCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'exam_schedule_id')  String examScheduleId, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'subject_name')  String? subjectName, @JsonKey(name: 'total_students')  int totalStudents, @JsonKey(name: 'entered_count')  int enteredCount, @JsonKey(name: 'pending_count')  int pendingCount)?  $default,) {final _that = this;
switch (_that) {
case _MarksEntryStatus() when $default != null:
return $default(_that.examScheduleId,_that.className,_that.sectionName,_that.subjectId,_that.subjectName,_that.totalStudents,_that.enteredCount,_that.pendingCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarksEntryStatus implements MarksEntryStatus {
  const _MarksEntryStatus({@JsonKey(name: 'exam_schedule_id') required this.examScheduleId, @JsonKey(name: 'class_name') this.className, @JsonKey(name: 'section_name') this.sectionName, @JsonKey(name: 'subject_id') this.subjectId, @JsonKey(name: 'subject_name') this.subjectName, @JsonKey(name: 'total_students') this.totalStudents = 0, @JsonKey(name: 'entered_count') this.enteredCount = 0, @JsonKey(name: 'pending_count') this.pendingCount = 0});
  factory _MarksEntryStatus.fromJson(Map<String, dynamic> json) => _$MarksEntryStatusFromJson(json);

@override@JsonKey(name: 'exam_schedule_id') final  String examScheduleId;
@override@JsonKey(name: 'class_name') final  String? className;
@override@JsonKey(name: 'section_name') final  String? sectionName;
@override@JsonKey(name: 'subject_id') final  String? subjectId;
@override@JsonKey(name: 'subject_name') final  String? subjectName;
@override@JsonKey(name: 'total_students') final  int totalStudents;
@override@JsonKey(name: 'entered_count') final  int enteredCount;
@override@JsonKey(name: 'pending_count') final  int pendingCount;

/// Create a copy of MarksEntryStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarksEntryStatusCopyWith<_MarksEntryStatus> get copyWith => __$MarksEntryStatusCopyWithImpl<_MarksEntryStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarksEntryStatusToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarksEntryStatus&&(identical(other.examScheduleId, examScheduleId) || other.examScheduleId == examScheduleId)&&(identical(other.className, className) || other.className == className)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.totalStudents, totalStudents) || other.totalStudents == totalStudents)&&(identical(other.enteredCount, enteredCount) || other.enteredCount == enteredCount)&&(identical(other.pendingCount, pendingCount) || other.pendingCount == pendingCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,examScheduleId,className,sectionName,subjectId,subjectName,totalStudents,enteredCount,pendingCount);
}

@override
String toString() {
    return 'MarksEntryStatus(examScheduleId: $examScheduleId, className: $className, sectionName: $sectionName, subjectId: $subjectId, subjectName: $subjectName, totalStudents: $totalStudents, enteredCount: $enteredCount, pendingCount: $pendingCount)';
}


}

/// @nodoc
abstract mixin class _$MarksEntryStatusCopyWith<$Res> implements $MarksEntryStatusCopyWith<$Res> {
  factory _$MarksEntryStatusCopyWith(_MarksEntryStatus value, $Res Function(_MarksEntryStatus) _then) = __$MarksEntryStatusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'exam_schedule_id') String examScheduleId,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName,@JsonKey(name: 'subject_id') String? subjectId,@JsonKey(name: 'subject_name') String? subjectName,@JsonKey(name: 'total_students') int totalStudents,@JsonKey(name: 'entered_count') int enteredCount,@JsonKey(name: 'pending_count') int pendingCount
});




}
/// @nodoc
class __$MarksEntryStatusCopyWithImpl<$Res>
    implements _$MarksEntryStatusCopyWith<$Res> {
  __$MarksEntryStatusCopyWithImpl(this._self, this._then);

  final _MarksEntryStatus _self;
  final $Res Function(_MarksEntryStatus) _then;

/// Create a copy of MarksEntryStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? examScheduleId = null,Object? className = freezed,Object? sectionName = freezed,Object? subjectId = freezed,Object? subjectName = freezed,Object? totalStudents = null,Object? enteredCount = null,Object? pendingCount = null,}) {
  return _then(_MarksEntryStatus(
examScheduleId: null == examScheduleId ? _self.examScheduleId : examScheduleId // ignore: cast_nullable_to_non_nullable
as String,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String?,subjectName: freezed == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String?,totalStudents: null == totalStudents ? _self.totalStudents : totalStudents // ignore: cast_nullable_to_non_nullable
as int,enteredCount: null == enteredCount ? _self.enteredCount : enteredCount // ignore: cast_nullable_to_non_nullable
as int,pendingCount: null == pendingCount ? _self.pendingCount : pendingCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ExamMarkEntry {

@JsonKey(name: 'mark_id') String get markId;@JsonKey(name: 'exam_schedule_id') String? get examScheduleId;@JsonKey(name: 'student_id') String? get studentId;@JsonKey(name: 'marks_obtained')@NullableDecimalConverter() Decimal? get marksObtained;@JsonKey(name: 'is_absent') bool get isAbsent;@JsonKey(name: 'attendance_status') String get attendanceStatus; String? get grade; String? get remarks;@JsonKey(name: 'students') StudentBrief? get student;
/// Create a copy of ExamMarkEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamMarkEntryCopyWith<ExamMarkEntry> get copyWith => _$ExamMarkEntryCopyWithImpl<ExamMarkEntry>(this as ExamMarkEntry, _$identity);

  /// Serializes this ExamMarkEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ExamMarkEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamMarkEntry&&(identical(other.markId, _this.markId) || other.markId == _this.markId)&&(identical(other.examScheduleId, _this.examScheduleId) || other.examScheduleId == _this.examScheduleId)&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.marksObtained, _this.marksObtained) || other.marksObtained == _this.marksObtained)&&(identical(other.isAbsent, _this.isAbsent) || other.isAbsent == _this.isAbsent)&&(identical(other.attendanceStatus, _this.attendanceStatus) || other.attendanceStatus == _this.attendanceStatus)&&(identical(other.grade, _this.grade) || other.grade == _this.grade)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.student, _this.student) || other.student == _this.student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ExamMarkEntry;
  return Object.hash(runtimeType,_this.markId,_this.examScheduleId,_this.studentId,_this.marksObtained,_this.isAbsent,_this.attendanceStatus,_this.grade,_this.remarks,_this.student);
}

@override
String toString() {
  final _this = this as ExamMarkEntry;
  return 'ExamMarkEntry(markId: ${_this.markId}, examScheduleId: ${_this.examScheduleId}, studentId: ${_this.studentId}, marksObtained: ${_this.marksObtained}, isAbsent: ${_this.isAbsent}, attendanceStatus: ${_this.attendanceStatus}, grade: ${_this.grade}, remarks: ${_this.remarks}, student: ${_this.student})';
}


}

/// @nodoc
abstract mixin class $ExamMarkEntryCopyWith<$Res>  {
  factory $ExamMarkEntryCopyWith(ExamMarkEntry value, $Res Function(ExamMarkEntry) _then) = _$ExamMarkEntryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'mark_id') String markId,@JsonKey(name: 'exam_schedule_id') String? examScheduleId,@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'marks_obtained')@NullableDecimalConverter() Decimal? marksObtained,@JsonKey(name: 'is_absent') bool isAbsent,@JsonKey(name: 'attendance_status') String attendanceStatus, String? grade, String? remarks,@JsonKey(name: 'students') StudentBrief? student
});


$StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class _$ExamMarkEntryCopyWithImpl<$Res>
    implements $ExamMarkEntryCopyWith<$Res> {
  _$ExamMarkEntryCopyWithImpl(this._self, this._then);

  final ExamMarkEntry _self;
  final $Res Function(ExamMarkEntry) _then;

/// Create a copy of ExamMarkEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? markId = null,Object? examScheduleId = freezed,Object? studentId = freezed,Object? marksObtained = freezed,Object? isAbsent = null,Object? attendanceStatus = null,Object? grade = freezed,Object? remarks = freezed,Object? student = freezed,}) {
  return _then(ExamMarkEntry(
markId: null == markId ? _self.markId : markId // ignore: cast_nullable_to_non_nullable
as String,examScheduleId: freezed == examScheduleId ? _self.examScheduleId : examScheduleId // ignore: cast_nullable_to_non_nullable
as String?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,marksObtained: freezed == marksObtained ? _self.marksObtained : marksObtained // ignore: cast_nullable_to_non_nullable
as Decimal?,isAbsent: null == isAbsent ? _self.isAbsent : isAbsent // ignore: cast_nullable_to_non_nullable
as bool,attendanceStatus: null == attendanceStatus ? _self.attendanceStatus : attendanceStatus // ignore: cast_nullable_to_non_nullable
as String,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,
  ));
}
/// Create a copy of ExamMarkEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentBriefCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $StudentBriefCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExamMarkEntry].
extension ExamMarkEntryPatterns on ExamMarkEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamMarkEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamMarkEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamMarkEntry value)  $default,){
final _that = this;
switch (_that) {
case _ExamMarkEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamMarkEntry value)?  $default,){
final _that = this;
switch (_that) {
case _ExamMarkEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'mark_id')  String markId, @JsonKey(name: 'exam_schedule_id')  String? examScheduleId, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'marks_obtained')@NullableDecimalConverter()  Decimal? marksObtained, @JsonKey(name: 'is_absent')  bool isAbsent, @JsonKey(name: 'attendance_status')  String attendanceStatus,  String? grade,  String? remarks, @JsonKey(name: 'students')  StudentBrief? student)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamMarkEntry() when $default != null:
return $default(_that.markId,_that.examScheduleId,_that.studentId,_that.marksObtained,_that.isAbsent,_that.attendanceStatus,_that.grade,_that.remarks,_that.student);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'mark_id')  String markId, @JsonKey(name: 'exam_schedule_id')  String? examScheduleId, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'marks_obtained')@NullableDecimalConverter()  Decimal? marksObtained, @JsonKey(name: 'is_absent')  bool isAbsent, @JsonKey(name: 'attendance_status')  String attendanceStatus,  String? grade,  String? remarks, @JsonKey(name: 'students')  StudentBrief? student)  $default,) {final _that = this;
switch (_that) {
case _ExamMarkEntry():
return $default(_that.markId,_that.examScheduleId,_that.studentId,_that.marksObtained,_that.isAbsent,_that.attendanceStatus,_that.grade,_that.remarks,_that.student);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'mark_id')  String markId, @JsonKey(name: 'exam_schedule_id')  String? examScheduleId, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'marks_obtained')@NullableDecimalConverter()  Decimal? marksObtained, @JsonKey(name: 'is_absent')  bool isAbsent, @JsonKey(name: 'attendance_status')  String attendanceStatus,  String? grade,  String? remarks, @JsonKey(name: 'students')  StudentBrief? student)?  $default,) {final _that = this;
switch (_that) {
case _ExamMarkEntry() when $default != null:
return $default(_that.markId,_that.examScheduleId,_that.studentId,_that.marksObtained,_that.isAbsent,_that.attendanceStatus,_that.grade,_that.remarks,_that.student);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamMarkEntry implements ExamMarkEntry {
  const _ExamMarkEntry({@JsonKey(name: 'mark_id') required this.markId, @JsonKey(name: 'exam_schedule_id') this.examScheduleId, @JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'marks_obtained')@NullableDecimalConverter() this.marksObtained, @JsonKey(name: 'is_absent') this.isAbsent = false, @JsonKey(name: 'attendance_status') this.attendanceStatus = 'PENDING', this.grade, this.remarks, @JsonKey(name: 'students') this.student});
  factory _ExamMarkEntry.fromJson(Map<String, dynamic> json) => _$ExamMarkEntryFromJson(json);

@override@JsonKey(name: 'mark_id') final  String markId;
@override@JsonKey(name: 'exam_schedule_id') final  String? examScheduleId;
@override@JsonKey(name: 'student_id') final  String? studentId;
@override@JsonKey(name: 'marks_obtained')@NullableDecimalConverter() final  Decimal? marksObtained;
@override@JsonKey(name: 'is_absent') final  bool isAbsent;
@override@JsonKey(name: 'attendance_status') final  String attendanceStatus;
@override final  String? grade;
@override final  String? remarks;
@override@JsonKey(name: 'students') final  StudentBrief? student;

/// Create a copy of ExamMarkEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamMarkEntryCopyWith<_ExamMarkEntry> get copyWith => __$ExamMarkEntryCopyWithImpl<_ExamMarkEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamMarkEntryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamMarkEntry&&(identical(other.markId, markId) || other.markId == markId)&&(identical(other.examScheduleId, examScheduleId) || other.examScheduleId == examScheduleId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.marksObtained, marksObtained) || other.marksObtained == marksObtained)&&(identical(other.isAbsent, isAbsent) || other.isAbsent == isAbsent)&&(identical(other.attendanceStatus, attendanceStatus) || other.attendanceStatus == attendanceStatus)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,markId,examScheduleId,studentId,marksObtained,isAbsent,attendanceStatus,grade,remarks,student);
}

@override
String toString() {
    return 'ExamMarkEntry(markId: $markId, examScheduleId: $examScheduleId, studentId: $studentId, marksObtained: $marksObtained, isAbsent: $isAbsent, attendanceStatus: $attendanceStatus, grade: $grade, remarks: $remarks, student: $student)';
}


}

/// @nodoc
abstract mixin class _$ExamMarkEntryCopyWith<$Res> implements $ExamMarkEntryCopyWith<$Res> {
  factory _$ExamMarkEntryCopyWith(_ExamMarkEntry value, $Res Function(_ExamMarkEntry) _then) = __$ExamMarkEntryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'mark_id') String markId,@JsonKey(name: 'exam_schedule_id') String? examScheduleId,@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'marks_obtained')@NullableDecimalConverter() Decimal? marksObtained,@JsonKey(name: 'is_absent') bool isAbsent,@JsonKey(name: 'attendance_status') String attendanceStatus, String? grade, String? remarks,@JsonKey(name: 'students') StudentBrief? student
});


@override $StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class __$ExamMarkEntryCopyWithImpl<$Res>
    implements _$ExamMarkEntryCopyWith<$Res> {
  __$ExamMarkEntryCopyWithImpl(this._self, this._then);

  final _ExamMarkEntry _self;
  final $Res Function(_ExamMarkEntry) _then;

/// Create a copy of ExamMarkEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? markId = null,Object? examScheduleId = freezed,Object? studentId = freezed,Object? marksObtained = freezed,Object? isAbsent = null,Object? attendanceStatus = null,Object? grade = freezed,Object? remarks = freezed,Object? student = freezed,}) {
  return _then(_ExamMarkEntry(
markId: null == markId ? _self.markId : markId // ignore: cast_nullable_to_non_nullable
as String,examScheduleId: freezed == examScheduleId ? _self.examScheduleId : examScheduleId // ignore: cast_nullable_to_non_nullable
as String?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,marksObtained: freezed == marksObtained ? _self.marksObtained : marksObtained // ignore: cast_nullable_to_non_nullable
as Decimal?,isAbsent: null == isAbsent ? _self.isAbsent : isAbsent // ignore: cast_nullable_to_non_nullable
as bool,attendanceStatus: null == attendanceStatus ? _self.attendanceStatus : attendanceStatus // ignore: cast_nullable_to_non_nullable
as String,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,
  ));
}

/// Create a copy of ExamMarkEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentBriefCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $StudentBriefCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}

// dart format on
