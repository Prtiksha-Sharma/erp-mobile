// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_academics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubjectAssignment {

@JsonKey(name: 'subject_teacher_id') String get subjectTeacherId;@JsonKey(name: 'class_id') String get classId;@JsonKey(name: 'section_id') String get sectionId;@JsonKey(name: 'subject_id') String get subjectId;@JsonKey(name: 'session_id') String get sessionId;@JsonKey(name: 'classes') ClassRef? get classRef;@JsonKey(name: 'sections') SectionRef? get sectionRef;@JsonKey(name: 'academic_subjects') SubjectRef? get subject;
/// Create a copy of SubjectAssignment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectAssignmentCopyWith<SubjectAssignment> get copyWith => _$SubjectAssignmentCopyWithImpl<SubjectAssignment>(this as SubjectAssignment, _$identity);

  /// Serializes this SubjectAssignment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SubjectAssignment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubjectAssignment&&(identical(other.subjectTeacherId, _this.subjectTeacherId) || other.subjectTeacherId == _this.subjectTeacherId)&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId)&&(identical(other.subjectId, _this.subjectId) || other.subjectId == _this.subjectId)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.classRef, _this.classRef) || other.classRef == _this.classRef)&&(identical(other.sectionRef, _this.sectionRef) || other.sectionRef == _this.sectionRef)&&(identical(other.subject, _this.subject) || other.subject == _this.subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SubjectAssignment;
  return Object.hash(runtimeType,_this.subjectTeacherId,_this.classId,_this.sectionId,_this.subjectId,_this.sessionId,_this.classRef,_this.sectionRef,_this.subject);
}

@override
String toString() {
  final _this = this as SubjectAssignment;
  return 'SubjectAssignment(subjectTeacherId: ${_this.subjectTeacherId}, classId: ${_this.classId}, sectionId: ${_this.sectionId}, subjectId: ${_this.subjectId}, sessionId: ${_this.sessionId}, classRef: ${_this.classRef}, sectionRef: ${_this.sectionRef}, subject: ${_this.subject})';
}


}

/// @nodoc
abstract mixin class $SubjectAssignmentCopyWith<$Res>  {
  factory $SubjectAssignmentCopyWith(SubjectAssignment value, $Res Function(SubjectAssignment) _then) = _$SubjectAssignmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'subject_teacher_id') String subjectTeacherId,@JsonKey(name: 'class_id') String classId,@JsonKey(name: 'section_id') String sectionId,@JsonKey(name: 'subject_id') String subjectId,@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject
});


$ClassRefCopyWith<$Res>? get classRef;$SectionRefCopyWith<$Res>? get sectionRef;$SubjectRefCopyWith<$Res>? get subject;

}
/// @nodoc
class _$SubjectAssignmentCopyWithImpl<$Res>
    implements $SubjectAssignmentCopyWith<$Res> {
  _$SubjectAssignmentCopyWithImpl(this._self, this._then);

  final SubjectAssignment _self;
  final $Res Function(SubjectAssignment) _then;

/// Create a copy of SubjectAssignment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subjectTeacherId = null,Object? classId = null,Object? sectionId = null,Object? subjectId = null,Object? sessionId = null,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,}) {
  return _then(SubjectAssignment(
subjectTeacherId: null == subjectTeacherId ? _self.subjectTeacherId : subjectTeacherId // ignore: cast_nullable_to_non_nullable
as String,classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String,sectionId: null == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,
  ));
}
/// Create a copy of SubjectAssignment
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
}/// Create a copy of SubjectAssignment
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
}/// Create a copy of SubjectAssignment
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


