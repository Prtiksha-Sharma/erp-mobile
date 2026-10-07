// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_management.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassTeacherDashboard {

@JsonKey(name: 'session_id') String get sessionId;@JsonKey(name: 'total_teachers') int get totalTeachers;@JsonKey(name: 'total_class_teachers') int get totalClassTeachers;@JsonKey(name: 'teachers_without_class_assignment') int get teachersWithoutClassAssignment;@JsonKey(name: 'today_teacher_attendance') Map<String, int> get todayTeacherAttendance;@JsonKey(name: 'leave_requests_pending') int get leaveRequestsPending;@JsonKey(name: 'recently_assigned_class_teachers') List<RecentClassTeacherAssignment> get recentlyAssigned;
/// Create a copy of ClassTeacherDashboard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherDashboardCopyWith<ClassTeacherDashboard> get copyWith => _$ClassTeacherDashboardCopyWithImpl<ClassTeacherDashboard>(this as ClassTeacherDashboard, _$identity);

  /// Serializes this ClassTeacherDashboard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherDashboard;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherDashboard&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.totalTeachers, _this.totalTeachers) || other.totalTeachers == _this.totalTeachers)&&(identical(other.totalClassTeachers, _this.totalClassTeachers) || other.totalClassTeachers == _this.totalClassTeachers)&&(identical(other.teachersWithoutClassAssignment, _this.teachersWithoutClassAssignment) || other.teachersWithoutClassAssignment == _this.teachersWithoutClassAssignment)&&const DeepCollectionEquality().equals(other.todayTeacherAttendance, _this.todayTeacherAttendance)&&(identical(other.leaveRequestsPending, _this.leaveRequestsPending) || other.leaveRequestsPending == _this.leaveRequestsPending)&&const DeepCollectionEquality().equals(other.recentlyAssigned, _this.recentlyAssigned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherDashboard;
  return Object.hash(runtimeType,_this.sessionId,_this.totalTeachers,_this.totalClassTeachers,_this.teachersWithoutClassAssignment,const DeepCollectionEquality().hash(_this.todayTeacherAttendance),_this.leaveRequestsPending,const DeepCollectionEquality().hash(_this.recentlyAssigned));
}

@override
String toString() {
  final _this = this as ClassTeacherDashboard;
  return 'ClassTeacherDashboard(sessionId: ${_this.sessionId}, totalTeachers: ${_this.totalTeachers}, totalClassTeachers: ${_this.totalClassTeachers}, teachersWithoutClassAssignment: ${_this.teachersWithoutClassAssignment}, todayTeacherAttendance: ${_this.todayTeacherAttendance}, leaveRequestsPending: ${_this.leaveRequestsPending}, recentlyAssigned: ${_this.recentlyAssigned})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherDashboardCopyWith<$Res>  {
  factory $ClassTeacherDashboardCopyWith(ClassTeacherDashboard value, $Res Function(ClassTeacherDashboard) _then) = _$ClassTeacherDashboardCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'total_teachers') int totalTeachers,@JsonKey(name: 'total_class_teachers') int totalClassTeachers,@JsonKey(name: 'teachers_without_class_assignment') int teachersWithoutClassAssignment,@JsonKey(name: 'today_teacher_attendance') Map<String, int> todayTeacherAttendance,@JsonKey(name: 'leave_requests_pending') int leaveRequestsPending,@JsonKey(name: 'recently_assigned_class_teachers') List<RecentClassTeacherAssignment> recentlyAssigned
});




}
/// @nodoc
class _$ClassTeacherDashboardCopyWithImpl<$Res>
    implements $ClassTeacherDashboardCopyWith<$Res> {
  _$ClassTeacherDashboardCopyWithImpl(this._self, this._then);

  final ClassTeacherDashboard _self;
  final $Res Function(ClassTeacherDashboard) _then;

/// Create a copy of ClassTeacherDashboard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,Object? totalTeachers = null,Object? totalClassTeachers = null,Object? teachersWithoutClassAssignment = null,Object? todayTeacherAttendance = null,Object? leaveRequestsPending = null,Object? recentlyAssigned = null,}) {
  return _then(ClassTeacherDashboard(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,totalTeachers: null == totalTeachers ? _self.totalTeachers : totalTeachers // ignore: cast_nullable_to_non_nullable
as int,totalClassTeachers: null == totalClassTeachers ? _self.totalClassTeachers : totalClassTeachers // ignore: cast_nullable_to_non_nullable
as int,teachersWithoutClassAssignment: null == teachersWithoutClassAssignment ? _self.teachersWithoutClassAssignment : teachersWithoutClassAssignment // ignore: cast_nullable_to_non_nullable
as int,todayTeacherAttendance: null == todayTeacherAttendance ? _self.todayTeacherAttendance : todayTeacherAttendance // ignore: cast_nullable_to_non_nullable
as Map<String, int>,leaveRequestsPending: null == leaveRequestsPending ? _self.leaveRequestsPending : leaveRequestsPending // ignore: cast_nullable_to_non_nullable
as int,recentlyAssigned: null == recentlyAssigned ? _self.recentlyAssigned : recentlyAssigned // ignore: cast_nullable_to_non_nullable
as List<RecentClassTeacherAssignment>,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassTeacherDashboard].
extension ClassTeacherDashboardPatterns on ClassTeacherDashboard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherDashboard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherDashboard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherDashboard value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherDashboard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherDashboard value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherDashboard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'total_teachers')  int totalTeachers, @JsonKey(name: 'total_class_teachers')  int totalClassTeachers, @JsonKey(name: 'teachers_without_class_assignment')  int teachersWithoutClassAssignment, @JsonKey(name: 'today_teacher_attendance')  Map<String, int> todayTeacherAttendance, @JsonKey(name: 'leave_requests_pending')  int leaveRequestsPending, @JsonKey(name: 'recently_assigned_class_teachers')  List<RecentClassTeacherAssignment> recentlyAssigned)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassTeacherDashboard() when $default != null:
return $default(_that.sessionId,_that.totalTeachers,_that.totalClassTeachers,_that.teachersWithoutClassAssignment,_that.todayTeacherAttendance,_that.leaveRequestsPending,_that.recentlyAssigned);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'total_teachers')  int totalTeachers, @JsonKey(name: 'total_class_teachers')  int totalClassTeachers, @JsonKey(name: 'teachers_without_class_assignment')  int teachersWithoutClassAssignment, @JsonKey(name: 'today_teacher_attendance')  Map<String, int> todayTeacherAttendance, @JsonKey(name: 'leave_requests_pending')  int leaveRequestsPending, @JsonKey(name: 'recently_assigned_class_teachers')  List<RecentClassTeacherAssignment> recentlyAssigned)  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherDashboard():
return $default(_that.sessionId,_that.totalTeachers,_that.totalClassTeachers,_that.teachersWithoutClassAssignment,_that.todayTeacherAttendance,_that.leaveRequestsPending,_that.recentlyAssigned);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'total_teachers')  int totalTeachers, @JsonKey(name: 'total_class_teachers')  int totalClassTeachers, @JsonKey(name: 'teachers_without_class_assignment')  int teachersWithoutClassAssignment, @JsonKey(name: 'today_teacher_attendance')  Map<String, int> todayTeacherAttendance, @JsonKey(name: 'leave_requests_pending')  int leaveRequestsPending, @JsonKey(name: 'recently_assigned_class_teachers')  List<RecentClassTeacherAssignment> recentlyAssigned)?  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherDashboard() when $default != null:
return $default(_that.sessionId,_that.totalTeachers,_that.totalClassTeachers,_that.teachersWithoutClassAssignment,_that.todayTeacherAttendance,_that.leaveRequestsPending,_that.recentlyAssigned);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherDashboard implements ClassTeacherDashboard {
  const _ClassTeacherDashboard({@JsonKey(name: 'session_id') required this.sessionId, @JsonKey(name: 'total_teachers') this.totalTeachers = 0, @JsonKey(name: 'total_class_teachers') this.totalClassTeachers = 0, @JsonKey(name: 'teachers_without_class_assignment') this.teachersWithoutClassAssignment = 0, @JsonKey(name: 'today_teacher_attendance')  Map<String, int> todayTeacherAttendance = const <String, int>{}, @JsonKey(name: 'leave_requests_pending') this.leaveRequestsPending = 0, @JsonKey(name: 'recently_assigned_class_teachers')  List<RecentClassTeacherAssignment> recentlyAssigned = const <RecentClassTeacherAssignment>[]}): _todayTeacherAttendance = todayTeacherAttendance,_recentlyAssigned = recentlyAssigned;
  factory _ClassTeacherDashboard.fromJson(Map<String, dynamic> json) => _$ClassTeacherDashboardFromJson(json);

@override@JsonKey(name: 'session_id') final  String sessionId;
@override@JsonKey(name: 'total_teachers') final  int totalTeachers;
@override@JsonKey(name: 'total_class_teachers') final  int totalClassTeachers;
@override@JsonKey(name: 'teachers_without_class_assignment') final  int teachersWithoutClassAssignment;
 final  Map<String, int> _todayTeacherAttendance;
@override@JsonKey(name: 'today_teacher_attendance') Map<String, int> get todayTeacherAttendance {
  if (_todayTeacherAttendance is EqualUnmodifiableMapView) return _todayTeacherAttendance;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_todayTeacherAttendance);
}

@override@JsonKey(name: 'leave_requests_pending') final  int leaveRequestsPending;
 final  List<RecentClassTeacherAssignment> _recentlyAssigned;
@override@JsonKey(name: 'recently_assigned_class_teachers') List<RecentClassTeacherAssignment> get recentlyAssigned {
  if (_recentlyAssigned is EqualUnmodifiableListView) return _recentlyAssigned;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentlyAssigned);
}


/// Create a copy of ClassTeacherDashboard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherDashboardCopyWith<_ClassTeacherDashboard> get copyWith => __$ClassTeacherDashboardCopyWithImpl<_ClassTeacherDashboard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherDashboardToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherDashboard&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.totalTeachers, totalTeachers) || other.totalTeachers == totalTeachers)&&(identical(other.totalClassTeachers, totalClassTeachers) || other.totalClassTeachers == totalClassTeachers)&&(identical(other.teachersWithoutClassAssignment, teachersWithoutClassAssignment) || other.teachersWithoutClassAssignment == teachersWithoutClassAssignment)&&const DeepCollectionEquality().equals(other.todayTeacherAttendance, _todayTeacherAttendance)&&(identical(other.leaveRequestsPending, leaveRequestsPending) || other.leaveRequestsPending == leaveRequestsPending)&&const DeepCollectionEquality().equals(other.recentlyAssigned, _recentlyAssigned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sessionId,totalTeachers,totalClassTeachers,teachersWithoutClassAssignment,const DeepCollectionEquality().hash(_todayTeacherAttendance),leaveRequestsPending,const DeepCollectionEquality().hash(_recentlyAssigned));
}

@override
String toString() {
    return 'ClassTeacherDashboard(sessionId: $sessionId, totalTeachers: $totalTeachers, totalClassTeachers: $totalClassTeachers, teachersWithoutClassAssignment: $teachersWithoutClassAssignment, todayTeacherAttendance: $todayTeacherAttendance, leaveRequestsPending: $leaveRequestsPending, recentlyAssigned: $recentlyAssigned)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherDashboardCopyWith<$Res> implements $ClassTeacherDashboardCopyWith<$Res> {
  factory _$ClassTeacherDashboardCopyWith(_ClassTeacherDashboard value, $Res Function(_ClassTeacherDashboard) _then) = __$ClassTeacherDashboardCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'total_teachers') int totalTeachers,@JsonKey(name: 'total_class_teachers') int totalClassTeachers,@JsonKey(name: 'teachers_without_class_assignment') int teachersWithoutClassAssignment,@JsonKey(name: 'today_teacher_attendance') Map<String, int> todayTeacherAttendance,@JsonKey(name: 'leave_requests_pending') int leaveRequestsPending,@JsonKey(name: 'recently_assigned_class_teachers') List<RecentClassTeacherAssignment> recentlyAssigned
});




}
/// @nodoc
class __$ClassTeacherDashboardCopyWithImpl<$Res>
    implements _$ClassTeacherDashboardCopyWith<$Res> {
  __$ClassTeacherDashboardCopyWithImpl(this._self, this._then);

  final _ClassTeacherDashboard _self;
  final $Res Function(_ClassTeacherDashboard) _then;

/// Create a copy of ClassTeacherDashboard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,Object? totalTeachers = null,Object? totalClassTeachers = null,Object? teachersWithoutClassAssignment = null,Object? todayTeacherAttendance = null,Object? leaveRequestsPending = null,Object? recentlyAssigned = null,}) {
  return _then(_ClassTeacherDashboard(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,totalTeachers: null == totalTeachers ? _self.totalTeachers : totalTeachers // ignore: cast_nullable_to_non_nullable
as int,totalClassTeachers: null == totalClassTeachers ? _self.totalClassTeachers : totalClassTeachers // ignore: cast_nullable_to_non_nullable
as int,teachersWithoutClassAssignment: null == teachersWithoutClassAssignment ? _self.teachersWithoutClassAssignment : teachersWithoutClassAssignment // ignore: cast_nullable_to_non_nullable
as int,todayTeacherAttendance: null == todayTeacherAttendance ? _self._todayTeacherAttendance : todayTeacherAttendance // ignore: cast_nullable_to_non_nullable
as Map<String, int>,leaveRequestsPending: null == leaveRequestsPending ? _self.leaveRequestsPending : leaveRequestsPending // ignore: cast_nullable_to_non_nullable
as int,recentlyAssigned: null == recentlyAssigned ? _self._recentlyAssigned : recentlyAssigned // ignore: cast_nullable_to_non_nullable
as List<RecentClassTeacherAssignment>,
  ));
}


}


/// @nodoc
mixin _$RecentClassTeacherAssignment {

@JsonKey(name: 'assignment_id') String get assignmentId;@JsonKey(name: 'teacher_name') String? get teacherName;@JsonKey(name: 'employee_code') String? get employeeCode;@JsonKey(name: 'class_name') String? get className;@JsonKey(name: 'section_name') String? get sectionName;@JsonKey(name: 'assigned_at') DateTime? get assignedAt;
/// Create a copy of RecentClassTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentClassTeacherAssignmentCopyWith<RecentClassTeacherAssignment> get copyWith => _$RecentClassTeacherAssignmentCopyWithImpl<RecentClassTeacherAssignment>(this as RecentClassTeacherAssignment, _$identity);

  /// Serializes this RecentClassTeacherAssignment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RecentClassTeacherAssignment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentClassTeacherAssignment&&(identical(other.assignmentId, _this.assignmentId) || other.assignmentId == _this.assignmentId)&&(identical(other.teacherName, _this.teacherName) || other.teacherName == _this.teacherName)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.sectionName, _this.sectionName) || other.sectionName == _this.sectionName)&&(identical(other.assignedAt, _this.assignedAt) || other.assignedAt == _this.assignedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RecentClassTeacherAssignment;
  return Object.hash(runtimeType,_this.assignmentId,_this.teacherName,_this.employeeCode,_this.className,_this.sectionName,_this.assignedAt);
}

@override
String toString() {
  final _this = this as RecentClassTeacherAssignment;
  return 'RecentClassTeacherAssignment(assignmentId: ${_this.assignmentId}, teacherName: ${_this.teacherName}, employeeCode: ${_this.employeeCode}, className: ${_this.className}, sectionName: ${_this.sectionName}, assignedAt: ${_this.assignedAt})';
}


}

/// @nodoc
abstract mixin class $RecentClassTeacherAssignmentCopyWith<$Res>  {
  factory $RecentClassTeacherAssignmentCopyWith(RecentClassTeacherAssignment value, $Res Function(RecentClassTeacherAssignment) _then) = _$RecentClassTeacherAssignmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'assignment_id') String assignmentId,@JsonKey(name: 'teacher_name') String? teacherName,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName,@JsonKey(name: 'assigned_at') DateTime? assignedAt
});




}
/// @nodoc
class _$RecentClassTeacherAssignmentCopyWithImpl<$Res>
    implements $RecentClassTeacherAssignmentCopyWith<$Res> {
  _$RecentClassTeacherAssignmentCopyWithImpl(this._self, this._then);

  final RecentClassTeacherAssignment _self;
  final $Res Function(RecentClassTeacherAssignment) _then;

/// Create a copy of RecentClassTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assignmentId = null,Object? teacherName = freezed,Object? employeeCode = freezed,Object? className = freezed,Object? sectionName = freezed,Object? assignedAt = freezed,}) {
  return _then(RecentClassTeacherAssignment(
assignmentId: null == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String,teacherName: freezed == teacherName ? _self.teacherName : teacherName // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,assignedAt: freezed == assignedAt ? _self.assignedAt : assignedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecentClassTeacherAssignment].
extension RecentClassTeacherAssignmentPatterns on RecentClassTeacherAssignment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecentClassTeacherAssignment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecentClassTeacherAssignment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecentClassTeacherAssignment value)  $default,){
final _that = this;
switch (_that) {
case _RecentClassTeacherAssignment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecentClassTeacherAssignment value)?  $default,){
final _that = this;
switch (_that) {
case _RecentClassTeacherAssignment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'teacher_name')  String? teacherName, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'assigned_at')  DateTime? assignedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecentClassTeacherAssignment() when $default != null:
return $default(_that.assignmentId,_that.teacherName,_that.employeeCode,_that.className,_that.sectionName,_that.assignedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'teacher_name')  String? teacherName, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'assigned_at')  DateTime? assignedAt)  $default,) {final _that = this;
switch (_that) {
case _RecentClassTeacherAssignment():
return $default(_that.assignmentId,_that.teacherName,_that.employeeCode,_that.className,_that.sectionName,_that.assignedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'teacher_name')  String? teacherName, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'assigned_at')  DateTime? assignedAt)?  $default,) {final _that = this;
switch (_that) {
case _RecentClassTeacherAssignment() when $default != null:
return $default(_that.assignmentId,_that.teacherName,_that.employeeCode,_that.className,_that.sectionName,_that.assignedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecentClassTeacherAssignment implements RecentClassTeacherAssignment {
  const _RecentClassTeacherAssignment({@JsonKey(name: 'assignment_id') required this.assignmentId, @JsonKey(name: 'teacher_name') this.teacherName, @JsonKey(name: 'employee_code') this.employeeCode, @JsonKey(name: 'class_name') this.className, @JsonKey(name: 'section_name') this.sectionName, @JsonKey(name: 'assigned_at') this.assignedAt});
  factory _RecentClassTeacherAssignment.fromJson(Map<String, dynamic> json) => _$RecentClassTeacherAssignmentFromJson(json);

@override@JsonKey(name: 'assignment_id') final  String assignmentId;
@override@JsonKey(name: 'teacher_name') final  String? teacherName;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override@JsonKey(name: 'class_name') final  String? className;
@override@JsonKey(name: 'section_name') final  String? sectionName;
@override@JsonKey(name: 'assigned_at') final  DateTime? assignedAt;

/// Create a copy of RecentClassTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentClassTeacherAssignmentCopyWith<_RecentClassTeacherAssignment> get copyWith => __$RecentClassTeacherAssignmentCopyWithImpl<_RecentClassTeacherAssignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecentClassTeacherAssignmentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentClassTeacherAssignment&&(identical(other.assignmentId, assignmentId) || other.assignmentId == assignmentId)&&(identical(other.teacherName, teacherName) || other.teacherName == teacherName)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.className, className) || other.className == className)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName)&&(identical(other.assignedAt, assignedAt) || other.assignedAt == assignedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,assignmentId,teacherName,employeeCode,className,sectionName,assignedAt);
}

@override
String toString() {
    return 'RecentClassTeacherAssignment(assignmentId: $assignmentId, teacherName: $teacherName, employeeCode: $employeeCode, className: $className, sectionName: $sectionName, assignedAt: $assignedAt)';
}


}

/// @nodoc
abstract mixin class _$RecentClassTeacherAssignmentCopyWith<$Res> implements $RecentClassTeacherAssignmentCopyWith<$Res> {
  factory _$RecentClassTeacherAssignmentCopyWith(_RecentClassTeacherAssignment value, $Res Function(_RecentClassTeacherAssignment) _then) = __$RecentClassTeacherAssignmentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'assignment_id') String assignmentId,@JsonKey(name: 'teacher_name') String? teacherName,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName,@JsonKey(name: 'assigned_at') DateTime? assignedAt
});




}
/// @nodoc
class __$RecentClassTeacherAssignmentCopyWithImpl<$Res>
    implements _$RecentClassTeacherAssignmentCopyWith<$Res> {
  __$RecentClassTeacherAssignmentCopyWithImpl(this._self, this._then);

  final _RecentClassTeacherAssignment _self;
  final $Res Function(_RecentClassTeacherAssignment) _then;

/// Create a copy of RecentClassTeacherAssignment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assignmentId = null,Object? teacherName = freezed,Object? employeeCode = freezed,Object? className = freezed,Object? sectionName = freezed,Object? assignedAt = freezed,}) {
  return _then(_RecentClassTeacherAssignment(
assignmentId: null == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String,teacherName: freezed == teacherName ? _self.teacherName : teacherName // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,assignedAt: freezed == assignedAt ? _self.assignedAt : assignedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$ClassTeacherAssignmentRecord {

@JsonKey(name: 'assignment_id') String get assignmentId;@JsonKey(name: 'staff_id') String? get staffId;@JsonKey(name: 'class_id') String? get classId;@JsonKey(name: 'section_id') String? get sectionId;@JsonKey(name: 'session_id') String? get sessionId;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'staff_accounts') ClassTeacherStaffRef? get staff;@JsonKey(name: 'classes') ClassRef? get classRef;@JsonKey(name: 'sections') SectionRef? get sectionRef;@JsonKey(name: 'academic_sessions') AssignmentSessionRef? get session;
/// Create a copy of ClassTeacherAssignmentRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherAssignmentRecordCopyWith<ClassTeacherAssignmentRecord> get copyWith => _$ClassTeacherAssignmentRecordCopyWithImpl<ClassTeacherAssignmentRecord>(this as ClassTeacherAssignmentRecord, _$identity);

  /// Serializes this ClassTeacherAssignmentRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherAssignmentRecord;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherAssignmentRecord&&(identical(other.assignmentId, _this.assignmentId) || other.assignmentId == _this.assignmentId)&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.staff, _this.staff) || other.staff == _this.staff)&&(identical(other.classRef, _this.classRef) || other.classRef == _this.classRef)&&(identical(other.sectionRef, _this.sectionRef) || other.sectionRef == _this.sectionRef)&&(identical(other.session, _this.session) || other.session == _this.session));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherAssignmentRecord;
  return Object.hash(runtimeType,_this.assignmentId,_this.staffId,_this.classId,_this.sectionId,_this.sessionId,_this.createdAt,_this.staff,_this.classRef,_this.sectionRef,_this.session);
}

@override
String toString() {
  final _this = this as ClassTeacherAssignmentRecord;
  return 'ClassTeacherAssignmentRecord(assignmentId: ${_this.assignmentId}, staffId: ${_this.staffId}, classId: ${_this.classId}, sectionId: ${_this.sectionId}, sessionId: ${_this.sessionId}, createdAt: ${_this.createdAt}, staff: ${_this.staff}, classRef: ${_this.classRef}, sectionRef: ${_this.sectionRef}, session: ${_this.session})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherAssignmentRecordCopyWith<$Res>  {
  factory $ClassTeacherAssignmentRecordCopyWith(ClassTeacherAssignmentRecord value, $Res Function(ClassTeacherAssignmentRecord) _then) = _$ClassTeacherAssignmentRecordCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'assignment_id') String assignmentId,@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'staff_accounts') ClassTeacherStaffRef? staff,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_sessions') AssignmentSessionRef? session
});


