// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_school_life_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminSchoolEvent {

@JsonKey(name: 'event_id') String get eventId;@JsonKey(name: 'event_name') String get eventName; String? get description;@JsonKey(name: 'event_date') DateTime? get eventDate;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'approval_status') String get approvalStatus;
/// Create a copy of AdminSchoolEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminSchoolEventCopyWith<AdminSchoolEvent> get copyWith => _$AdminSchoolEventCopyWithImpl<AdminSchoolEvent>(this as AdminSchoolEvent, _$identity);

  /// Serializes this AdminSchoolEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminSchoolEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminSchoolEvent&&(identical(other.eventId, _this.eventId) || other.eventId == _this.eventId)&&(identical(other.eventName, _this.eventName) || other.eventName == _this.eventName)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.eventDate, _this.eventDate) || other.eventDate == _this.eventDate)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.approvalStatus, _this.approvalStatus) || other.approvalStatus == _this.approvalStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminSchoolEvent;
  return Object.hash(runtimeType,_this.eventId,_this.eventName,_this.description,_this.eventDate,_this.createdAt,_this.approvalStatus);
}

@override
String toString() {
  final _this = this as AdminSchoolEvent;
  return 'AdminSchoolEvent(eventId: ${_this.eventId}, eventName: ${_this.eventName}, description: ${_this.description}, eventDate: ${_this.eventDate}, createdAt: ${_this.createdAt}, approvalStatus: ${_this.approvalStatus})';
}


}

/// @nodoc
abstract mixin class $AdminSchoolEventCopyWith<$Res>  {
  factory $AdminSchoolEventCopyWith(AdminSchoolEvent value, $Res Function(AdminSchoolEvent) _then) = _$AdminSchoolEventCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'event_id') String eventId,@JsonKey(name: 'event_name') String eventName, String? description,@JsonKey(name: 'event_date') DateTime? eventDate,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'approval_status') String approvalStatus
});




}
/// @nodoc
class _$AdminSchoolEventCopyWithImpl<$Res>
    implements $AdminSchoolEventCopyWith<$Res> {
  _$AdminSchoolEventCopyWithImpl(this._self, this._then);

  final AdminSchoolEvent _self;
  final $Res Function(AdminSchoolEvent) _then;

/// Create a copy of AdminSchoolEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? eventName = null,Object? description = freezed,Object? eventDate = freezed,Object? createdAt = freezed,Object? approvalStatus = null,}) {
  return _then(AdminSchoolEvent(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventName: null == eventName ? _self.eventName : eventName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,approvalStatus: null == approvalStatus ? _self.approvalStatus : approvalStatus // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminSchoolEvent].
extension AdminSchoolEventPatterns on AdminSchoolEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminSchoolEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminSchoolEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminSchoolEvent value)  $default,){
final _that = this;
switch (_that) {
case _AdminSchoolEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminSchoolEvent value)?  $default,){
final _that = this;
switch (_that) {
case _AdminSchoolEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'event_id')  String eventId, @JsonKey(name: 'event_name')  String eventName,  String? description, @JsonKey(name: 'event_date')  DateTime? eventDate, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'approval_status')  String approvalStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminSchoolEvent() when $default != null:
return $default(_that.eventId,_that.eventName,_that.description,_that.eventDate,_that.createdAt,_that.approvalStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'event_id')  String eventId, @JsonKey(name: 'event_name')  String eventName,  String? description, @JsonKey(name: 'event_date')  DateTime? eventDate, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'approval_status')  String approvalStatus)  $default,) {final _that = this;
switch (_that) {
case _AdminSchoolEvent():
return $default(_that.eventId,_that.eventName,_that.description,_that.eventDate,_that.createdAt,_that.approvalStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'event_id')  String eventId, @JsonKey(name: 'event_name')  String eventName,  String? description, @JsonKey(name: 'event_date')  DateTime? eventDate, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'approval_status')  String approvalStatus)?  $default,) {final _that = this;
switch (_that) {
case _AdminSchoolEvent() when $default != null:
return $default(_that.eventId,_that.eventName,_that.description,_that.eventDate,_that.createdAt,_that.approvalStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminSchoolEvent implements AdminSchoolEvent {
  const _AdminSchoolEvent({@JsonKey(name: 'event_id') required this.eventId, @JsonKey(name: 'event_name') required this.eventName, this.description, @JsonKey(name: 'event_date') this.eventDate, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'approval_status') this.approvalStatus = 'PENDING'});
  factory _AdminSchoolEvent.fromJson(Map<String, dynamic> json) => _$AdminSchoolEventFromJson(json);

@override@JsonKey(name: 'event_id') final  String eventId;
@override@JsonKey(name: 'event_name') final  String eventName;
@override final  String? description;
@override@JsonKey(name: 'event_date') final  DateTime? eventDate;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'approval_status') final  String approvalStatus;

/// Create a copy of AdminSchoolEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminSchoolEventCopyWith<_AdminSchoolEvent> get copyWith => __$AdminSchoolEventCopyWithImpl<_AdminSchoolEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminSchoolEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminSchoolEvent&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventName, eventName) || other.eventName == eventName)&&(identical(other.description, description) || other.description == description)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.approvalStatus, approvalStatus) || other.approvalStatus == approvalStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,eventId,eventName,description,eventDate,createdAt,approvalStatus);
}

@override
String toString() {
    return 'AdminSchoolEvent(eventId: $eventId, eventName: $eventName, description: $description, eventDate: $eventDate, createdAt: $createdAt, approvalStatus: $approvalStatus)';
}


}

