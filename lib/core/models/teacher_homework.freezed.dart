// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_homework.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TeacherHomework {

@JsonKey(name: 'homework_id') String get homeworkId; String? get type;@JsonKey(name: 'class_id') String get classId;@JsonKey(name: 'section_id') String get sectionId;@JsonKey(name: 'subject_id') String get subjectId;@JsonKey(name: 'session_id') String? get sessionId; String get title; String? get description;@JsonKey(name: 'attachment_url') String? get attachmentUrl;@JsonKey(name: 'assigned_date') DateTime? get assignedDate;@JsonKey(name: 'due_date') DateTime? get dueDate;@JsonKey(name: 'classes') ClassRef? get classRef;@JsonKey(name: 'sections') SectionRef? get sectionRef;@JsonKey(name: 'academic_subjects') SubjectRef? get subject; List<SubmissionStatusRef> get submissions;
/// Create a copy of TeacherHomework
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeacherHomeworkCopyWith<TeacherHomework> get copyWith => _$TeacherHomeworkCopyWithImpl<TeacherHomework>(this as TeacherHomework, _$identity);

  /// Serializes this TeacherHomework to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TeacherHomework;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeacherHomework&&(identical(other.homeworkId, _this.homeworkId) || other.homeworkId == _this.homeworkId)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId)&&(identical(other.subjectId, _this.subjectId) || other.subjectId == _this.subjectId)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.attachmentUrl, _this.attachmentUrl) || other.attachmentUrl == _this.attachmentUrl)&&(identical(other.assignedDate, _this.assignedDate) || other.assignedDate == _this.assignedDate)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.classRef, _this.classRef) || other.classRef == _this.classRef)&&(identical(other.sectionRef, _this.sectionRef) || other.sectionRef == _this.sectionRef)&&(identical(other.subject, _this.subject) || other.subject == _this.subject)&&const DeepCollectionEquality().equals(other.submissions, _this.submissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TeacherHomework;
  return Object.hash(runtimeType,_this.homeworkId,_this.type,_this.classId,_this.sectionId,_this.subjectId,_this.sessionId,_this.title,_this.description,_this.attachmentUrl,_this.assignedDate,_this.dueDate,_this.classRef,_this.sectionRef,_this.subject,const DeepCollectionEquality().hash(_this.submissions));
}

@override
String toString() {
  final _this = this as TeacherHomework;
  return 'TeacherHomework(homeworkId: ${_this.homeworkId}, type: ${_this.type}, classId: ${_this.classId}, sectionId: ${_this.sectionId}, subjectId: ${_this.subjectId}, sessionId: ${_this.sessionId}, title: ${_this.title}, description: ${_this.description}, attachmentUrl: ${_this.attachmentUrl}, assignedDate: ${_this.assignedDate}, dueDate: ${_this.dueDate}, classRef: ${_this.classRef}, sectionRef: ${_this.sectionRef}, subject: ${_this.subject}, submissions: ${_this.submissions})';
}


}

/// @nodoc
abstract mixin class $TeacherHomeworkCopyWith<$Res>  {
  factory $TeacherHomeworkCopyWith(TeacherHomework value, $Res Function(TeacherHomework) _then) = _$TeacherHomeworkCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'homework_id') String homeworkId, String? type,@JsonKey(name: 'class_id') String classId,@JsonKey(name: 'section_id') String sectionId,@JsonKey(name: 'subject_id') String subjectId,@JsonKey(name: 'session_id') String? sessionId, String title, String? description,@JsonKey(name: 'attachment_url') String? attachmentUrl,@JsonKey(name: 'assigned_date') DateTime? assignedDate,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject, List<SubmissionStatusRef> submissions
});


$ClassRefCopyWith<$Res>? get classRef;$SectionRefCopyWith<$Res>? get sectionRef;$SubjectRefCopyWith<$Res>? get subject;

}
/// @nodoc
class _$TeacherHomeworkCopyWithImpl<$Res>
    implements $TeacherHomeworkCopyWith<$Res> {
  _$TeacherHomeworkCopyWithImpl(this._self, this._then);

  final TeacherHomework _self;
  final $Res Function(TeacherHomework) _then;

/// Create a copy of TeacherHomework
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? homeworkId = null,Object? type = freezed,Object? classId = null,Object? sectionId = null,Object? subjectId = null,Object? sessionId = freezed,Object? title = null,Object? description = freezed,Object? attachmentUrl = freezed,Object? assignedDate = freezed,Object? dueDate = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,Object? submissions = null,}) {
  return _then(TeacherHomework(
homeworkId: null == homeworkId ? _self.homeworkId : homeworkId // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String,sectionId: null == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,assignedDate: freezed == assignedDate ? _self.assignedDate : assignedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,submissions: null == submissions ? _self.submissions : submissions // ignore: cast_nullable_to_non_nullable
as List<SubmissionStatusRef>,
  ));
}
/// Create a copy of TeacherHomework
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
}/// Create a copy of TeacherHomework
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
}/// Create a copy of TeacherHomework
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


