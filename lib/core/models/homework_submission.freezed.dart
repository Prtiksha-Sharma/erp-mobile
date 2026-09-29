// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homework_submission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TeacherRef {

 String get username;
/// Create a copy of TeacherRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeacherRefCopyWith<TeacherRef> get copyWith => _$TeacherRefCopyWithImpl<TeacherRef>(this as TeacherRef, _$identity);

  /// Serializes this TeacherRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TeacherRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeacherRef&&(identical(other.username, _this.username) || other.username == _this.username));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TeacherRef;
  return Object.hash(runtimeType,_this.username);
}

@override
String toString() {
  final _this = this as TeacherRef;
  return 'TeacherRef(username: ${_this.username})';
}


}

/// @nodoc
abstract mixin class $TeacherRefCopyWith<$Res>  {
  factory $TeacherRefCopyWith(TeacherRef value, $Res Function(TeacherRef) _then) = _$TeacherRefCopyWithImpl;
@useResult
$Res call({
 String username
});




}
/// @nodoc
class _$TeacherRefCopyWithImpl<$Res>
    implements $TeacherRefCopyWith<$Res> {
  _$TeacherRefCopyWithImpl(this._self, this._then);

  final TeacherRef _self;
  final $Res Function(TeacherRef) _then;

/// Create a copy of TeacherRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,}) {
  return _then(TeacherRef(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TeacherRef].
extension TeacherRefPatterns on TeacherRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeacherRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeacherRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeacherRef value)  $default,){
final _that = this;
switch (_that) {
case _TeacherRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeacherRef value)?  $default,){
final _that = this;
switch (_that) {
case _TeacherRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeacherRef() when $default != null:
return $default(_that.username);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username)  $default,) {final _that = this;
switch (_that) {
case _TeacherRef():
return $default(_that.username);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username)?  $default,) {final _that = this;
switch (_that) {
case _TeacherRef() when $default != null:
return $default(_that.username);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeacherRef implements TeacherRef {
  const _TeacherRef({required this.username});
  factory _TeacherRef.fromJson(Map<String, dynamic> json) => _$TeacherRefFromJson(json);

@override final  String username;

/// Create a copy of TeacherRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeacherRefCopyWith<_TeacherRef> get copyWith => __$TeacherRefCopyWithImpl<_TeacherRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeacherRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeacherRef&&(identical(other.username, username) || other.username == username));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,username);
}

@override
String toString() {
    return 'TeacherRef(username: $username)';
}


}

/// @nodoc
abstract mixin class _$TeacherRefCopyWith<$Res> implements $TeacherRefCopyWith<$Res> {
  factory _$TeacherRefCopyWith(_TeacherRef value, $Res Function(_TeacherRef) _then) = __$TeacherRefCopyWithImpl;
@override @useResult
$Res call({
 String username
});




}
/// @nodoc
class __$TeacherRefCopyWithImpl<$Res>
    implements _$TeacherRefCopyWith<$Res> {
  __$TeacherRefCopyWithImpl(this._self, this._then);

  final _TeacherRef _self;
  final $Res Function(_TeacherRef) _then;

/// Create a copy of TeacherRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,}) {
  return _then(_TeacherRef(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$HomeworkInfo {

 String get title; String? get description;@JsonKey(name: 'due_date') DateTime get dueDate;@JsonKey(name: 'assigned_date') DateTime get assignedDate;@JsonKey(name: 'attachment_url') String? get attachmentUrl;@JsonKey(name: 'academic_subjects') SubjectRef get subject;@JsonKey(name: 'users') TeacherRef get assignedBy;
/// Create a copy of HomeworkInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeworkInfoCopyWith<HomeworkInfo> get copyWith => _$HomeworkInfoCopyWithImpl<HomeworkInfo>(this as HomeworkInfo, _$identity);

  /// Serializes this HomeworkInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as HomeworkInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeworkInfo&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.assignedDate, _this.assignedDate) || other.assignedDate == _this.assignedDate)&&(identical(other.attachmentUrl, _this.attachmentUrl) || other.attachmentUrl == _this.attachmentUrl)&&(identical(other.subject, _this.subject) || other.subject == _this.subject)&&(identical(other.assignedBy, _this.assignedBy) || other.assignedBy == _this.assignedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as HomeworkInfo;
  return Object.hash(runtimeType,_this.title,_this.description,_this.dueDate,_this.assignedDate,_this.attachmentUrl,_this.subject,_this.assignedBy);
}

@override
String toString() {
  final _this = this as HomeworkInfo;
  return 'HomeworkInfo(title: ${_this.title}, description: ${_this.description}, dueDate: ${_this.dueDate}, assignedDate: ${_this.assignedDate}, attachmentUrl: ${_this.attachmentUrl}, subject: ${_this.subject}, assignedBy: ${_this.assignedBy})';
}


}

/// @nodoc
abstract mixin class $HomeworkInfoCopyWith<$Res>  {
  factory $HomeworkInfoCopyWith(HomeworkInfo value, $Res Function(HomeworkInfo) _then) = _$HomeworkInfoCopyWithImpl;
@useResult
$Res call({
 String title, String? description,@JsonKey(name: 'due_date') DateTime dueDate,@JsonKey(name: 'assigned_date') DateTime assignedDate,@JsonKey(name: 'attachment_url') String? attachmentUrl,@JsonKey(name: 'academic_subjects') SubjectRef subject,@JsonKey(name: 'users') TeacherRef assignedBy
});


$SubjectRefCopyWith<$Res> get subject;$TeacherRefCopyWith<$Res> get assignedBy;

}
/// @nodoc
class _$HomeworkInfoCopyWithImpl<$Res>
    implements $HomeworkInfoCopyWith<$Res> {
  _$HomeworkInfoCopyWithImpl(this._self, this._then);

  final HomeworkInfo _self;
  final $Res Function(HomeworkInfo) _then;

/// Create a copy of HomeworkInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = freezed,Object? dueDate = null,Object? assignedDate = null,Object? attachmentUrl = freezed,Object? subject = null,Object? assignedBy = null,}) {
  return _then(HomeworkInfo(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,assignedDate: null == assignedDate ? _self.assignedDate : assignedDate // ignore: cast_nullable_to_non_nullable
as DateTime,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef,assignedBy: null == assignedBy ? _self.assignedBy : assignedBy // ignore: cast_nullable_to_non_nullable
as TeacherRef,
  ));
}
/// Create a copy of HomeworkInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubjectRefCopyWith<$Res> get subject {
  
  return $SubjectRefCopyWith<$Res>(_self.subject, (value) {
    return _then(_self.copyWith(subject: value));
  });
}/// Create a copy of HomeworkInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeacherRefCopyWith<$Res> get assignedBy {
  
  return $TeacherRefCopyWith<$Res>(_self.assignedBy, (value) {
    return _then(_self.copyWith(assignedBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeworkInfo].
extension HomeworkInfoPatterns on HomeworkInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeworkInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeworkInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeworkInfo value)  $default,){
final _that = this;
switch (_that) {
case _HomeworkInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeworkInfo value)?  $default,){
final _that = this;
switch (_that) {
case _HomeworkInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String? description, @JsonKey(name: 'due_date')  DateTime dueDate, @JsonKey(name: 'assigned_date')  DateTime assignedDate, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'academic_subjects')  SubjectRef subject, @JsonKey(name: 'users')  TeacherRef assignedBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeworkInfo() when $default != null:
return $default(_that.title,_that.description,_that.dueDate,_that.assignedDate,_that.attachmentUrl,_that.subject,_that.assignedBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String? description, @JsonKey(name: 'due_date')  DateTime dueDate, @JsonKey(name: 'assigned_date')  DateTime assignedDate, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'academic_subjects')  SubjectRef subject, @JsonKey(name: 'users')  TeacherRef assignedBy)  $default,) {final _that = this;
switch (_that) {
case _HomeworkInfo():
return $default(_that.title,_that.description,_that.dueDate,_that.assignedDate,_that.attachmentUrl,_that.subject,_that.assignedBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String? description, @JsonKey(name: 'due_date')  DateTime dueDate, @JsonKey(name: 'assigned_date')  DateTime assignedDate, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'academic_subjects')  SubjectRef subject, @JsonKey(name: 'users')  TeacherRef assignedBy)?  $default,) {final _that = this;
switch (_that) {
case _HomeworkInfo() when $default != null:
return $default(_that.title,_that.description,_that.dueDate,_that.assignedDate,_that.attachmentUrl,_that.subject,_that.assignedBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeworkInfo implements HomeworkInfo {
  const _HomeworkInfo({required this.title, this.description, @JsonKey(name: 'due_date') required this.dueDate, @JsonKey(name: 'assigned_date') required this.assignedDate, @JsonKey(name: 'attachment_url') this.attachmentUrl, @JsonKey(name: 'academic_subjects') required this.subject, @JsonKey(name: 'users') required this.assignedBy});
  factory _HomeworkInfo.fromJson(Map<String, dynamic> json) => _$HomeworkInfoFromJson(json);

@override final  String title;
@override final  String? description;
@override@JsonKey(name: 'due_date') final  DateTime dueDate;
@override@JsonKey(name: 'assigned_date') final  DateTime assignedDate;
@override@JsonKey(name: 'attachment_url') final  String? attachmentUrl;
@override@JsonKey(name: 'academic_subjects') final  SubjectRef subject;
@override@JsonKey(name: 'users') final  TeacherRef assignedBy;

/// Create a copy of HomeworkInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeworkInfoCopyWith<_HomeworkInfo> get copyWith => __$HomeworkInfoCopyWithImpl<_HomeworkInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeworkInfoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeworkInfo&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.assignedDate, assignedDate) || other.assignedDate == assignedDate)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.assignedBy, assignedBy) || other.assignedBy == assignedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,title,description,dueDate,assignedDate,attachmentUrl,subject,assignedBy);
}

@override
String toString() {
    return 'HomeworkInfo(title: $title, description: $description, dueDate: $dueDate, assignedDate: $assignedDate, attachmentUrl: $attachmentUrl, subject: $subject, assignedBy: $assignedBy)';
}


}

/// @nodoc
abstract mixin class _$HomeworkInfoCopyWith<$Res> implements $HomeworkInfoCopyWith<$Res> {
  factory _$HomeworkInfoCopyWith(_HomeworkInfo value, $Res Function(_HomeworkInfo) _then) = __$HomeworkInfoCopyWithImpl;
@override @useResult
$Res call({
 String title, String? description,@JsonKey(name: 'due_date') DateTime dueDate,@JsonKey(name: 'assigned_date') DateTime assignedDate,@JsonKey(name: 'attachment_url') String? attachmentUrl,@JsonKey(name: 'academic_subjects') SubjectRef subject,@JsonKey(name: 'users') TeacherRef assignedBy
});


@override $SubjectRefCopyWith<$Res> get subject;@override $TeacherRefCopyWith<$Res> get assignedBy;

}
/// @nodoc
class __$HomeworkInfoCopyWithImpl<$Res>
    implements _$HomeworkInfoCopyWith<$Res> {
  __$HomeworkInfoCopyWithImpl(this._self, this._then);

  final _HomeworkInfo _self;
  final $Res Function(_HomeworkInfo) _then;

/// Create a copy of HomeworkInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = freezed,Object? dueDate = null,Object? assignedDate = null,Object? attachmentUrl = freezed,Object? subject = null,Object? assignedBy = null,}) {
  return _then(_HomeworkInfo(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,assignedDate: null == assignedDate ? _self.assignedDate : assignedDate // ignore: cast_nullable_to_non_nullable
as DateTime,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef,assignedBy: null == assignedBy ? _self.assignedBy : assignedBy // ignore: cast_nullable_to_non_nullable
as TeacherRef,
  ));
}

/// Create a copy of HomeworkInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubjectRefCopyWith<$Res> get subject {
  
  return $SubjectRefCopyWith<$Res>(_self.subject, (value) {
    return _then(_self.copyWith(subject: value));
  });
}/// Create a copy of HomeworkInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeacherRefCopyWith<$Res> get assignedBy {
  
  return $TeacherRefCopyWith<$Res>(_self.assignedBy, (value) {
    return _then(_self.copyWith(assignedBy: value));
  });
}
}


/// @nodoc
mixin _$HomeworkSubmission {

@JsonKey(name: 'submission_id') String get submissionId;@JsonKey(name: 'homework_id') String get homeworkId;@JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.unknown) HomeworkStatus get status;@JsonKey(name: 'effective_status', unknownEnumValue: HomeworkStatus.unknown) HomeworkStatus get effectiveStatus;@JsonKey(name: 'submitted_at') DateTime? get submittedAt;@JsonKey(name: 'attachment_url') String? get attachmentUrl; String? get remark;@JsonKey(name: 'remarked_at') DateTime? get remarkedAt;@JsonKey(name: 'academic_homework') HomeworkInfo get homework;
/// Create a copy of HomeworkSubmission
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeworkSubmissionCopyWith<HomeworkSubmission> get copyWith => _$HomeworkSubmissionCopyWithImpl<HomeworkSubmission>(this as HomeworkSubmission, _$identity);

  /// Serializes this HomeworkSubmission to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as HomeworkSubmission;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeworkSubmission&&(identical(other.submissionId, _this.submissionId) || other.submissionId == _this.submissionId)&&(identical(other.homeworkId, _this.homeworkId) || other.homeworkId == _this.homeworkId)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.effectiveStatus, _this.effectiveStatus) || other.effectiveStatus == _this.effectiveStatus)&&(identical(other.submittedAt, _this.submittedAt) || other.submittedAt == _this.submittedAt)&&(identical(other.attachmentUrl, _this.attachmentUrl) || other.attachmentUrl == _this.attachmentUrl)&&(identical(other.remark, _this.remark) || other.remark == _this.remark)&&(identical(other.remarkedAt, _this.remarkedAt) || other.remarkedAt == _this.remarkedAt)&&(identical(other.homework, _this.homework) || other.homework == _this.homework));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as HomeworkSubmission;
  return Object.hash(runtimeType,_this.submissionId,_this.homeworkId,_this.status,_this.effectiveStatus,_this.submittedAt,_this.attachmentUrl,_this.remark,_this.remarkedAt,_this.homework);
}