$ClassTeacherStaffRefCopyWith<$Res>? get staff;$ClassRefCopyWith<$Res>? get classRef;$SectionRefCopyWith<$Res>? get sectionRef;$AssignmentSessionRefCopyWith<$Res>? get session;

}
/// @nodoc
class _$ClassTeacherAssignmentRecordCopyWithImpl<$Res>
    implements $ClassTeacherAssignmentRecordCopyWith<$Res> {
  _$ClassTeacherAssignmentRecordCopyWithImpl(this._self, this._then);

  final ClassTeacherAssignmentRecord _self;
  final $Res Function(ClassTeacherAssignmentRecord) _then;

/// Create a copy of ClassTeacherAssignmentRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assignmentId = null,Object? staffId = freezed,Object? classId = freezed,Object? sectionId = freezed,Object? sessionId = freezed,Object? createdAt = freezed,Object? staff = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? session = freezed,}) {
  return _then(ClassTeacherAssignmentRecord(
assignmentId: null == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,staff: freezed == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as ClassTeacherStaffRef?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as AssignmentSessionRef?,
  ));
}
/// Create a copy of ClassTeacherAssignmentRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassTeacherStaffRefCopyWith<$Res>? get staff {
    if (_self.staff == null) {
    return null;
  }

  return $ClassTeacherStaffRefCopyWith<$Res>(_self.staff!, (value) {
    return _then(_self.copyWith(staff: value));
  });
}/// Create a copy of ClassTeacherAssignmentRecord
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
}/// Create a copy of ClassTeacherAssignmentRecord
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
}/// Create a copy of ClassTeacherAssignmentRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssignmentSessionRefCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $AssignmentSessionRefCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClassTeacherAssignmentRecord].
extension ClassTeacherAssignmentRecordPatterns on ClassTeacherAssignmentRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherAssignmentRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherAssignmentRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherAssignmentRecord value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherAssignmentRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherAssignmentRecord value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherAssignmentRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'staff_accounts')  ClassTeacherStaffRef? staff, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_sessions')  AssignmentSessionRef? session)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassTeacherAssignmentRecord() when $default != null:
return $default(_that.assignmentId,_that.staffId,_that.classId,_that.sectionId,_that.sessionId,_that.createdAt,_that.staff,_that.classRef,_that.sectionRef,_that.session);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'staff_accounts')  ClassTeacherStaffRef? staff, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_sessions')  AssignmentSessionRef? session)  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherAssignmentRecord():
return $default(_that.assignmentId,_that.staffId,_that.classId,_that.sectionId,_that.sessionId,_that.createdAt,_that.staff,_that.classRef,_that.sectionRef,_that.session);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'staff_accounts')  ClassTeacherStaffRef? staff, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'sections')  SectionRef? sectionRef, @JsonKey(name: 'academic_sessions')  AssignmentSessionRef? session)?  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherAssignmentRecord() when $default != null:
return $default(_that.assignmentId,_that.staffId,_that.classId,_that.sectionId,_that.sessionId,_that.createdAt,_that.staff,_that.classRef,_that.sectionRef,_that.session);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherAssignmentRecord implements ClassTeacherAssignmentRecord {
  const _ClassTeacherAssignmentRecord({@JsonKey(name: 'assignment_id') required this.assignmentId, @JsonKey(name: 'staff_id') this.staffId, @JsonKey(name: 'class_id') this.classId, @JsonKey(name: 'section_id') this.sectionId, @JsonKey(name: 'session_id') this.sessionId, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'staff_accounts') this.staff, @JsonKey(name: 'classes') this.classRef, @JsonKey(name: 'sections') this.sectionRef, @JsonKey(name: 'academic_sessions') this.session});
  factory _ClassTeacherAssignmentRecord.fromJson(Map<String, dynamic> json) => _$ClassTeacherAssignmentRecordFromJson(json);

@override@JsonKey(name: 'assignment_id') final  String assignmentId;
@override@JsonKey(name: 'staff_id') final  String? staffId;
@override@JsonKey(name: 'class_id') final  String? classId;
@override@JsonKey(name: 'section_id') final  String? sectionId;
@override@JsonKey(name: 'session_id') final  String? sessionId;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'staff_accounts') final  ClassTeacherStaffRef? staff;
@override@JsonKey(name: 'classes') final  ClassRef? classRef;
@override@JsonKey(name: 'sections') final  SectionRef? sectionRef;
@override@JsonKey(name: 'academic_sessions') final  AssignmentSessionRef? session;

/// Create a copy of ClassTeacherAssignmentRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherAssignmentRecordCopyWith<_ClassTeacherAssignmentRecord> get copyWith => __$ClassTeacherAssignmentRecordCopyWithImpl<_ClassTeacherAssignmentRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherAssignmentRecordToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherAssignmentRecord&&(identical(other.assignmentId, assignmentId) || other.assignmentId == assignmentId)&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.staff, staff) || other.staff == staff)&&(identical(other.classRef, classRef) || other.classRef == classRef)&&(identical(other.sectionRef, sectionRef) || other.sectionRef == sectionRef)&&(identical(other.session, session) || other.session == session));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,assignmentId,staffId,classId,sectionId,sessionId,createdAt,staff,classRef,sectionRef,session);
}

@override
String toString() {
    return 'ClassTeacherAssignmentRecord(assignmentId: $assignmentId, staffId: $staffId, classId: $classId, sectionId: $sectionId, sessionId: $sessionId, createdAt: $createdAt, staff: $staff, classRef: $classRef, sectionRef: $sectionRef, session: $session)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherAssignmentRecordCopyWith<$Res> implements $ClassTeacherAssignmentRecordCopyWith<$Res> {
  factory _$ClassTeacherAssignmentRecordCopyWith(_ClassTeacherAssignmentRecord value, $Res Function(_ClassTeacherAssignmentRecord) _then) = __$ClassTeacherAssignmentRecordCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'assignment_id') String assignmentId,@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'staff_accounts') ClassTeacherStaffRef? staff,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'sections') SectionRef? sectionRef,@JsonKey(name: 'academic_sessions') AssignmentSessionRef? session
});


@override $ClassTeacherStaffRefCopyWith<$Res>? get staff;@override $ClassRefCopyWith<$Res>? get classRef;@override $SectionRefCopyWith<$Res>? get sectionRef;@override $AssignmentSessionRefCopyWith<$Res>? get session;

}
/// @nodoc
class __$ClassTeacherAssignmentRecordCopyWithImpl<$Res>
    implements _$ClassTeacherAssignmentRecordCopyWith<$Res> {
  __$ClassTeacherAssignmentRecordCopyWithImpl(this._self, this._then);

  final _ClassTeacherAssignmentRecord _self;
  final $Res Function(_ClassTeacherAssignmentRecord) _then;

/// Create a copy of ClassTeacherAssignmentRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assignmentId = null,Object? staffId = freezed,Object? classId = freezed,Object? sectionId = freezed,Object? sessionId = freezed,Object? createdAt = freezed,Object? staff = freezed,Object? classRef = freezed,Object? sectionRef = freezed,Object? session = freezed,}) {
  return _then(_ClassTeacherAssignmentRecord(
assignmentId: null == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,staff: freezed == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as ClassTeacherStaffRef?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,sectionRef: freezed == sectionRef ? _self.sectionRef : sectionRef // ignore: cast_nullable_to_non_nullable
as SectionRef?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as AssignmentSessionRef?,
  ));
}

/// Create a copy of ClassTeacherAssignmentRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassTeacherStaffRefCopyWith<$Res>? get staff {
    if (_self.staff == null) {
    return null;
  }

  return $ClassTeacherStaffRefCopyWith<$Res>(_self.staff!, (value) {
    return _then(_self.copyWith(staff: value));
  });
}/// Create a copy of ClassTeacherAssignmentRecord
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
}/// Create a copy of ClassTeacherAssignmentRecord
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
}/// Create a copy of ClassTeacherAssignmentRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssignmentSessionRefCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $AssignmentSessionRefCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}
}


/// @nodoc
mixin _$ClassTeacherStaffRef {

@JsonKey(name: 'staff_id') String? get staffId;@JsonKey(name: 'full_name') String? get fullName;@JsonKey(name: 'employee_code') String? get employeeCode; String? get designation;@JsonKey(name: 'contact_number') String? get contactNumber;@JsonKey(name: 'profile_photo_url') String? get profilePhotoUrl;
/// Create a copy of ClassTeacherStaffRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherStaffRefCopyWith<ClassTeacherStaffRef> get copyWith => _$ClassTeacherStaffRefCopyWithImpl<ClassTeacherStaffRef>(this as ClassTeacherStaffRef, _$identity);

  /// Serializes this ClassTeacherStaffRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherStaffRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherStaffRef&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.designation, _this.designation) || other.designation == _this.designation)&&(identical(other.contactNumber, _this.contactNumber) || other.contactNumber == _this.contactNumber)&&(identical(other.profilePhotoUrl, _this.profilePhotoUrl) || other.profilePhotoUrl == _this.profilePhotoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherStaffRef;
  return Object.hash(runtimeType,_this.staffId,_this.fullName,_this.employeeCode,_this.designation,_this.contactNumber,_this.profilePhotoUrl);
}

@override
String toString() {
  final _this = this as ClassTeacherStaffRef;
  return 'ClassTeacherStaffRef(staffId: ${_this.staffId}, fullName: ${_this.fullName}, employeeCode: ${_this.employeeCode}, designation: ${_this.designation}, contactNumber: ${_this.contactNumber}, profilePhotoUrl: ${_this.profilePhotoUrl})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherStaffRefCopyWith<$Res>  {
  factory $ClassTeacherStaffRefCopyWith(ClassTeacherStaffRef value, $Res Function(ClassTeacherStaffRef) _then) = _$ClassTeacherStaffRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'employee_code') String? employeeCode, String? designation,@JsonKey(name: 'contact_number') String? contactNumber,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl
});




}
/// @nodoc
class _$ClassTeacherStaffRefCopyWithImpl<$Res>
    implements $ClassTeacherStaffRefCopyWith<$Res> {
  _$ClassTeacherStaffRefCopyWithImpl(this._self, this._then);

  final ClassTeacherStaffRef _self;
  final $Res Function(ClassTeacherStaffRef) _then;

/// Create a copy of ClassTeacherStaffRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = freezed,Object? fullName = freezed,Object? employeeCode = freezed,Object? designation = freezed,Object? contactNumber = freezed,Object? profilePhotoUrl = freezed,}) {
  return _then(ClassTeacherStaffRef(
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


/// Adds pattern-matching-related methods to [ClassTeacherStaffRef].
extension ClassTeacherStaffRefPatterns on ClassTeacherStaffRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherStaffRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherStaffRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherStaffRef value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherStaffRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherStaffRef value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherStaffRef() when $default != null:
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
case _ClassTeacherStaffRef() when $default != null:
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
case _ClassTeacherStaffRef():
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
case _ClassTeacherStaffRef() when $default != null:
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.designation,_that.contactNumber,_that.profilePhotoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherStaffRef implements ClassTeacherStaffRef {
  const _ClassTeacherStaffRef({@JsonKey(name: 'staff_id') this.staffId, @JsonKey(name: 'full_name') this.fullName, @JsonKey(name: 'employee_code') this.employeeCode, this.designation, @JsonKey(name: 'contact_number') this.contactNumber, @JsonKey(name: 'profile_photo_url') this.profilePhotoUrl});
  factory _ClassTeacherStaffRef.fromJson(Map<String, dynamic> json) => _$ClassTeacherStaffRefFromJson(json);

@override@JsonKey(name: 'staff_id') final  String? staffId;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override final  String? designation;
@override@JsonKey(name: 'contact_number') final  String? contactNumber;
@override@JsonKey(name: 'profile_photo_url') final  String? profilePhotoUrl;

/// Create a copy of ClassTeacherStaffRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherStaffRefCopyWith<_ClassTeacherStaffRef> get copyWith => __$ClassTeacherStaffRefCopyWithImpl<_ClassTeacherStaffRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherStaffRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherStaffRef&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.contactNumber, contactNumber) || other.contactNumber == contactNumber)&&(identical(other.profilePhotoUrl, profilePhotoUrl) || other.profilePhotoUrl == profilePhotoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,fullName,employeeCode,designation,contactNumber,profilePhotoUrl);
}

@override
String toString() {
    return 'ClassTeacherStaffRef(staffId: $staffId, fullName: $fullName, employeeCode: $employeeCode, designation: $designation, contactNumber: $contactNumber, profilePhotoUrl: $profilePhotoUrl)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherStaffRefCopyWith<$Res> implements $ClassTeacherStaffRefCopyWith<$Res> {
  factory _$ClassTeacherStaffRefCopyWith(_ClassTeacherStaffRef value, $Res Function(_ClassTeacherStaffRef) _then) = __$ClassTeacherStaffRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'employee_code') String? employeeCode, String? designation,@JsonKey(name: 'contact_number') String? contactNumber,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl
});




}
/// @nodoc
class __$ClassTeacherStaffRefCopyWithImpl<$Res>
    implements _$ClassTeacherStaffRefCopyWith<$Res> {
  __$ClassTeacherStaffRefCopyWithImpl(this._self, this._then);

  final _ClassTeacherStaffRef _self;
  final $Res Function(_ClassTeacherStaffRef) _then;

/// Create a copy of ClassTeacherStaffRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = freezed,Object? fullName = freezed,Object? employeeCode = freezed,Object? designation = freezed,Object? contactNumber = freezed,Object? profilePhotoUrl = freezed,}) {
  return _then(_ClassTeacherStaffRef(
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
mixin _$AssignmentSessionRef {

@JsonKey(name: 'session_id') String? get sessionId;@JsonKey(name: 'session_name') String? get sessionName;
/// Create a copy of AssignmentSessionRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssignmentSessionRefCopyWith<AssignmentSessionRef> get copyWith => _$AssignmentSessionRefCopyWithImpl<AssignmentSessionRef>(this as AssignmentSessionRef, _$identity);

  /// Serializes this AssignmentSessionRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AssignmentSessionRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssignmentSessionRef&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.sessionName, _this.sessionName) || other.sessionName == _this.sessionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AssignmentSessionRef;
  return Object.hash(runtimeType,_this.sessionId,_this.sessionName);
}

@override
String toString() {
  final _this = this as AssignmentSessionRef;
  return 'AssignmentSessionRef(sessionId: ${_this.sessionId}, sessionName: ${_this.sessionName})';
}


}

/// @nodoc
abstract mixin class $AssignmentSessionRefCopyWith<$Res>  {
  factory $AssignmentSessionRefCopyWith(AssignmentSessionRef value, $Res Function(AssignmentSessionRef) _then) = _$AssignmentSessionRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'session_name') String? sessionName
});




}
/// @nodoc
class _$AssignmentSessionRefCopyWithImpl<$Res>
    implements $AssignmentSessionRefCopyWith<$Res> {
  _$AssignmentSessionRefCopyWithImpl(this._self, this._then);

  final AssignmentSessionRef _self;
  final $Res Function(AssignmentSessionRef) _then;

/// Create a copy of AssignmentSessionRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = freezed,Object? sessionName = freezed,}) {
  return _then(AssignmentSessionRef(
sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,sessionName: freezed == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AssignmentSessionRef].
extension AssignmentSessionRefPatterns on AssignmentSessionRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssignmentSessionRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssignmentSessionRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssignmentSessionRef value)  $default,){
final _that = this;
switch (_that) {
case _AssignmentSessionRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssignmentSessionRef value)?  $default,){
final _that = this;
switch (_that) {
case _AssignmentSessionRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'session_name')  String? sessionName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssignmentSessionRef() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'session_name')  String? sessionName)  $default,) {final _that = this;
switch (_that) {
case _AssignmentSessionRef():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'session_name')  String? sessionName)?  $default,) {final _that = this;
switch (_that) {
case _AssignmentSessionRef() when $default != null:
return $default(_that.sessionId,_that.sessionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssignmentSessionRef implements AssignmentSessionRef {
  const _AssignmentSessionRef({@JsonKey(name: 'session_id') this.sessionId, @JsonKey(name: 'session_name') this.sessionName});
  factory _AssignmentSessionRef.fromJson(Map<String, dynamic> json) => _$AssignmentSessionRefFromJson(json);

@override@JsonKey(name: 'session_id') final  String? sessionId;
@override@JsonKey(name: 'session_name') final  String? sessionName;

/// Create a copy of AssignmentSessionRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssignmentSessionRefCopyWith<_AssignmentSessionRef> get copyWith => __$AssignmentSessionRefCopyWithImpl<_AssignmentSessionRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssignmentSessionRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssignmentSessionRef&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.sessionName, sessionName) || other.sessionName == sessionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sessionId,sessionName);
}

@override
String toString() {
    return 'AssignmentSessionRef(sessionId: $sessionId, sessionName: $sessionName)';
}


}

/// @nodoc
abstract mixin class _$AssignmentSessionRefCopyWith<$Res> implements $AssignmentSessionRefCopyWith<$Res> {
  factory _$AssignmentSessionRefCopyWith(_AssignmentSessionRef value, $Res Function(_AssignmentSessionRef) _then) = __$AssignmentSessionRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'session_name') String? sessionName
});




}
/// @nodoc
class __$AssignmentSessionRefCopyWithImpl<$Res>
    implements _$AssignmentSessionRefCopyWith<$Res> {
  __$AssignmentSessionRefCopyWithImpl(this._self, this._then);

  final _AssignmentSessionRef _self;
  final $Res Function(_AssignmentSessionRef) _then;

/// Create a copy of AssignmentSessionRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = freezed,Object? sessionName = freezed,}) {
  return _then(_AssignmentSessionRef(
sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,sessionName: freezed == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ClassTeacherBulkResult {

 int get assigned; int get failed; List<ClassTeacherBulkError> get errors;
/// Create a copy of ClassTeacherBulkResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherBulkResultCopyWith<ClassTeacherBulkResult> get copyWith => _$ClassTeacherBulkResultCopyWithImpl<ClassTeacherBulkResult>(this as ClassTeacherBulkResult, _$identity);

  /// Serializes this ClassTeacherBulkResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherBulkResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherBulkResult&&(identical(other.assigned, _this.assigned) || other.assigned == _this.assigned)&&(identical(other.failed, _this.failed) || other.failed == _this.failed)&&const DeepCollectionEquality().equals(other.errors, _this.errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherBulkResult;
  return Object.hash(runtimeType,_this.assigned,_this.failed,const DeepCollectionEquality().hash(_this.errors));
}

@override
String toString() {
  final _this = this as ClassTeacherBulkResult;
  return 'ClassTeacherBulkResult(assigned: ${_this.assigned}, failed: ${_this.failed}, errors: ${_this.errors})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherBulkResultCopyWith<$Res>  {
  factory $ClassTeacherBulkResultCopyWith(ClassTeacherBulkResult value, $Res Function(ClassTeacherBulkResult) _then) = _$ClassTeacherBulkResultCopyWithImpl;
@useResult
$Res call({
 int assigned, int failed, List<ClassTeacherBulkError> errors
});




}
/// @nodoc
class _$ClassTeacherBulkResultCopyWithImpl<$Res>
    implements $ClassTeacherBulkResultCopyWith<$Res> {
  _$ClassTeacherBulkResultCopyWithImpl(this._self, this._then);

  final ClassTeacherBulkResult _self;
  final $Res Function(ClassTeacherBulkResult) _then;

/// Create a copy of ClassTeacherBulkResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assigned = null,Object? failed = null,Object? errors = null,}) {
  return _then(ClassTeacherBulkResult(
assigned: null == assigned ? _self.assigned : assigned // ignore: cast_nullable_to_non_nullable
as int,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as int,errors: null == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<ClassTeacherBulkError>,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassTeacherBulkResult].
extension ClassTeacherBulkResultPatterns on ClassTeacherBulkResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherBulkResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherBulkResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherBulkResult value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherBulkResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherBulkResult value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherBulkResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int assigned,  int failed,  List<ClassTeacherBulkError> errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassTeacherBulkResult() when $default != null:
return $default(_that.assigned,_that.failed,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int assigned,  int failed,  List<ClassTeacherBulkError> errors)  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherBulkResult():
return $default(_that.assigned,_that.failed,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int assigned,  int failed,  List<ClassTeacherBulkError> errors)?  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherBulkResult() when $default != null:
return $default(_that.assigned,_that.failed,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherBulkResult implements ClassTeacherBulkResult {
  const _ClassTeacherBulkResult({this.assigned = 0, this.failed = 0,  List<ClassTeacherBulkError> errors = const <ClassTeacherBulkError>[]}): _errors = errors;
  factory _ClassTeacherBulkResult.fromJson(Map<String, dynamic> json) => _$ClassTeacherBulkResultFromJson(json);

@override@JsonKey() final  int assigned;
@override@JsonKey() final  int failed;
 final  List<ClassTeacherBulkError> _errors;
@override@JsonKey() List<ClassTeacherBulkError> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}


/// Create a copy of ClassTeacherBulkResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherBulkResultCopyWith<_ClassTeacherBulkResult> get copyWith => __$ClassTeacherBulkResultCopyWithImpl<_ClassTeacherBulkResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherBulkResultToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherBulkResult&&(identical(other.assigned, assigned) || other.assigned == assigned)&&(identical(other.failed, failed) || other.failed == failed)&&const DeepCollectionEquality().equals(other.errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,assigned,failed,const DeepCollectionEquality().hash(_errors));
}

@override
String toString() {
    return 'ClassTeacherBulkResult(assigned: $assigned, failed: $failed, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherBulkResultCopyWith<$Res> implements $ClassTeacherBulkResultCopyWith<$Res> {
  factory _$ClassTeacherBulkResultCopyWith(_ClassTeacherBulkResult value, $Res Function(_ClassTeacherBulkResult) _then) = __$ClassTeacherBulkResultCopyWithImpl;
@override @useResult
$Res call({
 int assigned, int failed, List<ClassTeacherBulkError> errors
});




}
/// @nodoc
class __$ClassTeacherBulkResultCopyWithImpl<$Res>
    implements _$ClassTeacherBulkResultCopyWith<$Res> {
  __$ClassTeacherBulkResultCopyWithImpl(this._self, this._then);

  final _ClassTeacherBulkResult _self;
  final $Res Function(_ClassTeacherBulkResult) _then;

/// Create a copy of ClassTeacherBulkResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assigned = null,Object? failed = null,Object? errors = null,}) {
  return _then(_ClassTeacherBulkResult(
assigned: null == assigned ? _self.assigned : assigned // ignore: cast_nullable_to_non_nullable
as int,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as int,errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<ClassTeacherBulkError>,
  ));
}


}


/// @nodoc
mixin _$ClassTeacherBulkError {

@JsonKey(name: 'class_id') String? get classId;@JsonKey(name: 'section_id') String? get sectionId; String? get error;
/// Create a copy of ClassTeacherBulkError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherBulkErrorCopyWith<ClassTeacherBulkError> get copyWith => _$ClassTeacherBulkErrorCopyWithImpl<ClassTeacherBulkError>(this as ClassTeacherBulkError, _$identity);

  /// Serializes this ClassTeacherBulkError to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherBulkError;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherBulkError&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId)&&(identical(other.error, _this.error) || other.error == _this.error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherBulkError;
  return Object.hash(runtimeType,_this.classId,_this.sectionId,_this.error);
}

@override
String toString() {
  final _this = this as ClassTeacherBulkError;
  return 'ClassTeacherBulkError(classId: ${_this.classId}, sectionId: ${_this.sectionId}, error: ${_this.error})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherBulkErrorCopyWith<$Res>  {
  factory $ClassTeacherBulkErrorCopyWith(ClassTeacherBulkError value, $Res Function(ClassTeacherBulkError) _then) = _$ClassTeacherBulkErrorCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId, String? error
});




}
/// @nodoc
class _$ClassTeacherBulkErrorCopyWithImpl<$Res>
    implements $ClassTeacherBulkErrorCopyWith<$Res> {
  _$ClassTeacherBulkErrorCopyWithImpl(this._self, this._then);

  final ClassTeacherBulkError _self;
  final $Res Function(ClassTeacherBulkError) _then;

/// Create a copy of ClassTeacherBulkError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classId = freezed,Object? sectionId = freezed,Object? error = freezed,}) {
  return _then(ClassTeacherBulkError(
classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassTeacherBulkError].
extension ClassTeacherBulkErrorPatterns on ClassTeacherBulkError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherBulkError value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherBulkError() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherBulkError value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherBulkError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherBulkError value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherBulkError() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassTeacherBulkError() when $default != null:
return $default(_that.classId,_that.sectionId,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId,  String? error)  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherBulkError():
return $default(_that.classId,_that.sectionId,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherBulkError() when $default != null:
return $default(_that.classId,_that.sectionId,_that.error);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherBulkError implements ClassTeacherBulkError {
  const _ClassTeacherBulkError({@JsonKey(name: 'class_id') this.classId, @JsonKey(name: 'section_id') this.sectionId, this.error});
  factory _ClassTeacherBulkError.fromJson(Map<String, dynamic> json) => _$ClassTeacherBulkErrorFromJson(json);

@override@JsonKey(name: 'class_id') final  String? classId;
@override@JsonKey(name: 'section_id') final  String? sectionId;
@override final  String? error;

/// Create a copy of ClassTeacherBulkError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherBulkErrorCopyWith<_ClassTeacherBulkError> get copyWith => __$ClassTeacherBulkErrorCopyWithImpl<_ClassTeacherBulkError>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherBulkErrorToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherBulkError&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,classId,sectionId,error);
}

@override
String toString() {
    return 'ClassTeacherBulkError(classId: $classId, sectionId: $sectionId, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherBulkErrorCopyWith<$Res> implements $ClassTeacherBulkErrorCopyWith<$Res> {
  factory _$ClassTeacherBulkErrorCopyWith(_ClassTeacherBulkError value, $Res Function(_ClassTeacherBulkError) _then) = __$ClassTeacherBulkErrorCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId, String? error
});




}
/// @nodoc
class __$ClassTeacherBulkErrorCopyWithImpl<$Res>
    implements _$ClassTeacherBulkErrorCopyWith<$Res> {
  __$ClassTeacherBulkErrorCopyWithImpl(this._self, this._then);

  final _ClassTeacherBulkError _self;
  final $Res Function(_ClassTeacherBulkError) _then;

/// Create a copy of ClassTeacherBulkError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classId = freezed,Object? sectionId = freezed,Object? error = freezed,}) {
  return _then(_ClassTeacherBulkError(
classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ClassTeacherHistoryPage {

 int get total; int get page; int get limit; List<ClassTeacherHistoryLog> get data;
/// Create a copy of ClassTeacherHistoryPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherHistoryPageCopyWith<ClassTeacherHistoryPage> get copyWith => _$ClassTeacherHistoryPageCopyWithImpl<ClassTeacherHistoryPage>(this as ClassTeacherHistoryPage, _$identity);

  /// Serializes this ClassTeacherHistoryPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherHistoryPage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherHistoryPage&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.limit, _this.limit) || other.limit == _this.limit)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherHistoryPage;
  return Object.hash(runtimeType,_this.total,_this.page,_this.limit,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as ClassTeacherHistoryPage;
  return 'ClassTeacherHistoryPage(total: ${_this.total}, page: ${_this.page}, limit: ${_this.limit}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherHistoryPageCopyWith<$Res>  {
  factory $ClassTeacherHistoryPageCopyWith(ClassTeacherHistoryPage value, $Res Function(ClassTeacherHistoryPage) _then) = _$ClassTeacherHistoryPageCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, List<ClassTeacherHistoryLog> data
});




}
/// @nodoc
class _$ClassTeacherHistoryPageCopyWithImpl<$Res>
    implements $ClassTeacherHistoryPageCopyWith<$Res> {
  _$ClassTeacherHistoryPageCopyWithImpl(this._self, this._then);

  final ClassTeacherHistoryPage _self;
  final $Res Function(ClassTeacherHistoryPage) _then;

/// Create a copy of ClassTeacherHistoryPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(ClassTeacherHistoryPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ClassTeacherHistoryLog>,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassTeacherHistoryPage].
extension ClassTeacherHistoryPagePatterns on ClassTeacherHistoryPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherHistoryPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherHistoryPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherHistoryPage value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherHistoryPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherHistoryPage value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherHistoryPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<ClassTeacherHistoryLog> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassTeacherHistoryPage() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<ClassTeacherHistoryLog> data)  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherHistoryPage():
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int limit,  List<ClassTeacherHistoryLog> data)?  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherHistoryPage() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherHistoryPage implements ClassTeacherHistoryPage {
  const _ClassTeacherHistoryPage({this.total = 0, this.page = 1, this.limit = 50,  List<ClassTeacherHistoryLog> data = const <ClassTeacherHistoryLog>[]}): _data = data;
  factory _ClassTeacherHistoryPage.fromJson(Map<String, dynamic> json) => _$ClassTeacherHistoryPageFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
 final  List<ClassTeacherHistoryLog> _data;
@override@JsonKey() List<ClassTeacherHistoryLog> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ClassTeacherHistoryPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherHistoryPageCopyWith<_ClassTeacherHistoryPage> get copyWith => __$ClassTeacherHistoryPageCopyWithImpl<_ClassTeacherHistoryPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherHistoryPageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherHistoryPage&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,page,limit,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'ClassTeacherHistoryPage(total: $total, page: $page, limit: $limit, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherHistoryPageCopyWith<$Res> implements $ClassTeacherHistoryPageCopyWith<$Res> {
  factory _$ClassTeacherHistoryPageCopyWith(_ClassTeacherHistoryPage value, $Res Function(_ClassTeacherHistoryPage) _then) = __$ClassTeacherHistoryPageCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, List<ClassTeacherHistoryLog> data
});




}
/// @nodoc
class __$ClassTeacherHistoryPageCopyWithImpl<$Res>
    implements _$ClassTeacherHistoryPageCopyWith<$Res> {
  __$ClassTeacherHistoryPageCopyWithImpl(this._self, this._then);

  final _ClassTeacherHistoryPage _self;
  final $Res Function(_ClassTeacherHistoryPage) _then;

/// Create a copy of ClassTeacherHistoryPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(_ClassTeacherHistoryPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ClassTeacherHistoryLog>,
  ));
}


}


