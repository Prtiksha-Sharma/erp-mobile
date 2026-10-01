// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'principal_dashboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrincipalDashboard {

@JsonKey(name: 'total_students') int? get totalStudents;@JsonKey(name: 'total_teachers') int? get totalTeachers;@JsonKey(name: 'total_staff') int? get totalStaff;@JsonKey(name: 'today_attendance') Map<String, int> get todayAttendance;@JsonKey(name: 'student_attendance_pct') double? get studentAttendancePct;@JsonKey(name: 'fee_collection_today')@DecimalConverter() Decimal get feeCollectionToday;@JsonKey(name: 'pending_fee_amount')@DecimalConverter() Decimal get pendingFeeAmount;@JsonKey(name: 'pending_leave_requests') PendingLeaveCounts? get pendingLeaveRequests;@JsonKey(name: 'new_admissions') int get newAdmissions;@JsonKey(name: 'upcoming_exams') List<DashboardExam> get upcomingExams; List<SchoolNotice> get announcements;@JsonKey(name: 'upcoming_events') List<SchoolEvent> get upcomingEvents;@JsonKey(name: 'class_teacher_vacancy') ClassTeacherVacancy? get classTeacherVacancy;@JsonKey(name: 'complaints_open') int get complaintsOpen;
/// Create a copy of PrincipalDashboard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrincipalDashboardCopyWith<PrincipalDashboard> get copyWith => _$PrincipalDashboardCopyWithImpl<PrincipalDashboard>(this as PrincipalDashboard, _$identity);

  /// Serializes this PrincipalDashboard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PrincipalDashboard;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrincipalDashboard&&(identical(other.totalStudents, _this.totalStudents) || other.totalStudents == _this.totalStudents)&&(identical(other.totalTeachers, _this.totalTeachers) || other.totalTeachers == _this.totalTeachers)&&(identical(other.totalStaff, _this.totalStaff) || other.totalStaff == _this.totalStaff)&&const DeepCollectionEquality().equals(other.todayAttendance, _this.todayAttendance)&&(identical(other.studentAttendancePct, _this.studentAttendancePct) || other.studentAttendancePct == _this.studentAttendancePct)&&(identical(other.feeCollectionToday, _this.feeCollectionToday) || other.feeCollectionToday == _this.feeCollectionToday)&&(identical(other.pendingFeeAmount, _this.pendingFeeAmount) || other.pendingFeeAmount == _this.pendingFeeAmount)&&(identical(other.pendingLeaveRequests, _this.pendingLeaveRequests) || other.pendingLeaveRequests == _this.pendingLeaveRequests)&&(identical(other.newAdmissions, _this.newAdmissions) || other.newAdmissions == _this.newAdmissions)&&const DeepCollectionEquality().equals(other.upcomingExams, _this.upcomingExams)&&const DeepCollectionEquality().equals(other.announcements, _this.announcements)&&const DeepCollectionEquality().equals(other.upcomingEvents, _this.upcomingEvents)&&(identical(other.classTeacherVacancy, _this.classTeacherVacancy) || other.classTeacherVacancy == _this.classTeacherVacancy)&&(identical(other.complaintsOpen, _this.complaintsOpen) || other.complaintsOpen == _this.complaintsOpen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PrincipalDashboard;
  return Object.hash(runtimeType,_this.totalStudents,_this.totalTeachers,_this.totalStaff,const DeepCollectionEquality().hash(_this.todayAttendance),_this.studentAttendancePct,_this.feeCollectionToday,_this.pendingFeeAmount,_this.pendingLeaveRequests,_this.newAdmissions,const DeepCollectionEquality().hash(_this.upcomingExams),const DeepCollectionEquality().hash(_this.announcements),const DeepCollectionEquality().hash(_this.upcomingEvents),_this.classTeacherVacancy,_this.complaintsOpen);
}

@override
String toString() {
  final _this = this as PrincipalDashboard;
  return 'PrincipalDashboard(totalStudents: ${_this.totalStudents}, totalTeachers: ${_this.totalTeachers}, totalStaff: ${_this.totalStaff}, todayAttendance: ${_this.todayAttendance}, studentAttendancePct: ${_this.studentAttendancePct}, feeCollectionToday: ${_this.feeCollectionToday}, pendingFeeAmount: ${_this.pendingFeeAmount}, pendingLeaveRequests: ${_this.pendingLeaveRequests}, newAdmissions: ${_this.newAdmissions}, upcomingExams: ${_this.upcomingExams}, announcements: ${_this.announcements}, upcomingEvents: ${_this.upcomingEvents}, classTeacherVacancy: ${_this.classTeacherVacancy}, complaintsOpen: ${_this.complaintsOpen})';
}


}