/// @nodoc
abstract mixin class _$AdminSchoolEventCopyWith<$Res> implements $AdminSchoolEventCopyWith<$Res> {
  factory _$AdminSchoolEventCopyWith(_AdminSchoolEvent value, $Res Function(_AdminSchoolEvent) _then) = __$AdminSchoolEventCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'event_id') String eventId,@JsonKey(name: 'event_name') String eventName, String? description,@JsonKey(name: 'event_date') DateTime? eventDate,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'approval_status') String approvalStatus
});




}
/// @nodoc
class __$AdminSchoolEventCopyWithImpl<$Res>
    implements _$AdminSchoolEventCopyWith<$Res> {
  __$AdminSchoolEventCopyWithImpl(this._self, this._then);

  final _AdminSchoolEvent _self;
  final $Res Function(_AdminSchoolEvent) _then;

/// Create a copy of AdminSchoolEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventName = null,Object? description = freezed,Object? eventDate = freezed,Object? createdAt = freezed,Object? approvalStatus = null,}) {
  return _then(_AdminSchoolEvent(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventName: null == eventName ? _self.eventName : eventName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,approvalStatus: null == approvalStatus ? _self.approvalStatus : approvalStatus // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AdminSchoolEventPage {

 int get total; int get page; int get limit; List<AdminSchoolEvent> get data;
/// Create a copy of AdminSchoolEventPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminSchoolEventPageCopyWith<AdminSchoolEventPage> get copyWith => _$AdminSchoolEventPageCopyWithImpl<AdminSchoolEventPage>(this as AdminSchoolEventPage, _$identity);

  /// Serializes this AdminSchoolEventPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminSchoolEventPage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminSchoolEventPage&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.limit, _this.limit) || other.limit == _this.limit)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminSchoolEventPage;
  return Object.hash(runtimeType,_this.total,_this.page,_this.limit,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as AdminSchoolEventPage;
  return 'AdminSchoolEventPage(total: ${_this.total}, page: ${_this.page}, limit: ${_this.limit}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $AdminSchoolEventPageCopyWith<$Res>  {
  factory $AdminSchoolEventPageCopyWith(AdminSchoolEventPage value, $Res Function(AdminSchoolEventPage) _then) = _$AdminSchoolEventPageCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, List<AdminSchoolEvent> data
});




}
/// @nodoc
class _$AdminSchoolEventPageCopyWithImpl<$Res>
    implements $AdminSchoolEventPageCopyWith<$Res> {
  _$AdminSchoolEventPageCopyWithImpl(this._self, this._then);

  final AdminSchoolEventPage _self;
  final $Res Function(AdminSchoolEventPage) _then;

/// Create a copy of AdminSchoolEventPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(AdminSchoolEventPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AdminSchoolEvent>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminSchoolEventPage].
extension AdminSchoolEventPagePatterns on AdminSchoolEventPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminSchoolEventPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminSchoolEventPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminSchoolEventPage value)  $default,){
final _that = this;
switch (_that) {
case _AdminSchoolEventPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminSchoolEventPage value)?  $default,){
final _that = this;
switch (_that) {
case _AdminSchoolEventPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<AdminSchoolEvent> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminSchoolEventPage() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<AdminSchoolEvent> data)  $default,) {final _that = this;
switch (_that) {
case _AdminSchoolEventPage():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int limit,  List<AdminSchoolEvent> data)?  $default,) {final _that = this;
switch (_that) {
case _AdminSchoolEventPage() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminSchoolEventPage implements AdminSchoolEventPage {
  const _AdminSchoolEventPage({this.total = 0, this.page = 1, this.limit = 20,  List<AdminSchoolEvent> data = const <AdminSchoolEvent>[]}): _data = data;
  factory _AdminSchoolEventPage.fromJson(Map<String, dynamic> json) => _$AdminSchoolEventPageFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
 final  List<AdminSchoolEvent> _data;
@override@JsonKey() List<AdminSchoolEvent> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of AdminSchoolEventPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminSchoolEventPageCopyWith<_AdminSchoolEventPage> get copyWith => __$AdminSchoolEventPageCopyWithImpl<_AdminSchoolEventPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminSchoolEventPageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminSchoolEventPage&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,page,limit,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'AdminSchoolEventPage(total: $total, page: $page, limit: $limit, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AdminSchoolEventPageCopyWith<$Res> implements $AdminSchoolEventPageCopyWith<$Res> {
  factory _$AdminSchoolEventPageCopyWith(_AdminSchoolEventPage value, $Res Function(_AdminSchoolEventPage) _then) = __$AdminSchoolEventPageCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, List<AdminSchoolEvent> data
});




}
/// @nodoc
class __$AdminSchoolEventPageCopyWithImpl<$Res>
    implements _$AdminSchoolEventPageCopyWith<$Res> {
  __$AdminSchoolEventPageCopyWithImpl(this._self, this._then);

  final _AdminSchoolEventPage _self;
  final $Res Function(_AdminSchoolEventPage) _then;

/// Create a copy of AdminSchoolEventPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(_AdminSchoolEventPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AdminSchoolEvent>,
  ));
}


}