/// @nodoc
mixin _$ClassTeacherHistoryLog {

@JsonKey(name: 'log_id') String get logId;@JsonKey(name: 'action_type') String? get actionType;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'old_data') ClassTeacherAuditData? get oldData;@JsonKey(name: 'new_data') ClassTeacherAuditData? get newData;
/// Create a copy of ClassTeacherHistoryLog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherHistoryLogCopyWith<ClassTeacherHistoryLog> get copyWith => _$ClassTeacherHistoryLogCopyWithImpl<ClassTeacherHistoryLog>(this as ClassTeacherHistoryLog, _$identity);

  /// Serializes this ClassTeacherHistoryLog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherHistoryLog;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherHistoryLog&&(identical(other.logId, _this.logId) || other.logId == _this.logId)&&(identical(other.actionType, _this.actionType) || other.actionType == _this.actionType)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.oldData, _this.oldData) || other.oldData == _this.oldData)&&(identical(other.newData, _this.newData) || other.newData == _this.newData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherHistoryLog;
  return Object.hash(runtimeType,_this.logId,_this.actionType,_this.createdAt,_this.oldData,_this.newData);
}

@override
String toString() {
  final _this = this as ClassTeacherHistoryLog;
  return 'ClassTeacherHistoryLog(logId: ${_this.logId}, actionType: ${_this.actionType}, createdAt: ${_this.createdAt}, oldData: ${_this.oldData}, newData: ${_this.newData})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherHistoryLogCopyWith<$Res>  {
  factory $ClassTeacherHistoryLogCopyWith(ClassTeacherHistoryLog value, $Res Function(ClassTeacherHistoryLog) _then) = _$ClassTeacherHistoryLogCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'log_id') String logId,@JsonKey(name: 'action_type') String? actionType,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'old_data') ClassTeacherAuditData? oldData,@JsonKey(name: 'new_data') ClassTeacherAuditData? newData
});


$ClassTeacherAuditDataCopyWith<$Res>? get oldData;$ClassTeacherAuditDataCopyWith<$Res>? get newData;

}
/// @nodoc
class _$ClassTeacherHistoryLogCopyWithImpl<$Res>
    implements $ClassTeacherHistoryLogCopyWith<$Res> {
  _$ClassTeacherHistoryLogCopyWithImpl(this._self, this._then);

  final ClassTeacherHistoryLog _self;
  final $Res Function(ClassTeacherHistoryLog) _then;

/// Create a copy of ClassTeacherHistoryLog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? logId = null,Object? actionType = freezed,Object? createdAt = freezed,Object? oldData = freezed,Object? newData = freezed,}) {
  return _then(ClassTeacherHistoryLog(
logId: null == logId ? _self.logId : logId // ignore: cast_nullable_to_non_nullable
as String,actionType: freezed == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,oldData: freezed == oldData ? _self.oldData : oldData // ignore: cast_nullable_to_non_nullable
as ClassTeacherAuditData?,newData: freezed == newData ? _self.newData : newData // ignore: cast_nullable_to_non_nullable
as ClassTeacherAuditData?,
  ));
}
/// Create a copy of ClassTeacherHistoryLog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassTeacherAuditDataCopyWith<$Res>? get oldData {
    if (_self.oldData == null) {
    return null;
  }

  return $ClassTeacherAuditDataCopyWith<$Res>(_self.oldData!, (value) {
    return _then(_self.copyWith(oldData: value));
  });
}/// Create a copy of ClassTeacherHistoryLog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassTeacherAuditDataCopyWith<$Res>? get newData {
    if (_self.newData == null) {
    return null;
  }

  return $ClassTeacherAuditDataCopyWith<$Res>(_self.newData!, (value) {
    return _then(_self.copyWith(newData: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClassTeacherHistoryLog].
extension ClassTeacherHistoryLogPatterns on ClassTeacherHistoryLog {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherHistoryLog value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherHistoryLog() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherHistoryLog value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherHistoryLog():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherHistoryLog value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherHistoryLog() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'log_id')  String logId, @JsonKey(name: 'action_type')  String? actionType, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'old_data')  ClassTeacherAuditData? oldData, @JsonKey(name: 'new_data')  ClassTeacherAuditData? newData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassTeacherHistoryLog() when $default != null:
return $default(_that.logId,_that.actionType,_that.createdAt,_that.oldData,_that.newData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'log_id')  String logId, @JsonKey(name: 'action_type')  String? actionType, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'old_data')  ClassTeacherAuditData? oldData, @JsonKey(name: 'new_data')  ClassTeacherAuditData? newData)  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherHistoryLog():
return $default(_that.logId,_that.actionType,_that.createdAt,_that.oldData,_that.newData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'log_id')  String logId, @JsonKey(name: 'action_type')  String? actionType, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'old_data')  ClassTeacherAuditData? oldData, @JsonKey(name: 'new_data')  ClassTeacherAuditData? newData)?  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherHistoryLog() when $default != null:
return $default(_that.logId,_that.actionType,_that.createdAt,_that.oldData,_that.newData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherHistoryLog implements ClassTeacherHistoryLog {
  const _ClassTeacherHistoryLog({@JsonKey(name: 'log_id') required this.logId, @JsonKey(name: 'action_type') this.actionType, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'old_data') this.oldData, @JsonKey(name: 'new_data') this.newData});
  factory _ClassTeacherHistoryLog.fromJson(Map<String, dynamic> json) => _$ClassTeacherHistoryLogFromJson(json);

@override@JsonKey(name: 'log_id') final  String logId;
@override@JsonKey(name: 'action_type') final  String? actionType;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'old_data') final  ClassTeacherAuditData? oldData;
@override@JsonKey(name: 'new_data') final  ClassTeacherAuditData? newData;

/// Create a copy of ClassTeacherHistoryLog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherHistoryLogCopyWith<_ClassTeacherHistoryLog> get copyWith => __$ClassTeacherHistoryLogCopyWithImpl<_ClassTeacherHistoryLog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherHistoryLogToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherHistoryLog&&(identical(other.logId, logId) || other.logId == logId)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.oldData, oldData) || other.oldData == oldData)&&(identical(other.newData, newData) || other.newData == newData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,logId,actionType,createdAt,oldData,newData);
}

@override
String toString() {
    return 'ClassTeacherHistoryLog(logId: $logId, actionType: $actionType, createdAt: $createdAt, oldData: $oldData, newData: $newData)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherHistoryLogCopyWith<$Res> implements $ClassTeacherHistoryLogCopyWith<$Res> {
  factory _$ClassTeacherHistoryLogCopyWith(_ClassTeacherHistoryLog value, $Res Function(_ClassTeacherHistoryLog) _then) = __$ClassTeacherHistoryLogCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'log_id') String logId,@JsonKey(name: 'action_type') String? actionType,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'old_data') ClassTeacherAuditData? oldData,@JsonKey(name: 'new_data') ClassTeacherAuditData? newData
});


@override $ClassTeacherAuditDataCopyWith<$Res>? get oldData;@override $ClassTeacherAuditDataCopyWith<$Res>? get newData;

}
/// @nodoc
class __$ClassTeacherHistoryLogCopyWithImpl<$Res>
    implements _$ClassTeacherHistoryLogCopyWith<$Res> {
  __$ClassTeacherHistoryLogCopyWithImpl(this._self, this._then);

  final _ClassTeacherHistoryLog _self;
  final $Res Function(_ClassTeacherHistoryLog) _then;

/// Create a copy of ClassTeacherHistoryLog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? logId = null,Object? actionType = freezed,Object? createdAt = freezed,Object? oldData = freezed,Object? newData = freezed,}) {
  return _then(_ClassTeacherHistoryLog(
logId: null == logId ? _self.logId : logId // ignore: cast_nullable_to_non_nullable
as String,actionType: freezed == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,oldData: freezed == oldData ? _self.oldData : oldData // ignore: cast_nullable_to_non_nullable
as ClassTeacherAuditData?,newData: freezed == newData ? _self.newData : newData // ignore: cast_nullable_to_non_nullable
as ClassTeacherAuditData?,
  ));
}

/// Create a copy of ClassTeacherHistoryLog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassTeacherAuditDataCopyWith<$Res>? get oldData {
    if (_self.oldData == null) {
    return null;
  }

  return $ClassTeacherAuditDataCopyWith<$Res>(_self.oldData!, (value) {
    return _then(_self.copyWith(oldData: value));
  });
}/// Create a copy of ClassTeacherHistoryLog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassTeacherAuditDataCopyWith<$Res>? get newData {
    if (_self.newData == null) {
    return null;
  }

  return $ClassTeacherAuditDataCopyWith<$Res>(_self.newData!, (value) {
    return _then(_self.copyWith(newData: value));
  });
}
}


/// @nodoc
mixin _$ClassTeacherAuditData {

@JsonKey(name: 'staff_id') String? get staffId;@JsonKey(name: 'class_id') String? get classId;@JsonKey(name: 'section_id') String? get sectionId;@JsonKey(name: 'session_id') String? get sessionId;
/// Create a copy of ClassTeacherAuditData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherAuditDataCopyWith<ClassTeacherAuditData> get copyWith => _$ClassTeacherAuditDataCopyWithImpl<ClassTeacherAuditData>(this as ClassTeacherAuditData, _$identity);

  /// Serializes this ClassTeacherAuditData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherAuditData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherAuditData&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherAuditData;
  return Object.hash(runtimeType,_this.staffId,_this.classId,_this.sectionId,_this.sessionId);
}

@override
String toString() {
  final _this = this as ClassTeacherAuditData;
  return 'ClassTeacherAuditData(staffId: ${_this.staffId}, classId: ${_this.classId}, sectionId: ${_this.sectionId}, sessionId: ${_this.sessionId})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherAuditDataCopyWith<$Res>  {
  factory $ClassTeacherAuditDataCopyWith(ClassTeacherAuditData value, $Res Function(ClassTeacherAuditData) _then) = _$ClassTeacherAuditDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'session_id') String? sessionId
});




}
/// @nodoc
class _$ClassTeacherAuditDataCopyWithImpl<$Res>
    implements $ClassTeacherAuditDataCopyWith<$Res> {
  _$ClassTeacherAuditDataCopyWithImpl(this._self, this._then);

  final ClassTeacherAuditData _self;
  final $Res Function(ClassTeacherAuditData) _then;

/// Create a copy of ClassTeacherAuditData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = freezed,Object? classId = freezed,Object? sectionId = freezed,Object? sessionId = freezed,}) {
  return _then(ClassTeacherAuditData(
staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassTeacherAuditData].
extension ClassTeacherAuditDataPatterns on ClassTeacherAuditData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherAuditData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherAuditData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherAuditData value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherAuditData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherAuditData value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherAuditData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'session_id')  String? sessionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassTeacherAuditData() when $default != null:
return $default(_that.staffId,_that.classId,_that.sectionId,_that.sessionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'session_id')  String? sessionId)  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherAuditData():
return $default(_that.staffId,_that.classId,_that.sectionId,_that.sessionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'session_id')  String? sessionId)?  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherAuditData() when $default != null:
return $default(_that.staffId,_that.classId,_that.sectionId,_that.sessionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherAuditData implements ClassTeacherAuditData {
  const _ClassTeacherAuditData({@JsonKey(name: 'staff_id') this.staffId, @JsonKey(name: 'class_id') this.classId, @JsonKey(name: 'section_id') this.sectionId, @JsonKey(name: 'session_id') this.sessionId});
  factory _ClassTeacherAuditData.fromJson(Map<String, dynamic> json) => _$ClassTeacherAuditDataFromJson(json);

@override@JsonKey(name: 'staff_id') final  String? staffId;
@override@JsonKey(name: 'class_id') final  String? classId;
@override@JsonKey(name: 'section_id') final  String? sectionId;
@override@JsonKey(name: 'session_id') final  String? sessionId;

/// Create a copy of ClassTeacherAuditData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherAuditDataCopyWith<_ClassTeacherAuditData> get copyWith => __$ClassTeacherAuditDataCopyWithImpl<_ClassTeacherAuditData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherAuditDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherAuditData&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,classId,sectionId,sessionId);
}

@override
String toString() {
    return 'ClassTeacherAuditData(staffId: $staffId, classId: $classId, sectionId: $sectionId, sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherAuditDataCopyWith<$Res> implements $ClassTeacherAuditDataCopyWith<$Res> {
  factory _$ClassTeacherAuditDataCopyWith(_ClassTeacherAuditData value, $Res Function(_ClassTeacherAuditData) _then) = __$ClassTeacherAuditDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'session_id') String? sessionId
});




}
/// @nodoc
class __$ClassTeacherAuditDataCopyWithImpl<$Res>
    implements _$ClassTeacherAuditDataCopyWith<$Res> {
  __$ClassTeacherAuditDataCopyWithImpl(this._self, this._then);

  final _ClassTeacherAuditData _self;
  final $Res Function(_ClassTeacherAuditData) _then;

/// Create a copy of ClassTeacherAuditData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = freezed,Object? classId = freezed,Object? sectionId = freezed,Object? sessionId = freezed,}) {
  return _then(_ClassTeacherAuditData(
staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ClassTeacherOverview {

@JsonKey(name: 'session_id') String? get sessionId;@JsonKey(name: 'session_name') String? get sessionName;@JsonKey(name: 'total_sections') int get totalSections; int get assigned; int get unassigned; List<ClassTeacherOverviewRow> get data;
/// Create a copy of ClassTeacherOverview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherOverviewCopyWith<ClassTeacherOverview> get copyWith => _$ClassTeacherOverviewCopyWithImpl<ClassTeacherOverview>(this as ClassTeacherOverview, _$identity);

  /// Serializes this ClassTeacherOverview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherOverview;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherOverview&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.sessionName, _this.sessionName) || other.sessionName == _this.sessionName)&&(identical(other.totalSections, _this.totalSections) || other.totalSections == _this.totalSections)&&(identical(other.assigned, _this.assigned) || other.assigned == _this.assigned)&&(identical(other.unassigned, _this.unassigned) || other.unassigned == _this.unassigned)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherOverview;
  return Object.hash(runtimeType,_this.sessionId,_this.sessionName,_this.totalSections,_this.assigned,_this.unassigned,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as ClassTeacherOverview;
  return 'ClassTeacherOverview(sessionId: ${_this.sessionId}, sessionName: ${_this.sessionName}, totalSections: ${_this.totalSections}, assigned: ${_this.assigned}, unassigned: ${_this.unassigned}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherOverviewCopyWith<$Res>  {
  factory $ClassTeacherOverviewCopyWith(ClassTeacherOverview value, $Res Function(ClassTeacherOverview) _then) = _$ClassTeacherOverviewCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'session_name') String? sessionName,@JsonKey(name: 'total_sections') int totalSections, int assigned, int unassigned, List<ClassTeacherOverviewRow> data
});




}
/// @nodoc
class _$ClassTeacherOverviewCopyWithImpl<$Res>
    implements $ClassTeacherOverviewCopyWith<$Res> {
  _$ClassTeacherOverviewCopyWithImpl(this._self, this._then);

  final ClassTeacherOverview _self;
  final $Res Function(ClassTeacherOverview) _then;

/// Create a copy of ClassTeacherOverview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = freezed,Object? sessionName = freezed,Object? totalSections = null,Object? assigned = null,Object? unassigned = null,Object? data = null,}) {
  return _then(ClassTeacherOverview(
sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,sessionName: freezed == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String?,totalSections: null == totalSections ? _self.totalSections : totalSections // ignore: cast_nullable_to_non_nullable
as int,assigned: null == assigned ? _self.assigned : assigned // ignore: cast_nullable_to_non_nullable
as int,unassigned: null == unassigned ? _self.unassigned : unassigned // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ClassTeacherOverviewRow>,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassTeacherOverview].
extension ClassTeacherOverviewPatterns on ClassTeacherOverview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherOverview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherOverview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherOverview value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherOverview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherOverview value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherOverview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'session_name')  String? sessionName, @JsonKey(name: 'total_sections')  int totalSections,  int assigned,  int unassigned,  List<ClassTeacherOverviewRow> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassTeacherOverview() when $default != null:
return $default(_that.sessionId,_that.sessionName,_that.totalSections,_that.assigned,_that.unassigned,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'session_name')  String? sessionName, @JsonKey(name: 'total_sections')  int totalSections,  int assigned,  int unassigned,  List<ClassTeacherOverviewRow> data)  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherOverview():
return $default(_that.sessionId,_that.sessionName,_that.totalSections,_that.assigned,_that.unassigned,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'session_name')  String? sessionName, @JsonKey(name: 'total_sections')  int totalSections,  int assigned,  int unassigned,  List<ClassTeacherOverviewRow> data)?  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherOverview() when $default != null:
return $default(_that.sessionId,_that.sessionName,_that.totalSections,_that.assigned,_that.unassigned,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherOverview implements ClassTeacherOverview {
  const _ClassTeacherOverview({@JsonKey(name: 'session_id') this.sessionId, @JsonKey(name: 'session_name') this.sessionName, @JsonKey(name: 'total_sections') this.totalSections = 0, this.assigned = 0, this.unassigned = 0,  List<ClassTeacherOverviewRow> data = const <ClassTeacherOverviewRow>[]}): _data = data;
  factory _ClassTeacherOverview.fromJson(Map<String, dynamic> json) => _$ClassTeacherOverviewFromJson(json);

@override@JsonKey(name: 'session_id') final  String? sessionId;
@override@JsonKey(name: 'session_name') final  String? sessionName;
@override@JsonKey(name: 'total_sections') final  int totalSections;
@override@JsonKey() final  int assigned;
@override@JsonKey() final  int unassigned;
 final  List<ClassTeacherOverviewRow> _data;
@override@JsonKey() List<ClassTeacherOverviewRow> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ClassTeacherOverview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherOverviewCopyWith<_ClassTeacherOverview> get copyWith => __$ClassTeacherOverviewCopyWithImpl<_ClassTeacherOverview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherOverviewToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherOverview&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.sessionName, sessionName) || other.sessionName == sessionName)&&(identical(other.totalSections, totalSections) || other.totalSections == totalSections)&&(identical(other.assigned, assigned) || other.assigned == assigned)&&(identical(other.unassigned, unassigned) || other.unassigned == unassigned)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sessionId,sessionName,totalSections,assigned,unassigned,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'ClassTeacherOverview(sessionId: $sessionId, sessionName: $sessionName, totalSections: $totalSections, assigned: $assigned, unassigned: $unassigned, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherOverviewCopyWith<$Res> implements $ClassTeacherOverviewCopyWith<$Res> {
  factory _$ClassTeacherOverviewCopyWith(_ClassTeacherOverview value, $Res Function(_ClassTeacherOverview) _then) = __$ClassTeacherOverviewCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'session_name') String? sessionName,@JsonKey(name: 'total_sections') int totalSections, int assigned, int unassigned, List<ClassTeacherOverviewRow> data
});




}
/// @nodoc
class __$ClassTeacherOverviewCopyWithImpl<$Res>
    implements _$ClassTeacherOverviewCopyWith<$Res> {
  __$ClassTeacherOverviewCopyWithImpl(this._self, this._then);

  final _ClassTeacherOverview _self;
  final $Res Function(_ClassTeacherOverview) _then;

/// Create a copy of ClassTeacherOverview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = freezed,Object? sessionName = freezed,Object? totalSections = null,Object? assigned = null,Object? unassigned = null,Object? data = null,}) {
  return _then(_ClassTeacherOverview(
sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,sessionName: freezed == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String?,totalSections: null == totalSections ? _self.totalSections : totalSections // ignore: cast_nullable_to_non_nullable
as int,assigned: null == assigned ? _self.assigned : assigned // ignore: cast_nullable_to_non_nullable
as int,unassigned: null == unassigned ? _self.unassigned : unassigned // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ClassTeacherOverviewRow>,
  ));
}


}