/// @nodoc
abstract mixin class $PrincipalDashboardCopyWith<$Res>  {
  factory $PrincipalDashboardCopyWith(PrincipalDashboard value, $Res Function(PrincipalDashboard) _then) = _$PrincipalDashboardCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_students') int? totalStudents,@JsonKey(name: 'total_teachers') int? totalTeachers,@JsonKey(name: 'total_staff') int? totalStaff,@JsonKey(name: 'today_attendance') Map<String, int> todayAttendance,@JsonKey(name: 'student_attendance_pct') double? studentAttendancePct,@JsonKey(name: 'fee_collection_today')@DecimalConverter() Decimal feeCollectionToday,@JsonKey(name: 'pending_fee_amount')@DecimalConverter() Decimal pendingFeeAmount,@JsonKey(name: 'pending_leave_requests') PendingLeaveCounts? pendingLeaveRequests,@JsonKey(name: 'new_admissions') int newAdmissions,@JsonKey(name: 'upcoming_exams') List<DashboardExam> upcomingExams, List<SchoolNotice> announcements,@JsonKey(name: 'upcoming_events') List<SchoolEvent> upcomingEvents,@JsonKey(name: 'class_teacher_vacancy') ClassTeacherVacancy? classTeacherVacancy,@JsonKey(name: 'complaints_open') int complaintsOpen
});


$PendingLeaveCountsCopyWith<$Res>? get pendingLeaveRequests;$ClassTeacherVacancyCopyWith<$Res>? get classTeacherVacancy;

}
/// @nodoc
class _$PrincipalDashboardCopyWithImpl<$Res>
    implements $PrincipalDashboardCopyWith<$Res> {
  _$PrincipalDashboardCopyWithImpl(this._self, this._then);

  final PrincipalDashboard _self;
  final $Res Function(PrincipalDashboard) _then;

/// Create a copy of PrincipalDashboard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalStudents = freezed,Object? totalTeachers = freezed,Object? totalStaff = freezed,Object? todayAttendance = null,Object? studentAttendancePct = freezed,Object? feeCollectionToday = null,Object? pendingFeeAmount = null,Object? pendingLeaveRequests = freezed,Object? newAdmissions = null,Object? upcomingExams = null,Object? announcements = null,Object? upcomingEvents = null,Object? classTeacherVacancy = freezed,Object? complaintsOpen = null,}) {
  return _then(PrincipalDashboard(
totalStudents: freezed == totalStudents ? _self.totalStudents : totalStudents // ignore: cast_nullable_to_non_nullable
as int?,totalTeachers: freezed == totalTeachers ? _self.totalTeachers : totalTeachers // ignore: cast_nullable_to_non_nullable
as int?,totalStaff: freezed == totalStaff ? _self.totalStaff : totalStaff // ignore: cast_nullable_to_non_nullable
as int?,todayAttendance: null == todayAttendance ? _self.todayAttendance : todayAttendance // ignore: cast_nullable_to_non_nullable
as Map<String, int>,studentAttendancePct: freezed == studentAttendancePct ? _self.studentAttendancePct : studentAttendancePct // ignore: cast_nullable_to_non_nullable
as double?,feeCollectionToday: null == feeCollectionToday ? _self.feeCollectionToday : feeCollectionToday // ignore: cast_nullable_to_non_nullable
as Decimal,pendingFeeAmount: null == pendingFeeAmount ? _self.pendingFeeAmount : pendingFeeAmount // ignore: cast_nullable_to_non_nullable
as Decimal,pendingLeaveRequests: freezed == pendingLeaveRequests ? _self.pendingLeaveRequests : pendingLeaveRequests // ignore: cast_nullable_to_non_nullable
as PendingLeaveCounts?,newAdmissions: null == newAdmissions ? _self.newAdmissions : newAdmissions // ignore: cast_nullable_to_non_nullable
as int,upcomingExams: null == upcomingExams ? _self.upcomingExams : upcomingExams // ignore: cast_nullable_to_non_nullable
as List<DashboardExam>,announcements: null == announcements ? _self.announcements : announcements // ignore: cast_nullable_to_non_nullable
as List<SchoolNotice>,upcomingEvents: null == upcomingEvents ? _self.upcomingEvents : upcomingEvents // ignore: cast_nullable_to_non_nullable
as List<SchoolEvent>,classTeacherVacancy: freezed == classTeacherVacancy ? _self.classTeacherVacancy : classTeacherVacancy // ignore: cast_nullable_to_non_nullable
as ClassTeacherVacancy?,complaintsOpen: null == complaintsOpen ? _self.complaintsOpen : complaintsOpen // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of PrincipalDashboard
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
}/// Create a copy of PrincipalDashboard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassTeacherVacancyCopyWith<$Res>? get classTeacherVacancy {
    if (_self.classTeacherVacancy == null) {
    return null;
  }

  return $ClassTeacherVacancyCopyWith<$Res>(_self.classTeacherVacancy!, (value) {
    return _then(_self.copyWith(classTeacherVacancy: value));
  });
}
}