@override
String toString() {
  final _this = this as HomeworkSubmission;
  return 'HomeworkSubmission(submissionId: ${_this.submissionId}, homeworkId: ${_this.homeworkId}, status: ${_this.status}, effectiveStatus: ${_this.effectiveStatus}, submittedAt: ${_this.submittedAt}, attachmentUrl: ${_this.attachmentUrl}, remark: ${_this.remark}, remarkedAt: ${_this.remarkedAt}, homework: ${_this.homework})';
}


}

/// @nodoc
abstract mixin class $HomeworkSubmissionCopyWith<$Res>  {
  factory $HomeworkSubmissionCopyWith(HomeworkSubmission value, $Res Function(HomeworkSubmission) _then) = _$HomeworkSubmissionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'submission_id') String submissionId,@JsonKey(name: 'homework_id') String homeworkId,@JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.unknown) HomeworkStatus status,@JsonKey(name: 'effective_status', unknownEnumValue: HomeworkStatus.unknown) HomeworkStatus effectiveStatus,@JsonKey(name: 'submitted_at') DateTime? submittedAt,@JsonKey(name: 'attachment_url') String? attachmentUrl, String? remark,@JsonKey(name: 'remarked_at') DateTime? remarkedAt,@JsonKey(name: 'academic_homework') HomeworkInfo homework
});