/// @nodoc
mixin _$ClassTeacherOverviewRow {

@JsonKey(name: 'class_id') String? get classId;@JsonKey(name: 'class_name') String? get className;@JsonKey(name: 'section_id') String get sectionId;@JsonKey(name: 'section_name') String? get sectionName;@JsonKey(name: 'assignment_id') String? get assignmentId; String? get status;@JsonKey(name: 'class_teacher') OverviewClassTeacher? get classTeacher;
/// Create a copy of ClassTeacherOverviewRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherOverviewRowCopyWith<ClassTeacherOverviewRow> get copyWith => _$ClassTeacherOverviewRowCopyWithImpl<ClassTeacherOverviewRow>(this as ClassTeacherOverviewRow, _$identity);

  /// Serializes this ClassTeacherOverviewRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherOverviewRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherOverviewRow&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId)&&(identical(other.sectionName, _this.sectionName) || other.sectionName == _this.sectionName)&&(identical(other.assignmentId, _this.assignmentId) || other.assignmentId == _this.assignmentId)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.classTeacher, _this.classTeacher) || other.classTeacher == _this.classTeacher));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherOverviewRow;
  return Object.hash(runtimeType,_this.classId,_this.className,_this.sectionId,_this.sectionName,_this.assignmentId,_this.status,_this.classTeacher);
}

@override
String toString() {
  final _this = this as ClassTeacherOverviewRow;
  return 'ClassTeacherOverviewRow(classId: ${_this.classId}, className: ${_this.className}, sectionId: ${_this.sectionId}, sectionName: ${_this.sectionName}, assignmentId: ${_this.assignmentId}, status: ${_this.status}, classTeacher: ${_this.classTeacher})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherOverviewRowCopyWith<$Res>  {
  factory $ClassTeacherOverviewRowCopyWith(ClassTeacherOverviewRow value, $Res Function(ClassTeacherOverviewRow) _then) = _$ClassTeacherOverviewRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_id') String sectionId,@JsonKey(name: 'section_name') String? sectionName,@JsonKey(name: 'assignment_id') String? assignmentId, String? status,@JsonKey(name: 'class_teacher') OverviewClassTeacher? classTeacher
});


$OverviewClassTeacherCopyWith<$Res>? get classTeacher;

}
/// @nodoc
class _$ClassTeacherOverviewRowCopyWithImpl<$Res>
    implements $ClassTeacherOverviewRowCopyWith<$Res> {
  _$ClassTeacherOverviewRowCopyWithImpl(this._self, this._then);

  final ClassTeacherOverviewRow _self;
  final $Res Function(ClassTeacherOverviewRow) _then;

/// Create a copy of ClassTeacherOverviewRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classId = freezed,Object? className = freezed,Object? sectionId = null,Object? sectionName = freezed,Object? assignmentId = freezed,Object? status = freezed,Object? classTeacher = freezed,}) {
  return _then(ClassTeacherOverviewRow(
classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionId: null == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,assignmentId: freezed == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,classTeacher: freezed == classTeacher ? _self.classTeacher : classTeacher // ignore: cast_nullable_to_non_nullable
as OverviewClassTeacher?,
  ));
}
/// Create a copy of ClassTeacherOverviewRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OverviewClassTeacherCopyWith<$Res>? get classTeacher {
    if (_self.classTeacher == null) {
    return null;
  }

  return $OverviewClassTeacherCopyWith<$Res>(_self.classTeacher!, (value) {
    return _then(_self.copyWith(classTeacher: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClassTeacherOverviewRow].
extension ClassTeacherOverviewRowPatterns on ClassTeacherOverviewRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherOverviewRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherOverviewRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherOverviewRow value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherOverviewRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherOverviewRow value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherOverviewRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_id')  String sectionId, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'assignment_id')  String? assignmentId,  String? status, @JsonKey(name: 'class_teacher')  OverviewClassTeacher? classTeacher)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassTeacherOverviewRow() when $default != null:
return $default(_that.classId,_that.className,_that.sectionId,_that.sectionName,_that.assignmentId,_that.status,_that.classTeacher);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_id')  String sectionId, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'assignment_id')  String? assignmentId,  String? status, @JsonKey(name: 'class_teacher')  OverviewClassTeacher? classTeacher)  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherOverviewRow():
return $default(_that.classId,_that.className,_that.sectionId,_that.sectionName,_that.assignmentId,_that.status,_that.classTeacher);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_id')  String sectionId, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'assignment_id')  String? assignmentId,  String? status, @JsonKey(name: 'class_teacher')  OverviewClassTeacher? classTeacher)?  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherOverviewRow() when $default != null:
return $default(_that.classId,_that.className,_that.sectionId,_that.sectionName,_that.assignmentId,_that.status,_that.classTeacher);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherOverviewRow implements ClassTeacherOverviewRow {
  const _ClassTeacherOverviewRow({@JsonKey(name: 'class_id') this.classId, @JsonKey(name: 'class_name') this.className, @JsonKey(name: 'section_id') required this.sectionId, @JsonKey(name: 'section_name') this.sectionName, @JsonKey(name: 'assignment_id') this.assignmentId, this.status, @JsonKey(name: 'class_teacher') this.classTeacher});
  factory _ClassTeacherOverviewRow.fromJson(Map<String, dynamic> json) => _$ClassTeacherOverviewRowFromJson(json);

@override@JsonKey(name: 'class_id') final  String? classId;
@override@JsonKey(name: 'class_name') final  String? className;
@override@JsonKey(name: 'section_id') final  String sectionId;
@override@JsonKey(name: 'section_name') final  String? sectionName;
@override@JsonKey(name: 'assignment_id') final  String? assignmentId;
@override final  String? status;
@override@JsonKey(name: 'class_teacher') final  OverviewClassTeacher? classTeacher;

/// Create a copy of ClassTeacherOverviewRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherOverviewRowCopyWith<_ClassTeacherOverviewRow> get copyWith => __$ClassTeacherOverviewRowCopyWithImpl<_ClassTeacherOverviewRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherOverviewRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherOverviewRow&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.className, className) || other.className == className)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName)&&(identical(other.assignmentId, assignmentId) || other.assignmentId == assignmentId)&&(identical(other.status, status) || other.status == status)&&(identical(other.classTeacher, classTeacher) || other.classTeacher == classTeacher));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,classId,className,sectionId,sectionName,assignmentId,status,classTeacher);
}

@override
String toString() {
    return 'ClassTeacherOverviewRow(classId: $classId, className: $className, sectionId: $sectionId, sectionName: $sectionName, assignmentId: $assignmentId, status: $status, classTeacher: $classTeacher)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherOverviewRowCopyWith<$Res> implements $ClassTeacherOverviewRowCopyWith<$Res> {
  factory _$ClassTeacherOverviewRowCopyWith(_ClassTeacherOverviewRow value, $Res Function(_ClassTeacherOverviewRow) _then) = __$ClassTeacherOverviewRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_id') String sectionId,@JsonKey(name: 'section_name') String? sectionName,@JsonKey(name: 'assignment_id') String? assignmentId, String? status,@JsonKey(name: 'class_teacher') OverviewClassTeacher? classTeacher
});


@override $OverviewClassTeacherCopyWith<$Res>? get classTeacher;

}
/// @nodoc
class __$ClassTeacherOverviewRowCopyWithImpl<$Res>
    implements _$ClassTeacherOverviewRowCopyWith<$Res> {
  __$ClassTeacherOverviewRowCopyWithImpl(this._self, this._then);

  final _ClassTeacherOverviewRow _self;
  final $Res Function(_ClassTeacherOverviewRow) _then;

/// Create a copy of ClassTeacherOverviewRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classId = freezed,Object? className = freezed,Object? sectionId = null,Object? sectionName = freezed,Object? assignmentId = freezed,Object? status = freezed,Object? classTeacher = freezed,}) {
  return _then(_ClassTeacherOverviewRow(
classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionId: null == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,assignmentId: freezed == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,classTeacher: freezed == classTeacher ? _self.classTeacher : classTeacher // ignore: cast_nullable_to_non_nullable
as OverviewClassTeacher?,
  ));
}

/// Create a copy of ClassTeacherOverviewRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OverviewClassTeacherCopyWith<$Res>? get classTeacher {
    if (_self.classTeacher == null) {
    return null;
  }

  return $OverviewClassTeacherCopyWith<$Res>(_self.classTeacher!, (value) {
    return _then(_self.copyWith(classTeacher: value));
  });
}
}


/// @nodoc
mixin _$OverviewClassTeacher {

@JsonKey(name: 'staff_id') String? get staffId;@JsonKey(name: 'full_name') String? get fullName;@JsonKey(name: 'employee_code') String? get employeeCode;@JsonKey(name: 'contact_number') String? get contactNumber; String? get email;@JsonKey(name: 'employment_status') String? get employmentStatus;@JsonKey(name: 'account_status') String? get accountStatus;
/// Create a copy of OverviewClassTeacher
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OverviewClassTeacherCopyWith<OverviewClassTeacher> get copyWith => _$OverviewClassTeacherCopyWithImpl<OverviewClassTeacher>(this as OverviewClassTeacher, _$identity);

  /// Serializes this OverviewClassTeacher to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OverviewClassTeacher;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OverviewClassTeacher&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.contactNumber, _this.contactNumber) || other.contactNumber == _this.contactNumber)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.employmentStatus, _this.employmentStatus) || other.employmentStatus == _this.employmentStatus)&&(identical(other.accountStatus, _this.accountStatus) || other.accountStatus == _this.accountStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OverviewClassTeacher;
  return Object.hash(runtimeType,_this.staffId,_this.fullName,_this.employeeCode,_this.contactNumber,_this.email,_this.employmentStatus,_this.accountStatus);
}

@override
String toString() {
  final _this = this as OverviewClassTeacher;
  return 'OverviewClassTeacher(staffId: ${_this.staffId}, fullName: ${_this.fullName}, employeeCode: ${_this.employeeCode}, contactNumber: ${_this.contactNumber}, email: ${_this.email}, employmentStatus: ${_this.employmentStatus}, accountStatus: ${_this.accountStatus})';
}


}

/// @nodoc
abstract mixin class $OverviewClassTeacherCopyWith<$Res>  {
  factory $OverviewClassTeacherCopyWith(OverviewClassTeacher value, $Res Function(OverviewClassTeacher) _then) = _$OverviewClassTeacherCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'contact_number') String? contactNumber, String? email,@JsonKey(name: 'employment_status') String? employmentStatus,@JsonKey(name: 'account_status') String? accountStatus
});




}
/// @nodoc
class _$OverviewClassTeacherCopyWithImpl<$Res>
    implements $OverviewClassTeacherCopyWith<$Res> {
  _$OverviewClassTeacherCopyWithImpl(this._self, this._then);

  final OverviewClassTeacher _self;
  final $Res Function(OverviewClassTeacher) _then;

/// Create a copy of OverviewClassTeacher
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = freezed,Object? fullName = freezed,Object? employeeCode = freezed,Object? contactNumber = freezed,Object? email = freezed,Object? employmentStatus = freezed,Object? accountStatus = freezed,}) {
  return _then(OverviewClassTeacher(
staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,employmentStatus: freezed == employmentStatus ? _self.employmentStatus : employmentStatus // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OverviewClassTeacher].
extension OverviewClassTeacherPatterns on OverviewClassTeacher {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OverviewClassTeacher value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OverviewClassTeacher() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OverviewClassTeacher value)  $default,){
final _that = this;
switch (_that) {
case _OverviewClassTeacher():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OverviewClassTeacher value)?  $default,){
final _that = this;
switch (_that) {
case _OverviewClassTeacher() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'contact_number')  String? contactNumber,  String? email, @JsonKey(name: 'employment_status')  String? employmentStatus, @JsonKey(name: 'account_status')  String? accountStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OverviewClassTeacher() when $default != null:
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.contactNumber,_that.email,_that.employmentStatus,_that.accountStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'contact_number')  String? contactNumber,  String? email, @JsonKey(name: 'employment_status')  String? employmentStatus, @JsonKey(name: 'account_status')  String? accountStatus)  $default,) {final _that = this;
switch (_that) {
case _OverviewClassTeacher():
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.contactNumber,_that.email,_that.employmentStatus,_that.accountStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'contact_number')  String? contactNumber,  String? email, @JsonKey(name: 'employment_status')  String? employmentStatus, @JsonKey(name: 'account_status')  String? accountStatus)?  $default,) {final _that = this;
switch (_that) {
case _OverviewClassTeacher() when $default != null:
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.contactNumber,_that.email,_that.employmentStatus,_that.accountStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OverviewClassTeacher implements OverviewClassTeacher {
  const _OverviewClassTeacher({@JsonKey(name: 'staff_id') this.staffId, @JsonKey(name: 'full_name') this.fullName, @JsonKey(name: 'employee_code') this.employeeCode, @JsonKey(name: 'contact_number') this.contactNumber, this.email, @JsonKey(name: 'employment_status') this.employmentStatus, @JsonKey(name: 'account_status') this.accountStatus});
  factory _OverviewClassTeacher.fromJson(Map<String, dynamic> json) => _$OverviewClassTeacherFromJson(json);

@override@JsonKey(name: 'staff_id') final  String? staffId;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override@JsonKey(name: 'contact_number') final  String? contactNumber;
@override final  String? email;
@override@JsonKey(name: 'employment_status') final  String? employmentStatus;
@override@JsonKey(name: 'account_status') final  String? accountStatus;

/// Create a copy of OverviewClassTeacher
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OverviewClassTeacherCopyWith<_OverviewClassTeacher> get copyWith => __$OverviewClassTeacherCopyWithImpl<_OverviewClassTeacher>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OverviewClassTeacherToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OverviewClassTeacher&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.contactNumber, contactNumber) || other.contactNumber == contactNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,fullName,employeeCode,contactNumber,email,employmentStatus,accountStatus);
}

@override
String toString() {
    return 'OverviewClassTeacher(staffId: $staffId, fullName: $fullName, employeeCode: $employeeCode, contactNumber: $contactNumber, email: $email, employmentStatus: $employmentStatus, accountStatus: $accountStatus)';
}


}

/// @nodoc
abstract mixin class _$OverviewClassTeacherCopyWith<$Res> implements $OverviewClassTeacherCopyWith<$Res> {
  factory _$OverviewClassTeacherCopyWith(_OverviewClassTeacher value, $Res Function(_OverviewClassTeacher) _then) = __$OverviewClassTeacherCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'contact_number') String? contactNumber, String? email,@JsonKey(name: 'employment_status') String? employmentStatus,@JsonKey(name: 'account_status') String? accountStatus
});




}
/// @nodoc
class __$OverviewClassTeacherCopyWithImpl<$Res>
    implements _$OverviewClassTeacherCopyWith<$Res> {
  __$OverviewClassTeacherCopyWithImpl(this._self, this._then);

  final _OverviewClassTeacher _self;
  final $Res Function(_OverviewClassTeacher) _then;

/// Create a copy of OverviewClassTeacher
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = freezed,Object? fullName = freezed,Object? employeeCode = freezed,Object? contactNumber = freezed,Object? email = freezed,Object? employmentStatus = freezed,Object? accountStatus = freezed,}) {
  return _then(_OverviewClassTeacher(
staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,employmentStatus: freezed == employmentStatus ? _self.employmentStatus : employmentStatus // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ClassTeacherAttendanceMonitoring {

@JsonKey(name: 'session_id') String? get sessionId;@JsonKey(name: 'expected_working_days_this_month') int? get expectedWorkingDaysThisMonth; List<ClassTeacherAttendanceRow> get data;
/// Create a copy of ClassTeacherAttendanceMonitoring
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherAttendanceMonitoringCopyWith<ClassTeacherAttendanceMonitoring> get copyWith => _$ClassTeacherAttendanceMonitoringCopyWithImpl<ClassTeacherAttendanceMonitoring>(this as ClassTeacherAttendanceMonitoring, _$identity);

  /// Serializes this ClassTeacherAttendanceMonitoring to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherAttendanceMonitoring;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherAttendanceMonitoring&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.expectedWorkingDaysThisMonth, _this.expectedWorkingDaysThisMonth) || other.expectedWorkingDaysThisMonth == _this.expectedWorkingDaysThisMonth)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherAttendanceMonitoring;
  return Object.hash(runtimeType,_this.sessionId,_this.expectedWorkingDaysThisMonth,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as ClassTeacherAttendanceMonitoring;
  return 'ClassTeacherAttendanceMonitoring(sessionId: ${_this.sessionId}, expectedWorkingDaysThisMonth: ${_this.expectedWorkingDaysThisMonth}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherAttendanceMonitoringCopyWith<$Res>  {
  factory $ClassTeacherAttendanceMonitoringCopyWith(ClassTeacherAttendanceMonitoring value, $Res Function(ClassTeacherAttendanceMonitoring) _then) = _$ClassTeacherAttendanceMonitoringCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'expected_working_days_this_month') int? expectedWorkingDaysThisMonth, List<ClassTeacherAttendanceRow> data
});




}
/// @nodoc
class _$ClassTeacherAttendanceMonitoringCopyWithImpl<$Res>
    implements $ClassTeacherAttendanceMonitoringCopyWith<$Res> {
  _$ClassTeacherAttendanceMonitoringCopyWithImpl(this._self, this._then);

  final ClassTeacherAttendanceMonitoring _self;
  final $Res Function(ClassTeacherAttendanceMonitoring) _then;

/// Create a copy of ClassTeacherAttendanceMonitoring
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = freezed,Object? expectedWorkingDaysThisMonth = freezed,Object? data = null,}) {
  return _then(ClassTeacherAttendanceMonitoring(
sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,expectedWorkingDaysThisMonth: freezed == expectedWorkingDaysThisMonth ? _self.expectedWorkingDaysThisMonth : expectedWorkingDaysThisMonth // ignore: cast_nullable_to_non_nullable
as int?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ClassTeacherAttendanceRow>,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassTeacherAttendanceMonitoring].
extension ClassTeacherAttendanceMonitoringPatterns on ClassTeacherAttendanceMonitoring {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherAttendanceMonitoring value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherAttendanceMonitoring() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherAttendanceMonitoring value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherAttendanceMonitoring():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherAttendanceMonitoring value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherAttendanceMonitoring() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'expected_working_days_this_month')  int? expectedWorkingDaysThisMonth,  List<ClassTeacherAttendanceRow> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassTeacherAttendanceMonitoring() when $default != null:
return $default(_that.sessionId,_that.expectedWorkingDaysThisMonth,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'expected_working_days_this_month')  int? expectedWorkingDaysThisMonth,  List<ClassTeacherAttendanceRow> data)  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherAttendanceMonitoring():
return $default(_that.sessionId,_that.expectedWorkingDaysThisMonth,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'expected_working_days_this_month')  int? expectedWorkingDaysThisMonth,  List<ClassTeacherAttendanceRow> data)?  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherAttendanceMonitoring() when $default != null:
return $default(_that.sessionId,_that.expectedWorkingDaysThisMonth,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherAttendanceMonitoring implements ClassTeacherAttendanceMonitoring {
  const _ClassTeacherAttendanceMonitoring({@JsonKey(name: 'session_id') this.sessionId, @JsonKey(name: 'expected_working_days_this_month') this.expectedWorkingDaysThisMonth,  List<ClassTeacherAttendanceRow> data = const <ClassTeacherAttendanceRow>[]}): _data = data;
  factory _ClassTeacherAttendanceMonitoring.fromJson(Map<String, dynamic> json) => _$ClassTeacherAttendanceMonitoringFromJson(json);

@override@JsonKey(name: 'session_id') final  String? sessionId;
@override@JsonKey(name: 'expected_working_days_this_month') final  int? expectedWorkingDaysThisMonth;
 final  List<ClassTeacherAttendanceRow> _data;
@override@JsonKey() List<ClassTeacherAttendanceRow> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ClassTeacherAttendanceMonitoring
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherAttendanceMonitoringCopyWith<_ClassTeacherAttendanceMonitoring> get copyWith => __$ClassTeacherAttendanceMonitoringCopyWithImpl<_ClassTeacherAttendanceMonitoring>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherAttendanceMonitoringToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherAttendanceMonitoring&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.expectedWorkingDaysThisMonth, expectedWorkingDaysThisMonth) || other.expectedWorkingDaysThisMonth == expectedWorkingDaysThisMonth)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sessionId,expectedWorkingDaysThisMonth,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'ClassTeacherAttendanceMonitoring(sessionId: $sessionId, expectedWorkingDaysThisMonth: $expectedWorkingDaysThisMonth, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherAttendanceMonitoringCopyWith<$Res> implements $ClassTeacherAttendanceMonitoringCopyWith<$Res> {
  factory _$ClassTeacherAttendanceMonitoringCopyWith(_ClassTeacherAttendanceMonitoring value, $Res Function(_ClassTeacherAttendanceMonitoring) _then) = __$ClassTeacherAttendanceMonitoringCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'expected_working_days_this_month') int? expectedWorkingDaysThisMonth, List<ClassTeacherAttendanceRow> data
});




}
/// @nodoc
class __$ClassTeacherAttendanceMonitoringCopyWithImpl<$Res>
    implements _$ClassTeacherAttendanceMonitoringCopyWith<$Res> {
  __$ClassTeacherAttendanceMonitoringCopyWithImpl(this._self, this._then);

  final _ClassTeacherAttendanceMonitoring _self;
  final $Res Function(_ClassTeacherAttendanceMonitoring) _then;

/// Create a copy of ClassTeacherAttendanceMonitoring
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = freezed,Object? expectedWorkingDaysThisMonth = freezed,Object? data = null,}) {
  return _then(_ClassTeacherAttendanceMonitoring(
sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,expectedWorkingDaysThisMonth: freezed == expectedWorkingDaysThisMonth ? _self.expectedWorkingDaysThisMonth : expectedWorkingDaysThisMonth // ignore: cast_nullable_to_non_nullable
as int?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ClassTeacherAttendanceRow>,
  ));
}


}