/// Adds pattern-matching-related methods to [TeacherHomework].
extension TeacherHomeworkPatterns on TeacherHomework {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeacherHomework value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeacherHomework() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeacherHomework value)  $default,){
final _that = this;
switch (_that) {
case _TeacherHomework():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeacherHomework value)?  $default,){
final _that = this;
switch (_that) {
case _TeacherHomework() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'homework_id')  String homeworkId,  String? type, @JsonKey(name: 'class_id')  String classId, @JsonKey(name: 'section_id')  String sectionId, @JsonKey(name: 'subject_id')  String subjectId, @JsonKey(name: 'session_id')  String? sessionId,  String title,  String? description, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'assigned_date')  DateTime? assignedDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject,  List<SubmissionStatusRef> submissions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeacherHomework() when $default != null:
return $default(_that.homeworkId,_that.type,_that.classId,_that.sectionId,_that.subjectId,_that.sessionId,_that.title,_that.description,_that.attachmentUrl,_that.assignedDate,_that.dueDate,_that.classRef,_that.sectionRef,_that.subject,_that.submissions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'homework_id')  String homeworkId,  String? type, @JsonKey(name: 'class_id')  String classId, @JsonKey(name: 'section_id')  String sectionId, @JsonKey(name: 'subject_id')  String subjectId, @JsonKey(name: 'session_id')  String? sessionId,  String title,  String? description, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'assigned_date')  DateTime? assignedDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject,  List<SubmissionStatusRef> submissions)  $default,) {final _that = this;
switch (_that) {
case _TeacherHomework():
return $default(_that.homeworkId,_that.type,_that.classId,_that.sectionId,_that.subjectId,_that.sessionId,_that.title,_that.description,_that.attachmentUrl,_that.assignedDate,_that.dueDate,_that.classRef,_that.sectionRef,_that.subject,_that.submissions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'homework_id')  String homeworkId,  String? type, @JsonKey(name: 'class_id')  String classId, @JsonKey(name: 'section_id')  String sectionId, @JsonKey(name: 'subject_id')  String subjectId, @JsonKey(name: 'session_id')  String? sessionId,  String title,  String? description, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'assigned_date')  DateTime? assignedDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_subjects')  SubjectRef? subject,  List<SubmissionStatusRef> submissions)?  $default,) {final _that = this;
switch (_that) {
case _TeacherHomework() when $default != null:
return $default(_that.homeworkId,_that.type,_that.classId,_that.sectionId,_that.subjectId,_that.sessionId,_that.title,_that.description,_that.attachmentUrl,_that.assignedDate,_that.dueDate,_that.classRef,_that.sectionRef,_that.subject,_that.submissions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeacherHomework implements TeacherHomework {
  const _TeacherHomework({@JsonKey(name: 'homework_id') required this.homeworkId, this.type, @JsonKey(name: 'class_id') required this.classId, @JsonKey(name: 'section_id') required this.sectionId, @JsonKey(name: 'subject_id') required this.subjectId, @JsonKey(name: 'session_id') this.sessionId, required this.title, this.description, @JsonKey(name: 'attachment_url') this.attachmentUrl, @JsonKey(name: 'assigned_date') this.assignedDate, @JsonKey(name: 'due_date') this.dueDate, @JsonKey(name: 'classes') this.classRef, @JsonKey(name: 'sections') this.sectionRef, @JsonKey(name: 'academic_subjects') this.subject,  List<SubmissionStatusRef> submissions = const <SubmissionStatusRef>[]}): _submissions = submissions;
  factory _TeacherHomework.fromJson(Map<String, dynamic> json) => _$TeacherHomeworkFromJson(json);

@override@JsonKey(name: 'homework_id') final  String homeworkId;
@override final  String? type;
@override@JsonKey(name: 'class_id') final  String classId;
@override@JsonKey(name: 'section_id') final  String sectionId;
@override@JsonKey(name: 'subject_id') final  String subjectId;
@override@JsonKey(name: 'session_id') final  String? sessionId;
@override final  String title;
@override final  String? description;
@override@JsonKey(name: 'attachment_url') final  String? attachmentUrl;
@override@JsonKey(name: 'assigned_date') final  DateTime? assignedDate;
@override@JsonKey(name: 'due_date') final  DateTime? dueDate;
@override@JsonKey(name: 'classes') final  ClassRef? classRef;
@override@JsonKey(name: 'sections') final  SectionRef? sectionRef;
@override@JsonKey(name: 'academic_subjects') final  SubjectRef? subject;
 final  List<SubmissionStatusRef> _submissions;
@override@JsonKey() List<SubmissionStatusRef> get submissions {
  if (_submissions is EqualUnmodifiableListView) return _submissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_submissions);
}


/// Create a copy of TeacherHomework
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeacherHomeworkCopyWith<_TeacherHomework> get copyWith => __$TeacherHomeworkCopyWithImpl<_TeacherHomework>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeacherHomeworkToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeacherHomework&&(identical(other.homeworkId, homeworkId) || other.homeworkId == homeworkId)&&(identical(other.type, type) || other.type == type)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.assignedDate, assignedDate) || other.assignedDate == assignedDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.classRef, classRef) || other.classRef == classRef)&&(identical(other.sectionRef, sectionRef) || other.sectionRef == sectionRef)&&(identical(other.subject, subject) || other.subject == subject)&&const DeepCollectionEquality().equals(other.submissions, _submissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,homeworkId,type,classId,sectionId,subjectId,sessionId,title,description,attachmentUrl,assignedDate,dueDate,classRef,sectionRef,subject,const DeepCollectionEquality().hash(_submissions));
}

