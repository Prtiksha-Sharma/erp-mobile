// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SchoolNotice {

@JsonKey(name: 'notice_id') String get noticeId; String get title; String? get description;@JsonKey(name: 'notice_date') DateTime? get noticeDate;@JsonKey(name: 'attachment_url') String? get attachmentUrl;
/// Create a copy of SchoolNotice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchoolNoticeCopyWith<SchoolNotice> get copyWith => _$SchoolNoticeCopyWithImpl<SchoolNotice>(this as SchoolNotice, _$identity);

  /// Serializes this SchoolNotice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SchoolNotice;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchoolNotice&&(identical(other.noticeId, _this.noticeId) || other.noticeId == _this.noticeId)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.noticeDate, _this.noticeDate) || other.noticeDate == _this.noticeDate)&&(identical(other.attachmentUrl, _this.attachmentUrl) || other.attachmentUrl == _this.attachmentUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SchoolNotice;
  return Object.hash(runtimeType,_this.noticeId,_this.title,_this.description,_this.noticeDate,_this.attachmentUrl);
}

@override
String toString() {
  final _this = this as SchoolNotice;
  return 'SchoolNotice(noticeId: ${_this.noticeId}, title: ${_this.title}, description: ${_this.description}, noticeDate: ${_this.noticeDate}, attachmentUrl: ${_this.attachmentUrl})';
}


}