/// @nodoc
mixin _$ClassTeacherAttendanceRow {

@JsonKey(name: 'assignment_id') String get assignmentId;@JsonKey(name: 'class_name') String? get className;@JsonKey(name: 'section_name') String? get sectionName;@JsonKey(name: 'total_students') int get totalStudents;@JsonKey(name: 'marked_today') int get markedToday;@JsonKey(name: 'is_fully_marked_today') bool get isFullyMarkedToday;@JsonKey(name: 'last_marked_date') DateTime? get lastMarkedDate;@JsonKey(name: 'monthly_completion_pct')@LooseNumConverter() num? get monthlyCompletionPct;
/// Create a copy of ClassTeacherAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherAttendanceRowCopyWith<ClassTeacherAttendanceRow> get copyWith => _$ClassTeacherAttendanceRowCopyWithImpl<ClassTeacherAttendanceRow>(this as ClassTeacherAttendanceRow, _$identity);

  /// Serializes this ClassTeacherAttendanceRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherAttendanceRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherAttendanceRow&&(identical(other.assignmentId, _this.assignmentId) || other.assignmentId == _this.assignmentId)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.sectionName, _this.sectionName) || other.sectionName == _this.sectionName)&&(identical(other.totalStudents, _this.totalStudents) || other.totalStudents == _this.totalStudents)&&(identical(other.markedToday, _this.markedToday) || other.markedToday == _this.markedToday)&&(identical(other.isFullyMarkedToday, _this.isFullyMarkedToday) || other.isFullyMarkedToday == _this.isFullyMarkedToday)&&(identical(other.lastMarkedDate, _this.lastMarkedDate) || other.lastMarkedDate == _this.lastMarkedDate)&&(identical(other.monthlyCompletionPct, _this.monthlyCompletionPct) || other.monthlyCompletionPct == _this.monthlyCompletionPct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherAttendanceRow;
  return Object.hash(runtimeType,_this.assignmentId,_this.className,_this.sectionName,_this.totalStudents,_this.markedToday,_this.isFullyMarkedToday,_this.lastMarkedDate,_this.monthlyCompletionPct);
}

@override
String toString() {
  final _this = this as ClassTeacherAttendanceRow;
  return 'ClassTeacherAttendanceRow(assignmentId: ${_this.assignmentId}, className: ${_this.className}, sectionName: ${_this.sectionName}, totalStudents: ${_this.totalStudents}, markedToday: ${_this.markedToday}, isFullyMarkedToday: ${_this.isFullyMarkedToday}, lastMarkedDate: ${_this.lastMarkedDate}, monthlyCompletionPct: ${_this.monthlyCompletionPct})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherAttendanceRowCopyWith<$Res>  {
  factory $ClassTeacherAttendanceRowCopyWith(ClassTeacherAttendanceRow value, $Res Function(ClassTeacherAttendanceRow) _then) = _$ClassTeacherAttendanceRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'assignment_id') String assignmentId,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName,@JsonKey(name: 'total_students') int totalStudents,@JsonKey(name: 'marked_today') int markedToday,@JsonKey(name: 'is_fully_marked_today') bool isFullyMarkedToday,@JsonKey(name: 'last_marked_date') DateTime? lastMarkedDate,@JsonKey(name: 'monthly_completion_pct')@LooseNumConverter() num? monthlyCompletionPct
});




}
/// @nodoc
class _$ClassTeacherAttendanceRowCopyWithImpl<$Res>
    implements $ClassTeacherAttendanceRowCopyWith<$Res> {
  _$ClassTeacherAttendanceRowCopyWithImpl(this._self, this._then);

  final ClassTeacherAttendanceRow _self;
  final $Res Function(ClassTeacherAttendanceRow) _then;

/// Create a copy of ClassTeacherAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assignmentId = null,Object? className = freezed,Object? sectionName = freezed,Object? totalStudents = null,Object? markedToday = null,Object? isFullyMarkedToday = null,Object? lastMarkedDate = freezed,Object? monthlyCompletionPct = freezed,}) {
  return _then(ClassTeacherAttendanceRow(
assignmentId: null == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,totalStudents: null == totalStudents ? _self.totalStudents : totalStudents // ignore: cast_nullable_to_non_nullable
as int,markedToday: null == markedToday ? _self.markedToday : markedToday // ignore: cast_nullable_to_non_nullable
as int,isFullyMarkedToday: null == isFullyMarkedToday ? _self.isFullyMarkedToday : isFullyMarkedToday // ignore: cast_nullable_to_non_nullable
as bool,lastMarkedDate: freezed == lastMarkedDate ? _self.lastMarkedDate : lastMarkedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,monthlyCompletionPct: freezed == monthlyCompletionPct ? _self.monthlyCompletionPct : monthlyCompletionPct // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassTeacherAttendanceRow].
extension ClassTeacherAttendanceRowPatterns on ClassTeacherAttendanceRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherAttendanceRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherAttendanceRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherAttendanceRow value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherAttendanceRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherAttendanceRow value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherAttendanceRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'total_students')  int totalStudents, @JsonKey(name: 'marked_today')  int markedToday, @JsonKey(name: 'is_fully_marked_today')  bool isFullyMarkedToday, @JsonKey(name: 'last_marked_date')  DateTime? lastMarkedDate, @JsonKey(name: 'monthly_completion_pct')@LooseNumConverter()  num? monthlyCompletionPct)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassTeacherAttendanceRow() when $default != null:
return $default(_that.assignmentId,_that.className,_that.sectionName,_that.totalStudents,_that.markedToday,_that.isFullyMarkedToday,_that.lastMarkedDate,_that.monthlyCompletionPct);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'total_students')  int totalStudents, @JsonKey(name: 'marked_today')  int markedToday, @JsonKey(name: 'is_fully_marked_today')  bool isFullyMarkedToday, @JsonKey(name: 'last_marked_date')  DateTime? lastMarkedDate, @JsonKey(name: 'monthly_completion_pct')@LooseNumConverter()  num? monthlyCompletionPct)  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherAttendanceRow():
return $default(_that.assignmentId,_that.className,_that.sectionName,_that.totalStudents,_that.markedToday,_that.isFullyMarkedToday,_that.lastMarkedDate,_that.monthlyCompletionPct);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'total_students')  int totalStudents, @JsonKey(name: 'marked_today')  int markedToday, @JsonKey(name: 'is_fully_marked_today')  bool isFullyMarkedToday, @JsonKey(name: 'last_marked_date')  DateTime? lastMarkedDate, @JsonKey(name: 'monthly_completion_pct')@LooseNumConverter()  num? monthlyCompletionPct)?  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherAttendanceRow() when $default != null:
return $default(_that.assignmentId,_that.className,_that.sectionName,_that.totalStudents,_that.markedToday,_that.isFullyMarkedToday,_that.lastMarkedDate,_that.monthlyCompletionPct);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherAttendanceRow implements ClassTeacherAttendanceRow {
  const _ClassTeacherAttendanceRow({@JsonKey(name: 'assignment_id') required this.assignmentId, @JsonKey(name: 'class_name') this.className, @JsonKey(name: 'section_name') this.sectionName, @JsonKey(name: 'total_students') this.totalStudents = 0, @JsonKey(name: 'marked_today') this.markedToday = 0, @JsonKey(name: 'is_fully_marked_today') this.isFullyMarkedToday = false, @JsonKey(name: 'last_marked_date') this.lastMarkedDate, @JsonKey(name: 'monthly_completion_pct')@LooseNumConverter() this.monthlyCompletionPct});
  factory _ClassTeacherAttendanceRow.fromJson(Map<String, dynamic> json) => _$ClassTeacherAttendanceRowFromJson(json);

@override@JsonKey(name: 'assignment_id') final  String assignmentId;
@override@JsonKey(name: 'class_name') final  String? className;
@override@JsonKey(name: 'section_name') final  String? sectionName;
@override@JsonKey(name: 'total_students') final  int totalStudents;
@override@JsonKey(name: 'marked_today') final  int markedToday;
@override@JsonKey(name: 'is_fully_marked_today') final  bool isFullyMarkedToday;
@override@JsonKey(name: 'last_marked_date') final  DateTime? lastMarkedDate;
@override@JsonKey(name: 'monthly_completion_pct')@LooseNumConverter() final  num? monthlyCompletionPct;

/// Create a copy of ClassTeacherAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherAttendanceRowCopyWith<_ClassTeacherAttendanceRow> get copyWith => __$ClassTeacherAttendanceRowCopyWithImpl<_ClassTeacherAttendanceRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherAttendanceRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherAttendanceRow&&(identical(other.assignmentId, assignmentId) || other.assignmentId == assignmentId)&&(identical(other.className, className) || other.className == className)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName)&&(identical(other.totalStudents, totalStudents) || other.totalStudents == totalStudents)&&(identical(other.markedToday, markedToday) || other.markedToday == markedToday)&&(identical(other.isFullyMarkedToday, isFullyMarkedToday) || other.isFullyMarkedToday == isFullyMarkedToday)&&(identical(other.lastMarkedDate, lastMarkedDate) || other.lastMarkedDate == lastMarkedDate)&&(identical(other.monthlyCompletionPct, monthlyCompletionPct) || other.monthlyCompletionPct == monthlyCompletionPct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,assignmentId,className,sectionName,totalStudents,markedToday,isFullyMarkedToday,lastMarkedDate,monthlyCompletionPct);
}

@override
String toString() {
    return 'ClassTeacherAttendanceRow(assignmentId: $assignmentId, className: $className, sectionName: $sectionName, totalStudents: $totalStudents, markedToday: $markedToday, isFullyMarkedToday: $isFullyMarkedToday, lastMarkedDate: $lastMarkedDate, monthlyCompletionPct: $monthlyCompletionPct)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherAttendanceRowCopyWith<$Res> implements $ClassTeacherAttendanceRowCopyWith<$Res> {
  factory _$ClassTeacherAttendanceRowCopyWith(_ClassTeacherAttendanceRow value, $Res Function(_ClassTeacherAttendanceRow) _then) = __$ClassTeacherAttendanceRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'assignment_id') String assignmentId,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName,@JsonKey(name: 'total_students') int totalStudents,@JsonKey(name: 'marked_today') int markedToday,@JsonKey(name: 'is_fully_marked_today') bool isFullyMarkedToday,@JsonKey(name: 'last_marked_date') DateTime? lastMarkedDate,@JsonKey(name: 'monthly_completion_pct')@LooseNumConverter() num? monthlyCompletionPct
});




}
/// @nodoc
class __$ClassTeacherAttendanceRowCopyWithImpl<$Res>
    implements _$ClassTeacherAttendanceRowCopyWith<$Res> {
  __$ClassTeacherAttendanceRowCopyWithImpl(this._self, this._then);

  final _ClassTeacherAttendanceRow _self;
  final $Res Function(_ClassTeacherAttendanceRow) _then;

/// Create a copy of ClassTeacherAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assignmentId = null,Object? className = freezed,Object? sectionName = freezed,Object? totalStudents = null,Object? markedToday = null,Object? isFullyMarkedToday = null,Object? lastMarkedDate = freezed,Object? monthlyCompletionPct = freezed,}) {
  return _then(_ClassTeacherAttendanceRow(
assignmentId: null == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,totalStudents: null == totalStudents ? _self.totalStudents : totalStudents // ignore: cast_nullable_to_non_nullable
as int,markedToday: null == markedToday ? _self.markedToday : markedToday // ignore: cast_nullable_to_non_nullable
as int,isFullyMarkedToday: null == isFullyMarkedToday ? _self.isFullyMarkedToday : isFullyMarkedToday // ignore: cast_nullable_to_non_nullable
as bool,lastMarkedDate: freezed == lastMarkedDate ? _self.lastMarkedDate : lastMarkedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,monthlyCompletionPct: freezed == monthlyCompletionPct ? _self.monthlyCompletionPct : monthlyCompletionPct // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}


/// @nodoc
mixin _$ClassTeacherHomeworkMonitoring {

@JsonKey(name: 'session_id') String? get sessionId; List<ClassTeacherHomeworkRow> get data;
/// Create a copy of ClassTeacherHomeworkMonitoring
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherHomeworkMonitoringCopyWith<ClassTeacherHomeworkMonitoring> get copyWith => _$ClassTeacherHomeworkMonitoringCopyWithImpl<ClassTeacherHomeworkMonitoring>(this as ClassTeacherHomeworkMonitoring, _$identity);

  /// Serializes this ClassTeacherHomeworkMonitoring to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherHomeworkMonitoring;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherHomeworkMonitoring&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherHomeworkMonitoring;
  return Object.hash(runtimeType,_this.sessionId,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as ClassTeacherHomeworkMonitoring;
  return 'ClassTeacherHomeworkMonitoring(sessionId: ${_this.sessionId}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherHomeworkMonitoringCopyWith<$Res>  {
  factory $ClassTeacherHomeworkMonitoringCopyWith(ClassTeacherHomeworkMonitoring value, $Res Function(ClassTeacherHomeworkMonitoring) _then) = _$ClassTeacherHomeworkMonitoringCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'session_id') String? sessionId, List<ClassTeacherHomeworkRow> data
});




}
/// @nodoc
class _$ClassTeacherHomeworkMonitoringCopyWithImpl<$Res>
    implements $ClassTeacherHomeworkMonitoringCopyWith<$Res> {
  _$ClassTeacherHomeworkMonitoringCopyWithImpl(this._self, this._then);

  final ClassTeacherHomeworkMonitoring _self;
  final $Res Function(ClassTeacherHomeworkMonitoring) _then;

/// Create a copy of ClassTeacherHomeworkMonitoring
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = freezed,Object? data = null,}) {
  return _then(ClassTeacherHomeworkMonitoring(
sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ClassTeacherHomeworkRow>,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassTeacherHomeworkMonitoring].
extension ClassTeacherHomeworkMonitoringPatterns on ClassTeacherHomeworkMonitoring {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherHomeworkMonitoring value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherHomeworkMonitoring() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherHomeworkMonitoring value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherHomeworkMonitoring():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherHomeworkMonitoring value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherHomeworkMonitoring() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String? sessionId,  List<ClassTeacherHomeworkRow> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassTeacherHomeworkMonitoring() when $default != null:
return $default(_that.sessionId,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String? sessionId,  List<ClassTeacherHomeworkRow> data)  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherHomeworkMonitoring():
return $default(_that.sessionId,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'session_id')  String? sessionId,  List<ClassTeacherHomeworkRow> data)?  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherHomeworkMonitoring() when $default != null:
return $default(_that.sessionId,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherHomeworkMonitoring implements ClassTeacherHomeworkMonitoring {
  const _ClassTeacherHomeworkMonitoring({@JsonKey(name: 'session_id') this.sessionId,  List<ClassTeacherHomeworkRow> data = const <ClassTeacherHomeworkRow>[]}): _data = data;
  factory _ClassTeacherHomeworkMonitoring.fromJson(Map<String, dynamic> json) => _$ClassTeacherHomeworkMonitoringFromJson(json);

@override@JsonKey(name: 'session_id') final  String? sessionId;
 final  List<ClassTeacherHomeworkRow> _data;
@override@JsonKey() List<ClassTeacherHomeworkRow> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ClassTeacherHomeworkMonitoring
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherHomeworkMonitoringCopyWith<_ClassTeacherHomeworkMonitoring> get copyWith => __$ClassTeacherHomeworkMonitoringCopyWithImpl<_ClassTeacherHomeworkMonitoring>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherHomeworkMonitoringToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherHomeworkMonitoring&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sessionId,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'ClassTeacherHomeworkMonitoring(sessionId: $sessionId, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherHomeworkMonitoringCopyWith<$Res> implements $ClassTeacherHomeworkMonitoringCopyWith<$Res> {
  factory _$ClassTeacherHomeworkMonitoringCopyWith(_ClassTeacherHomeworkMonitoring value, $Res Function(_ClassTeacherHomeworkMonitoring) _then) = __$ClassTeacherHomeworkMonitoringCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'session_id') String? sessionId, List<ClassTeacherHomeworkRow> data
});




}
/// @nodoc
class __$ClassTeacherHomeworkMonitoringCopyWithImpl<$Res>
    implements _$ClassTeacherHomeworkMonitoringCopyWith<$Res> {
  __$ClassTeacherHomeworkMonitoringCopyWithImpl(this._self, this._then);

  final _ClassTeacherHomeworkMonitoring _self;
  final $Res Function(_ClassTeacherHomeworkMonitoring) _then;

/// Create a copy of ClassTeacherHomeworkMonitoring
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = freezed,Object? data = null,}) {
  return _then(_ClassTeacherHomeworkMonitoring(
sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ClassTeacherHomeworkRow>,
  ));
}


}


/// @nodoc
mixin _$ClassTeacherHomeworkRow {

@JsonKey(name: 'assignment_id') String get assignmentId;@JsonKey(name: 'class_name') String? get className;@JsonKey(name: 'section_name') String? get sectionName;@JsonKey(name: 'homework_given_today') int get homeworkGivenToday;@JsonKey(name: 'pending_homework') int get pendingHomework;@JsonKey(name: 'last_homework_date') DateTime? get lastHomeworkDate;@JsonKey(name: 'submission_completion_pct')@LooseNumConverter() num? get submissionCompletionPct;
/// Create a copy of ClassTeacherHomeworkRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherHomeworkRowCopyWith<ClassTeacherHomeworkRow> get copyWith => _$ClassTeacherHomeworkRowCopyWithImpl<ClassTeacherHomeworkRow>(this as ClassTeacherHomeworkRow, _$identity);

  /// Serializes this ClassTeacherHomeworkRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherHomeworkRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherHomeworkRow&&(identical(other.assignmentId, _this.assignmentId) || other.assignmentId == _this.assignmentId)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.sectionName, _this.sectionName) || other.sectionName == _this.sectionName)&&(identical(other.homeworkGivenToday, _this.homeworkGivenToday) || other.homeworkGivenToday == _this.homeworkGivenToday)&&(identical(other.pendingHomework, _this.pendingHomework) || other.pendingHomework == _this.pendingHomework)&&(identical(other.lastHomeworkDate, _this.lastHomeworkDate) || other.lastHomeworkDate == _this.lastHomeworkDate)&&(identical(other.submissionCompletionPct, _this.submissionCompletionPct) || other.submissionCompletionPct == _this.submissionCompletionPct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherHomeworkRow;
  return Object.hash(runtimeType,_this.assignmentId,_this.className,_this.sectionName,_this.homeworkGivenToday,_this.pendingHomework,_this.lastHomeworkDate,_this.submissionCompletionPct);
}