@override
String toString() {
    return 'TeacherHomework(homeworkId: $homeworkId, type: $type, classId: $classId, sectionId: $sectionId, subjectId: $subjectId, sessionId: $sessionId, title: $title, description: $description, attachmentUrl: $attachmentUrl, assignedDate: $assignedDate, dueDate: $dueDate, classRef: $classRef, sectionRef: $sectionRef, subject: $subject, submissions: $submissions)';
}


}

/// @nodoc
abstract mixin class _$TeacherHomeworkCopyWith<$Res> implements $TeacherHomeworkCopyWith<$Res> {
  factory _$TeacherHomeworkCopyWith(_TeacherHomework value, $Res Function(_TeacherHomework) _then) = __$TeacherHomeworkCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'homework_id') String homeworkId, String? type,@JsonKey(name: 'class_id') String classId,@JsonKey(name: 'section_id') String sectionId,@JsonKey(name: 'subject_id') String subjectId,@JsonKey(name: 'session_id') String? sessionId, String title, String? description,@JsonKey(name: 'attachment_url') String? attachmentUrl,@JsonKey(name: 'assigned_date') DateTime? assignedDate,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_subjects') SubjectRef? subject, List<SubmissionStatusRef> submissions
});


@override $ClassRefCopyWith<$Res>? get classRef;@override $SectionRefCopyWith<$Res>? get sectionRef;@override $SubjectRefCopyWith<$Res>? get subject;

}
/// @nodoc
class __$TeacherHomeworkCopyWithImpl<$Res>
    implements _$TeacherHomeworkCopyWith<$Res> {
  __$TeacherHomeworkCopyWithImpl(this._self, this._then);

  final _TeacherHomework _self;
  final $Res Function(_TeacherHomework) _then;

/// Create a copy of TeacherHomework
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? homeworkId = null,Object? type = freezed,Object? classId = null,Object? sectionId = null,Object? subjectId = null,Object? sessionId = freezed,Object? title = null,Object? description = freezed,Object? attachmentUrl = freezed,Object? assignedDate = freezed,Object? dueDate = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? subject = freezed,Object? submissions = null,}) {
  return _then(_TeacherHomework(
homeworkId: null == homeworkId ? _self.homeworkId : homeworkId // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String,sectionId: null == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,assignedDate: freezed == assignedDate ? _self.assignedDate : assignedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,submissions: null == submissions ? _self._submissions : submissions // ignore: cast_nullable_to_non_nullable
as List<SubmissionStatusRef>,
  ));
}

/// Create a copy of TeacherHomework
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
}/// Create a copy of TeacherHomework
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
}/// Create a copy of TeacherHomework
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
mixin _$SubmissionStatusRef {

@JsonKey(name: 'submission_id') String get submissionId; String? get status;
/// Create a copy of SubmissionStatusRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmissionStatusRefCopyWith<SubmissionStatusRef> get copyWith => _$SubmissionStatusRefCopyWithImpl<SubmissionStatusRef>(this as SubmissionStatusRef, _$identity);

  /// Serializes this SubmissionStatusRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SubmissionStatusRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmissionStatusRef&&(identical(other.submissionId, _this.submissionId) || other.submissionId == _this.submissionId)&&(identical(other.status, _this.status) || other.status == _this.status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SubmissionStatusRef;
  return Object.hash(runtimeType,_this.submissionId,_this.status);
}

@override
String toString() {
  final _this = this as SubmissionStatusRef;
  return 'SubmissionStatusRef(submissionId: ${_this.submissionId}, status: ${_this.status})';
}


}