/// Adds pattern-matching-related methods to [PrincipalDashboard].
extension PrincipalDashboardPatterns on PrincipalDashboard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrincipalDashboard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrincipalDashboard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrincipalDashboard value)  $default,){
final _that = this;
switch (_that) {
case _PrincipalDashboard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrincipalDashboard value)?  $default,){
final _that = this;
switch (_that) {
case _PrincipalDashboard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_students')  int? totalStudents, @JsonKey(name: 'total_teachers')  int? totalTeachers, @JsonKey(name: 'total_staff')  int? totalStaff, @JsonKey(name: 'today_attendance')  Map<String, int> todayAttendance, @JsonKey(name: 'student_attendance_pct')  double? studentAttendancePct, @JsonKey(name: 'fee_collection_today')@DecimalConverter()  Decimal feeCollectionToday, @JsonKey(name: 'pending_fee_amount')@DecimalConverter()  Decimal pendingFeeAmount, @JsonKey(name: 'pending_leave_requests')  PendingLeaveCounts? pendingLeaveRequests, @JsonKey(name: 'new_admissions')  int newAdmissions, @JsonKey(name: 'upcoming_exams')  List<DashboardExam> upcomingExams,  List<SchoolNotice> announcements, @JsonKey(name: 'upcoming_events')  List<SchoolEvent> upcomingEvents, @JsonKey(name: 'class_teacher_vacancy')  ClassTeacherVacancy? classTeacherVacancy, @JsonKey(name: 'complaints_open')  int complaintsOpen)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrincipalDashboard() when $default != null:
return $default(_that.totalStudents,_that.totalTeachers,_that.totalStaff,_that.todayAttendance,_that.studentAttendancePct,_that.feeCollectionToday,_that.pendingFeeAmount,_that.pendingLeaveRequests,_that.newAdmissions,_that.upcomingExams,_that.announcements,_that.upcomingEvents,_that.classTeacherVacancy,_that.complaintsOpen);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_students')  int? totalStudents, @JsonKey(name: 'total_teachers')  int? totalTeachers, @JsonKey(name: 'total_staff')  int? totalStaff, @JsonKey(name: 'today_attendance')  Map<String, int> todayAttendance, @JsonKey(name: 'student_attendance_pct')  double? studentAttendancePct, @JsonKey(name: 'fee_collection_today')@DecimalConverter()  Decimal feeCollectionToday, @JsonKey(name: 'pending_fee_amount')@DecimalConverter()  Decimal pendingFeeAmount, @JsonKey(name: 'pending_leave_requests')  PendingLeaveCounts? pendingLeaveRequests, @JsonKey(name: 'new_admissions')  int newAdmissions, @JsonKey(name: 'upcoming_exams')  List<DashboardExam> upcomingExams,  List<SchoolNotice> announcements, @JsonKey(name: 'upcoming_events')  List<SchoolEvent> upcomingEvents, @JsonKey(name: 'class_teacher_vacancy')  ClassTeacherVacancy? classTeacherVacancy, @JsonKey(name: 'complaints_open')  int complaintsOpen)  $default,) {final _that = this;
switch (_that) {
case _PrincipalDashboard():
return $default(_that.totalStudents,_that.totalTeachers,_that.totalStaff,_that.todayAttendance,_that.studentAttendancePct,_that.feeCollectionToday,_that.pendingFeeAmount,_that.pendingLeaveRequests,_that.newAdmissions,_that.upcomingExams,_that.announcements,_that.upcomingEvents,_that.classTeacherVacancy,_that.complaintsOpen);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_students')  int? totalStudents, @JsonKey(name: 'total_teachers')  int? totalTeachers, @JsonKey(name: 'total_staff')  int? totalStaff, @JsonKey(name: 'today_attendance')  Map<String, int> todayAttendance, @JsonKey(name: 'student_attendance_pct')  double? studentAttendancePct, @JsonKey(name: 'fee_collection_today')@DecimalConverter()  Decimal feeCollectionToday, @JsonKey(name: 'pending_fee_amount')@DecimalConverter()  Decimal pendingFeeAmount, @JsonKey(name: 'pending_leave_requests')  PendingLeaveCounts? pendingLeaveRequests, @JsonKey(name: 'new_admissions')  int newAdmissions, @JsonKey(name: 'upcoming_exams')  List<DashboardExam> upcomingExams,  List<SchoolNotice> announcements, @JsonKey(name: 'upcoming_events')  List<SchoolEvent> upcomingEvents, @JsonKey(name: 'class_teacher_vacancy')  ClassTeacherVacancy? classTeacherVacancy, @JsonKey(name: 'complaints_open')  int complaintsOpen)?  $default,) {final _that = this;
switch (_that) {
case _PrincipalDashboard() when $default != null:
return $default(_that.totalStudents,_that.totalTeachers,_that.totalStaff,_that.todayAttendance,_that.studentAttendancePct,_that.feeCollectionToday,_that.pendingFeeAmount,_that.pendingLeaveRequests,_that.newAdmissions,_that.upcomingExams,_that.announcements,_that.upcomingEvents,_that.classTeacherVacancy,_that.complaintsOpen);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PrincipalDashboard implements PrincipalDashboard {
  const _PrincipalDashboard({@JsonKey(name: 'total_students') this.totalStudents, @JsonKey(name: 'total_teachers') this.totalTeachers, @JsonKey(name: 'total_staff') this.totalStaff, @JsonKey(name: 'today_attendance')  Map<String, int> todayAttendance = const <String, int>{}, @JsonKey(name: 'student_attendance_pct') this.studentAttendancePct, @JsonKey(name: 'fee_collection_today')@DecimalConverter() required this.feeCollectionToday, @JsonKey(name: 'pending_fee_amount')@DecimalConverter() required this.pendingFeeAmount, @JsonKey(name: 'pending_leave_requests') this.pendingLeaveRequests, @JsonKey(name: 'new_admissions') this.newAdmissions = 0, @JsonKey(name: 'upcoming_exams')  List<DashboardExam> upcomingExams = const <DashboardExam>[],  List<SchoolNotice> announcements = const <SchoolNotice>[], @JsonKey(name: 'upcoming_events')  List<SchoolEvent> upcomingEvents = const <SchoolEvent>[], @JsonKey(name: 'class_teacher_vacancy') this.classTeacherVacancy, @JsonKey(name: 'complaints_open') this.complaintsOpen = 0}): _todayAttendance = todayAttendance,_upcomingExams = upcomingExams,_announcements = announcements,_upcomingEvents = upcomingEvents;
  factory _PrincipalDashboard.fromJson(Map<String, dynamic> json) => _$PrincipalDashboardFromJson(json);

@override@JsonKey(name: 'total_students') final  int? totalStudents;
@override@JsonKey(name: 'total_teachers') final  int? totalTeachers;
@override@JsonKey(name: 'total_staff') final  int? totalStaff;
 final  Map<String, int> _todayAttendance;
@override@JsonKey(name: 'today_attendance') Map<String, int> get todayAttendance {
  if (_todayAttendance is EqualUnmodifiableMapView) return _todayAttendance;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_todayAttendance);
}

@override@JsonKey(name: 'student_attendance_pct') final  double? studentAttendancePct;
@override@JsonKey(name: 'fee_collection_today')@DecimalConverter() final  Decimal feeCollectionToday;
@override@JsonKey(name: 'pending_fee_amount')@DecimalConverter() final  Decimal pendingFeeAmount;
@override@JsonKey(name: 'pending_leave_requests') final  PendingLeaveCounts? pendingLeaveRequests;
@override@JsonKey(name: 'new_admissions') final  int newAdmissions;
 final  List<DashboardExam> _upcomingExams;
@override@JsonKey(name: 'upcoming_exams') List<DashboardExam> get upcomingExams {
  if (_upcomingExams is EqualUnmodifiableListView) return _upcomingExams;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_upcomingExams);
}

 final  List<SchoolNotice> _announcements;
@override@JsonKey() List<SchoolNotice> get announcements {
  if (_announcements is EqualUnmodifiableListView) return _announcements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_announcements);
}

 final  List<SchoolEvent> _upcomingEvents;
@override@JsonKey(name: 'upcoming_events') List<SchoolEvent> get upcomingEvents {
  if (_upcomingEvents is EqualUnmodifiableListView) return _upcomingEvents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_upcomingEvents);
}

@override@JsonKey(name: 'class_teacher_vacancy') final  ClassTeacherVacancy? classTeacherVacancy;
@override@JsonKey(name: 'complaints_open') final  int complaintsOpen;

/// Create a copy of PrincipalDashboard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrincipalDashboardCopyWith<_PrincipalDashboard> get copyWith => __$PrincipalDashboardCopyWithImpl<_PrincipalDashboard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrincipalDashboardToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrincipalDashboard&&(identical(other.totalStudents, totalStudents) || other.totalStudents == totalStudents)&&(identical(other.totalTeachers, totalTeachers) || other.totalTeachers == totalTeachers)&&(identical(other.totalStaff, totalStaff) || other.totalStaff == totalStaff)&&const DeepCollectionEquality().equals(other.todayAttendance, _todayAttendance)&&(identical(other.studentAttendancePct, studentAttendancePct) || other.studentAttendancePct == studentAttendancePct)&&(identical(other.feeCollectionToday, feeCollectionToday) || other.feeCollectionToday == feeCollectionToday)&&(identical(other.pendingFeeAmount, pendingFeeAmount) || other.pendingFeeAmount == pendingFeeAmount)&&(identical(other.pendingLeaveRequests, pendingLeaveRequests) || other.pendingLeaveRequests == pendingLeaveRequests)&&(identical(other.newAdmissions, newAdmissions) || other.newAdmissions == newAdmissions)&&const DeepCollectionEquality().equals(other.upcomingExams, _upcomingExams)&&const DeepCollectionEquality().equals(other.announcements, _announcements)&&const DeepCollectionEquality().equals(other.upcomingEvents, _upcomingEvents)&&(identical(other.classTeacherVacancy, classTeacherVacancy) || other.classTeacherVacancy == classTeacherVacancy)&&(identical(other.complaintsOpen, complaintsOpen) || other.complaintsOpen == complaintsOpen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,totalStudents,totalTeachers,totalStaff,const DeepCollectionEquality().hash(_todayAttendance),studentAttendancePct,feeCollectionToday,pendingFeeAmount,pendingLeaveRequests,newAdmissions,const DeepCollectionEquality().hash(_upcomingExams),const DeepCollectionEquality().hash(_announcements),const DeepCollectionEquality().hash(_upcomingEvents),classTeacherVacancy,complaintsOpen);
}

