// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vice_principal_dashboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VicePrincipalDashboard {

@JsonKey(name: 'total_students') int? get totalStudents;@JsonKey(name: 'total_teachers') int? get totalTeachers;@JsonKey(name: 'student_attendance_pct') double? get studentAttendancePct;@JsonKey(name: 'today_teacher_attendance') TodayTeacherAttendance? get todayTeacherAttendance;@JsonKey(name: 'pending_leave_requests') PendingLeaveCounts? get pendingLeaveRequests;@JsonKey(name: 'upcoming_exams') List<DashboardExam> get upcomingExams;@JsonKey(name: 'upcoming_events') List<SchoolEvent> get upcomingEvents;@JsonKey(name: 'pending_homework') int get pendingHomework;@JsonKey(name: 'recent_announcements') List<SchoolNotice> get recentAnnouncements;
/// Create a copy of VicePrincipalDashboard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VicePrincipalDashboardCopyWith<VicePrincipalDashboard> get copyWith => _$VicePrincipalDashboardCopyWithImpl<VicePrincipalDashboard>(this as VicePrincipalDashboard, _$identity);

  /// Serializes this VicePrincipalDashboard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as VicePrincipalDashboard;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VicePrincipalDashboard&&(identical(other.totalStudents, _this.totalStudents) || other.totalStudents == _this.totalStudents)&&(identical(other.totalTeachers, _this.totalTeachers) || other.totalTeachers == _this.totalTeachers)&&(identical(other.studentAttendancePct, _this.studentAttendancePct) || other.studentAttendancePct == _this.studentAttendancePct)&&(identical(other.todayTeacherAttendance, _this.todayTeacherAttendance) || other.todayTeacherAttendance == _this.todayTeacherAttendance)&&(identical(other.pendingLeaveRequests, _this.pendingLeaveRequests) || other.pendingLeaveRequests == _this.pendingLeaveRequests)&&const DeepCollectionEquality().equals(other.upcomingExams, _this.upcomingExams)&&const DeepCollectionEquality().equals(other.upcomingEvents, _this.upcomingEvents)&&(identical(other.pendingHomework, _this.pendingHomework) || other.pendingHomework == _this.pendingHomework)&&const DeepCollectionEquality().equals(other.recentAnnouncements, _this.recentAnnouncements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as VicePrincipalDashboard;
  return Object.hash(runtimeType,_this.totalStudents,_this.totalTeachers,_this.studentAttendancePct,_this.todayTeacherAttendance,_this.pendingLeaveRequests,const DeepCollectionEquality().hash(_this.upcomingExams),const DeepCollectionEquality().hash(_this.upcomingEvents),_this.pendingHomework,const DeepCollectionEquality().hash(_this.recentAnnouncements));
}

@override
String toString() {
  final _this = this as VicePrincipalDashboard;
  return 'VicePrincipalDashboard(totalStudents: ${_this.totalStudents}, totalTeachers: ${_this.totalTeachers}, studentAttendancePct: ${_this.studentAttendancePct}, todayTeacherAttendance: ${_this.todayTeacherAttendance}, pendingLeaveRequests: ${_this.pendingLeaveRequests}, upcomingExams: ${_this.upcomingExams}, upcomingEvents: ${_this.upcomingEvents}, pendingHomework: ${_this.pendingHomework}, recentAnnouncements: ${_this.recentAnnouncements})';
}


}

/// @nodoc
abstract mixin class $VicePrincipalDashboardCopyWith<$Res>  {
  factory $VicePrincipalDashboardCopyWith(VicePrincipalDashboard value, $Res Function(VicePrincipalDashboard) _then) = _$VicePrincipalDashboardCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_students') int? totalStudents,@JsonKey(name: 'total_teachers') int? totalTeachers,@JsonKey(name: 'student_attendance_pct') double? studentAttendancePct,@JsonKey(name: 'today_teacher_attendance') TodayTeacherAttendance? todayTeacherAttendance,@JsonKey(name: 'pending_leave_requests') PendingLeaveCounts? pendingLeaveRequests,@JsonKey(name: 'upcoming_exams') List<DashboardExam> upcomingExams,@JsonKey(name: 'upcoming_events') List<SchoolEvent> upcomingEvents,@JsonKey(name: 'pending_homework') int pendingHomework,@JsonKey(name: 'recent_announcements') List<SchoolNotice> recentAnnouncements
});