/// @nodoc
abstract mixin class $SubmissionStatusRefCopyWith<$Res>  {
  factory $SubmissionStatusRefCopyWith(SubmissionStatusRef value, $Res Function(SubmissionStatusRef) _then) = _$SubmissionStatusRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'submission_id') String submissionId, String? status
});




}
/// @nodoc
class _$SubmissionStatusRefCopyWithImpl<$Res>
    implements $SubmissionStatusRefCopyWith<$Res> {
  _$SubmissionStatusRefCopyWithImpl(this._self, this._then);

  final SubmissionStatusRef _self;
  final $Res Function(SubmissionStatusRef) _then;

/// Create a copy of SubmissionStatusRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? submissionId = null,Object? status = freezed,}) {
  return _then(SubmissionStatusRef(
submissionId: null == submissionId ? _self.submissionId : submissionId // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmissionStatusRef].
extension SubmissionStatusRefPatterns on SubmissionStatusRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmissionStatusRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmissionStatusRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmissionStatusRef value)  $default,){
final _that = this;
switch (_that) {
case _SubmissionStatusRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmissionStatusRef value)?  $default,){
final _that = this;
switch (_that) {
case _SubmissionStatusRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'submission_id')  String submissionId,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmissionStatusRef() when $default != null:
return $default(_that.submissionId,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'submission_id')  String submissionId,  String? status)  $default,) {final _that = this;
switch (_that) {
case _SubmissionStatusRef():
return $default(_that.submissionId,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'submission_id')  String submissionId,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _SubmissionStatusRef() when $default != null:
return $default(_that.submissionId,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubmissionStatusRef implements SubmissionStatusRef {
  const _SubmissionStatusRef({@JsonKey(name: 'submission_id') required this.submissionId, this.status});
  factory _SubmissionStatusRef.fromJson(Map<String, dynamic> json) => _$SubmissionStatusRefFromJson(json);

@override@JsonKey(name: 'submission_id') final  String submissionId;
@override final  String? status;

/// Create a copy of SubmissionStatusRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmissionStatusRefCopyWith<_SubmissionStatusRef> get copyWith => __$SubmissionStatusRefCopyWithImpl<_SubmissionStatusRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubmissionStatusRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmissionStatusRef&&(identical(other.submissionId, submissionId) || other.submissionId == submissionId)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,submissionId,status);
}

@override
String toString() {
    return 'SubmissionStatusRef(submissionId: $submissionId, status: $status)';
}


}

/// @nodoc
abstract mixin class _$SubmissionStatusRefCopyWith<$Res> implements $SubmissionStatusRefCopyWith<$Res> {
  factory _$SubmissionStatusRefCopyWith(_SubmissionStatusRef value, $Res Function(_SubmissionStatusRef) _then) = __$SubmissionStatusRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'submission_id') String submissionId, String? status
});




}
/// @nodoc
class __$SubmissionStatusRefCopyWithImpl<$Res>
    implements _$SubmissionStatusRefCopyWith<$Res> {
  __$SubmissionStatusRefCopyWithImpl(this._self, this._then);

  final _SubmissionStatusRef _self;
  final $Res Function(_SubmissionStatusRef) _then;

/// Create a copy of SubmissionStatusRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? submissionId = null,Object? status = freezed,}) {
  return _then(_SubmissionStatusRef(
submissionId: null == submissionId ? _self.submissionId : submissionId // ignore: cast_nullable_to_non_nullable
as String,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TeacherSubmission {

@JsonKey(name: 'submission_id') String get submissionId;@JsonKey(name: 'homework_id') String? get homeworkId; String? get status;@JsonKey(name: 'effective_status') String? get effectiveStatus;@JsonKey(name: 'submitted_at') DateTime? get submittedAt;@JsonKey(name: 'attachment_url') String? get attachmentUrl; String? get remark;@JsonKey(name: 'remarked_at') DateTime? get remarkedAt;@JsonKey(name: 'students') StudentBrief? get student;
/// Create a copy of TeacherSubmission
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeacherSubmissionCopyWith<TeacherSubmission> get copyWith => _$TeacherSubmissionCopyWithImpl<TeacherSubmission>(this as TeacherSubmission, _$identity);

  /// Serializes this TeacherSubmission to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TeacherSubmission;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeacherSubmission&&(identical(other.submissionId, _this.submissionId) || other.submissionId == _this.submissionId)&&(identical(other.homeworkId, _this.homeworkId) || other.homeworkId == _this.homeworkId)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.effectiveStatus, _this.effectiveStatus) || other.effectiveStatus == _this.effectiveStatus)&&(identical(other.submittedAt, _this.submittedAt) || other.submittedAt == _this.submittedAt)&&(identical(other.attachmentUrl, _this.attachmentUrl) || other.attachmentUrl == _this.attachmentUrl)&&(identical(other.remark, _this.remark) || other.remark == _this.remark)&&(identical(other.remarkedAt, _this.remarkedAt) || other.remarkedAt == _this.remarkedAt)&&(identical(other.student, _this.student) || other.student == _this.student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TeacherSubmission;
  return Object.hash(runtimeType,_this.submissionId,_this.homeworkId,_this.status,_this.effectiveStatus,_this.submittedAt,_this.attachmentUrl,_this.remark,_this.remarkedAt,_this.student);
}

@override
String toString() {
  final _this = this as TeacherSubmission;
  return 'TeacherSubmission(submissionId: ${_this.submissionId}, homeworkId: ${_this.homeworkId}, status: ${_this.status}, effectiveStatus: ${_this.effectiveStatus}, submittedAt: ${_this.submittedAt}, attachmentUrl: ${_this.attachmentUrl}, remark: ${_this.remark}, remarkedAt: ${_this.remarkedAt}, student: ${_this.student})';
}


}

/// @nodoc
abstract mixin class $TeacherSubmissionCopyWith<$Res>  {
  factory $TeacherSubmissionCopyWith(TeacherSubmission value, $Res Function(TeacherSubmission) _then) = _$TeacherSubmissionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'submission_id') String submissionId,@JsonKey(name: 'homework_id') String? homeworkId, String? status,@JsonKey(name: 'effective_status') String? effectiveStatus,@JsonKey(name: 'submitted_at') DateTime? submittedAt,@JsonKey(name: 'attachment_url') String? attachmentUrl, String? remark,@JsonKey(name: 'remarked_at') DateTime? remarkedAt,@JsonKey(name: 'students') StudentBrief? student
});


$StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class _$TeacherSubmissionCopyWithImpl<$Res>
    implements $TeacherSubmissionCopyWith<$Res> {
  _$TeacherSubmissionCopyWithImpl(this._self, this._then);

  final TeacherSubmission _self;
  final $Res Function(TeacherSubmission) _then;

/// Create a copy of TeacherSubmission
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? submissionId = null,Object? homeworkId = freezed,Object? status = freezed,Object? effectiveStatus = freezed,Object? submittedAt = freezed,Object? attachmentUrl = freezed,Object? remark = freezed,Object? remarkedAt = freezed,Object? student = freezed,}) {
  return _then(TeacherSubmission(
submissionId: null == submissionId ? _self.submissionId : submissionId // ignore: cast_nullable_to_non_nullable
as String,homeworkId: freezed == homeworkId ? _self.homeworkId : homeworkId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,effectiveStatus: freezed == effectiveStatus ? _self.effectiveStatus : effectiveStatus // ignore: cast_nullable_to_non_nullable
as String?,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,remark: freezed == remark ? _self.remark : remark // ignore: cast_nullable_to_non_nullable
as String?,remarkedAt: freezed == remarkedAt ? _self.remarkedAt : remarkedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,
  ));
}
/// Create a copy of TeacherSubmission
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


/// Adds pattern-matching-related methods to [TeacherSubmission].
extension TeacherSubmissionPatterns on TeacherSubmission {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeacherSubmission value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeacherSubmission() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeacherSubmission value)  $default,){
final _that = this;
switch (_that) {
case _TeacherSubmission():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeacherSubmission value)?  $default,){
final _that = this;
switch (_that) {
case _TeacherSubmission() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'submission_id')  String submissionId, @JsonKey(name: 'homework_id')  String? homeworkId,  String? status, @JsonKey(name: 'effective_status')  String? effectiveStatus, @JsonKey(name: 'submitted_at')  DateTime? submittedAt, @JsonKey(name: 'attachment_url')  String? attachmentUrl,  String? remark, @JsonKey(name: 'remarked_at')  DateTime? remarkedAt, @JsonKey(name: 'students')  StudentBrief? student)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeacherSubmission() when $default != null:
return $default(_that.submissionId,_that.homeworkId,_that.status,_that.effectiveStatus,_that.submittedAt,_that.attachmentUrl,_that.remark,_that.remarkedAt,_that.student);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'submission_id')  String submissionId, @JsonKey(name: 'homework_id')  String? homeworkId,  String? status, @JsonKey(name: 'effective_status')  String? effectiveStatus, @JsonKey(name: 'submitted_at')  DateTime? submittedAt, @JsonKey(name: 'attachment_url')  String? attachmentUrl,  String? remark, @JsonKey(name: 'remarked_at')  DateTime? remarkedAt, @JsonKey(name: 'students')  StudentBrief? student)  $default,) {final _that = this;
switch (_that) {
case _TeacherSubmission():
return $default(_that.submissionId,_that.homeworkId,_that.status,_that.effectiveStatus,_that.submittedAt,_that.attachmentUrl,_that.remark,_that.remarkedAt,_that.student);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'submission_id')  String submissionId, @JsonKey(name: 'homework_id')  String? homeworkId,  String? status, @JsonKey(name: 'effective_status')  String? effectiveStatus, @JsonKey(name: 'submitted_at')  DateTime? submittedAt, @JsonKey(name: 'attachment_url')  String? attachmentUrl,  String? remark, @JsonKey(name: 'remarked_at')  DateTime? remarkedAt, @JsonKey(name: 'students')  StudentBrief? student)?  $default,) {final _that = this;
switch (_that) {
case _TeacherSubmission() when $default != null:
return $default(_that.submissionId,_that.homeworkId,_that.status,_that.effectiveStatus,_that.submittedAt,_that.attachmentUrl,_that.remark,_that.remarkedAt,_that.student);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeacherSubmission implements TeacherSubmission {
  const _TeacherSubmission({@JsonKey(name: 'submission_id') required this.submissionId, @JsonKey(name: 'homework_id') this.homeworkId, this.status, @JsonKey(name: 'effective_status') this.effectiveStatus, @JsonKey(name: 'submitted_at') this.submittedAt, @JsonKey(name: 'attachment_url') this.attachmentUrl, this.remark, @JsonKey(name: 'remarked_at') this.remarkedAt, @JsonKey(name: 'students') this.student});
  factory _TeacherSubmission.fromJson(Map<String, dynamic> json) => _$TeacherSubmissionFromJson(json);

@override@JsonKey(name: 'submission_id') final  String submissionId;
@override@JsonKey(name: 'homework_id') final  String? homeworkId;
@override final  String? status;
@override@JsonKey(name: 'effective_status') final  String? effectiveStatus;
@override@JsonKey(name: 'submitted_at') final  DateTime? submittedAt;
@override@JsonKey(name: 'attachment_url') final  String? attachmentUrl;
@override final  String? remark;
@override@JsonKey(name: 'remarked_at') final  DateTime? remarkedAt;
@override@JsonKey(name: 'students') final  StudentBrief? student;

/// Create a copy of TeacherSubmission
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeacherSubmissionCopyWith<_TeacherSubmission> get copyWith => __$TeacherSubmissionCopyWithImpl<_TeacherSubmission>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeacherSubmissionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeacherSubmission&&(identical(other.submissionId, submissionId) || other.submissionId == submissionId)&&(identical(other.homeworkId, homeworkId) || other.homeworkId == homeworkId)&&(identical(other.status, status) || other.status == status)&&(identical(other.effectiveStatus, effectiveStatus) || other.effectiveStatus == effectiveStatus)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.remark, remark) || other.remark == remark)&&(identical(other.remarkedAt, remarkedAt) || other.remarkedAt == remarkedAt)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,submissionId,homeworkId,status,effectiveStatus,submittedAt,attachmentUrl,remark,remarkedAt,student);
}

