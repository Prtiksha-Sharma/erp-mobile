// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_exams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExamSchedule {

@JsonKey(name: 'exam_schedule_id') String get examScheduleId;@JsonKey(name: 'exam_date') DateTime? get examDate;@JsonKey(name: 'start_time') DateTime? get startTime;@JsonKey(name: 'end_time') DateTime? get endTime; String? get room;@JsonKey(name: 'max_marks')@LooseNumConverter() num? get maxMarks;@JsonKey(name: 'exams') ExamInfo get exam;@JsonKey(name: 'academic_subjects') SubjectRef? get subject;
/// Create a copy of ExamSchedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamScheduleCopyWith<ExamSchedule> get copyWith => _$ExamScheduleCopyWithImpl<ExamSchedule>(this as ExamSchedule, _$identity);

  /// Serializes this ExamSchedule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ExamSchedule;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamSchedule&&(identical(other.examScheduleId, _this.examScheduleId) || other.examScheduleId == _this.examScheduleId)&&(identical(other.examDate, _this.examDate) || other.examDate == _this.examDate)&&(identical(other.startTime, _this.startTime) || other.startTime == _this.startTime)&&(identical(other.endTime, _this.endTime) || other.endTime == _this.endTime)&&(identical(other.room, _this.room) || other.room == _this.room)&&(identical(other.maxMarks, _this.maxMarks) || other.maxMarks == _this.maxMarks)&&(identical(other.exam, _this.exam) || other.exam == _this.exam)&&(identical(other.subject, _this.subject) || other.subject == _this.subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ExamSchedule;
  return Object.hash(runtimeType,_this.examScheduleId,_this.examDate,_this.startTime,_this.endTime,_this.room,_this.maxMarks,_this.exam,_this.subject);
}

@override
String toString() {
  final _this = this as ExamSchedule;
  return 'ExamSchedule(examScheduleId: ${_this.examScheduleId}, examDate: ${_this.examDate}, startTime: ${_this.startTime}, endTime: ${_this.endTime}, room: ${_this.room}, maxMarks: ${_this.maxMarks}, exam: ${_this.exam}, subject: ${_this.subject})';
}


}

/// @nodoc
abstract mixin class $ExamScheduleCopyWith<$Res>  {
  factory $ExamScheduleCopyWith(ExamSchedule value, $Res Function(ExamSchedule) _then) = _$ExamScheduleCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'exam_schedule_id') String examScheduleId,@JsonKey(name: 'exam_date') DateTime? examDate,@JsonKey(name: 'start_time') DateTime? startTime,@JsonKey(name: 'end_time') DateTime? endTime, String? room,@JsonKey(name: 'max_marks')@LooseNumConverter() num? maxMarks,@JsonKey(name: 'exams') ExamInfo exam,@JsonKey(name: 'academic_subjects') SubjectRef? subject
});


$ExamInfoCopyWith<$Res> get exam;$SubjectRefCopyWith<$Res>? get subject;

}
/// @nodoc
class _$ExamScheduleCopyWithImpl<$Res>
    implements $ExamScheduleCopyWith<$Res> {
  _$ExamScheduleCopyWithImpl(this._self, this._then);

  final ExamSchedule _self;
  final $Res Function(ExamSchedule) _then;

/// Create a copy of ExamSchedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? examScheduleId = null,Object? examDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? room = freezed,Object? maxMarks = freezed,Object? exam = null,Object? subject = freezed,}) {
  return _then(ExamSchedule(
examScheduleId: null == examScheduleId ? _self.examScheduleId : examScheduleId // ignore: cast_nullable_to_non_nullable
as String,examDate: freezed == examDate ? _self.examDate : examDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String?,maxMarks: freezed == maxMarks ? _self.maxMarks : maxMarks // ignore: cast_nullable_to_non_nullable
as num?,exam: null == exam ? _self.exam : exam // ignore: cast_nullable_to_non_nullable
as ExamInfo,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,
  ));
}
/// Create a copy of ExamSchedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExamInfoCopyWith<$Res> get exam {
  
  return $ExamInfoCopyWith<$Res>(_self.exam, (value) {
    return _then(_self.copyWith(exam: value));
  });
}/// Create a copy of ExamSchedule
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