/// @nodoc
mixin _$AdminSchoolActivity {

@JsonKey(name: 'activity_id') String get activityId;@JsonKey(name: 'activity_name') String get activityName; String? get description;@JsonKey(name: 'activity_type') String? get activityType;@JsonKey(name: 'target_audience') String get targetAudience;@JsonKey(name: 'activity_date') DateTime? get activityDate; String? get venue;@JsonKey(name: 'participant_count') int get participantCount;
/// Create a copy of AdminSchoolActivity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminSchoolActivityCopyWith<AdminSchoolActivity> get copyWith => _$AdminSchoolActivityCopyWithImpl<AdminSchoolActivity>(this as AdminSchoolActivity, _$identity);

  /// Serializes this AdminSchoolActivity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminSchoolActivity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminSchoolActivity&&(identical(other.activityId, _this.activityId) || other.activityId == _this.activityId)&&(identical(other.activityName, _this.activityName) || other.activityName == _this.activityName)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.activityType, _this.activityType) || other.activityType == _this.activityType)&&(identical(other.targetAudience, _this.targetAudience) || other.targetAudience == _this.targetAudience)&&(identical(other.activityDate, _this.activityDate) || other.activityDate == _this.activityDate)&&(identical(other.venue, _this.venue) || other.venue == _this.venue)&&(identical(other.participantCount, _this.participantCount) || other.participantCount == _this.participantCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminSchoolActivity;
  return Object.hash(runtimeType,_this.activityId,_this.activityName,_this.description,_this.activityType,_this.targetAudience,_this.activityDate,_this.venue,_this.participantCount);
}

@override
String toString() {
  final _this = this as AdminSchoolActivity;
  return 'AdminSchoolActivity(activityId: ${_this.activityId}, activityName: ${_this.activityName}, description: ${_this.description}, activityType: ${_this.activityType}, targetAudience: ${_this.targetAudience}, activityDate: ${_this.activityDate}, venue: ${_this.venue}, participantCount: ${_this.participantCount})';
}


}