@override
String toString() {
    return 'PrincipalDashboard(totalStudents: $totalStudents, totalTeachers: $totalTeachers, totalStaff: $totalStaff, todayAttendance: $todayAttendance, studentAttendancePct: $studentAttendancePct, feeCollectionToday: $feeCollectionToday, pendingFeeAmount: $pendingFeeAmount, pendingLeaveRequests: $pendingLeaveRequests, newAdmissions: $newAdmissions, upcomingExams: $upcomingExams, announcements: $announcements, upcomingEvents: $upcomingEvents, classTeacherVacancy: $classTeacherVacancy, complaintsOpen: $complaintsOpen)';
}


}

/// @nodoc
abstract mixin class _$PrincipalDashboardCopyWith<$Res> implements $PrincipalDashboardCopyWith<$Res> {
  factory _$PrincipalDashboardCopyWith(_PrincipalDashboard value, $Res Function(_PrincipalDashboard) _then) = __$PrincipalDashboardCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_students') int? totalStudents,@JsonKey(name: 'total_teachers') int? totalTeachers,@JsonKey(name: 'total_staff') int? totalStaff,@JsonKey(name: 'today_attendance') Map<String, int> todayAttendance,@JsonKey(name: 'student_attendance_pct') double? studentAttendancePct,@JsonKey(name: 'fee_collection_today')@DecimalConverter() Decimal feeCollectionToday,@JsonKey(name: 'pending_fee_amount')@DecimalConverter() Decimal pendingFeeAmount,@JsonKey(name: 'pending_leave_requests') PendingLeaveCounts? pendingLeaveRequests,@JsonKey(name: 'new_admissions') int newAdmissions,@JsonKey(name: 'upcoming_exams') List<DashboardExam> upcomingExams, List<SchoolNotice> announcements,@JsonKey(name: 'upcoming_events') List<SchoolEvent> upcomingEvents,@JsonKey(name: 'class_teacher_vacancy') ClassTeacherVacancy? classTeacherVacancy,@JsonKey(name: 'complaints_open') int complaintsOpen
});