/// Adds pattern-matching-related methods to [ExamSchedule].
extension ExamSchedulePatterns on ExamSchedule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamSchedule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamSchedule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamSchedule value)  $default,){
final _that = this;
switch (_that) {
case _ExamSchedule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamSchedule value)?  $default,){
final _that = this;
switch (_that) {
case _ExamSchedule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_schedule_id')  String examScheduleId, @JsonKey(name: 'exam_date')  DateTime? examDate, @JsonKey(name: 'start_time')  DateTime? startTime, @JsonKey(name: 'end_time')  DateTime? endTime,  String? room, @JsonKey(name: 'max_marks')@LooseNumConverter()  num? maxMarks, @JsonKey(name: 'exams')  ExamInfo exam, @JsonKey(name: 'academic_subjects')  SubjectRef? subject)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamSchedule() when $default != null:
return $default(_that.examScheduleId,_that.examDate,_that.startTime,_that.endTime,_that.room,_that.maxMarks,_that.exam,_that.subject);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_schedule_id')  String examScheduleId, @JsonKey(name: 'exam_date')  DateTime? examDate, @JsonKey(name: 'start_time')  DateTime? startTime, @JsonKey(name: 'end_time')  DateTime? endTime,  String? room, @JsonKey(name: 'max_marks')@LooseNumConverter()  num? maxMarks, @JsonKey(name: 'exams')  ExamInfo exam, @JsonKey(name: 'academic_subjects')  SubjectRef? subject)  $default,) {final _that = this;
switch (_that) {
case _ExamSchedule():
return $default(_that.examScheduleId,_that.examDate,_that.startTime,_that.endTime,_that.room,_that.maxMarks,_that.exam,_that.subject);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'exam_schedule_id')  String examScheduleId, @JsonKey(name: 'exam_date')  DateTime? examDate, @JsonKey(name: 'start_time')  DateTime? startTime, @JsonKey(name: 'end_time')  DateTime? endTime,  String? room, @JsonKey(name: 'max_marks')@LooseNumConverter()  num? maxMarks, @JsonKey(name: 'exams')  ExamInfo exam, @JsonKey(name: 'academic_subjects')  SubjectRef? subject)?  $default,) {final _that = this;
switch (_that) {
case _ExamSchedule() when $default != null:
return $default(_that.examScheduleId,_that.examDate,_that.startTime,_that.endTime,_that.room,_that.maxMarks,_that.exam,_that.subject);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamSchedule implements ExamSchedule {
  const _ExamSchedule({@JsonKey(name: 'exam_schedule_id') required this.examScheduleId, @JsonKey(name: 'exam_date') this.examDate, @JsonKey(name: 'start_time') this.startTime, @JsonKey(name: 'end_time') this.endTime, this.room, @JsonKey(name: 'max_marks')@LooseNumConverter() this.maxMarks, @JsonKey(name: 'exams') required this.exam, @JsonKey(name: 'academic_subjects') this.subject});
  factory _ExamSchedule.fromJson(Map<String, dynamic> json) => _$ExamScheduleFromJson(json);

@override@JsonKey(name: 'exam_schedule_id') final  String examScheduleId;
@override@JsonKey(name: 'exam_date') final  DateTime? examDate;
@override@JsonKey(name: 'start_time') final  DateTime? startTime;
@override@JsonKey(name: 'end_time') final  DateTime? endTime;
@override final  String? room;
@override@JsonKey(name: 'max_marks')@LooseNumConverter() final  num? maxMarks;
@override@JsonKey(name: 'exams') final  ExamInfo exam;
@override@JsonKey(name: 'academic_subjects') final  SubjectRef? subject;

/// Create a copy of ExamSchedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamScheduleCopyWith<_ExamSchedule> get copyWith => __$ExamScheduleCopyWithImpl<_ExamSchedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamScheduleToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamSchedule&&(identical(other.examScheduleId, examScheduleId) || other.examScheduleId == examScheduleId)&&(identical(other.examDate, examDate) || other.examDate == examDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.room, room) || other.room == room)&&(identical(other.maxMarks, maxMarks) || other.maxMarks == maxMarks)&&(identical(other.exam, exam) || other.exam == exam)&&(identical(other.subject, subject) || other.subject == subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,examScheduleId,examDate,startTime,endTime,room,maxMarks,exam,subject);
}

@override
String toString() {
    return 'ExamSchedule(examScheduleId: $examScheduleId, examDate: $examDate, startTime: $startTime, endTime: $endTime, room: $room, maxMarks: $maxMarks, exam: $exam, subject: $subject)';
}


}

/// @nodoc
abstract mixin class _$ExamScheduleCopyWith<$Res> implements $ExamScheduleCopyWith<$Res> {
  factory _$ExamScheduleCopyWith(_ExamSchedule value, $Res Function(_ExamSchedule) _then) = __$ExamScheduleCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'exam_schedule_id') String examScheduleId,@JsonKey(name: 'exam_date') DateTime? examDate,@JsonKey(name: 'start_time') DateTime? startTime,@JsonKey(name: 'end_time') DateTime? endTime, String? room,@JsonKey(name: 'max_marks')@LooseNumConverter() num? maxMarks,@JsonKey(name: 'exams') ExamInfo exam,@JsonKey(name: 'academic_subjects') SubjectRef? subject
});


@override $ExamInfoCopyWith<$Res> get exam;@override $SubjectRefCopyWith<$Res>? get subject;

}
/// @nodoc
class __$ExamScheduleCopyWithImpl<$Res>
    implements _$ExamScheduleCopyWith<$Res> {
  __$ExamScheduleCopyWithImpl(this._self, this._then);

  final _ExamSchedule _self;
  final $Res Function(_ExamSchedule) _then;

/// Create a copy of ExamSchedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? examScheduleId = null,Object? examDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? room = freezed,Object? maxMarks = freezed,Object? exam = null,Object? subject = freezed,}) {
  return _then(_ExamSchedule(
examScheduleId: null == examScheduleId ? _self.examScheduleId : examScheduleId // ignore: cast_nullable_to_non_nullable
as String,examDate: freezed == examDate ? _self.examDate : examDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String?,maxMarks: freezed == maxMarks ? _self.maxMarks : maxMarks // ignore: cast_nullable_to_non_nullable
as num?,exam: null == exam ? _self.exam : exam // ignore: cast_nullable_to_non_nullable
as ExamInfo,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,
  ));
}

/// Create a copy of ExamSchedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExamInfoCopyWith<$Res> get exam {
  
  return $ExamInfoCopyWith<$Res>(_self.exam, (value) {
    return _then(_self.copyWith(exam: value));
  });
}/// Create a copy of ExamSchedule
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
mixin _$ExamInfo {

@JsonKey(name: 'exam_id') String get examId;@JsonKey(name: 'exam_name') String get examName;@JsonKey(name: 'exam_types') ExamTypeRef? get examType;
/// Create a copy of ExamInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamInfoCopyWith<ExamInfo> get copyWith => _$ExamInfoCopyWithImpl<ExamInfo>(this as ExamInfo, _$identity);

  /// Serializes this ExamInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ExamInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamInfo&&(identical(other.examId, _this.examId) || other.examId == _this.examId)&&(identical(other.examName, _this.examName) || other.examName == _this.examName)&&(identical(other.examType, _this.examType) || other.examType == _this.examType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ExamInfo;
  return Object.hash(runtimeType,_this.examId,_this.examName,_this.examType);
}