/// Adds pattern-matching-related methods to [SubjectAssignment].
extension SubjectAssignmentPatterns on SubjectAssignment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubjectAssignment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubjectAssignment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubjectAssignment value)  $default,){
final _that = this;
switch (_that) {
case _SubjectAssignment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubjectAssignment value)?  $default,){
final _that = this;
switch (_that) {
case _SubjectAssignment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'subject_teacher_id')  String subjectTeacherId, @JsonKey(name: 'class_id')  String classId, @JsonKey(name: 'section_id')  String sectionId, @JsonKey(name: 'subject_id')  String subjectId, @JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubjectAssignment() when $default != null:
return $default(_that.subjectTeacherId,_that.classId,_that.sectionId,_that.subjectId,_that.sessionId,_that.classRef,_that.sectionRef,_that.subject);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'subject_teacher_id')  String subjectTeacherId, @JsonKey(name: 'class_id')  String classId, @JsonKey(name: 'section_id')  String sectionId, @JsonKey(name: 'subject_id')  String subjectId, @JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject)  $default,) {final _that = this;
switch (_that) {
case _SubjectAssignment():
return $default(_that.subjectTeacherId,_that.classId,_that.sectionId,_that.subjectId,_that.sessionId,_that.classRef,_that.sectionRef,_that.subject);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'subject_teacher_id')  String subjectTeacherId, @JsonKey(name: 'class_id')  String classId, @JsonKey(name: 'section_id')  String sectionId, @JsonKey(name: 'subject_id')  String subjectId, @JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject)?  $default,) {final _that = this;
switch (_that) {
case _SubjectAssignment() when $default != null:
return $default(_that.subjectTeacherId,_that.classId,_that.sectionId,_that.subjectId,_that.sessionId,_that.classRef,_that.sectionRef,_that.subject);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubjectAssignment implements SubjectAssignment {
  const _SubjectAssignment({@JsonKey(name: 'subject_teacher_id') required this.subjectTeacherId, @JsonKey(name: 'class_id') required this.classId, @JsonKey(name: 'section_id') required this.sectionId, @JsonKey(name: 'subject_id') required this.subjectId, @JsonKey(name: 'session_id') required this.sessionId, @JsonKey(name: 'classes') this.classRef, @JsonKey(name: 'sections') this.sectionRef, @JsonKey(name: 'academic_subjects') this.subject});
  factory _SubjectAssignment.fromJson(Map<String, dynamic> json) => _$SubjectAssignmentFromJson(json);

@override@JsonKey(name: 'subject_teacher_id') final  String subjectTeacherId;
@override@JsonKey(name: 'class_id') final  String classId;
@override@JsonKey(name: 'section_id') final  String sectionId;
@override@JsonKey(name: 'subject_id') final  String subjectId;
@override@JsonKey(name: 'session_id') final  String sessionId;
@override@JsonKey(name: 'classes') final  ClassRef? classRef;
@override@JsonKey(name: 'sections') final  SectionRef? sectionRef;
@override@JsonKey(name: 'academic_subjects') final  SubjectRef? subject;

/// Create a copy of SubjectAssignment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubjectAssignmentCopyWith<_SubjectAssignment> get copyWith => __$SubjectAssignmentCopyWithImpl<_SubjectAssignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubjectAssignmentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubjectAssignment&&(identical(other.subjectTeacherId, subjectTeacherId) || other.subjectTeacherId == subjectTeacherId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.classRef, classRef) || other.classRef == classRef)&&(identical(other.sectionRef, sectionRef) || other.sectionRef == sectionRef)&&(identical(other.subject, subject) || other.subject == subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,subjectTeacherId,classId,sectionId,subjectId,sessionId,classRef,sectionRef,subject);
}

@override
String toString() {
    return 'SubjectAssignment(subjectTeacherId: $subjectTeacherId, classId: $classId, sectionId: $sectionId, subjectId: $subjectId, sessionId: $sessionId, classRef: $classRef, sectionRef: $sectionRef, subject: $subject)';
}


}

/// @nodoc
abstract mixin class _$SubjectAssignmentCopyWith<$Res> implements $SubjectAssignmentCopyWith<$Res> {
  factory _$SubjectAssignmentCopyWith(_SubjectAssignment value, $Res Function(_SubjectAssignment) _then) = __$SubjectAssignmentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'subject_teacher_id') String subjectTeacherId,@JsonKey(name: 'class_id') String classId,@JsonKey(name: 'section_id') String sectionId,@JsonKey(name: 'subject_id') String subjectId,@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject
});


