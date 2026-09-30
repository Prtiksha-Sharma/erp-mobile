// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_classroom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassAttendanceRoster {

 DateTime? get date;@JsonKey(name: 'is_holiday') bool get isHoliday; int get total; List<RosterStudent> get data;
/// Create a copy of ClassAttendanceRoster
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassAttendanceRosterCopyWith<ClassAttendanceRoster> get copyWith => _$ClassAttendanceRosterCopyWithImpl<ClassAttendanceRoster>(this as ClassAttendanceRoster, _$identity);

  /// Serializes this ClassAttendanceRoster to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassAttendanceRoster;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassAttendanceRoster&&(identical(other.date, _this.date) || other.date == _this.date)&&(identical(other.isHoliday, _this.isHoliday) || other.isHoliday == _this.isHoliday)&&(identical(other.total, _this.total) || other.total == _this.total)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassAttendanceRoster;
  return Object.hash(runtimeType,_this.date,_this.isHoliday,_this.total,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as ClassAttendanceRoster;
  return 'ClassAttendanceRoster(date: ${_this.date}, isHoliday: ${_this.isHoliday}, total: ${_this.total}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $ClassAttendanceRosterCopyWith<$Res>  {
  factory $ClassAttendanceRosterCopyWith(ClassAttendanceRoster value, $Res Function(ClassAttendanceRoster) _then) = _$ClassAttendanceRosterCopyWithImpl;
@useResult
$Res call({
 DateTime? date,@JsonKey(name: 'is_holiday') bool isHoliday, int total, List<RosterStudent> data
});




}
/// @nodoc
class _$ClassAttendanceRosterCopyWithImpl<$Res>
    implements $ClassAttendanceRosterCopyWith<$Res> {
  _$ClassAttendanceRosterCopyWithImpl(this._self, this._then);

  final ClassAttendanceRoster _self;
  final $Res Function(ClassAttendanceRoster) _then;

/// Create a copy of ClassAttendanceRoster
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? isHoliday = null,Object? total = null,Object? data = null,}) {
  return _then(ClassAttendanceRoster(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,isHoliday: null == isHoliday ? _self.isHoliday : isHoliday // ignore: cast_nullable_to_non_nullable
as bool,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<RosterStudent>,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassAttendanceRoster].
extension ClassAttendanceRosterPatterns on ClassAttendanceRoster {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassAttendanceRoster value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassAttendanceRoster() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassAttendanceRoster value)  $default,){
final _that = this;
switch (_that) {
case _ClassAttendanceRoster():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassAttendanceRoster value)?  $default,){
final _that = this;
switch (_that) {
case _ClassAttendanceRoster() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? date, @JsonKey(name: 'is_holiday')  bool isHoliday,  int total,  List<RosterStudent> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassAttendanceRoster() when $default != null:
return $default(_that.date,_that.isHoliday,_that.total,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? date, @JsonKey(name: 'is_holiday')  bool isHoliday,  int total,  List<RosterStudent> data)  $default,) {final _that = this;
switch (_that) {
case _ClassAttendanceRoster():
return $default(_that.date,_that.isHoliday,_that.total,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? date, @JsonKey(name: 'is_holiday')  bool isHoliday,  int total,  List<RosterStudent> data)?  $default,) {final _that = this;
switch (_that) {
case _ClassAttendanceRoster() when $default != null:
return $default(_that.date,_that.isHoliday,_that.total,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassAttendanceRoster implements ClassAttendanceRoster {
  const _ClassAttendanceRoster({this.date, @JsonKey(name: 'is_holiday') this.isHoliday = false, this.total = 0,  List<RosterStudent> data = const <RosterStudent>[]}): _data = data;
  factory _ClassAttendanceRoster.fromJson(Map<String, dynamic> json) => _$ClassAttendanceRosterFromJson(json);

@override final  DateTime? date;
@override@JsonKey(name: 'is_holiday') final  bool isHoliday;
@override@JsonKey() final  int total;
 final  List<RosterStudent> _data;
@override@JsonKey() List<RosterStudent> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ClassAttendanceRoster
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassAttendanceRosterCopyWith<_ClassAttendanceRoster> get copyWith => __$ClassAttendanceRosterCopyWithImpl<_ClassAttendanceRoster>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassAttendanceRosterToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassAttendanceRoster&&(identical(other.date, date) || other.date == date)&&(identical(other.isHoliday, isHoliday) || other.isHoliday == isHoliday)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,date,isHoliday,total,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'ClassAttendanceRoster(date: $date, isHoliday: $isHoliday, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ClassAttendanceRosterCopyWith<$Res> implements $ClassAttendanceRosterCopyWith<$Res> {
  factory _$ClassAttendanceRosterCopyWith(_ClassAttendanceRoster value, $Res Function(_ClassAttendanceRoster) _then) = __$ClassAttendanceRosterCopyWithImpl;
@override @useResult
$Res call({
 DateTime? date,@JsonKey(name: 'is_holiday') bool isHoliday, int total, List<RosterStudent> data
});




}
/// @nodoc
class __$ClassAttendanceRosterCopyWithImpl<$Res>
    implements _$ClassAttendanceRosterCopyWith<$Res> {
  __$ClassAttendanceRosterCopyWithImpl(this._self, this._then);

  final _ClassAttendanceRoster _self;
  final $Res Function(_ClassAttendanceRoster) _then;

/// Create a copy of ClassAttendanceRoster
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? isHoliday = null,Object? total = null,Object? data = null,}) {
  return _then(_ClassAttendanceRoster(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,isHoliday: null == isHoliday ? _self.isHoliday : isHoliday // ignore: cast_nullable_to_non_nullable
as bool,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<RosterStudent>,
  ));
}


}


/// @nodoc
mixin _$RosterStudent {

@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'admission_no') String? get admissionNo;@JsonKey(name: 'roll_no')@LooseStringConverter() String? get rollNo;@JsonKey(name: 'applicants') ApplicantInfo? get applicant;@JsonKey(name: 'current_class') ClassRef? get currentClass;@JsonKey(name: 'current_section') SectionRef? get currentSection; AttendanceRecord? get attendance;
/// Create a copy of RosterStudent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RosterStudentCopyWith<RosterStudent> get copyWith => _$RosterStudentCopyWithImpl<RosterStudent>(this as RosterStudent, _$identity);

  /// Serializes this RosterStudent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RosterStudent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RosterStudent&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.rollNo, _this.rollNo) || other.rollNo == _this.rollNo)&&(identical(other.applicant, _this.applicant) || other.applicant == _this.applicant)&&(identical(other.currentClass, _this.currentClass) || other.currentClass == _this.currentClass)&&(identical(other.currentSection, _this.currentSection) || other.currentSection == _this.currentSection)&&(identical(other.attendance, _this.attendance) || other.attendance == _this.attendance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RosterStudent;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.rollNo,_this.applicant,_this.currentClass,_this.currentSection,_this.attendance);
}

@override
String toString() {
  final _this = this as RosterStudent;
  return 'RosterStudent(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, rollNo: ${_this.rollNo}, applicant: ${_this.applicant}, currentClass: ${_this.currentClass}, currentSection: ${_this.currentSection}, attendance: ${_this.attendance})';
}


}

/// @nodoc
abstract mixin class $RosterStudentCopyWith<$Res>  {
  factory $RosterStudentCopyWith(RosterStudent value, $Res Function(RosterStudent) _then) = _$RosterStudentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'applicants') ApplicantInfo? applicant,@JsonKey(name: 'current_class') ClassRef? currentClass,@JsonKey(name: 'current_section') SectionRef? currentSection, AttendanceRecord? attendance
});


