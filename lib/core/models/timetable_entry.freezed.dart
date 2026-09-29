// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timetable_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TeacherNameRef {

@JsonKey(name: 'full_name') String get fullName;
/// Create a copy of TeacherNameRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeacherNameRefCopyWith<TeacherNameRef> get copyWith => _$TeacherNameRefCopyWithImpl<TeacherNameRef>(this as TeacherNameRef, _$identity);

  /// Serializes this TeacherNameRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TeacherNameRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeacherNameRef&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TeacherNameRef;
  return Object.hash(runtimeType,_this.fullName);
}

@override
String toString() {
  final _this = this as TeacherNameRef;
  return 'TeacherNameRef(fullName: ${_this.fullName})';
}


}

/// @nodoc
abstract mixin class $TeacherNameRefCopyWith<$Res>  {
  factory $TeacherNameRefCopyWith(TeacherNameRef value, $Res Function(TeacherNameRef) _then) = _$TeacherNameRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'full_name') String fullName
});




}
/// @nodoc
class _$TeacherNameRefCopyWithImpl<$Res>
    implements $TeacherNameRefCopyWith<$Res> {
  _$TeacherNameRefCopyWithImpl(this._self, this._then);

  final TeacherNameRef _self;
  final $Res Function(TeacherNameRef) _then;

/// Create a copy of TeacherNameRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = null,}) {
  return _then(TeacherNameRef(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TeacherNameRef].
extension TeacherNameRefPatterns on TeacherNameRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeacherNameRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeacherNameRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeacherNameRef value)  $default,){
final _that = this;
switch (_that) {
case _TeacherNameRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeacherNameRef value)?  $default,){
final _that = this;
switch (_that) {
case _TeacherNameRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'full_name')  String fullName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeacherNameRef() when $default != null:
return $default(_that.fullName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'full_name')  String fullName)  $default,) {final _that = this;
switch (_that) {
case _TeacherNameRef():
return $default(_that.fullName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'full_name')  String fullName)?  $default,) {final _that = this;
switch (_that) {
case _TeacherNameRef() when $default != null:
return $default(_that.fullName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeacherNameRef implements TeacherNameRef {
  const _TeacherNameRef({@JsonKey(name: 'full_name') required this.fullName});
  factory _TeacherNameRef.fromJson(Map<String, dynamic> json) => _$TeacherNameRefFromJson(json);

@override@JsonKey(name: 'full_name') final  String fullName;

/// Create a copy of TeacherNameRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeacherNameRefCopyWith<_TeacherNameRef> get copyWith => __$TeacherNameRefCopyWithImpl<_TeacherNameRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeacherNameRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeacherNameRef&&(identical(other.fullName, fullName) || other.fullName == fullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,fullName);
}

@override
String toString() {
    return 'TeacherNameRef(fullName: $fullName)';
}


}

/// @nodoc
abstract mixin class _$TeacherNameRefCopyWith<$Res> implements $TeacherNameRefCopyWith<$Res> {
  factory _$TeacherNameRefCopyWith(_TeacherNameRef value, $Res Function(_TeacherNameRef) _then) = __$TeacherNameRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'full_name') String fullName
});




}
/// @nodoc
class __$TeacherNameRefCopyWithImpl<$Res>
    implements _$TeacherNameRefCopyWith<$Res> {
  __$TeacherNameRefCopyWithImpl(this._self, this._then);

  final _TeacherNameRef _self;
  final $Res Function(_TeacherNameRef) _then;

/// Create a copy of TeacherNameRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = null,}) {
  return _then(_TeacherNameRef(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TimetableEntry {

@JsonKey(name: 'timetable_entry_id') String get entryId;@JsonKey(name: 'day_of_week') int get dayOfWeek;@JsonKey(name: 'period_number') int get periodNumber;@JsonKey(name: 'start_time') DateTime get startTime;@JsonKey(name: 'end_time') DateTime get endTime; String? get room;@JsonKey(name: 'period_type', unknownEnumValue: PeriodType.unknown) PeriodType get periodType;@JsonKey(name: 'break_label') String? get breakLabel;@JsonKey(name: 'academic_subjects') SubjectRef? get subject;@JsonKey(name: 'staff_accounts') TeacherNameRef? get teacher;
/// Create a copy of TimetableEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimetableEntryCopyWith<TimetableEntry> get copyWith => _$TimetableEntryCopyWithImpl<TimetableEntry>(this as TimetableEntry, _$identity);

  /// Serializes this TimetableEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TimetableEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimetableEntry&&(identical(other.entryId, _this.entryId) || other.entryId == _this.entryId)&&(identical(other.dayOfWeek, _this.dayOfWeek) || other.dayOfWeek == _this.dayOfWeek)&&(identical(other.periodNumber, _this.periodNumber) || other.periodNumber == _this.periodNumber)&&(identical(other.startTime, _this.startTime) || other.startTime == _this.startTime)&&(identical(other.endTime, _this.endTime) || other.endTime == _this.endTime)&&(identical(other.room, _this.room) || other.room == _this.room)&&(identical(other.periodType, _this.periodType) || other.periodType == _this.periodType)&&(identical(other.breakLabel, _this.breakLabel) || other.breakLabel == _this.breakLabel)&&(identical(other.subject, _this.subject) || other.subject == _this.subject)&&(identical(other.teacher, _this.teacher) || other.teacher == _this.teacher));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TimetableEntry;
  return Object.hash(runtimeType,_this.entryId,_this.dayOfWeek,_this.periodNumber,_this.startTime,_this.endTime,_this.room,_this.periodType,_this.breakLabel,_this.subject,_this.teacher);
}

@override
String toString() {
  final _this = this as TimetableEntry;
  return 'TimetableEntry(entryId: ${_this.entryId}, dayOfWeek: ${_this.dayOfWeek}, periodNumber: ${_this.periodNumber}, startTime: ${_this.startTime}, endTime: ${_this.endTime}, room: ${_this.room}, periodType: ${_this.periodType}, breakLabel: ${_this.breakLabel}, subject: ${_this.subject}, teacher: ${_this.teacher})';
}


}

/// @nodoc
abstract mixin class $TimetableEntryCopyWith<$Res>  {
  factory $TimetableEntryCopyWith(TimetableEntry value, $Res Function(TimetableEntry) _then) = _$TimetableEntryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'timetable_entry_id') String entryId,@JsonKey(name: 'day_of_week') int dayOfWeek,@JsonKey(name: 'period_number') int periodNumber,@JsonKey(name: 'start_time') DateTime startTime,@JsonKey(name: 'end_time') DateTime endTime, String? room,@JsonKey(name: 'period_type', unknownEnumValue: PeriodType.unknown) PeriodType periodType,@JsonKey(name: 'break_label') String? breakLabel,@JsonKey(name: 'academic_subjects') SubjectRef? subject,@JsonKey(name: 'staff_accounts') TeacherNameRef? teacher
});