@override
String toString() {
    return 'TeacherSubmission(submissionId: $submissionId, homeworkId: $homeworkId, status: $status, effectiveStatus: $effectiveStatus, submittedAt: $submittedAt, attachmentUrl: $attachmentUrl, remark: $remark, remarkedAt: $remarkedAt, student: $student)';
}


}

/// @nodoc
abstract mixin class _$TeacherSubmissionCopyWith<$Res> implements $TeacherSubmissionCopyWith<$Res> {
  factory _$TeacherSubmissionCopyWith(_TeacherSubmission value, $Res Function(_TeacherSubmission) _then) = __$TeacherSubmissionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'submission_id') String submissionId,@JsonKey(name: 'homework_id') String? homeworkId, String? status,@JsonKey(name: 'effective_status') String? effectiveStatus,@JsonKey(name: 'submitted_at') DateTime? submittedAt,@JsonKey(name: 'attachment_url') String? attachmentUrl, String? remark,@JsonKey(name: 'remarked_at') DateTime? remarkedAt,@JsonKey(name: 'students') StudentBrief? student
});


@override $StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class __$TeacherSubmissionCopyWithImpl<$Res>
    implements _$TeacherSubmissionCopyWith<$Res> {
  __$TeacherSubmissionCopyWithImpl(this._self, this._then);

  final _TeacherSubmission _self;
  final $Res Function(_TeacherSubmission) _then;

/// Create a copy of TeacherSubmission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? submissionId = null,Object? homeworkId = freezed,Object? status = freezed,Object? effectiveStatus = freezed,Object? submittedAt = freezed,Object? attachmentUrl = freezed,Object? remark = freezed,Object? remarkedAt = freezed,Object? student = freezed,}) {
  return _then(_TeacherSubmission(
submissionId: null == submissionId ? _self.submissionId : submissionId // ignore: cast_nullable_to_non_nullable
as String,homeworkId: freezed == homeworkId ? _self.homeworkId : homeworkId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,effectiveStatus: freezed == effectiveStatus ? _self.effectiveStatus : effectiveStatus // ignore: cast_nullable_to_non_nullable
as String?,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,remark: freezed == remark ? _self.remark : remark // ignore: cast_nullable_to_non_nullable
as String?,remarkedAt: freezed == remarkedAt ? _self.remarkedAt : remarkedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,
  ));
}

/// Create a copy of TeacherSubmission
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


/// @nodoc
mixin _$HomeworkComment {

@JsonKey(name: 'comment_id') String get commentId;@JsonKey(name: 'comment_text') String get commentText;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'users') CommentAuthor? get author;
/// Create a copy of HomeworkComment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeworkCommentCopyWith<HomeworkComment> get copyWith => _$HomeworkCommentCopyWithImpl<HomeworkComment>(this as HomeworkComment, _$identity);

  /// Serializes this HomeworkComment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as HomeworkComment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeworkComment&&(identical(other.commentId, _this.commentId) || other.commentId == _this.commentId)&&(identical(other.commentText, _this.commentText) || other.commentText == _this.commentText)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.author, _this.author) || other.author == _this.author));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as HomeworkComment;
  return Object.hash(runtimeType,_this.commentId,_this.commentText,_this.createdAt,_this.author);
}

@override
String toString() {
  final _this = this as HomeworkComment;
  return 'HomeworkComment(commentId: ${_this.commentId}, commentText: ${_this.commentText}, createdAt: ${_this.createdAt}, author: ${_this.author})';
}


}