@override $ClassRefCopyWith<$Res>? get classRef;@override $SectionRefCopyWith<$Res>? get sectionRef;@override $SubjectRefCopyWith<$Res>? get subject;

}
/// @nodoc
class __$SubjectAssignmentCopyWithImpl<$Res>
    implements _$SubjectAssignmentCopyWith<$Res> {
  __$SubjectAssignmentCopyWithImpl(this._self, this._then);

  final _SubjectAssignment _self;
  final $Res Function(_SubjectAssignment) _then;

/// Create a copy of SubjectAssignment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subjectTeacherId = null,Object? classId = null,Object? sectionId = null,Object? subjectId = null,Object? sessionId = null,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,}) {
  return _then(_SubjectAssignment(
subjectTeacherId: null == subjectTeacherId ? _self.subjectTeacherId : subjectTeacherId // ignore: cast_nullable_to_non_nullable
as String,classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String,sectionId: null == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,
  ));
}

/// Create a copy of SubjectAssignment
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
}/// Create a copy of SubjectAssignment
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
}/// Create a copy of SubjectAssignment
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
mixin _$LessonPlan {

@JsonKey(name: 'lesson_plan_id') String get lessonPlanId;@JsonKey(name: 'class_id') String get classId;@JsonKey(name: 'section_id') String? get sectionId;@JsonKey(name: 'subject_id') String get subjectId;@JsonKey(name: 'session_id') String? get sessionId; String get topic; String? get description;@JsonKey(name: 'planned_date') DateTime? get plannedDate;@JsonKey(name: 'attachment_url') String? get attachmentUrl; String? get status;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'classes') ClassRef? get classRef;@JsonKey(name: 'sections') SectionRef? get sectionRef;@JsonKey(name: 'academic_subjects') SubjectRef? get subject;
/// Create a copy of LessonPlan
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonPlanCopyWith<LessonPlan> get copyWith => _$LessonPlanCopyWithImpl<LessonPlan>(this as LessonPlan, _$identity);

  /// Serializes this LessonPlan to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LessonPlan;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonPlan&&(identical(other.lessonPlanId, _this.lessonPlanId) || other.lessonPlanId == _this.lessonPlanId)&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId)&&(identical(other.subjectId, _this.subjectId) || other.subjectId == _this.subjectId)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.plannedDate, _this.plannedDate) || other.plannedDate == _this.plannedDate)&&(identical(other.attachmentUrl, _this.attachmentUrl) || other.attachmentUrl == _this.attachmentUrl)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.classRef, _this.classRef) || other.classRef == _this.classRef)&&(identical(other.sectionRef, _this.sectionRef) || other.sectionRef == _this.sectionRef)&&(identical(other.subject, _this.subject) || other.subject == _this.subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LessonPlan;
  return Object.hash(runtimeType,_this.lessonPlanId,_this.classId,_this.sectionId,_this.subjectId,_this.sessionId,_this.topic,_this.description,_this.plannedDate,_this.attachmentUrl,_this.status,_this.createdAt,_this.classRef,_this.sectionRef,_this.subject);
}

@override
String toString() {
  final _this = this as LessonPlan;
  return 'LessonPlan(lessonPlanId: ${_this.lessonPlanId}, classId: ${_this.classId}, sectionId: ${_this.sectionId}, subjectId: ${_this.subjectId}, sessionId: ${_this.sessionId}, topic: ${_this.topic}, description: ${_this.description}, plannedDate: ${_this.plannedDate}, attachmentUrl: ${_this.attachmentUrl}, status: ${_this.status}, createdAt: ${_this.createdAt}, classRef: ${_this.classRef}, sectionRef: ${_this.sectionRef}, subject: ${_this.subject})';
}


}

/// @nodoc
abstract mixin class $LessonPlanCopyWith<$Res>  {
  factory $LessonPlanCopyWith(LessonPlan value, $Res Function(LessonPlan) _then) = _$LessonPlanCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'lesson_plan_id') String lessonPlanId,@JsonKey(name: 'class_id') String classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'subject_id') String subjectId,@JsonKey(name: 'session_id') String? sessionId, String topic, String? description,@JsonKey(name: 'planned_date') DateTime? plannedDate,@JsonKey(name: 'attachment_url') String? attachmentUrl, String? status,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject
});