@override
String toString() {
  final _this = this as ClassTeacherHomeworkRow;
  return 'ClassTeacherHomeworkRow(assignmentId: ${_this.assignmentId}, className: ${_this.className}, sectionName: ${_this.sectionName}, homeworkGivenToday: ${_this.homeworkGivenToday}, pendingHomework: ${_this.pendingHomework}, lastHomeworkDate: ${_this.lastHomeworkDate}, submissionCompletionPct: ${_this.submissionCompletionPct})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherHomeworkRowCopyWith<$Res>  {
  factory $ClassTeacherHomeworkRowCopyWith(ClassTeacherHomeworkRow value, $Res Function(ClassTeacherHomeworkRow) _then) = _$ClassTeacherHomeworkRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'assignment_id') String assignmentId,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName,@JsonKey(name: 'homework_given_today') int homeworkGivenToday,@JsonKey(name: 'pending_homework') int pendingHomework,@JsonKey(name: 'last_homework_date') DateTime? lastHomeworkDate,@JsonKey(name: 'submission_completion_pct')@LooseNumConverter() num? submissionCompletionPct
});




}
/// @nodoc
class _$ClassTeacherHomeworkRowCopyWithImpl<$Res>
    implements $ClassTeacherHomeworkRowCopyWith<$Res> {
  _$ClassTeacherHomeworkRowCopyWithImpl(this._self, this._then);

  final ClassTeacherHomeworkRow _self;
  final $Res Function(ClassTeacherHomeworkRow) _then;

/// Create a copy of ClassTeacherHomeworkRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assignmentId = null,Object? className = freezed,Object? sectionName = freezed,Object? homeworkGivenToday = null,Object? pendingHomework = null,Object? lastHomeworkDate = freezed,Object? submissionCompletionPct = freezed,}) {
  return _then(ClassTeacherHomeworkRow(
assignmentId: null == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,homeworkGivenToday: null == homeworkGivenToday ? _self.homeworkGivenToday : homeworkGivenToday // ignore: cast_nullable_to_non_nullable
as int,pendingHomework: null == pendingHomework ? _self.pendingHomework : pendingHomework // ignore: cast_nullable_to_non_nullable
as int,lastHomeworkDate: freezed == lastHomeworkDate ? _self.lastHomeworkDate : lastHomeworkDate // ignore: cast_nullable_to_non_nullable
as DateTime?,submissionCompletionPct: freezed == submissionCompletionPct ? _self.submissionCompletionPct : submissionCompletionPct // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassTeacherHomeworkRow].
extension ClassTeacherHomeworkRowPatterns on ClassTeacherHomeworkRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherHomeworkRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherHomeworkRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherHomeworkRow value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherHomeworkRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherHomeworkRow value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherHomeworkRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'homework_given_today')  int homeworkGivenToday, @JsonKey(name: 'pending_homework')  int pendingHomework, @JsonKey(name: 'last_homework_date')  DateTime? lastHomeworkDate, @JsonKey(name: 'submission_completion_pct')@LooseNumConverter()  num? submissionCompletionPct)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassTeacherHomeworkRow() when $default != null:
return $default(_that.assignmentId,_that.className,_that.sectionName,_that.homeworkGivenToday,_that.pendingHomework,_that.lastHomeworkDate,_that.submissionCompletionPct);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'homework_given_today')  int homeworkGivenToday, @JsonKey(name: 'pending_homework')  int pendingHomework, @JsonKey(name: 'last_homework_date')  DateTime? lastHomeworkDate, @JsonKey(name: 'submission_completion_pct')@LooseNumConverter()  num? submissionCompletionPct)  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherHomeworkRow():
return $default(_that.assignmentId,_that.className,_that.sectionName,_that.homeworkGivenToday,_that.pendingHomework,_that.lastHomeworkDate,_that.submissionCompletionPct);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'homework_given_today')  int homeworkGivenToday, @JsonKey(name: 'pending_homework')  int pendingHomework, @JsonKey(name: 'last_homework_date')  DateTime? lastHomeworkDate, @JsonKey(name: 'submission_completion_pct')@LooseNumConverter()  num? submissionCompletionPct)?  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherHomeworkRow() when $default != null:
return $default(_that.assignmentId,_that.className,_that.sectionName,_that.homeworkGivenToday,_that.pendingHomework,_that.lastHomeworkDate,_that.submissionCompletionPct);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherHomeworkRow implements ClassTeacherHomeworkRow {
  const _ClassTeacherHomeworkRow({@JsonKey(name: 'assignment_id') required this.assignmentId, @JsonKey(name: 'class_name') this.className, @JsonKey(name: 'section_name') this.sectionName, @JsonKey(name: 'homework_given_today') this.homeworkGivenToday = 0, @JsonKey(name: 'pending_homework') this.pendingHomework = 0, @JsonKey(name: 'last_homework_date') this.lastHomeworkDate, @JsonKey(name: 'submission_completion_pct')@LooseNumConverter() this.submissionCompletionPct});
  factory _ClassTeacherHomeworkRow.fromJson(Map<String, dynamic> json) => _$ClassTeacherHomeworkRowFromJson(json);

@override@JsonKey(name: 'assignment_id') final  String assignmentId;
@override@JsonKey(name: 'class_name') final  String? className;
@override@JsonKey(name: 'section_name') final  String? sectionName;
@override@JsonKey(name: 'homework_given_today') final  int homeworkGivenToday;
@override@JsonKey(name: 'pending_homework') final  int pendingHomework;
@override@JsonKey(name: 'last_homework_date') final  DateTime? lastHomeworkDate;
@override@JsonKey(name: 'submission_completion_pct')@LooseNumConverter() final  num? submissionCompletionPct;

/// Create a copy of ClassTeacherHomeworkRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherHomeworkRowCopyWith<_ClassTeacherHomeworkRow> get copyWith => __$ClassTeacherHomeworkRowCopyWithImpl<_ClassTeacherHomeworkRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherHomeworkRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherHomeworkRow&&(identical(other.assignmentId, assignmentId) || other.assignmentId == assignmentId)&&(identical(other.className, className) || other.className == className)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName)&&(identical(other.homeworkGivenToday, homeworkGivenToday) || other.homeworkGivenToday == homeworkGivenToday)&&(identical(other.pendingHomework, pendingHomework) || other.pendingHomework == pendingHomework)&&(identical(other.lastHomeworkDate, lastHomeworkDate) || other.lastHomeworkDate == lastHomeworkDate)&&(identical(other.submissionCompletionPct, submissionCompletionPct) || other.submissionCompletionPct == submissionCompletionPct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,assignmentId,className,sectionName,homeworkGivenToday,pendingHomework,lastHomeworkDate,submissionCompletionPct);
}

@override
String toString() {
    return 'ClassTeacherHomeworkRow(assignmentId: $assignmentId, className: $className, sectionName: $sectionName, homeworkGivenToday: $homeworkGivenToday, pendingHomework: $pendingHomework, lastHomeworkDate: $lastHomeworkDate, submissionCompletionPct: $submissionCompletionPct)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherHomeworkRowCopyWith<$Res> implements $ClassTeacherHomeworkRowCopyWith<$Res> {
  factory _$ClassTeacherHomeworkRowCopyWith(_ClassTeacherHomeworkRow value, $Res Function(_ClassTeacherHomeworkRow) _then) = __$ClassTeacherHomeworkRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'assignment_id') String assignmentId,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName,@JsonKey(name: 'homework_given_today') int homeworkGivenToday,@JsonKey(name: 'pending_homework') int pendingHomework,@JsonKey(name: 'last_homework_date') DateTime? lastHomeworkDate,@JsonKey(name: 'submission_completion_pct')@LooseNumConverter() num? submissionCompletionPct
});




}
/// @nodoc
class __$ClassTeacherHomeworkRowCopyWithImpl<$Res>
    implements _$ClassTeacherHomeworkRowCopyWith<$Res> {
  __$ClassTeacherHomeworkRowCopyWithImpl(this._self, this._then);

  final _ClassTeacherHomeworkRow _self;
  final $Res Function(_ClassTeacherHomeworkRow) _then;

/// Create a copy of ClassTeacherHomeworkRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assignmentId = null,Object? className = freezed,Object? sectionName = freezed,Object? homeworkGivenToday = null,Object? pendingHomework = null,Object? lastHomeworkDate = freezed,Object? submissionCompletionPct = freezed,}) {
  return _then(_ClassTeacherHomeworkRow(
assignmentId: null == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,homeworkGivenToday: null == homeworkGivenToday ? _self.homeworkGivenToday : homeworkGivenToday // ignore: cast_nullable_to_non_nullable
as int,pendingHomework: null == pendingHomework ? _self.pendingHomework : pendingHomework // ignore: cast_nullable_to_non_nullable
as int,lastHomeworkDate: freezed == lastHomeworkDate ? _self.lastHomeworkDate : lastHomeworkDate // ignore: cast_nullable_to_non_nullable
as DateTime?,submissionCompletionPct: freezed == submissionCompletionPct ? _self.submissionCompletionPct : submissionCompletionPct // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}


/// @nodoc
mixin _$ClassTeacherPerformanceMonitoring {

@JsonKey(name: 'session_id') String? get sessionId; ManagementExamOption? get exam; List<ClassTeacherPerformanceRow> get data;
/// Create a copy of ClassTeacherPerformanceMonitoring
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherPerformanceMonitoringCopyWith<ClassTeacherPerformanceMonitoring> get copyWith => _$ClassTeacherPerformanceMonitoringCopyWithImpl<ClassTeacherPerformanceMonitoring>(this as ClassTeacherPerformanceMonitoring, _$identity);

  /// Serializes this ClassTeacherPerformanceMonitoring to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherPerformanceMonitoring;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherPerformanceMonitoring&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.exam, _this.exam) || other.exam == _this.exam)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherPerformanceMonitoring;
  return Object.hash(runtimeType,_this.sessionId,_this.exam,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as ClassTeacherPerformanceMonitoring;
  return 'ClassTeacherPerformanceMonitoring(sessionId: ${_this.sessionId}, exam: ${_this.exam}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherPerformanceMonitoringCopyWith<$Res>  {
  factory $ClassTeacherPerformanceMonitoringCopyWith(ClassTeacherPerformanceMonitoring value, $Res Function(ClassTeacherPerformanceMonitoring) _then) = _$ClassTeacherPerformanceMonitoringCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'session_id') String? sessionId, ManagementExamOption? exam, List<ClassTeacherPerformanceRow> data
});


$ManagementExamOptionCopyWith<$Res>? get exam;

}
/// @nodoc
class _$ClassTeacherPerformanceMonitoringCopyWithImpl<$Res>
    implements $ClassTeacherPerformanceMonitoringCopyWith<$Res> {
  _$ClassTeacherPerformanceMonitoringCopyWithImpl(this._self, this._then);

  final ClassTeacherPerformanceMonitoring _self;
  final $Res Function(ClassTeacherPerformanceMonitoring) _then;

/// Create a copy of ClassTeacherPerformanceMonitoring
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = freezed,Object? exam = freezed,Object? data = null,}) {
  return _then(ClassTeacherPerformanceMonitoring(
sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,exam: freezed == exam ? _self.exam : exam // ignore: cast_nullable_to_non_nullable
as ManagementExamOption?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ClassTeacherPerformanceRow>,
  ));
}
/// Create a copy of ClassTeacherPerformanceMonitoring
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ManagementExamOptionCopyWith<$Res>? get exam {
    if (_self.exam == null) {
    return null;
  }

  return $ManagementExamOptionCopyWith<$Res>(_self.exam!, (value) {
    return _then(_self.copyWith(exam: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClassTeacherPerformanceMonitoring].
extension ClassTeacherPerformanceMonitoringPatterns on ClassTeacherPerformanceMonitoring {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherPerformanceMonitoring value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherPerformanceMonitoring() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherPerformanceMonitoring value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherPerformanceMonitoring():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherPerformanceMonitoring value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherPerformanceMonitoring() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String? sessionId,  ManagementExamOption? exam,  List<ClassTeacherPerformanceRow> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassTeacherPerformanceMonitoring() when $default != null:
return $default(_that.sessionId,_that.exam,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String? sessionId,  ManagementExamOption? exam,  List<ClassTeacherPerformanceRow> data)  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherPerformanceMonitoring():
return $default(_that.sessionId,_that.exam,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'session_id')  String? sessionId,  ManagementExamOption? exam,  List<ClassTeacherPerformanceRow> data)?  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherPerformanceMonitoring() when $default != null:
return $default(_that.sessionId,_that.exam,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherPerformanceMonitoring implements ClassTeacherPerformanceMonitoring {
  const _ClassTeacherPerformanceMonitoring({@JsonKey(name: 'session_id') this.sessionId, this.exam,  List<ClassTeacherPerformanceRow> data = const <ClassTeacherPerformanceRow>[]}): _data = data;
  factory _ClassTeacherPerformanceMonitoring.fromJson(Map<String, dynamic> json) => _$ClassTeacherPerformanceMonitoringFromJson(json);

@override@JsonKey(name: 'session_id') final  String? sessionId;
@override final  ManagementExamOption? exam;
 final  List<ClassTeacherPerformanceRow> _data;
@override@JsonKey() List<ClassTeacherPerformanceRow> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ClassTeacherPerformanceMonitoring
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherPerformanceMonitoringCopyWith<_ClassTeacherPerformanceMonitoring> get copyWith => __$ClassTeacherPerformanceMonitoringCopyWithImpl<_ClassTeacherPerformanceMonitoring>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherPerformanceMonitoringToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherPerformanceMonitoring&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.exam, exam) || other.exam == exam)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sessionId,exam,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'ClassTeacherPerformanceMonitoring(sessionId: $sessionId, exam: $exam, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherPerformanceMonitoringCopyWith<$Res> implements $ClassTeacherPerformanceMonitoringCopyWith<$Res> {
  factory _$ClassTeacherPerformanceMonitoringCopyWith(_ClassTeacherPerformanceMonitoring value, $Res Function(_ClassTeacherPerformanceMonitoring) _then) = __$ClassTeacherPerformanceMonitoringCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'session_id') String? sessionId, ManagementExamOption? exam, List<ClassTeacherPerformanceRow> data
});


@override $ManagementExamOptionCopyWith<$Res>? get exam;

}
/// @nodoc
class __$ClassTeacherPerformanceMonitoringCopyWithImpl<$Res>
    implements _$ClassTeacherPerformanceMonitoringCopyWith<$Res> {
  __$ClassTeacherPerformanceMonitoringCopyWithImpl(this._self, this._then);

  final _ClassTeacherPerformanceMonitoring _self;
  final $Res Function(_ClassTeacherPerformanceMonitoring) _then;

/// Create a copy of ClassTeacherPerformanceMonitoring
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = freezed,Object? exam = freezed,Object? data = null,}) {
  return _then(_ClassTeacherPerformanceMonitoring(
sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,exam: freezed == exam ? _self.exam : exam // ignore: cast_nullable_to_non_nullable
as ManagementExamOption?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ClassTeacherPerformanceRow>,
  ));
}

/// Create a copy of ClassTeacherPerformanceMonitoring
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ManagementExamOptionCopyWith<$Res>? get exam {
    if (_self.exam == null) {
    return null;
  }

  return $ManagementExamOptionCopyWith<$Res>(_self.exam!, (value) {
    return _then(_self.copyWith(exam: value));
  });
}
}


/// @nodoc
mixin _$ClassTeacherPerformanceRow {

@JsonKey(name: 'assignment_id') String get assignmentId;@JsonKey(name: 'class_name') String? get className;@JsonKey(name: 'section_name') String? get sectionName;@JsonKey(name: 'class_average_percentage')@LooseNumConverter() num? get classAveragePercentage;@JsonKey(name: 'pass_percentage')@LooseNumConverter() num? get passPercentage;
/// Create a copy of ClassTeacherPerformanceRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherPerformanceRowCopyWith<ClassTeacherPerformanceRow> get copyWith => _$ClassTeacherPerformanceRowCopyWithImpl<ClassTeacherPerformanceRow>(this as ClassTeacherPerformanceRow, _$identity);

  /// Serializes this ClassTeacherPerformanceRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherPerformanceRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherPerformanceRow&&(identical(other.assignmentId, _this.assignmentId) || other.assignmentId == _this.assignmentId)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.sectionName, _this.sectionName) || other.sectionName == _this.sectionName)&&(identical(other.classAveragePercentage, _this.classAveragePercentage) || other.classAveragePercentage == _this.classAveragePercentage)&&(identical(other.passPercentage, _this.passPercentage) || other.passPercentage == _this.passPercentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherPerformanceRow;
  return Object.hash(runtimeType,_this.assignmentId,_this.className,_this.sectionName,_this.classAveragePercentage,_this.passPercentage);
}

