// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CalendarEntry {

@JsonKey(name: 'calendar_id') String get calendarId;@JsonKey(name: 'event_title') String? get eventTitle;@JsonKey(name: 'event_description') String? get eventDescription;@JsonKey(name: 'event_date') DateTime? get eventDate;
/// Create a copy of CalendarEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarEntryCopyWith<CalendarEntry> get copyWith => _$CalendarEntryCopyWithImpl<CalendarEntry>(this as CalendarEntry, _$identity);

  /// Serializes this CalendarEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CalendarEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarEntry&&(identical(other.calendarId, _this.calendarId) || other.calendarId == _this.calendarId)&&(identical(other.eventTitle, _this.eventTitle) || other.eventTitle == _this.eventTitle)&&(identical(other.eventDescription, _this.eventDescription) || other.eventDescription == _this.eventDescription)&&(identical(other.eventDate, _this.eventDate) || other.eventDate == _this.eventDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CalendarEntry;
  return Object.hash(runtimeType,_this.calendarId,_this.eventTitle,_this.eventDescription,_this.eventDate);
}

@override
String toString() {
  final _this = this as CalendarEntry;
  return 'CalendarEntry(calendarId: ${_this.calendarId}, eventTitle: ${_this.eventTitle}, eventDescription: ${_this.eventDescription}, eventDate: ${_this.eventDate})';
}


}

/// @nodoc
abstract mixin class $CalendarEntryCopyWith<$Res>  {
  factory $CalendarEntryCopyWith(CalendarEntry value, $Res Function(CalendarEntry) _then) = _$CalendarEntryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'calendar_id') String calendarId,@JsonKey(name: 'event_title') String? eventTitle,@JsonKey(name: 'event_description') String? eventDescription,@JsonKey(name: 'event_date') DateTime? eventDate
});




}
/// @nodoc
class _$CalendarEntryCopyWithImpl<$Res>
    implements $CalendarEntryCopyWith<$Res> {
  _$CalendarEntryCopyWithImpl(this._self, this._then);

  final CalendarEntry _self;
  final $Res Function(CalendarEntry) _then;

/// Create a copy of CalendarEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? calendarId = null,Object? eventTitle = freezed,Object? eventDescription = freezed,Object? eventDate = freezed,}) {
  return _then(CalendarEntry(
calendarId: null == calendarId ? _self.calendarId : calendarId // ignore: cast_nullable_to_non_nullable
as String,eventTitle: freezed == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String?,eventDescription: freezed == eventDescription ? _self.eventDescription : eventDescription // ignore: cast_nullable_to_non_nullable
as String?,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CalendarEntry].
extension CalendarEntryPatterns on CalendarEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarEntry value)  $default,){
final _that = this;
switch (_that) {
case _CalendarEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarEntry value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'calendar_id')  String calendarId, @JsonKey(name: 'event_title')  String? eventTitle, @JsonKey(name: 'event_description')  String? eventDescription, @JsonKey(name: 'event_date')  DateTime? eventDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarEntry() when $default != null:
return $default(_that.calendarId,_that.eventTitle,_that.eventDescription,_that.eventDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'calendar_id')  String calendarId, @JsonKey(name: 'event_title')  String? eventTitle, @JsonKey(name: 'event_description')  String? eventDescription, @JsonKey(name: 'event_date')  DateTime? eventDate)  $default,) {final _that = this;
switch (_that) {
case _CalendarEntry():
return $default(_that.calendarId,_that.eventTitle,_that.eventDescription,_that.eventDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'calendar_id')  String calendarId, @JsonKey(name: 'event_title')  String? eventTitle, @JsonKey(name: 'event_description')  String? eventDescription, @JsonKey(name: 'event_date')  DateTime? eventDate)?  $default,) {final _that = this;
switch (_that) {
case _CalendarEntry() when $default != null:
return $default(_that.calendarId,_that.eventTitle,_that.eventDescription,_that.eventDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CalendarEntry implements CalendarEntry {
  const _CalendarEntry({@JsonKey(name: 'calendar_id') required this.calendarId, @JsonKey(name: 'event_title') this.eventTitle, @JsonKey(name: 'event_description') this.eventDescription, @JsonKey(name: 'event_date') this.eventDate});
  factory _CalendarEntry.fromJson(Map<String, dynamic> json) => _$CalendarEntryFromJson(json);

@override@JsonKey(name: 'calendar_id') final  String calendarId;
@override@JsonKey(name: 'event_title') final  String? eventTitle;
@override@JsonKey(name: 'event_description') final  String? eventDescription;
@override@JsonKey(name: 'event_date') final  DateTime? eventDate;

/// Create a copy of CalendarEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarEntryCopyWith<_CalendarEntry> get copyWith => __$CalendarEntryCopyWithImpl<_CalendarEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CalendarEntryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarEntry&&(identical(other.calendarId, calendarId) || other.calendarId == calendarId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventDescription, eventDescription) || other.eventDescription == eventDescription)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,calendarId,eventTitle,eventDescription,eventDate);
}

@override
String toString() {
    return 'CalendarEntry(calendarId: $calendarId, eventTitle: $eventTitle, eventDescription: $eventDescription, eventDate: $eventDate)';
}


}

/// @nodoc
abstract mixin class _$CalendarEntryCopyWith<$Res> implements $CalendarEntryCopyWith<$Res> {
  factory _$CalendarEntryCopyWith(_CalendarEntry value, $Res Function(_CalendarEntry) _then) = __$CalendarEntryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'calendar_id') String calendarId,@JsonKey(name: 'event_title') String? eventTitle,@JsonKey(name: 'event_description') String? eventDescription,@JsonKey(name: 'event_date') DateTime? eventDate
});




}
/// @nodoc
class __$CalendarEntryCopyWithImpl<$Res>
    implements _$CalendarEntryCopyWith<$Res> {
  __$CalendarEntryCopyWithImpl(this._self, this._then);

  final _CalendarEntry _self;
  final $Res Function(_CalendarEntry) _then;

/// Create a copy of CalendarEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? calendarId = null,Object? eventTitle = freezed,Object? eventDescription = freezed,Object? eventDate = freezed,}) {
  return _then(_CalendarEntry(
calendarId: null == calendarId ? _self.calendarId : calendarId // ignore: cast_nullable_to_non_nullable
as String,eventTitle: freezed == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String?,eventDescription: freezed == eventDescription ? _self.eventDescription : eventDescription // ignore: cast_nullable_to_non_nullable
as String?,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