$ClassRefCopyWith<$Res>? get classRef;$SectionRefCopyWith<$Res>? get sectionRef;$SubjectRefCopyWith<$Res>? get subject;

}
/// @nodoc
class _$LessonPlanCopyWithImpl<$Res>
    implements $LessonPlanCopyWith<$Res> {
  _$LessonPlanCopyWithImpl(this._self, this._then);

  final LessonPlan _self;
  final $Res Function(LessonPlan) _then;

/// Create a copy of LessonPlan
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lessonPlanId = null,Object? classId = null,Object? sectionId = freezed,Object? subjectId = null,Object? sessionId = freezed,Object? topic = null,Object? description = freezed,Object? plannedDate = freezed,Object? attachmentUrl = freezed,Object? status = freezed,Object? createdAt = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,}) {
  return _then(LessonPlan(
lessonPlanId: null == lessonPlanId ? _self.lessonPlanId : lessonPlanId // ignore: cast_nullable_to_non_nullable
as String,classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,plannedDate: freezed == plannedDate ? _self.plannedDate : plannedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,
  ));
}
/// Create a copy of LessonPlan
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
}/// Create a copy of LessonPlan
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
}/// Create a copy of LessonPlan
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


/// Adds pattern-matching-related methods to [LessonPlan].
extension LessonPlanPatterns on LessonPlan {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonPlan value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonPlan() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonPlan value)  $default,){
final _that = this;
switch (_that) {
case _LessonPlan():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonPlan value)?  $default,){
final _that = this;
switch (_that) {
case _LessonPlan() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'lesson_plan_id')  String lessonPlanId, @JsonKey(name: 'class_id')  String classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String subjectId, @JsonKey(name: 'session_id')  String? sessionId,  String topic,  String? description, @JsonKey(name: 'planned_date')  DateTime? plannedDate, @JsonKey(name: 'attachment_url')  String? attachmentUrl,  String? status, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonPlan() when $default != null:
return $default(_that.lessonPlanId,_that.classId,_that.sectionId,_that.subjectId,_that.sessionId,_that.topic,_that.description,_that.plannedDate,_that.attachmentUrl,_that.status,_that.createdAt,_that.classRef,_that.sectionRef,_that.subject);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'lesson_plan_id')  String lessonPlanId, @JsonKey(name: 'class_id')  String classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String subjectId, @JsonKey(name: 'session_id')  String? sessionId,  String topic,  String? description, @JsonKey(name: 'planned_date')  DateTime? plannedDate, @JsonKey(name: 'attachment_url')  String? attachmentUrl,  String? status, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject)  $default,) {final _that = this;
switch (_that) {
case _LessonPlan():
return $default(_that.lessonPlanId,_that.classId,_that.sectionId,_that.subjectId,_that.sessionId,_that.topic,_that.description,_that.plannedDate,_that.attachmentUrl,_that.status,_that.createdAt,_that.classRef,_that.sectionRef,_that.subject);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'lesson_plan_id')  String lessonPlanId, @JsonKey(name: 'class_id')  String classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String subjectId, @JsonKey(name: 'session_id')  String? sessionId,  String topic,  String? description, @JsonKey(name: 'planned_date')  DateTime? plannedDate, @JsonKey(name: 'attachment_url')  String? attachmentUrl,  String? status, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject)?  $default,) {final _that = this;
switch (_that) {
case _LessonPlan() when $default != null:
return $default(_that.lessonPlanId,_that.classId,_that.sectionId,_that.subjectId,_that.sessionId,_that.topic,_that.description,_that.plannedDate,_that.attachmentUrl,_that.status,_that.createdAt,_that.classRef,_that.sectionRef,_that.subject);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonPlan implements LessonPlan {
  const _LessonPlan({@JsonKey(name: 'lesson_plan_id') required this.lessonPlanId, @JsonKey(name: 'class_id') required this.classId, @JsonKey(name: 'section_id') this.sectionId, @JsonKey(name: 'subject_id') required this.subjectId, @JsonKey(name: 'session_id') this.sessionId, required this.topic, this.description, @JsonKey(name: 'planned_date') this.plannedDate, @JsonKey(name: 'attachment_url') this.attachmentUrl, this.status, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'classes') this.classRef, @JsonKey(name: 'sections') this.sectionRef, @JsonKey(name: 'academic_subjects') this.subject});
  factory _LessonPlan.fromJson(Map<String, dynamic> json) => _$LessonPlanFromJson(json);

@override@JsonKey(name: 'lesson_plan_id') final  String lessonPlanId;
@override@JsonKey(name: 'class_id') final  String classId;
@override@JsonKey(name: 'section_id') final  String? sectionId;
@override@JsonKey(name: 'subject_id') final  String subjectId;
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

/// Create a copy of LessonPlan
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonPlanCopyWith<_LessonPlan> get copyWith => __$LessonPlanCopyWithImpl<_LessonPlan>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonPlanToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonPlan&&(identical(other.lessonPlanId, lessonPlanId) || other.lessonPlanId == lessonPlanId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.description, description) || other.description == description)&&(identical(other.plannedDate, plannedDate) || other.plannedDate == plannedDate)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.classRef, classRef) || other.classRef == classRef)&&(identical(other.sectionRef, sectionRef) || other.sectionRef == sectionRef)&&(identical(other.subject, subject) || other.subject == subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,lessonPlanId,classId,sectionId,subjectId,sessionId,topic,description,plannedDate,attachmentUrl,status,createdAt,classRef,sectionRef,subject);
}

