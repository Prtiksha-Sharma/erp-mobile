// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_self_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StaffAttendanceSummary {

 DateTime? get from; DateTime? get to; int get total; List<StaffAttendanceRecord> get data;
/// Create a copy of StaffAttendanceSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffAttendanceSummaryCopyWith<StaffAttendanceSummary> get copyWith => _$StaffAttendanceSummaryCopyWithImpl<StaffAttendanceSummary>(this as StaffAttendanceSummary, _$identity);

  /// Serializes this StaffAttendanceSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffAttendanceSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffAttendanceSummary&&(identical(other.from, _this.from) || other.from == _this.from)&&(identical(other.to, _this.to) || other.to == _this.to)&&(identical(other.total, _this.total) || other.total == _this.total)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffAttendanceSummary;
  return Object.hash(runtimeType,_this.from,_this.to,_this.total,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as StaffAttendanceSummary;
  return 'StaffAttendanceSummary(from: ${_this.from}, to: ${_this.to}, total: ${_this.total}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $StaffAttendanceSummaryCopyWith<$Res>  {
  factory $StaffAttendanceSummaryCopyWith(StaffAttendanceSummary value, $Res Function(StaffAttendanceSummary) _then) = _$StaffAttendanceSummaryCopyWithImpl;
@useResult
$Res call({
 DateTime? from, DateTime? to, int total, List<StaffAttendanceRecord> data
});




}
/// @nodoc
class _$StaffAttendanceSummaryCopyWithImpl<$Res>
    implements $StaffAttendanceSummaryCopyWith<$Res> {
  _$StaffAttendanceSummaryCopyWithImpl(this._self, this._then);

  final StaffAttendanceSummary _self;
  final $Res Function(StaffAttendanceSummary) _then;

/// Create a copy of StaffAttendanceSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = freezed,Object? to = freezed,Object? total = null,Object? data = null,}) {
  return _then(StaffAttendanceSummary(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as DateTime?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as DateTime?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<StaffAttendanceRecord>,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffAttendanceSummary].
extension StaffAttendanceSummaryPatterns on StaffAttendanceSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffAttendanceSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffAttendanceSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffAttendanceSummary value)  $default,){
final _that = this;
switch (_that) {
case _StaffAttendanceSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffAttendanceSummary value)?  $default,){
final _that = this;
switch (_that) {
case _StaffAttendanceSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? from,  DateTime? to,  int total,  List<StaffAttendanceRecord> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffAttendanceSummary() when $default != null:
return $default(_that.from,_that.to,_that.total,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? from,  DateTime? to,  int total,  List<StaffAttendanceRecord> data)  $default,) {final _that = this;
switch (_that) {
case _StaffAttendanceSummary():
return $default(_that.from,_that.to,_that.total,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? from,  DateTime? to,  int total,  List<StaffAttendanceRecord> data)?  $default,) {final _that = this;
switch (_that) {
case _StaffAttendanceSummary() when $default != null:
return $default(_that.from,_that.to,_that.total,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffAttendanceSummary implements StaffAttendanceSummary {
  const _StaffAttendanceSummary({this.from, this.to, this.total = 0,  List<StaffAttendanceRecord> data = const <StaffAttendanceRecord>[]}): _data = data;
  factory _StaffAttendanceSummary.fromJson(Map<String, dynamic> json) => _$StaffAttendanceSummaryFromJson(json);

@override final  DateTime? from;
@override final  DateTime? to;
@override@JsonKey() final  int total;
 final  List<StaffAttendanceRecord> _data;
@override@JsonKey() List<StaffAttendanceRecord> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of StaffAttendanceSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffAttendanceSummaryCopyWith<_StaffAttendanceSummary> get copyWith => __$StaffAttendanceSummaryCopyWithImpl<_StaffAttendanceSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffAttendanceSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffAttendanceSummary&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,from,to,total,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'StaffAttendanceSummary(from: $from, to: $to, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class _$StaffAttendanceSummaryCopyWith<$Res> implements $StaffAttendanceSummaryCopyWith<$Res> {
  factory _$StaffAttendanceSummaryCopyWith(_StaffAttendanceSummary value, $Res Function(_StaffAttendanceSummary) _then) = __$StaffAttendanceSummaryCopyWithImpl;
@override @useResult
$Res call({
 DateTime? from, DateTime? to, int total, List<StaffAttendanceRecord> data
});




}
/// @nodoc
class __$StaffAttendanceSummaryCopyWithImpl<$Res>
    implements _$StaffAttendanceSummaryCopyWith<$Res> {
  __$StaffAttendanceSummaryCopyWithImpl(this._self, this._then);

  final _StaffAttendanceSummary _self;
  final $Res Function(_StaffAttendanceSummary) _then;

/// Create a copy of StaffAttendanceSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = freezed,Object? to = freezed,Object? total = null,Object? data = null,}) {
  return _then(_StaffAttendanceSummary(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as DateTime?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as DateTime?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<StaffAttendanceRecord>,
  ));
}


}


/// @nodoc
mixin _$StaffAttendanceRecord {

@JsonKey(name: 'attendance_id') String get attendanceId;@JsonKey(name: 'attendance_date') DateTime get attendanceDate; String get status; String? get remarks;
/// Create a copy of StaffAttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffAttendanceRecordCopyWith<StaffAttendanceRecord> get copyWith => _$StaffAttendanceRecordCopyWithImpl<StaffAttendanceRecord>(this as StaffAttendanceRecord, _$identity);

  /// Serializes this StaffAttendanceRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffAttendanceRecord;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffAttendanceRecord&&(identical(other.attendanceId, _this.attendanceId) || other.attendanceId == _this.attendanceId)&&(identical(other.attendanceDate, _this.attendanceDate) || other.attendanceDate == _this.attendanceDate)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffAttendanceRecord;
  return Object.hash(runtimeType,_this.attendanceId,_this.attendanceDate,_this.status,_this.remarks);
}

@override
String toString() {
  final _this = this as StaffAttendanceRecord;
  return 'StaffAttendanceRecord(attendanceId: ${_this.attendanceId}, attendanceDate: ${_this.attendanceDate}, status: ${_this.status}, remarks: ${_this.remarks})';
}


}

/// @nodoc
abstract mixin class $StaffAttendanceRecordCopyWith<$Res>  {
  factory $StaffAttendanceRecordCopyWith(StaffAttendanceRecord value, $Res Function(StaffAttendanceRecord) _then) = _$StaffAttendanceRecordCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'attendance_id') String attendanceId,@JsonKey(name: 'attendance_date') DateTime attendanceDate, String status, String? remarks
});




}
/// @nodoc
class _$StaffAttendanceRecordCopyWithImpl<$Res>
    implements $StaffAttendanceRecordCopyWith<$Res> {
  _$StaffAttendanceRecordCopyWithImpl(this._self, this._then);

  final StaffAttendanceRecord _self;
  final $Res Function(StaffAttendanceRecord) _then;

/// Create a copy of StaffAttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attendanceId = null,Object? attendanceDate = null,Object? status = null,Object? remarks = freezed,}) {
  return _then(StaffAttendanceRecord(
attendanceId: null == attendanceId ? _self.attendanceId : attendanceId // ignore: cast_nullable_to_non_nullable
as String,attendanceDate: null == attendanceDate ? _self.attendanceDate : attendanceDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffAttendanceRecord].
extension StaffAttendanceRecordPatterns on StaffAttendanceRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffAttendanceRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffAttendanceRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffAttendanceRecord value)  $default,){
final _that = this;
switch (_that) {
case _StaffAttendanceRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffAttendanceRecord value)?  $default,){
final _that = this;
switch (_that) {
case _StaffAttendanceRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_id')  String attendanceId, @JsonKey(name: 'attendance_date')  DateTime attendanceDate,  String status,  String? remarks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffAttendanceRecord() when $default != null:
return $default(_that.attendanceId,_that.attendanceDate,_that.status,_that.remarks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_id')  String attendanceId, @JsonKey(name: 'attendance_date')  DateTime attendanceDate,  String status,  String? remarks)  $default,) {final _that = this;
switch (_that) {
case _StaffAttendanceRecord():
return $default(_that.attendanceId,_that.attendanceDate,_that.status,_that.remarks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'attendance_id')  String attendanceId, @JsonKey(name: 'attendance_date')  DateTime attendanceDate,  String status,  String? remarks)?  $default,) {final _that = this;
switch (_that) {
case _StaffAttendanceRecord() when $default != null:
return $default(_that.attendanceId,_that.attendanceDate,_that.status,_that.remarks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffAttendanceRecord implements StaffAttendanceRecord {
  const _StaffAttendanceRecord({@JsonKey(name: 'attendance_id') required this.attendanceId, @JsonKey(name: 'attendance_date') required this.attendanceDate, required this.status, this.remarks});
  factory _StaffAttendanceRecord.fromJson(Map<String, dynamic> json) => _$StaffAttendanceRecordFromJson(json);

@override@JsonKey(name: 'attendance_id') final  String attendanceId;
@override@JsonKey(name: 'attendance_date') final  DateTime attendanceDate;
@override final  String status;
@override final  String? remarks;

/// Create a copy of StaffAttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffAttendanceRecordCopyWith<_StaffAttendanceRecord> get copyWith => __$StaffAttendanceRecordCopyWithImpl<_StaffAttendanceRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffAttendanceRecordToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffAttendanceRecord&&(identical(other.attendanceId, attendanceId) || other.attendanceId == attendanceId)&&(identical(other.attendanceDate, attendanceDate) || other.attendanceDate == attendanceDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.remarks, remarks) || other.remarks == remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,attendanceId,attendanceDate,status,remarks);
}

@override
String toString() {
    return 'StaffAttendanceRecord(attendanceId: $attendanceId, attendanceDate: $attendanceDate, status: $status, remarks: $remarks)';
}


}

/// @nodoc
abstract mixin class _$StaffAttendanceRecordCopyWith<$Res> implements $StaffAttendanceRecordCopyWith<$Res> {
  factory _$StaffAttendanceRecordCopyWith(_StaffAttendanceRecord value, $Res Function(_StaffAttendanceRecord) _then) = __$StaffAttendanceRecordCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'attendance_id') String attendanceId,@JsonKey(name: 'attendance_date') DateTime attendanceDate, String status, String? remarks
});




}
/// @nodoc
class __$StaffAttendanceRecordCopyWithImpl<$Res>
    implements _$StaffAttendanceRecordCopyWith<$Res> {
  __$StaffAttendanceRecordCopyWithImpl(this._self, this._then);

  final _StaffAttendanceRecord _self;
  final $Res Function(_StaffAttendanceRecord) _then;

/// Create a copy of StaffAttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attendanceId = null,Object? attendanceDate = null,Object? status = null,Object? remarks = freezed,}) {
  return _then(_StaffAttendanceRecord(
attendanceId: null == attendanceId ? _self.attendanceId : attendanceId // ignore: cast_nullable_to_non_nullable
as String,attendanceDate: null == attendanceDate ? _self.attendanceDate : attendanceDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StaffLeave {

@JsonKey(name: 'leave_id') String get leaveId;@JsonKey(name: 'leave_type') String get leaveType;@JsonKey(name: 'from_date') DateTime get fromDate;@JsonKey(name: 'to_date') DateTime get toDate;@JsonKey(name: 'total_days')@LooseNumConverter() num? get totalDays; String? get reason; String? get status; String? get remarks;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of StaffLeave
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffLeaveCopyWith<StaffLeave> get copyWith => _$StaffLeaveCopyWithImpl<StaffLeave>(this as StaffLeave, _$identity);

  /// Serializes this StaffLeave to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StaffLeave;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffLeave&&(identical(other.leaveId, _this.leaveId) || other.leaveId == _this.leaveId)&&(identical(other.leaveType, _this.leaveType) || other.leaveType == _this.leaveType)&&(identical(other.fromDate, _this.fromDate) || other.fromDate == _this.fromDate)&&(identical(other.toDate, _this.toDate) || other.toDate == _this.toDate)&&(identical(other.totalDays, _this.totalDays) || other.totalDays == _this.totalDays)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StaffLeave;
  return Object.hash(runtimeType,_this.leaveId,_this.leaveType,_this.fromDate,_this.toDate,_this.totalDays,_this.reason,_this.status,_this.remarks,_this.createdAt);
}

@override
String toString() {
  final _this = this as StaffLeave;
  return 'StaffLeave(leaveId: ${_this.leaveId}, leaveType: ${_this.leaveType}, fromDate: ${_this.fromDate}, toDate: ${_this.toDate}, totalDays: ${_this.totalDays}, reason: ${_this.reason}, status: ${_this.status}, remarks: ${_this.remarks}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $StaffLeaveCopyWith<$Res>  {
  factory $StaffLeaveCopyWith(StaffLeave value, $Res Function(StaffLeave) _then) = _$StaffLeaveCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'leave_id') String leaveId,@JsonKey(name: 'leave_type') String leaveType,@JsonKey(name: 'from_date') DateTime fromDate,@JsonKey(name: 'to_date') DateTime toDate,@JsonKey(name: 'total_days')@LooseNumConverter() num? totalDays, String? reason, String? status, String? remarks,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$StaffLeaveCopyWithImpl<$Res>
    implements $StaffLeaveCopyWith<$Res> {
  _$StaffLeaveCopyWithImpl(this._self, this._then);

  final StaffLeave _self;
  final $Res Function(StaffLeave) _then;

/// Create a copy of StaffLeave
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leaveId = null,Object? leaveType = null,Object? fromDate = null,Object? toDate = null,Object? totalDays = freezed,Object? reason = freezed,Object? status = freezed,Object? remarks = freezed,Object? createdAt = freezed,}) {
  return _then(StaffLeave(
leaveId: null == leaveId ? _self.leaveId : leaveId // ignore: cast_nullable_to_non_nullable
as String,leaveType: null == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as String,fromDate: null == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime,toDate: null == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime,totalDays: freezed == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as num?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffLeave].
extension StaffLeavePatterns on StaffLeave {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StaffLeave value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StaffLeave() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StaffLeave value)  $default,){
final _that = this;
switch (_that) {
case _StaffLeave():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StaffLeave value)?  $default,){
final _that = this;
switch (_that) {
case _StaffLeave() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'leave_id')  String leaveId, @JsonKey(name: 'leave_type')  String leaveType, @JsonKey(name: 'from_date')  DateTime fromDate, @JsonKey(name: 'to_date')  DateTime toDate, @JsonKey(name: 'total_days')@LooseNumConverter()  num? totalDays,  String? reason,  String? status,  String? remarks, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StaffLeave() when $default != null:
return $default(_that.leaveId,_that.leaveType,_that.fromDate,_that.toDate,_that.totalDays,_that.reason,_that.status,_that.remarks,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'leave_id')  String leaveId, @JsonKey(name: 'leave_type')  String leaveType, @JsonKey(name: 'from_date')  DateTime fromDate, @JsonKey(name: 'to_date')  DateTime toDate, @JsonKey(name: 'total_days')@LooseNumConverter()  num? totalDays,  String? reason,  String? status,  String? remarks, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _StaffLeave():
return $default(_that.leaveId,_that.leaveType,_that.fromDate,_that.toDate,_that.totalDays,_that.reason,_that.status,_that.remarks,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'leave_id')  String leaveId, @JsonKey(name: 'leave_type')  String leaveType, @JsonKey(name: 'from_date')  DateTime fromDate, @JsonKey(name: 'to_date')  DateTime toDate, @JsonKey(name: 'total_days')@LooseNumConverter()  num? totalDays,  String? reason,  String? status,  String? remarks, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _StaffLeave() when $default != null:
return $default(_that.leaveId,_that.leaveType,_that.fromDate,_that.toDate,_that.totalDays,_that.reason,_that.status,_that.remarks,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StaffLeave implements StaffLeave {
  const _StaffLeave({@JsonKey(name: 'leave_id') required this.leaveId, @JsonKey(name: 'leave_type') required this.leaveType, @JsonKey(name: 'from_date') required this.fromDate, @JsonKey(name: 'to_date') required this.toDate, @JsonKey(name: 'total_days')@LooseNumConverter() this.totalDays, this.reason, this.status, this.remarks, @JsonKey(name: 'created_at') this.createdAt});
  factory _StaffLeave.fromJson(Map<String, dynamic> json) => _$StaffLeaveFromJson(json);

@override@JsonKey(name: 'leave_id') final  String leaveId;
@override@JsonKey(name: 'leave_type') final  String leaveType;
@override@JsonKey(name: 'from_date') final  DateTime fromDate;
@override@JsonKey(name: 'to_date') final  DateTime toDate;
@override@JsonKey(name: 'total_days')@LooseNumConverter() final  num? totalDays;
@override final  String? reason;
@override final  String? status;
@override final  String? remarks;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of StaffLeave
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StaffLeaveCopyWith<_StaffLeave> get copyWith => __$StaffLeaveCopyWithImpl<_StaffLeave>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StaffLeaveToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StaffLeave&&(identical(other.leaveId, leaveId) || other.leaveId == leaveId)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,leaveId,leaveType,fromDate,toDate,totalDays,reason,status,remarks,createdAt);
}

@override
String toString() {
    return 'StaffLeave(leaveId: $leaveId, leaveType: $leaveType, fromDate: $fromDate, toDate: $toDate, totalDays: $totalDays, reason: $reason, status: $status, remarks: $remarks, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$StaffLeaveCopyWith<$Res> implements $StaffLeaveCopyWith<$Res> {
  factory _$StaffLeaveCopyWith(_StaffLeave value, $Res Function(_StaffLeave) _then) = __$StaffLeaveCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'leave_id') String leaveId,@JsonKey(name: 'leave_type') String leaveType,@JsonKey(name: 'from_date') DateTime fromDate,@JsonKey(name: 'to_date') DateTime toDate,@JsonKey(name: 'total_days')@LooseNumConverter() num? totalDays, String? reason, String? status, String? remarks,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$StaffLeaveCopyWithImpl<$Res>
    implements _$StaffLeaveCopyWith<$Res> {
  __$StaffLeaveCopyWithImpl(this._self, this._then);

  final _StaffLeave _self;
  final $Res Function(_StaffLeave) _then;

/// Create a copy of StaffLeave
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leaveId = null,Object? leaveType = null,Object? fromDate = null,Object? toDate = null,Object? totalDays = freezed,Object? reason = freezed,Object? status = freezed,Object? remarks = freezed,Object? createdAt = freezed,}) {
  return _then(_StaffLeave(
leaveId: null == leaveId ? _self.leaveId : leaveId // ignore: cast_nullable_to_non_nullable
as String,leaveType: null == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as String,fromDate: null == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime,toDate: null == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime,totalDays: freezed == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as num?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