/// @nodoc
abstract mixin class $AdminSchoolActivityCopyWith<$Res>  {
  factory $AdminSchoolActivityCopyWith(AdminSchoolActivity value, $Res Function(AdminSchoolActivity) _then) = _$AdminSchoolActivityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'activity_id') String activityId,@JsonKey(name: 'activity_name') String activityName, String? description,@JsonKey(name: 'activity_type') String? activityType,@JsonKey(name: 'target_audience') String targetAudience,@JsonKey(name: 'activity_date') DateTime? activityDate, String? venue,@JsonKey(name: 'participant_count') int participantCount
});




}
/// @nodoc
class _$AdminSchoolActivityCopyWithImpl<$Res>
    implements $AdminSchoolActivityCopyWith<$Res> {
  _$AdminSchoolActivityCopyWithImpl(this._self, this._then);

  final AdminSchoolActivity _self;
  final $Res Function(AdminSchoolActivity) _then;

/// Create a copy of AdminSchoolActivity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activityId = null,Object? activityName = null,Object? description = freezed,Object? activityType = freezed,Object? targetAudience = null,Object? activityDate = freezed,Object? venue = freezed,Object? participantCount = null,}) {
  return _then(AdminSchoolActivity(
activityId: null == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as String,activityName: null == activityName ? _self.activityName : activityName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,activityType: freezed == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String?,targetAudience: null == targetAudience ? _self.targetAudience : targetAudience // ignore: cast_nullable_to_non_nullable
as String,activityDate: freezed == activityDate ? _self.activityDate : activityDate // ignore: cast_nullable_to_non_nullable
as DateTime?,venue: freezed == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String?,participantCount: null == participantCount ? _self.participantCount : participantCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminSchoolActivity].
extension AdminSchoolActivityPatterns on AdminSchoolActivity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminSchoolActivity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminSchoolActivity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminSchoolActivity value)  $default,){
final _that = this;
switch (_that) {
case _AdminSchoolActivity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminSchoolActivity value)?  $default,){
final _that = this;
switch (_that) {
case _AdminSchoolActivity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'activity_id')  String activityId, @JsonKey(name: 'activity_name')  String activityName,  String? description, @JsonKey(name: 'activity_type')  String? activityType, @JsonKey(name: 'target_audience')  String targetAudience, @JsonKey(name: 'activity_date')  DateTime? activityDate,  String? venue, @JsonKey(name: 'participant_count')  int participantCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminSchoolActivity() when $default != null:
return $default(_that.activityId,_that.activityName,_that.description,_that.activityType,_that.targetAudience,_that.activityDate,_that.venue,_that.participantCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'activity_id')  String activityId, @JsonKey(name: 'activity_name')  String activityName,  String? description, @JsonKey(name: 'activity_type')  String? activityType, @JsonKey(name: 'target_audience')  String targetAudience, @JsonKey(name: 'activity_date')  DateTime? activityDate,  String? venue, @JsonKey(name: 'participant_count')  int participantCount)  $default,) {final _that = this;
switch (_that) {
case _AdminSchoolActivity():
return $default(_that.activityId,_that.activityName,_that.description,_that.activityType,_that.targetAudience,_that.activityDate,_that.venue,_that.participantCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'activity_id')  String activityId, @JsonKey(name: 'activity_name')  String activityName,  String? description, @JsonKey(name: 'activity_type')  String? activityType, @JsonKey(name: 'target_audience')  String targetAudience, @JsonKey(name: 'activity_date')  DateTime? activityDate,  String? venue, @JsonKey(name: 'participant_count')  int participantCount)?  $default,) {final _that = this;
switch (_that) {
case _AdminSchoolActivity() when $default != null:
return $default(_that.activityId,_that.activityName,_that.description,_that.activityType,_that.targetAudience,_that.activityDate,_that.venue,_that.participantCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminSchoolActivity implements AdminSchoolActivity {
  const _AdminSchoolActivity({@JsonKey(name: 'activity_id') required this.activityId, @JsonKey(name: 'activity_name') required this.activityName, this.description, @JsonKey(name: 'activity_type') this.activityType, @JsonKey(name: 'target_audience') this.targetAudience = 'BOTH', @JsonKey(name: 'activity_date') this.activityDate, this.venue, @JsonKey(name: 'participant_count') this.participantCount = 0});
  factory _AdminSchoolActivity.fromJson(Map<String, dynamic> json) => _$AdminSchoolActivityFromJson(json);

@override@JsonKey(name: 'activity_id') final  String activityId;
@override@JsonKey(name: 'activity_name') final  String activityName;
@override final  String? description;
@override@JsonKey(name: 'activity_type') final  String? activityType;
@override@JsonKey(name: 'target_audience') final  String targetAudience;
@override@JsonKey(name: 'activity_date') final  DateTime? activityDate;
@override final  String? venue;
@override@JsonKey(name: 'participant_count') final  int participantCount;

/// Create a copy of AdminSchoolActivity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminSchoolActivityCopyWith<_AdminSchoolActivity> get copyWith => __$AdminSchoolActivityCopyWithImpl<_AdminSchoolActivity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminSchoolActivityToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminSchoolActivity&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.activityName, activityName) || other.activityName == activityName)&&(identical(other.description, description) || other.description == description)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.targetAudience, targetAudience) || other.targetAudience == targetAudience)&&(identical(other.activityDate, activityDate) || other.activityDate == activityDate)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.participantCount, participantCount) || other.participantCount == participantCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,activityId,activityName,description,activityType,targetAudience,activityDate,venue,participantCount);
}

@override
String toString() {
    return 'AdminSchoolActivity(activityId: $activityId, activityName: $activityName, description: $description, activityType: $activityType, targetAudience: $targetAudience, activityDate: $activityDate, venue: $venue, participantCount: $participantCount)';
}


}

/// @nodoc
abstract mixin class _$AdminSchoolActivityCopyWith<$Res> implements $AdminSchoolActivityCopyWith<$Res> {
  factory _$AdminSchoolActivityCopyWith(_AdminSchoolActivity value, $Res Function(_AdminSchoolActivity) _then) = __$AdminSchoolActivityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'activity_id') String activityId,@JsonKey(name: 'activity_name') String activityName, String? description,@JsonKey(name: 'activity_type') String? activityType,@JsonKey(name: 'target_audience') String targetAudience,@JsonKey(name: 'activity_date') DateTime? activityDate, String? venue,@JsonKey(name: 'participant_count') int participantCount
});




}
/// @nodoc
class __$AdminSchoolActivityCopyWithImpl<$Res>
    implements _$AdminSchoolActivityCopyWith<$Res> {
  __$AdminSchoolActivityCopyWithImpl(this._self, this._then);

  final _AdminSchoolActivity _self;
  final $Res Function(_AdminSchoolActivity) _then;

/// Create a copy of AdminSchoolActivity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activityId = null,Object? activityName = null,Object? description = freezed,Object? activityType = freezed,Object? targetAudience = null,Object? activityDate = freezed,Object? venue = freezed,Object? participantCount = null,}) {
  return _then(_AdminSchoolActivity(
activityId: null == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as String,activityName: null == activityName ? _self.activityName : activityName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,activityType: freezed == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String?,targetAudience: null == targetAudience ? _self.targetAudience : targetAudience // ignore: cast_nullable_to_non_nullable
as String,activityDate: freezed == activityDate ? _self.activityDate : activityDate // ignore: cast_nullable_to_non_nullable
as DateTime?,venue: freezed == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String?,participantCount: null == participantCount ? _self.participantCount : participantCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$AdminSchoolActivityPage {

 int get total; int get page; int get limit; List<AdminSchoolActivity> get data;
/// Create a copy of AdminSchoolActivityPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminSchoolActivityPageCopyWith<AdminSchoolActivityPage> get copyWith => _$AdminSchoolActivityPageCopyWithImpl<AdminSchoolActivityPage>(this as AdminSchoolActivityPage, _$identity);

  /// Serializes this AdminSchoolActivityPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminSchoolActivityPage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminSchoolActivityPage&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.limit, _this.limit) || other.limit == _this.limit)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminSchoolActivityPage;
  return Object.hash(runtimeType,_this.total,_this.page,_this.limit,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as AdminSchoolActivityPage;
  return 'AdminSchoolActivityPage(total: ${_this.total}, page: ${_this.page}, limit: ${_this.limit}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $AdminSchoolActivityPageCopyWith<$Res>  {
  factory $AdminSchoolActivityPageCopyWith(AdminSchoolActivityPage value, $Res Function(AdminSchoolActivityPage) _then) = _$AdminSchoolActivityPageCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, List<AdminSchoolActivity> data
});




}
/// @nodoc
class _$AdminSchoolActivityPageCopyWithImpl<$Res>
    implements $AdminSchoolActivityPageCopyWith<$Res> {
  _$AdminSchoolActivityPageCopyWithImpl(this._self, this._then);

  final AdminSchoolActivityPage _self;
  final $Res Function(AdminSchoolActivityPage) _then;

/// Create a copy of AdminSchoolActivityPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(AdminSchoolActivityPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AdminSchoolActivity>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminSchoolActivityPage].
extension AdminSchoolActivityPagePatterns on AdminSchoolActivityPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminSchoolActivityPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminSchoolActivityPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminSchoolActivityPage value)  $default,){
final _that = this;
switch (_that) {
case _AdminSchoolActivityPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminSchoolActivityPage value)?  $default,){
final _that = this;
switch (_that) {
case _AdminSchoolActivityPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<AdminSchoolActivity> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminSchoolActivityPage() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<AdminSchoolActivity> data)  $default,) {final _that = this;
switch (_that) {
case _AdminSchoolActivityPage():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int limit,  List<AdminSchoolActivity> data)?  $default,) {final _that = this;
switch (_that) {
case _AdminSchoolActivityPage() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminSchoolActivityPage implements AdminSchoolActivityPage {
  const _AdminSchoolActivityPage({this.total = 0, this.page = 1, this.limit = 20,  List<AdminSchoolActivity> data = const <AdminSchoolActivity>[]}): _data = data;
  factory _AdminSchoolActivityPage.fromJson(Map<String, dynamic> json) => _$AdminSchoolActivityPageFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
 final  List<AdminSchoolActivity> _data;
@override@JsonKey() List<AdminSchoolActivity> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of AdminSchoolActivityPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminSchoolActivityPageCopyWith<_AdminSchoolActivityPage> get copyWith => __$AdminSchoolActivityPageCopyWithImpl<_AdminSchoolActivityPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminSchoolActivityPageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminSchoolActivityPage&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,page,limit,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'AdminSchoolActivityPage(total: $total, page: $page, limit: $limit, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AdminSchoolActivityPageCopyWith<$Res> implements $AdminSchoolActivityPageCopyWith<$Res> {
  factory _$AdminSchoolActivityPageCopyWith(_AdminSchoolActivityPage value, $Res Function(_AdminSchoolActivityPage) _then) = __$AdminSchoolActivityPageCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, List<AdminSchoolActivity> data
});




}
/// @nodoc
class __$AdminSchoolActivityPageCopyWithImpl<$Res>
    implements _$AdminSchoolActivityPageCopyWith<$Res> {
  __$AdminSchoolActivityPageCopyWithImpl(this._self, this._then);

  final _AdminSchoolActivityPage _self;
  final $Res Function(_AdminSchoolActivityPage) _then;

/// Create a copy of AdminSchoolActivityPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(_AdminSchoolActivityPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AdminSchoolActivity>,
  ));
}


}


