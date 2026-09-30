// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActivityItem {

@JsonKey(name: 'activity_id') String get activityId;@JsonKey(name: 'activity_name') String get activityName; String? get description;@JsonKey(name: 'activity_type') String? get activityType;@JsonKey(name: 'target_audience') String? get targetAudience;@JsonKey(name: 'activity_date') DateTime? get activityDate; String? get venue;
/// Create a copy of ActivityItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityItemCopyWith<ActivityItem> get copyWith => _$ActivityItemCopyWithImpl<ActivityItem>(this as ActivityItem, _$identity);

  /// Serializes this ActivityItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ActivityItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityItem&&(identical(other.activityId, _this.activityId) || other.activityId == _this.activityId)&&(identical(other.activityName, _this.activityName) || other.activityName == _this.activityName)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.activityType, _this.activityType) || other.activityType == _this.activityType)&&(identical(other.targetAudience, _this.targetAudience) || other.targetAudience == _this.targetAudience)&&(identical(other.activityDate, _this.activityDate) || other.activityDate == _this.activityDate)&&(identical(other.venue, _this.venue) || other.venue == _this.venue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ActivityItem;
  return Object.hash(runtimeType,_this.activityId,_this.activityName,_this.description,_this.activityType,_this.targetAudience,_this.activityDate,_this.venue);
}

@override
String toString() {
  final _this = this as ActivityItem;
  return 'ActivityItem(activityId: ${_this.activityId}, activityName: ${_this.activityName}, description: ${_this.description}, activityType: ${_this.activityType}, targetAudience: ${_this.targetAudience}, activityDate: ${_this.activityDate}, venue: ${_this.venue})';
}


}