/// @nodoc
abstract mixin class $SchoolNoticeCopyWith<$Res>  {
  factory $SchoolNoticeCopyWith(SchoolNotice value, $Res Function(SchoolNotice) _then) = _$SchoolNoticeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'notice_id') String noticeId, String title, String? description,@JsonKey(name: 'notice_date') DateTime? noticeDate,@JsonKey(name: 'attachment_url') String? attachmentUrl
});




}
/// @nodoc
class _$SchoolNoticeCopyWithImpl<$Res>
    implements $SchoolNoticeCopyWith<$Res> {
  _$SchoolNoticeCopyWithImpl(this._self, this._then);

  final SchoolNotice _self;
  final $Res Function(SchoolNotice) _then;

/// Create a copy of SchoolNotice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? noticeId = null,Object? title = null,Object? description = freezed,Object? noticeDate = freezed,Object? attachmentUrl = freezed,}) {
  return _then(SchoolNotice(
noticeId: null == noticeId ? _self.noticeId : noticeId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,noticeDate: freezed == noticeDate ? _self.noticeDate : noticeDate // ignore: cast_nullable_to_non_nullable
as DateTime?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SchoolNotice].
extension SchoolNoticePatterns on SchoolNotice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SchoolNotice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SchoolNotice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SchoolNotice value)  $default,){
final _that = this;
switch (_that) {
case _SchoolNotice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SchoolNotice value)?  $default,){
final _that = this;
switch (_that) {
case _SchoolNotice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'notice_id')  String noticeId,  String title,  String? description, @JsonKey(name: 'notice_date')  DateTime? noticeDate, @JsonKey(name: 'attachment_url')  String? attachmentUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SchoolNotice() when $default != null:
return $default(_that.noticeId,_that.title,_that.description,_that.noticeDate,_that.attachmentUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'notice_id')  String noticeId,  String title,  String? description, @JsonKey(name: 'notice_date')  DateTime? noticeDate, @JsonKey(name: 'attachment_url')  String? attachmentUrl)  $default,) {final _that = this;
switch (_that) {
case _SchoolNotice():
return $default(_that.noticeId,_that.title,_that.description,_that.noticeDate,_that.attachmentUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'notice_id')  String noticeId,  String title,  String? description, @JsonKey(name: 'notice_date')  DateTime? noticeDate, @JsonKey(name: 'attachment_url')  String? attachmentUrl)?  $default,) {final _that = this;
switch (_that) {
case _SchoolNotice() when $default != null:
return $default(_that.noticeId,_that.title,_that.description,_that.noticeDate,_that.attachmentUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SchoolNotice implements SchoolNotice {
  const _SchoolNotice({@JsonKey(name: 'notice_id') required this.noticeId, required this.title, this.description, @JsonKey(name: 'notice_date') this.noticeDate, @JsonKey(name: 'attachment_url') this.attachmentUrl});
  factory _SchoolNotice.fromJson(Map<String, dynamic> json) => _$SchoolNoticeFromJson(json);

@override@JsonKey(name: 'notice_id') final  String noticeId;
@override final  String title;
@override final  String? description;
@override@JsonKey(name: 'notice_date') final  DateTime? noticeDate;
@override@JsonKey(name: 'attachment_url') final  String? attachmentUrl;

/// Create a copy of SchoolNotice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchoolNoticeCopyWith<_SchoolNotice> get copyWith => __$SchoolNoticeCopyWithImpl<_SchoolNotice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SchoolNoticeToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SchoolNotice&&(identical(other.noticeId, noticeId) || other.noticeId == noticeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.noticeDate, noticeDate) || other.noticeDate == noticeDate)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,noticeId,title,description,noticeDate,attachmentUrl);
}

@override
String toString() {
    return 'SchoolNotice(noticeId: $noticeId, title: $title, description: $description, noticeDate: $noticeDate, attachmentUrl: $attachmentUrl)';
}


}

/// @nodoc
abstract mixin class _$SchoolNoticeCopyWith<$Res> implements $SchoolNoticeCopyWith<$Res> {
  factory _$SchoolNoticeCopyWith(_SchoolNotice value, $Res Function(_SchoolNotice) _then) = __$SchoolNoticeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'notice_id') String noticeId, String title, String? description,@JsonKey(name: 'notice_date') DateTime? noticeDate,@JsonKey(name: 'attachment_url') String? attachmentUrl
});




}
/// @nodoc
class __$SchoolNoticeCopyWithImpl<$Res>
    implements _$SchoolNoticeCopyWith<$Res> {
  __$SchoolNoticeCopyWithImpl(this._self, this._then);

  final _SchoolNotice _self;
  final $Res Function(_SchoolNotice) _then;

/// Create a copy of SchoolNotice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? noticeId = null,Object? title = null,Object? description = freezed,Object? noticeDate = freezed,Object? attachmentUrl = freezed,}) {
  return _then(_SchoolNotice(
noticeId: null == noticeId ? _self.noticeId : noticeId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,noticeDate: freezed == noticeDate ? _self.noticeDate : noticeDate // ignore: cast_nullable_to_non_nullable
as DateTime?,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SchoolEvent {

@JsonKey(name: 'event_id') String get eventId;@JsonKey(name: 'event_name') String get eventName; String? get description;@JsonKey(name: 'event_date') DateTime? get eventDate;
/// Create a copy of SchoolEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchoolEventCopyWith<SchoolEvent> get copyWith => _$SchoolEventCopyWithImpl<SchoolEvent>(this as SchoolEvent, _$identity);

  /// Serializes this SchoolEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SchoolEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchoolEvent&&(identical(other.eventId, _this.eventId) || other.eventId == _this.eventId)&&(identical(other.eventName, _this.eventName) || other.eventName == _this.eventName)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.eventDate, _this.eventDate) || other.eventDate == _this.eventDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SchoolEvent;
  return Object.hash(runtimeType,_this.eventId,_this.eventName,_this.description,_this.eventDate);
}

@override
String toString() {
  final _this = this as SchoolEvent;
  return 'SchoolEvent(eventId: ${_this.eventId}, eventName: ${_this.eventName}, description: ${_this.description}, eventDate: ${_this.eventDate})';
}


}

/// @nodoc
abstract mixin class $SchoolEventCopyWith<$Res>  {
  factory $SchoolEventCopyWith(SchoolEvent value, $Res Function(SchoolEvent) _then) = _$SchoolEventCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'event_id') String eventId,@JsonKey(name: 'event_name') String eventName, String? description,@JsonKey(name: 'event_date') DateTime? eventDate
});




}
/// @nodoc
class _$SchoolEventCopyWithImpl<$Res>
    implements $SchoolEventCopyWith<$Res> {
  _$SchoolEventCopyWithImpl(this._self, this._then);

  final SchoolEvent _self;
  final $Res Function(SchoolEvent) _then;

/// Create a copy of SchoolEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? eventName = null,Object? description = freezed,Object? eventDate = freezed,}) {
  return _then(SchoolEvent(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventName: null == eventName ? _self.eventName : eventName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [SchoolEvent].
extension SchoolEventPatterns on SchoolEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SchoolEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SchoolEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SchoolEvent value)  $default,){
final _that = this;
switch (_that) {
case _SchoolEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SchoolEvent value)?  $default,){
final _that = this;
switch (_that) {
case _SchoolEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'event_id')  String eventId, @JsonKey(name: 'event_name')  String eventName,  String? description, @JsonKey(name: 'event_date')  DateTime? eventDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SchoolEvent() when $default != null:
return $default(_that.eventId,_that.eventName,_that.description,_that.eventDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'event_id')  String eventId, @JsonKey(name: 'event_name')  String eventName,  String? description, @JsonKey(name: 'event_date')  DateTime? eventDate)  $default,) {final _that = this;
switch (_that) {
case _SchoolEvent():
return $default(_that.eventId,_that.eventName,_that.description,_that.eventDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'event_id')  String eventId, @JsonKey(name: 'event_name')  String eventName,  String? description, @JsonKey(name: 'event_date')  DateTime? eventDate)?  $default,) {final _that = this;
switch (_that) {
case _SchoolEvent() when $default != null:
return $default(_that.eventId,_that.eventName,_that.description,_that.eventDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SchoolEvent implements SchoolEvent {
  const _SchoolEvent({@JsonKey(name: 'event_id') required this.eventId, @JsonKey(name: 'event_name') required this.eventName, this.description, @JsonKey(name: 'event_date') this.eventDate});
  factory _SchoolEvent.fromJson(Map<String, dynamic> json) => _$SchoolEventFromJson(json);

@override@JsonKey(name: 'event_id') final  String eventId;
@override@JsonKey(name: 'event_name') final  String eventName;
@override final  String? description;
@override@JsonKey(name: 'event_date') final  DateTime? eventDate;

/// Create a copy of SchoolEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchoolEventCopyWith<_SchoolEvent> get copyWith => __$SchoolEventCopyWithImpl<_SchoolEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SchoolEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SchoolEvent&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventName, eventName) || other.eventName == eventName)&&(identical(other.description, description) || other.description == description)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,eventId,eventName,description,eventDate);
}

@override
String toString() {
    return 'SchoolEvent(eventId: $eventId, eventName: $eventName, description: $description, eventDate: $eventDate)';
}


}

/// @nodoc
abstract mixin class _$SchoolEventCopyWith<$Res> implements $SchoolEventCopyWith<$Res> {
  factory _$SchoolEventCopyWith(_SchoolEvent value, $Res Function(_SchoolEvent) _then) = __$SchoolEventCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'event_id') String eventId,@JsonKey(name: 'event_name') String eventName, String? description,@JsonKey(name: 'event_date') DateTime? eventDate
});




}
/// @nodoc
class __$SchoolEventCopyWithImpl<$Res>
    implements _$SchoolEventCopyWith<$Res> {
  __$SchoolEventCopyWithImpl(this._self, this._then);

  final _SchoolEvent _self;
  final $Res Function(_SchoolEvent) _then;

/// Create a copy of SchoolEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventName = null,Object? description = freezed,Object? eventDate = freezed,}) {
  return _then(_SchoolEvent(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventName: null == eventName ? _self.eventName : eventName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$SchoolActivity {

@JsonKey(name: 'activity_id') String get activityId;@JsonKey(name: 'activity_name') String get activityName; String? get description;@JsonKey(name: 'activity_type') String? get activityType;@JsonKey(name: 'target_audience') String? get targetAudience;@JsonKey(name: 'activity_date') DateTime? get activityDate; String? get venue;
/// Create a copy of SchoolActivity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchoolActivityCopyWith<SchoolActivity> get copyWith => _$SchoolActivityCopyWithImpl<SchoolActivity>(this as SchoolActivity, _$identity);

  /// Serializes this SchoolActivity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SchoolActivity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchoolActivity&&(identical(other.activityId, _this.activityId) || other.activityId == _this.activityId)&&(identical(other.activityName, _this.activityName) || other.activityName == _this.activityName)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.activityType, _this.activityType) || other.activityType == _this.activityType)&&(identical(other.targetAudience, _this.targetAudience) || other.targetAudience == _this.targetAudience)&&(identical(other.activityDate, _this.activityDate) || other.activityDate == _this.activityDate)&&(identical(other.venue, _this.venue) || other.venue == _this.venue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SchoolActivity;
  return Object.hash(runtimeType,_this.activityId,_this.activityName,_this.description,_this.activityType,_this.targetAudience,_this.activityDate,_this.venue);
}

@override
String toString() {
  final _this = this as SchoolActivity;
  return 'SchoolActivity(activityId: ${_this.activityId}, activityName: ${_this.activityName}, description: ${_this.description}, activityType: ${_this.activityType}, targetAudience: ${_this.targetAudience}, activityDate: ${_this.activityDate}, venue: ${_this.venue})';
}


}

/// @nodoc
abstract mixin class $SchoolActivityCopyWith<$Res>  {
  factory $SchoolActivityCopyWith(SchoolActivity value, $Res Function(SchoolActivity) _then) = _$SchoolActivityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'activity_id') String activityId,@JsonKey(name: 'activity_name') String activityName, String? description,@JsonKey(name: 'activity_type') String? activityType,@JsonKey(name: 'target_audience') String? targetAudience,@JsonKey(name: 'activity_date') DateTime? activityDate, String? venue
});




}
/// @nodoc
class _$SchoolActivityCopyWithImpl<$Res>
    implements $SchoolActivityCopyWith<$Res> {
  _$SchoolActivityCopyWithImpl(this._self, this._then);

  final SchoolActivity _self;
  final $Res Function(SchoolActivity) _then;

/// Create a copy of SchoolActivity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activityId = null,Object? activityName = null,Object? description = freezed,Object? activityType = freezed,Object? targetAudience = freezed,Object? activityDate = freezed,Object? venue = freezed,}) {
  return _then(SchoolActivity(
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


/// Adds pattern-matching-related methods to [SchoolActivity].
extension SchoolActivityPatterns on SchoolActivity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SchoolActivity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SchoolActivity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SchoolActivity value)  $default,){
final _that = this;
switch (_that) {
case _SchoolActivity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SchoolActivity value)?  $default,){
final _that = this;
switch (_that) {
case _SchoolActivity() when $default != null:
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
case _SchoolActivity() when $default != null:
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
case _SchoolActivity():
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
case _SchoolActivity() when $default != null:
return $default(_that.activityId,_that.activityName,_that.description,_that.activityType,_that.targetAudience,_that.activityDate,_that.venue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SchoolActivity implements SchoolActivity {
  const _SchoolActivity({@JsonKey(name: 'activity_id') required this.activityId, @JsonKey(name: 'activity_name') required this.activityName, this.description, @JsonKey(name: 'activity_type') this.activityType, @JsonKey(name: 'target_audience') this.targetAudience, @JsonKey(name: 'activity_date') this.activityDate, this.venue});
  factory _SchoolActivity.fromJson(Map<String, dynamic> json) => _$SchoolActivityFromJson(json);

@override@JsonKey(name: 'activity_id') final  String activityId;
@override@JsonKey(name: 'activity_name') final  String activityName;
@override final  String? description;
@override@JsonKey(name: 'activity_type') final  String? activityType;
@override@JsonKey(name: 'target_audience') final  String? targetAudience;
@override@JsonKey(name: 'activity_date') final  DateTime? activityDate;
@override final  String? venue;

/// Create a copy of SchoolActivity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchoolActivityCopyWith<_SchoolActivity> get copyWith => __$SchoolActivityCopyWithImpl<_SchoolActivity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SchoolActivityToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SchoolActivity&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.activityName, activityName) || other.activityName == activityName)&&(identical(other.description, description) || other.description == description)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.targetAudience, targetAudience) || other.targetAudience == targetAudience)&&(identical(other.activityDate, activityDate) || other.activityDate == activityDate)&&(identical(other.venue, venue) || other.venue == venue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,activityId,activityName,description,activityType,targetAudience,activityDate,venue);
}

@override
String toString() {
    return 'SchoolActivity(activityId: $activityId, activityName: $activityName, description: $description, activityType: $activityType, targetAudience: $targetAudience, activityDate: $activityDate, venue: $venue)';
}


}

/// @nodoc
abstract mixin class _$SchoolActivityCopyWith<$Res> implements $SchoolActivityCopyWith<$Res> {
  factory _$SchoolActivityCopyWith(_SchoolActivity value, $Res Function(_SchoolActivity) _then) = __$SchoolActivityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'activity_id') String activityId,@JsonKey(name: 'activity_name') String activityName, String? description,@JsonKey(name: 'activity_type') String? activityType,@JsonKey(name: 'target_audience') String? targetAudience,@JsonKey(name: 'activity_date') DateTime? activityDate, String? venue
});




}
/// @nodoc
class __$SchoolActivityCopyWithImpl<$Res>
    implements _$SchoolActivityCopyWith<$Res> {
  __$SchoolActivityCopyWithImpl(this._self, this._then);

  final _SchoolActivity _self;
  final $Res Function(_SchoolActivity) _then;

/// Create a copy of SchoolActivity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activityId = null,Object? activityName = null,Object? description = freezed,Object? activityType = freezed,Object? targetAudience = freezed,Object? activityDate = freezed,Object? venue = freezed,}) {
  return _then(_SchoolActivity(
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

// dart format on