/// @nodoc
mixin _$ParticipantStaffRef {

@JsonKey(name: 'staff_id') String? get staffId;@JsonKey(name: 'employee_code') String? get employeeCode;@JsonKey(name: 'full_name') String? get fullName;
/// Create a copy of ParticipantStaffRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticipantStaffRefCopyWith<ParticipantStaffRef> get copyWith => _$ParticipantStaffRefCopyWithImpl<ParticipantStaffRef>(this as ParticipantStaffRef, _$identity);

  /// Serializes this ParticipantStaffRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ParticipantStaffRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipantStaffRef&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ParticipantStaffRef;
  return Object.hash(runtimeType,_this.staffId,_this.employeeCode,_this.fullName);
}

@override
String toString() {
  final _this = this as ParticipantStaffRef;
  return 'ParticipantStaffRef(staffId: ${_this.staffId}, employeeCode: ${_this.employeeCode}, fullName: ${_this.fullName})';
}


}

/// @nodoc
abstract mixin class $ParticipantStaffRefCopyWith<$Res>  {
  factory $ParticipantStaffRefCopyWith(ParticipantStaffRef value, $Res Function(ParticipantStaffRef) _then) = _$ParticipantStaffRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'full_name') String? fullName
});




}
/// @nodoc
class _$ParticipantStaffRefCopyWithImpl<$Res>
    implements $ParticipantStaffRefCopyWith<$Res> {
  _$ParticipantStaffRefCopyWithImpl(this._self, this._then);

  final ParticipantStaffRef _self;
  final $Res Function(ParticipantStaffRef) _then;

/// Create a copy of ParticipantStaffRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = freezed,Object? employeeCode = freezed,Object? fullName = freezed,}) {
  return _then(ParticipantStaffRef(
staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ParticipantStaffRef].
extension ParticipantStaffRefPatterns on ParticipantStaffRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParticipantStaffRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParticipantStaffRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParticipantStaffRef value)  $default,){
final _that = this;
switch (_that) {
case _ParticipantStaffRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParticipantStaffRef value)?  $default,){
final _that = this;
switch (_that) {
case _ParticipantStaffRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String? fullName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParticipantStaffRef() when $default != null:
return $default(_that.staffId,_that.employeeCode,_that.fullName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String? fullName)  $default,) {final _that = this;
switch (_that) {
case _ParticipantStaffRef():
return $default(_that.staffId,_that.employeeCode,_that.fullName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'employee_code')  String? employeeCode, @JsonKey(name: 'full_name')  String? fullName)?  $default,) {final _that = this;
switch (_that) {
case _ParticipantStaffRef() when $default != null:
return $default(_that.staffId,_that.employeeCode,_that.fullName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParticipantStaffRef implements ParticipantStaffRef {
  const _ParticipantStaffRef({@JsonKey(name: 'staff_id') this.staffId, @JsonKey(name: 'employee_code') this.employeeCode, @JsonKey(name: 'full_name') this.fullName});
  factory _ParticipantStaffRef.fromJson(Map<String, dynamic> json) => _$ParticipantStaffRefFromJson(json);

@override@JsonKey(name: 'staff_id') final  String? staffId;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override@JsonKey(name: 'full_name') final  String? fullName;

/// Create a copy of ParticipantStaffRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParticipantStaffRefCopyWith<_ParticipantStaffRef> get copyWith => __$ParticipantStaffRefCopyWithImpl<_ParticipantStaffRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParticipantStaffRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParticipantStaffRef&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.fullName, fullName) || other.fullName == fullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,employeeCode,fullName);
}

@override
String toString() {
    return 'ParticipantStaffRef(staffId: $staffId, employeeCode: $employeeCode, fullName: $fullName)';
}


}

/// @nodoc
abstract mixin class _$ParticipantStaffRefCopyWith<$Res> implements $ParticipantStaffRefCopyWith<$Res> {
  factory _$ParticipantStaffRefCopyWith(_ParticipantStaffRef value, $Res Function(_ParticipantStaffRef) _then) = __$ParticipantStaffRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'employee_code') String? employeeCode,@JsonKey(name: 'full_name') String? fullName
});




}
/// @nodoc
class __$ParticipantStaffRefCopyWithImpl<$Res>
    implements _$ParticipantStaffRefCopyWith<$Res> {
  __$ParticipantStaffRefCopyWithImpl(this._self, this._then);

  final _ParticipantStaffRef _self;
  final $Res Function(_ParticipantStaffRef) _then;

/// Create a copy of ParticipantStaffRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = freezed,Object? employeeCode = freezed,Object? fullName = freezed,}) {
  return _then(_ParticipantStaffRef(
staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ActivityParticipant {

@JsonKey(name: 'participant_id') String get participantId;@JsonKey(name: 'participant_type') String get participantType; String? get result; String? get remarks;@JsonKey(name: 'created_at') DateTime? get createdAt; StudentBrief? get student; ParticipantStaffRef? get staff;
/// Create a copy of ActivityParticipant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityParticipantCopyWith<ActivityParticipant> get copyWith => _$ActivityParticipantCopyWithImpl<ActivityParticipant>(this as ActivityParticipant, _$identity);

  /// Serializes this ActivityParticipant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ActivityParticipant;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityParticipant&&(identical(other.participantId, _this.participantId) || other.participantId == _this.participantId)&&(identical(other.participantType, _this.participantType) || other.participantType == _this.participantType)&&(identical(other.result, _this.result) || other.result == _this.result)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.student, _this.student) || other.student == _this.student)&&(identical(other.staff, _this.staff) || other.staff == _this.staff));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ActivityParticipant;
  return Object.hash(runtimeType,_this.participantId,_this.participantType,_this.result,_this.remarks,_this.createdAt,_this.student,_this.staff);
}

@override
String toString() {
  final _this = this as ActivityParticipant;
  return 'ActivityParticipant(participantId: ${_this.participantId}, participantType: ${_this.participantType}, result: ${_this.result}, remarks: ${_this.remarks}, createdAt: ${_this.createdAt}, student: ${_this.student}, staff: ${_this.staff})';
}


}

/// @nodoc
abstract mixin class $ActivityParticipantCopyWith<$Res>  {
  factory $ActivityParticipantCopyWith(ActivityParticipant value, $Res Function(ActivityParticipant) _then) = _$ActivityParticipantCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'participant_id') String participantId,@JsonKey(name: 'participant_type') String participantType, String? result, String? remarks,@JsonKey(name: 'created_at') DateTime? createdAt, StudentBrief? student, ParticipantStaffRef? staff
});