$ApplicantInfoCopyWith<$Res>? get applicant;$ClassRefCopyWith<$Res>? get currentClass;$SectionRefCopyWith<$Res>? get currentSection;$AttendanceRecordCopyWith<$Res>? get attendance;

}
/// @nodoc
class _$RosterStudentCopyWithImpl<$Res>
    implements $RosterStudentCopyWith<$Res> {
  _$RosterStudentCopyWithImpl(this._self, this._then);

  final RosterStudent _self;
  final $Res Function(RosterStudent) _then;

/// Create a copy of RosterStudent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? rollNo = freezed,Object? applicant = freezed,Object? currentClass = freezed,Object? currentSection = freezed,Object? attendance = freezed,}) {
  return _then(RosterStudent(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as ApplicantInfo?,currentClass: freezed == currentClass ? _self.currentClass : currentClass // ignore: cast_nullable_to_non_nullable
as ClassRef?,currentSection: freezed == currentSection ? _self.currentSection : currentSection // ignore: cast_nullable_to_non_nullable
as SectionRef?,attendance: freezed == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as AttendanceRecord?,
  ));
}
/// Create a copy of RosterStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApplicantInfoCopyWith<$Res>? get applicant {
    if (_self.applicant == null) {
    return null;
  }

  return $ApplicantInfoCopyWith<$Res>(_self.applicant!, (value) {
    return _then(_self.copyWith(applicant: value));
  });
}/// Create a copy of RosterStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get currentClass {
    if (_self.currentClass == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.currentClass!, (value) {
    return _then(_self.copyWith(currentClass: value));
  });
}/// Create a copy of RosterStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get currentSection {
    if (_self.currentSection == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.currentSection!, (value) {
    return _then(_self.copyWith(currentSection: value));
  });
}/// Create a copy of RosterStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceRecordCopyWith<$Res>? get attendance {
    if (_self.attendance == null) {
    return null;
  }

  return $AttendanceRecordCopyWith<$Res>(_self.attendance!, (value) {
    return _then(_self.copyWith(attendance: value));
  });
}
}


/// Adds pattern-matching-related methods to [RosterStudent].
extension RosterStudentPatterns on RosterStudent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RosterStudent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RosterStudent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RosterStudent value)  $default,){
final _that = this;
switch (_that) {
case _RosterStudent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RosterStudent value)?  $default,){
final _that = this;
switch (_that) {
case _RosterStudent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'applicants')  ApplicantInfo? applicant, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'current_section')  SectionRef? currentSection,  AttendanceRecord? attendance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RosterStudent() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.applicant,_that.currentClass,_that.currentSection,_that.attendance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'applicants')  ApplicantInfo? applicant, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'current_section')  SectionRef? currentSection,  AttendanceRecord? attendance)  $default,) {final _that = this;
switch (_that) {
case _RosterStudent():
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.applicant,_that.currentClass,_that.currentSection,_that.attendance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo, @JsonKey(name: 'applicants')  ApplicantInfo? applicant, @JsonKey(name: 'current_class')  ClassRef? currentClass, @JsonKey(name: 'current_section')  SectionRef? currentSection,  AttendanceRecord? attendance)?  $default,) {final _that = this;
switch (_that) {
case _RosterStudent() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.applicant,_that.currentClass,_that.currentSection,_that.attendance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RosterStudent implements RosterStudent {
  const _RosterStudent({@JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'admission_no') this.admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter() this.rollNo, @JsonKey(name: 'applicants') this.applicant, @JsonKey(name: 'current_class') this.currentClass, @JsonKey(name: 'current_section') this.currentSection, this.attendance});
  factory _RosterStudent.fromJson(Map<String, dynamic> json) => _$RosterStudentFromJson(json);

@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override@JsonKey(name: 'roll_no')@LooseStringConverter() final  String? rollNo;
@override@JsonKey(name: 'applicants') final  ApplicantInfo? applicant;
@override@JsonKey(name: 'current_class') final  ClassRef? currentClass;
@override@JsonKey(name: 'current_section') final  SectionRef? currentSection;
@override final  AttendanceRecord? attendance;

/// Create a copy of RosterStudent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RosterStudentCopyWith<_RosterStudent> get copyWith => __$RosterStudentCopyWithImpl<_RosterStudent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RosterStudentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RosterStudent&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.rollNo, rollNo) || other.rollNo == rollNo)&&(identical(other.applicant, applicant) || other.applicant == applicant)&&(identical(other.currentClass, currentClass) || other.currentClass == currentClass)&&(identical(other.currentSection, currentSection) || other.currentSection == currentSection)&&(identical(other.attendance, attendance) || other.attendance == attendance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,rollNo,applicant,currentClass,currentSection,attendance);
}

@override
String toString() {
    return 'RosterStudent(studentId: $studentId, admissionNo: $admissionNo, rollNo: $rollNo, applicant: $applicant, currentClass: $currentClass, currentSection: $currentSection, attendance: $attendance)';
}


}

/// @nodoc
abstract mixin class _$RosterStudentCopyWith<$Res> implements $RosterStudentCopyWith<$Res> {
  factory _$RosterStudentCopyWith(_RosterStudent value, $Res Function(_RosterStudent) _then) = __$RosterStudentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo,@JsonKey(name: 'applicants') ApplicantInfo? applicant,@JsonKey(name: 'current_class') ClassRef? currentClass,@JsonKey(name: 'current_section') SectionRef? currentSection, AttendanceRecord? attendance
});


@override $ApplicantInfoCopyWith<$Res>? get applicant;@override $ClassRefCopyWith<$Res>? get currentClass;@override $SectionRefCopyWith<$Res>? get currentSection;@override $AttendanceRecordCopyWith<$Res>? get attendance;

}
/// @nodoc
class __$RosterStudentCopyWithImpl<$Res>
    implements _$RosterStudentCopyWith<$Res> {
  __$RosterStudentCopyWithImpl(this._self, this._then);

  final _RosterStudent _self;
  final $Res Function(_RosterStudent) _then;

/// Create a copy of RosterStudent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? rollNo = freezed,Object? applicant = freezed,Object? currentClass = freezed,Object? currentSection = freezed,Object? attendance = freezed,}) {
  return _then(_RosterStudent(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as ApplicantInfo?,currentClass: freezed == currentClass ? _self.currentClass : currentClass // ignore: cast_nullable_to_non_nullable
as ClassRef?,currentSection: freezed == currentSection ? _self.currentSection : currentSection // ignore: cast_nullable_to_non_nullable
as SectionRef?,attendance: freezed == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as AttendanceRecord?,
  ));
}

/// Create a copy of RosterStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApplicantInfoCopyWith<$Res>? get applicant {
    if (_self.applicant == null) {
    return null;
  }

  return $ApplicantInfoCopyWith<$Res>(_self.applicant!, (value) {
    return _then(_self.copyWith(applicant: value));
  });
}/// Create a copy of RosterStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get currentClass {
    if (_self.currentClass == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.currentClass!, (value) {
    return _then(_self.copyWith(currentClass: value));
  });
}/// Create a copy of RosterStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionRefCopyWith<$Res>? get currentSection {
    if (_self.currentSection == null) {
    return null;
  }

  return $SectionRefCopyWith<$Res>(_self.currentSection!, (value) {
    return _then(_self.copyWith(currentSection: value));
  });
}/// Create a copy of RosterStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceRecordCopyWith<$Res>? get attendance {
    if (_self.attendance == null) {
    return null;
  }

  return $AttendanceRecordCopyWith<$Res>(_self.attendance!, (value) {
    return _then(_self.copyWith(attendance: value));
  });
}
}