$TodayTeacherAttendanceCopyWith<$Res>? get todayTeacherAttendance;$PendingLeaveCountsCopyWith<$Res>? get pendingLeaveRequests;

}
/// @nodoc
class _$VicePrincipalDashboardCopyWithImpl<$Res>
    implements $VicePrincipalDashboardCopyWith<$Res> {
  _$VicePrincipalDashboardCopyWithImpl(this._self, this._then);

  final VicePrincipalDashboard _self;
  final $Res Function(VicePrincipalDashboard) _then;

/// Create a copy of VicePrincipalDashboard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalStudents = freezed,Object? totalTeachers = freezed,Object? studentAttendancePct = freezed,Object? todayTeacherAttendance = freezed,Object? pendingLeaveRequests = freezed,Object? upcomingExams = null,Object? upcomingEvents = null,Object? pendingHomework = null,Object? recentAnnouncements = null,}) {
  return _then(VicePrincipalDashboard(
totalStudents: freezed == totalStudents ? _self.totalStudents : totalStudents // ignore: cast_nullable_to_non_nullable
as int?,totalTeachers: freezed == totalTeachers ? _self.totalTeachers : totalTeachers // ignore: cast_nullable_to_non_nullable
as int?,studentAttendancePct: freezed == studentAttendancePct ? _self.studentAttendancePct : studentAttendancePct // ignore: cast_nullable_to_non_nullable
as double?,todayTeacherAttendance: freezed == todayTeacherAttendance ? _self.todayTeacherAttendance : todayTeacherAttendance // ignore: cast_nullable_to_non_nullable
as TodayTeacherAttendance?,pendingLeaveRequests: freezed == pendingLeaveRequests ? _self.pendingLeaveRequests : pendingLeaveRequests // ignore: cast_nullable_to_non_nullable
as PendingLeaveCounts?,upcomingExams: null == upcomingExams ? _self.upcomingExams : upcomingExams // ignore: cast_nullable_to_non_nullable
as List<DashboardExam>,upcomingEvents: null == upcomingEvents ? _self.upcomingEvents : upcomingEvents // ignore: cast_nullable_to_non_nullable
as List<SchoolEvent>,pendingHomework: null == pendingHomework ? _self.pendingHomework : pendingHomework // ignore: cast_nullable_to_non_nullable
as int,recentAnnouncements: null == recentAnnouncements ? _self.recentAnnouncements : recentAnnouncements // ignore: cast_nullable_to_non_nullable
as List<SchoolNotice>,
  ));
}
/// Create a copy of VicePrincipalDashboard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TodayTeacherAttendanceCopyWith<$Res>? get todayTeacherAttendance {
    if (_self.todayTeacherAttendance == null) {
    return null;
  }

  return $TodayTeacherAttendanceCopyWith<$Res>(_self.todayTeacherAttendance!, (value) {
    return _then(_self.copyWith(todayTeacherAttendance: value));
  });
}/// Create a copy of VicePrincipalDashboard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PendingLeaveCountsCopyWith<$Res>? get pendingLeaveRequests {
    if (_self.pendingLeaveRequests == null) {
    return null;
  }

  return $PendingLeaveCountsCopyWith<$Res>(_self.pendingLeaveRequests!, (value) {
    return _then(_self.copyWith(pendingLeaveRequests: value));
  });
}
}