$StudentBriefCopyWith<$Res>? get student;$ParticipantStaffRefCopyWith<$Res>? get staff;

}
/// @nodoc
class _$ActivityParticipantCopyWithImpl<$Res>
    implements $ActivityParticipantCopyWith<$Res> {
  _$ActivityParticipantCopyWithImpl(this._self, this._then);

  final ActivityParticipant _self;
  final $Res Function(ActivityParticipant) _then;

/// Create a copy of ActivityParticipant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? participantId = null,Object? participantType = null,Object? result = freezed,Object? remarks = freezed,Object? createdAt = freezed,Object? student = freezed,Object? staff = freezed,}) {
  return _then(ActivityParticipant(
participantId: null == participantId ? _self.participantId : participantId // ignore: cast_nullable_to_non_nullable
as String,participantType: null == participantType ? _self.participantType : participantType // ignore: cast_nullable_to_non_nullable
as String,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,staff: freezed == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as ParticipantStaffRef?,
  ));
}
/// Create a copy of ActivityParticipant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentBriefCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $StudentBriefCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}/// Create a copy of ActivityParticipant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParticipantStaffRefCopyWith<$Res>? get staff {
    if (_self.staff == null) {
    return null;
  }

  return $ParticipantStaffRefCopyWith<$Res>(_self.staff!, (value) {
    return _then(_self.copyWith(staff: value));
  });
}
}