/// @nodoc
mixin _$MyClassRoster {

 int get total; List<MyClassStudent> get data;
/// Create a copy of MyClassRoster
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyClassRosterCopyWith<MyClassRoster> get copyWith => _$MyClassRosterCopyWithImpl<MyClassRoster>(this as MyClassRoster, _$identity);

  /// Serializes this MyClassRoster to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MyClassRoster;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyClassRoster&&(identical(other.total, _this.total) || other.total == _this.total)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MyClassRoster;
  return Object.hash(runtimeType,_this.total,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as MyClassRoster;
  return 'MyClassRoster(total: ${_this.total}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $MyClassRosterCopyWith<$Res>  {
  factory $MyClassRosterCopyWith(MyClassRoster value, $Res Function(MyClassRoster) _then) = _$MyClassRosterCopyWithImpl;
@useResult
$Res call({
 int total, List<MyClassStudent> data
});




}
/// @nodoc
class _$MyClassRosterCopyWithImpl<$Res>
    implements $MyClassRosterCopyWith<$Res> {
  _$MyClassRosterCopyWithImpl(this._self, this._then);

  final MyClassRoster _self;
  final $Res Function(MyClassRoster) _then;

/// Create a copy of MyClassRoster
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? data = null,}) {
  return _then(MyClassRoster(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<MyClassStudent>,
  ));
}

}


/// Adds pattern-matching-related methods to [MyClassRoster].
extension MyClassRosterPatterns on MyClassRoster {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyClassRoster value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyClassRoster() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyClassRoster value)  $default,){
final _that = this;
switch (_that) {
case _MyClassRoster():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyClassRoster value)?  $default,){
final _that = this;
switch (_that) {
case _MyClassRoster() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  List<MyClassStudent> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyClassRoster() when $default != null:
return $default(_that.total,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  List<MyClassStudent> data)  $default,) {final _that = this;
switch (_that) {
case _MyClassRoster():
return $default(_that.total,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  List<MyClassStudent> data)?  $default,) {final _that = this;
switch (_that) {
case _MyClassRoster() when $default != null:
return $default(_that.total,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyClassRoster implements MyClassRoster {
  const _MyClassRoster({this.total = 0,  List<MyClassStudent> data = const <MyClassStudent>[]}): _data = data;
  factory _MyClassRoster.fromJson(Map<String, dynamic> json) => _$MyClassRosterFromJson(json);

@override@JsonKey() final  int total;
 final  List<MyClassStudent> _data;
@override@JsonKey() List<MyClassStudent> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of MyClassRoster
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyClassRosterCopyWith<_MyClassRoster> get copyWith => __$MyClassRosterCopyWithImpl<_MyClassRoster>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyClassRosterToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyClassRoster&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'MyClassRoster(total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class _$MyClassRosterCopyWith<$Res> implements $MyClassRosterCopyWith<$Res> {
  factory _$MyClassRosterCopyWith(_MyClassRoster value, $Res Function(_MyClassRoster) _then) = __$MyClassRosterCopyWithImpl;
@override @useResult
$Res call({
 int total, List<MyClassStudent> data
});




}
/// @nodoc
class __$MyClassRosterCopyWithImpl<$Res>
    implements _$MyClassRosterCopyWith<$Res> {
  __$MyClassRosterCopyWithImpl(this._self, this._then);

  final _MyClassRoster _self;
  final $Res Function(_MyClassRoster) _then;

/// Create a copy of MyClassRoster
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? data = null,}) {
  return _then(_MyClassRoster(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<MyClassStudent>,
  ));
}


}


/// @nodoc
mixin _$MyClassStudent {

@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'admission_no') String? get admissionNo;@JsonKey(name: 'roll_no')@LooseStringConverter() String? get rollNo; String get name; String? get gender; DateTime? get dob;@JsonKey(name: 'parent_name') String? get parentName;@JsonKey(name: 'contact_number') String? get contactNumber;@JsonKey(name: 'attendance_pct')@LooseNumConverter() num? get attendancePct;@JsonKey(name: 'fee_status') String? get feeStatus;@JsonKey(name: 'bus_route') String? get busRoute;
/// Create a copy of MyClassStudent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyClassStudentCopyWith<MyClassStudent> get copyWith => _$MyClassStudentCopyWithImpl<MyClassStudent>(this as MyClassStudent, _$identity);

  /// Serializes this MyClassStudent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MyClassStudent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyClassStudent&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.rollNo, _this.rollNo) || other.rollNo == _this.rollNo)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.dob, _this.dob) || other.dob == _this.dob)&&(identical(other.parentName, _this.parentName) || other.parentName == _this.parentName)&&(identical(other.contactNumber, _this.contactNumber) || other.contactNumber == _this.contactNumber)&&(identical(other.attendancePct, _this.attendancePct) || other.attendancePct == _this.attendancePct)&&(identical(other.feeStatus, _this.feeStatus) || other.feeStatus == _this.feeStatus)&&(identical(other.busRoute, _this.busRoute) || other.busRoute == _this.busRoute));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MyClassStudent;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.rollNo,_this.name,_this.gender,_this.dob,_this.parentName,_this.contactNumber,_this.attendancePct,_this.feeStatus,_this.busRoute);
}

@override
String toString() {
  final _this = this as MyClassStudent;
  return 'MyClassStudent(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, rollNo: ${_this.rollNo}, name: ${_this.name}, gender: ${_this.gender}, dob: ${_this.dob}, parentName: ${_this.parentName}, contactNumber: ${_this.contactNumber}, attendancePct: ${_this.attendancePct}, feeStatus: ${_this.feeStatus}, busRoute: ${_this.busRoute})';
}


}

/// @nodoc
abstract mixin class $MyClassStudentCopyWith<$Res>  {
  factory $MyClassStudentCopyWith(MyClassStudent value, $Res Function(MyClassStudent) _then) = _$MyClassStudentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo, String name, String? gender, DateTime? dob,@JsonKey(name: 'parent_name') String? parentName,@JsonKey(name: 'contact_number') String? contactNumber,@JsonKey(name: 'attendance_pct')@LooseNumConverter() num? attendancePct,@JsonKey(name: 'fee_status') String? feeStatus,@JsonKey(name: 'bus_route') String? busRoute
});




}
/// @nodoc
class _$MyClassStudentCopyWithImpl<$Res>
    implements $MyClassStudentCopyWith<$Res> {
  _$MyClassStudentCopyWithImpl(this._self, this._then);

  final MyClassStudent _self;
  final $Res Function(MyClassStudent) _then;

/// Create a copy of MyClassStudent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? rollNo = freezed,Object? name = null,Object? gender = freezed,Object? dob = freezed,Object? parentName = freezed,Object? contactNumber = freezed,Object? attendancePct = freezed,Object? feeStatus = freezed,Object? busRoute = freezed,}) {
  return _then(MyClassStudent(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,parentName: freezed == parentName ? _self.parentName : parentName // ignore: cast_nullable_to_non_nullable
as String?,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String?,attendancePct: freezed == attendancePct ? _self.attendancePct : attendancePct // ignore: cast_nullable_to_non_nullable
as num?,feeStatus: freezed == feeStatus ? _self.feeStatus : feeStatus // ignore: cast_nullable_to_non_nullable
as String?,busRoute: freezed == busRoute ? _self.busRoute : busRoute // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyClassStudent].
extension MyClassStudentPatterns on MyClassStudent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyClassStudent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyClassStudent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyClassStudent value)  $default,){
final _that = this;
switch (_that) {
case _MyClassStudent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyClassStudent value)?  $default,){
final _that = this;
switch (_that) {
case _MyClassStudent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo,  String name,  String? gender,  DateTime? dob, @JsonKey(name: 'parent_name')  String? parentName, @JsonKey(name: 'contact_number')  String? contactNumber, @JsonKey(name: 'attendance_pct')@LooseNumConverter()  num? attendancePct, @JsonKey(name: 'fee_status')  String? feeStatus, @JsonKey(name: 'bus_route')  String? busRoute)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyClassStudent() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.name,_that.gender,_that.dob,_that.parentName,_that.contactNumber,_that.attendancePct,_that.feeStatus,_that.busRoute);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo,  String name,  String? gender,  DateTime? dob, @JsonKey(name: 'parent_name')  String? parentName, @JsonKey(name: 'contact_number')  String? contactNumber, @JsonKey(name: 'attendance_pct')@LooseNumConverter()  num? attendancePct, @JsonKey(name: 'fee_status')  String? feeStatus, @JsonKey(name: 'bus_route')  String? busRoute)  $default,) {final _that = this;
switch (_that) {
case _MyClassStudent():
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.name,_that.gender,_that.dob,_that.parentName,_that.contactNumber,_that.attendancePct,_that.feeStatus,_that.busRoute);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter()  String? rollNo,  String name,  String? gender,  DateTime? dob, @JsonKey(name: 'parent_name')  String? parentName, @JsonKey(name: 'contact_number')  String? contactNumber, @JsonKey(name: 'attendance_pct')@LooseNumConverter()  num? attendancePct, @JsonKey(name: 'fee_status')  String? feeStatus, @JsonKey(name: 'bus_route')  String? busRoute)?  $default,) {final _that = this;
switch (_that) {
case _MyClassStudent() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.name,_that.gender,_that.dob,_that.parentName,_that.contactNumber,_that.attendancePct,_that.feeStatus,_that.busRoute);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyClassStudent implements MyClassStudent {
  const _MyClassStudent({@JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'admission_no') this.admissionNo, @JsonKey(name: 'roll_no')@LooseStringConverter() this.rollNo, required this.name, this.gender, this.dob, @JsonKey(name: 'parent_name') this.parentName, @JsonKey(name: 'contact_number') this.contactNumber, @JsonKey(name: 'attendance_pct')@LooseNumConverter() this.attendancePct, @JsonKey(name: 'fee_status') this.feeStatus, @JsonKey(name: 'bus_route') this.busRoute});
  factory _MyClassStudent.fromJson(Map<String, dynamic> json) => _$MyClassStudentFromJson(json);

@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override@JsonKey(name: 'roll_no')@LooseStringConverter() final  String? rollNo;
@override final  String name;
@override final  String? gender;
@override final  DateTime? dob;
@override@JsonKey(name: 'parent_name') final  String? parentName;
@override@JsonKey(name: 'contact_number') final  String? contactNumber;
@override@JsonKey(name: 'attendance_pct')@LooseNumConverter() final  num? attendancePct;
@override@JsonKey(name: 'fee_status') final  String? feeStatus;
@override@JsonKey(name: 'bus_route') final  String? busRoute;

/// Create a copy of MyClassStudent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyClassStudentCopyWith<_MyClassStudent> get copyWith => __$MyClassStudentCopyWithImpl<_MyClassStudent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyClassStudentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyClassStudent&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.rollNo, rollNo) || other.rollNo == rollNo)&&(identical(other.name, name) || other.name == name)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.parentName, parentName) || other.parentName == parentName)&&(identical(other.contactNumber, contactNumber) || other.contactNumber == contactNumber)&&(identical(other.attendancePct, attendancePct) || other.attendancePct == attendancePct)&&(identical(other.feeStatus, feeStatus) || other.feeStatus == feeStatus)&&(identical(other.busRoute, busRoute) || other.busRoute == busRoute));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,rollNo,name,gender,dob,parentName,contactNumber,attendancePct,feeStatus,busRoute);
}