@override
String toString() {
  final _this = this as ExamInfo;
  return 'ExamInfo(examId: ${_this.examId}, examName: ${_this.examName}, examType: ${_this.examType})';
}


}

/// @nodoc
abstract mixin class $ExamInfoCopyWith<$Res>  {
  factory $ExamInfoCopyWith(ExamInfo value, $Res Function(ExamInfo) _then) = _$ExamInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'exam_id') String examId,@JsonKey(name: 'exam_name') String examName,@JsonKey(name: 'exam_types') ExamTypeRef? examType
});


$ExamTypeRefCopyWith<$Res>? get examType;

}
/// @nodoc
class _$ExamInfoCopyWithImpl<$Res>
    implements $ExamInfoCopyWith<$Res> {
  _$ExamInfoCopyWithImpl(this._self, this._then);

  final ExamInfo _self;
  final $Res Function(ExamInfo) _then;

/// Create a copy of ExamInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? examId = null,Object? examName = null,Object? examType = freezed,}) {
  return _then(ExamInfo(
examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,examName: null == examName ? _self.examName : examName // ignore: cast_nullable_to_non_nullable
as String,examType: freezed == examType ? _self.examType : examType // ignore: cast_nullable_to_non_nullable
as ExamTypeRef?,
  ));
}
/// Create a copy of ExamInfo
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
}
}


/// Adds pattern-matching-related methods to [ExamInfo].
extension ExamInfoPatterns on ExamInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamInfo value)  $default,){
final _that = this;
switch (_that) {
case _ExamInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ExamInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_id')  String examId, @JsonKey(name: 'exam_name')  String examName, @JsonKey(name: 'exam_types')  ExamTypeRef? examType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamInfo() when $default != null:
return $default(_that.examId,_that.examName,_that.examType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_id')  String examId, @JsonKey(name: 'exam_name')  String examName, @JsonKey(name: 'exam_types')  ExamTypeRef? examType)  $default,) {final _that = this;
switch (_that) {
case _ExamInfo():
return $default(_that.examId,_that.examName,_that.examType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'exam_id')  String examId, @JsonKey(name: 'exam_name')  String examName, @JsonKey(name: 'exam_types')  ExamTypeRef? examType)?  $default,) {final _that = this;
switch (_that) {
case _ExamInfo() when $default != null:
return $default(_that.examId,_that.examName,_that.examType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamInfo implements ExamInfo {
  const _ExamInfo({@JsonKey(name: 'exam_id') required this.examId, @JsonKey(name: 'exam_name') required this.examName, @JsonKey(name: 'exam_types') this.examType});
  factory _ExamInfo.fromJson(Map<String, dynamic> json) => _$ExamInfoFromJson(json);

@override@JsonKey(name: 'exam_id') final  String examId;
@override@JsonKey(name: 'exam_name') final  String examName;
@override@JsonKey(name: 'exam_types') final  ExamTypeRef? examType;

/// Create a copy of ExamInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamInfoCopyWith<_ExamInfo> get copyWith => __$ExamInfoCopyWithImpl<_ExamInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamInfoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamInfo&&(identical(other.examId, examId) || other.examId == examId)&&(identical(other.examName, examName) || other.examName == examName)&&(identical(other.examType, examType) || other.examType == examType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,examId,examName,examType);
}

@override
String toString() {
    return 'ExamInfo(examId: $examId, examName: $examName, examType: $examType)';
}


}

/// @nodoc
abstract mixin class _$ExamInfoCopyWith<$Res> implements $ExamInfoCopyWith<$Res> {
  factory _$ExamInfoCopyWith(_ExamInfo value, $Res Function(_ExamInfo) _then) = __$ExamInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'exam_id') String examId,@JsonKey(name: 'exam_name') String examName,@JsonKey(name: 'exam_types') ExamTypeRef? examType
});


@override $ExamTypeRefCopyWith<$Res>? get examType;

}
/// @nodoc
class __$ExamInfoCopyWithImpl<$Res>
    implements _$ExamInfoCopyWith<$Res> {
  __$ExamInfoCopyWithImpl(this._self, this._then);

  final _ExamInfo _self;
  final $Res Function(_ExamInfo) _then;

/// Create a copy of ExamInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? examId = null,Object? examName = null,Object? examType = freezed,}) {
  return _then(_ExamInfo(
examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,examName: null == examName ? _self.examName : examName // ignore: cast_nullable_to_non_nullable
as String,examType: freezed == examType ? _self.examType : examType // ignore: cast_nullable_to_non_nullable
as ExamTypeRef?,
  ));
}

/// Create a copy of ExamInfo
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
}
}


/// @nodoc
mixin _$ExamTypeRef {

@JsonKey(name: 'type_name') String? get typeName;
/// Create a copy of ExamTypeRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamTypeRefCopyWith<ExamTypeRef> get copyWith => _$ExamTypeRefCopyWithImpl<ExamTypeRef>(this as ExamTypeRef, _$identity);

  /// Serializes this ExamTypeRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ExamTypeRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamTypeRef&&(identical(other.typeName, _this.typeName) || other.typeName == _this.typeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ExamTypeRef;
  return Object.hash(runtimeType,_this.typeName);
}

@override
String toString() {
  final _this = this as ExamTypeRef;
  return 'ExamTypeRef(typeName: ${_this.typeName})';
}


}