$SubjectRefCopyWith<$Res>? get subject;$TeacherNameRefCopyWith<$Res>? get teacher;

}
/// @nodoc
class _$TimetableEntryCopyWithImpl<$Res>
    implements $TimetableEntryCopyWith<$Res> {
  _$TimetableEntryCopyWithImpl(this._self, this._then);

  final TimetableEntry _self;
  final $Res Function(TimetableEntry) _then;

/// Create a copy of TimetableEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entryId = null,Object? dayOfWeek = null,Object? periodNumber = null,Object? startTime = null,Object? endTime = null,Object? room = freezed,Object? periodType = null,Object? breakLabel = freezed,Object? subject = freezed,Object? teacher = freezed,}) {
  return _then(TimetableEntry(
entryId: null == entryId ? _self.entryId : entryId // ignore: cast_nullable_to_non_nullable
as String,dayOfWeek: null == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as int,periodNumber: null == periodNumber ? _self.periodNumber : periodNumber // ignore: cast_nullable_to_non_nullable
as int,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String?,periodType: null == periodType ? _self.periodType : periodType // ignore: cast_nullable_to_non_nullable
as PeriodType,breakLabel: freezed == breakLabel ? _self.breakLabel : breakLabel // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,teacher: freezed == teacher ? _self.teacher : teacher // ignore: cast_nullable_to_non_nullable
as TeacherNameRef?,
  ));
}
/// Create a copy of TimetableEntry
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
}/// Create a copy of TimetableEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeacherNameRefCopyWith<$Res>? get teacher {
    if (_self.teacher == null) {
    return null;
  }

  return $TeacherNameRefCopyWith<$Res>(_self.teacher!, (value) {
    return _then(_self.copyWith(teacher: value));
  });
}
}