/// Adds pattern-matching-related methods to [ActivityParticipant].
extension ActivityParticipantPatterns on ActivityParticipant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityParticipant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityParticipant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityParticipant value)  $default,){
final _that = this;
switch (_that) {
case _ActivityParticipant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityParticipant value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityParticipant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'participant_id')  String participantId, @JsonKey(name: 'participant_type')  String participantType,  String? result,  String? remarks, @JsonKey(name: 'created_at')  DateTime? createdAt,  StudentBrief? student,  ParticipantStaffRef? staff)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityParticipant() when $default != null:
return $default(_that.participantId,_that.participantType,_that.result,_that.remarks,_that.createdAt,_that.student,_that.staff);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'participant_id')  String participantId, @JsonKey(name: 'participant_type')  String participantType,  String? result,  String? remarks, @JsonKey(name: 'created_at')  DateTime? createdAt,  StudentBrief? student,  ParticipantStaffRef? staff)  $default,) {final _that = this;
switch (_that) {
case _ActivityParticipant():
return $default(_that.participantId,_that.participantType,_that.result,_that.remarks,_that.createdAt,_that.student,_that.staff);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'participant_id')  String participantId, @JsonKey(name: 'participant_type')  String participantType,  String? result,  String? remarks, @JsonKey(name: 'created_at')  DateTime? createdAt,  StudentBrief? student,  ParticipantStaffRef? staff)?  $default,) {final _that = this;
switch (_that) {
case _ActivityParticipant() when $default != null:
return $default(_that.participantId,_that.participantType,_that.result,_that.remarks,_that.createdAt,_that.student,_that.staff);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityParticipant implements ActivityParticipant {
  const _ActivityParticipant({@JsonKey(name: 'participant_id') required this.participantId, @JsonKey(name: 'participant_type') required this.participantType, this.result, this.remarks, @JsonKey(name: 'created_at') this.createdAt, this.student, this.staff});
  factory _ActivityParticipant.fromJson(Map<String, dynamic> json) => _$ActivityParticipantFromJson(json);

@override@JsonKey(name: 'participant_id') final  String participantId;
@override@JsonKey(name: 'participant_type') final  String participantType;
@override final  String? result;
@override final  String? remarks;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override final  StudentBrief? student;
@override final  ParticipantStaffRef? staff;

/// Create a copy of ActivityParticipant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityParticipantCopyWith<_ActivityParticipant> get copyWith => __$ActivityParticipantCopyWithImpl<_ActivityParticipant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityParticipantToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityParticipant&&(identical(other.participantId, participantId) || other.participantId == participantId)&&(identical(other.participantType, participantType) || other.participantType == participantType)&&(identical(other.result, result) || other.result == result)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.student, student) || other.student == student)&&(identical(other.staff, staff) || other.staff == staff));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,participantId,participantType,result,remarks,createdAt,student,staff);
}

@override
String toString() {
    return 'ActivityParticipant(participantId: $participantId, participantType: $participantType, result: $result, remarks: $remarks, createdAt: $createdAt, student: $student, staff: $staff)';
}


}

/// @nodoc
abstract mixin class _$ActivityParticipantCopyWith<$Res> implements $ActivityParticipantCopyWith<$Res> {
  factory _$ActivityParticipantCopyWith(_ActivityParticipant value, $Res Function(_ActivityParticipant) _then) = __$ActivityParticipantCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'participant_id') String participantId,@JsonKey(name: 'participant_type') String participantType, String? result, String? remarks,@JsonKey(name: 'created_at') DateTime? createdAt, StudentBrief? student, ParticipantStaffRef? staff
});


@override $StudentBriefCopyWith<$Res>? get student;@override $ParticipantStaffRefCopyWith<$Res>? get staff;

}
/// @nodoc
class __$ActivityParticipantCopyWithImpl<$Res>
    implements _$ActivityParticipantCopyWith<$Res> {
  __$ActivityParticipantCopyWithImpl(this._self, this._then);

  final _ActivityParticipant _self;
  final $Res Function(_ActivityParticipant) _then;

/// Create a copy of ActivityParticipant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? participantId = null,Object? participantType = null,Object? result = freezed,Object? remarks = freezed,Object? createdAt = freezed,Object? student = freezed,Object? staff = freezed,}) {
  return _then(_ActivityParticipant(
participantId: null == participantId ? _self.participantId : participantId // ignore: cast_nullable_to_non_nullable
as String,participantType: null == participantType ? _self.participantType : participantType // ignore: cast_nullable_to_non_nullable
as String,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,staff: freezed == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as ParticipantStaffRef?,
  ));
}

/// Create a copy of ActivityParticipant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentBriefCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $StudentBriefCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}/// Create a copy of ActivityParticipant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParticipantStaffRefCopyWith<$Res>? get staff {
    if (_self.staff == null) {
    return null;
  }

  return $ParticipantStaffRefCopyWith<$Res>(_self.staff!, (value) {
    return _then(_self.copyWith(staff: value));
  });
}
}


/// @nodoc
mixin _$AddParticipantsResult {

 int get added;@JsonKey(name: 'skipped_students') List<String> get skippedStudents;@JsonKey(name: 'skipped_staff') List<String> get skippedStaff;
/// Create a copy of AddParticipantsResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddParticipantsResultCopyWith<AddParticipantsResult> get copyWith => _$AddParticipantsResultCopyWithImpl<AddParticipantsResult>(this as AddParticipantsResult, _$identity);

  /// Serializes this AddParticipantsResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AddParticipantsResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddParticipantsResult&&(identical(other.added, _this.added) || other.added == _this.added)&&const DeepCollectionEquality().equals(other.skippedStudents, _this.skippedStudents)&&const DeepCollectionEquality().equals(other.skippedStaff, _this.skippedStaff));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AddParticipantsResult;
  return Object.hash(runtimeType,_this.added,const DeepCollectionEquality().hash(_this.skippedStudents),const DeepCollectionEquality().hash(_this.skippedStaff));
}

@override
String toString() {
  final _this = this as AddParticipantsResult;
  return 'AddParticipantsResult(added: ${_this.added}, skippedStudents: ${_this.skippedStudents}, skippedStaff: ${_this.skippedStaff})';
}


}