@override
String toString() {
  final _this = this as ClassTeacherPerformanceRow;
  return 'ClassTeacherPerformanceRow(assignmentId: ${_this.assignmentId}, className: ${_this.className}, sectionName: ${_this.sectionName}, classAveragePercentage: ${_this.classAveragePercentage}, passPercentage: ${_this.passPercentage})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherPerformanceRowCopyWith<$Res>  {
  factory $ClassTeacherPerformanceRowCopyWith(ClassTeacherPerformanceRow value, $Res Function(ClassTeacherPerformanceRow) _then) = _$ClassTeacherPerformanceRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'assignment_id') String assignmentId,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName,@JsonKey(name: 'class_average_percentage')@LooseNumConverter() num? classAveragePercentage,@JsonKey(name: 'pass_percentage')@LooseNumConverter() num? passPercentage
});




}
/// @nodoc
class _$ClassTeacherPerformanceRowCopyWithImpl<$Res>
    implements $ClassTeacherPerformanceRowCopyWith<$Res> {
  _$ClassTeacherPerformanceRowCopyWithImpl(this._self, this._then);

  final ClassTeacherPerformanceRow _self;
  final $Res Function(ClassTeacherPerformanceRow) _then;

/// Create a copy of ClassTeacherPerformanceRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assignmentId = null,Object? className = freezed,Object? sectionName = freezed,Object? classAveragePercentage = freezed,Object? passPercentage = freezed,}) {
  return _then(ClassTeacherPerformanceRow(
assignmentId: null == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,classAveragePercentage: freezed == classAveragePercentage ? _self.classAveragePercentage : classAveragePercentage // ignore: cast_nullable_to_non_nullable
as num?,passPercentage: freezed == passPercentage ? _self.passPercentage : passPercentage // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassTeacherPerformanceRow].
extension ClassTeacherPerformanceRowPatterns on ClassTeacherPerformanceRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherPerformanceRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherPerformanceRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherPerformanceRow value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherPerformanceRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherPerformanceRow value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherPerformanceRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'class_average_percentage')@LooseNumConverter()  num? classAveragePercentage, @JsonKey(name: 'pass_percentage')@LooseNumConverter()  num? passPercentage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassTeacherPerformanceRow() when $default != null:
return $default(_that.assignmentId,_that.className,_that.sectionName,_that.classAveragePercentage,_that.passPercentage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'class_average_percentage')@LooseNumConverter()  num? classAveragePercentage, @JsonKey(name: 'pass_percentage')@LooseNumConverter()  num? passPercentage)  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherPerformanceRow():
return $default(_that.assignmentId,_that.className,_that.sectionName,_that.classAveragePercentage,_that.passPercentage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'class_average_percentage')@LooseNumConverter()  num? classAveragePercentage, @JsonKey(name: 'pass_percentage')@LooseNumConverter()  num? passPercentage)?  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherPerformanceRow() when $default != null:
return $default(_that.assignmentId,_that.className,_that.sectionName,_that.classAveragePercentage,_that.passPercentage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherPerformanceRow implements ClassTeacherPerformanceRow {
  const _ClassTeacherPerformanceRow({@JsonKey(name: 'assignment_id') required this.assignmentId, @JsonKey(name: 'class_name') this.className, @JsonKey(name: 'section_name') this.sectionName, @JsonKey(name: 'class_average_percentage')@LooseNumConverter() this.classAveragePercentage, @JsonKey(name: 'pass_percentage')@LooseNumConverter() this.passPercentage});
  factory _ClassTeacherPerformanceRow.fromJson(Map<String, dynamic> json) => _$ClassTeacherPerformanceRowFromJson(json);

@override@JsonKey(name: 'assignment_id') final  String assignmentId;
@override@JsonKey(name: 'class_name') final  String? className;
@override@JsonKey(name: 'section_name') final  String? sectionName;
@override@JsonKey(name: 'class_average_percentage')@LooseNumConverter() final  num? classAveragePercentage;
@override@JsonKey(name: 'pass_percentage')@LooseNumConverter() final  num? passPercentage;

/// Create a copy of ClassTeacherPerformanceRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherPerformanceRowCopyWith<_ClassTeacherPerformanceRow> get copyWith => __$ClassTeacherPerformanceRowCopyWithImpl<_ClassTeacherPerformanceRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherPerformanceRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherPerformanceRow&&(identical(other.assignmentId, assignmentId) || other.assignmentId == assignmentId)&&(identical(other.className, className) || other.className == className)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName)&&(identical(other.classAveragePercentage, classAveragePercentage) || other.classAveragePercentage == classAveragePercentage)&&(identical(other.passPercentage, passPercentage) || other.passPercentage == passPercentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,assignmentId,className,sectionName,classAveragePercentage,passPercentage);
}

@override
String toString() {
    return 'ClassTeacherPerformanceRow(assignmentId: $assignmentId, className: $className, sectionName: $sectionName, classAveragePercentage: $classAveragePercentage, passPercentage: $passPercentage)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherPerformanceRowCopyWith<$Res> implements $ClassTeacherPerformanceRowCopyWith<$Res> {
  factory _$ClassTeacherPerformanceRowCopyWith(_ClassTeacherPerformanceRow value, $Res Function(_ClassTeacherPerformanceRow) _then) = __$ClassTeacherPerformanceRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'assignment_id') String assignmentId,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName,@JsonKey(name: 'class_average_percentage')@LooseNumConverter() num? classAveragePercentage,@JsonKey(name: 'pass_percentage')@LooseNumConverter() num? passPercentage
});




}
/// @nodoc
class __$ClassTeacherPerformanceRowCopyWithImpl<$Res>
    implements _$ClassTeacherPerformanceRowCopyWith<$Res> {
  __$ClassTeacherPerformanceRowCopyWithImpl(this._self, this._then);

  final _ClassTeacherPerformanceRow _self;
  final $Res Function(_ClassTeacherPerformanceRow) _then;

/// Create a copy of ClassTeacherPerformanceRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assignmentId = null,Object? className = freezed,Object? sectionName = freezed,Object? classAveragePercentage = freezed,Object? passPercentage = freezed,}) {
  return _then(_ClassTeacherPerformanceRow(
assignmentId: null == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,classAveragePercentage: freezed == classAveragePercentage ? _self.classAveragePercentage : classAveragePercentage // ignore: cast_nullable_to_non_nullable
as num?,passPercentage: freezed == passPercentage ? _self.passPercentage : passPercentage // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}


/// @nodoc
mixin _$ManagementExamOption {

@JsonKey(name: 'exam_id') String get examId;@JsonKey(name: 'exam_name') String get examName;
/// Create a copy of ManagementExamOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ManagementExamOptionCopyWith<ManagementExamOption> get copyWith => _$ManagementExamOptionCopyWithImpl<ManagementExamOption>(this as ManagementExamOption, _$identity);

  /// Serializes this ManagementExamOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ManagementExamOption;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ManagementExamOption&&(identical(other.examId, _this.examId) || other.examId == _this.examId)&&(identical(other.examName, _this.examName) || other.examName == _this.examName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ManagementExamOption;
  return Object.hash(runtimeType,_this.examId,_this.examName);
}

@override
String toString() {
  final _this = this as ManagementExamOption;
  return 'ManagementExamOption(examId: ${_this.examId}, examName: ${_this.examName})';
}


}

/// @nodoc
abstract mixin class $ManagementExamOptionCopyWith<$Res>  {
  factory $ManagementExamOptionCopyWith(ManagementExamOption value, $Res Function(ManagementExamOption) _then) = _$ManagementExamOptionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'exam_id') String examId,@JsonKey(name: 'exam_name') String examName
});




}
/// @nodoc
class _$ManagementExamOptionCopyWithImpl<$Res>
    implements $ManagementExamOptionCopyWith<$Res> {
  _$ManagementExamOptionCopyWithImpl(this._self, this._then);

  final ManagementExamOption _self;
  final $Res Function(ManagementExamOption) _then;

/// Create a copy of ManagementExamOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? examId = null,Object? examName = null,}) {
  return _then(ManagementExamOption(
examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,examName: null == examName ? _self.examName : examName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ManagementExamOption].
extension ManagementExamOptionPatterns on ManagementExamOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ManagementExamOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ManagementExamOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ManagementExamOption value)  $default,){
final _that = this;
switch (_that) {
case _ManagementExamOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ManagementExamOption value)?  $default,){
final _that = this;
switch (_that) {
case _ManagementExamOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_id')  String examId, @JsonKey(name: 'exam_name')  String examName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ManagementExamOption() when $default != null:
return $default(_that.examId,_that.examName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_id')  String examId, @JsonKey(name: 'exam_name')  String examName)  $default,) {final _that = this;
switch (_that) {
case _ManagementExamOption():
return $default(_that.examId,_that.examName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'exam_id')  String examId, @JsonKey(name: 'exam_name')  String examName)?  $default,) {final _that = this;
switch (_that) {
case _ManagementExamOption() when $default != null:
return $default(_that.examId,_that.examName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ManagementExamOption implements ManagementExamOption {
  const _ManagementExamOption({@JsonKey(name: 'exam_id') required this.examId, @JsonKey(name: 'exam_name') required this.examName});
  factory _ManagementExamOption.fromJson(Map<String, dynamic> json) => _$ManagementExamOptionFromJson(json);

@override@JsonKey(name: 'exam_id') final  String examId;
@override@JsonKey(name: 'exam_name') final  String examName;

/// Create a copy of ManagementExamOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ManagementExamOptionCopyWith<_ManagementExamOption> get copyWith => __$ManagementExamOptionCopyWithImpl<_ManagementExamOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ManagementExamOptionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ManagementExamOption&&(identical(other.examId, examId) || other.examId == examId)&&(identical(other.examName, examName) || other.examName == examName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,examId,examName);
}

@override
String toString() {
    return 'ManagementExamOption(examId: $examId, examName: $examName)';
}


}

/// @nodoc
abstract mixin class _$ManagementExamOptionCopyWith<$Res> implements $ManagementExamOptionCopyWith<$Res> {
  factory _$ManagementExamOptionCopyWith(_ManagementExamOption value, $Res Function(_ManagementExamOption) _then) = __$ManagementExamOptionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'exam_id') String examId,@JsonKey(name: 'exam_name') String examName
});




}
/// @nodoc
class __$ManagementExamOptionCopyWithImpl<$Res>
    implements _$ManagementExamOptionCopyWith<$Res> {
  __$ManagementExamOptionCopyWithImpl(this._self, this._then);

  final _ManagementExamOption _self;
  final $Res Function(_ManagementExamOption) _then;

/// Create a copy of ManagementExamOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? examId = null,Object? examName = null,}) {
  return _then(_ManagementExamOption(
examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,examName: null == examName ? _self.examName : examName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ClassTeacherRosterStats {

@JsonKey(name: 'class_id') String? get classId;@JsonKey(name: 'section_id') String? get sectionId;@JsonKey(name: 'session_id') String? get sessionId; int get total; int get boys; int get girls;@JsonKey(name: 'new_admissions') int get newAdmissions;@JsonKey(name: 'pending_documents') int get pendingDocuments;@JsonKey(name: 'students_on_leave_today') int get studentsOnLeaveToday;
/// Create a copy of ClassTeacherRosterStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherRosterStatsCopyWith<ClassTeacherRosterStats> get copyWith => _$ClassTeacherRosterStatsCopyWithImpl<ClassTeacherRosterStats>(this as ClassTeacherRosterStats, _$identity);

  /// Serializes this ClassTeacherRosterStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherRosterStats;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherRosterStats&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.boys, _this.boys) || other.boys == _this.boys)&&(identical(other.girls, _this.girls) || other.girls == _this.girls)&&(identical(other.newAdmissions, _this.newAdmissions) || other.newAdmissions == _this.newAdmissions)&&(identical(other.pendingDocuments, _this.pendingDocuments) || other.pendingDocuments == _this.pendingDocuments)&&(identical(other.studentsOnLeaveToday, _this.studentsOnLeaveToday) || other.studentsOnLeaveToday == _this.studentsOnLeaveToday));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherRosterStats;
  return Object.hash(runtimeType,_this.classId,_this.sectionId,_this.sessionId,_this.total,_this.boys,_this.girls,_this.newAdmissions,_this.pendingDocuments,_this.studentsOnLeaveToday);
}

@override
String toString() {
  final _this = this as ClassTeacherRosterStats;
  return 'ClassTeacherRosterStats(classId: ${_this.classId}, sectionId: ${_this.sectionId}, sessionId: ${_this.sessionId}, total: ${_this.total}, boys: ${_this.boys}, girls: ${_this.girls}, newAdmissions: ${_this.newAdmissions}, pendingDocuments: ${_this.pendingDocuments}, studentsOnLeaveToday: ${_this.studentsOnLeaveToday})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherRosterStatsCopyWith<$Res>  {
  factory $ClassTeacherRosterStatsCopyWith(ClassTeacherRosterStats value, $Res Function(ClassTeacherRosterStats) _then) = _$ClassTeacherRosterStatsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'session_id') String? sessionId, int total, int boys, int girls,@JsonKey(name: 'new_admissions') int newAdmissions,@JsonKey(name: 'pending_documents') int pendingDocuments,@JsonKey(name: 'students_on_leave_today') int studentsOnLeaveToday
});




}
/// @nodoc
class _$ClassTeacherRosterStatsCopyWithImpl<$Res>
    implements $ClassTeacherRosterStatsCopyWith<$Res> {
  _$ClassTeacherRosterStatsCopyWithImpl(this._self, this._then);

  final ClassTeacherRosterStats _self;
  final $Res Function(ClassTeacherRosterStats) _then;

/// Create a copy of ClassTeacherRosterStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classId = freezed,Object? sectionId = freezed,Object? sessionId = freezed,Object? total = null,Object? boys = null,Object? girls = null,Object? newAdmissions = null,Object? pendingDocuments = null,Object? studentsOnLeaveToday = null,}) {
  return _then(ClassTeacherRosterStats(
classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,boys: null == boys ? _self.boys : boys // ignore: cast_nullable_to_non_nullable
as int,girls: null == girls ? _self.girls : girls // ignore: cast_nullable_to_non_nullable
as int,newAdmissions: null == newAdmissions ? _self.newAdmissions : newAdmissions // ignore: cast_nullable_to_non_nullable
as int,pendingDocuments: null == pendingDocuments ? _self.pendingDocuments : pendingDocuments // ignore: cast_nullable_to_non_nullable
as int,studentsOnLeaveToday: null == studentsOnLeaveToday ? _self.studentsOnLeaveToday : studentsOnLeaveToday // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassTeacherRosterStats].
extension ClassTeacherRosterStatsPatterns on ClassTeacherRosterStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherRosterStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherRosterStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherRosterStats value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherRosterStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherRosterStats value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherRosterStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'session_id')  String? sessionId,  int total,  int boys,  int girls, @JsonKey(name: 'new_admissions')  int newAdmissions, @JsonKey(name: 'pending_documents')  int pendingDocuments, @JsonKey(name: 'students_on_leave_today')  int studentsOnLeaveToday)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassTeacherRosterStats() when $default != null:
return $default(_that.classId,_that.sectionId,_that.sessionId,_that.total,_that.boys,_that.girls,_that.newAdmissions,_that.pendingDocuments,_that.studentsOnLeaveToday);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'session_id')  String? sessionId,  int total,  int boys,  int girls, @JsonKey(name: 'new_admissions')  int newAdmissions, @JsonKey(name: 'pending_documents')  int pendingDocuments, @JsonKey(name: 'students_on_leave_today')  int studentsOnLeaveToday)  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherRosterStats():
return $default(_that.classId,_that.sectionId,_that.sessionId,_that.total,_that.boys,_that.girls,_that.newAdmissions,_that.pendingDocuments,_that.studentsOnLeaveToday);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'session_id')  String? sessionId,  int total,  int boys,  int girls, @JsonKey(name: 'new_admissions')  int newAdmissions, @JsonKey(name: 'pending_documents')  int pendingDocuments, @JsonKey(name: 'students_on_leave_today')  int studentsOnLeaveToday)?  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherRosterStats() when $default != null:
return $default(_that.classId,_that.sectionId,_that.sessionId,_that.total,_that.boys,_that.girls,_that.newAdmissions,_that.pendingDocuments,_that.studentsOnLeaveToday);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherRosterStats implements ClassTeacherRosterStats {
  const _ClassTeacherRosterStats({@JsonKey(name: 'class_id') this.classId, @JsonKey(name: 'section_id') this.sectionId, @JsonKey(name: 'session_id') this.sessionId, this.total = 0, this.boys = 0, this.girls = 0, @JsonKey(name: 'new_admissions') this.newAdmissions = 0, @JsonKey(name: 'pending_documents') this.pendingDocuments = 0, @JsonKey(name: 'students_on_leave_today') this.studentsOnLeaveToday = 0});
  factory _ClassTeacherRosterStats.fromJson(Map<String, dynamic> json) => _$ClassTeacherRosterStatsFromJson(json);

@override@JsonKey(name: 'class_id') final  String? classId;
@override@JsonKey(name: 'section_id') final  String? sectionId;
@override@JsonKey(name: 'session_id') final  String? sessionId;
@override@JsonKey() final  int total;
@override@JsonKey() final  int boys;
@override@JsonKey() final  int girls;
@override@JsonKey(name: 'new_admissions') final  int newAdmissions;
@override@JsonKey(name: 'pending_documents') final  int pendingDocuments;
@override@JsonKey(name: 'students_on_leave_today') final  int studentsOnLeaveToday;

/// Create a copy of ClassTeacherRosterStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherRosterStatsCopyWith<_ClassTeacherRosterStats> get copyWith => __$ClassTeacherRosterStatsCopyWithImpl<_ClassTeacherRosterStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherRosterStatsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherRosterStats&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.total, total) || other.total == total)&&(identical(other.boys, boys) || other.boys == boys)&&(identical(other.girls, girls) || other.girls == girls)&&(identical(other.newAdmissions, newAdmissions) || other.newAdmissions == newAdmissions)&&(identical(other.pendingDocuments, pendingDocuments) || other.pendingDocuments == pendingDocuments)&&(identical(other.studentsOnLeaveToday, studentsOnLeaveToday) || other.studentsOnLeaveToday == studentsOnLeaveToday));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,classId,sectionId,sessionId,total,boys,girls,newAdmissions,pendingDocuments,studentsOnLeaveToday);
}

@override
String toString() {
    return 'ClassTeacherRosterStats(classId: $classId, sectionId: $sectionId, sessionId: $sessionId, total: $total, boys: $boys, girls: $girls, newAdmissions: $newAdmissions, pendingDocuments: $pendingDocuments, studentsOnLeaveToday: $studentsOnLeaveToday)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherRosterStatsCopyWith<$Res> implements $ClassTeacherRosterStatsCopyWith<$Res> {
  factory _$ClassTeacherRosterStatsCopyWith(_ClassTeacherRosterStats value, $Res Function(_ClassTeacherRosterStats) _then) = __$ClassTeacherRosterStatsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'session_id') String? sessionId, int total, int boys, int girls,@JsonKey(name: 'new_admissions') int newAdmissions,@JsonKey(name: 'pending_documents') int pendingDocuments,@JsonKey(name: 'students_on_leave_today') int studentsOnLeaveToday
});




}
/// @nodoc
class __$ClassTeacherRosterStatsCopyWithImpl<$Res>
    implements _$ClassTeacherRosterStatsCopyWith<$Res> {
  __$ClassTeacherRosterStatsCopyWithImpl(this._self, this._then);

  final _ClassTeacherRosterStats _self;
  final $Res Function(_ClassTeacherRosterStats) _then;

/// Create a copy of ClassTeacherRosterStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classId = freezed,Object? sectionId = freezed,Object? sessionId = freezed,Object? total = null,Object? boys = null,Object? girls = null,Object? newAdmissions = null,Object? pendingDocuments = null,Object? studentsOnLeaveToday = null,}) {
  return _then(_ClassTeacherRosterStats(
classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,boys: null == boys ? _self.boys : boys // ignore: cast_nullable_to_non_nullable
as int,girls: null == girls ? _self.girls : girls // ignore: cast_nullable_to_non_nullable
as int,newAdmissions: null == newAdmissions ? _self.newAdmissions : newAdmissions // ignore: cast_nullable_to_non_nullable
as int,pendingDocuments: null == pendingDocuments ? _self.pendingDocuments : pendingDocuments // ignore: cast_nullable_to_non_nullable
as int,studentsOnLeaveToday: null == studentsOnLeaveToday ? _self.studentsOnLeaveToday : studentsOnLeaveToday // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$TeacherWorkloadRow {

@JsonKey(name: 'staff_id') String get staffId;@JsonKey(name: 'full_name') String get fullName;@JsonKey(name: 'employee_code') String? get employeeCode; String? get designation;@JsonKey(name: 'periods_per_week') int get periodsPerWeek;@JsonKey(name: 'sections_taught') int get sectionsTaught;
/// Create a copy of TeacherWorkloadRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeacherWorkloadRowCopyWith<TeacherWorkloadRow> get copyWith => _$TeacherWorkloadRowCopyWithImpl<TeacherWorkloadRow>(this as TeacherWorkloadRow, _$identity);

  /// Serializes this TeacherWorkloadRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TeacherWorkloadRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeacherWorkloadRow&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.designation, _this.designation) || other.designation == _this.designation)&&(identical(other.periodsPerWeek, _this.periodsPerWeek) || other.periodsPerWeek == _this.periodsPerWeek)&&(identical(other.sectionsTaught, _this.sectionsTaught) || other.sectionsTaught == _this.sectionsTaught));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TeacherWorkloadRow;
  return Object.hash(runtimeType,_this.staffId,_this.fullName,_this.employeeCode,_this.designation,_this.periodsPerWeek,_this.sectionsTaught);
}

@override
String toString() {
  final _this = this as TeacherWorkloadRow;
  return 'TeacherWorkloadRow(staffId: ${_this.staffId}, fullName: ${_this.fullName}, employeeCode: ${_this.employeeCode}, designation: ${_this.designation}, periodsPerWeek: ${_this.periodsPerWeek}, sectionsTaught: ${_this.sectionsTaught})';
}


}

/// @nodoc
abstract mixin class $TeacherWorkloadRowCopyWith<$Res>  {
  factory $TeacherWorkloadRowCopyWith(TeacherWorkloadRow value, $Res Function(TeacherWorkloadRow) _then) = _$TeacherWorkloadRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'employee_code') String? employeeCode, String? designation,@JsonKey(name: 'periods_per_week') int periodsPerWeek,@JsonKey(name: 'sections_taught') int sectionsTaught
});




}
/// @nodoc
class _$TeacherWorkloadRowCopyWithImpl<$Res>
    implements $TeacherWorkloadRowCopyWith<$Res> {
  _$TeacherWorkloadRowCopyWithImpl(this._self, this._then);

  final TeacherWorkloadRow _self;
  final $Res Function(TeacherWorkloadRow) _then;

/// Create a copy of TeacherWorkloadRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = null,Object? fullName = null,Object? employeeCode = freezed,Object? designation = freezed,Object? periodsPerWeek = null,Object? sectionsTaught = null,}) {
  return _then(TeacherWorkloadRow(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,periodsPerWeek: null == periodsPerWeek ? _self.periodsPerWeek : periodsPerWeek // ignore: cast_nullable_to_non_nullable
as int,sectionsTaught: null == sectionsTaught ? _self.sectionsTaught : sectionsTaught // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TeacherWorkloadRow].
extension TeacherWorkloadRowPatterns on TeacherWorkloadRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeacherWorkloadRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeacherWorkloadRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeacherWorkloadRow value)  $default,){
final _that = this;
switch (_that) {
case _TeacherWorkloadRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeacherWorkloadRow value)?  $default,){
final _that = this;
switch (_that) {
case _TeacherWorkloadRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? designation, @JsonKey(name: 'periods_per_week')  int periodsPerWeek, @JsonKey(name: 'sections_taught')  int sectionsTaught)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeacherWorkloadRow() when $default != null:
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.designation,_that.periodsPerWeek,_that.sectionsTaught);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? designation, @JsonKey(name: 'periods_per_week')  int periodsPerWeek, @JsonKey(name: 'sections_taught')  int sectionsTaught)  $default,) {final _that = this;
switch (_that) {
case _TeacherWorkloadRow():
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.designation,_that.periodsPerWeek,_that.sectionsTaught);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? designation, @JsonKey(name: 'periods_per_week')  int periodsPerWeek, @JsonKey(name: 'sections_taught')  int sectionsTaught)?  $default,) {final _that = this;
switch (_that) {
case _TeacherWorkloadRow() when $default != null:
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.designation,_that.periodsPerWeek,_that.sectionsTaught);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeacherWorkloadRow implements TeacherWorkloadRow {
  const _TeacherWorkloadRow({@JsonKey(name: 'staff_id') required this.staffId, @JsonKey(name: 'full_name') required this.fullName, @JsonKey(name: 'employee_code') this.employeeCode, this.designation, @JsonKey(name: 'periods_per_week') this.periodsPerWeek = 0, @JsonKey(name: 'sections_taught') this.sectionsTaught = 0});
  factory _TeacherWorkloadRow.fromJson(Map<String, dynamic> json) => _$TeacherWorkloadRowFromJson(json);

@override@JsonKey(name: 'staff_id') final  String staffId;
@override@JsonKey(name: 'full_name') final  String fullName;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override final  String? designation;
@override@JsonKey(name: 'periods_per_week') final  int periodsPerWeek;
@override@JsonKey(name: 'sections_taught') final  int sectionsTaught;

/// Create a copy of TeacherWorkloadRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeacherWorkloadRowCopyWith<_TeacherWorkloadRow> get copyWith => __$TeacherWorkloadRowCopyWithImpl<_TeacherWorkloadRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeacherWorkloadRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeacherWorkloadRow&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.periodsPerWeek, periodsPerWeek) || other.periodsPerWeek == periodsPerWeek)&&(identical(other.sectionsTaught, sectionsTaught) || other.sectionsTaught == sectionsTaught));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,fullName,employeeCode,designation,periodsPerWeek,sectionsTaught);
}

@override
String toString() {
    return 'TeacherWorkloadRow(staffId: $staffId, fullName: $fullName, employeeCode: $employeeCode, designation: $designation, periodsPerWeek: $periodsPerWeek, sectionsTaught: $sectionsTaught)';
}


}