@override
String toString() {
    return 'MyClassStudent(studentId: $studentId, admissionNo: $admissionNo, rollNo: $rollNo, name: $name, gender: $gender, dob: $dob, parentName: $parentName, contactNumber: $contactNumber, attendancePct: $attendancePct, feeStatus: $feeStatus, busRoute: $busRoute)';
}


}

/// @nodoc
abstract mixin class _$MyClassStudentCopyWith<$Res> implements $MyClassStudentCopyWith<$Res> {
  factory _$MyClassStudentCopyWith(_MyClassStudent value, $Res Function(_MyClassStudent) _then) = __$MyClassStudentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'roll_no')@LooseStringConverter() String? rollNo, String name, String? gender, DateTime? dob,@JsonKey(name: 'parent_name') String? parentName,@JsonKey(name: 'contact_number') String? contactNumber,@JsonKey(name: 'attendance_pct')@LooseNumConverter() num? attendancePct,@JsonKey(name: 'fee_status') String? feeStatus,@JsonKey(name: 'bus_route') String? busRoute
});




}
/// @nodoc
class __$MyClassStudentCopyWithImpl<$Res>
    implements _$MyClassStudentCopyWith<$Res> {
  __$MyClassStudentCopyWithImpl(this._self, this._then);

  final _MyClassStudent _self;
  final $Res Function(_MyClassStudent) _then;

/// Create a copy of MyClassStudent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? rollNo = freezed,Object? name = null,Object? gender = freezed,Object? dob = freezed,Object? parentName = freezed,Object? contactNumber = freezed,Object? attendancePct = freezed,Object? feeStatus = freezed,Object? busRoute = freezed,}) {
  return _then(_MyClassStudent(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,parentName: freezed == parentName ? _self.parentName : parentName // ignore: cast_nullable_to_non_nullable
as String?,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String?,attendancePct: freezed == attendancePct ? _self.attendancePct : attendancePct // ignore: cast_nullable_to_non_nullable
as num?,feeStatus: freezed == feeStatus ? _self.feeStatus : feeStatus // ignore: cast_nullable_to_non_nullable
as String?,busRoute: freezed == busRoute ? _self.busRoute : busRoute // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StudentPerformance {

@JsonKey(name: 'student_id') String? get studentId;@JsonKey(name: 'attendance_trend') List<AttendanceTrendPoint> get attendanceTrend;@JsonKey(name: 'exam_summary') List<ExamSummaryRow> get examSummary;
/// Create a copy of StudentPerformance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentPerformanceCopyWith<StudentPerformance> get copyWith => _$StudentPerformanceCopyWithImpl<StudentPerformance>(this as StudentPerformance, _$identity);

  /// Serializes this StudentPerformance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StudentPerformance;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentPerformance&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&const DeepCollectionEquality().equals(other.attendanceTrend, _this.attendanceTrend)&&const DeepCollectionEquality().equals(other.examSummary, _this.examSummary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StudentPerformance;
  return Object.hash(runtimeType,_this.studentId,const DeepCollectionEquality().hash(_this.attendanceTrend),const DeepCollectionEquality().hash(_this.examSummary));
}

@override
String toString() {
  final _this = this as StudentPerformance;
  return 'StudentPerformance(studentId: ${_this.studentId}, attendanceTrend: ${_this.attendanceTrend}, examSummary: ${_this.examSummary})';
}


}

/// @nodoc
abstract mixin class $StudentPerformanceCopyWith<$Res>  {
  factory $StudentPerformanceCopyWith(StudentPerformance value, $Res Function(StudentPerformance) _then) = _$StudentPerformanceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'attendance_trend') List<AttendanceTrendPoint> attendanceTrend,@JsonKey(name: 'exam_summary') List<ExamSummaryRow> examSummary
});




}
/// @nodoc
class _$StudentPerformanceCopyWithImpl<$Res>
    implements $StudentPerformanceCopyWith<$Res> {
  _$StudentPerformanceCopyWithImpl(this._self, this._then);

  final StudentPerformance _self;
  final $Res Function(StudentPerformance) _then;

/// Create a copy of StudentPerformance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = freezed,Object? attendanceTrend = null,Object? examSummary = null,}) {
  return _then(StudentPerformance(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,attendanceTrend: null == attendanceTrend ? _self.attendanceTrend : attendanceTrend // ignore: cast_nullable_to_non_nullable
as List<AttendanceTrendPoint>,examSummary: null == examSummary ? _self.examSummary : examSummary // ignore: cast_nullable_to_non_nullable
as List<ExamSummaryRow>,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentPerformance].
extension StudentPerformancePatterns on StudentPerformance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentPerformance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentPerformance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentPerformance value)  $default,){
final _that = this;
switch (_that) {
case _StudentPerformance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentPerformance value)?  $default,){
final _that = this;
switch (_that) {
case _StudentPerformance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'attendance_trend')  List<AttendanceTrendPoint> attendanceTrend, @JsonKey(name: 'exam_summary')  List<ExamSummaryRow> examSummary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentPerformance() when $default != null:
return $default(_that.studentId,_that.attendanceTrend,_that.examSummary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'attendance_trend')  List<AttendanceTrendPoint> attendanceTrend, @JsonKey(name: 'exam_summary')  List<ExamSummaryRow> examSummary)  $default,) {final _that = this;
switch (_that) {
case _StudentPerformance():
return $default(_that.studentId,_that.attendanceTrend,_that.examSummary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'attendance_trend')  List<AttendanceTrendPoint> attendanceTrend, @JsonKey(name: 'exam_summary')  List<ExamSummaryRow> examSummary)?  $default,) {final _that = this;
switch (_that) {
case _StudentPerformance() when $default != null:
return $default(_that.studentId,_that.attendanceTrend,_that.examSummary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentPerformance implements StudentPerformance {
  const _StudentPerformance({@JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'attendance_trend')  List<AttendanceTrendPoint> attendanceTrend = const <AttendanceTrendPoint>[], @JsonKey(name: 'exam_summary')  List<ExamSummaryRow> examSummary = const <ExamSummaryRow>[]}): _attendanceTrend = attendanceTrend,_examSummary = examSummary;
  factory _StudentPerformance.fromJson(Map<String, dynamic> json) => _$StudentPerformanceFromJson(json);

@override@JsonKey(name: 'student_id') final  String? studentId;
 final  List<AttendanceTrendPoint> _attendanceTrend;
@override@JsonKey(name: 'attendance_trend') List<AttendanceTrendPoint> get attendanceTrend {
  if (_attendanceTrend is EqualUnmodifiableListView) return _attendanceTrend;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attendanceTrend);
}

 final  List<ExamSummaryRow> _examSummary;
@override@JsonKey(name: 'exam_summary') List<ExamSummaryRow> get examSummary {
  if (_examSummary is EqualUnmodifiableListView) return _examSummary;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_examSummary);
}


/// Create a copy of StudentPerformance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentPerformanceCopyWith<_StudentPerformance> get copyWith => __$StudentPerformanceCopyWithImpl<_StudentPerformance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentPerformanceToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentPerformance&&(identical(other.studentId, studentId) || other.studentId == studentId)&&const DeepCollectionEquality().equals(other.attendanceTrend, _attendanceTrend)&&const DeepCollectionEquality().equals(other.examSummary, _examSummary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,const DeepCollectionEquality().hash(_attendanceTrend),const DeepCollectionEquality().hash(_examSummary));
}

