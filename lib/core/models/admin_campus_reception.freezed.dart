// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_campus_reception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReceptionistSummary {

@JsonKey(name: 'staff_id') String get staffId;@JsonKey(name: 'employee_code') String? get employeeCode;@JsonKey(name: 'full_name') String? get fullName;@JsonKey(name: 'account_status') String? get accountStatus;@JsonKey(name: 'last_login') DateTime? get lastLogin;@JsonKey(name: 'inquiries_handled') int get inquiriesHandled;@JsonKey(name: 'follow_ups_count') int get followUpsCount;@JsonKey(name: 'converted_count') int get convertedCount;
/// Create a copy of ReceptionistSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReceptionistSummaryCopyWith<ReceptionistSummary> get copyWith => _$ReceptionistSummaryCopyWithImpl<ReceptionistSummary>(this as ReceptionistSummary, _$identity);

  /// Serializes this ReceptionistSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReceptionistSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReceptionistSummary&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.accountStatus, _this.accountStatus) || other.accountStatus == _this.accountStatus)&&(identical(other.lastLogin, _this.lastLogin) || other.lastLogin == _this.lastLogin)&&(identical(other.inquiriesHandled, _this.inquiriesHandled) || other.inquiriesHandled == _this.inquiriesHandled)&&(identical(other.followUpsCount, _this.followUpsCount) || other.followUpsCount == _this.followUpsCount)&&(identical(other.convertedCount, _this.convertedCount) || other.convertedCount == _this.convertedCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReceptionistSummary;
  return Object.hash(runtimeType,_this.staffId,_this.employeeCode,_this.fullName,_this.accountStatus,_this.lastLogin,_this.inquiriesHandled,_this.followUpsCount,_this.convertedCount);
}

@override
String toString() {
  final _this = this as ReceptionistSummary;
  return 'ReceptionistSummary(staffId: ${_this.staffId}, employeeCode: ${_this.employeeCode}, fullName: ${_this.fullName}, accountStatus: ${_this.accountStatus}, lastLogin: ${_this.lastLogin}, inquiriesHandled: ${_this.inquiriesHandled}, followUpsCount: ${_this.followUpsCount}, convertedCount: ${_this.convertedCount})';
}


}