@override $PendingLeaveCountsCopyWith<$Res>? get pendingLeaveRequests;@override $ClassTeacherVacancyCopyWith<$Res>? get classTeacherVacancy;

}
/// @nodoc
class __$PrincipalDashboardCopyWithImpl<$Res>
    implements _$PrincipalDashboardCopyWith<$Res> {
  __$PrincipalDashboardCopyWithImpl(this._self, this._then);

  final _PrincipalDashboard _self;
  final $Res Function(_PrincipalDashboard) _then;

/// Create a copy of PrincipalDashboard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalStudents = freezed,Object? totalTeachers = freezed,Object? totalStaff = freezed,Object? todayAttendance = null,Object? studentAttendancePct = freezed,Object? feeCollectionToday = null,Object? pendingFeeAmount = null,Object? pendingLeaveRequests = freezed,Object? newAdmissions = null,Object? upcomingExams = null,Object? announcements = null,Object? upcomingEvents = null,Object? classTeacherVacancy = freezed,Object? complaintsOpen = null,}) {
  return _then(_PrincipalDashboard(
totalStudents: freezed == totalStudents ? _self.totalStudents : totalStudents // ignore: cast_nullable_to_non_nullable
as int?,totalTeachers: freezed == totalTeachers ? _self.totalTeachers : totalTeachers // ignore: cast_nullable_to_non_nullable
as int?,totalStaff: freezed == totalStaff ? _self.totalStaff : totalStaff // ignore: cast_nullable_to_non_nullable
as int?,todayAttendance: null == todayAttendance ? _self._todayAttendance : todayAttendance // ignore: cast_nullable_to_non_nullable
as Map<String, int>,studentAttendancePct: freezed == studentAttendancePct ? _self.studentAttendancePct : studentAttendancePct // ignore: cast_nullable_to_non_nullable
as double?,feeCollectionToday: null == feeCollectionToday ? _self.feeCollectionToday : feeCollectionToday // ignore: cast_nullable_to_non_nullable
as Decimal,pendingFeeAmount: null == pendingFeeAmount ? _self.pendingFeeAmount : pendingFeeAmount // ignore: cast_nullable_to_non_nullable
as Decimal,pendingLeaveRequests: freezed == pendingLeaveRequests ? _self.pendingLeaveRequests : pendingLeaveRequests // ignore: cast_nullable_to_non_nullable
as PendingLeaveCounts?,newAdmissions: null == newAdmissions ? _self.newAdmissions : newAdmissions // ignore: cast_nullable_to_non_nullable
as int,upcomingExams: null == upcomingExams ? _self._upcomingExams : upcomingExams // ignore: cast_nullable_to_non_nullable
as List<DashboardExam>,announcements: null == announcements ? _self._announcements : announcements // ignore: cast_nullable_to_non_nullable
as List<SchoolNotice>,upcomingEvents: null == upcomingEvents ? _self._upcomingEvents : upcomingEvents // ignore: cast_nullable_to_non_nullable
as List<SchoolEvent>,classTeacherVacancy: freezed == classTeacherVacancy ? _self.classTeacherVacancy : classTeacherVacancy // ignore: cast_nullable_to_non_nullable
as ClassTeacherVacancy?,complaintsOpen: null == complaintsOpen ? _self.complaintsOpen : complaintsOpen // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of PrincipalDashboard
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
}/// Create a copy of PrincipalDashboard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassTeacherVacancyCopyWith<$Res>? get classTeacherVacancy {
    if (_self.classTeacherVacancy == null) {
    return null;
  }

  return $ClassTeacherVacancyCopyWith<$Res>(_self.classTeacherVacancy!, (value) {
    return _then(_self.copyWith(classTeacherVacancy: value));
  });
}
}