/// @nodoc
abstract mixin class $ExamTypeRefCopyWith<$Res>  {
  factory $ExamTypeRefCopyWith(ExamTypeRef value, $Res Function(ExamTypeRef) _then) = _$ExamTypeRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'type_name') String? typeName
});




}
/// @nodoc
class _$ExamTypeRefCopyWithImpl<$Res>
    implements $ExamTypeRefCopyWith<$Res> {
  _$ExamTypeRefCopyWithImpl(this._self, this._then);

  final ExamTypeRef _self;
  final $Res Function(ExamTypeRef) _then;

/// Create a copy of ExamTypeRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? typeName = freezed,}) {
  return _then(ExamTypeRef(
typeName: freezed == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamTypeRef].
extension ExamTypeRefPatterns on ExamTypeRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamTypeRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamTypeRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamTypeRef value)  $default,){
final _that = this;
switch (_that) {
case _ExamTypeRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamTypeRef value)?  $default,){
final _that = this;
switch (_that) {
case _ExamTypeRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'type_name')  String? typeName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamTypeRef() when $default != null:
return $default(_that.typeName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'type_name')  String? typeName)  $default,) {final _that = this;
switch (_that) {
case _ExamTypeRef():
return $default(_that.typeName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'type_name')  String? typeName)?  $default,) {final _that = this;
switch (_that) {
case _ExamTypeRef() when $default != null:
return $default(_that.typeName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamTypeRef implements ExamTypeRef {
  const _ExamTypeRef({@JsonKey(name: 'type_name') this.typeName});
  factory _ExamTypeRef.fromJson(Map<String, dynamic> json) => _$ExamTypeRefFromJson(json);

@override@JsonKey(name: 'type_name') final  String? typeName;

/// Create a copy of ExamTypeRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamTypeRefCopyWith<_ExamTypeRef> get copyWith => __$ExamTypeRefCopyWithImpl<_ExamTypeRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamTypeRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamTypeRef&&(identical(other.typeName, typeName) || other.typeName == typeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,typeName);
}

@override
String toString() {
    return 'ExamTypeRef(typeName: $typeName)';
}


}

/// @nodoc
abstract mixin class _$ExamTypeRefCopyWith<$Res> implements $ExamTypeRefCopyWith<$Res> {
  factory _$ExamTypeRefCopyWith(_ExamTypeRef value, $Res Function(_ExamTypeRef) _then) = __$ExamTypeRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'type_name') String? typeName
});




}
/// @nodoc
class __$ExamTypeRefCopyWithImpl<$Res>
    implements _$ExamTypeRefCopyWith<$Res> {
  __$ExamTypeRefCopyWithImpl(this._self, this._then);

  final _ExamTypeRef _self;
  final $Res Function(_ExamTypeRef) _then;

/// Create a copy of ExamTypeRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? typeName = freezed,}) {
  return _then(_ExamTypeRef(
typeName: freezed == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReportCard {

@JsonKey(name: 'is_published') bool get isPublished; String? get message; ReportCardStudent? get student;
/// Create a copy of ReportCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportCardCopyWith<ReportCard> get copyWith => _$ReportCardCopyWithImpl<ReportCard>(this as ReportCard, _$identity);

  /// Serializes this ReportCard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReportCard;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportCard&&(identical(other.isPublished, _this.isPublished) || other.isPublished == _this.isPublished)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.student, _this.student) || other.student == _this.student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReportCard;
  return Object.hash(runtimeType,_this.isPublished,_this.message,_this.student);
}

@override
String toString() {
  final _this = this as ReportCard;
  return 'ReportCard(isPublished: ${_this.isPublished}, message: ${_this.message}, student: ${_this.student})';
}


}

/// @nodoc
abstract mixin class $ReportCardCopyWith<$Res>  {
  factory $ReportCardCopyWith(ReportCard value, $Res Function(ReportCard) _then) = _$ReportCardCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'is_published') bool isPublished, String? message, ReportCardStudent? student
});


$ReportCardStudentCopyWith<$Res>? get student;

}
/// @nodoc
class _$ReportCardCopyWithImpl<$Res>
    implements $ReportCardCopyWith<$Res> {
  _$ReportCardCopyWithImpl(this._self, this._then);

  final ReportCard _self;
  final $Res Function(ReportCard) _then;

/// Create a copy of ReportCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isPublished = null,Object? message = freezed,Object? student = freezed,}) {
  return _then(ReportCard(
isPublished: null == isPublished ? _self.isPublished : isPublished // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as ReportCardStudent?,
  ));
}
/// Create a copy of ReportCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportCardStudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $ReportCardStudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReportCard].
extension ReportCardPatterns on ReportCard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportCard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportCard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportCard value)  $default,){
final _that = this;
switch (_that) {
case _ReportCard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportCard value)?  $default,){
final _that = this;
switch (_that) {
case _ReportCard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_published')  bool isPublished,  String? message,  ReportCardStudent? student)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportCard() when $default != null:
return $default(_that.isPublished,_that.message,_that.student);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_published')  bool isPublished,  String? message,  ReportCardStudent? student)  $default,) {final _that = this;
switch (_that) {
case _ReportCard():
return $default(_that.isPublished,_that.message,_that.student);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'is_published')  bool isPublished,  String? message,  ReportCardStudent? student)?  $default,) {final _that = this;
switch (_that) {
case _ReportCard() when $default != null:
return $default(_that.isPublished,_that.message,_that.student);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportCard implements ReportCard {
  const _ReportCard({@JsonKey(name: 'is_published') this.isPublished = false, this.message, this.student});
  factory _ReportCard.fromJson(Map<String, dynamic> json) => _$ReportCardFromJson(json);

@override@JsonKey(name: 'is_published') final  bool isPublished;
@override final  String? message;
@override final  ReportCardStudent? student;

/// Create a copy of ReportCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportCardCopyWith<_ReportCard> get copyWith => __$ReportCardCopyWithImpl<_ReportCard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportCardToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportCard&&(identical(other.isPublished, isPublished) || other.isPublished == isPublished)&&(identical(other.message, message) || other.message == message)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,isPublished,message,student);
}

@override
String toString() {
    return 'ReportCard(isPublished: $isPublished, message: $message, student: $student)';
}


}

/// @nodoc
abstract mixin class _$ReportCardCopyWith<$Res> implements $ReportCardCopyWith<$Res> {
  factory _$ReportCardCopyWith(_ReportCard value, $Res Function(_ReportCard) _then) = __$ReportCardCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'is_published') bool isPublished, String? message, ReportCardStudent? student
});