/// Adds pattern-matching-related methods to [VicePrincipalDashboard].
extension VicePrincipalDashboardPatterns on VicePrincipalDashboard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VicePrincipalDashboard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VicePrincipalDashboard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VicePrincipalDashboard value)  $default,){
final _that = this;
switch (_that) {
case _VicePrincipalDashboard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VicePrincipalDashboard value)?  $default,){
final _that = this;
switch (_that) {
case _VicePrincipalDashboard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_students')  int? totalStudents, @JsonKey(name: 'total_teachers')  int? totalTeachers, @JsonKey(name: 'student_attendance_pct')  double? studentAttendancePct, @JsonKey(name: 'today_teacher_attendance')  TodayTeacherAttendance? todayTeacherAttendance, @JsonKey(name: 'pending_leave_requests')  PendingLeaveCounts? pendingLeaveRequests, @JsonKey(name: 'upcoming_exams')  List<DashboardExam> upcomingExams, @JsonKey(name: 'upcoming_events')  List<SchoolEvent> upcomingEvents, @JsonKey(name: 'pending_homework')  int pendingHomework, @JsonKey(name: 'recent_announcements')  List<SchoolNotice> recentAnnouncements)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VicePrincipalDashboard() when $default != null:
return $default(_that.totalStudents,_that.totalTeachers,_that.studentAttendancePct,_that.todayTeacherAttendance,_that.pendingLeaveRequests,_that.upcomingExams,_that.upcomingEvents,_that.pendingHomework,_that.recentAnnouncements);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_students')  int? totalStudents, @JsonKey(name: 'total_teachers')  int? totalTeachers, @JsonKey(name: 'student_attendance_pct')  double? studentAttendancePct, @JsonKey(name: 'today_teacher_attendance')  TodayTeacherAttendance? todayTeacherAttendance, @JsonKey(name: 'pending_leave_requests')  PendingLeaveCounts? pendingLeaveRequests, @JsonKey(name: 'upcoming_exams')  List<DashboardExam> upcomingExams, @JsonKey(name: 'upcoming_events')  List<SchoolEvent> upcomingEvents, @JsonKey(name: 'pending_homework')  int pendingHomework, @JsonKey(name: 'recent_announcements')  List<SchoolNotice> recentAnnouncements)  $default,) {final _that = this;
switch (_that) {
case _VicePrincipalDashboard():
return $default(_that.totalStudents,_that.totalTeachers,_that.studentAttendancePct,_that.todayTeacherAttendance,_that.pendingLeaveRequests,_that.upcomingExams,_that.upcomingEvents,_that.pendingHomework,_that.recentAnnouncements);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_students')  int? totalStudents, @JsonKey(name: 'total_teachers')  int? totalTeachers, @JsonKey(name: 'student_attendance_pct')  double? studentAttendancePct, @JsonKey(name: 'today_teacher_attendance')  TodayTeacherAttendance? todayTeacherAttendance, @JsonKey(name: 'pending_leave_requests')  PendingLeaveCounts? pendingLeaveRequests, @JsonKey(name: 'upcoming_exams')  List<DashboardExam> upcomingExams, @JsonKey(name: 'upcoming_events')  List<SchoolEvent> upcomingEvents, @JsonKey(name: 'pending_homework')  int pendingHomework, @JsonKey(name: 'recent_announcements')  List<SchoolNotice> recentAnnouncements)?  $default,) {final _that = this;
switch (_that) {
case _VicePrincipalDashboard() when $default != null:
return $default(_that.totalStudents,_that.totalTeachers,_that.studentAttendancePct,_that.todayTeacherAttendance,_that.pendingLeaveRequests,_that.upcomingExams,_that.upcomingEvents,_that.pendingHomework,_that.recentAnnouncements);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VicePrincipalDashboard implements VicePrincipalDashboard {
  const _VicePrincipalDashboard({@JsonKey(name: 'total_students') this.totalStudents, @JsonKey(name: 'total_teachers') this.totalTeachers, @JsonKey(name: 'student_attendance_pct') this.studentAttendancePct, @JsonKey(name: 'today_teacher_attendance') this.todayTeacherAttendance, @JsonKey(name: 'pending_leave_requests') this.pendingLeaveRequests, @JsonKey(name: 'upcoming_exams')  List<DashboardExam> upcomingExams = const <DashboardExam>[], @JsonKey(name: 'upcoming_events')  List<SchoolEvent> upcomingEvents = const <SchoolEvent>[], @JsonKey(name: 'pending_homework') this.pendingHomework = 0, @JsonKey(name: 'recent_announcements')  List<SchoolNotice> recentAnnouncements = const <SchoolNotice>[]}): _upcomingExams = upcomingExams,_upcomingEvents = upcomingEvents,_recentAnnouncements = recentAnnouncements;
  factory _VicePrincipalDashboard.fromJson(Map<String, dynamic> json) => _$VicePrincipalDashboardFromJson(json);

@override@JsonKey(name: 'total_students') final  int? totalStudents;
@override@JsonKey(name: 'total_teachers') final  int? totalTeachers;
@override@JsonKey(name: 'student_attendance_pct') final  double? studentAttendancePct;
@override@JsonKey(name: 'today_teacher_attendance') final  TodayTeacherAttendance? todayTeacherAttendance;
@override@JsonKey(name: 'pending_leave_requests') final  PendingLeaveCounts? pendingLeaveRequests;
 final  List<DashboardExam> _upcomingExams;
@override@JsonKey(name: 'upcoming_exams') List<DashboardExam> get upcomingExams {
  if (_upcomingExams is EqualUnmodifiableListView) return _upcomingExams;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_upcomingExams);
}

 final  List<SchoolEvent> _upcomingEvents;
@override@JsonKey(name: 'upcoming_events') List<SchoolEvent> get upcomingEvents {
  if (_upcomingEvents is EqualUnmodifiableListView) return _upcomingEvents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_upcomingEvents);
}

@override@JsonKey(name: 'pending_homework') final  int pendingHomework;
 final  List<SchoolNotice> _recentAnnouncements;
@override@JsonKey(name: 'recent_announcements') List<SchoolNotice> get recentAnnouncements {
  if (_recentAnnouncements is EqualUnmodifiableListView) return _recentAnnouncements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentAnnouncements);
}


/// Create a copy of VicePrincipalDashboard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VicePrincipalDashboardCopyWith<_VicePrincipalDashboard> get copyWith => __$VicePrincipalDashboardCopyWithImpl<_VicePrincipalDashboard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VicePrincipalDashboardToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VicePrincipalDashboard&&(identical(other.totalStudents, totalStudents) || other.totalStudents == totalStudents)&&(identical(other.totalTeachers, totalTeachers) || other.totalTeachers == totalTeachers)&&(identical(other.studentAttendancePct, studentAttendancePct) || other.studentAttendancePct == studentAttendancePct)&&(identical(other.todayTeacherAttendance, todayTeacherAttendance) || other.todayTeacherAttendance == todayTeacherAttendance)&&(identical(other.pendingLeaveRequests, pendingLeaveRequests) || other.pendingLeaveRequests == pendingLeaveRequests)&&const DeepCollectionEquality().equals(other.upcomingExams, _upcomingExams)&&const DeepCollectionEquality().equals(other.upcomingEvents, _upcomingEvents)&&(identical(other.pendingHomework, pendingHomework) || other.pendingHomework == pendingHomework)&&const DeepCollectionEquality().equals(other.recentAnnouncements, _recentAnnouncements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,totalStudents,totalTeachers,studentAttendancePct,todayTeacherAttendance,pendingLeaveRequests,const DeepCollectionEquality().hash(_upcomingExams),const DeepCollectionEquality().hash(_upcomingEvents),pendingHomework,const DeepCollectionEquality().hash(_recentAnnouncements));
}

@override
String toString() {
    return 'VicePrincipalDashboard(totalStudents: $totalStudents, totalTeachers: $totalTeachers, studentAttendancePct: $studentAttendancePct, todayTeacherAttendance: $todayTeacherAttendance, pendingLeaveRequests: $pendingLeaveRequests, upcomingExams: $upcomingExams, upcomingEvents: $upcomingEvents, pendingHomework: $pendingHomework, recentAnnouncements: $recentAnnouncements)';
}


}

