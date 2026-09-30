// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transport_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransportRoute {

@JsonKey(name: 'route_id') String get routeId;@JsonKey(name: 'route_name') String get routeName;
/// Create a copy of TransportRoute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransportRouteCopyWith<TransportRoute> get copyWith => _$TransportRouteCopyWithImpl<TransportRoute>(this as TransportRoute, _$identity);

  /// Serializes this TransportRoute to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TransportRoute;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransportRoute&&(identical(other.routeId, _this.routeId) || other.routeId == _this.routeId)&&(identical(other.routeName, _this.routeName) || other.routeName == _this.routeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TransportRoute;
  return Object.hash(runtimeType,_this.routeId,_this.routeName);
}

@override
String toString() {
  final _this = this as TransportRoute;
  return 'TransportRoute(routeId: ${_this.routeId}, routeName: ${_this.routeName})';
}


}

/// @nodoc
abstract mixin class $TransportRouteCopyWith<$Res>  {
  factory $TransportRouteCopyWith(TransportRoute value, $Res Function(TransportRoute) _then) = _$TransportRouteCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'route_id') String routeId,@JsonKey(name: 'route_name') String routeName
});




}
/// @nodoc
class _$TransportRouteCopyWithImpl<$Res>
    implements $TransportRouteCopyWith<$Res> {
  _$TransportRouteCopyWithImpl(this._self, this._then);

  final TransportRoute _self;
  final $Res Function(TransportRoute) _then;

/// Create a copy of TransportRoute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routeId = null,Object? routeName = null,}) {
  return _then(TransportRoute(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,routeName: null == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TransportRoute].
extension TransportRoutePatterns on TransportRoute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransportRoute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransportRoute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransportRoute value)  $default,){
final _that = this;
switch (_that) {
case _TransportRoute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransportRoute value)?  $default,){
final _that = this;
switch (_that) {
case _TransportRoute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'route_id')  String routeId, @JsonKey(name: 'route_name')  String routeName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransportRoute() when $default != null:
return $default(_that.routeId,_that.routeName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'route_id')  String routeId, @JsonKey(name: 'route_name')  String routeName)  $default,) {final _that = this;
switch (_that) {
case _TransportRoute():
return $default(_that.routeId,_that.routeName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'route_id')  String routeId, @JsonKey(name: 'route_name')  String routeName)?  $default,) {final _that = this;
switch (_that) {
case _TransportRoute() when $default != null:
return $default(_that.routeId,_that.routeName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransportRoute implements TransportRoute {
  const _TransportRoute({@JsonKey(name: 'route_id') required this.routeId, @JsonKey(name: 'route_name') required this.routeName});
  factory _TransportRoute.fromJson(Map<String, dynamic> json) => _$TransportRouteFromJson(json);

@override@JsonKey(name: 'route_id') final  String routeId;
@override@JsonKey(name: 'route_name') final  String routeName;

/// Create a copy of TransportRoute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransportRouteCopyWith<_TransportRoute> get copyWith => __$TransportRouteCopyWithImpl<_TransportRoute>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransportRouteToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransportRoute&&(identical(other.routeId, routeId) || other.routeId == routeId)&&(identical(other.routeName, routeName) || other.routeName == routeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,routeId,routeName);
}

@override
String toString() {
    return 'TransportRoute(routeId: $routeId, routeName: $routeName)';
}


}

/// @nodoc
abstract mixin class _$TransportRouteCopyWith<$Res> implements $TransportRouteCopyWith<$Res> {
  factory _$TransportRouteCopyWith(_TransportRoute value, $Res Function(_TransportRoute) _then) = __$TransportRouteCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'route_id') String routeId,@JsonKey(name: 'route_name') String routeName
});




}
/// @nodoc
class __$TransportRouteCopyWithImpl<$Res>
    implements _$TransportRouteCopyWith<$Res> {
  __$TransportRouteCopyWithImpl(this._self, this._then);

  final _TransportRoute _self;
  final $Res Function(_TransportRoute) _then;

/// Create a copy of TransportRoute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routeId = null,Object? routeName = null,}) {
  return _then(_TransportRoute(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,routeName: null == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TransportStop {

@JsonKey(name: 'stop_id') String get stopId;@JsonKey(name: 'stop_name') String get stopName;@JsonKey(name: 'pickup_time') DateTime? get pickupTime;@JsonKey(name: 'drop_time') DateTime? get dropTime;
/// Create a copy of TransportStop
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransportStopCopyWith<TransportStop> get copyWith => _$TransportStopCopyWithImpl<TransportStop>(this as TransportStop, _$identity);

  /// Serializes this TransportStop to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TransportStop;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransportStop&&(identical(other.stopId, _this.stopId) || other.stopId == _this.stopId)&&(identical(other.stopName, _this.stopName) || other.stopName == _this.stopName)&&(identical(other.pickupTime, _this.pickupTime) || other.pickupTime == _this.pickupTime)&&(identical(other.dropTime, _this.dropTime) || other.dropTime == _this.dropTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TransportStop;
  return Object.hash(runtimeType,_this.stopId,_this.stopName,_this.pickupTime,_this.dropTime);
}

@override
String toString() {
  final _this = this as TransportStop;
  return 'TransportStop(stopId: ${_this.stopId}, stopName: ${_this.stopName}, pickupTime: ${_this.pickupTime}, dropTime: ${_this.dropTime})';
}


}

/// @nodoc
abstract mixin class $TransportStopCopyWith<$Res>  {
  factory $TransportStopCopyWith(TransportStop value, $Res Function(TransportStop) _then) = _$TransportStopCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'stop_id') String stopId,@JsonKey(name: 'stop_name') String stopName,@JsonKey(name: 'pickup_time') DateTime? pickupTime,@JsonKey(name: 'drop_time') DateTime? dropTime
});




}
/// @nodoc
class _$TransportStopCopyWithImpl<$Res>
    implements $TransportStopCopyWith<$Res> {
  _$TransportStopCopyWithImpl(this._self, this._then);

  final TransportStop _self;
  final $Res Function(TransportStop) _then;

/// Create a copy of TransportStop
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stopId = null,Object? stopName = null,Object? pickupTime = freezed,Object? dropTime = freezed,}) {
  return _then(TransportStop(
stopId: null == stopId ? _self.stopId : stopId // ignore: cast_nullable_to_non_nullable
as String,stopName: null == stopName ? _self.stopName : stopName // ignore: cast_nullable_to_non_nullable
as String,pickupTime: freezed == pickupTime ? _self.pickupTime : pickupTime // ignore: cast_nullable_to_non_nullable
as DateTime?,dropTime: freezed == dropTime ? _self.dropTime : dropTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransportStop].
extension TransportStopPatterns on TransportStop {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransportStop value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransportStop() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransportStop value)  $default,){
final _that = this;
switch (_that) {
case _TransportStop():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransportStop value)?  $default,){
final _that = this;
switch (_that) {
case _TransportStop() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'stop_id')  String stopId, @JsonKey(name: 'stop_name')  String stopName, @JsonKey(name: 'pickup_time')  DateTime? pickupTime, @JsonKey(name: 'drop_time')  DateTime? dropTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransportStop() when $default != null:
return $default(_that.stopId,_that.stopName,_that.pickupTime,_that.dropTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'stop_id')  String stopId, @JsonKey(name: 'stop_name')  String stopName, @JsonKey(name: 'pickup_time')  DateTime? pickupTime, @JsonKey(name: 'drop_time')  DateTime? dropTime)  $default,) {final _that = this;
switch (_that) {
case _TransportStop():
return $default(_that.stopId,_that.stopName,_that.pickupTime,_that.dropTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'stop_id')  String stopId, @JsonKey(name: 'stop_name')  String stopName, @JsonKey(name: 'pickup_time')  DateTime? pickupTime, @JsonKey(name: 'drop_time')  DateTime? dropTime)?  $default,) {final _that = this;
switch (_that) {
case _TransportStop() when $default != null:
return $default(_that.stopId,_that.stopName,_that.pickupTime,_that.dropTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransportStop implements TransportStop {
  const _TransportStop({@JsonKey(name: 'stop_id') required this.stopId, @JsonKey(name: 'stop_name') required this.stopName, @JsonKey(name: 'pickup_time') this.pickupTime, @JsonKey(name: 'drop_time') this.dropTime});
  factory _TransportStop.fromJson(Map<String, dynamic> json) => _$TransportStopFromJson(json);

@override@JsonKey(name: 'stop_id') final  String stopId;
@override@JsonKey(name: 'stop_name') final  String stopName;
@override@JsonKey(name: 'pickup_time') final  DateTime? pickupTime;
@override@JsonKey(name: 'drop_time') final  DateTime? dropTime;

/// Create a copy of TransportStop
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransportStopCopyWith<_TransportStop> get copyWith => __$TransportStopCopyWithImpl<_TransportStop>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransportStopToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransportStop&&(identical(other.stopId, stopId) || other.stopId == stopId)&&(identical(other.stopName, stopName) || other.stopName == stopName)&&(identical(other.pickupTime, pickupTime) || other.pickupTime == pickupTime)&&(identical(other.dropTime, dropTime) || other.dropTime == dropTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,stopId,stopName,pickupTime,dropTime);
}

@override
String toString() {
    return 'TransportStop(stopId: $stopId, stopName: $stopName, pickupTime: $pickupTime, dropTime: $dropTime)';
}


}

/// @nodoc
abstract mixin class _$TransportStopCopyWith<$Res> implements $TransportStopCopyWith<$Res> {
  factory _$TransportStopCopyWith(_TransportStop value, $Res Function(_TransportStop) _then) = __$TransportStopCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'stop_id') String stopId,@JsonKey(name: 'stop_name') String stopName,@JsonKey(name: 'pickup_time') DateTime? pickupTime,@JsonKey(name: 'drop_time') DateTime? dropTime
});




}
/// @nodoc
class __$TransportStopCopyWithImpl<$Res>
    implements _$TransportStopCopyWith<$Res> {
  __$TransportStopCopyWithImpl(this._self, this._then);

  final _TransportStop _self;
  final $Res Function(_TransportStop) _then;

/// Create a copy of TransportStop
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stopId = null,Object? stopName = null,Object? pickupTime = freezed,Object? dropTime = freezed,}) {
  return _then(_TransportStop(
stopId: null == stopId ? _self.stopId : stopId // ignore: cast_nullable_to_non_nullable
as String,stopName: null == stopName ? _self.stopName : stopName // ignore: cast_nullable_to_non_nullable
as String,pickupTime: freezed == pickupTime ? _self.pickupTime : pickupTime // ignore: cast_nullable_to_non_nullable
as DateTime?,dropTime: freezed == dropTime ? _self.dropTime : dropTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$TransportBus {

@JsonKey(name: 'bus_number') String get busNumber; int? get capacity;
/// Create a copy of TransportBus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransportBusCopyWith<TransportBus> get copyWith => _$TransportBusCopyWithImpl<TransportBus>(this as TransportBus, _$identity);

  /// Serializes this TransportBus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TransportBus;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransportBus&&(identical(other.busNumber, _this.busNumber) || other.busNumber == _this.busNumber)&&(identical(other.capacity, _this.capacity) || other.capacity == _this.capacity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TransportBus;
  return Object.hash(runtimeType,_this.busNumber,_this.capacity);
}

@override
String toString() {
  final _this = this as TransportBus;
  return 'TransportBus(busNumber: ${_this.busNumber}, capacity: ${_this.capacity})';
}


}

/// @nodoc
abstract mixin class $TransportBusCopyWith<$Res>  {
  factory $TransportBusCopyWith(TransportBus value, $Res Function(TransportBus) _then) = _$TransportBusCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'bus_number') String busNumber, int? capacity
});




}
/// @nodoc
class _$TransportBusCopyWithImpl<$Res>
    implements $TransportBusCopyWith<$Res> {
  _$TransportBusCopyWithImpl(this._self, this._then);

  final TransportBus _self;
  final $Res Function(TransportBus) _then;

/// Create a copy of TransportBus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? busNumber = null,Object? capacity = freezed,}) {
  return _then(TransportBus(
busNumber: null == busNumber ? _self.busNumber : busNumber // ignore: cast_nullable_to_non_nullable
as String,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransportBus].
extension TransportBusPatterns on TransportBus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransportBus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransportBus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransportBus value)  $default,){
final _that = this;
switch (_that) {
case _TransportBus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransportBus value)?  $default,){
final _that = this;
switch (_that) {
case _TransportBus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'bus_number')  String busNumber,  int? capacity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransportBus() when $default != null:
return $default(_that.busNumber,_that.capacity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'bus_number')  String busNumber,  int? capacity)  $default,) {final _that = this;
switch (_that) {
case _TransportBus():
return $default(_that.busNumber,_that.capacity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'bus_number')  String busNumber,  int? capacity)?  $default,) {final _that = this;
switch (_that) {
case _TransportBus() when $default != null:
return $default(_that.busNumber,_that.capacity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransportBus implements TransportBus {
  const _TransportBus({@JsonKey(name: 'bus_number') required this.busNumber, this.capacity});
  factory _TransportBus.fromJson(Map<String, dynamic> json) => _$TransportBusFromJson(json);

@override@JsonKey(name: 'bus_number') final  String busNumber;
@override final  int? capacity;

/// Create a copy of TransportBus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransportBusCopyWith<_TransportBus> get copyWith => __$TransportBusCopyWithImpl<_TransportBus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransportBusToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransportBus&&(identical(other.busNumber, busNumber) || other.busNumber == busNumber)&&(identical(other.capacity, capacity) || other.capacity == capacity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,busNumber,capacity);
}

@override
String toString() {
    return 'TransportBus(busNumber: $busNumber, capacity: $capacity)';
}


}

/// @nodoc
abstract mixin class _$TransportBusCopyWith<$Res> implements $TransportBusCopyWith<$Res> {
  factory _$TransportBusCopyWith(_TransportBus value, $Res Function(_TransportBus) _then) = __$TransportBusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'bus_number') String busNumber, int? capacity
});




}
/// @nodoc
class __$TransportBusCopyWithImpl<$Res>
    implements _$TransportBusCopyWith<$Res> {
  __$TransportBusCopyWithImpl(this._self, this._then);

  final _TransportBus _self;
  final $Res Function(_TransportBus) _then;

/// Create a copy of TransportBus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? busNumber = null,Object? capacity = freezed,}) {
  return _then(_TransportBus(
busNumber: null == busNumber ? _self.busNumber : busNumber // ignore: cast_nullable_to_non_nullable
as String,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$TransportDriver {

 String get name; String? get phone;@JsonKey(name: 'photo_url') String? get photoUrl;
/// Create a copy of TransportDriver
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransportDriverCopyWith<TransportDriver> get copyWith => _$TransportDriverCopyWithImpl<TransportDriver>(this as TransportDriver, _$identity);

  /// Serializes this TransportDriver to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TransportDriver;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransportDriver&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.photoUrl, _this.photoUrl) || other.photoUrl == _this.photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TransportDriver;
  return Object.hash(runtimeType,_this.name,_this.phone,_this.photoUrl);
}

@override
String toString() {
  final _this = this as TransportDriver;
  return 'TransportDriver(name: ${_this.name}, phone: ${_this.phone}, photoUrl: ${_this.photoUrl})';
}


}

/// @nodoc
abstract mixin class $TransportDriverCopyWith<$Res>  {
  factory $TransportDriverCopyWith(TransportDriver value, $Res Function(TransportDriver) _then) = _$TransportDriverCopyWithImpl;
@useResult
$Res call({
 String name, String? phone,@JsonKey(name: 'photo_url') String? photoUrl
});




}
/// @nodoc
class _$TransportDriverCopyWithImpl<$Res>
    implements $TransportDriverCopyWith<$Res> {
  _$TransportDriverCopyWithImpl(this._self, this._then);

  final TransportDriver _self;
  final $Res Function(TransportDriver) _then;

/// Create a copy of TransportDriver
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? phone = freezed,Object? photoUrl = freezed,}) {
  return _then(TransportDriver(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransportDriver].
extension TransportDriverPatterns on TransportDriver {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransportDriver value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransportDriver() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransportDriver value)  $default,){
final _that = this;
switch (_that) {
case _TransportDriver():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransportDriver value)?  $default,){
final _that = this;
switch (_that) {
case _TransportDriver() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? phone, @JsonKey(name: 'photo_url')  String? photoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransportDriver() when $default != null:
return $default(_that.name,_that.phone,_that.photoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? phone, @JsonKey(name: 'photo_url')  String? photoUrl)  $default,) {final _that = this;
switch (_that) {
case _TransportDriver():
return $default(_that.name,_that.phone,_that.photoUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? phone, @JsonKey(name: 'photo_url')  String? photoUrl)?  $default,) {final _that = this;
switch (_that) {
case _TransportDriver() when $default != null:
return $default(_that.name,_that.phone,_that.photoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransportDriver implements TransportDriver {
  const _TransportDriver({required this.name, this.phone, @JsonKey(name: 'photo_url') this.photoUrl});
  factory _TransportDriver.fromJson(Map<String, dynamic> json) => _$TransportDriverFromJson(json);

@override final  String name;
@override final  String? phone;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;

/// Create a copy of TransportDriver
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransportDriverCopyWith<_TransportDriver> get copyWith => __$TransportDriverCopyWithImpl<_TransportDriver>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransportDriverToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransportDriver&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,phone,photoUrl);
}

@override
String toString() {
    return 'TransportDriver(name: $name, phone: $phone, photoUrl: $photoUrl)';
}


}

/// @nodoc
abstract mixin class _$TransportDriverCopyWith<$Res> implements $TransportDriverCopyWith<$Res> {
  factory _$TransportDriverCopyWith(_TransportDriver value, $Res Function(_TransportDriver) _then) = __$TransportDriverCopyWithImpl;
@override @useResult
$Res call({
 String name, String? phone,@JsonKey(name: 'photo_url') String? photoUrl
});




}
/// @nodoc
class __$TransportDriverCopyWithImpl<$Res>
    implements _$TransportDriverCopyWith<$Res> {
  __$TransportDriverCopyWithImpl(this._self, this._then);

  final _TransportDriver _self;
  final $Res Function(_TransportDriver) _then;

/// Create a copy of TransportDriver
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? phone = freezed,Object? photoUrl = freezed,}) {
  return _then(_TransportDriver(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TransportInfo {

 TransportRoute get route; TransportStop? get stop; TransportBus? get bus; TransportDriver? get driver;
/// Create a copy of TransportInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransportInfoCopyWith<TransportInfo> get copyWith => _$TransportInfoCopyWithImpl<TransportInfo>(this as TransportInfo, _$identity);

  /// Serializes this TransportInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TransportInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransportInfo&&(identical(other.route, _this.route) || other.route == _this.route)&&(identical(other.stop, _this.stop) || other.stop == _this.stop)&&(identical(other.bus, _this.bus) || other.bus == _this.bus)&&(identical(other.driver, _this.driver) || other.driver == _this.driver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TransportInfo;
  return Object.hash(runtimeType,_this.route,_this.stop,_this.bus,_this.driver);
}

@override
String toString() {
  final _this = this as TransportInfo;
  return 'TransportInfo(route: ${_this.route}, stop: ${_this.stop}, bus: ${_this.bus}, driver: ${_this.driver})';
}


}

/// @nodoc
abstract mixin class $TransportInfoCopyWith<$Res>  {
  factory $TransportInfoCopyWith(TransportInfo value, $Res Function(TransportInfo) _then) = _$TransportInfoCopyWithImpl;
@useResult
$Res call({
 TransportRoute route, TransportStop? stop, TransportBus? bus, TransportDriver? driver
});


$TransportRouteCopyWith<$Res> get route;$TransportStopCopyWith<$Res>? get stop;$TransportBusCopyWith<$Res>? get bus;$TransportDriverCopyWith<$Res>? get driver;

}
/// @nodoc
class _$TransportInfoCopyWithImpl<$Res>
    implements $TransportInfoCopyWith<$Res> {
  _$TransportInfoCopyWithImpl(this._self, this._then);

  final TransportInfo _self;
  final $Res Function(TransportInfo) _then;

/// Create a copy of TransportInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? route = null,Object? stop = freezed,Object? bus = freezed,Object? driver = freezed,}) {
  return _then(TransportInfo(
route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as TransportRoute,stop: freezed == stop ? _self.stop : stop // ignore: cast_nullable_to_non_nullable
as TransportStop?,bus: freezed == bus ? _self.bus : bus // ignore: cast_nullable_to_non_nullable
as TransportBus?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as TransportDriver?,
  ));
}
/// Create a copy of TransportInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransportRouteCopyWith<$Res> get route {
  
  return $TransportRouteCopyWith<$Res>(_self.route, (value) {
    return _then(_self.copyWith(route: value));
  });
}/// Create a copy of TransportInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransportStopCopyWith<$Res>? get stop {
    if (_self.stop == null) {
    return null;
  }

  return $TransportStopCopyWith<$Res>(_self.stop!, (value) {
    return _then(_self.copyWith(stop: value));
  });
}/// Create a copy of TransportInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransportBusCopyWith<$Res>? get bus {
    if (_self.bus == null) {
    return null;
  }

  return $TransportBusCopyWith<$Res>(_self.bus!, (value) {
    return _then(_self.copyWith(bus: value));
  });
}/// Create a copy of TransportInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransportDriverCopyWith<$Res>? get driver {
    if (_self.driver == null) {
    return null;
  }

  return $TransportDriverCopyWith<$Res>(_self.driver!, (value) {
    return _then(_self.copyWith(driver: value));
  });
}
}


/// Adds pattern-matching-related methods to [TransportInfo].
extension TransportInfoPatterns on TransportInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransportInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransportInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransportInfo value)  $default,){
final _that = this;
switch (_that) {
case _TransportInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransportInfo value)?  $default,){
final _that = this;
switch (_that) {
case _TransportInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TransportRoute route,  TransportStop? stop,  TransportBus? bus,  TransportDriver? driver)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransportInfo() when $default != null:
return $default(_that.route,_that.stop,_that.bus,_that.driver);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TransportRoute route,  TransportStop? stop,  TransportBus? bus,  TransportDriver? driver)  $default,) {final _that = this;
switch (_that) {
case _TransportInfo():
return $default(_that.route,_that.stop,_that.bus,_that.driver);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TransportRoute route,  TransportStop? stop,  TransportBus? bus,  TransportDriver? driver)?  $default,) {final _that = this;
switch (_that) {
case _TransportInfo() when $default != null:
return $default(_that.route,_that.stop,_that.bus,_that.driver);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransportInfo implements TransportInfo {
  const _TransportInfo({required this.route, this.stop, this.bus, this.driver});
  factory _TransportInfo.fromJson(Map<String, dynamic> json) => _$TransportInfoFromJson(json);

@override final  TransportRoute route;
@override final  TransportStop? stop;
@override final  TransportBus? bus;
@override final  TransportDriver? driver;

/// Create a copy of TransportInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransportInfoCopyWith<_TransportInfo> get copyWith => __$TransportInfoCopyWithImpl<_TransportInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransportInfoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransportInfo&&(identical(other.route, route) || other.route == route)&&(identical(other.stop, stop) || other.stop == stop)&&(identical(other.bus, bus) || other.bus == bus)&&(identical(other.driver, driver) || other.driver == driver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,route,stop,bus,driver);
}

@override
String toString() {
    return 'TransportInfo(route: $route, stop: $stop, bus: $bus, driver: $driver)';
}


}

/// @nodoc
abstract mixin class _$TransportInfoCopyWith<$Res> implements $TransportInfoCopyWith<$Res> {
  factory _$TransportInfoCopyWith(_TransportInfo value, $Res Function(_TransportInfo) _then) = __$TransportInfoCopyWithImpl;
@override @useResult
$Res call({
 TransportRoute route, TransportStop? stop, TransportBus? bus, TransportDriver? driver
});


@override $TransportRouteCopyWith<$Res> get route;@override $TransportStopCopyWith<$Res>? get stop;@override $TransportBusCopyWith<$Res>? get bus;@override $TransportDriverCopyWith<$Res>? get driver;

}
/// @nodoc
class __$TransportInfoCopyWithImpl<$Res>
    implements _$TransportInfoCopyWith<$Res> {
  __$TransportInfoCopyWithImpl(this._self, this._then);

  final _TransportInfo _self;
  final $Res Function(_TransportInfo) _then;

/// Create a copy of TransportInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? route = null,Object? stop = freezed,Object? bus = freezed,Object? driver = freezed,}) {
  return _then(_TransportInfo(
route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as TransportRoute,stop: freezed == stop ? _self.stop : stop // ignore: cast_nullable_to_non_nullable
as TransportStop?,bus: freezed == bus ? _self.bus : bus // ignore: cast_nullable_to_non_nullable
as TransportBus?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as TransportDriver?,
  ));
}

/// Create a copy of TransportInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransportRouteCopyWith<$Res> get route {
  
  return $TransportRouteCopyWith<$Res>(_self.route, (value) {
    return _then(_self.copyWith(route: value));
  });
}/// Create a copy of TransportInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransportStopCopyWith<$Res>? get stop {
    if (_self.stop == null) {
    return null;
  }

  return $TransportStopCopyWith<$Res>(_self.stop!, (value) {
    return _then(_self.copyWith(stop: value));
  });
}/// Create a copy of TransportInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransportBusCopyWith<$Res>? get bus {
    if (_self.bus == null) {
    return null;
  }

  return $TransportBusCopyWith<$Res>(_self.bus!, (value) {
    return _then(_self.copyWith(bus: value));
  });
}/// Create a copy of TransportInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransportDriverCopyWith<$Res>? get driver {
    if (_self.driver == null) {
    return null;
  }

  return $TransportDriverCopyWith<$Res>(_self.driver!, (value) {
    return _then(_self.copyWith(driver: value));
  });
}
}

// dart format on