@override $ReportCardStudentCopyWith<$Res>? get student;

}
/// @nodoc
class __$ReportCardCopyWithImpl<$Res>
    implements _$ReportCardCopyWith<$Res> {
  __$ReportCardCopyWithImpl(this._self, this._then);

  final _ReportCard _self;
  final $Res Function(_ReportCard) _then;

/// Create a copy of ReportCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isPublished = null,Object? message = freezed,Object? student = freezed,}) {
  return _then(_ReportCard(
isPublished: null == isPublished ? _self.isPublished : isPublished // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as ReportCardStudent?,
  ));
}

/// Create a copy of ReportCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportCardStudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $ReportCardStudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// @nodoc
mixin _$ReportCardStudent {

 List<ReportCardSubject> get subjects;@JsonKey(name: 'total_obtained')@DecimalConverter() Decimal get totalObtained;@JsonKey(name: 'total_max')@DecimalConverter() Decimal get totalMax;@JsonKey(name: 'percentage')@NullableDecimalConverter() Decimal? get percentage;@LooseNumConverter() num? get rank;@JsonKey(name: 'overall_result') String? get overallResult;
/// Create a copy of ReportCardStudent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportCardStudentCopyWith<ReportCardStudent> get copyWith => _$ReportCardStudentCopyWithImpl<ReportCardStudent>(this as ReportCardStudent, _$identity);

  /// Serializes this ReportCardStudent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReportCardStudent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportCardStudent&&const DeepCollectionEquality().equals(other.subjects, _this.subjects)&&(identical(other.totalObtained, _this.totalObtained) || other.totalObtained == _this.totalObtained)&&(identical(other.totalMax, _this.totalMax) || other.totalMax == _this.totalMax)&&(identical(other.percentage, _this.percentage) || other.percentage == _this.percentage)&&(identical(other.rank, _this.rank) || other.rank == _this.rank)&&(identical(other.overallResult, _this.overallResult) || other.overallResult == _this.overallResult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReportCardStudent;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.subjects),_this.totalObtained,_this.totalMax,_this.percentage,_this.rank,_this.overallResult);
}

@override
String toString() {
  final _this = this as ReportCardStudent;
  return 'ReportCardStudent(subjects: ${_this.subjects}, totalObtained: ${_this.totalObtained}, totalMax: ${_this.totalMax}, percentage: ${_this.percentage}, rank: ${_this.rank}, overallResult: ${_this.overallResult})';
}


}