/// @nodoc
abstract mixin class $ReceptionistSummaryCopyWith<$Res>  {
  factory $ReceptionistSummaryCopyWith(ReceptionistSummary value, $Res Function(ReceptionistSummary) _then) = _$ReceptionistSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'account_status') String? accountStatus,@JsonKey(name: 'last_login') DateTime? lastLogin,@JsonKey(name: 'inquiries_handled') int inquiriesHandled,@JsonKey(name: 'follow_ups_count') int followUpsCount,@JsonKey(name: 'converted_count') int convertedCount
});




}
/// @nodoc
class _$ReceptionistSummaryCopyWithImpl<$Res>
    implements $ReceptionistSummaryCopyWith<$Res> {
  _$ReceptionistSummaryCopyWithImpl(this._self, this._then);

  final ReceptionistSummary _self;
  final $Res Function(ReceptionistSummary) _then;

/// Create a copy of ReceptionistSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = null,Object? employeeCode = freezed,Object? fullName = freezed,Object? accountStatus = freezed,Object? lastLogin = freezed,Object? inquiriesHandled = null,Object? followUpsCount = null,Object? convertedCount = null,}) {
  return _then(ReceptionistSummary(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String?,lastLogin: freezed == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime?,inquiriesHandled: null == inquiriesHandled ? _self.inquiriesHandled : inquiriesHandled // ignore: cast_nullable_to_non_nullable
as int,followUpsCount: null == followUpsCount ? _self.followUpsCount : followUpsCount // ignore: cast_nullable_to_non_nullable
as int,convertedCount: null == convertedCount ? _self.convertedCount : convertedCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ReceptionistSummary].
extension ReceptionistSummaryPatterns on ReceptionistSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReceptionistSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReceptionistSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReceptionistSummary value)  $default,){
final _that = this;
switch (_that) {
case _ReceptionistSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReceptionistSummary value)?  $default,){
final _that = this;
switch (_that) {
case _ReceptionistSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'account_status')  String? accountStatus, @JsonKey(name: 'last_login')  DateTime? lastLogin, @JsonKey(name: 'inquiries_handled')  int inquiriesHandled, @JsonKey(name: 'follow_ups_count')  int followUpsCount, @JsonKey(name: 'converted_count')  int convertedCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReceptionistSummary() when $default != null:
return $default(_that.staffId,_that.employeeCode,_that.fullName,_that.accountStatus,_that.lastLogin,_that.inquiriesHandled,_that.followUpsCount,_that.convertedCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'account_status')  String? accountStatus, @JsonKey(name: 'last_login')  DateTime? lastLogin, @JsonKey(name: 'inquiries_handled')  int inquiriesHandled, @JsonKey(name: 'follow_ups_count')  int followUpsCount, @JsonKey(name: 'converted_count')  int convertedCount)  $default,) {final _that = this;
switch (_that) {
case _ReceptionistSummary():
return $default(_that.staffId,_that.employeeCode,_that.fullName,_that.accountStatus,_that.lastLogin,_that.inquiriesHandled,_that.followUpsCount,_that.convertedCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'account_status')  String? accountStatus, @JsonKey(name: 'last_login')  DateTime? lastLogin, @JsonKey(name: 'inquiries_handled')  int inquiriesHandled, @JsonKey(name: 'follow_ups_count')  int followUpsCount, @JsonKey(name: 'converted_count')  int convertedCount)?  $default,) {final _that = this;
switch (_that) {
case _ReceptionistSummary() when $default != null:
return $default(_that.staffId,_that.employeeCode,_that.fullName,_that.accountStatus,_that.lastLogin,_that.inquiriesHandled,_that.followUpsCount,_that.convertedCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReceptionistSummary implements ReceptionistSummary {
  const _ReceptionistSummary({@JsonKey(name: 'staff_id') required this.staffId, @JsonKey(name: 'employee_code') this.employeeCode, @JsonKey(name: 'full_name') this.fullName, @JsonKey(name: 'account_status') this.accountStatus, @JsonKey(name: 'last_login') this.lastLogin, @JsonKey(name: 'inquiries_handled') this.inquiriesHandled = 0, @JsonKey(name: 'follow_ups_count') this.followUpsCount = 0, @JsonKey(name: 'converted_count') this.convertedCount = 0});
  factory _ReceptionistSummary.fromJson(Map<String, dynamic> json) => _$ReceptionistSummaryFromJson(json);

@override@JsonKey(name: 'staff_id') final  String staffId;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override@JsonKey(name: 'account_status') final  String? accountStatus;
@override@JsonKey(name: 'last_login') final  DateTime? lastLogin;
@override@JsonKey(name: 'inquiries_handled') final  int inquiriesHandled;
@override@JsonKey(name: 'follow_ups_count') final  int followUpsCount;
@override@JsonKey(name: 'converted_count') final  int convertedCount;

/// Create a copy of ReceptionistSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReceptionistSummaryCopyWith<_ReceptionistSummary> get copyWith => __$ReceptionistSummaryCopyWithImpl<_ReceptionistSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReceptionistSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceptionistSummary&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.inquiriesHandled, inquiriesHandled) || other.inquiriesHandled == inquiriesHandled)&&(identical(other.followUpsCount, followUpsCount) || other.followUpsCount == followUpsCount)&&(identical(other.convertedCount, convertedCount) || other.convertedCount == convertedCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,employeeCode,fullName,accountStatus,lastLogin,inquiriesHandled,followUpsCount,convertedCount);
}

@override
String toString() {
    return 'ReceptionistSummary(staffId: $staffId, employeeCode: $employeeCode, fullName: $fullName, accountStatus: $accountStatus, lastLogin: $lastLogin, inquiriesHandled: $inquiriesHandled, followUpsCount: $followUpsCount, convertedCount: $convertedCount)';
}


}

/// @nodoc
abstract mixin class _$ReceptionistSummaryCopyWith<$Res> implements $ReceptionistSummaryCopyWith<$Res> {
  factory _$ReceptionistSummaryCopyWith(_ReceptionistSummary value, $Res Function(_ReceptionistSummary) _then) = __$ReceptionistSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'account_status') String? accountStatus,@JsonKey(name: 'last_login') DateTime? lastLogin,@JsonKey(name: 'inquiries_handled') int inquiriesHandled,@JsonKey(name: 'follow_ups_count') int followUpsCount,@JsonKey(name: 'converted_count') int convertedCount
});




}
/// @nodoc
class __$ReceptionistSummaryCopyWithImpl<$Res>
    implements _$ReceptionistSummaryCopyWith<$Res> {
  __$ReceptionistSummaryCopyWithImpl(this._self, this._then);

  final _ReceptionistSummary _self;
  final $Res Function(_ReceptionistSummary) _then;

/// Create a copy of ReceptionistSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = null,Object? employeeCode = freezed,Object? fullName = freezed,Object? accountStatus = freezed,Object? lastLogin = freezed,Object? inquiriesHandled = null,Object? followUpsCount = null,Object? convertedCount = null,}) {
  return _then(_ReceptionistSummary(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String?,lastLogin: freezed == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime?,inquiriesHandled: null == inquiriesHandled ? _self.inquiriesHandled : inquiriesHandled // ignore: cast_nullable_to_non_nullable
as int,followUpsCount: null == followUpsCount ? _self.followUpsCount : followUpsCount // ignore: cast_nullable_to_non_nullable
as int,convertedCount: null == convertedCount ? _self.convertedCount : convertedCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ReceptionistActivity {

@JsonKey(name: 'staff_id') String get staffId;@JsonKey(name: 'employee_code') String? get employeeCode;@JsonKey(name: 'full_name') String? get fullName;@JsonKey(name: 'account_status') String? get accountStatus;@JsonKey(name: 'last_login') DateTime? get lastLogin;@JsonKey(name: 'inquiries_handled') int get inquiriesHandled;@JsonKey(name: 'follow_ups_count') int get followUpsCount;@JsonKey(name: 'converted_count') int get convertedCount;@JsonKey(name: 'recent_actions') List<ReceptionActionItem> get recentActions;
/// Create a copy of ReceptionistActivity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReceptionistActivityCopyWith<ReceptionistActivity> get copyWith => _$ReceptionistActivityCopyWithImpl<ReceptionistActivity>(this as ReceptionistActivity, _$identity);

  /// Serializes this ReceptionistActivity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReceptionistActivity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReceptionistActivity&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.accountStatus, _this.accountStatus) || other.accountStatus == _this.accountStatus)&&(identical(other.lastLogin, _this.lastLogin) || other.lastLogin == _this.lastLogin)&&(identical(other.inquiriesHandled, _this.inquiriesHandled) || other.inquiriesHandled == _this.inquiriesHandled)&&(identical(other.followUpsCount, _this.followUpsCount) || other.followUpsCount == _this.followUpsCount)&&(identical(other.convertedCount, _this.convertedCount) || other.convertedCount == _this.convertedCount)&&const DeepCollectionEquality().equals(other.recentActions, _this.recentActions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReceptionistActivity;
  return Object.hash(runtimeType,_this.staffId,_this.employeeCode,_this.fullName,_this.accountStatus,_this.lastLogin,_this.inquiriesHandled,_this.followUpsCount,_this.convertedCount,const DeepCollectionEquality().hash(_this.recentActions));
}

@override
String toString() {
  final _this = this as ReceptionistActivity;
  return 'ReceptionistActivity(staffId: ${_this.staffId}, employeeCode: ${_this.employeeCode}, fullName: ${_this.fullName}, accountStatus: ${_this.accountStatus}, lastLogin: ${_this.lastLogin}, inquiriesHandled: ${_this.inquiriesHandled}, followUpsCount: ${_this.followUpsCount}, convertedCount: ${_this.convertedCount}, recentActions: ${_this.recentActions})';
}


}

/// @nodoc
abstract mixin class $ReceptionistActivityCopyWith<$Res>  {
  factory $ReceptionistActivityCopyWith(ReceptionistActivity value, $Res Function(ReceptionistActivity) _then) = _$ReceptionistActivityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'account_status') String? accountStatus,@JsonKey(name: 'last_login') DateTime? lastLogin,@JsonKey(name: 'inquiries_handled') int inquiriesHandled,@JsonKey(name: 'follow_ups_count') int followUpsCount,@JsonKey(name: 'converted_count') int convertedCount,@JsonKey(name: 'recent_actions') List<ReceptionActionItem> recentActions
});




}
/// @nodoc
class _$ReceptionistActivityCopyWithImpl<$Res>
    implements $ReceptionistActivityCopyWith<$Res> {
  _$ReceptionistActivityCopyWithImpl(this._self, this._then);

  final ReceptionistActivity _self;
  final $Res Function(ReceptionistActivity) _then;

/// Create a copy of ReceptionistActivity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = null,Object? employeeCode = freezed,Object? fullName = freezed,Object? accountStatus = freezed,Object? lastLogin = freezed,Object? inquiriesHandled = null,Object? followUpsCount = null,Object? convertedCount = null,Object? recentActions = null,}) {
  return _then(ReceptionistActivity(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String?,lastLogin: freezed == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime?,inquiriesHandled: null == inquiriesHandled ? _self.inquiriesHandled : inquiriesHandled // ignore: cast_nullable_to_non_nullable
as int,followUpsCount: null == followUpsCount ? _self.followUpsCount : followUpsCount // ignore: cast_nullable_to_non_nullable
as int,convertedCount: null == convertedCount ? _self.convertedCount : convertedCount // ignore: cast_nullable_to_non_nullable
as int,recentActions: null == recentActions ? _self.recentActions : recentActions // ignore: cast_nullable_to_non_nullable
as List<ReceptionActionItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReceptionistActivity].
extension ReceptionistActivityPatterns on ReceptionistActivity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReceptionistActivity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReceptionistActivity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReceptionistActivity value)  $default,){
final _that = this;
switch (_that) {
case _ReceptionistActivity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReceptionistActivity value)?  $default,){
final _that = this;
switch (_that) {
case _ReceptionistActivity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'account_status')  String? accountStatus, @JsonKey(name: 'last_login')  DateTime? lastLogin, @JsonKey(name: 'inquiries_handled')  int inquiriesHandled, @JsonKey(name: 'follow_ups_count')  int followUpsCount, @JsonKey(name: 'converted_count')  int convertedCount, @JsonKey(name: 'recent_actions')  List<ReceptionActionItem> recentActions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReceptionistActivity() when $default != null:
return $default(_that.staffId,_that.employeeCode,_that.fullName,_that.accountStatus,_that.lastLogin,_that.inquiriesHandled,_that.followUpsCount,_that.convertedCount,_that.recentActions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'account_status')  String? accountStatus, @JsonKey(name: 'last_login')  DateTime? lastLogin, @JsonKey(name: 'inquiries_handled')  int inquiriesHandled, @JsonKey(name: 'follow_ups_count')  int followUpsCount, @JsonKey(name: 'converted_count')  int convertedCount, @JsonKey(name: 'recent_actions')  List<ReceptionActionItem> recentActions)  $default,) {final _that = this;
switch (_that) {
case _ReceptionistActivity():
return $default(_that.staffId,_that.employeeCode,_that.fullName,_that.accountStatus,_that.lastLogin,_that.inquiriesHandled,_that.followUpsCount,_that.convertedCount,_that.recentActions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'account_status')  String? accountStatus, @JsonKey(name: 'last_login')  DateTime? lastLogin, @JsonKey(name: 'inquiries_handled')  int inquiriesHandled, @JsonKey(name: 'follow_ups_count')  int followUpsCount, @JsonKey(name: 'converted_count')  int convertedCount, @JsonKey(name: 'recent_actions')  List<ReceptionActionItem> recentActions)?  $default,) {final _that = this;
switch (_that) {
case _ReceptionistActivity() when $default != null:
return $default(_that.staffId,_that.employeeCode,_that.fullName,_that.accountStatus,_that.lastLogin,_that.inquiriesHandled,_that.followUpsCount,_that.convertedCount,_that.recentActions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReceptionistActivity implements ReceptionistActivity {
  const _ReceptionistActivity({@JsonKey(name: 'staff_id') required this.staffId, @JsonKey(name: 'employee_code') this.employeeCode, @JsonKey(name: 'full_name') this.fullName, @JsonKey(name: 'account_status') this.accountStatus, @JsonKey(name: 'last_login') this.lastLogin, @JsonKey(name: 'inquiries_handled') this.inquiriesHandled = 0, @JsonKey(name: 'follow_ups_count') this.followUpsCount = 0, @JsonKey(name: 'converted_count') this.convertedCount = 0, @JsonKey(name: 'recent_actions')  List<ReceptionActionItem> recentActions = const <ReceptionActionItem>[]}): _recentActions = recentActions;
  factory _ReceptionistActivity.fromJson(Map<String, dynamic> json) => _$ReceptionistActivityFromJson(json);

@override@JsonKey(name: 'staff_id') final  String staffId;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override@JsonKey(name: 'account_status') final  String? accountStatus;
@override@JsonKey(name: 'last_login') final  DateTime? lastLogin;
@override@JsonKey(name: 'inquiries_handled') final  int inquiriesHandled;
@override@JsonKey(name: 'follow_ups_count') final  int followUpsCount;
@override@JsonKey(name: 'converted_count') final  int convertedCount;
 final  List<ReceptionActionItem> _recentActions;
@override@JsonKey(name: 'recent_actions') List<ReceptionActionItem> get recentActions {
  if (_recentActions is EqualUnmodifiableListView) return _recentActions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentActions);
}


/// Create a copy of ReceptionistActivity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReceptionistActivityCopyWith<_ReceptionistActivity> get copyWith => __$ReceptionistActivityCopyWithImpl<_ReceptionistActivity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReceptionistActivityToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceptionistActivity&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.inquiriesHandled, inquiriesHandled) || other.inquiriesHandled == inquiriesHandled)&&(identical(other.followUpsCount, followUpsCount) || other.followUpsCount == followUpsCount)&&(identical(other.convertedCount, convertedCount) || other.convertedCount == convertedCount)&&const DeepCollectionEquality().equals(other.recentActions, _recentActions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,employeeCode,fullName,accountStatus,lastLogin,inquiriesHandled,followUpsCount,convertedCount,const DeepCollectionEquality().hash(_recentActions));
}

@override
String toString() {
    return 'ReceptionistActivity(staffId: $staffId, employeeCode: $employeeCode, fullName: $fullName, accountStatus: $accountStatus, lastLogin: $lastLogin, inquiriesHandled: $inquiriesHandled, followUpsCount: $followUpsCount, convertedCount: $convertedCount, recentActions: $recentActions)';
}


}

/// @nodoc
abstract mixin class _$ReceptionistActivityCopyWith<$Res> implements $ReceptionistActivityCopyWith<$Res> {
  factory _$ReceptionistActivityCopyWith(_ReceptionistActivity value, $Res Function(_ReceptionistActivity) _then) = __$ReceptionistActivityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'account_status') String? accountStatus,@JsonKey(name: 'last_login') DateTime? lastLogin,@JsonKey(name: 'inquiries_handled') int inquiriesHandled,@JsonKey(name: 'follow_ups_count') int followUpsCount,@JsonKey(name: 'converted_count') int convertedCount,@JsonKey(name: 'recent_actions') List<ReceptionActionItem> recentActions
});




}
/// @nodoc
class __$ReceptionistActivityCopyWithImpl<$Res>
    implements _$ReceptionistActivityCopyWith<$Res> {
  __$ReceptionistActivityCopyWithImpl(this._self, this._then);

  final _ReceptionistActivity _self;
  final $Res Function(_ReceptionistActivity) _then;

/// Create a copy of ReceptionistActivity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = null,Object? employeeCode = freezed,Object? fullName = freezed,Object? accountStatus = freezed,Object? lastLogin = freezed,Object? inquiriesHandled = null,Object? followUpsCount = null,Object? convertedCount = null,Object? recentActions = null,}) {
  return _then(_ReceptionistActivity(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String?,lastLogin: freezed == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as DateTime?,inquiriesHandled: null == inquiriesHandled ? _self.inquiriesHandled : inquiriesHandled // ignore: cast_nullable_to_non_nullable
as int,followUpsCount: null == followUpsCount ? _self.followUpsCount : followUpsCount // ignore: cast_nullable_to_non_nullable
as int,convertedCount: null == convertedCount ? _self.convertedCount : convertedCount // ignore: cast_nullable_to_non_nullable
as int,recentActions: null == recentActions ? _self._recentActions : recentActions // ignore: cast_nullable_to_non_nullable
as List<ReceptionActionItem>,
  ));
}


}