/// @nodoc
abstract mixin class $HomeworkCommentCopyWith<$Res>  {
  factory $HomeworkCommentCopyWith(HomeworkComment value, $Res Function(HomeworkComment) _then) = _$HomeworkCommentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'comment_id') String commentId,@JsonKey(name: 'comment_text') String commentText,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'users') CommentAuthor? author
});


$CommentAuthorCopyWith<$Res>? get author;

}
/// @nodoc
class _$HomeworkCommentCopyWithImpl<$Res>
    implements $HomeworkCommentCopyWith<$Res> {
  _$HomeworkCommentCopyWithImpl(this._self, this._then);

  final HomeworkComment _self;
  final $Res Function(HomeworkComment) _then;

/// Create a copy of HomeworkComment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? commentId = null,Object? commentText = null,Object? createdAt = freezed,Object? author = freezed,}) {
  return _then(HomeworkComment(
commentId: null == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String,commentText: null == commentText ? _self.commentText : commentText // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as CommentAuthor?,
  ));
}
/// Create a copy of HomeworkComment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentAuthorCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $CommentAuthorCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeworkComment].
extension HomeworkCommentPatterns on HomeworkComment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeworkComment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeworkComment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeworkComment value)  $default,){
final _that = this;
switch (_that) {
case _HomeworkComment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeworkComment value)?  $default,){
final _that = this;
switch (_that) {
case _HomeworkComment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'comment_id')  String commentId, @JsonKey(name: 'comment_text')  String commentText, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'users')  CommentAuthor? author)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeworkComment() when $default != null:
return $default(_that.commentId,_that.commentText,_that.createdAt,_that.author);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'comment_id')  String commentId, @JsonKey(name: 'comment_text')  String commentText, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'users')  CommentAuthor? author)  $default,) {final _that = this;
switch (_that) {
case _HomeworkComment():
return $default(_that.commentId,_that.commentText,_that.createdAt,_that.author);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'comment_id')  String commentId, @JsonKey(name: 'comment_text')  String commentText, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'users')  CommentAuthor? author)?  $default,) {final _that = this;
switch (_that) {
case _HomeworkComment() when $default != null:
return $default(_that.commentId,_that.commentText,_that.createdAt,_that.author);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeworkComment implements HomeworkComment {
  const _HomeworkComment({@JsonKey(name: 'comment_id') required this.commentId, @JsonKey(name: 'comment_text') required this.commentText, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'users') this.author});
  factory _HomeworkComment.fromJson(Map<String, dynamic> json) => _$HomeworkCommentFromJson(json);

@override@JsonKey(name: 'comment_id') final  String commentId;
@override@JsonKey(name: 'comment_text') final  String commentText;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'users') final  CommentAuthor? author;

/// Create a copy of HomeworkComment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeworkCommentCopyWith<_HomeworkComment> get copyWith => __$HomeworkCommentCopyWithImpl<_HomeworkComment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeworkCommentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeworkComment&&(identical(other.commentId, commentId) || other.commentId == commentId)&&(identical(other.commentText, commentText) || other.commentText == commentText)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.author, author) || other.author == author));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,commentId,commentText,createdAt,author);
}

@override
String toString() {
    return 'HomeworkComment(commentId: $commentId, commentText: $commentText, createdAt: $createdAt, author: $author)';
}


}

/// @nodoc
abstract mixin class _$HomeworkCommentCopyWith<$Res> implements $HomeworkCommentCopyWith<$Res> {
  factory _$HomeworkCommentCopyWith(_HomeworkComment value, $Res Function(_HomeworkComment) _then) = __$HomeworkCommentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'comment_id') String commentId,@JsonKey(name: 'comment_text') String commentText,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'users') CommentAuthor? author
});


@override $CommentAuthorCopyWith<$Res>? get author;

}
/// @nodoc
class __$HomeworkCommentCopyWithImpl<$Res>
    implements _$HomeworkCommentCopyWith<$Res> {
  __$HomeworkCommentCopyWithImpl(this._self, this._then);

  final _HomeworkComment _self;
  final $Res Function(_HomeworkComment) _then;

/// Create a copy of HomeworkComment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? commentId = null,Object? commentText = null,Object? createdAt = freezed,Object? author = freezed,}) {
  return _then(_HomeworkComment(
commentId: null == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String,commentText: null == commentText ? _self.commentText : commentText // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as CommentAuthor?,
  ));
}

/// Create a copy of HomeworkComment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentAuthorCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $CommentAuthorCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}


/// @nodoc
mixin _$CommentAuthor {

@JsonKey(name: 'user_id') String? get userId; String? get username;@JsonKey(name: 'staff_account') TeacherNameRef? get staffAccount;
/// Create a copy of CommentAuthor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentAuthorCopyWith<CommentAuthor> get copyWith => _$CommentAuthorCopyWithImpl<CommentAuthor>(this as CommentAuthor, _$identity);

  /// Serializes this CommentAuthor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CommentAuthor;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentAuthor&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.username, _this.username) || other.username == _this.username)&&(identical(other.staffAccount, _this.staffAccount) || other.staffAccount == _this.staffAccount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CommentAuthor;
  return Object.hash(runtimeType,_this.userId,_this.username,_this.staffAccount);
}