/// Adds pattern-matching-related methods to [TimetableEntry].
extension TimetableEntryPatterns on TimetableEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimetableEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimetableEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimetableEntry value)  $default,){
final _that = this;
switch (_that) {
case _TimetableEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimetableEntry value)?  $default,){
final _that = this;
switch (_that) {
case _TimetableEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'timetable_entry_id')  String entryId, @JsonKey(name: 'day_of_week')  int dayOfWeek, @JsonKey(name: 'period_number')  int periodNumber, @JsonKey(name: 'start_time')  DateTime startTime, @JsonKey(name: 'end_time')  DateTime endTime,  String? room, @JsonKey(name: 'period_type', unknownEnumValue: PeriodType.unknown)  PeriodType periodType, @JsonKey(name: 'break_label')  String? breakLabel, @JsonKey(name: 'academic_subjects')  SubjectRef? subject, @JsonKey(name: 'staff_accounts')  TeacherNameRef? teacher)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimetableEntry() when $default != null:
return $default(_that.entryId,_that.dayOfWeek,_that.periodNumber,_that.startTime,_that.endTime,_that.room,_that.periodType,_that.breakLabel,_that.subject,_that.teacher);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'timetable_entry_id')  String entryId, @JsonKey(name: 'day_of_week')  int dayOfWeek, @JsonKey(name: 'period_number')  int periodNumber, @JsonKey(name: 'start_time')  DateTime startTime, @JsonKey(name: 'end_time')  DateTime endTime,  String? room, @JsonKey(name: 'period_type', unknownEnumValue: PeriodType.unknown)  PeriodType periodType, @JsonKey(name: 'break_label')  String? breakLabel, @JsonKey(name: 'academic_subjects')  SubjectRef? subject, @JsonKey(name: 'staff_accounts')  TeacherNameRef? teacher)  $default,) {final _that = this;
switch (_that) {
case _TimetableEntry():
return $default(_that.entryId,_that.dayOfWeek,_that.periodNumber,_that.startTime,_that.endTime,_that.room,_that.periodType,_that.breakLabel,_that.subject,_that.teacher);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'timetable_entry_id')  String entryId, @JsonKey(name: 'day_of_week')  int dayOfWeek, @JsonKey(name: 'period_number')  int periodNumber, @JsonKey(name: 'start_time')  DateTime startTime, @JsonKey(name: 'end_time')  DateTime endTime,  String? room, @JsonKey(name: 'period_type', unknownEnumValue: PeriodType.unknown)  PeriodType periodType, @JsonKey(name: 'break_label')  String? breakLabel, @JsonKey(name: 'academic_subjects')  SubjectRef? subject, @JsonKey(name: 'staff_accounts')  TeacherNameRef? teacher)?  $default,) {final _that = this;
switch (_that) {
case _TimetableEntry() when $default != null:
return $default(_that.entryId,_that.dayOfWeek,_that.periodNumber,_that.startTime,_that.endTime,_that.room,_that.periodType,_that.breakLabel,_that.subject,_that.teacher);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TimetableEntry implements TimetableEntry {
  const _TimetableEntry({@JsonKey(name: 'timetable_entry_id') required this.entryId, @JsonKey(name: 'day_of_week') required this.dayOfWeek, @JsonKey(name: 'period_number') required this.periodNumber, @JsonKey(name: 'start_time') required this.startTime, @JsonKey(name: 'end_time') required this.endTime, this.room, @JsonKey(name: 'period_type', unknownEnumValue: PeriodType.unknown) required this.periodType, @JsonKey(name: 'break_label') this.breakLabel, @JsonKey(name: 'academic_subjects') this.subject, @JsonKey(name: 'staff_accounts') this.teacher});
  factory _TimetableEntry.fromJson(Map<String, dynamic> json) => _$TimetableEntryFromJson(json);

@override@JsonKey(name: 'timetable_entry_id') final  String entryId;
@override@JsonKey(name: 'day_of_week') final  int dayOfWeek;
@override@JsonKey(name: 'period_number') final  int periodNumber;
@override@JsonKey(name: 'start_time') final  DateTime startTime;
@override@JsonKey(name: 'end_time') final  DateTime endTime;
@override final  String? room;
@override@JsonKey(name: 'period_type', unknownEnumValue: PeriodType.unknown) final  PeriodType periodType;
@override@JsonKey(name: 'break_label') final  String? breakLabel;
@override@JsonKey(name: 'academic_subjects') final  SubjectRef? subject;
@override@JsonKey(name: 'staff_accounts') final  TeacherNameRef? teacher;

/// Create a copy of TimetableEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimetableEntryCopyWith<_TimetableEntry> get copyWith => __$TimetableEntryCopyWithImpl<_TimetableEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimetableEntryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimetableEntry&&(identical(other.entryId, entryId) || other.entryId == entryId)&&(identical(other.dayOfWeek, dayOfWeek) || other.dayOfWeek == dayOfWeek)&&(identical(other.periodNumber, periodNumber) || other.periodNumber == periodNumber)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.room, room) || other.room == room)&&(identical(other.periodType, periodType) || other.periodType == periodType)&&(identical(other.breakLabel, breakLabel) || other.breakLabel == breakLabel)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.teacher, teacher) || other.teacher == teacher));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,entryId,dayOfWeek,periodNumber,startTime,endTime,room,periodType,breakLabel,subject,teacher);
}

@override
String toString() {
    return 'TimetableEntry(entryId: $entryId, dayOfWeek: $dayOfWeek, periodNumber: $periodNumber, startTime: $startTime, endTime: $endTime, room: $room, periodType: $periodType, breakLabel: $breakLabel, subject: $subject, teacher: $teacher)';
}


}

/// @nodoc
abstract mixin class _$TimetableEntryCopyWith<$Res> implements $TimetableEntryCopyWith<$Res> {
  factory _$TimetableEntryCopyWith(_TimetableEntry value, $Res Function(_TimetableEntry) _then) = __$TimetableEntryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'timetable_entry_id') String entryId,@JsonKey(name: 'day_of_week') int dayOfWeek,@JsonKey(name: 'period_number') int periodNumber,@JsonKey(name: 'start_time') DateTime startTime,@JsonKey(name: 'end_time') DateTime endTime, String? room,@JsonKey(name: 'period_type', unknownEnumValue: PeriodType.unknown) PeriodType periodType,@JsonKey(name: 'break_label') String? breakLabel,@JsonKey(name: 'academic_subjects') SubjectRef? subject,@JsonKey(name: 'staff_accounts') TeacherNameRef? teacher
});