/// @nodoc
mixin _$ReceptionActionItem {

@JsonKey(name: 'activity_type') String get activityType; DateTime? get timestamp; ReceptionInquiryRef? get inquiry; String? get status; String? get source;@JsonKey(name: 'status_after') String? get statusAfter;
/// Create a copy of ReceptionActionItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReceptionActionItemCopyWith<ReceptionActionItem> get copyWith => _$ReceptionActionItemCopyWithImpl<ReceptionActionItem>(this as ReceptionActionItem, _$identity);

  /// Serializes this ReceptionActionItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReceptionActionItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReceptionActionItem&&(identical(other.activityType, _this.activityType) || other.activityType == _this.activityType)&&(identical(other.timestamp, _this.timestamp) || other.timestamp == _this.timestamp)&&(identical(other.inquiry, _this.inquiry) || other.inquiry == _this.inquiry)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.source, _this.source) || other.source == _this.source)&&(identical(other.statusAfter, _this.statusAfter) || other.statusAfter == _this.statusAfter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReceptionActionItem;
  return Object.hash(runtimeType,_this.activityType,_this.timestamp,_this.inquiry,_this.status,_this.source,_this.statusAfter);
}

@override
String toString() {
  final _this = this as ReceptionActionItem;
  return 'ReceptionActionItem(activityType: ${_this.activityType}, timestamp: ${_this.timestamp}, inquiry: ${_this.inquiry}, status: ${_this.status}, source: ${_this.source}, statusAfter: ${_this.statusAfter})';
}


}