@override
String toString() {
  final _this = this as CommentAuthor;
  return 'CommentAuthor(userId: ${_this.userId}, username: ${_this.username}, staffAccount: ${_this.staffAccount})';
}


}

/// @nodoc
abstract mixin class $CommentAuthorCopyWith<$Res>  {
  factory $CommentAuthorCopyWith(CommentAuthor value, $Res Function(CommentAuthor) _then) = _$CommentAuthorCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String? userId, String? username,@JsonKey(name: 'staff_account') TeacherNameRef? staffAccount
});


$TeacherNameRefCopyWith<$Res>? get staffAccount;

}
/// @nodoc
class _$CommentAuthorCopyWithImpl<$Res>
    implements $CommentAuthorCopyWith<$Res> {
  _$CommentAuthorCopyWithImpl(this._self, this._then);

  final CommentAuthor _self;
  final $Res Function(CommentAuthor) _then;

/// Create a copy of CommentAuthor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? username = freezed,Object? staffAccount = freezed,}) {
  return _then(CommentAuthor(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,staffAccount: freezed == staffAccount ? _self.staffAccount : staffAccount // ignore: cast_nullable_to_non_nullable
as TeacherNameRef?,
  ));
}
/// Create a copy of CommentAuthor
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeacherNameRefCopyWith<$Res>? get staffAccount {
    if (_self.staffAccount == null) {
    return null;
  }

  return $TeacherNameRefCopyWith<$Res>(_self.staffAccount!, (value) {
    return _then(_self.copyWith(staffAccount: value));
  });
}
}


/// Adds pattern-matching-related methods to [CommentAuthor].
extension CommentAuthorPatterns on CommentAuthor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentAuthor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentAuthor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentAuthor value)  $default,){
final _that = this;
switch (_that) {
case _CommentAuthor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentAuthor value)?  $default,){
final _that = this;
switch (_that) {
case _CommentAuthor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String? userId,  String? username, @JsonKey(name: 'staff_account')  TeacherNameRef? staffAccount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentAuthor() when $default != null:
return $default(_that.userId,_that.username,_that.staffAccount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String? userId,  String? username, @JsonKey(name: 'staff_account')  TeacherNameRef? staffAccount)  $default,) {final _that = this;
switch (_that) {
case _CommentAuthor():
return $default(_that.userId,_that.username,_that.staffAccount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String? userId,  String? username, @JsonKey(name: 'staff_account')  TeacherNameRef? staffAccount)?  $default,) {final _that = this;
switch (_that) {
case _CommentAuthor() when $default != null:
return $default(_that.userId,_that.username,_that.staffAccount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommentAuthor implements CommentAuthor {
  const _CommentAuthor({@JsonKey(name: 'user_id') this.userId, this.username, @JsonKey(name: 'staff_account') this.staffAccount});
  factory _CommentAuthor.fromJson(Map<String, dynamic> json) => _$CommentAuthorFromJson(json);

@override@JsonKey(name: 'user_id') final  String? userId;
@override final  String? username;
@override@JsonKey(name: 'staff_account') final  TeacherNameRef? staffAccount;

/// Create a copy of CommentAuthor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentAuthorCopyWith<_CommentAuthor> get copyWith => __$CommentAuthorCopyWithImpl<_CommentAuthor>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentAuthorToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentAuthor&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.staffAccount, staffAccount) || other.staffAccount == staffAccount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,userId,username,staffAccount);
}

@override
String toString() {
    return 'CommentAuthor(userId: $userId, username: $username, staffAccount: $staffAccount)';
}


}

/// @nodoc
abstract mixin class _$CommentAuthorCopyWith<$Res> implements $CommentAuthorCopyWith<$Res> {
  factory _$CommentAuthorCopyWith(_CommentAuthor value, $Res Function(_CommentAuthor) _then) = __$CommentAuthorCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String? userId, String? username,@JsonKey(name: 'staff_account') TeacherNameRef? staffAccount
});


@override $TeacherNameRefCopyWith<$Res>? get staffAccount;

}
/// @nodoc
class __$CommentAuthorCopyWithImpl<$Res>
    implements _$CommentAuthorCopyWith<$Res> {
  __$CommentAuthorCopyWithImpl(this._self, this._then);

  final _CommentAuthor _self;
  final $Res Function(_CommentAuthor) _then;

/// Create a copy of CommentAuthor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? username = freezed,Object? staffAccount = freezed,}) {
  return _then(_CommentAuthor(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,staffAccount: freezed == staffAccount ? _self.staffAccount : staffAccount // ignore: cast_nullable_to_non_nullable
as TeacherNameRef?,
  ));
}

/// Create a copy of CommentAuthor
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeacherNameRefCopyWith<$Res>? get staffAccount {
    if (_self.staffAccount == null) {
    return null;
  }

  return $TeacherNameRefCopyWith<$Res>(_self.staffAccount!, (value) {
    return _then(_self.copyWith(staffAccount: value));
  });
}
}

// dart format on