$HomeworkInfoCopyWith<$Res> get homework;

}
/// @nodoc
class _$HomeworkSubmissionCopyWithImpl<$Res>
    implements $HomeworkSubmissionCopyWith<$Res> {
  _$HomeworkSubmissionCopyWithImpl(this._self, this._then);

  final HomeworkSubmission _self;
  final $Res Function(HomeworkSubmission) _then;

/// Create a copy of HomeworkSubmission
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? submissionId = null,Object? homeworkId = null,Object? status = null,Object? effectiveStatus = null,Object? submittedAt = freezed,Object? attachmentUrl = freezed,Object? remark = freezed,Object? remarkedAt = freezed,Object? homework = null,}) {
  return _then(HomeworkSubmission(
submissionId: null == submissionId ? _self.submissionId : submissionId // ignore: cast_nullable_to_non_nullable
as String,homeworkId: null == homeworkId ? _self.homeworkId : homeworkId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HomeworkStatus,effectiveStatus: null == effectiveStatus ? _self.effectiveStatus : effectiveStatus // ignore: cast_nullable_to_non_nullable
as HomeworkStatus,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,remark: freezed == remark ? _self.remark : remark // ignore: cast_nullable_to_non_nullable
as String?,remarkedAt: freezed == remarkedAt ? _self.remarkedAt : remarkedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,homework: null == homework ? _self.homework : homework // ignore: cast_nullable_to_non_nullable
as HomeworkInfo,
  ));
}
/// Create a copy of HomeworkSubmission
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeworkInfoCopyWith<$Res> get homework {
  
  return $HomeworkInfoCopyWith<$Res>(_self.homework, (value) {
    return _then(_self.copyWith(homework: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeworkSubmission].
extension HomeworkSubmissionPatterns on HomeworkSubmission {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeworkSubmission value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeworkSubmission() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeworkSubmission value)  $default,){
final _that = this;
switch (_that) {
case _HomeworkSubmission():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeworkSubmission value)?  $default,){
final _that = this;
switch (_that) {
case _HomeworkSubmission() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'submission_id')  String submissionId, @JsonKey(name: 'homework_id')  String homeworkId, @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.unknown)  HomeworkStatus status, @JsonKey(name: 'effective_status', unknownEnumValue: HomeworkStatus.unknown)  HomeworkStatus effectiveStatus, @JsonKey(name: 'submitted_at')  DateTime? submittedAt, @JsonKey(name: 'attachment_url')  String? attachmentUrl,  String? remark, @JsonKey(name: 'remarked_at')  DateTime? remarkedAt, @JsonKey(name: 'academic_homework')  HomeworkInfo homework)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeworkSubmission() when $default != null:
return $default(_that.submissionId,_that.homeworkId,_that.status,_that.effectiveStatus,_that.submittedAt,_that.attachmentUrl,_that.remark,_that.remarkedAt,_that.homework);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'submission_id')  String submissionId, @JsonKey(name: 'homework_id')  String homeworkId, @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.unknown)  HomeworkStatus status, @JsonKey(name: 'effective_status', unknownEnumValue: HomeworkStatus.unknown)  HomeworkStatus effectiveStatus, @JsonKey(name: 'submitted_at')  DateTime? submittedAt, @JsonKey(name: 'attachment_url')  String? attachmentUrl,  String? remark, @JsonKey(name: 'remarked_at')  DateTime? remarkedAt, @JsonKey(name: 'academic_homework')  HomeworkInfo homework)  $default,) {final _that = this;
switch (_that) {
case _HomeworkSubmission():
return $default(_that.submissionId,_that.homeworkId,_that.status,_that.effectiveStatus,_that.submittedAt,_that.attachmentUrl,_that.remark,_that.remarkedAt,_that.homework);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'submission_id')  String submissionId, @JsonKey(name: 'homework_id')  String homeworkId, @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.unknown)  HomeworkStatus status, @JsonKey(name: 'effective_status', unknownEnumValue: HomeworkStatus.unknown)  HomeworkStatus effectiveStatus, @JsonKey(name: 'submitted_at')  DateTime? submittedAt, @JsonKey(name: 'attachment_url')  String? attachmentUrl,  String? remark, @JsonKey(name: 'remarked_at')  DateTime? remarkedAt, @JsonKey(name: 'academic_homework')  HomeworkInfo homework)?  $default,) {final _that = this;
switch (_that) {
case _HomeworkSubmission() when $default != null:
return $default(_that.submissionId,_that.homeworkId,_that.status,_that.effectiveStatus,_that.submittedAt,_that.attachmentUrl,_that.remark,_that.remarkedAt,_that.homework);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeworkSubmission implements HomeworkSubmission {
  const _HomeworkSubmission({@JsonKey(name: 'submission_id') required this.submissionId, @JsonKey(name: 'homework_id') required this.homeworkId, @JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.unknown) required this.status, @JsonKey(name: 'effective_status', unknownEnumValue: HomeworkStatus.unknown) required this.effectiveStatus, @JsonKey(name: 'submitted_at') this.submittedAt, @JsonKey(name: 'attachment_url') this.attachmentUrl, this.remark, @JsonKey(name: 'remarked_at') this.remarkedAt, @JsonKey(name: 'academic_homework') required this.homework});
  factory _HomeworkSubmission.fromJson(Map<String, dynamic> json) => _$HomeworkSubmissionFromJson(json);

@override@JsonKey(name: 'submission_id') final  String submissionId;
@override@JsonKey(name: 'homework_id') final  String homeworkId;
@override@JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.unknown) final  HomeworkStatus status;
@override@JsonKey(name: 'effective_status', unknownEnumValue: HomeworkStatus.unknown) final  HomeworkStatus effectiveStatus;
@override@JsonKey(name: 'submitted_at') final  DateTime? submittedAt;
@override@JsonKey(name: 'attachment_url') final  String? attachmentUrl;
@override final  String? remark;
@override@JsonKey(name: 'remarked_at') final  DateTime? remarkedAt;
@override@JsonKey(name: 'academic_homework') final  HomeworkInfo homework;

/// Create a copy of HomeworkSubmission
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeworkSubmissionCopyWith<_HomeworkSubmission> get copyWith => __$HomeworkSubmissionCopyWithImpl<_HomeworkSubmission>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeworkSubmissionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeworkSubmission&&(identical(other.submissionId, submissionId) || other.submissionId == submissionId)&&(identical(other.homeworkId, homeworkId) || other.homeworkId == homeworkId)&&(identical(other.status, status) || other.status == status)&&(identical(other.effectiveStatus, effectiveStatus) || other.effectiveStatus == effectiveStatus)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.remark, remark) || other.remark == remark)&&(identical(other.remarkedAt, remarkedAt) || other.remarkedAt == remarkedAt)&&(identical(other.homework, homework) || other.homework == homework));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,submissionId,homeworkId,status,effectiveStatus,submittedAt,attachmentUrl,remark,remarkedAt,homework);
}