@override
String toString() {
    return 'StudentPerformance(studentId: $studentId, attendanceTrend: $attendanceTrend, examSummary: $examSummary)';
}


}

/// @nodoc
abstract mixin class _$StudentPerformanceCopyWith<$Res> implements $StudentPerformanceCopyWith<$Res> {
  factory _$StudentPerformanceCopyWith(_StudentPerformance value, $Res Function(_StudentPerformance) _then) = __$StudentPerformanceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'attendance_trend') List<AttendanceTrendPoint> attendanceTrend,@JsonKey(name: 'exam_summary') List<ExamSummaryRow> examSummary
});




}
/// @nodoc
class __$StudentPerformanceCopyWithImpl<$Res>
    implements _$StudentPerformanceCopyWith<$Res> {
  __$StudentPerformanceCopyWithImpl(this._self, this._then);

  final _StudentPerformance _self;
  final $Res Function(_StudentPerformance) _then;

/// Create a copy of StudentPerformance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = freezed,Object? attendanceTrend = null,Object? examSummary = null,}) {
  return _then(_StudentPerformance(
studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,attendanceTrend: null == attendanceTrend ? _self._attendanceTrend : attendanceTrend // ignore: cast_nullable_to_non_nullable
as List<AttendanceTrendPoint>,examSummary: null == examSummary ? _self._examSummary : examSummary // ignore: cast_nullable_to_non_nullable
as List<ExamSummaryRow>,
  ));
}


}


/// @nodoc
mixin _$AttendanceTrendPoint {

 String get month;@JsonKey(name: 'attendance_pct')@LooseNumConverter() num? get attendancePct;
/// Create a copy of AttendanceTrendPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceTrendPointCopyWith<AttendanceTrendPoint> get copyWith => _$AttendanceTrendPointCopyWithImpl<AttendanceTrendPoint>(this as AttendanceTrendPoint, _$identity);

  /// Serializes this AttendanceTrendPoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AttendanceTrendPoint;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceTrendPoint&&(identical(other.month, _this.month) || other.month == _this.month)&&(identical(other.attendancePct, _this.attendancePct) || other.attendancePct == _this.attendancePct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AttendanceTrendPoint;
  return Object.hash(runtimeType,_this.month,_this.attendancePct);
}

@override
String toString() {
  final _this = this as AttendanceTrendPoint;
  return 'AttendanceTrendPoint(month: ${_this.month}, attendancePct: ${_this.attendancePct})';
}


}