/// @nodoc
abstract mixin class $ReceptionActionItemCopyWith<$Res>  {
  factory $ReceptionActionItemCopyWith(ReceptionActionItem value, $Res Function(ReceptionActionItem) _then) = _$ReceptionActionItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'activity_type') String activityType, DateTime? timestamp, ReceptionInquiryRef? inquiry, String? status, String? source,@JsonKey(name: 'status_after') String? statusAfter
});


$ReceptionInquiryRefCopyWith<$Res>? get inquiry;

}
/// @nodoc
class _$ReceptionActionItemCopyWithImpl<$Res>
    implements $ReceptionActionItemCopyWith<$Res> {
  _$ReceptionActionItemCopyWithImpl(this._self, this._then);

  final ReceptionActionItem _self;
  final $Res Function(ReceptionActionItem) _then;

/// Create a copy of ReceptionActionItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activityType = null,Object? timestamp = freezed,Object? inquiry = freezed,Object? status = freezed,Object? source = freezed,Object? statusAfter = freezed,}) {
  return _then(ReceptionActionItem(
activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,inquiry: freezed == inquiry ? _self.inquiry : inquiry // ignore: cast_nullable_to_non_nullable
as ReceptionInquiryRef?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,statusAfter: freezed == statusAfter ? _self.statusAfter : statusAfter // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ReceptionActionItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReceptionInquiryRefCopyWith<$Res>? get inquiry {
    if (_self.inquiry == null) {
    return null;
  }

  return $ReceptionInquiryRefCopyWith<$Res>(_self.inquiry!, (value) {
    return _then(_self.copyWith(inquiry: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReceptionActionItem].
extension ReceptionActionItemPatterns on ReceptionActionItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReceptionActionItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReceptionActionItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReceptionActionItem value)  $default,){
final _that = this;
switch (_that) {
case _ReceptionActionItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReceptionActionItem value)?  $default,){
final _that = this;
switch (_that) {
case _ReceptionActionItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'activity_type')  String activityType,  DateTime? timestamp,  ReceptionInquiryRef? inquiry,  String? status,  String? source, @JsonKey(name: 'status_after')  String? statusAfter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReceptionActionItem() when $default != null:
return $default(_that.activityType,_that.timestamp,_that.inquiry,_that.status,_that.source,_that.statusAfter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'activity_type')  String activityType,  DateTime? timestamp,  ReceptionInquiryRef? inquiry,  String? status,  String? source, @JsonKey(name: 'status_after')  String? statusAfter)  $default,) {final _that = this;
switch (_that) {
case _ReceptionActionItem():
return $default(_that.activityType,_that.timestamp,_that.inquiry,_that.status,_that.source,_that.statusAfter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'activity_type')  String activityType,  DateTime? timestamp,  ReceptionInquiryRef? inquiry,  String? status,  String? source, @JsonKey(name: 'status_after')  String? statusAfter)?  $default,) {final _that = this;
switch (_that) {
case _ReceptionActionItem() when $default != null:
return $default(_that.activityType,_that.timestamp,_that.inquiry,_that.status,_that.source,_that.statusAfter);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReceptionActionItem implements ReceptionActionItem {
  const _ReceptionActionItem({@JsonKey(name: 'activity_type') required this.activityType, this.timestamp, this.inquiry, this.status, this.source, @JsonKey(name: 'status_after') this.statusAfter});
  factory _ReceptionActionItem.fromJson(Map<String, dynamic> json) => _$ReceptionActionItemFromJson(json);

@override@JsonKey(name: 'activity_type') final  String activityType;
@override final  DateTime? timestamp;
@override final  ReceptionInquiryRef? inquiry;
@override final  String? status;
@override final  String? source;
@override@JsonKey(name: 'status_after') final  String? statusAfter;

/// Create a copy of ReceptionActionItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReceptionActionItemCopyWith<_ReceptionActionItem> get copyWith => __$ReceptionActionItemCopyWithImpl<_ReceptionActionItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReceptionActionItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceptionActionItem&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.inquiry, inquiry) || other.inquiry == inquiry)&&(identical(other.status, status) || other.status == status)&&(identical(other.source, source) || other.source == source)&&(identical(other.statusAfter, statusAfter) || other.statusAfter == statusAfter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,activityType,timestamp,inquiry,status,source,statusAfter);
}

@override
String toString() {
    return 'ReceptionActionItem(activityType: $activityType, timestamp: $timestamp, inquiry: $inquiry, status: $status, source: $source, statusAfter: $statusAfter)';
}


}

/// @nodoc
abstract mixin class _$ReceptionActionItemCopyWith<$Res> implements $ReceptionActionItemCopyWith<$Res> {
  factory _$ReceptionActionItemCopyWith(_ReceptionActionItem value, $Res Function(_ReceptionActionItem) _then) = __$ReceptionActionItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'activity_type') String activityType, DateTime? timestamp, ReceptionInquiryRef? inquiry, String? status, String? source,@JsonKey(name: 'status_after') String? statusAfter
});


@override $ReceptionInquiryRefCopyWith<$Res>? get inquiry;

}
/// @nodoc
class __$ReceptionActionItemCopyWithImpl<$Res>
    implements _$ReceptionActionItemCopyWith<$Res> {
  __$ReceptionActionItemCopyWithImpl(this._self, this._then);

  final _ReceptionActionItem _self;
  final $Res Function(_ReceptionActionItem) _then;

/// Create a copy of ReceptionActionItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activityType = null,Object? timestamp = freezed,Object? inquiry = freezed,Object? status = freezed,Object? source = freezed,Object? statusAfter = freezed,}) {
  return _then(_ReceptionActionItem(
activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,inquiry: freezed == inquiry ? _self.inquiry : inquiry // ignore: cast_nullable_to_non_nullable
as ReceptionInquiryRef?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,statusAfter: freezed == statusAfter ? _self.statusAfter : statusAfter // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ReceptionActionItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReceptionInquiryRefCopyWith<$Res>? get inquiry {
    if (_self.inquiry == null) {
    return null;
  }

  return $ReceptionInquiryRefCopyWith<$Res>(_self.inquiry!, (value) {
    return _then(_self.copyWith(inquiry: value));
  });
}
}


/// @nodoc
mixin _$ReceptionInquiryRef {

@JsonKey(name: 'inquiry_id') String? get inquiryId;@JsonKey(name: 'student_name') String? get studentName;
/// Create a copy of ReceptionInquiryRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReceptionInquiryRefCopyWith<ReceptionInquiryRef> get copyWith => _$ReceptionInquiryRefCopyWithImpl<ReceptionInquiryRef>(this as ReceptionInquiryRef, _$identity);

  /// Serializes this ReceptionInquiryRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReceptionInquiryRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReceptionInquiryRef&&(identical(other.inquiryId, _this.inquiryId) || other.inquiryId == _this.inquiryId)&&(identical(other.studentName, _this.studentName) || other.studentName == _this.studentName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReceptionInquiryRef;
  return Object.hash(runtimeType,_this.inquiryId,_this.studentName);
}

@override
String toString() {
  final _this = this as ReceptionInquiryRef;
  return 'ReceptionInquiryRef(inquiryId: ${_this.inquiryId}, studentName: ${_this.studentName})';
}


}

/// @nodoc
abstract mixin class $ReceptionInquiryRefCopyWith<$Res>  {
  factory $ReceptionInquiryRefCopyWith(ReceptionInquiryRef value, $Res Function(ReceptionInquiryRef) _then) = _$ReceptionInquiryRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'inquiry_id') String? inquiryId,@JsonKey(name: 'student_name') String? studentName
});




}
/// @nodoc
class _$ReceptionInquiryRefCopyWithImpl<$Res>
    implements $ReceptionInquiryRefCopyWith<$Res> {
  _$ReceptionInquiryRefCopyWithImpl(this._self, this._then);

  final ReceptionInquiryRef _self;
  final $Res Function(ReceptionInquiryRef) _then;

/// Create a copy of ReceptionInquiryRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? inquiryId = freezed,Object? studentName = freezed,}) {
  return _then(ReceptionInquiryRef(
inquiryId: freezed == inquiryId ? _self.inquiryId : inquiryId // ignore: cast_nullable_to_non_nullable
as String?,studentName: freezed == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReceptionInquiryRef].
extension ReceptionInquiryRefPatterns on ReceptionInquiryRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReceptionInquiryRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReceptionInquiryRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReceptionInquiryRef value)  $default,){
final _that = this;
switch (_that) {
case _ReceptionInquiryRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReceptionInquiryRef value)?  $default,){
final _that = this;
switch (_that) {
case _ReceptionInquiryRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'inquiry_id')  String? inquiryId, @JsonKey(name: 'student_name')  String? studentName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReceptionInquiryRef() when $default != null:
return $default(_that.inquiryId,_that.studentName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'inquiry_id')  String? inquiryId, @JsonKey(name: 'student_name')  String? studentName)  $default,) {final _that = this;
switch (_that) {
case _ReceptionInquiryRef():
return $default(_that.inquiryId,_that.studentName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'inquiry_id')  String? inquiryId, @JsonKey(name: 'student_name')  String? studentName)?  $default,) {final _that = this;
switch (_that) {
case _ReceptionInquiryRef() when $default != null:
return $default(_that.inquiryId,_that.studentName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReceptionInquiryRef implements ReceptionInquiryRef {
  const _ReceptionInquiryRef({@JsonKey(name: 'inquiry_id') this.inquiryId, @JsonKey(name: 'student_name') this.studentName});
  factory _ReceptionInquiryRef.fromJson(Map<String, dynamic> json) => _$ReceptionInquiryRefFromJson(json);

@override@JsonKey(name: 'inquiry_id') final  String? inquiryId;
@override@JsonKey(name: 'student_name') final  String? studentName;

/// Create a copy of ReceptionInquiryRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReceptionInquiryRefCopyWith<_ReceptionInquiryRef> get copyWith => __$ReceptionInquiryRefCopyWithImpl<_ReceptionInquiryRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReceptionInquiryRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceptionInquiryRef&&(identical(other.inquiryId, inquiryId) || other.inquiryId == inquiryId)&&(identical(other.studentName, studentName) || other.studentName == studentName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,inquiryId,studentName);
}

@override
String toString() {
    return 'ReceptionInquiryRef(inquiryId: $inquiryId, studentName: $studentName)';
}


}

/// @nodoc
abstract mixin class _$ReceptionInquiryRefCopyWith<$Res> implements $ReceptionInquiryRefCopyWith<$Res> {
  factory _$ReceptionInquiryRefCopyWith(_ReceptionInquiryRef value, $Res Function(_ReceptionInquiryRef) _then) = __$ReceptionInquiryRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'inquiry_id') String? inquiryId,@JsonKey(name: 'student_name') String? studentName
});




}
/// @nodoc
class __$ReceptionInquiryRefCopyWithImpl<$Res>
    implements _$ReceptionInquiryRefCopyWith<$Res> {
  __$ReceptionInquiryRefCopyWithImpl(this._self, this._then);

  final _ReceptionInquiryRef _self;
  final $Res Function(_ReceptionInquiryRef) _then;

/// Create a copy of ReceptionInquiryRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? inquiryId = freezed,Object? studentName = freezed,}) {
  return _then(_ReceptionInquiryRef(
inquiryId: freezed == inquiryId ? _self.inquiryId : inquiryId // ignore: cast_nullable_to_non_nullable
as String?,studentName: freezed == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