@override
String toString() {
    return 'HomeworkSubmission(submissionId: $submissionId, homeworkId: $homeworkId, status: $status, effectiveStatus: $effectiveStatus, submittedAt: $submittedAt, attachmentUrl: $attachmentUrl, remark: $remark, remarkedAt: $remarkedAt, homework: $homework)';
}


}

/// @nodoc
abstract mixin class _$HomeworkSubmissionCopyWith<$Res> implements $HomeworkSubmissionCopyWith<$Res> {
  factory _$HomeworkSubmissionCopyWith(_HomeworkSubmission value, $Res Function(_HomeworkSubmission) _then) = __$HomeworkSubmissionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'submission_id') String submissionId,@JsonKey(name: 'homework_id') String homeworkId,@JsonKey(name: 'status', unknownEnumValue: HomeworkStatus.unknown) HomeworkStatus status,@JsonKey(name: 'effective_status', unknownEnumValue: HomeworkStatus.unknown) HomeworkStatus effectiveStatus,@JsonKey(name: 'submitted_at') DateTime? submittedAt,@JsonKey(name: 'attachment_url') String? attachmentUrl, String? remark,@JsonKey(name: 'remarked_at') DateTime? remarkedAt,@JsonKey(name: 'academic_homework') HomeworkInfo homework
});