/// @nodoc
abstract mixin class $AttendanceTrendPointCopyWith<$Res>  {
  factory $AttendanceTrendPointCopyWith(AttendanceTrendPoint value, $Res Function(AttendanceTrendPoint) _then) = _$AttendanceTrendPointCopyWithImpl;
@useResult
$Res call({
 String month,@JsonKey(name: 'attendance_pct')@LooseNumConverter() num? attendancePct
});




}
/// @nodoc
class _$AttendanceTrendPointCopyWithImpl<$Res>
    implements $AttendanceTrendPointCopyWith<$Res> {
  _$AttendanceTrendPointCopyWithImpl(this._self, this._then);

  final AttendanceTrendPoint _self;
  final $Res Function(AttendanceTrendPoint) _then;

/// Create a copy of AttendanceTrendPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = null,Object? attendancePct = freezed,}) {
  return _then(AttendanceTrendPoint(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,attendancePct: freezed == attendancePct ? _self.attendancePct : attendancePct // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceTrendPoint].
extension AttendanceTrendPointPatterns on AttendanceTrendPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceTrendPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceTrendPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceTrendPoint value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceTrendPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceTrendPoint value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceTrendPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String month, @JsonKey(name: 'attendance_pct')@LooseNumConverter()  num? attendancePct)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceTrendPoint() when $default != null:
return $default(_that.month,_that.attendancePct);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String month, @JsonKey(name: 'attendance_pct')@LooseNumConverter()  num? attendancePct)  $default,) {final _that = this;
switch (_that) {
case _AttendanceTrendPoint():
return $default(_that.month,_that.attendancePct);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String month, @JsonKey(name: 'attendance_pct')@LooseNumConverter()  num? attendancePct)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceTrendPoint() when $default != null:
return $default(_that.month,_that.attendancePct);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceTrendPoint implements AttendanceTrendPoint {
  const _AttendanceTrendPoint({required this.month, @JsonKey(name: 'attendance_pct')@LooseNumConverter() this.attendancePct});
  factory _AttendanceTrendPoint.fromJson(Map<String, dynamic> json) => _$AttendanceTrendPointFromJson(json);

@override final  String month;
@override@JsonKey(name: 'attendance_pct')@LooseNumConverter() final  num? attendancePct;

/// Create a copy of AttendanceTrendPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceTrendPointCopyWith<_AttendanceTrendPoint> get copyWith => __$AttendanceTrendPointCopyWithImpl<_AttendanceTrendPoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceTrendPointToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceTrendPoint&&(identical(other.month, month) || other.month == month)&&(identical(other.attendancePct, attendancePct) || other.attendancePct == attendancePct));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,month,attendancePct);
}

@override
String toString() {
    return 'AttendanceTrendPoint(month: $month, attendancePct: $attendancePct)';
}


}