/// @nodoc
abstract mixin class $ActivityItemCopyWith<$Res>  {
  factory $ActivityItemCopyWith(ActivityItem value, $Res Function(ActivityItem) _then) = _$ActivityItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'activity_id') String activityId,@JsonKey(name: 'activity_name') String activityName, String? description,@JsonKey(name: 'activity_type') String? activityType,@JsonKey(name: 'target_audience') String? targetAudience,@JsonKey(name: 'activity_date') DateTime? activityDate, String? venue
});




}
/// @nodoc
class _$ActivityItemCopyWithImpl<$Res>
    implements $ActivityItemCopyWith<$Res> {
  _$ActivityItemCopyWithImpl(this._self, this._then);

  final ActivityItem _self;
  final $Res Function(ActivityItem) _then;

/// Create a copy of ActivityItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activityId = null,Object? activityName = null,Object? description = freezed,Object? activityType = freezed,Object? targetAudience = freezed,Object? activityDate = freezed,Object? venue = freezed,}) {
  return _then(ActivityItem(
activityId: null == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as String,activityName: null == activityName ? _self.activityName : activityName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,activityType: freezed == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String?,targetAudience: freezed == targetAudience ? _self.targetAudience : targetAudience // ignore: cast_nullable_to_non_nullable
as String?,activityDate: freezed == activityDate ? _self.activityDate : activityDate // ignore: cast_nullable_to_non_nullable
as DateTime?,venue: freezed == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityItem].
extension ActivityItemPatterns on ActivityItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityItem value)  $default,){
final _that = this;
switch (_that) {
case _ActivityItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityItem value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'activity_id')  String activityId, @JsonKey(name: 'activity_name')  String activityName,  String? description, @JsonKey(name: 'activity_type')  String? activityType, @JsonKey(name: 'target_audience')  String? targetAudience, @JsonKey(name: 'activity_date')  DateTime? activityDate,  String? venue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityItem() when $default != null:
return $default(_that.activityId,_that.activityName,_that.description,_that.activityType,_that.targetAudience,_that.activityDate,_that.venue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'activity_id')  String activityId, @JsonKey(name: 'activity_name')  String activityName,  String? description, @JsonKey(name: 'activity_type')  String? activityType, @JsonKey(name: 'target_audience')  String? targetAudience, @JsonKey(name: 'activity_date')  DateTime? activityDate,  String? venue)  $default,) {final _that = this;
switch (_that) {
case _ActivityItem():
return $default(_that.activityId,_that.activityName,_that.description,_that.activityType,_that.targetAudience,_that.activityDate,_that.venue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'activity_id')  String activityId, @JsonKey(name: 'activity_name')  String activityName,  String? description, @JsonKey(name: 'activity_type')  String? activityType, @JsonKey(name: 'target_audience')  String? targetAudience, @JsonKey(name: 'activity_date')  DateTime? activityDate,  String? venue)?  $default,) {final _that = this;
switch (_that) {
case _ActivityItem() when $default != null:
return $default(_that.activityId,_that.activityName,_that.description,_that.activityType,_that.targetAudience,_that.activityDate,_that.venue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityItem implements ActivityItem {
  const _ActivityItem({@JsonKey(name: 'activity_id') required this.activityId, @JsonKey(name: 'activity_name') required this.activityName, this.description, @JsonKey(name: 'activity_type') this.activityType, @JsonKey(name: 'target_audience') this.targetAudience, @JsonKey(name: 'activity_date') this.activityDate, this.venue});
  factory _ActivityItem.fromJson(Map<String, dynamic> json) => _$ActivityItemFromJson(json);

@override@JsonKey(name: 'activity_id') final  String activityId;
@override@JsonKey(name: 'activity_name') final  String activityName;
@override final  String? description;
@override@JsonKey(name: 'activity_type') final  String? activityType;
@override@JsonKey(name: 'target_audience') final  String? targetAudience;
@override@JsonKey(name: 'activity_date') final  DateTime? activityDate;
@override final  String? venue;

/// Create a copy of ActivityItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityItemCopyWith<_ActivityItem> get copyWith => __$ActivityItemCopyWithImpl<_ActivityItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityItem&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.activityName, activityName) || other.activityName == activityName)&&(identical(other.description, description) || other.description == description)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.targetAudience, targetAudience) || other.targetAudience == targetAudience)&&(identical(other.activityDate, activityDate) || other.activityDate == activityDate)&&(identical(other.venue, venue) || other.venue == venue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,activityId,activityName,description,activityType,targetAudience,activityDate,venue);
}

@override
String toString() {
    return 'ActivityItem(activityId: $activityId, activityName: $activityName, description: $description, activityType: $activityType, targetAudience: $targetAudience, activityDate: $activityDate, venue: $venue)';
}


}

/// @nodoc
abstract mixin class _$ActivityItemCopyWith<$Res> implements $ActivityItemCopyWith<$Res> {
  factory _$ActivityItemCopyWith(_ActivityItem value, $Res Function(_ActivityItem) _then) = __$ActivityItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'activity_id') String activityId,@JsonKey(name: 'activity_name') String activityName, String? description,@JsonKey(name: 'activity_type') String? activityType,@JsonKey(name: 'target_audience') String? targetAudience,@JsonKey(name: 'activity_date') DateTime? activityDate, String? venue
});




}
/// @nodoc
class __$ActivityItemCopyWithImpl<$Res>
    implements _$ActivityItemCopyWith<$Res> {
  __$ActivityItemCopyWithImpl(this._self, this._then);

  final _ActivityItem _self;
  final $Res Function(_ActivityItem) _then;

/// Create a copy of ActivityItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activityId = null,Object? activityName = null,Object? description = freezed,Object? activityType = freezed,Object? targetAudience = freezed,Object? activityDate = freezed,Object? venue = freezed,}) {
  return _then(_ActivityItem(
activityId: null == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as String,activityName: null == activityName ? _self.activityName : activityName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,activityType: freezed == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String?,targetAudience: freezed == targetAudience ? _self.targetAudience : targetAudience // ignore: cast_nullable_to_non_nullable
as String?,activityDate: freezed == activityDate ? _self.activityDate : activityDate // ignore: cast_nullable_to_non_nullable
as DateTime?,venue: freezed == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ActivityParticipationInfo {

@JsonKey(name: 'activity_id') String get activityId;@JsonKey(name: 'activity_name') String get activityName; String? get description;@JsonKey(name: 'activity_type') String? get activityType;@JsonKey(name: 'activity_date') DateTime? get activityDate; String? get venue;
/// Create a copy of ActivityParticipationInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityParticipationInfoCopyWith<ActivityParticipationInfo> get copyWith => _$ActivityParticipationInfoCopyWithImpl<ActivityParticipationInfo>(this as ActivityParticipationInfo, _$identity);

  /// Serializes this ActivityParticipationInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ActivityParticipationInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityParticipationInfo&&(identical(other.activityId, _this.activityId) || other.activityId == _this.activityId)&&(identical(other.activityName, _this.activityName) || other.activityName == _this.activityName)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.activityType, _this.activityType) || other.activityType == _this.activityType)&&(identical(other.activityDate, _this.activityDate) || other.activityDate == _this.activityDate)&&(identical(other.venue, _this.venue) || other.venue == _this.venue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ActivityParticipationInfo;
  return Object.hash(runtimeType,_this.activityId,_this.activityName,_this.description,_this.activityType,_this.activityDate,_this.venue);
}

@override
String toString() {
  final _this = this as ActivityParticipationInfo;
  return 'ActivityParticipationInfo(activityId: ${_this.activityId}, activityName: ${_this.activityName}, description: ${_this.description}, activityType: ${_this.activityType}, activityDate: ${_this.activityDate}, venue: ${_this.venue})';
}


}

/// @nodoc
abstract mixin class $ActivityParticipationInfoCopyWith<$Res>  {
  factory $ActivityParticipationInfoCopyWith(ActivityParticipationInfo value, $Res Function(ActivityParticipationInfo) _then) = _$ActivityParticipationInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'activity_id') String activityId,@JsonKey(name: 'activity_name') String activityName, String? description,@JsonKey(name: 'activity_type') String? activityType,@JsonKey(name: 'activity_date') DateTime? activityDate, String? venue
});




}
/// @nodoc
class _$ActivityParticipationInfoCopyWithImpl<$Res>
    implements $ActivityParticipationInfoCopyWith<$Res> {
  _$ActivityParticipationInfoCopyWithImpl(this._self, this._then);

  final ActivityParticipationInfo _self;
  final $Res Function(ActivityParticipationInfo) _then;

/// Create a copy of ActivityParticipationInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activityId = null,Object? activityName = null,Object? description = freezed,Object? activityType = freezed,Object? activityDate = freezed,Object? venue = freezed,}) {
  return _then(ActivityParticipationInfo(
activityId: null == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as String,activityName: null == activityName ? _self.activityName : activityName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,activityType: freezed == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String?,activityDate: freezed == activityDate ? _self.activityDate : activityDate // ignore: cast_nullable_to_non_nullable
as DateTime?,venue: freezed == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityParticipationInfo].
extension ActivityParticipationInfoPatterns on ActivityParticipationInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityParticipationInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityParticipationInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityParticipationInfo value)  $default,){
final _that = this;
switch (_that) {
case _ActivityParticipationInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityParticipationInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityParticipationInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'activity_id')  String activityId, @JsonKey(name: 'activity_name')  String activityName,  String? description, @JsonKey(name: 'activity_type')  String? activityType, @JsonKey(name: 'activity_date')  DateTime? activityDate,  String? venue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityParticipationInfo() when $default != null:
return $default(_that.activityId,_that.activityName,_that.description,_that.activityType,_that.activityDate,_that.venue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'activity_id')  String activityId, @JsonKey(name: 'activity_name')  String activityName,  String? description, @JsonKey(name: 'activity_type')  String? activityType, @JsonKey(name: 'activity_date')  DateTime? activityDate,  String? venue)  $default,) {final _that = this;
switch (_that) {
case _ActivityParticipationInfo():
return $default(_that.activityId,_that.activityName,_that.description,_that.activityType,_that.activityDate,_that.venue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'activity_id')  String activityId, @JsonKey(name: 'activity_name')  String activityName,  String? description, @JsonKey(name: 'activity_type')  String? activityType, @JsonKey(name: 'activity_date')  DateTime? activityDate,  String? venue)?  $default,) {final _that = this;
switch (_that) {
case _ActivityParticipationInfo() when $default != null:
return $default(_that.activityId,_that.activityName,_that.description,_that.activityType,_that.activityDate,_that.venue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityParticipationInfo implements ActivityParticipationInfo {
  const _ActivityParticipationInfo({@JsonKey(name: 'activity_id') required this.activityId, @JsonKey(name: 'activity_name') required this.activityName, this.description, @JsonKey(name: 'activity_type') this.activityType, @JsonKey(name: 'activity_date') this.activityDate, this.venue});
  factory _ActivityParticipationInfo.fromJson(Map<String, dynamic> json) => _$ActivityParticipationInfoFromJson(json);

@override@JsonKey(name: 'activity_id') final  String activityId;
@override@JsonKey(name: 'activity_name') final  String activityName;
@override final  String? description;
@override@JsonKey(name: 'activity_type') final  String? activityType;
@override@JsonKey(name: 'activity_date') final  DateTime? activityDate;
@override final  String? venue;

/// Create a copy of ActivityParticipationInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityParticipationInfoCopyWith<_ActivityParticipationInfo> get copyWith => __$ActivityParticipationInfoCopyWithImpl<_ActivityParticipationInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityParticipationInfoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityParticipationInfo&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.activityName, activityName) || other.activityName == activityName)&&(identical(other.description, description) || other.description == description)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.activityDate, activityDate) || other.activityDate == activityDate)&&(identical(other.venue, venue) || other.venue == venue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,activityId,activityName,description,activityType,activityDate,venue);
}

@override
String toString() {
    return 'ActivityParticipationInfo(activityId: $activityId, activityName: $activityName, description: $description, activityType: $activityType, activityDate: $activityDate, venue: $venue)';
}


}

/// @nodoc
abstract mixin class _$ActivityParticipationInfoCopyWith<$Res> implements $ActivityParticipationInfoCopyWith<$Res> {
  factory _$ActivityParticipationInfoCopyWith(_ActivityParticipationInfo value, $Res Function(_ActivityParticipationInfo) _then) = __$ActivityParticipationInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'activity_id') String activityId,@JsonKey(name: 'activity_name') String activityName, String? description,@JsonKey(name: 'activity_type') String? activityType,@JsonKey(name: 'activity_date') DateTime? activityDate, String? venue
});




}
/// @nodoc
class __$ActivityParticipationInfoCopyWithImpl<$Res>
    implements _$ActivityParticipationInfoCopyWith<$Res> {
  __$ActivityParticipationInfoCopyWithImpl(this._self, this._then);

  final _ActivityParticipationInfo _self;
  final $Res Function(_ActivityParticipationInfo) _then;

/// Create a copy of ActivityParticipationInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activityId = null,Object? activityName = null,Object? description = freezed,Object? activityType = freezed,Object? activityDate = freezed,Object? venue = freezed,}) {
  return _then(_ActivityParticipationInfo(
activityId: null == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as String,activityName: null == activityName ? _self.activityName : activityName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,activityType: freezed == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String?,activityDate: freezed == activityDate ? _self.activityDate : activityDate // ignore: cast_nullable_to_non_nullable
as DateTime?,venue: freezed == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ActivityParticipation {

@JsonKey(name: 'participant_id') String get participantId; String? get result; String? get remarks; ActivityParticipationInfo get activity;
/// Create a copy of ActivityParticipation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityParticipationCopyWith<ActivityParticipation> get copyWith => _$ActivityParticipationCopyWithImpl<ActivityParticipation>(this as ActivityParticipation, _$identity);

  /// Serializes this ActivityParticipation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ActivityParticipation;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityParticipation&&(identical(other.participantId, _this.participantId) || other.participantId == _this.participantId)&&(identical(other.result, _this.result) || other.result == _this.result)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.activity, _this.activity) || other.activity == _this.activity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ActivityParticipation;
  return Object.hash(runtimeType,_this.participantId,_this.result,_this.remarks,_this.activity);
}

@override
String toString() {
  final _this = this as ActivityParticipation;
  return 'ActivityParticipation(participantId: ${_this.participantId}, result: ${_this.result}, remarks: ${_this.remarks}, activity: ${_this.activity})';
}


}

/// @nodoc
abstract mixin class $ActivityParticipationCopyWith<$Res>  {
  factory $ActivityParticipationCopyWith(ActivityParticipation value, $Res Function(ActivityParticipation) _then) = _$ActivityParticipationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'participant_id') String participantId, String? result, String? remarks, ActivityParticipationInfo activity
});