/// @nodoc
abstract mixin class $AddParticipantsResultCopyWith<$Res>  {
  factory $AddParticipantsResultCopyWith(AddParticipantsResult value, $Res Function(AddParticipantsResult) _then) = _$AddParticipantsResultCopyWithImpl;
@useResult
$Res call({
 int added,@JsonKey(name: 'skipped_students') List<String> skippedStudents,@JsonKey(name: 'skipped_staff') List<String> skippedStaff
});




}
/// @nodoc
class _$AddParticipantsResultCopyWithImpl<$Res>
    implements $AddParticipantsResultCopyWith<$Res> {
  _$AddParticipantsResultCopyWithImpl(this._self, this._then);

  final AddParticipantsResult _self;
  final $Res Function(AddParticipantsResult) _then;

/// Create a copy of AddParticipantsResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? added = null,Object? skippedStudents = null,Object? skippedStaff = null,}) {
  return _then(AddParticipantsResult(
added: null == added ? _self.added : added // ignore: cast_nullable_to_non_nullable
as int,skippedStudents: null == skippedStudents ? _self.skippedStudents : skippedStudents // ignore: cast_nullable_to_non_nullable
as List<String>,skippedStaff: null == skippedStaff ? _self.skippedStaff : skippedStaff // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [AddParticipantsResult].
extension AddParticipantsResultPatterns on AddParticipantsResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddParticipantsResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddParticipantsResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddParticipantsResult value)  $default,){
final _that = this;
switch (_that) {
case _AddParticipantsResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddParticipantsResult value)?  $default,){
final _that = this;
switch (_that) {
case _AddParticipantsResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int added, @JsonKey(name: 'skipped_students')  List<String> skippedStudents, @JsonKey(name: 'skipped_staff')  List<String> skippedStaff)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddParticipantsResult() when $default != null:
return $default(_that.added,_that.skippedStudents,_that.skippedStaff);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int added, @JsonKey(name: 'skipped_students')  List<String> skippedStudents, @JsonKey(name: 'skipped_staff')  List<String> skippedStaff)  $default,) {final _that = this;
switch (_that) {
case _AddParticipantsResult():
return $default(_that.added,_that.skippedStudents,_that.skippedStaff);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int added, @JsonKey(name: 'skipped_students')  List<String> skippedStudents, @JsonKey(name: 'skipped_staff')  List<String> skippedStaff)?  $default,) {final _that = this;
switch (_that) {
case _AddParticipantsResult() when $default != null:
return $default(_that.added,_that.skippedStudents,_that.skippedStaff);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddParticipantsResult implements AddParticipantsResult {
  const _AddParticipantsResult({this.added = 0, @JsonKey(name: 'skipped_students')  List<String> skippedStudents = const <String>[], @JsonKey(name: 'skipped_staff')  List<String> skippedStaff = const <String>[]}): _skippedStudents = skippedStudents,_skippedStaff = skippedStaff;
  factory _AddParticipantsResult.fromJson(Map<String, dynamic> json) => _$AddParticipantsResultFromJson(json);

@override@JsonKey() final  int added;
 final  List<String> _skippedStudents;
@override@JsonKey(name: 'skipped_students') List<String> get skippedStudents {
  if (_skippedStudents is EqualUnmodifiableListView) return _skippedStudents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skippedStudents);
}

 final  List<String> _skippedStaff;
@override@JsonKey(name: 'skipped_staff') List<String> get skippedStaff {
  if (_skippedStaff is EqualUnmodifiableListView) return _skippedStaff;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skippedStaff);
}


/// Create a copy of AddParticipantsResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddParticipantsResultCopyWith<_AddParticipantsResult> get copyWith => __$AddParticipantsResultCopyWithImpl<_AddParticipantsResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddParticipantsResultToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddParticipantsResult&&(identical(other.added, added) || other.added == added)&&const DeepCollectionEquality().equals(other.skippedStudents, _skippedStudents)&&const DeepCollectionEquality().equals(other.skippedStaff, _skippedStaff));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,added,const DeepCollectionEquality().hash(_skippedStudents),const DeepCollectionEquality().hash(_skippedStaff));
}

@override
String toString() {
    return 'AddParticipantsResult(added: $added, skippedStudents: $skippedStudents, skippedStaff: $skippedStaff)';
}


}

/// @nodoc
abstract mixin class _$AddParticipantsResultCopyWith<$Res> implements $AddParticipantsResultCopyWith<$Res> {
  factory _$AddParticipantsResultCopyWith(_AddParticipantsResult value, $Res Function(_AddParticipantsResult) _then) = __$AddParticipantsResultCopyWithImpl;
@override @useResult
$Res call({
 int added,@JsonKey(name: 'skipped_students') List<String> skippedStudents,@JsonKey(name: 'skipped_staff') List<String> skippedStaff
});




}
/// @nodoc
class __$AddParticipantsResultCopyWithImpl<$Res>
    implements _$AddParticipantsResultCopyWith<$Res> {
  __$AddParticipantsResultCopyWithImpl(this._self, this._then);

  final _AddParticipantsResult _self;
  final $Res Function(_AddParticipantsResult) _then;

/// Create a copy of AddParticipantsResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? added = null,Object? skippedStudents = null,Object? skippedStaff = null,}) {
  return _then(_AddParticipantsResult(
added: null == added ? _self.added : added // ignore: cast_nullable_to_non_nullable
as int,skippedStudents: null == skippedStudents ? _self._skippedStudents : skippedStudents // ignore: cast_nullable_to_non_nullable
as List<String>,skippedStaff: null == skippedStaff ? _self._skippedStaff : skippedStaff // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