/// @nodoc
abstract mixin class _$AttendanceTrendPointCopyWith<$Res> implements $AttendanceTrendPointCopyWith<$Res> {
  factory _$AttendanceTrendPointCopyWith(_AttendanceTrendPoint value, $Res Function(_AttendanceTrendPoint) _then) = __$AttendanceTrendPointCopyWithImpl;
@override @useResult
$Res call({
 String month,@JsonKey(name: 'attendance_pct')@LooseNumConverter() num? attendancePct
});




}
/// @nodoc
class __$AttendanceTrendPointCopyWithImpl<$Res>
    implements _$AttendanceTrendPointCopyWith<$Res> {
  __$AttendanceTrendPointCopyWithImpl(this._self, this._then);

  final _AttendanceTrendPoint _self;
  final $Res Function(_AttendanceTrendPoint) _then;

/// Create a copy of AttendanceTrendPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? attendancePct = freezed,}) {
  return _then(_AttendanceTrendPoint(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,attendancePct: freezed == attendancePct ? _self.attendancePct : attendancePct // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}


/// @nodoc
mixin _$ExamSummaryRow {

@JsonKey(name: 'exam_name') String? get examName;@JsonKey(name: 'subject_name') String? get subjectName;@JsonKey(name: 'marks_obtained')@LooseStringConverter() String? get marksObtained;@JsonKey(name: 'max_marks')@LooseStringConverter() String? get maxMarks;@JsonKey(name: 'attendance_status') String? get attendanceStatus; String? get grade;
/// Create a copy of ExamSummaryRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamSummaryRowCopyWith<ExamSummaryRow> get copyWith => _$ExamSummaryRowCopyWithImpl<ExamSummaryRow>(this as ExamSummaryRow, _$identity);

  /// Serializes this ExamSummaryRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ExamSummaryRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamSummaryRow&&(identical(other.examName, _this.examName) || other.examName == _this.examName)&&(identical(other.subjectName, _this.subjectName) || other.subjectName == _this.subjectName)&&(identical(other.marksObtained, _this.marksObtained) || other.marksObtained == _this.marksObtained)&&(identical(other.maxMarks, _this.maxMarks) || other.maxMarks == _this.maxMarks)&&(identical(other.attendanceStatus, _this.attendanceStatus) || other.attendanceStatus == _this.attendanceStatus)&&(identical(other.grade, _this.grade) || other.grade == _this.grade));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ExamSummaryRow;
  return Object.hash(runtimeType,_this.examName,_this.subjectName,_this.marksObtained,_this.maxMarks,_this.attendanceStatus,_this.grade);
}

@override
String toString() {
  final _this = this as ExamSummaryRow;
  return 'ExamSummaryRow(examName: ${_this.examName}, subjectName: ${_this.subjectName}, marksObtained: ${_this.marksObtained}, maxMarks: ${_this.maxMarks}, attendanceStatus: ${_this.attendanceStatus}, grade: ${_this.grade})';
}


}

/// @nodoc
abstract mixin class $ExamSummaryRowCopyWith<$Res>  {
  factory $ExamSummaryRowCopyWith(ExamSummaryRow value, $Res Function(ExamSummaryRow) _then) = _$ExamSummaryRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'exam_name') String? examName,@JsonKey(name: 'subject_name') String? subjectName,@JsonKey(name: 'marks_obtained')@LooseStringConverter() String? marksObtained,@JsonKey(name: 'max_marks')@LooseStringConverter() String? maxMarks,@JsonKey(name: 'attendance_status') String? attendanceStatus, String? grade
});




}
/// @nodoc
class _$ExamSummaryRowCopyWithImpl<$Res>
    implements $ExamSummaryRowCopyWith<$Res> {
  _$ExamSummaryRowCopyWithImpl(this._self, this._then);

  final ExamSummaryRow _self;
  final $Res Function(ExamSummaryRow) _then;

/// Create a copy of ExamSummaryRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? examName = freezed,Object? subjectName = freezed,Object? marksObtained = freezed,Object? maxMarks = freezed,Object? attendanceStatus = freezed,Object? grade = freezed,}) {
  return _then(ExamSummaryRow(
examName: freezed == examName ? _self.examName : examName // ignore: cast_nullable_to_non_nullable
as String?,subjectName: freezed == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String?,marksObtained: freezed == marksObtained ? _self.marksObtained : marksObtained // ignore: cast_nullable_to_non_nullable
as String?,maxMarks: freezed == maxMarks ? _self.maxMarks : maxMarks // ignore: cast_nullable_to_non_nullable
as String?,attendanceStatus: freezed == attendanceStatus ? _self.attendanceStatus : attendanceStatus // ignore: cast_nullable_to_non_nullable
as String?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamSummaryRow].
extension ExamSummaryRowPatterns on ExamSummaryRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamSummaryRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamSummaryRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamSummaryRow value)  $default,){
final _that = this;
switch (_that) {
case _ExamSummaryRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamSummaryRow value)?  $default,){
final _that = this;
switch (_that) {
case _ExamSummaryRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_name')  String? examName, @JsonKey(name: 'subject_name')  String? subjectName, @JsonKey(name: 'marks_obtained')@LooseStringConverter()  String? marksObtained, @JsonKey(name: 'max_marks')@LooseStringConverter()  String? maxMarks, @JsonKey(name: 'attendance_status')  String? attendanceStatus,  String? grade)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamSummaryRow() when $default != null:
return $default(_that.examName,_that.subjectName,_that.marksObtained,_that.maxMarks,_that.attendanceStatus,_that.grade);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'exam_name')  String? examName, @JsonKey(name: 'subject_name')  String? subjectName, @JsonKey(name: 'marks_obtained')@LooseStringConverter()  String? marksObtained, @JsonKey(name: 'max_marks')@LooseStringConverter()  String? maxMarks, @JsonKey(name: 'attendance_status')  String? attendanceStatus,  String? grade)  $default,) {final _that = this;
switch (_that) {
case _ExamSummaryRow():
return $default(_that.examName,_that.subjectName,_that.marksObtained,_that.maxMarks,_that.attendanceStatus,_that.grade);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'exam_name')  String? examName, @JsonKey(name: 'subject_name')  String? subjectName, @JsonKey(name: 'marks_obtained')@LooseStringConverter()  String? marksObtained, @JsonKey(name: 'max_marks')@LooseStringConverter()  String? maxMarks, @JsonKey(name: 'attendance_status')  String? attendanceStatus,  String? grade)?  $default,) {final _that = this;
switch (_that) {
case _ExamSummaryRow() when $default != null:
return $default(_that.examName,_that.subjectName,_that.marksObtained,_that.maxMarks,_that.attendanceStatus,_that.grade);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamSummaryRow implements ExamSummaryRow {
  const _ExamSummaryRow({@JsonKey(name: 'exam_name') this.examName, @JsonKey(name: 'subject_name') this.subjectName, @JsonKey(name: 'marks_obtained')@LooseStringConverter() this.marksObtained, @JsonKey(name: 'max_marks')@LooseStringConverter() this.maxMarks, @JsonKey(name: 'attendance_status') this.attendanceStatus, this.grade});
  factory _ExamSummaryRow.fromJson(Map<String, dynamic> json) => _$ExamSummaryRowFromJson(json);

@override@JsonKey(name: 'exam_name') final  String? examName;
@override@JsonKey(name: 'subject_name') final  String? subjectName;
@override@JsonKey(name: 'marks_obtained')@LooseStringConverter() final  String? marksObtained;
@override@JsonKey(name: 'max_marks')@LooseStringConverter() final  String? maxMarks;
@override@JsonKey(name: 'attendance_status') final  String? attendanceStatus;
@override final  String? grade;

/// Create a copy of ExamSummaryRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamSummaryRowCopyWith<_ExamSummaryRow> get copyWith => __$ExamSummaryRowCopyWithImpl<_ExamSummaryRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamSummaryRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamSummaryRow&&(identical(other.examName, examName) || other.examName == examName)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.marksObtained, marksObtained) || other.marksObtained == marksObtained)&&(identical(other.maxMarks, maxMarks) || other.maxMarks == maxMarks)&&(identical(other.attendanceStatus, attendanceStatus) || other.attendanceStatus == attendanceStatus)&&(identical(other.grade, grade) || other.grade == grade));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,examName,subjectName,marksObtained,maxMarks,attendanceStatus,grade);
}

@override
String toString() {
    return 'ExamSummaryRow(examName: $examName, subjectName: $subjectName, marksObtained: $marksObtained, maxMarks: $maxMarks, attendanceStatus: $attendanceStatus, grade: $grade)';
}


}

/// @nodoc
abstract mixin class _$ExamSummaryRowCopyWith<$Res> implements $ExamSummaryRowCopyWith<$Res> {
  factory _$ExamSummaryRowCopyWith(_ExamSummaryRow value, $Res Function(_ExamSummaryRow) _then) = __$ExamSummaryRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'exam_name') String? examName,@JsonKey(name: 'subject_name') String? subjectName,@JsonKey(name: 'marks_obtained')@LooseStringConverter() String? marksObtained,@JsonKey(name: 'max_marks')@LooseStringConverter() String? maxMarks,@JsonKey(name: 'attendance_status') String? attendanceStatus, String? grade
});




}
/// @nodoc
class __$ExamSummaryRowCopyWithImpl<$Res>
    implements _$ExamSummaryRowCopyWith<$Res> {
  __$ExamSummaryRowCopyWithImpl(this._self, this._then);

  final _ExamSummaryRow _self;
  final $Res Function(_ExamSummaryRow) _then;

/// Create a copy of ExamSummaryRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? examName = freezed,Object? subjectName = freezed,Object? marksObtained = freezed,Object? maxMarks = freezed,Object? attendanceStatus = freezed,Object? grade = freezed,}) {
  return _then(_ExamSummaryRow(
examName: freezed == examName ? _self.examName : examName // ignore: cast_nullable_to_non_nullable
as String?,subjectName: freezed == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String?,marksObtained: freezed == marksObtained ? _self.marksObtained : marksObtained // ignore: cast_nullable_to_non_nullable
as String?,maxMarks: freezed == maxMarks ? _self.maxMarks : maxMarks // ignore: cast_nullable_to_non_nullable
as String?,attendanceStatus: freezed == attendanceStatus ? _self.attendanceStatus : attendanceStatus // ignore: cast_nullable_to_non_nullable
as String?,grade: freezed == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ClassBirthdays {

 List<BirthdayEntry> get today; List<BirthdayEntry> get upcoming;
/// Create a copy of ClassBirthdays
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassBirthdaysCopyWith<ClassBirthdays> get copyWith => _$ClassBirthdaysCopyWithImpl<ClassBirthdays>(this as ClassBirthdays, _$identity);

  /// Serializes this ClassBirthdays to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassBirthdays;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassBirthdays&&const DeepCollectionEquality().equals(other.today, _this.today)&&const DeepCollectionEquality().equals(other.upcoming, _this.upcoming));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassBirthdays;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.today),const DeepCollectionEquality().hash(_this.upcoming));
}

@override
String toString() {
  final _this = this as ClassBirthdays;
  return 'ClassBirthdays(today: ${_this.today}, upcoming: ${_this.upcoming})';
}


}

/// @nodoc
abstract mixin class $ClassBirthdaysCopyWith<$Res>  {
  factory $ClassBirthdaysCopyWith(ClassBirthdays value, $Res Function(ClassBirthdays) _then) = _$ClassBirthdaysCopyWithImpl;
@useResult
$Res call({
 List<BirthdayEntry> today, List<BirthdayEntry> upcoming
});




}
/// @nodoc
class _$ClassBirthdaysCopyWithImpl<$Res>
    implements $ClassBirthdaysCopyWith<$Res> {
  _$ClassBirthdaysCopyWithImpl(this._self, this._then);

  final ClassBirthdays _self;
  final $Res Function(ClassBirthdays) _then;

/// Create a copy of ClassBirthdays
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? today = null,Object? upcoming = null,}) {
  return _then(ClassBirthdays(
today: null == today ? _self.today : today // ignore: cast_nullable_to_non_nullable
as List<BirthdayEntry>,upcoming: null == upcoming ? _self.upcoming : upcoming // ignore: cast_nullable_to_non_nullable
as List<BirthdayEntry>,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassBirthdays].
extension ClassBirthdaysPatterns on ClassBirthdays {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassBirthdays value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassBirthdays() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassBirthdays value)  $default,){
final _that = this;
switch (_that) {
case _ClassBirthdays():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassBirthdays value)?  $default,){
final _that = this;
switch (_that) {
case _ClassBirthdays() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BirthdayEntry> today,  List<BirthdayEntry> upcoming)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassBirthdays() when $default != null:
return $default(_that.today,_that.upcoming);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BirthdayEntry> today,  List<BirthdayEntry> upcoming)  $default,) {final _that = this;
switch (_that) {
case _ClassBirthdays():
return $default(_that.today,_that.upcoming);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BirthdayEntry> today,  List<BirthdayEntry> upcoming)?  $default,) {final _that = this;
switch (_that) {
case _ClassBirthdays() when $default != null:
return $default(_that.today,_that.upcoming);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassBirthdays implements ClassBirthdays {
  const _ClassBirthdays({ List<BirthdayEntry> today = const <BirthdayEntry>[],  List<BirthdayEntry> upcoming = const <BirthdayEntry>[]}): _today = today,_upcoming = upcoming;
  factory _ClassBirthdays.fromJson(Map<String, dynamic> json) => _$ClassBirthdaysFromJson(json);

 final  List<BirthdayEntry> _today;
@override@JsonKey() List<BirthdayEntry> get today {
  if (_today is EqualUnmodifiableListView) return _today;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_today);
}

 final  List<BirthdayEntry> _upcoming;
@override@JsonKey() List<BirthdayEntry> get upcoming {
  if (_upcoming is EqualUnmodifiableListView) return _upcoming;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_upcoming);
}


/// Create a copy of ClassBirthdays
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassBirthdaysCopyWith<_ClassBirthdays> get copyWith => __$ClassBirthdaysCopyWithImpl<_ClassBirthdays>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassBirthdaysToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassBirthdays&&const DeepCollectionEquality().equals(other.today, _today)&&const DeepCollectionEquality().equals(other.upcoming, _upcoming));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_today),const DeepCollectionEquality().hash(_upcoming));
}

