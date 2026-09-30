// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeaveRecord {

@JsonKey(name: 'leave_id') String get leaveId;@JsonKey(name: 'leave_type') String get leaveType;@JsonKey(name: 'from_date') DateTime get fromDate;@JsonKey(name: 'to_date') DateTime get toDate;@JsonKey(name: 'total_days', fromJson: _totalDaysFromJson, toJson: _totalDaysToJson) int get totalDays; String? get reason;@JsonKey(name: 'attachment_url') String? get attachmentUrl;@JsonKey(name: 'status', unknownEnumValue: LeaveStatus.unknown) LeaveStatus get status; String? get remarks;
/// Create a copy of LeaveRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveRecordCopyWith<LeaveRecord> get copyWith => _$LeaveRecordCopyWithImpl<LeaveRecord>(this as LeaveRecord, _$identity);

  /// Serializes this LeaveRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LeaveRecord;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveRecord&&(identical(other.leaveId, _this.leaveId) || other.leaveId == _this.leaveId)&&(identical(other.leaveType, _this.leaveType) || other.leaveType == _this.leaveType)&&(identical(other.fromDate, _this.fromDate) || other.fromDate == _this.fromDate)&&(identical(other.toDate, _this.toDate) || other.toDate == _this.toDate)&&(identical(other.totalDays, _this.totalDays) || other.totalDays == _this.totalDays)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.attachmentUrl, _this.attachmentUrl) || other.attachmentUrl == _this.attachmentUrl)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LeaveRecord;
  return Object.hash(runtimeType,_this.leaveId,_this.leaveType,_this.fromDate,_this.toDate,_this.totalDays,_this.reason,_this.attachmentUrl,_this.status,_this.remarks);
}

@override
String toString() {
  final _this = this as LeaveRecord;
  return 'LeaveRecord(leaveId: ${_this.leaveId}, leaveType: ${_this.leaveType}, fromDate: ${_this.fromDate}, toDate: ${_this.toDate}, totalDays: ${_this.totalDays}, reason: ${_this.reason}, attachmentUrl: ${_this.attachmentUrl}, status: ${_this.status}, remarks: ${_this.remarks})';
}


}