@override $SubjectRefCopyWith<$Res>? get subject;@override $TeacherNameRefCopyWith<$Res>? get teacher;

}
/// @nodoc
class __$TimetableEntryCopyWithImpl<$Res>
    implements _$TimetableEntryCopyWith<$Res> {
  __$TimetableEntryCopyWithImpl(this._self, this._then);

  final _TimetableEntry _self;
  final $Res Function(_TimetableEntry) _then;

/// Create a copy of TimetableEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entryId = null,Object? dayOfWeek = null,Object? periodNumber = null,Object? startTime = null,Object? endTime = null,Object? room = freezed,Object? periodType = null,Object? breakLabel = freezed,Object? subject = freezed,Object? teacher = freezed,}) {
  return _then(_TimetableEntry(
entryId: null == entryId ? _self.entryId : entryId // ignore: cast_nullable_to_non_nullable
as String,dayOfWeek: null == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as int,periodNumber: null == periodNumber ? _self.periodNumber : periodNumber // ignore: cast_nullable_to_non_nullable
as int,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,room: freezed == room ? _self.room : room // ignore: cast_nullable_to_non_nullable
as String?,periodType: null == periodType ? _self.periodType : periodType // ignore: cast_nullable_to_non_nullable
as PeriodType,breakLabel: freezed == breakLabel ? _self.breakLabel : breakLabel // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectRef?,teacher: freezed == teacher ? _self.teacher : teacher // ignore: cast_nullable_to_non_nullable
as TeacherNameRef?,
  ));
}

/// Create a copy of TimetableEntry
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
}/// Create a copy of TimetableEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TeacherNameRefCopyWith<$Res>? get teacher {
    if (_self.teacher == null) {
    return null;
  }

  return $TeacherNameRefCopyWith<$Res>(_self.teacher!, (value) {
    return _then(_self.copyWith(teacher: value));
  });
}
}

// dart format on