/// @nodoc
abstract mixin class _$VicePrincipalDashboardCopyWith<$Res> implements $VicePrincipalDashboardCopyWith<$Res> {
  factory _$VicePrincipalDashboardCopyWith(_VicePrincipalDashboard value, $Res Function(_VicePrincipalDashboard) _then) = __$VicePrincipalDashboardCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_students') int? totalStudents,@JsonKey(name: 'total_teachers') int? totalTeachers,@JsonKey(name: 'student_attendance_pct') double? studentAttendancePct,@JsonKey(name: 'today_teacher_attendance') TodayTeacherAttendance? todayTeacherAttendance,@JsonKey(name: 'pending_leave_requests') PendingLeaveCounts? pendingLeaveRequests,@JsonKey(name: 'upcoming_exams') List<DashboardExam> upcomingExams,@JsonKey(name: 'upcoming_events') List<SchoolEvent> upcomingEvents,@JsonKey(name: 'pending_homework') int pendingHomework,@JsonKey(name: 'recent_announcements') List<SchoolNotice> recentAnnouncements
});


@override $TodayTeacherAttendanceCopyWith<$Res>? get todayTeacherAttendance;@override $PendingLeaveCountsCopyWith<$Res>? get pendingLeaveRequests;

}
/// @nodoc
class __$VicePrincipalDashboardCopyWithImpl<$Res>
    implements _$VicePrincipalDashboardCopyWith<$Res> {
  __$VicePrincipalDashboardCopyWithImpl(this._self, this._then);

  final _VicePrincipalDashboard _self;
  final $Res Function(_VicePrincipalDashboard) _then;

/// Create a copy of VicePrincipalDashboard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalStudents = freezed,Object? totalTeachers = freezed,Object? studentAttendancePct = freezed,Object? todayTeacherAttendance = freezed,Object? pendingLeaveRequests = freezed,Object? upcomingExams = null,Object? upcomingEvents = null,Object? pendingHomework = null,Object? recentAnnouncements = null,}) {
  return _then(_VicePrincipalDashboard(
totalStudents: freezed == totalStudents ? _self.totalStudents : totalStudents // ignore: cast_nullable_to_non_nullable
as int?,totalTeachers: freezed == totalTeachers ? _self.totalTeachers : totalTeachers // ignore: cast_nullable_to_non_nullable
as int?,studentAttendancePct: freezed == studentAttendancePct ? _self.studentAttendancePct : studentAttendancePct // ignore: cast_nullable_to_non_nullable
as double?,todayTeacherAttendance: freezed == todayTeacherAttendance ? _self.todayTeacherAttendance : todayTeacherAttendance // ignore: cast_nullable_to_non_nullable
as TodayTeacherAttendance?,pendingLeaveRequests: freezed == pendingLeaveRequests ? _self.pendingLeaveRequests : pendingLeaveRequests // ignore: cast_nullable_to_non_nullable
as PendingLeaveCounts?,upcomingExams: null == upcomingExams ? _self._upcomingExams : upcomingExams // ignore: cast_nullable_to_non_nullable
as List<DashboardExam>,upcomingEvents: null == upcomingEvents ? _self._upcomingEvents : upcomingEvents // ignore: cast_nullable_to_non_nullable
as List<SchoolEvent>,pendingHomework: null == pendingHomework ? _self.pendingHomework : pendingHomework // ignore: cast_nullable_to_non_nullable
as int,recentAnnouncements: null == recentAnnouncements ? _self._recentAnnouncements : recentAnnouncements // ignore: cast_nullable_to_non_nullable
as List<SchoolNotice>,
  ));
}