@override
String toString() {
    return 'LessonPlan(lessonPlanId: $lessonPlanId, classId: $classId, sectionId: $sectionId, subjectId: $subjectId, sessionId: $sessionId, topic: $topic, description: $description, plannedDate: $plannedDate, attachmentUrl: $attachmentUrl, status: $status, createdAt: $createdAt, classRef: $classRef, sectionRef: $sectionRef, subject: $subject)';
}


}

/// @nodoc
abstract mixin class _$LessonPlanCopyWith<$Res> implements $LessonPlanCopyWith<$Res> {
  factory _$LessonPlanCopyWith(_LessonPlan value, $Res Function(_LessonPlan) _then) = __$LessonPlanCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'lesson_plan_id') String lessonPlanId,@JsonKey(name: 'class_id') String classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'subject_id') String subjectId,@JsonKey(name: 'session_id') String? sessionId, String topic, String? description,@JsonKey(name: 'planned_date') DateTime? plannedDate,@JsonKey(name: 'attachment_url') String? attachmentUrl, String? status,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject
});


@override $ClassRefCopyWith<$Res>? get classRef;@override $SectionRefCopyWith<$Res>? get sectionRef;@override $SubjectRefCopyWith<$Res>? get subject;

}
/// @nodoc
class __$LessonPlanCopyWithImpl<$Res>
    implements _$LessonPlanCopyWith<$Res> {
  __$LessonPlanCopyWithImpl(this._self, this._then);

  final _LessonPlan _self;
  final $Res Function(_LessonPlan) _then;

/// Create a copy of LessonPlan
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lessonPlanId = null,Object? classId = null,Object? sectionId = freezed,Object? subjectId = null,Object? sessionId = freezed,Object? topic = null,Object? description = freezed,Object? plannedDate = freezed,Object? attachmentUrl = freezed,Object? status = freezed,Object? createdAt = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,}) {
  return _then(_LessonPlan(
lessonPlanId: null == lessonPlanId ? _self.lessonPlanId : lessonPlanId // ignore: cast_nullable_to_non_nullable
as String,classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,plannedDate: freezed == plannedDate ? _self.plannedDate : plannedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,
  ));
}

/// Create a copy of LessonPlan
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
}/// Create a copy of LessonPlan
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
}/// Create a copy of LessonPlan
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
mixin _$SyllabusEntry {

@JsonKey(name: 'syllabus_id') String get syllabusId;@JsonKey(name: 'class_id') String? get classId;@JsonKey(name: 'section_id') String? get sectionId;@JsonKey(name: 'subject_id') String? get subjectId; String get title; String? get description;@JsonKey(name: 'attachment_url') String? get attachmentUrl; String? get status;@JsonKey(name: 'classes') ClassRef? get classRef;@JsonKey(name: 'sections') SectionRef? get sectionRef;@JsonKey(name: 'academic_subjects') SubjectRef? get subject;
/// Create a copy of SyllabusEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyllabusEntryCopyWith<SyllabusEntry> get copyWith => _$SyllabusEntryCopyWithImpl<SyllabusEntry>(this as SyllabusEntry, _$identity);

  /// Serializes this SyllabusEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SyllabusEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyllabusEntry&&(identical(other.syllabusId, _this.syllabusId) || other.syllabusId == _this.syllabusId)&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId)&&(identical(other.subjectId, _this.subjectId) || other.subjectId == _this.subjectId)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.attachmentUrl, _this.attachmentUrl) || other.attachmentUrl == _this.attachmentUrl)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.classRef, _this.classRef) || other.classRef == _this.classRef)&&(identical(other.sectionRef, _this.sectionRef) || other.sectionRef == _this.sectionRef)&&(identical(other.subject, _this.subject) || other.subject == _this.subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SyllabusEntry;
  return Object.hash(runtimeType,_this.syllabusId,_this.classId,_this.sectionId,_this.subjectId,_this.title,_this.description,_this.attachmentUrl,_this.status,_this.classRef,_this.sectionRef,_this.subject);
}