@override
String toString() {
    return 'ClassBirthdays(today: $today, upcoming: $upcoming)';
}


}

/// @nodoc
abstract mixin class _$ClassBirthdaysCopyWith<$Res> implements $ClassBirthdaysCopyWith<$Res> {
  factory _$ClassBirthdaysCopyWith(_ClassBirthdays value, $Res Function(_ClassBirthdays) _then) = __$ClassBirthdaysCopyWithImpl;
@override @useResult
$Res call({
 List<BirthdayEntry> today, List<BirthdayEntry> upcoming
});




}
/// @nodoc
class __$ClassBirthdaysCopyWithImpl<$Res>
    implements _$ClassBirthdaysCopyWith<$Res> {
  __$ClassBirthdaysCopyWithImpl(this._self, this._then);

  final _ClassBirthdays _self;
  final $Res Function(_ClassBirthdays) _then;

/// Create a copy of ClassBirthdays
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? today = null,Object? upcoming = null,}) {
  return _then(_ClassBirthdays(
today: null == today ? _self._today : today // ignore: cast_nullable_to_non_nullable
as List<BirthdayEntry>,upcoming: null == upcoming ? _self._upcoming : upcoming // ignore: cast_nullable_to_non_nullable
as List<BirthdayEntry>,
  ));
}


}


/// @nodoc
mixin _$BirthdayEntry {

@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'admission_no') String? get admissionNo; String get name; DateTime? get dob;@JsonKey(name: 'days_away') int get daysAway;
/// Create a copy of BirthdayEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BirthdayEntryCopyWith<BirthdayEntry> get copyWith => _$BirthdayEntryCopyWithImpl<BirthdayEntry>(this as BirthdayEntry, _$identity);

  /// Serializes this BirthdayEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BirthdayEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BirthdayEntry&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.dob, _this.dob) || other.dob == _this.dob)&&(identical(other.daysAway, _this.daysAway) || other.daysAway == _this.daysAway));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BirthdayEntry;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.name,_this.dob,_this.daysAway);
}

@override
String toString() {
  final _this = this as BirthdayEntry;
  return 'BirthdayEntry(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, name: ${_this.name}, dob: ${_this.dob}, daysAway: ${_this.daysAway})';
}


}

/// @nodoc
abstract mixin class $BirthdayEntryCopyWith<$Res>  {
  factory $BirthdayEntryCopyWith(BirthdayEntry value, $Res Function(BirthdayEntry) _then) = _$BirthdayEntryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo, String name, DateTime? dob,@JsonKey(name: 'days_away') int daysAway
});




}
/// @nodoc
class _$BirthdayEntryCopyWithImpl<$Res>
    implements $BirthdayEntryCopyWith<$Res> {
  _$BirthdayEntryCopyWithImpl(this._self, this._then);

  final BirthdayEntry _self;
  final $Res Function(BirthdayEntry) _then;

/// Create a copy of BirthdayEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? name = null,Object? dob = freezed,Object? daysAway = null,}) {
  return _then(BirthdayEntry(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,daysAway: null == daysAway ? _self.daysAway : daysAway // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BirthdayEntry].
extension BirthdayEntryPatterns on BirthdayEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BirthdayEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BirthdayEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BirthdayEntry value)  $default,){
final _that = this;
switch (_that) {
case _BirthdayEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BirthdayEntry value)?  $default,){
final _that = this;
switch (_that) {
case _BirthdayEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo,  String name,  DateTime? dob, @JsonKey(name: 'days_away')  int daysAway)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BirthdayEntry() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.name,_that.dob,_that.daysAway);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo,  String name,  DateTime? dob, @JsonKey(name: 'days_away')  int daysAway)  $default,) {final _that = this;
switch (_that) {
case _BirthdayEntry():
return $default(_that.studentId,_that.admissionNo,_that.name,_that.dob,_that.daysAway);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo,  String name,  DateTime? dob, @JsonKey(name: 'days_away')  int daysAway)?  $default,) {final _that = this;
switch (_that) {
case _BirthdayEntry() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.name,_that.dob,_that.daysAway);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BirthdayEntry implements BirthdayEntry {
  const _BirthdayEntry({@JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'admission_no') this.admissionNo, required this.name, this.dob, @JsonKey(name: 'days_away') this.daysAway = 0});
  factory _BirthdayEntry.fromJson(Map<String, dynamic> json) => _$BirthdayEntryFromJson(json);

@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override final  String name;
@override final  DateTime? dob;
@override@JsonKey(name: 'days_away') final  int daysAway;

/// Create a copy of BirthdayEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BirthdayEntryCopyWith<_BirthdayEntry> get copyWith => __$BirthdayEntryCopyWithImpl<_BirthdayEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BirthdayEntryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BirthdayEntry&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.name, name) || other.name == name)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.daysAway, daysAway) || other.daysAway == daysAway));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,name,dob,daysAway);
}

@override
String toString() {
    return 'BirthdayEntry(studentId: $studentId, admissionNo: $admissionNo, name: $name, dob: $dob, daysAway: $daysAway)';
}


}

/// @nodoc
abstract mixin class _$BirthdayEntryCopyWith<$Res> implements $BirthdayEntryCopyWith<$Res> {
  factory _$BirthdayEntryCopyWith(_BirthdayEntry value, $Res Function(_BirthdayEntry) _then) = __$BirthdayEntryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo, String name, DateTime? dob,@JsonKey(name: 'days_away') int daysAway
});




}
/// @nodoc
class __$BirthdayEntryCopyWithImpl<$Res>
    implements _$BirthdayEntryCopyWith<$Res> {
  __$BirthdayEntryCopyWithImpl(this._self, this._then);

  final _BirthdayEntry _self;
  final $Res Function(_BirthdayEntry) _then;

/// Create a copy of BirthdayEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? name = null,Object? dob = freezed,Object? daysAway = null,}) {
  return _then(_BirthdayEntry(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,daysAway: null == daysAway ? _self.daysAway : daysAway // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