/// Create a copy of VicePrincipalDashboard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TodayTeacherAttendanceCopyWith<$Res>? get todayTeacherAttendance {
    if (_self.todayTeacherAttendance == null) {
    return null;
  }

  return $TodayTeacherAttendanceCopyWith<$Res>(_self.todayTeacherAttendance!, (value) {
    return _then(_self.copyWith(todayTeacherAttendance: value));
  });
}/// Create a copy of VicePrincipalDashboard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PendingLeaveCountsCopyWith<$Res>? get pendingLeaveRequests {
    if (_self.pendingLeaveRequests == null) {
    return null;
  }

  return $PendingLeaveCountsCopyWith<$Res>(_self.pendingLeaveRequests!, (value) {
    return _then(_self.copyWith(pendingLeaveRequests: value));
  });
}
}


/// @nodoc
mixin _$TodayTeacherAttendance {

 int get present; int get total;
/// Create a copy of TodayTeacherAttendance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodayTeacherAttendanceCopyWith<TodayTeacherAttendance> get copyWith => _$TodayTeacherAttendanceCopyWithImpl<TodayTeacherAttendance>(this as TodayTeacherAttendance, _$identity);

  /// Serializes this TodayTeacherAttendance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TodayTeacherAttendance;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodayTeacherAttendance&&(identical(other.present, _this.present) || other.present == _this.present)&&(identical(other.total, _this.total) || other.total == _this.total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TodayTeacherAttendance;
  return Object.hash(runtimeType,_this.present,_this.total);
}