@override
String toString() {
  final _this = this as SyllabusEntry;
  return 'SyllabusEntry(syllabusId: ${_this.syllabusId}, classId: ${_this.classId}, sectionId: ${_this.sectionId}, subjectId: ${_this.subjectId}, title: ${_this.title}, description: ${_this.description}, attachmentUrl: ${_this.attachmentUrl}, status: ${_this.status}, classRef: ${_this.classRef}, sectionRef: ${_this.sectionRef}, subject: ${_this.subject})';
}


}

/// @nodoc
abstract mixin class $SyllabusEntryCopyWith<$Res>  {
  factory $SyllabusEntryCopyWith(SyllabusEntry value, $Res Function(SyllabusEntry) _then) = _$SyllabusEntryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'syllabus_id') String syllabusId,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'subject_id') String? subjectId, String title, String? description,@JsonKey(name: 'attachment_url') String? attachmentUrl, String? status,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject
});


$ClassRefCopyWith<$Res>? get classRef;$SectionRefCopyWith<$Res>? get sectionRef;$SubjectRefCopyWith<$Res>? get subject;

}
/// @nodoc
class _$SyllabusEntryCopyWithImpl<$Res>
    implements $SyllabusEntryCopyWith<$Res> {
  _$SyllabusEntryCopyWithImpl(this._self, this._then);

  final SyllabusEntry _self;
  final $Res Function(SyllabusEntry) _then;

/// Create a copy of SyllabusEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? syllabusId = null,Object? classId = freezed,Object? sectionId = freezed,Object? subjectId = freezed,Object? title = null,Object? description = freezed,Object? attachmentUrl = freezed,Object? status = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,}) {
  return _then(SyllabusEntry(
syllabusId: null == syllabusId ? _self.syllabusId : syllabusId // ignore: cast_nullable_to_non_nullable
as String,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,
  ));
}
/// Create a copy of SyllabusEntry
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
}/// Create a copy of SyllabusEntry
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
}/// Create a copy of SyllabusEntry
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