/// @nodoc
abstract mixin class $ReportCardStudentCopyWith<$Res>  {
  factory $ReportCardStudentCopyWith(ReportCardStudent value, $Res Function(ReportCardStudent) _then) = _$ReportCardStudentCopyWithImpl;
@useResult
$Res call({
 List<ReportCardSubject> subjects,@JsonKey(name: 'total_obtained')@DecimalConverter() Decimal totalObtained,@JsonKey(name: 'total_max')@DecimalConverter() Decimal totalMax,@JsonKey(name: 'percentage')@NullableDecimalConverter() Decimal? percentage,@LooseNumConverter() num? rank,@JsonKey(name: 'overall_result') String? overallResult
});




}
/// @nodoc
class _$ReportCardStudentCopyWithImpl<$Res>
    implements $ReportCardStudentCopyWith<$Res> {
  _$ReportCardStudentCopyWithImpl(this._self, this._then);

  final ReportCardStudent _self;
  final $Res Function(ReportCardStudent) _then;

/// Create a copy of ReportCardStudent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subjects = null,Object? totalObtained = null,Object? totalMax = null,Object? percentage = freezed,Object? rank = freezed,Object? overallResult = freezed,}) {
  return _then(ReportCardStudent(
subjects: null == subjects ? _self.subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<ReportCardSubject>,totalObtained: null == totalObtained ? _self.totalObtained : totalObtained // ignore: cast_nullable_to_non_nullable
as Decimal,totalMax: null == totalMax ? _self.totalMax : totalMax // ignore: cast_nullable_to_non_nullable
as Decimal,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as Decimal?,rank: freezed == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as num?,overallResult: freezed == overallResult ? _self.overallResult : overallResult // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportCardStudent].
extension ReportCardStudentPatterns on ReportCardStudent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportCardStudent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportCardStudent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportCardStudent value)  $default,){
final _that = this;
switch (_that) {
case _ReportCardStudent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportCardStudent value)?  $default,){
final _that = this;
switch (_that) {
case _ReportCardStudent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ReportCardSubject> subjects, @JsonKey(name: 'total_obtained')@DecimalConverter()  Decimal totalObtained, @JsonKey(name: 'total_max')@DecimalConverter()  Decimal totalMax, @JsonKey(name: 'percentage')@NullableDecimalConverter()  Decimal? percentage, @LooseNumConverter()  num? rank, @JsonKey(name: 'overall_result')  String? overallResult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportCardStudent() when $default != null:
return $default(_that.subjects,_that.totalObtained,_that.totalMax,_that.percentage,_that.rank,_that.overallResult);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ReportCardSubject> subjects, @JsonKey(name: 'total_obtained')@DecimalConverter()  Decimal totalObtained, @JsonKey(name: 'total_max')@DecimalConverter()  Decimal totalMax, @JsonKey(name: 'percentage')@NullableDecimalConverter()  Decimal? percentage, @LooseNumConverter()  num? rank, @JsonKey(name: 'overall_result')  String? overallResult)  $default,) {final _that = this;
switch (_that) {
case _ReportCardStudent():
return $default(_that.subjects,_that.totalObtained,_that.totalMax,_that.percentage,_that.rank,_that.overallResult);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ReportCardSubject> subjects, @JsonKey(name: 'total_obtained')@DecimalConverter()  Decimal totalObtained, @JsonKey(name: 'total_max')@DecimalConverter()  Decimal totalMax, @JsonKey(name: 'percentage')@NullableDecimalConverter()  Decimal? percentage, @LooseNumConverter()  num? rank, @JsonKey(name: 'overall_result')  String? overallResult)?  $default,) {final _that = this;
switch (_that) {
case _ReportCardStudent() when $default != null:
return $default(_that.subjects,_that.totalObtained,_that.totalMax,_that.percentage,_that.rank,_that.overallResult);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportCardStudent implements ReportCardStudent {
  const _ReportCardStudent({ List<ReportCardSubject> subjects = const [], @JsonKey(name: 'total_obtained')@DecimalConverter() required this.totalObtained, @JsonKey(name: 'total_max')@DecimalConverter() required this.totalMax, @JsonKey(name: 'percentage')@NullableDecimalConverter() this.percentage, @LooseNumConverter() this.rank, @JsonKey(name: 'overall_result') this.overallResult}): _subjects = subjects;
  factory _ReportCardStudent.fromJson(Map<String, dynamic> json) => _$ReportCardStudentFromJson(json);

 final  List<ReportCardSubject> _subjects;
@override@JsonKey() List<ReportCardSubject> get subjects {
  if (_subjects is EqualUnmodifiableListView) return _subjects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subjects);
}

@override@JsonKey(name: 'total_obtained')@DecimalConverter() final  Decimal totalObtained;
@override@JsonKey(name: 'total_max')@DecimalConverter() final  Decimal totalMax;
@override@JsonKey(name: 'percentage')@NullableDecimalConverter() final  Decimal? percentage;
@override@LooseNumConverter() final  num? rank;
@override@JsonKey(name: 'overall_result') final  String? overallResult;

/// Create a copy of ReportCardStudent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportCardStudentCopyWith<_ReportCardStudent> get copyWith => __$ReportCardStudentCopyWithImpl<_ReportCardStudent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportCardStudentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportCardStudent&&const DeepCollectionEquality().equals(other.subjects, _subjects)&&(identical(other.totalObtained, totalObtained) || other.totalObtained == totalObtained)&&(identical(other.totalMax, totalMax) || other.totalMax == totalMax)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.overallResult, overallResult) || other.overallResult == overallResult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_subjects),totalObtained,totalMax,percentage,rank,overallResult);
}

@override
String toString() {
    return 'ReportCardStudent(subjects: $subjects, totalObtained: $totalObtained, totalMax: $totalMax, percentage: $percentage, rank: $rank, overallResult: $overallResult)';
}


}

/// @nodoc
abstract mixin class _$ReportCardStudentCopyWith<$Res> implements $ReportCardStudentCopyWith<$Res> {
  factory _$ReportCardStudentCopyWith(_ReportCardStudent value, $Res Function(_ReportCardStudent) _then) = __$ReportCardStudentCopyWithImpl;
@override @useResult
$Res call({
 List<ReportCardSubject> subjects,@JsonKey(name: 'total_obtained')@DecimalConverter() Decimal totalObtained,@JsonKey(name: 'total_max')@DecimalConverter() Decimal totalMax,@JsonKey(name: 'percentage')@NullableDecimalConverter() Decimal? percentage,@LooseNumConverter() num? rank,@JsonKey(name: 'overall_result') String? overallResult
});




}
/// @nodoc
class __$ReportCardStudentCopyWithImpl<$Res>
    implements _$ReportCardStudentCopyWith<$Res> {
  __$ReportCardStudentCopyWithImpl(this._self, this._then);

  final _ReportCardStudent _self;
  final $Res Function(_ReportCardStudent) _then;

/// Create a copy of ReportCardStudent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subjects = null,Object? totalObtained = null,Object? totalMax = null,Object? percentage = freezed,Object? rank = freezed,Object? overallResult = freezed,}) {
  return _then(_ReportCardStudent(
subjects: null == subjects ? _self._subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<ReportCardSubject>,totalObtained: null == totalObtained ? _self.totalObtained : totalObtained // ignore: cast_nullable_to_non_nullable
as Decimal,totalMax: null == totalMax ? _self.totalMax : totalMax // ignore: cast_nullable_to_non_nullable
as Decimal,percentage: freezed == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as Decimal?,rank: freezed == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as num?,overallResult: freezed == overallResult ? _self.overallResult : overallResult // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReportCardSubject {

@JsonKey(name: 'subject_id') String get subjectId;@JsonKey(name: 'subject_name') String get subjectName;@JsonKey(name: 'marks_obtained')@NullableDecimalConverter() Decimal? get marksObtained;@JsonKey(name: 'is_absent') bool get isAbsent;@JsonKey(name: 'attendance_status') String? get attendanceStatus;@JsonKey(name: 'max_marks')@NullableDecimalConverter() Decimal? get maxMarks;@JsonKey(name: 'passing_marks')@NullableDecimalConverter() Decimal? get passingMarks; String? get grade; String? get result;
/// Create a copy of ReportCardSubject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportCardSubjectCopyWith<ReportCardSubject> get copyWith => _$ReportCardSubjectCopyWithImpl<ReportCardSubject>(this as ReportCardSubject, _$identity);

  /// Serializes this ReportCardSubject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReportCardSubject;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportCardSubject&&(identical(other.subjectId, _this.subjectId) || other.subjectId == _this.subjectId)&&(identical(other.subjectName, _this.subjectName) || other.subjectName == _this.subjectName)&&(identical(other.marksObtained, _this.marksObtained) || other.marksObtained == _this.marksObtained)&&(identical(other.isAbsent, _this.isAbsent) || other.isAbsent == _this.isAbsent)&&(identical(other.attendanceStatus, _this.attendanceStatus) || other.attendanceStatus == _this.attendanceStatus)&&(identical(other.maxMarks, _this.maxMarks) || other.maxMarks == _this.maxMarks)&&(identical(other.passingMarks, _this.passingMarks) || other.passingMarks == _this.passingMarks)&&(identical(other.grade, _this.grade) || other.grade == _this.grade)&&(identical(other.result, _this.result) || other.result == _this.result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReportCardSubject;
  return Object.hash(runtimeType,_this.subjectId,_this.subjectName,_this.marksObtained,_this.isAbsent,_this.attendanceStatus,_this.maxMarks,_this.passingMarks,_this.grade,_this.result);
}

@override
String toString() {
  final _this = this as ReportCardSubject;
  return 'ReportCardSubject(subjectId: ${_this.subjectId}, subjectName: ${_this.subjectName}, marksObtained: ${_this.marksObtained}, isAbsent: ${_this.isAbsent}, attendanceStatus: ${_this.attendanceStatus}, maxMarks: ${_this.maxMarks}, passingMarks: ${_this.passingMarks}, grade: ${_this.grade}, result: ${_this.result})';
}


}

/// @nodoc
abstract mixin class $ReportCardSubjectCopyWith<$Res>  {
  factory $ReportCardSubjectCopyWith(ReportCardSubject value, $Res Function(ReportCardSubject) _then) = _$ReportCardSubjectCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'subject_id') String subjectId,@JsonKey(name: 'subject_name') String subjectName,@JsonKey(name: 'marks_obtained')@NullableDecimalConverter() Decimal? marksObtained,@JsonKey(name: 'is_absent') bool isAbsent,@JsonKey(name: 'attendance_status') String? attendanceStatus,@JsonKey(name: 'max_marks')@NullableDecimalConverter() Decimal? maxMarks,@JsonKey(name: 'passing_marks')@NullableDecimalConverter() Decimal? passingMarks, String? grade, String? result
});




}
/// @nodoc
class _$ReportCardSubjectCopyWithImpl<$Res>
    implements $ReportCardSubjectCopyWith<$Res> {
  _$ReportCardSubjectCopyWithImpl(this._self, this._then);

  final ReportCardSubject _self;
  final $Res Function(ReportCardSubject) _then;

/// Create a copy of ReportCardSubject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subjectId = null,Object? subjectName = null,Object? marksObtained = freezed,Object? isAbsent = null,Object? attendanceStatus = freezed,Object? maxMarks = freezed,Object? passingMarks = freezed,Object? grade = freezed,Object? result = freezed,}) {
  return _then(ReportCardSubject(
subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,marksObtained: freezed == marksObtained ? _self.marksObtained : marksObtained // ignore: cast_nullable_to_non_nullable
as Decimal?,isAbsent: null == isAbsent ? _self.isAbsent : isAbsent // ignore: cast_nullable_to_non_nullable
as bool,attendanceStatus: freezed == attendanceStatus ? _self.attendanceStatus : attendanceStatus // ignore: cast_nullable_to_non_nullable
as String?,maxMarks: freezed == maxMarks ? _self.maxMarks : maxMarks // ignore: cast_nullable_to_non_nullable
as Decimal?,passingMarks: freezed == passingMarks ? _self.passingMarks : passingMarks // ignore: cast_nullable_to_non_nullable
as Decimal?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportCardSubject].
extension ReportCardSubjectPatterns on ReportCardSubject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportCardSubject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportCardSubject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportCardSubject value)  $default,){
final _that = this;
switch (_that) {
case _ReportCardSubject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportCardSubject value)?  $default,){
final _that = this;
switch (_that) {
case _ReportCardSubject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'subject_id')  String subjectId, @JsonKey(name: 'subject_name')  String subjectName, @JsonKey(name: 'marks_obtained')@NullableDecimalConverter()  Decimal? marksObtained, @JsonKey(name: 'is_absent')  bool isAbsent, @JsonKey(name: 'attendance_status')  String? attendanceStatus, @JsonKey(name: 'max_marks')@NullableDecimalConverter()  Decimal? maxMarks, @JsonKey(name: 'passing_marks')@NullableDecimalConverter()  Decimal? passingMarks,  String? grade,  String? result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportCardSubject() when $default != null:
return $default(_that.subjectId,_that.subjectName,_that.marksObtained,_that.isAbsent,_that.attendanceStatus,_that.maxMarks,_that.passingMarks,_that.grade,_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'subject_id')  String subjectId, @JsonKey(name: 'subject_name')  String subjectName, @JsonKey(name: 'marks_obtained')@NullableDecimalConverter()  Decimal? marksObtained, @JsonKey(name: 'is_absent')  bool isAbsent, @JsonKey(name: 'attendance_status')  String? attendanceStatus, @JsonKey(name: 'max_marks')@NullableDecimalConverter()  Decimal? maxMarks, @JsonKey(name: 'passing_marks')@NullableDecimalConverter()  Decimal? passingMarks,  String? grade,  String? result)  $default,) {final _that = this;
switch (_that) {
case _ReportCardSubject():
return $default(_that.subjectId,_that.subjectName,_that.marksObtained,_that.isAbsent,_that.attendanceStatus,_that.maxMarks,_that.passingMarks,_that.grade,_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'subject_id')  String subjectId, @JsonKey(name: 'subject_name')  String subjectName, @JsonKey(name: 'marks_obtained')@NullableDecimalConverter()  Decimal? marksObtained, @JsonKey(name: 'is_absent')  bool isAbsent, @JsonKey(name: 'attendance_status')  String? attendanceStatus, @JsonKey(name: 'max_marks')@NullableDecimalConverter()  Decimal? maxMarks, @JsonKey(name: 'passing_marks')@NullableDecimalConverter()  Decimal? passingMarks,  String? grade,  String? result)?  $default,) {final _that = this;
switch (_that) {
case _ReportCardSubject() when $default != null:
return $default(_that.subjectId,_that.subjectName,_that.marksObtained,_that.isAbsent,_that.attendanceStatus,_that.maxMarks,_that.passingMarks,_that.grade,_that.result);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportCardSubject implements ReportCardSubject {
  const _ReportCardSubject({@JsonKey(name: 'subject_id') required this.subjectId, @JsonKey(name: 'subject_name') required this.subjectName, @JsonKey(name: 'marks_obtained')@NullableDecimalConverter() this.marksObtained, @JsonKey(name: 'is_absent') this.isAbsent = false, @JsonKey(name: 'attendance_status') this.attendanceStatus, @JsonKey(name: 'max_marks')@NullableDecimalConverter() this.maxMarks, @JsonKey(name: 'passing_marks')@NullableDecimalConverter() this.passingMarks, this.grade, this.result});
  factory _ReportCardSubject.fromJson(Map<String, dynamic> json) => _$ReportCardSubjectFromJson(json);

@override@JsonKey(name: 'subject_id') final  String subjectId;
@override@JsonKey(name: 'subject_name') final  String subjectName;
@override@JsonKey(name: 'marks_obtained')@NullableDecimalConverter() final  Decimal? marksObtained;
@override@JsonKey(name: 'is_absent') final  bool isAbsent;
@override@JsonKey(name: 'attendance_status') final  String? attendanceStatus;
@override@JsonKey(name: 'max_marks')@NullableDecimalConverter() final  Decimal? maxMarks;
@override@JsonKey(name: 'passing_marks')@NullableDecimalConverter() final  Decimal? passingMarks;
@override final  String? grade;
@override final  String? result;

/// Create a copy of ReportCardSubject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportCardSubjectCopyWith<_ReportCardSubject> get copyWith => __$ReportCardSubjectCopyWithImpl<_ReportCardSubject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportCardSubjectToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportCardSubject&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.marksObtained, marksObtained) || other.marksObtained == marksObtained)&&(identical(other.isAbsent, isAbsent) || other.isAbsent == isAbsent)&&(identical(other.attendanceStatus, attendanceStatus) || other.attendanceStatus == attendanceStatus)&&(identical(other.maxMarks, maxMarks) || other.maxMarks == maxMarks)&&(identical(other.passingMarks, passingMarks) || other.passingMarks == passingMarks)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.result, result) || other.result == result));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,subjectId,subjectName,marksObtained,isAbsent,attendanceStatus,maxMarks,passingMarks,grade,result);
}

@override
String toString() {
    return 'ReportCardSubject(subjectId: $subjectId, subjectName: $subjectName, marksObtained: $marksObtained, isAbsent: $isAbsent, attendanceStatus: $attendanceStatus, maxMarks: $maxMarks, passingMarks: $passingMarks, grade: $grade, result: $result)';
}


}

/// @nodoc
abstract mixin class _$ReportCardSubjectCopyWith<$Res> implements $ReportCardSubjectCopyWith<$Res> {
  factory _$ReportCardSubjectCopyWith(_ReportCardSubject value, $Res Function(_ReportCardSubject) _then) = __$ReportCardSubjectCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'subject_id') String subjectId,@JsonKey(name: 'subject_name') String subjectName,@JsonKey(name: 'marks_obtained')@NullableDecimalConverter() Decimal? marksObtained,@JsonKey(name: 'is_absent') bool isAbsent,@JsonKey(name: 'attendance_status') String? attendanceStatus,@JsonKey(name: 'max_marks')@NullableDecimalConverter() Decimal? maxMarks,@JsonKey(name: 'passing_marks')@NullableDecimalConverter() Decimal? passingMarks, String? grade, String? result
});




}
/// @nodoc
class __$ReportCardSubjectCopyWithImpl<$Res>
    implements _$ReportCardSubjectCopyWith<$Res> {
  __$ReportCardSubjectCopyWithImpl(this._self, this._then);

  final _ReportCardSubject _self;
  final $Res Function(_ReportCardSubject) _then;

/// Create a copy of ReportCardSubject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subjectId = null,Object? subjectName = null,Object? marksObtained = freezed,Object? isAbsent = null,Object? attendanceStatus = freezed,Object? maxMarks = freezed,Object? passingMarks = freezed,Object? grade = freezed,Object? result = freezed,}) {
  return _then(_ReportCardSubject(
subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,marksObtained: freezed == marksObtained ? _self.marksObtained : marksObtained // ignore: cast_nullable_to_non_nullable
as Decimal?,isAbsent: null == isAbsent ? _self.isAbsent : isAbsent // ignore: cast_nullable_to_non_nullable
as bool,attendanceStatus: freezed == attendanceStatus ? _self.attendanceStatus : attendanceStatus // ignore: cast_nullable_to_non_nullable
as String?,maxMarks: freezed == maxMarks ? _self.maxMarks : maxMarks // ignore: cast_nullable_to_non_nullable
as Decimal?,passingMarks: freezed == passingMarks ? _self.passingMarks : passingMarks // ignore: cast_nullable_to_non_nullable
as Decimal?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