@override
String toString() {
  final _this = this as TodayTeacherAttendance;
  return 'TodayTeacherAttendance(present: ${_this.present}, total: ${_this.total})';
}


}

/// @nodoc
abstract mixin class $TodayTeacherAttendanceCopyWith<$Res>  {
  factory $TodayTeacherAttendanceCopyWith(TodayTeacherAttendance value, $Res Function(TodayTeacherAttendance) _then) = _$TodayTeacherAttendanceCopyWithImpl;
@useResult
$Res call({
 int present, int total
});




}
/// @nodoc
class _$TodayTeacherAttendanceCopyWithImpl<$Res>
    implements $TodayTeacherAttendanceCopyWith<$Res> {
  _$TodayTeacherAttendanceCopyWithImpl(this._self, this._then);

  final TodayTeacherAttendance _self;
  final $Res Function(TodayTeacherAttendance) _then;

/// Create a copy of TodayTeacherAttendance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? present = null,Object? total = null,}) {
  return _then(TodayTeacherAttendance(
present: null == present ? _self.present : present // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TodayTeacherAttendance].
extension TodayTeacherAttendancePatterns on TodayTeacherAttendance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodayTeacherAttendance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodayTeacherAttendance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodayTeacherAttendance value)  $default,){
final _that = this;
switch (_that) {
case _TodayTeacherAttendance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodayTeacherAttendance value)?  $default,){
final _that = this;
switch (_that) {
case _TodayTeacherAttendance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int present,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodayTeacherAttendance() when $default != null:
return $default(_that.present,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int present,  int total)  $default,) {final _that = this;
switch (_that) {
case _TodayTeacherAttendance():
return $default(_that.present,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int present,  int total)?  $default,) {final _that = this;
switch (_that) {
case _TodayTeacherAttendance() when $default != null:
return $default(_that.present,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TodayTeacherAttendance implements TodayTeacherAttendance {
  const _TodayTeacherAttendance({this.present = 0, this.total = 0});
  factory _TodayTeacherAttendance.fromJson(Map<String, dynamic> json) => _$TodayTeacherAttendanceFromJson(json);

@override@JsonKey() final  int present;
@override@JsonKey() final  int total;

/// Create a copy of TodayTeacherAttendance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodayTeacherAttendanceCopyWith<_TodayTeacherAttendance> get copyWith => __$TodayTeacherAttendanceCopyWithImpl<_TodayTeacherAttendance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TodayTeacherAttendanceToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodayTeacherAttendance&&(identical(other.present, present) || other.present == present)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,present,total);
}

@override
String toString() {
    return 'TodayTeacherAttendance(present: $present, total: $total)';
}


}

/// @nodoc
abstract mixin class _$TodayTeacherAttendanceCopyWith<$Res> implements $TodayTeacherAttendanceCopyWith<$Res> {
  factory _$TodayTeacherAttendanceCopyWith(_TodayTeacherAttendance value, $Res Function(_TodayTeacherAttendance) _then) = __$TodayTeacherAttendanceCopyWithImpl;
@override @useResult
$Res call({
 int present, int total
});




}
/// @nodoc
class __$TodayTeacherAttendanceCopyWithImpl<$Res>
    implements _$TodayTeacherAttendanceCopyWith<$Res> {
  __$TodayTeacherAttendanceCopyWithImpl(this._self, this._then);

  final _TodayTeacherAttendance _self;
  final $Res Function(_TodayTeacherAttendance) _then;

/// Create a copy of TodayTeacherAttendance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? present = null,Object? total = null,}) {
  return _then(_TodayTeacherAttendance(
present: null == present ? _self.present : present // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