/// Adds pattern-matching-related methods to [SyllabusEntry].
extension SyllabusEntryPatterns on SyllabusEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyllabusEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyllabusEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyllabusEntry value)  $default,){
final _that = this;
switch (_that) {
case _SyllabusEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyllabusEntry value)?  $default,){
final _that = this;
switch (_that) {
case _SyllabusEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'syllabus_id')  String syllabusId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String? subjectId,  String title,  String? description, @JsonKey(name: 'attachment_url')  String? attachmentUrl,  String? status, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyllabusEntry() when $default != null:
return $default(_that.syllabusId,_that.classId,_that.sectionId,_that.subjectId,_that.title,_that.description,_that.attachmentUrl,_that.status,_that.classRef,_that.sectionRef,_that.subject);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'syllabus_id')  String syllabusId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String? subjectId,  String title,  String? description, @JsonKey(name: 'attachment_url')  String? attachmentUrl,  String? status, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject)  $default,) {final _that = this;
switch (_that) {
case _SyllabusEntry():
return $default(_that.syllabusId,_that.classId,_that.sectionId,_that.subjectId,_that.title,_that.description,_that.attachmentUrl,_that.status,_that.classRef,_that.sectionRef,_that.subject);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'syllabus_id')  String syllabusId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'subject_id')  String? subjectId,  String title,  String? description, @JsonKey(name: 'attachment_url')  String? attachmentUrl,  String? status, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject)?  $default,) {final _that = this;
switch (_that) {
case _SyllabusEntry() when $default != null:
return $default(_that.syllabusId,_that.classId,_that.sectionId,_that.subjectId,_that.title,_that.description,_that.attachmentUrl,_that.status,_that.classRef,_that.sectionRef,_that.subject);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyllabusEntry implements SyllabusEntry {
  const _SyllabusEntry({@JsonKey(name: 'syllabus_id') required this.syllabusId, @JsonKey(name: 'class_id') this.classId, @JsonKey(name: 'section_id') this.sectionId, @JsonKey(name: 'subject_id') this.subjectId, required this.title, this.description, @JsonKey(name: 'attachment_url') this.attachmentUrl, this.status, @JsonKey(name: 'classes') this.classRef, @JsonKey(name: 'sections') this.sectionRef, @JsonKey(name: 'academic_subjects') this.subject});
  factory _SyllabusEntry.fromJson(Map<String, dynamic> json) => _$SyllabusEntryFromJson(json);

@override@JsonKey(name: 'syllabus_id') final  String syllabusId;
@override@JsonKey(name: 'class_id') final  String? classId;
@override@JsonKey(name: 'section_id') final  String? sectionId;
@override@JsonKey(name: 'subject_id') final  String? subjectId;
@override final  String title;
@override final  String? description;
@override@JsonKey(name: 'attachment_url') final  String? attachmentUrl;
@override final  String? status;
@override@JsonKey(name: 'classes') final  ClassRef? classRef;
@override@JsonKey(name: 'sections') final  SectionRef? sectionRef;
@override@JsonKey(name: 'academic_subjects') final  SubjectRef? subject;

/// Create a copy of SyllabusEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyllabusEntryCopyWith<_SyllabusEntry> get copyWith => __$SyllabusEntryCopyWithImpl<_SyllabusEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyllabusEntryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyllabusEntry&&(identical(other.syllabusId, syllabusId) || other.syllabusId == syllabusId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.classRef, classRef) || other.classRef == classRef)&&(identical(other.sectionRef, sectionRef) || other.sectionRef == sectionRef)&&(identical(other.subject, subject) || other.subject == subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,syllabusId,classId,sectionId,subjectId,title,description,attachmentUrl,status,classRef,sectionRef,subject);
}

@override
String toString() {
    return 'SyllabusEntry(syllabusId: $syllabusId, classId: $classId, sectionId: $sectionId, subjectId: $subjectId, title: $title, description: $description, attachmentUrl: $attachmentUrl, status: $status, classRef: $classRef, sectionRef: $sectionRef, subject: $subject)';
}


}

/// @nodoc
abstract mixin class _$SyllabusEntryCopyWith<$Res> implements $SyllabusEntryCopyWith<$Res> {
  factory _$SyllabusEntryCopyWith(_SyllabusEntry value, $Res Function(_SyllabusEntry) _then) = __$SyllabusEntryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'syllabus_id') String syllabusId,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'subject_id') String? subjectId, String title, String? description,@JsonKey(name: 'attachment_url') String? attachmentUrl, String? status,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject
});


@override $ClassRefCopyWith<$Res>? get classRef;@override $SectionRefCopyWith<$Res>? get sectionRef;@override $SubjectRefCopyWith<$Res>? get subject;

}
/// @nodoc
class __$SyllabusEntryCopyWithImpl<$Res>
    implements _$SyllabusEntryCopyWith<$Res> {
  __$SyllabusEntryCopyWithImpl(this._self, this._then);

  final _SyllabusEntry _self;
  final $Res Function(_SyllabusEntry) _then;

/// Create a copy of SyllabusEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? syllabusId = null,Object? classId = freezed,Object? sectionId = freezed,Object? subjectId = freezed,Object? title = null,Object? description = freezed,Object? attachmentUrl = freezed,Object? status = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,}) {
  return _then(_SyllabusEntry(
syllabusId: null == syllabusId ? _self.syllabusId : syllabusId // ignore: cast_nullable_to_non_nullable
as String,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,
  ));
}

/// Create a copy of SyllabusEntry
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
}/// Create a copy of SyllabusEntry
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
}/// Create a copy of SyllabusEntry
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

// dart format on