/// @nodoc
mixin _$PendingLeaveCounts {

 int get staff; int get student;
/// Create a copy of PendingLeaveCounts
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendingLeaveCountsCopyWith<PendingLeaveCounts> get copyWith => _$PendingLeaveCountsCopyWithImpl<PendingLeaveCounts>(this as PendingLeaveCounts, _$identity);

  /// Serializes this PendingLeaveCounts to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PendingLeaveCounts;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingLeaveCounts&&(identical(other.staff, _this.staff) || other.staff == _this.staff)&&(identical(other.student, _this.student) || other.student == _this.student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PendingLeaveCounts;
  return Object.hash(runtimeType,_this.staff,_this.student);
}

@override
String toString() {
  final _this = this as PendingLeaveCounts;
  return 'PendingLeaveCounts(staff: ${_this.staff}, student: ${_this.student})';
}


}

/// @nodoc
abstract mixin class $PendingLeaveCountsCopyWith<$Res>  {
  factory $PendingLeaveCountsCopyWith(PendingLeaveCounts value, $Res Function(PendingLeaveCounts) _then) = _$PendingLeaveCountsCopyWithImpl;
@useResult
$Res call({
 int staff, int student
});




}
/// @nodoc
class _$PendingLeaveCountsCopyWithImpl<$Res>
    implements $PendingLeaveCountsCopyWith<$Res> {
  _$PendingLeaveCountsCopyWithImpl(this._self, this._then);

  final PendingLeaveCounts _self;
  final $Res Function(PendingLeaveCounts) _then;

/// Create a copy of PendingLeaveCounts
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staff = null,Object? student = null,}) {
  return _then(PendingLeaveCounts(
staff: null == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as int,student: null == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PendingLeaveCounts].
extension PendingLeaveCountsPatterns on PendingLeaveCounts {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PendingLeaveCounts value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PendingLeaveCounts() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PendingLeaveCounts value)  $default,){
final _that = this;
switch (_that) {
case _PendingLeaveCounts():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PendingLeaveCounts value)?  $default,){
final _that = this;
switch (_that) {
case _PendingLeaveCounts() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int staff,  int student)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PendingLeaveCounts() when $default != null:
return $default(_that.staff,_that.student);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int staff,  int student)  $default,) {final _that = this;
switch (_that) {
case _PendingLeaveCounts():
return $default(_that.staff,_that.student);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int staff,  int student)?  $default,) {final _that = this;
switch (_that) {
case _PendingLeaveCounts() when $default != null:
return $default(_that.staff,_that.student);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PendingLeaveCounts implements PendingLeaveCounts {
  const _PendingLeaveCounts({this.staff = 0, this.student = 0});
  factory _PendingLeaveCounts.fromJson(Map<String, dynamic> json) => _$PendingLeaveCountsFromJson(json);

@override@JsonKey() final  int staff;
@override@JsonKey() final  int student;

/// Create a copy of PendingLeaveCounts
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PendingLeaveCountsCopyWith<_PendingLeaveCounts> get copyWith => __$PendingLeaveCountsCopyWithImpl<_PendingLeaveCounts>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PendingLeaveCountsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PendingLeaveCounts&&(identical(other.staff, staff) || other.staff == staff)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staff,student);
}

@override
String toString() {
    return 'PendingLeaveCounts(staff: $staff, student: $student)';
}


}