$ActivityParticipationInfoCopyWith<$Res> get activity;

}
/// @nodoc
class _$ActivityParticipationCopyWithImpl<$Res>
    implements $ActivityParticipationCopyWith<$Res> {
  _$ActivityParticipationCopyWithImpl(this._self, this._then);

  final ActivityParticipation _self;
  final $Res Function(ActivityParticipation) _then;

/// Create a copy of ActivityParticipation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? participantId = null,Object? result = freezed,Object? remarks = freezed,Object? activity = null,}) {
  return _then(ActivityParticipation(
participantId: null == participantId ? _self.participantId : participantId // ignore: cast_nullable_to_non_nullable
as String,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as ActivityParticipationInfo,
  ));
}
/// Create a copy of ActivityParticipation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityParticipationInfoCopyWith<$Res> get activity {
  
  return $ActivityParticipationInfoCopyWith<$Res>(_self.activity, (value) {
    return _then(_self.copyWith(activity: value));
  });
}
}


/// Adds pattern-matching-related methods to [ActivityParticipation].
extension ActivityParticipationPatterns on ActivityParticipation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityParticipation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityParticipation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityParticipation value)  $default,){
final _that = this;
switch (_that) {
case _ActivityParticipation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityParticipation value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityParticipation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'participant_id')  String participantId,  String? result,  String? remarks,  ActivityParticipationInfo activity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityParticipation() when $default != null:
return $default(_that.participantId,_that.result,_that.remarks,_that.activity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'participant_id')  String participantId,  String? result,  String? remarks,  ActivityParticipationInfo activity)  $default,) {final _that = this;
switch (_that) {
case _ActivityParticipation():
return $default(_that.participantId,_that.result,_that.remarks,_that.activity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'participant_id')  String participantId,  String? result,  String? remarks,  ActivityParticipationInfo activity)?  $default,) {final _that = this;
switch (_that) {
case _ActivityParticipation() when $default != null:
return $default(_that.participantId,_that.result,_that.remarks,_that.activity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityParticipation implements ActivityParticipation {
  const _ActivityParticipation({@JsonKey(name: 'participant_id') required this.participantId, this.result, this.remarks, required this.activity});
  factory _ActivityParticipation.fromJson(Map<String, dynamic> json) => _$ActivityParticipationFromJson(json);

@override@JsonKey(name: 'participant_id') final  String participantId;
@override final  String? result;
@override final  String? remarks;
@override final  ActivityParticipationInfo activity;

/// Create a copy of ActivityParticipation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityParticipationCopyWith<_ActivityParticipation> get copyWith => __$ActivityParticipationCopyWithImpl<_ActivityParticipation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityParticipationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityParticipation&&(identical(other.participantId, participantId) || other.participantId == participantId)&&(identical(other.result, result) || other.result == result)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.activity, activity) || other.activity == activity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,participantId,result,remarks,activity);
}

@override
String toString() {
    return 'ActivityParticipation(participantId: $participantId, result: $result, remarks: $remarks, activity: $activity)';
}


}

/// @nodoc
abstract mixin class _$ActivityParticipationCopyWith<$Res> implements $ActivityParticipationCopyWith<$Res> {
  factory _$ActivityParticipationCopyWith(_ActivityParticipation value, $Res Function(_ActivityParticipation) _then) = __$ActivityParticipationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'participant_id') String participantId, String? result, String? remarks, ActivityParticipationInfo activity
});


@override $ActivityParticipationInfoCopyWith<$Res> get activity;

}
/// @nodoc
class __$ActivityParticipationCopyWithImpl<$Res>
    implements _$ActivityParticipationCopyWith<$Res> {
  __$ActivityParticipationCopyWithImpl(this._self, this._then);

  final _ActivityParticipation _self;
  final $Res Function(_ActivityParticipation) _then;

/// Create a copy of ActivityParticipation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? participantId = null,Object? result = freezed,Object? remarks = freezed,Object? activity = null,}) {
  return _then(_ActivityParticipation(
participantId: null == participantId ? _self.participantId : participantId // ignore: cast_nullable_to_non_nullable
as String,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as ActivityParticipationInfo,
  ));
}

/// Create a copy of ActivityParticipation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityParticipationInfoCopyWith<$Res> get activity {
  
  return $ActivityParticipationInfoCopyWith<$Res>(_self.activity, (value) {
    return _then(_self.copyWith(activity: value));
  });
}
}

// dart format on