/// @nodoc
abstract mixin class $LeaveRecordCopyWith<$Res>  {
  factory $LeaveRecordCopyWith(LeaveRecord value, $Res Function(LeaveRecord) _then) = _$LeaveRecordCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'leave_id') String leaveId,@JsonKey(name: 'leave_type') String leaveType,@JsonKey(name: 'from_date') DateTime fromDate,@JsonKey(name: 'to_date') DateTime toDate,@JsonKey(name: 'total_days', fromJson: _totalDaysFromJson, toJson: _totalDaysToJson) int totalDays, String? reason,@JsonKey(name: 'attachment_url') String? attachmentUrl,@JsonKey(name: 'status', unknownEnumValue: LeaveStatus.unknown) LeaveStatus status, String? remarks
});




}
/// @nodoc
class _$LeaveRecordCopyWithImpl<$Res>
    implements $LeaveRecordCopyWith<$Res> {
  _$LeaveRecordCopyWithImpl(this._self, this._then);

  final LeaveRecord _self;
  final $Res Function(LeaveRecord) _then;

/// Create a copy of LeaveRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leaveId = null,Object? leaveType = null,Object? fromDate = null,Object? toDate = null,Object? totalDays = null,Object? reason = freezed,Object? attachmentUrl = freezed,Object? status = null,Object? remarks = freezed,}) {
  return _then(LeaveRecord(
leaveId: null == leaveId ? _self.leaveId : leaveId // ignore: cast_nullable_to_non_nullable
as String,leaveType: null == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as String,fromDate: null == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime,toDate: null == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime,totalDays: null == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as int,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LeaveStatus,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaveRecord].
extension LeaveRecordPatterns on LeaveRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveRecord value)  $default,){
final _that = this;
switch (_that) {
case _LeaveRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveRecord value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'leave_id')  String leaveId, @JsonKey(name: 'leave_type')  String leaveType, @JsonKey(name: 'from_date')  DateTime fromDate, @JsonKey(name: 'to_date')  DateTime toDate, @JsonKey(name: 'total_days', fromJson: _totalDaysFromJson, toJson: _totalDaysToJson)  int totalDays,  String? reason, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'status', unknownEnumValue: LeaveStatus.unknown)  LeaveStatus status,  String? remarks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveRecord() when $default != null:
return $default(_that.leaveId,_that.leaveType,_that.fromDate,_that.toDate,_that.totalDays,_that.reason,_that.attachmentUrl,_that.status,_that.remarks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'leave_id')  String leaveId, @JsonKey(name: 'leave_type')  String leaveType, @JsonKey(name: 'from_date')  DateTime fromDate, @JsonKey(name: 'to_date')  DateTime toDate, @JsonKey(name: 'total_days', fromJson: _totalDaysFromJson, toJson: _totalDaysToJson)  int totalDays,  String? reason, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'status', unknownEnumValue: LeaveStatus.unknown)  LeaveStatus status,  String? remarks)  $default,) {final _that = this;
switch (_that) {
case _LeaveRecord():
return $default(_that.leaveId,_that.leaveType,_that.fromDate,_that.toDate,_that.totalDays,_that.reason,_that.attachmentUrl,_that.status,_that.remarks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'leave_id')  String leaveId, @JsonKey(name: 'leave_type')  String leaveType, @JsonKey(name: 'from_date')  DateTime fromDate, @JsonKey(name: 'to_date')  DateTime toDate, @JsonKey(name: 'total_days', fromJson: _totalDaysFromJson, toJson: _totalDaysToJson)  int totalDays,  String? reason, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'status', unknownEnumValue: LeaveStatus.unknown)  LeaveStatus status,  String? remarks)?  $default,) {final _that = this;
switch (_that) {
case _LeaveRecord() when $default != null:
return $default(_that.leaveId,_that.leaveType,_that.fromDate,_that.toDate,_that.totalDays,_that.reason,_that.attachmentUrl,_that.status,_that.remarks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaveRecord implements LeaveRecord {
  const _LeaveRecord({@JsonKey(name: 'leave_id') required this.leaveId, @JsonKey(name: 'leave_type') required this.leaveType, @JsonKey(name: 'from_date') required this.fromDate, @JsonKey(name: 'to_date') required this.toDate, @JsonKey(name: 'total_days', fromJson: _totalDaysFromJson, toJson: _totalDaysToJson) required this.totalDays, this.reason, @JsonKey(name: 'attachment_url') this.attachmentUrl, @JsonKey(name: 'status', unknownEnumValue: LeaveStatus.unknown) required this.status, this.remarks});
  factory _LeaveRecord.fromJson(Map<String, dynamic> json) => _$LeaveRecordFromJson(json);

@override@JsonKey(name: 'leave_id') final  String leaveId;
@override@JsonKey(name: 'leave_type') final  String leaveType;
@override@JsonKey(name: 'from_date') final  DateTime fromDate;
@override@JsonKey(name: 'to_date') final  DateTime toDate;
@override@JsonKey(name: 'total_days', fromJson: _totalDaysFromJson, toJson: _totalDaysToJson) final  int totalDays;
@override final  String? reason;
@override@JsonKey(name: 'attachment_url') final  String? attachmentUrl;
@override@JsonKey(name: 'status', unknownEnumValue: LeaveStatus.unknown) final  LeaveStatus status;
@override final  String? remarks;

/// Create a copy of LeaveRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveRecordCopyWith<_LeaveRecord> get copyWith => __$LeaveRecordCopyWithImpl<_LeaveRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaveRecordToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveRecord&&(identical(other.leaveId, leaveId) || other.leaveId == leaveId)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.remarks, remarks) || other.remarks == remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,leaveId,leaveType,fromDate,toDate,totalDays,reason,attachmentUrl,status,remarks);
}

@override
String toString() {
    return 'LeaveRecord(leaveId: $leaveId, leaveType: $leaveType, fromDate: $fromDate, toDate: $toDate, totalDays: $totalDays, reason: $reason, attachmentUrl: $attachmentUrl, status: $status, remarks: $remarks)';
}


}

/// @nodoc
abstract mixin class _$LeaveRecordCopyWith<$Res> implements $LeaveRecordCopyWith<$Res> {
  factory _$LeaveRecordCopyWith(_LeaveRecord value, $Res Function(_LeaveRecord) _then) = __$LeaveRecordCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'leave_id') String leaveId,@JsonKey(name: 'leave_type') String leaveType,@JsonKey(name: 'from_date') DateTime fromDate,@JsonKey(name: 'to_date') DateTime toDate,@JsonKey(name: 'total_days', fromJson: _totalDaysFromJson, toJson: _totalDaysToJson) int totalDays, String? reason,@JsonKey(name: 'attachment_url') String? attachmentUrl,@JsonKey(name: 'status', unknownEnumValue: LeaveStatus.unknown) LeaveStatus status, String? remarks
});




}
/// @nodoc
class __$LeaveRecordCopyWithImpl<$Res>
    implements _$LeaveRecordCopyWith<$Res> {
  __$LeaveRecordCopyWithImpl(this._self, this._then);

  final _LeaveRecord _self;
  final $Res Function(_LeaveRecord) _then;

/// Create a copy of LeaveRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leaveId = null,Object? leaveType = null,Object? fromDate = null,Object? toDate = null,Object? totalDays = null,Object? reason = freezed,Object? attachmentUrl = freezed,Object? status = null,Object? remarks = freezed,}) {
  return _then(_LeaveRecord(
leaveId: null == leaveId ? _self.leaveId : leaveId // ignore: cast_nullable_to_non_nullable
as String,leaveType: null == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as String,fromDate: null == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime,toDate: null == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime,totalDays: null == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as int,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LeaveStatus,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