/// @nodoc
abstract mixin class _$PendingLeaveCountsCopyWith<$Res> implements $PendingLeaveCountsCopyWith<$Res> {
  factory _$PendingLeaveCountsCopyWith(_PendingLeaveCounts value, $Res Function(_PendingLeaveCounts) _then) = __$PendingLeaveCountsCopyWithImpl;
@override @useResult
$Res call({
 int staff, int student
});




}
/// @nodoc
class __$PendingLeaveCountsCopyWithImpl<$Res>
    implements _$PendingLeaveCountsCopyWith<$Res> {
  __$PendingLeaveCountsCopyWithImpl(this._self, this._then);

  final _PendingLeaveCounts _self;
  final $Res Function(_PendingLeaveCounts) _then;

/// Create a copy of PendingLeaveCounts
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staff = null,Object? student = null,}) {
  return _then(_PendingLeaveCounts(
staff: null == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as int,student: null == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$DashboardExam {

@JsonKey(name: 'exam_id') String get examId;@JsonKey(name: 'exam_name') String get examName;@JsonKey(name: 'start_date') DateTime? get startDate;@JsonKey(name: 'exam_type') String? get examType;
/// Create a copy of DashboardExam
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardExamCopyWith<DashboardExam> get copyWith => _$DashboardExamCopyWithImpl<DashboardExam>(this as DashboardExam, _$identity);

  /// Serializes this DashboardExam to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DashboardExam;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardExam&&(identical(other.examId, _this.examId) || other.examId == _this.examId)&&(identical(other.examName, _this.examName) || other.examName == _this.examName)&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.examType, _this.examType) || other.examType == _this.examType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DashboardExam;
  return Object.hash(runtimeType,_this.examId,_this.examName,_this.startDate,_this.examType);
}

@override
String toString() {
  final _this = this as DashboardExam;
  return 'DashboardExam(examId: ${_this.examId}, examName: ${_this.examName}, startDate: ${_this.startDate}, examType: ${_this.examType})';
}


}

/// @nodoc
abstract mixin class $DashboardExamCopyWith<$Res>  {
  factory $DashboardExamCopyWith(DashboardExam value, $Res Function(DashboardExam) _then) = _$DashboardExamCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'exam_id') String examId,@JsonKey(name: 'exam_name') String examName,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'exam_type') String? examType
});




}
/// @nodoc
class _$DashboardExamCopyWithImpl<$Res>
    implements $DashboardExamCopyWith<$Res> {
  _$DashboardExamCopyWithImpl(this._self, this._then);

  final DashboardExam _self;
  final $Res Function(DashboardExam) _then;

/// Create a copy of DashboardExam
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? examId = null,Object? examName = null,Object? startDate = freezed,Object? examType = freezed,}) {
  return _then(DashboardExam(
examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,examName: null == examName ? _self.examName : examName // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,examType: freezed == examType ? _self.examType : examType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardExam].
extension DashboardExamPatterns on DashboardExam {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardExam value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardExam() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardExam value)  $default,){
final _that = this;
switch (_that) {
case _DashboardExam():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardExam value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardExam() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_id')  String examId, @JsonKey(name: 'exam_name')  String examName, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'exam_type')  String? examType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardExam() when $default != null:
return $default(_that.examId,_that.examName,_that.startDate,_that.examType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_id')  String examId, @JsonKey(name: 'exam_name')  String examName, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'exam_type')  String? examType)  $default,) {final _that = this;
switch (_that) {
case _DashboardExam():
return $default(_that.examId,_that.examName,_that.startDate,_that.examType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'exam_id')  String examId, @JsonKey(name: 'exam_name')  String examName, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'exam_type')  String? examType)?  $default,) {final _that = this;
switch (_that) {
case _DashboardExam() when $default != null:
return $default(_that.examId,_that.examName,_that.startDate,_that.examType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardExam implements DashboardExam {
  const _DashboardExam({@JsonKey(name: 'exam_id') required this.examId, @JsonKey(name: 'exam_name') required this.examName, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'exam_type') this.examType});
  factory _DashboardExam.fromJson(Map<String, dynamic> json) => _$DashboardExamFromJson(json);

@override@JsonKey(name: 'exam_id') final  String examId;
@override@JsonKey(name: 'exam_name') final  String examName;
@override@JsonKey(name: 'start_date') final  DateTime? startDate;
@override@JsonKey(name: 'exam_type') final  String? examType;

/// Create a copy of DashboardExam
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardExamCopyWith<_DashboardExam> get copyWith => __$DashboardExamCopyWithImpl<_DashboardExam>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardExamToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardExam&&(identical(other.examId, examId) || other.examId == examId)&&(identical(other.examName, examName) || other.examName == examName)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.examType, examType) || other.examType == examType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,examId,examName,startDate,examType);
}

@override
String toString() {
    return 'DashboardExam(examId: $examId, examName: $examName, startDate: $startDate, examType: $examType)';
}


}

/// @nodoc
abstract mixin class _$DashboardExamCopyWith<$Res> implements $DashboardExamCopyWith<$Res> {
  factory _$DashboardExamCopyWith(_DashboardExam value, $Res Function(_DashboardExam) _then) = __$DashboardExamCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'exam_id') String examId,@JsonKey(name: 'exam_name') String examName,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'exam_type') String? examType
});




}
/// @nodoc
class __$DashboardExamCopyWithImpl<$Res>
    implements _$DashboardExamCopyWith<$Res> {
  __$DashboardExamCopyWithImpl(this._self, this._then);

  final _DashboardExam _self;
  final $Res Function(_DashboardExam) _then;

/// Create a copy of DashboardExam
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? examId = null,Object? examName = null,Object? startDate = freezed,Object? examType = freezed,}) {
  return _then(_DashboardExam(
examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,examName: null == examName ? _self.examName : examName // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,examType: freezed == examType ? _self.examType : examType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ClassTeacherVacancy {

@JsonKey(name: 'total_sections') int get totalSections; int get unassigned;
/// Create a copy of ClassTeacherVacancy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassTeacherVacancyCopyWith<ClassTeacherVacancy> get copyWith => _$ClassTeacherVacancyCopyWithImpl<ClassTeacherVacancy>(this as ClassTeacherVacancy, _$identity);

  /// Serializes this ClassTeacherVacancy to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassTeacherVacancy;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassTeacherVacancy&&(identical(other.totalSections, _this.totalSections) || other.totalSections == _this.totalSections)&&(identical(other.unassigned, _this.unassigned) || other.unassigned == _this.unassigned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassTeacherVacancy;
  return Object.hash(runtimeType,_this.totalSections,_this.unassigned);
}

@override
String toString() {
  final _this = this as ClassTeacherVacancy;
  return 'ClassTeacherVacancy(totalSections: ${_this.totalSections}, unassigned: ${_this.unassigned})';
}


}

/// @nodoc
abstract mixin class $ClassTeacherVacancyCopyWith<$Res>  {
  factory $ClassTeacherVacancyCopyWith(ClassTeacherVacancy value, $Res Function(ClassTeacherVacancy) _then) = _$ClassTeacherVacancyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_sections') int totalSections, int unassigned
});




}
/// @nodoc
class _$ClassTeacherVacancyCopyWithImpl<$Res>
    implements $ClassTeacherVacancyCopyWith<$Res> {
  _$ClassTeacherVacancyCopyWithImpl(this._self, this._then);

  final ClassTeacherVacancy _self;
  final $Res Function(ClassTeacherVacancy) _then;

/// Create a copy of ClassTeacherVacancy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalSections = null,Object? unassigned = null,}) {
  return _then(ClassTeacherVacancy(
totalSections: null == totalSections ? _self.totalSections : totalSections // ignore: cast_nullable_to_non_nullable
as int,unassigned: null == unassigned ? _self.unassigned : unassigned // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassTeacherVacancy].
extension ClassTeacherVacancyPatterns on ClassTeacherVacancy {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassTeacherVacancy value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassTeacherVacancy() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassTeacherVacancy value)  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherVacancy():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassTeacherVacancy value)?  $default,){
final _that = this;
switch (_that) {
case _ClassTeacherVacancy() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_sections')  int totalSections,  int unassigned)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassTeacherVacancy() when $default != null:
return $default(_that.totalSections,_that.unassigned);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_sections')  int totalSections,  int unassigned)  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherVacancy():
return $default(_that.totalSections,_that.unassigned);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_sections')  int totalSections,  int unassigned)?  $default,) {final _that = this;
switch (_that) {
case _ClassTeacherVacancy() when $default != null:
return $default(_that.totalSections,_that.unassigned);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassTeacherVacancy implements ClassTeacherVacancy {
  const _ClassTeacherVacancy({@JsonKey(name: 'total_sections') this.totalSections = 0, this.unassigned = 0});
  factory _ClassTeacherVacancy.fromJson(Map<String, dynamic> json) => _$ClassTeacherVacancyFromJson(json);

@override@JsonKey(name: 'total_sections') final  int totalSections;
@override@JsonKey() final  int unassigned;

/// Create a copy of ClassTeacherVacancy
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassTeacherVacancyCopyWith<_ClassTeacherVacancy> get copyWith => __$ClassTeacherVacancyCopyWithImpl<_ClassTeacherVacancy>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassTeacherVacancyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassTeacherVacancy&&(identical(other.totalSections, totalSections) || other.totalSections == totalSections)&&(identical(other.unassigned, unassigned) || other.unassigned == unassigned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,totalSections,unassigned);
}

@override
String toString() {
    return 'ClassTeacherVacancy(totalSections: $totalSections, unassigned: $unassigned)';
}


}

/// @nodoc
abstract mixin class _$ClassTeacherVacancyCopyWith<$Res> implements $ClassTeacherVacancyCopyWith<$Res> {
  factory _$ClassTeacherVacancyCopyWith(_ClassTeacherVacancy value, $Res Function(_ClassTeacherVacancy) _then) = __$ClassTeacherVacancyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_sections') int totalSections, int unassigned
});




}
/// @nodoc
class __$ClassTeacherVacancyCopyWithImpl<$Res>
    implements _$ClassTeacherVacancyCopyWith<$Res> {
  __$ClassTeacherVacancyCopyWithImpl(this._self, this._then);

  final _ClassTeacherVacancy _self;
  final $Res Function(_ClassTeacherVacancy) _then;

/// Create a copy of ClassTeacherVacancy
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalSections = null,Object? unassigned = null,}) {
  return _then(_ClassTeacherVacancy(
totalSections: null == totalSections ? _self.totalSections : totalSections // ignore: cast_nullable_to_non_nullable
as int,unassigned: null == unassigned ? _self.unassigned : unassigned // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