/// @nodoc
abstract mixin class _$TeacherWorkloadRowCopyWith<$Res> implements $TeacherWorkloadRowCopyWith<$Res> {
  factory _$TeacherWorkloadRowCopyWith(_TeacherWorkloadRow value, $Res Function(_TeacherWorkloadRow) _then) = __$TeacherWorkloadRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'employee_code') String? employeeCode, String? designation,@JsonKey(name: 'periods_per_week') int periodsPerWeek,@JsonKey(name: 'sections_taught') int sectionsTaught
});




}
/// @nodoc
class __$TeacherWorkloadRowCopyWithImpl<$Res>
    implements _$TeacherWorkloadRowCopyWith<$Res> {
  __$TeacherWorkloadRowCopyWithImpl(this._self, this._then);

  final _TeacherWorkloadRow _self;
  final $Res Function(_TeacherWorkloadRow) _then;

/// Create a copy of TeacherWorkloadRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = null,Object? fullName = null,Object? employeeCode = freezed,Object? designation = freezed,Object? periodsPerWeek = null,Object? sectionsTaught = null,}) {
  return _then(_TeacherWorkloadRow(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,periodsPerWeek: null == periodsPerWeek ? _self.periodsPerWeek : periodsPerWeek // ignore: cast_nullable_to_non_nullable
as int,sectionsTaught: null == sectionsTaught ? _self.sectionsTaught : sectionsTaught // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$TeacherHomeworkStatusRow {

@JsonKey(name: 'staff_id') String get staffId;@JsonKey(name: 'full_name') String get fullName;@JsonKey(name: 'employee_code') String? get employeeCode;@JsonKey(name: 'assigned_count') int get assignedCount;@JsonKey(name: 'total_submissions') int get totalSubmissions;@JsonKey(name: 'graded_submissions') int get gradedSubmissions;@JsonKey(name: 'pending_submissions') int get pendingSubmissions;
/// Create a copy of TeacherHomeworkStatusRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeacherHomeworkStatusRowCopyWith<TeacherHomeworkStatusRow> get copyWith => _$TeacherHomeworkStatusRowCopyWithImpl<TeacherHomeworkStatusRow>(this as TeacherHomeworkStatusRow, _$identity);

  /// Serializes this TeacherHomeworkStatusRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TeacherHomeworkStatusRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeacherHomeworkStatusRow&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.assignedCount, _this.assignedCount) || other.assignedCount == _this.assignedCount)&&(identical(other.totalSubmissions, _this.totalSubmissions) || other.totalSubmissions == _this.totalSubmissions)&&(identical(other.gradedSubmissions, _this.gradedSubmissions) || other.gradedSubmissions == _this.gradedSubmissions)&&(identical(other.pendingSubmissions, _this.pendingSubmissions) || other.pendingSubmissions == _this.pendingSubmissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TeacherHomeworkStatusRow;
  return Object.hash(runtimeType,_this.staffId,_this.fullName,_this.employeeCode,_this.assignedCount,_this.totalSubmissions,_this.gradedSubmissions,_this.pendingSubmissions);
}

@override
String toString() {
  final _this = this as TeacherHomeworkStatusRow;
  return 'TeacherHomeworkStatusRow(staffId: ${_this.staffId}, fullName: ${_this.fullName}, employeeCode: ${_this.employeeCode}, assignedCount: ${_this.assignedCount}, totalSubmissions: ${_this.totalSubmissions}, gradedSubmissions: ${_this.gradedSubmissions}, pendingSubmissions: ${_this.pendingSubmissions})';
}


}

/// @nodoc
abstract mixin class $TeacherHomeworkStatusRowCopyWith<$Res>  {
  factory $TeacherHomeworkStatusRowCopyWith(TeacherHomeworkStatusRow value, $Res Function(TeacherHomeworkStatusRow) _then) = _$TeacherHomeworkStatusRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'assigned_count') int assignedCount,@JsonKey(name: 'total_submissions') int totalSubmissions,@JsonKey(name: 'graded_submissions') int gradedSubmissions,@JsonKey(name: 'pending_submissions') int pendingSubmissions
});




}
/// @nodoc
class _$TeacherHomeworkStatusRowCopyWithImpl<$Res>
    implements $TeacherHomeworkStatusRowCopyWith<$Res> {
  _$TeacherHomeworkStatusRowCopyWithImpl(this._self, this._then);

  final TeacherHomeworkStatusRow _self;
  final $Res Function(TeacherHomeworkStatusRow) _then;

/// Create a copy of TeacherHomeworkStatusRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = null,Object? fullName = null,Object? employeeCode = freezed,Object? assignedCount = null,Object? totalSubmissions = null,Object? gradedSubmissions = null,Object? pendingSubmissions = null,}) {
  return _then(TeacherHomeworkStatusRow(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,assignedCount: null == assignedCount ? _self.assignedCount : assignedCount // ignore: cast_nullable_to_non_nullable
as int,totalSubmissions: null == totalSubmissions ? _self.totalSubmissions : totalSubmissions // ignore: cast_nullable_to_non_nullable
as int,gradedSubmissions: null == gradedSubmissions ? _self.gradedSubmissions : gradedSubmissions // ignore: cast_nullable_to_non_nullable
as int,pendingSubmissions: null == pendingSubmissions ? _self.pendingSubmissions : pendingSubmissions // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TeacherHomeworkStatusRow].
extension TeacherHomeworkStatusRowPatterns on TeacherHomeworkStatusRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeacherHomeworkStatusRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeacherHomeworkStatusRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeacherHomeworkStatusRow value)  $default,){
final _that = this;
switch (_that) {
case _TeacherHomeworkStatusRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeacherHomeworkStatusRow value)?  $default,){
final _that = this;
switch (_that) {
case _TeacherHomeworkStatusRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'assigned_count')  int assignedCount, @JsonKey(name: 'total_submissions')  int totalSubmissions, @JsonKey(name: 'graded_submissions')  int gradedSubmissions, @JsonKey(name: 'pending_submissions')  int pendingSubmissions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeacherHomeworkStatusRow() when $default != null:
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.assignedCount,_that.totalSubmissions,_that.gradedSubmissions,_that.pendingSubmissions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'assigned_count')  int assignedCount, @JsonKey(name: 'total_submissions')  int totalSubmissions, @JsonKey(name: 'graded_submissions')  int gradedSubmissions, @JsonKey(name: 'pending_submissions')  int pendingSubmissions)  $default,) {final _that = this;
switch (_that) {
case _TeacherHomeworkStatusRow():
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.assignedCount,_that.totalSubmissions,_that.gradedSubmissions,_that.pendingSubmissions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'assigned_count')  int assignedCount, @JsonKey(name: 'total_submissions')  int totalSubmissions, @JsonKey(name: 'graded_submissions')  int gradedSubmissions, @JsonKey(name: 'pending_submissions')  int pendingSubmissions)?  $default,) {final _that = this;
switch (_that) {
case _TeacherHomeworkStatusRow() when $default != null:
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.assignedCount,_that.totalSubmissions,_that.gradedSubmissions,_that.pendingSubmissions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeacherHomeworkStatusRow implements TeacherHomeworkStatusRow {
  const _TeacherHomeworkStatusRow({@JsonKey(name: 'staff_id') required this.staffId, @JsonKey(name: 'full_name') required this.fullName, @JsonKey(name: 'employee_code') this.employeeCode, @JsonKey(name: 'assigned_count') this.assignedCount = 0, @JsonKey(name: 'total_submissions') this.totalSubmissions = 0, @JsonKey(name: 'graded_submissions') this.gradedSubmissions = 0, @JsonKey(name: 'pending_submissions') this.pendingSubmissions = 0});
  factory _TeacherHomeworkStatusRow.fromJson(Map<String, dynamic> json) => _$TeacherHomeworkStatusRowFromJson(json);

@override@JsonKey(name: 'staff_id') final  String staffId;
@override@JsonKey(name: 'full_name') final  String fullName;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override@JsonKey(name: 'assigned_count') final  int assignedCount;
@override@JsonKey(name: 'total_submissions') final  int totalSubmissions;
@override@JsonKey(name: 'graded_submissions') final  int gradedSubmissions;
@override@JsonKey(name: 'pending_submissions') final  int pendingSubmissions;

/// Create a copy of TeacherHomeworkStatusRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeacherHomeworkStatusRowCopyWith<_TeacherHomeworkStatusRow> get copyWith => __$TeacherHomeworkStatusRowCopyWithImpl<_TeacherHomeworkStatusRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeacherHomeworkStatusRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeacherHomeworkStatusRow&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.assignedCount, assignedCount) || other.assignedCount == assignedCount)&&(identical(other.totalSubmissions, totalSubmissions) || other.totalSubmissions == totalSubmissions)&&(identical(other.gradedSubmissions, gradedSubmissions) || other.gradedSubmissions == gradedSubmissions)&&(identical(other.pendingSubmissions, pendingSubmissions) || other.pendingSubmissions == pendingSubmissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,fullName,employeeCode,assignedCount,totalSubmissions,gradedSubmissions,pendingSubmissions);
}

@override
String toString() {
    return 'TeacherHomeworkStatusRow(staffId: $staffId, fullName: $fullName, employeeCode: $employeeCode, assignedCount: $assignedCount, totalSubmissions: $totalSubmissions, gradedSubmissions: $gradedSubmissions, pendingSubmissions: $pendingSubmissions)';
}


}

/// @nodoc
abstract mixin class _$TeacherHomeworkStatusRowCopyWith<$Res> implements $TeacherHomeworkStatusRowCopyWith<$Res> {
  factory _$TeacherHomeworkStatusRowCopyWith(_TeacherHomeworkStatusRow value, $Res Function(_TeacherHomeworkStatusRow) _then) = __$TeacherHomeworkStatusRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'assigned_count') int assignedCount,@JsonKey(name: 'total_submissions') int totalSubmissions,@JsonKey(name: 'graded_submissions') int gradedSubmissions,@JsonKey(name: 'pending_submissions') int pendingSubmissions
});




}
/// @nodoc
class __$TeacherHomeworkStatusRowCopyWithImpl<$Res>
    implements _$TeacherHomeworkStatusRowCopyWith<$Res> {
  __$TeacherHomeworkStatusRowCopyWithImpl(this._self, this._then);

  final _TeacherHomeworkStatusRow _self;
  final $Res Function(_TeacherHomeworkStatusRow) _then;

/// Create a copy of TeacherHomeworkStatusRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = null,Object? fullName = null,Object? employeeCode = freezed,Object? assignedCount = null,Object? totalSubmissions = null,Object? gradedSubmissions = null,Object? pendingSubmissions = null,}) {
  return _then(_TeacherHomeworkStatusRow(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,assignedCount: null == assignedCount ? _self.assignedCount : assignedCount // ignore: cast_nullable_to_non_nullable
as int,totalSubmissions: null == totalSubmissions ? _self.totalSubmissions : totalSubmissions // ignore: cast_nullable_to_non_nullable
as int,gradedSubmissions: null == gradedSubmissions ? _self.gradedSubmissions : gradedSubmissions // ignore: cast_nullable_to_non_nullable
as int,pendingSubmissions: null == pendingSubmissions ? _self.pendingSubmissions : pendingSubmissions // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$TeacherMarksEntryRow {

@JsonKey(name: 'staff_id') String get staffId;@JsonKey(name: 'full_name') String get fullName;@JsonKey(name: 'employee_code') String? get employeeCode;@JsonKey(name: 'class_name') String? get className;@JsonKey(name: 'section_name') String? get sectionName;@JsonKey(name: 'subject_name') String? get subjectName;@JsonKey(name: 'total_students') int get totalStudents;@JsonKey(name: 'entered_count') int get enteredCount;@JsonKey(name: 'pending_count') int get pendingCount;
/// Create a copy of TeacherMarksEntryRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeacherMarksEntryRowCopyWith<TeacherMarksEntryRow> get copyWith => _$TeacherMarksEntryRowCopyWithImpl<TeacherMarksEntryRow>(this as TeacherMarksEntryRow, _$identity);

  /// Serializes this TeacherMarksEntryRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TeacherMarksEntryRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeacherMarksEntryRow&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.sectionName, _this.sectionName) || other.sectionName == _this.sectionName)&&(identical(other.subjectName, _this.subjectName) || other.subjectName == _this.subjectName)&&(identical(other.totalStudents, _this.totalStudents) || other.totalStudents == _this.totalStudents)&&(identical(other.enteredCount, _this.enteredCount) || other.enteredCount == _this.enteredCount)&&(identical(other.pendingCount, _this.pendingCount) || other.pendingCount == _this.pendingCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TeacherMarksEntryRow;
  return Object.hash(runtimeType,_this.staffId,_this.fullName,_this.employeeCode,_this.className,_this.sectionName,_this.subjectName,_this.totalStudents,_this.enteredCount,_this.pendingCount);
}

@override
String toString() {
  final _this = this as TeacherMarksEntryRow;
  return 'TeacherMarksEntryRow(staffId: ${_this.staffId}, fullName: ${_this.fullName}, employeeCode: ${_this.employeeCode}, className: ${_this.className}, sectionName: ${_this.sectionName}, subjectName: ${_this.subjectName}, totalStudents: ${_this.totalStudents}, enteredCount: ${_this.enteredCount}, pendingCount: ${_this.pendingCount})';
}


}

/// @nodoc
abstract mixin class $TeacherMarksEntryRowCopyWith<$Res>  {
  factory $TeacherMarksEntryRowCopyWith(TeacherMarksEntryRow value, $Res Function(TeacherMarksEntryRow) _then) = _$TeacherMarksEntryRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName,@JsonKey(name: 'subject_name') String? subjectName,@JsonKey(name: 'total_students') int totalStudents,@JsonKey(name: 'entered_count') int enteredCount,@JsonKey(name: 'pending_count') int pendingCount
});




}
/// @nodoc
class _$TeacherMarksEntryRowCopyWithImpl<$Res>
    implements $TeacherMarksEntryRowCopyWith<$Res> {
  _$TeacherMarksEntryRowCopyWithImpl(this._self, this._then);

  final TeacherMarksEntryRow _self;
  final $Res Function(TeacherMarksEntryRow) _then;

/// Create a copy of TeacherMarksEntryRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = null,Object? fullName = null,Object? employeeCode = freezed,Object? className = freezed,Object? sectionName = freezed,Object? subjectName = freezed,Object? totalStudents = null,Object? enteredCount = null,Object? pendingCount = null,}) {
  return _then(TeacherMarksEntryRow(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,subjectName: freezed == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String?,totalStudents: null == totalStudents ? _self.totalStudents : totalStudents // ignore: cast_nullable_to_non_nullable
as int,enteredCount: null == enteredCount ? _self.enteredCount : enteredCount // ignore: cast_nullable_to_non_nullable
as int,pendingCount: null == pendingCount ? _self.pendingCount : pendingCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TeacherMarksEntryRow].
extension TeacherMarksEntryRowPatterns on TeacherMarksEntryRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeacherMarksEntryRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeacherMarksEntryRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeacherMarksEntryRow value)  $default,){
final _that = this;
switch (_that) {
case _TeacherMarksEntryRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeacherMarksEntryRow value)?  $default,){
final _that = this;
switch (_that) {
case _TeacherMarksEntryRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'subject_name')  String? subjectName, @JsonKey(name: 'total_students')  int totalStudents, @JsonKey(name: 'entered_count')  int enteredCount, @JsonKey(name: 'pending_count')  int pendingCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeacherMarksEntryRow() when $default != null:
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.className,_that.sectionName,_that.subjectName,_that.totalStudents,_that.enteredCount,_that.pendingCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'subject_name')  String? subjectName, @JsonKey(name: 'total_students')  int totalStudents, @JsonKey(name: 'entered_count')  int enteredCount, @JsonKey(name: 'pending_count')  int pendingCount)  $default,) {final _that = this;
switch (_that) {
case _TeacherMarksEntryRow():
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.className,_that.sectionName,_that.subjectName,_that.totalStudents,_that.enteredCount,_that.pendingCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName, @JsonKey(name: 'subject_name')  String? subjectName, @JsonKey(name: 'total_students')  int totalStudents, @JsonKey(name: 'entered_count')  int enteredCount, @JsonKey(name: 'pending_count')  int pendingCount)?  $default,) {final _that = this;
switch (_that) {
case _TeacherMarksEntryRow() when $default != null:
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.className,_that.sectionName,_that.subjectName,_that.totalStudents,_that.enteredCount,_that.pendingCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeacherMarksEntryRow implements TeacherMarksEntryRow {
  const _TeacherMarksEntryRow({@JsonKey(name: 'staff_id') required this.staffId, @JsonKey(name: 'full_name') required this.fullName, @JsonKey(name: 'employee_code') this.employeeCode, @JsonKey(name: 'class_name') this.className, @JsonKey(name: 'section_name') this.sectionName, @JsonKey(name: 'subject_name') this.subjectName, @JsonKey(name: 'total_students') this.totalStudents = 0, @JsonKey(name: 'entered_count') this.enteredCount = 0, @JsonKey(name: 'pending_count') this.pendingCount = 0});
  factory _TeacherMarksEntryRow.fromJson(Map<String, dynamic> json) => _$TeacherMarksEntryRowFromJson(json);

@override@JsonKey(name: 'staff_id') final  String staffId;
@override@JsonKey(name: 'full_name') final  String fullName;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override@JsonKey(name: 'class_name') final  String? className;
@override@JsonKey(name: 'section_name') final  String? sectionName;
@override@JsonKey(name: 'subject_name') final  String? subjectName;
@override@JsonKey(name: 'total_students') final  int totalStudents;
@override@JsonKey(name: 'entered_count') final  int enteredCount;
@override@JsonKey(name: 'pending_count') final  int pendingCount;

/// Create a copy of TeacherMarksEntryRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeacherMarksEntryRowCopyWith<_TeacherMarksEntryRow> get copyWith => __$TeacherMarksEntryRowCopyWithImpl<_TeacherMarksEntryRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeacherMarksEntryRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeacherMarksEntryRow&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.className, className) || other.className == className)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.totalStudents, totalStudents) || other.totalStudents == totalStudents)&&(identical(other.enteredCount, enteredCount) || other.enteredCount == enteredCount)&&(identical(other.pendingCount, pendingCount) || other.pendingCount == pendingCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,fullName,employeeCode,className,sectionName,subjectName,totalStudents,enteredCount,pendingCount);
}

@override
String toString() {
    return 'TeacherMarksEntryRow(staffId: $staffId, fullName: $fullName, employeeCode: $employeeCode, className: $className, sectionName: $sectionName, subjectName: $subjectName, totalStudents: $totalStudents, enteredCount: $enteredCount, pendingCount: $pendingCount)';
}


}

/// @nodoc
abstract mixin class _$TeacherMarksEntryRowCopyWith<$Res> implements $TeacherMarksEntryRowCopyWith<$Res> {
  factory _$TeacherMarksEntryRowCopyWith(_TeacherMarksEntryRow value, $Res Function(_TeacherMarksEntryRow) _then) = __$TeacherMarksEntryRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName,@JsonKey(name: 'subject_name') String? subjectName,@JsonKey(name: 'total_students') int totalStudents,@JsonKey(name: 'entered_count') int enteredCount,@JsonKey(name: 'pending_count') int pendingCount
});




}
/// @nodoc
class __$TeacherMarksEntryRowCopyWithImpl<$Res>
    implements _$TeacherMarksEntryRowCopyWith<$Res> {
  __$TeacherMarksEntryRowCopyWithImpl(this._self, this._then);

  final _TeacherMarksEntryRow _self;
  final $Res Function(_TeacherMarksEntryRow) _then;

/// Create a copy of TeacherMarksEntryRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = null,Object? fullName = null,Object? employeeCode = freezed,Object? className = freezed,Object? sectionName = freezed,Object? subjectName = freezed,Object? totalStudents = null,Object? enteredCount = null,Object? pendingCount = null,}) {
  return _then(_TeacherMarksEntryRow(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,subjectName: freezed == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String?,totalStudents: null == totalStudents ? _self.totalStudents : totalStudents // ignore: cast_nullable_to_non_nullable
as int,enteredCount: null == enteredCount ? _self.enteredCount : enteredCount // ignore: cast_nullable_to_non_nullable
as int,pendingCount: null == pendingCount ? _self.pendingCount : pendingCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PrincipalActivityItem {

@JsonKey(name: 'activity_type') String? get activityType;@JsonKey(name: 'target_type') String? get targetType;@JsonKey(name: 'target_id') String? get targetId;@JsonKey(name: 'target_name') String? get targetName;@JsonKey(name: 'remark_text') String? get remarkText;@JsonKey(name: 'performed_by') String? get performedBy; DateTime? get timestamp;
/// Create a copy of PrincipalActivityItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrincipalActivityItemCopyWith<PrincipalActivityItem> get copyWith => _$PrincipalActivityItemCopyWithImpl<PrincipalActivityItem>(this as PrincipalActivityItem, _$identity);

  /// Serializes this PrincipalActivityItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PrincipalActivityItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrincipalActivityItem&&(identical(other.activityType, _this.activityType) || other.activityType == _this.activityType)&&(identical(other.targetType, _this.targetType) || other.targetType == _this.targetType)&&(identical(other.targetId, _this.targetId) || other.targetId == _this.targetId)&&(identical(other.targetName, _this.targetName) || other.targetName == _this.targetName)&&(identical(other.remarkText, _this.remarkText) || other.remarkText == _this.remarkText)&&(identical(other.performedBy, _this.performedBy) || other.performedBy == _this.performedBy)&&(identical(other.timestamp, _this.timestamp) || other.timestamp == _this.timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PrincipalActivityItem;
  return Object.hash(runtimeType,_this.activityType,_this.targetType,_this.targetId,_this.targetName,_this.remarkText,_this.performedBy,_this.timestamp);
}

@override
String toString() {
  final _this = this as PrincipalActivityItem;
  return 'PrincipalActivityItem(activityType: ${_this.activityType}, targetType: ${_this.targetType}, targetId: ${_this.targetId}, targetName: ${_this.targetName}, remarkText: ${_this.remarkText}, performedBy: ${_this.performedBy}, timestamp: ${_this.timestamp})';
}


}

/// @nodoc
abstract mixin class $PrincipalActivityItemCopyWith<$Res>  {
  factory $PrincipalActivityItemCopyWith(PrincipalActivityItem value, $Res Function(PrincipalActivityItem) _then) = _$PrincipalActivityItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'activity_type') String? activityType,@JsonKey(name: 'target_type') String? targetType,@JsonKey(name: 'target_id') String? targetId,@JsonKey(name: 'target_name') String? targetName,@JsonKey(name: 'remark_text') String? remarkText,@JsonKey(name: 'performed_by') String? performedBy, DateTime? timestamp
});




}
/// @nodoc
class _$PrincipalActivityItemCopyWithImpl<$Res>
    implements $PrincipalActivityItemCopyWith<$Res> {
  _$PrincipalActivityItemCopyWithImpl(this._self, this._then);

  final PrincipalActivityItem _self;
  final $Res Function(PrincipalActivityItem) _then;

/// Create a copy of PrincipalActivityItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activityType = freezed,Object? targetType = freezed,Object? targetId = freezed,Object? targetName = freezed,Object? remarkText = freezed,Object? performedBy = freezed,Object? timestamp = freezed,}) {
  return _then(PrincipalActivityItem(
activityType: freezed == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String?,targetType: freezed == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as String?,targetId: freezed == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String?,targetName: freezed == targetName ? _self.targetName : targetName // ignore: cast_nullable_to_non_nullable
as String?,remarkText: freezed == remarkText ? _self.remarkText : remarkText // ignore: cast_nullable_to_non_nullable
as String?,performedBy: freezed == performedBy ? _self.performedBy : performedBy // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PrincipalActivityItem].
extension PrincipalActivityItemPatterns on PrincipalActivityItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrincipalActivityItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrincipalActivityItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrincipalActivityItem value)  $default,){
final _that = this;
switch (_that) {
case _PrincipalActivityItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrincipalActivityItem value)?  $default,){
final _that = this;
switch (_that) {
case _PrincipalActivityItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'activity_type')  String? activityType, @JsonKey(name: 'target_type')  String? targetType, @JsonKey(name: 'target_id')  String? targetId, @JsonKey(name: 'target_name')  String? targetName, @JsonKey(name: 'remark_text')  String? remarkText, @JsonKey(name: 'performed_by')  String? performedBy,  DateTime? timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrincipalActivityItem() when $default != null:
return $default(_that.activityType,_that.targetType,_that.targetId,_that.targetName,_that.remarkText,_that.performedBy,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'activity_type')  String? activityType, @JsonKey(name: 'target_type')  String? targetType, @JsonKey(name: 'target_id')  String? targetId, @JsonKey(name: 'target_name')  String? targetName, @JsonKey(name: 'remark_text')  String? remarkText, @JsonKey(name: 'performed_by')  String? performedBy,  DateTime? timestamp)  $default,) {final _that = this;
switch (_that) {
case _PrincipalActivityItem():
return $default(_that.activityType,_that.targetType,_that.targetId,_that.targetName,_that.remarkText,_that.performedBy,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'activity_type')  String? activityType, @JsonKey(name: 'target_type')  String? targetType, @JsonKey(name: 'target_id')  String? targetId, @JsonKey(name: 'target_name')  String? targetName, @JsonKey(name: 'remark_text')  String? remarkText, @JsonKey(name: 'performed_by')  String? performedBy,  DateTime? timestamp)?  $default,) {final _that = this;
switch (_that) {
case _PrincipalActivityItem() when $default != null:
return $default(_that.activityType,_that.targetType,_that.targetId,_that.targetName,_that.remarkText,_that.performedBy,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PrincipalActivityItem implements PrincipalActivityItem {
  const _PrincipalActivityItem({@JsonKey(name: 'activity_type') this.activityType, @JsonKey(name: 'target_type') this.targetType, @JsonKey(name: 'target_id') this.targetId, @JsonKey(name: 'target_name') this.targetName, @JsonKey(name: 'remark_text') this.remarkText, @JsonKey(name: 'performed_by') this.performedBy, this.timestamp});
  factory _PrincipalActivityItem.fromJson(Map<String, dynamic> json) => _$PrincipalActivityItemFromJson(json);

@override@JsonKey(name: 'activity_type') final  String? activityType;
@override@JsonKey(name: 'target_type') final  String? targetType;
@override@JsonKey(name: 'target_id') final  String? targetId;
@override@JsonKey(name: 'target_name') final  String? targetName;
@override@JsonKey(name: 'remark_text') final  String? remarkText;
@override@JsonKey(name: 'performed_by') final  String? performedBy;
@override final  DateTime? timestamp;

/// Create a copy of PrincipalActivityItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrincipalActivityItemCopyWith<_PrincipalActivityItem> get copyWith => __$PrincipalActivityItemCopyWithImpl<_PrincipalActivityItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrincipalActivityItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrincipalActivityItem&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.targetName, targetName) || other.targetName == targetName)&&(identical(other.remarkText, remarkText) || other.remarkText == remarkText)&&(identical(other.performedBy, performedBy) || other.performedBy == performedBy)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,activityType,targetType,targetId,targetName,remarkText,performedBy,timestamp);
}

@override
String toString() {
    return 'PrincipalActivityItem(activityType: $activityType, targetType: $targetType, targetId: $targetId, targetName: $targetName, remarkText: $remarkText, performedBy: $performedBy, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$PrincipalActivityItemCopyWith<$Res> implements $PrincipalActivityItemCopyWith<$Res> {
  factory _$PrincipalActivityItemCopyWith(_PrincipalActivityItem value, $Res Function(_PrincipalActivityItem) _then) = __$PrincipalActivityItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'activity_type') String? activityType,@JsonKey(name: 'target_type') String? targetType,@JsonKey(name: 'target_id') String? targetId,@JsonKey(name: 'target_name') String? targetName,@JsonKey(name: 'remark_text') String? remarkText,@JsonKey(name: 'performed_by') String? performedBy, DateTime? timestamp
});




}
/// @nodoc
class __$PrincipalActivityItemCopyWithImpl<$Res>
    implements _$PrincipalActivityItemCopyWith<$Res> {
  __$PrincipalActivityItemCopyWithImpl(this._self, this._then);

  final _PrincipalActivityItem _self;
  final $Res Function(_PrincipalActivityItem) _then;

/// Create a copy of PrincipalActivityItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activityType = freezed,Object? targetType = freezed,Object? targetId = freezed,Object? targetName = freezed,Object? remarkText = freezed,Object? performedBy = freezed,Object? timestamp = freezed,}) {
  return _then(_PrincipalActivityItem(
activityType: freezed == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String?,targetType: freezed == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as String?,targetId: freezed == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String?,targetName: freezed == targetName ? _self.targetName : targetName // ignore: cast_nullable_to_non_nullable
as String?,remarkText: freezed == remarkText ? _self.remarkText : remarkText // ignore: cast_nullable_to_non_nullable
as String?,performedBy: freezed == performedBy ? _self.performedBy : performedBy // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
