// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceRecord {

@JsonKey(name: 'attendance_id') String get attendanceId;@JsonKey(name: 'attendance_date') DateTime get attendanceDate;@JsonKey(name: 'status', unknownEnumValue: AttendanceStatus.unknown) AttendanceStatus get status;@JsonKey(name: 'remarks') String? get remarks;@JsonKey(name: 'check_in_time') DateTime? get checkInTime;
/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceRecordCopyWith<AttendanceRecord> get copyWith => _$AttendanceRecordCopyWithImpl<AttendanceRecord>(this as AttendanceRecord, _$identity);

  /// Serializes this AttendanceRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AttendanceRecord;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceRecord&&(identical(other.attendanceId, _this.attendanceId) || other.attendanceId == _this.attendanceId)&&(identical(other.attendanceDate, _this.attendanceDate) || other.attendanceDate == _this.attendanceDate)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.checkInTime, _this.checkInTime) || other.checkInTime == _this.checkInTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AttendanceRecord;
  return Object.hash(runtimeType,_this.attendanceId,_this.attendanceDate,_this.status,_this.remarks,_this.checkInTime);
}

@override
String toString() {
  final _this = this as AttendanceRecord;
  return 'AttendanceRecord(attendanceId: ${_this.attendanceId}, attendanceDate: ${_this.attendanceDate}, status: ${_this.status}, remarks: ${_this.remarks}, checkInTime: ${_this.checkInTime})';
}


}

/// @nodoc
abstract mixin class $AttendanceRecordCopyWith<$Res>  {
  factory $AttendanceRecordCopyWith(AttendanceRecord value, $Res Function(AttendanceRecord) _then) = _$AttendanceRecordCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'attendance_id') String attendanceId,@JsonKey(name: 'attendance_date') DateTime attendanceDate,@JsonKey(name: 'status', unknownEnumValue: AttendanceStatus.unknown) AttendanceStatus status,@JsonKey(name: 'remarks') String? remarks,@JsonKey(name: 'check_in_time') DateTime? checkInTime
});




}
/// @nodoc
class _$AttendanceRecordCopyWithImpl<$Res>
    implements $AttendanceRecordCopyWith<$Res> {
  _$AttendanceRecordCopyWithImpl(this._self, this._then);

  final AttendanceRecord _self;
  final $Res Function(AttendanceRecord) _then;

/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attendanceId = null,Object? attendanceDate = null,Object? status = null,Object? remarks = freezed,Object? checkInTime = freezed,}) {
  return _then(AttendanceRecord(
attendanceId: null == attendanceId ? _self.attendanceId : attendanceId // ignore: cast_nullable_to_non_nullable
as String,attendanceDate: null == attendanceDate ? _self.attendanceDate : attendanceDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AttendanceStatus,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,checkInTime: freezed == checkInTime ? _self.checkInTime : checkInTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceRecord].
extension AttendanceRecordPatterns on AttendanceRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceRecord value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceRecord value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_id')  String attendanceId, @JsonKey(name: 'attendance_date')  DateTime attendanceDate, @JsonKey(name: 'status', unknownEnumValue: AttendanceStatus.unknown)  AttendanceStatus status, @JsonKey(name: 'remarks')  String? remarks, @JsonKey(name: 'check_in_time')  DateTime? checkInTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
return $default(_that.attendanceId,_that.attendanceDate,_that.status,_that.remarks,_that.checkInTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_id')  String attendanceId, @JsonKey(name: 'attendance_date')  DateTime attendanceDate, @JsonKey(name: 'status', unknownEnumValue: AttendanceStatus.unknown)  AttendanceStatus status, @JsonKey(name: 'remarks')  String? remarks, @JsonKey(name: 'check_in_time')  DateTime? checkInTime)  $default,) {final _that = this;
switch (_that) {
case _AttendanceRecord():
return $default(_that.attendanceId,_that.attendanceDate,_that.status,_that.remarks,_that.checkInTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'attendance_id')  String attendanceId, @JsonKey(name: 'attendance_date')  DateTime attendanceDate, @JsonKey(name: 'status', unknownEnumValue: AttendanceStatus.unknown)  AttendanceStatus status, @JsonKey(name: 'remarks')  String? remarks, @JsonKey(name: 'check_in_time')  DateTime? checkInTime)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
return $default(_that.attendanceId,_that.attendanceDate,_that.status,_that.remarks,_that.checkInTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceRecord implements AttendanceRecord {
  const _AttendanceRecord({@JsonKey(name: 'attendance_id') required this.attendanceId, @JsonKey(name: 'attendance_date') required this.attendanceDate, @JsonKey(name: 'status', unknownEnumValue: AttendanceStatus.unknown) required this.status, @JsonKey(name: 'remarks') this.remarks, @JsonKey(name: 'check_in_time') this.checkInTime});
  factory _AttendanceRecord.fromJson(Map<String, dynamic> json) => _$AttendanceRecordFromJson(json);

@override@JsonKey(name: 'attendance_id') final  String attendanceId;
@override@JsonKey(name: 'attendance_date') final  DateTime attendanceDate;
@override@JsonKey(name: 'status', unknownEnumValue: AttendanceStatus.unknown) final  AttendanceStatus status;
@override@JsonKey(name: 'remarks') final  String? remarks;
@override@JsonKey(name: 'check_in_time') final  DateTime? checkInTime;

/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceRecordCopyWith<_AttendanceRecord> get copyWith => __$AttendanceRecordCopyWithImpl<_AttendanceRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceRecordToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceRecord&&(identical(other.attendanceId, attendanceId) || other.attendanceId == attendanceId)&&(identical(other.attendanceDate, attendanceDate) || other.attendanceDate == attendanceDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.checkInTime, checkInTime) || other.checkInTime == checkInTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,attendanceId,attendanceDate,status,remarks,checkInTime);
}

@override
String toString() {
    return 'AttendanceRecord(attendanceId: $attendanceId, attendanceDate: $attendanceDate, status: $status, remarks: $remarks, checkInTime: $checkInTime)';
}


}

/// @nodoc
abstract mixin class _$AttendanceRecordCopyWith<$Res> implements $AttendanceRecordCopyWith<$Res> {
  factory _$AttendanceRecordCopyWith(_AttendanceRecord value, $Res Function(_AttendanceRecord) _then) = __$AttendanceRecordCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'attendance_id') String attendanceId,@JsonKey(name: 'attendance_date') DateTime attendanceDate,@JsonKey(name: 'status', unknownEnumValue: AttendanceStatus.unknown) AttendanceStatus status,@JsonKey(name: 'remarks') String? remarks,@JsonKey(name: 'check_in_time') DateTime? checkInTime
});




}
/// @nodoc
class __$AttendanceRecordCopyWithImpl<$Res>
    implements _$AttendanceRecordCopyWith<$Res> {
  __$AttendanceRecordCopyWithImpl(this._self, this._then);

  final _AttendanceRecord _self;
  final $Res Function(_AttendanceRecord) _then;

/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attendanceId = null,Object? attendanceDate = null,Object? status = null,Object? remarks = freezed,Object? checkInTime = freezed,}) {
  return _then(_AttendanceRecord(
attendanceId: null == attendanceId ? _self.attendanceId : attendanceId // ignore: cast_nullable_to_non_nullable
as String,attendanceDate: null == attendanceDate ? _self.attendanceDate : attendanceDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AttendanceStatus,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,checkInTime: freezed == checkInTime ? _self.checkInTime : checkInTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