@override $HomeworkInfoCopyWith<$Res> get homework;

}
/// @nodoc
class __$HomeworkSubmissionCopyWithImpl<$Res>
    implements _$HomeworkSubmissionCopyWith<$Res> {
  __$HomeworkSubmissionCopyWithImpl(this._self, this._then);

  final _HomeworkSubmission _self;
  final $Res Function(_HomeworkSubmission) _then;

/// Create a copy of HomeworkSubmission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? submissionId = null,Object? homeworkId = null,Object? status = null,Object? effectiveStatus = null,Object? submittedAt = freezed,Object? attachmentUrl = freezed,Object? remark = freezed,Object? remarkedAt = freezed,Object? homework = null,}) {
  return _then(_HomeworkSubmission(
submissionId: null == submissionId ? _self.submissionId : submissionId // ignore: cast_nullable_to_non_nullable
as String,homeworkId: null == homeworkId ? _self.homeworkId : homeworkId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HomeworkStatus,effectiveStatus: null == effectiveStatus ? _self.effectiveStatus : effectiveStatus // ignore: cast_nullable_to_non_nullable
as HomeworkStatus,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,remark: freezed == remark ? _self.remark : remark // ignore: cast_nullable_to_non_nullable
as String?,remarkedAt: freezed == remarkedAt ? _self.remarkedAt : remarkedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,homework: null == homework ? _self.homework : homework // ignore: cast_nullable_to_non_nullable
as HomeworkInfo,
  ));
}

/// Create a copy of HomeworkSubmission
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeworkInfoCopyWith<$Res> get homework {
  
  return $HomeworkInfoCopyWith<$Res>(_self.homework, (value) {
    return _then(_self.copyWith(homework: value));
  });
}
}

// dart format on
