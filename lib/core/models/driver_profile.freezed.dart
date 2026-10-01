// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RouteStop {

@JsonKey(name: 'stop_id') String get stopId;@JsonKey(name: 'stop_name') String get stopName;@JsonKey(name: 'pickup_time') DateTime? get pickupTime;@JsonKey(name: 'drop_time') DateTime? get dropTime;@JsonKey(name: 'stop_order') int get stopOrder;
/// Create a copy of RouteStop
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteStopCopyWith<RouteStop> get copyWith => _$RouteStopCopyWithImpl<RouteStop>(this as RouteStop, _$identity);

  /// Serializes this RouteStop to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RouteStop;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteStop&&(identical(other.stopId, _this.stopId) || other.stopId == _this.stopId)&&(identical(other.stopName, _this.stopName) || other.stopName == _this.stopName)&&(identical(other.pickupTime, _this.pickupTime) || other.pickupTime == _this.pickupTime)&&(identical(other.dropTime, _this.dropTime) || other.dropTime == _this.dropTime)&&(identical(other.stopOrder, _this.stopOrder) || other.stopOrder == _this.stopOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RouteStop;
  return Object.hash(runtimeType,_this.stopId,_this.stopName,_this.pickupTime,_this.dropTime,_this.stopOrder);
}

@override
String toString() {
  final _this = this as RouteStop;
  return 'RouteStop(stopId: ${_this.stopId}, stopName: ${_this.stopName}, pickupTime: ${_this.pickupTime}, dropTime: ${_this.dropTime}, stopOrder: ${_this.stopOrder})';
}


}

/// @nodoc
abstract mixin class $RouteStopCopyWith<$Res>  {
  factory $RouteStopCopyWith(RouteStop value, $Res Function(RouteStop) _then) = _$RouteStopCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'stop_id') String stopId,@JsonKey(name: 'stop_name') String stopName,@JsonKey(name: 'pickup_time') DateTime? pickupTime,@JsonKey(name: 'drop_time') DateTime? dropTime,@JsonKey(name: 'stop_order') int stopOrder
});




}
/// @nodoc
class _$RouteStopCopyWithImpl<$Res>
    implements $RouteStopCopyWith<$Res> {
  _$RouteStopCopyWithImpl(this._self, this._then);

  final RouteStop _self;
  final $Res Function(RouteStop) _then;

/// Create a copy of RouteStop
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stopId = null,Object? stopName = null,Object? pickupTime = freezed,Object? dropTime = freezed,Object? stopOrder = null,}) {
  return _then(RouteStop(
stopId: null == stopId ? _self.stopId : stopId // ignore: cast_nullable_to_non_nullable
as String,stopName: null == stopName ? _self.stopName : stopName // ignore: cast_nullable_to_non_nullable
as String,pickupTime: freezed == pickupTime ? _self.pickupTime : pickupTime // ignore: cast_nullable_to_non_nullable
as DateTime?,dropTime: freezed == dropTime ? _self.dropTime : dropTime // ignore: cast_nullable_to_non_nullable
as DateTime?,stopOrder: null == stopOrder ? _self.stopOrder : stopOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RouteStop].
extension RouteStopPatterns on RouteStop {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RouteStop value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RouteStop() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RouteStop value)  $default,){
final _that = this;
switch (_that) {
case _RouteStop():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RouteStop value)?  $default,){
final _that = this;
switch (_that) {
case _RouteStop() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'stop_id')  String stopId, @JsonKey(name: 'stop_name')  String stopName, @JsonKey(name: 'pickup_time')  DateTime? pickupTime, @JsonKey(name: 'drop_time')  DateTime? dropTime, @JsonKey(name: 'stop_order')  int stopOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RouteStop() when $default != null:
return $default(_that.stopId,_that.stopName,_that.pickupTime,_that.dropTime,_that.stopOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'stop_id')  String stopId, @JsonKey(name: 'stop_name')  String stopName, @JsonKey(name: 'pickup_time')  DateTime? pickupTime, @JsonKey(name: 'drop_time')  DateTime? dropTime, @JsonKey(name: 'stop_order')  int stopOrder)  $default,) {final _that = this;
switch (_that) {
case _RouteStop():
return $default(_that.stopId,_that.stopName,_that.pickupTime,_that.dropTime,_that.stopOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'stop_id')  String stopId, @JsonKey(name: 'stop_name')  String stopName, @JsonKey(name: 'pickup_time')  DateTime? pickupTime, @JsonKey(name: 'drop_time')  DateTime? dropTime, @JsonKey(name: 'stop_order')  int stopOrder)?  $default,) {final _that = this;
switch (_that) {
case _RouteStop() when $default != null:
return $default(_that.stopId,_that.stopName,_that.pickupTime,_that.dropTime,_that.stopOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RouteStop implements RouteStop {
  const _RouteStop({@JsonKey(name: 'stop_id') required this.stopId, @JsonKey(name: 'stop_name') required this.stopName, @JsonKey(name: 'pickup_time') this.pickupTime, @JsonKey(name: 'drop_time') this.dropTime, @JsonKey(name: 'stop_order') required this.stopOrder});
  factory _RouteStop.fromJson(Map<String, dynamic> json) => _$RouteStopFromJson(json);

@override@JsonKey(name: 'stop_id') final  String stopId;
@override@JsonKey(name: 'stop_name') final  String stopName;
@override@JsonKey(name: 'pickup_time') final  DateTime? pickupTime;
@override@JsonKey(name: 'drop_time') final  DateTime? dropTime;
@override@JsonKey(name: 'stop_order') final  int stopOrder;

/// Create a copy of RouteStop
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RouteStopCopyWith<_RouteStop> get copyWith => __$RouteStopCopyWithImpl<_RouteStop>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RouteStopToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RouteStop&&(identical(other.stopId, stopId) || other.stopId == stopId)&&(identical(other.stopName, stopName) || other.stopName == stopName)&&(identical(other.pickupTime, pickupTime) || other.pickupTime == pickupTime)&&(identical(other.dropTime, dropTime) || other.dropTime == dropTime)&&(identical(other.stopOrder, stopOrder) || other.stopOrder == stopOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,stopId,stopName,pickupTime,dropTime,stopOrder);
}

@override
String toString() {
    return 'RouteStop(stopId: $stopId, stopName: $stopName, pickupTime: $pickupTime, dropTime: $dropTime, stopOrder: $stopOrder)';
}


}

/// @nodoc
abstract mixin class _$RouteStopCopyWith<$Res> implements $RouteStopCopyWith<$Res> {
  factory _$RouteStopCopyWith(_RouteStop value, $Res Function(_RouteStop) _then) = __$RouteStopCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'stop_id') String stopId,@JsonKey(name: 'stop_name') String stopName,@JsonKey(name: 'pickup_time') DateTime? pickupTime,@JsonKey(name: 'drop_time') DateTime? dropTime,@JsonKey(name: 'stop_order') int stopOrder
});




}
/// @nodoc
class __$RouteStopCopyWithImpl<$Res>
    implements _$RouteStopCopyWith<$Res> {
  __$RouteStopCopyWithImpl(this._self, this._then);

  final _RouteStop _self;
  final $Res Function(_RouteStop) _then;

/// Create a copy of RouteStop
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stopId = null,Object? stopName = null,Object? pickupTime = freezed,Object? dropTime = freezed,Object? stopOrder = null,}) {
  return _then(_RouteStop(
stopId: null == stopId ? _self.stopId : stopId // ignore: cast_nullable_to_non_nullable
as String,stopName: null == stopName ? _self.stopName : stopName // ignore: cast_nullable_to_non_nullable
as String,pickupTime: freezed == pickupTime ? _self.pickupTime : pickupTime // ignore: cast_nullable_to_non_nullable
as DateTime?,dropTime: freezed == dropTime ? _self.dropTime : dropTime // ignore: cast_nullable_to_non_nullable
as DateTime?,stopOrder: null == stopOrder ? _self.stopOrder : stopOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$DriverRoute {

@JsonKey(name: 'route_id') String get routeId;@JsonKey(name: 'route_name') String get routeName;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'route_stops') List<RouteStop> get stops;
/// Create a copy of DriverRoute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriverRouteCopyWith<DriverRoute> get copyWith => _$DriverRouteCopyWithImpl<DriverRoute>(this as DriverRoute, _$identity);

  /// Serializes this DriverRoute to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DriverRoute;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriverRoute&&(identical(other.routeId, _this.routeId) || other.routeId == _this.routeId)&&(identical(other.routeName, _this.routeName) || other.routeName == _this.routeName)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&const DeepCollectionEquality().equals(other.stops, _this.stops));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DriverRoute;
  return Object.hash(runtimeType,_this.routeId,_this.routeName,_this.isActive,const DeepCollectionEquality().hash(_this.stops));
}

@override
String toString() {
  final _this = this as DriverRoute;
  return 'DriverRoute(routeId: ${_this.routeId}, routeName: ${_this.routeName}, isActive: ${_this.isActive}, stops: ${_this.stops})';
}


}

/// @nodoc
abstract mixin class $DriverRouteCopyWith<$Res>  {
  factory $DriverRouteCopyWith(DriverRoute value, $Res Function(DriverRoute) _then) = _$DriverRouteCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'route_id') String routeId,@JsonKey(name: 'route_name') String routeName,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'route_stops') List<RouteStop> stops
});




}
/// @nodoc
class _$DriverRouteCopyWithImpl<$Res>
    implements $DriverRouteCopyWith<$Res> {
  _$DriverRouteCopyWithImpl(this._self, this._then);

  final DriverRoute _self;
  final $Res Function(DriverRoute) _then;

/// Create a copy of DriverRoute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routeId = null,Object? routeName = null,Object? isActive = null,Object? stops = null,}) {
  return _then(DriverRoute(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,routeName: null == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,stops: null == stops ? _self.stops : stops // ignore: cast_nullable_to_non_nullable
as List<RouteStop>,
  ));
}

}


/// Adds pattern-matching-related methods to [DriverRoute].
extension DriverRoutePatterns on DriverRoute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DriverRoute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DriverRoute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DriverRoute value)  $default,){
final _that = this;
switch (_that) {
case _DriverRoute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DriverRoute value)?  $default,){
final _that = this;
switch (_that) {
case _DriverRoute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'route_id')  String routeId, @JsonKey(name: 'route_name')  String routeName, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'route_stops')  List<RouteStop> stops)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DriverRoute() when $default != null:
return $default(_that.routeId,_that.routeName,_that.isActive,_that.stops);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'route_id')  String routeId, @JsonKey(name: 'route_name')  String routeName, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'route_stops')  List<RouteStop> stops)  $default,) {final _that = this;
switch (_that) {
case _DriverRoute():
return $default(_that.routeId,_that.routeName,_that.isActive,_that.stops);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'route_id')  String routeId, @JsonKey(name: 'route_name')  String routeName, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'route_stops')  List<RouteStop> stops)?  $default,) {final _that = this;
switch (_that) {
case _DriverRoute() when $default != null:
return $default(_that.routeId,_that.routeName,_that.isActive,_that.stops);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DriverRoute implements DriverRoute {
  const _DriverRoute({@JsonKey(name: 'route_id') required this.routeId, @JsonKey(name: 'route_name') required this.routeName, @JsonKey(name: 'is_active') required this.isActive, @JsonKey(name: 'route_stops') required  List<RouteStop> stops}): _stops = stops;
  factory _DriverRoute.fromJson(Map<String, dynamic> json) => _$DriverRouteFromJson(json);

@override@JsonKey(name: 'route_id') final  String routeId;
@override@JsonKey(name: 'route_name') final  String routeName;
@override@JsonKey(name: 'is_active') final  bool isActive;
 final  List<RouteStop> _stops;
@override@JsonKey(name: 'route_stops') List<RouteStop> get stops {
  if (_stops is EqualUnmodifiableListView) return _stops;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stops);
}


/// Create a copy of DriverRoute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverRouteCopyWith<_DriverRoute> get copyWith => __$DriverRouteCopyWithImpl<_DriverRoute>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DriverRouteToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverRoute&&(identical(other.routeId, routeId) || other.routeId == routeId)&&(identical(other.routeName, routeName) || other.routeName == routeName)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.stops, _stops));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,routeId,routeName,isActive,const DeepCollectionEquality().hash(_stops));
}

@override
String toString() {
    return 'DriverRoute(routeId: $routeId, routeName: $routeName, isActive: $isActive, stops: $stops)';
}


}

/// @nodoc
abstract mixin class _$DriverRouteCopyWith<$Res> implements $DriverRouteCopyWith<$Res> {
  factory _$DriverRouteCopyWith(_DriverRoute value, $Res Function(_DriverRoute) _then) = __$DriverRouteCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'route_id') String routeId,@JsonKey(name: 'route_name') String routeName,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'route_stops') List<RouteStop> stops
});




}
/// @nodoc
class __$DriverRouteCopyWithImpl<$Res>
    implements _$DriverRouteCopyWith<$Res> {
  __$DriverRouteCopyWithImpl(this._self, this._then);

  final _DriverRoute _self;
  final $Res Function(_DriverRoute) _then;

/// Create a copy of DriverRoute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routeId = null,Object? routeName = null,Object? isActive = null,Object? stops = null,}) {
  return _then(_DriverRoute(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,routeName: null == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,stops: null == stops ? _self._stops : stops // ignore: cast_nullable_to_non_nullable
as List<RouteStop>,
  ));
}


}


/// @nodoc
mixin _$DriverBus {

@JsonKey(name: 'bus_id') String get busId;@JsonKey(name: 'bus_number') String get busNumber; int get capacity; List<DriverRoute> get routes;
/// Create a copy of DriverBus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriverBusCopyWith<DriverBus> get copyWith => _$DriverBusCopyWithImpl<DriverBus>(this as DriverBus, _$identity);

  /// Serializes this DriverBus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DriverBus;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriverBus&&(identical(other.busId, _this.busId) || other.busId == _this.busId)&&(identical(other.busNumber, _this.busNumber) || other.busNumber == _this.busNumber)&&(identical(other.capacity, _this.capacity) || other.capacity == _this.capacity)&&const DeepCollectionEquality().equals(other.routes, _this.routes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DriverBus;
  return Object.hash(runtimeType,_this.busId,_this.busNumber,_this.capacity,const DeepCollectionEquality().hash(_this.routes));
}

@override
String toString() {
  final _this = this as DriverBus;
  return 'DriverBus(busId: ${_this.busId}, busNumber: ${_this.busNumber}, capacity: ${_this.capacity}, routes: ${_this.routes})';
}


}

/// @nodoc
abstract mixin class $DriverBusCopyWith<$Res>  {
  factory $DriverBusCopyWith(DriverBus value, $Res Function(DriverBus) _then) = _$DriverBusCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'bus_id') String busId,@JsonKey(name: 'bus_number') String busNumber, int capacity, List<DriverRoute> routes
});




}
/// @nodoc
class _$DriverBusCopyWithImpl<$Res>
    implements $DriverBusCopyWith<$Res> {
  _$DriverBusCopyWithImpl(this._self, this._then);

  final DriverBus _self;
  final $Res Function(DriverBus) _then;

/// Create a copy of DriverBus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? busId = null,Object? busNumber = null,Object? capacity = null,Object? routes = null,}) {
  return _then(DriverBus(
busId: null == busId ? _self.busId : busId // ignore: cast_nullable_to_non_nullable
as String,busNumber: null == busNumber ? _self.busNumber : busNumber // ignore: cast_nullable_to_non_nullable
as String,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,routes: null == routes ? _self.routes : routes // ignore: cast_nullable_to_non_nullable
as List<DriverRoute>,
  ));
}

}


/// Adds pattern-matching-related methods to [DriverBus].
extension DriverBusPatterns on DriverBus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DriverBus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DriverBus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DriverBus value)  $default,){
final _that = this;
switch (_that) {
case _DriverBus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DriverBus value)?  $default,){
final _that = this;
switch (_that) {
case _DriverBus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'bus_id')  String busId, @JsonKey(name: 'bus_number')  String busNumber,  int capacity,  List<DriverRoute> routes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DriverBus() when $default != null:
return $default(_that.busId,_that.busNumber,_that.capacity,_that.routes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'bus_id')  String busId, @JsonKey(name: 'bus_number')  String busNumber,  int capacity,  List<DriverRoute> routes)  $default,) {final _that = this;
switch (_that) {
case _DriverBus():
return $default(_that.busId,_that.busNumber,_that.capacity,_that.routes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'bus_id')  String busId, @JsonKey(name: 'bus_number')  String busNumber,  int capacity,  List<DriverRoute> routes)?  $default,) {final _that = this;
switch (_that) {
case _DriverBus() when $default != null:
return $default(_that.busId,_that.busNumber,_that.capacity,_that.routes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DriverBus implements DriverBus {
  const _DriverBus({@JsonKey(name: 'bus_id') required this.busId, @JsonKey(name: 'bus_number') required this.busNumber, required this.capacity, required  List<DriverRoute> routes}): _routes = routes;
  factory _DriverBus.fromJson(Map<String, dynamic> json) => _$DriverBusFromJson(json);

@override@JsonKey(name: 'bus_id') final  String busId;
@override@JsonKey(name: 'bus_number') final  String busNumber;
@override final  int capacity;
 final  List<DriverRoute> _routes;
@override List<DriverRoute> get routes {
  if (_routes is EqualUnmodifiableListView) return _routes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_routes);
}


/// Create a copy of DriverBus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverBusCopyWith<_DriverBus> get copyWith => __$DriverBusCopyWithImpl<_DriverBus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DriverBusToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverBus&&(identical(other.busId, busId) || other.busId == busId)&&(identical(other.busNumber, busNumber) || other.busNumber == busNumber)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&const DeepCollectionEquality().equals(other.routes, _routes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,busId,busNumber,capacity,const DeepCollectionEquality().hash(_routes));
}

@override
String toString() {
    return 'DriverBus(busId: $busId, busNumber: $busNumber, capacity: $capacity, routes: $routes)';
}


}

/// @nodoc
abstract mixin class _$DriverBusCopyWith<$Res> implements $DriverBusCopyWith<$Res> {
  factory _$DriverBusCopyWith(_DriverBus value, $Res Function(_DriverBus) _then) = __$DriverBusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'bus_id') String busId,@JsonKey(name: 'bus_number') String busNumber, int capacity, List<DriverRoute> routes
});




}
/// @nodoc
class __$DriverBusCopyWithImpl<$Res>
    implements _$DriverBusCopyWith<$Res> {
  __$DriverBusCopyWithImpl(this._self, this._then);

  final _DriverBus _self;
  final $Res Function(_DriverBus) _then;

/// Create a copy of DriverBus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? busId = null,Object? busNumber = null,Object? capacity = null,Object? routes = null,}) {
  return _then(_DriverBus(
busId: null == busId ? _self.busId : busId // ignore: cast_nullable_to_non_nullable
as String,busNumber: null == busNumber ? _self.busNumber : busNumber // ignore: cast_nullable_to_non_nullable
as String,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,routes: null == routes ? _self._routes : routes // ignore: cast_nullable_to_non_nullable
as List<DriverRoute>,
  ));
}


}


/// @nodoc
mixin _$DriverProfile {

@JsonKey(name: 'driver_id') String get driverId; String get name; String get phone;@JsonKey(name: 'license_number') String get licenseNumber;@JsonKey(name: 'license_expiry_date') DateTime get licenseExpiryDate;@JsonKey(name: 'employment_status') String get employmentStatus;@JsonKey(name: 'buses') DriverBus? get bus;
/// Create a copy of DriverProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriverProfileCopyWith<DriverProfile> get copyWith => _$DriverProfileCopyWithImpl<DriverProfile>(this as DriverProfile, _$identity);

  /// Serializes this DriverProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DriverProfile;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriverProfile&&(identical(other.driverId, _this.driverId) || other.driverId == _this.driverId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.licenseNumber, _this.licenseNumber) || other.licenseNumber == _this.licenseNumber)&&(identical(other.licenseExpiryDate, _this.licenseExpiryDate) || other.licenseExpiryDate == _this.licenseExpiryDate)&&(identical(other.employmentStatus, _this.employmentStatus) || other.employmentStatus == _this.employmentStatus)&&(identical(other.bus, _this.bus) || other.bus == _this.bus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DriverProfile;
  return Object.hash(runtimeType,_this.driverId,_this.name,_this.phone,_this.licenseNumber,_this.licenseExpiryDate,_this.employmentStatus,_this.bus);
}

@override
String toString() {
  final _this = this as DriverProfile;
  return 'DriverProfile(driverId: ${_this.driverId}, name: ${_this.name}, phone: ${_this.phone}, licenseNumber: ${_this.licenseNumber}, licenseExpiryDate: ${_this.licenseExpiryDate}, employmentStatus: ${_this.employmentStatus}, bus: ${_this.bus})';
}


}

/// @nodoc
abstract mixin class $DriverProfileCopyWith<$Res>  {
  factory $DriverProfileCopyWith(DriverProfile value, $Res Function(DriverProfile) _then) = _$DriverProfileCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'driver_id') String driverId, String name, String phone,@JsonKey(name: 'license_number') String licenseNumber,@JsonKey(name: 'license_expiry_date') DateTime licenseExpiryDate,@JsonKey(name: 'employment_status') String employmentStatus,@JsonKey(name: 'buses') DriverBus? bus
});


$DriverBusCopyWith<$Res>? get bus;

}
/// @nodoc
class _$DriverProfileCopyWithImpl<$Res>
    implements $DriverProfileCopyWith<$Res> {
  _$DriverProfileCopyWithImpl(this._self, this._then);

  final DriverProfile _self;
  final $Res Function(DriverProfile) _then;

/// Create a copy of DriverProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? driverId = null,Object? name = null,Object? phone = null,Object? licenseNumber = null,Object? licenseExpiryDate = null,Object? employmentStatus = null,Object? bus = freezed,}) {
  return _then(DriverProfile(
driverId: null == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,licenseNumber: null == licenseNumber ? _self.licenseNumber : licenseNumber // ignore: cast_nullable_to_non_nullable
as String,licenseExpiryDate: null == licenseExpiryDate ? _self.licenseExpiryDate : licenseExpiryDate // ignore: cast_nullable_to_non_nullable
as DateTime,employmentStatus: null == employmentStatus ? _self.employmentStatus : employmentStatus // ignore: cast_nullable_to_non_nullable
as String,bus: freezed == bus ? _self.bus : bus // ignore: cast_nullable_to_non_nullable
as DriverBus?,
  ));
}
/// Create a copy of DriverProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DriverBusCopyWith<$Res>? get bus {
    if (_self.bus == null) {
    return null;
  }

  return $DriverBusCopyWith<$Res>(_self.bus!, (value) {
    return _then(_self.copyWith(bus: value));
  });
}
}


/// Adds pattern-matching-related methods to [DriverProfile].
extension DriverProfilePatterns on DriverProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DriverProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DriverProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DriverProfile value)  $default,){
final _that = this;
switch (_that) {
case _DriverProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DriverProfile value)?  $default,){
final _that = this;
switch (_that) {
case _DriverProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'driver_id')  String driverId,  String name,  String phone, @JsonKey(name: 'license_number')  String licenseNumber, @JsonKey(name: 'license_expiry_date')  DateTime licenseExpiryDate, @JsonKey(name: 'employment_status')  String employmentStatus, @JsonKey(name: 'buses')  DriverBus? bus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DriverProfile() when $default != null:
return $default(_that.driverId,_that.name,_that.phone,_that.licenseNumber,_that.licenseExpiryDate,_that.employmentStatus,_that.bus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'driver_id')  String driverId,  String name,  String phone, @JsonKey(name: 'license_number')  String licenseNumber, @JsonKey(name: 'license_expiry_date')  DateTime licenseExpiryDate, @JsonKey(name: 'employment_status')  String employmentStatus, @JsonKey(name: 'buses')  DriverBus? bus)  $default,) {final _that = this;
switch (_that) {
case _DriverProfile():
return $default(_that.driverId,_that.name,_that.phone,_that.licenseNumber,_that.licenseExpiryDate,_that.employmentStatus,_that.bus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'driver_id')  String driverId,  String name,  String phone, @JsonKey(name: 'license_number')  String licenseNumber, @JsonKey(name: 'license_expiry_date')  DateTime licenseExpiryDate, @JsonKey(name: 'employment_status')  String employmentStatus, @JsonKey(name: 'buses')  DriverBus? bus)?  $default,) {final _that = this;
switch (_that) {
case _DriverProfile() when $default != null:
return $default(_that.driverId,_that.name,_that.phone,_that.licenseNumber,_that.licenseExpiryDate,_that.employmentStatus,_that.bus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DriverProfile implements DriverProfile {
  const _DriverProfile({@JsonKey(name: 'driver_id') required this.driverId, required this.name, required this.phone, @JsonKey(name: 'license_number') required this.licenseNumber, @JsonKey(name: 'license_expiry_date') required this.licenseExpiryDate, @JsonKey(name: 'employment_status') required this.employmentStatus, @JsonKey(name: 'buses') this.bus});
  factory _DriverProfile.fromJson(Map<String, dynamic> json) => _$DriverProfileFromJson(json);

@override@JsonKey(name: 'driver_id') final  String driverId;
@override final  String name;
@override final  String phone;
@override@JsonKey(name: 'license_number') final  String licenseNumber;
@override@JsonKey(name: 'license_expiry_date') final  DateTime licenseExpiryDate;
@override@JsonKey(name: 'employment_status') final  String employmentStatus;
@override@JsonKey(name: 'buses') final  DriverBus? bus;

/// Create a copy of DriverProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverProfileCopyWith<_DriverProfile> get copyWith => __$DriverProfileCopyWithImpl<_DriverProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DriverProfileToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverProfile&&(identical(other.driverId, driverId) || other.driverId == driverId)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.licenseNumber, licenseNumber) || other.licenseNumber == licenseNumber)&&(identical(other.licenseExpiryDate, licenseExpiryDate) || other.licenseExpiryDate == licenseExpiryDate)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.bus, bus) || other.bus == bus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,driverId,name,phone,licenseNumber,licenseExpiryDate,employmentStatus,bus);
}

@override
String toString() {
    return 'DriverProfile(driverId: $driverId, name: $name, phone: $phone, licenseNumber: $licenseNumber, licenseExpiryDate: $licenseExpiryDate, employmentStatus: $employmentStatus, bus: $bus)';
}


}

/// @nodoc
abstract mixin class _$DriverProfileCopyWith<$Res> implements $DriverProfileCopyWith<$Res> {
  factory _$DriverProfileCopyWith(_DriverProfile value, $Res Function(_DriverProfile) _then) = __$DriverProfileCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'driver_id') String driverId, String name, String phone,@JsonKey(name: 'license_number') String licenseNumber,@JsonKey(name: 'license_expiry_date') DateTime licenseExpiryDate,@JsonKey(name: 'employment_status') String employmentStatus,@JsonKey(name: 'buses') DriverBus? bus
});


@override $DriverBusCopyWith<$Res>? get bus;

}
/// @nodoc
class __$DriverProfileCopyWithImpl<$Res>
    implements _$DriverProfileCopyWith<$Res> {
  __$DriverProfileCopyWithImpl(this._self, this._then);

  final _DriverProfile _self;
  final $Res Function(_DriverProfile) _then;

/// Create a copy of DriverProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? driverId = null,Object? name = null,Object? phone = null,Object? licenseNumber = null,Object? licenseExpiryDate = null,Object? employmentStatus = null,Object? bus = freezed,}) {
  return _then(_DriverProfile(
driverId: null == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,licenseNumber: null == licenseNumber ? _self.licenseNumber : licenseNumber // ignore: cast_nullable_to_non_nullable
as String,licenseExpiryDate: null == licenseExpiryDate ? _self.licenseExpiryDate : licenseExpiryDate // ignore: cast_nullable_to_non_nullable
as DateTime,employmentStatus: null == employmentStatus ? _self.employmentStatus : employmentStatus // ignore: cast_nullable_to_non_nullable
as String,bus: freezed == bus ? _self.bus : bus // ignore: cast_nullable_to_non_nullable
as DriverBus?,
  ));
}

/// Create a copy of DriverProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DriverBusCopyWith<$Res>? get bus {
    if (_self.bus == null) {
    return null;
  }

  return $DriverBusCopyWith<$Res>(_self.bus!, (value) {
    return _then(_self.copyWith(bus: value));
  });
}
}


/// @nodoc
mixin _$TripRouteRef {

@JsonKey(name: 'route_id') String get routeId;@JsonKey(name: 'route_name') String get routeName;
/// Create a copy of TripRouteRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripRouteRefCopyWith<TripRouteRef> get copyWith => _$TripRouteRefCopyWithImpl<TripRouteRef>(this as TripRouteRef, _$identity);

  /// Serializes this TripRouteRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TripRouteRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripRouteRef&&(identical(other.routeId, _this.routeId) || other.routeId == _this.routeId)&&(identical(other.routeName, _this.routeName) || other.routeName == _this.routeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TripRouteRef;
  return Object.hash(runtimeType,_this.routeId,_this.routeName);
}

@override
String toString() {
  final _this = this as TripRouteRef;
  return 'TripRouteRef(routeId: ${_this.routeId}, routeName: ${_this.routeName})';
}


}

/// @nodoc
abstract mixin class $TripRouteRefCopyWith<$Res>  {
  factory $TripRouteRefCopyWith(TripRouteRef value, $Res Function(TripRouteRef) _then) = _$TripRouteRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'route_id') String routeId,@JsonKey(name: 'route_name') String routeName
});




}
/// @nodoc
class _$TripRouteRefCopyWithImpl<$Res>
    implements $TripRouteRefCopyWith<$Res> {
  _$TripRouteRefCopyWithImpl(this._self, this._then);

  final TripRouteRef _self;
  final $Res Function(TripRouteRef) _then;

/// Create a copy of TripRouteRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routeId = null,Object? routeName = null,}) {
  return _then(TripRouteRef(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,routeName: null == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TripRouteRef].
extension TripRouteRefPatterns on TripRouteRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TripRouteRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TripRouteRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TripRouteRef value)  $default,){
final _that = this;
switch (_that) {
case _TripRouteRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TripRouteRef value)?  $default,){
final _that = this;
switch (_that) {
case _TripRouteRef() when $default != null:
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
case _TripRouteRef() when $default != null:
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
case _TripRouteRef():
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
case _TripRouteRef() when $default != null:
return $default(_that.routeId,_that.routeName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TripRouteRef implements TripRouteRef {
  const _TripRouteRef({@JsonKey(name: 'route_id') required this.routeId, @JsonKey(name: 'route_name') required this.routeName});
  factory _TripRouteRef.fromJson(Map<String, dynamic> json) => _$TripRouteRefFromJson(json);

@override@JsonKey(name: 'route_id') final  String routeId;
@override@JsonKey(name: 'route_name') final  String routeName;

/// Create a copy of TripRouteRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripRouteRefCopyWith<_TripRouteRef> get copyWith => __$TripRouteRefCopyWithImpl<_TripRouteRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TripRouteRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripRouteRef&&(identical(other.routeId, routeId) || other.routeId == routeId)&&(identical(other.routeName, routeName) || other.routeName == routeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,routeId,routeName);
}

@override
String toString() {
    return 'TripRouteRef(routeId: $routeId, routeName: $routeName)';
}


}

/// @nodoc
abstract mixin class _$TripRouteRefCopyWith<$Res> implements $TripRouteRefCopyWith<$Res> {
  factory _$TripRouteRefCopyWith(_TripRouteRef value, $Res Function(_TripRouteRef) _then) = __$TripRouteRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'route_id') String routeId,@JsonKey(name: 'route_name') String routeName
});




}
/// @nodoc
class __$TripRouteRefCopyWithImpl<$Res>
    implements _$TripRouteRefCopyWith<$Res> {
  __$TripRouteRefCopyWithImpl(this._self, this._then);

  final _TripRouteRef _self;
  final $Res Function(_TripRouteRef) _then;

/// Create a copy of TripRouteRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routeId = null,Object? routeName = null,}) {
  return _then(_TripRouteRef(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,routeName: null == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DriverTrip {

@JsonKey(name: 'trip_id') String get tripId;@JsonKey(name: 'trip_type', unknownEnumValue: TripType.unknown) TripType get tripType;@JsonKey(name: 'trip_date') DateTime get tripDate;@JsonKey(name: 'start_time') DateTime? get startTime;@JsonKey(name: 'end_time') DateTime? get endTime;@JsonKey(name: 'status', unknownEnumValue: TripStatus.unknown) TripStatus get status;@JsonKey(name: 'student_count') int? get studentCount;@JsonKey(name: 'start_location') String? get startLocation;@JsonKey(name: 'end_location') String? get endLocation;@JsonKey(name: 'routes') TripRouteRef? get route;
/// Create a copy of DriverTrip
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriverTripCopyWith<DriverTrip> get copyWith => _$DriverTripCopyWithImpl<DriverTrip>(this as DriverTrip, _$identity);

  /// Serializes this DriverTrip to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DriverTrip;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriverTrip&&(identical(other.tripId, _this.tripId) || other.tripId == _this.tripId)&&(identical(other.tripType, _this.tripType) || other.tripType == _this.tripType)&&(identical(other.tripDate, _this.tripDate) || other.tripDate == _this.tripDate)&&(identical(other.startTime, _this.startTime) || other.startTime == _this.startTime)&&(identical(other.endTime, _this.endTime) || other.endTime == _this.endTime)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.studentCount, _this.studentCount) || other.studentCount == _this.studentCount)&&(identical(other.startLocation, _this.startLocation) || other.startLocation == _this.startLocation)&&(identical(other.endLocation, _this.endLocation) || other.endLocation == _this.endLocation)&&(identical(other.route, _this.route) || other.route == _this.route));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DriverTrip;
  return Object.hash(runtimeType,_this.tripId,_this.tripType,_this.tripDate,_this.startTime,_this.endTime,_this.status,_this.studentCount,_this.startLocation,_this.endLocation,_this.route);
}

@override
String toString() {
  final _this = this as DriverTrip;
  return 'DriverTrip(tripId: ${_this.tripId}, tripType: ${_this.tripType}, tripDate: ${_this.tripDate}, startTime: ${_this.startTime}, endTime: ${_this.endTime}, status: ${_this.status}, studentCount: ${_this.studentCount}, startLocation: ${_this.startLocation}, endLocation: ${_this.endLocation}, route: ${_this.route})';
}


}

/// @nodoc
abstract mixin class $DriverTripCopyWith<$Res>  {
  factory $DriverTripCopyWith(DriverTrip value, $Res Function(DriverTrip) _then) = _$DriverTripCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'trip_id') String tripId,@JsonKey(name: 'trip_type', unknownEnumValue: TripType.unknown) TripType tripType,@JsonKey(name: 'trip_date') DateTime tripDate,@JsonKey(name: 'start_time') DateTime? startTime,@JsonKey(name: 'end_time') DateTime? endTime,@JsonKey(name: 'status', unknownEnumValue: TripStatus.unknown) TripStatus status,@JsonKey(name: 'student_count') int? studentCount,@JsonKey(name: 'start_location') String? startLocation,@JsonKey(name: 'end_location') String? endLocation,@JsonKey(name: 'routes') TripRouteRef? route
});


$TripRouteRefCopyWith<$Res>? get route;

}
/// @nodoc
class _$DriverTripCopyWithImpl<$Res>
    implements $DriverTripCopyWith<$Res> {
  _$DriverTripCopyWithImpl(this._self, this._then);

  final DriverTrip _self;
  final $Res Function(DriverTrip) _then;

/// Create a copy of DriverTrip
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tripId = null,Object? tripType = null,Object? tripDate = null,Object? startTime = freezed,Object? endTime = freezed,Object? status = null,Object? studentCount = freezed,Object? startLocation = freezed,Object? endLocation = freezed,Object? route = freezed,}) {
  return _then(DriverTrip(
tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as String,tripType: null == tripType ? _self.tripType : tripType // ignore: cast_nullable_to_non_nullable
as TripType,tripDate: null == tripDate ? _self.tripDate : tripDate // ignore: cast_nullable_to_non_nullable
as DateTime,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TripStatus,studentCount: freezed == studentCount ? _self.studentCount : studentCount // ignore: cast_nullable_to_non_nullable
as int?,startLocation: freezed == startLocation ? _self.startLocation : startLocation // ignore: cast_nullable_to_non_nullable
as String?,endLocation: freezed == endLocation ? _self.endLocation : endLocation // ignore: cast_nullable_to_non_nullable
as String?,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as TripRouteRef?,
  ));
}
/// Create a copy of DriverTrip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TripRouteRefCopyWith<$Res>? get route {
    if (_self.route == null) {
    return null;
  }

  return $TripRouteRefCopyWith<$Res>(_self.route!, (value) {
    return _then(_self.copyWith(route: value));
  });
}
}


/// Adds pattern-matching-related methods to [DriverTrip].
extension DriverTripPatterns on DriverTrip {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DriverTrip value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DriverTrip() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DriverTrip value)  $default,){
final _that = this;
switch (_that) {
case _DriverTrip():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DriverTrip value)?  $default,){
final _that = this;
switch (_that) {
case _DriverTrip() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'trip_id')  String tripId, @JsonKey(name: 'trip_type', unknownEnumValue: TripType.unknown)  TripType tripType, @JsonKey(name: 'trip_date')  DateTime tripDate, @JsonKey(name: 'start_time')  DateTime? startTime, @JsonKey(name: 'end_time')  DateTime? endTime, @JsonKey(name: 'status', unknownEnumValue: TripStatus.unknown)  TripStatus status, @JsonKey(name: 'student_count')  int? studentCount, @JsonKey(name: 'start_location')  String? startLocation, @JsonKey(name: 'end_location')  String? endLocation, @JsonKey(name: 'routes')  TripRouteRef? route)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DriverTrip() when $default != null:
return $default(_that.tripId,_that.tripType,_that.tripDate,_that.startTime,_that.endTime,_that.status,_that.studentCount,_that.startLocation,_that.endLocation,_that.route);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'trip_id')  String tripId, @JsonKey(name: 'trip_type', unknownEnumValue: TripType.unknown)  TripType tripType, @JsonKey(name: 'trip_date')  DateTime tripDate, @JsonKey(name: 'start_time')  DateTime? startTime, @JsonKey(name: 'end_time')  DateTime? endTime, @JsonKey(name: 'status', unknownEnumValue: TripStatus.unknown)  TripStatus status, @JsonKey(name: 'student_count')  int? studentCount, @JsonKey(name: 'start_location')  String? startLocation, @JsonKey(name: 'end_location')  String? endLocation, @JsonKey(name: 'routes')  TripRouteRef? route)  $default,) {final _that = this;
switch (_that) {
case _DriverTrip():
return $default(_that.tripId,_that.tripType,_that.tripDate,_that.startTime,_that.endTime,_that.status,_that.studentCount,_that.startLocation,_that.endLocation,_that.route);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'trip_id')  String tripId, @JsonKey(name: 'trip_type', unknownEnumValue: TripType.unknown)  TripType tripType, @JsonKey(name: 'trip_date')  DateTime tripDate, @JsonKey(name: 'start_time')  DateTime? startTime, @JsonKey(name: 'end_time')  DateTime? endTime, @JsonKey(name: 'status', unknownEnumValue: TripStatus.unknown)  TripStatus status, @JsonKey(name: 'student_count')  int? studentCount, @JsonKey(name: 'start_location')  String? startLocation, @JsonKey(name: 'end_location')  String? endLocation, @JsonKey(name: 'routes')  TripRouteRef? route)?  $default,) {final _that = this;
switch (_that) {
case _DriverTrip() when $default != null:
return $default(_that.tripId,_that.tripType,_that.tripDate,_that.startTime,_that.endTime,_that.status,_that.studentCount,_that.startLocation,_that.endLocation,_that.route);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DriverTrip implements DriverTrip {
  const _DriverTrip({@JsonKey(name: 'trip_id') required this.tripId, @JsonKey(name: 'trip_type', unknownEnumValue: TripType.unknown) required this.tripType, @JsonKey(name: 'trip_date') required this.tripDate, @JsonKey(name: 'start_time') this.startTime, @JsonKey(name: 'end_time') this.endTime, @JsonKey(name: 'status', unknownEnumValue: TripStatus.unknown) required this.status, @JsonKey(name: 'student_count') this.studentCount, @JsonKey(name: 'start_location') this.startLocation, @JsonKey(name: 'end_location') this.endLocation, @JsonKey(name: 'routes') this.route});
  factory _DriverTrip.fromJson(Map<String, dynamic> json) => _$DriverTripFromJson(json);

@override@JsonKey(name: 'trip_id') final  String tripId;
@override@JsonKey(name: 'trip_type', unknownEnumValue: TripType.unknown) final  TripType tripType;
@override@JsonKey(name: 'trip_date') final  DateTime tripDate;
@override@JsonKey(name: 'start_time') final  DateTime? startTime;
@override@JsonKey(name: 'end_time') final  DateTime? endTime;
@override@JsonKey(name: 'status', unknownEnumValue: TripStatus.unknown) final  TripStatus status;
@override@JsonKey(name: 'student_count') final  int? studentCount;
@override@JsonKey(name: 'start_location') final  String? startLocation;
@override@JsonKey(name: 'end_location') final  String? endLocation;
@override@JsonKey(name: 'routes') final  TripRouteRef? route;

/// Create a copy of DriverTrip
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverTripCopyWith<_DriverTrip> get copyWith => __$DriverTripCopyWithImpl<_DriverTrip>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DriverTripToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverTrip&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.tripType, tripType) || other.tripType == tripType)&&(identical(other.tripDate, tripDate) || other.tripDate == tripDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.studentCount, studentCount) || other.studentCount == studentCount)&&(identical(other.startLocation, startLocation) || other.startLocation == startLocation)&&(identical(other.endLocation, endLocation) || other.endLocation == endLocation)&&(identical(other.route, route) || other.route == route));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,tripId,tripType,tripDate,startTime,endTime,status,studentCount,startLocation,endLocation,route);
}

@override
String toString() {
    return 'DriverTrip(tripId: $tripId, tripType: $tripType, tripDate: $tripDate, startTime: $startTime, endTime: $endTime, status: $status, studentCount: $studentCount, startLocation: $startLocation, endLocation: $endLocation, route: $route)';
}


}

/// @nodoc
abstract mixin class _$DriverTripCopyWith<$Res> implements $DriverTripCopyWith<$Res> {
  factory _$DriverTripCopyWith(_DriverTrip value, $Res Function(_DriverTrip) _then) = __$DriverTripCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'trip_id') String tripId,@JsonKey(name: 'trip_type', unknownEnumValue: TripType.unknown) TripType tripType,@JsonKey(name: 'trip_date') DateTime tripDate,@JsonKey(name: 'start_time') DateTime? startTime,@JsonKey(name: 'end_time') DateTime? endTime,@JsonKey(name: 'status', unknownEnumValue: TripStatus.unknown) TripStatus status,@JsonKey(name: 'student_count') int? studentCount,@JsonKey(name: 'start_location') String? startLocation,@JsonKey(name: 'end_location') String? endLocation,@JsonKey(name: 'routes') TripRouteRef? route
});


@override $TripRouteRefCopyWith<$Res>? get route;

}
/// @nodoc
class __$DriverTripCopyWithImpl<$Res>
    implements _$DriverTripCopyWith<$Res> {
  __$DriverTripCopyWithImpl(this._self, this._then);

  final _DriverTrip _self;
  final $Res Function(_DriverTrip) _then;

/// Create a copy of DriverTrip
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tripId = null,Object? tripType = null,Object? tripDate = null,Object? startTime = freezed,Object? endTime = freezed,Object? status = null,Object? studentCount = freezed,Object? startLocation = freezed,Object? endLocation = freezed,Object? route = freezed,}) {
  return _then(_DriverTrip(
tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as String,tripType: null == tripType ? _self.tripType : tripType // ignore: cast_nullable_to_non_nullable
as TripType,tripDate: null == tripDate ? _self.tripDate : tripDate // ignore: cast_nullable_to_non_nullable
as DateTime,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TripStatus,studentCount: freezed == studentCount ? _self.studentCount : studentCount // ignore: cast_nullable_to_non_nullable
as int?,startLocation: freezed == startLocation ? _self.startLocation : startLocation // ignore: cast_nullable_to_non_nullable
as String?,endLocation: freezed == endLocation ? _self.endLocation : endLocation // ignore: cast_nullable_to_non_nullable
as String?,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as TripRouteRef?,
  ));
}

/// Create a copy of DriverTrip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TripRouteRefCopyWith<$Res>? get route {
    if (_self.route == null) {
    return null;
  }

  return $TripRouteRefCopyWith<$Res>(_self.route!, (value) {
    return _then(_self.copyWith(route: value));
  });
}
}


/// @nodoc
mixin _$StopReachedResult {

@JsonKey(name: 'alert_id') String get alertId;@JsonKey(name: 'recipient_count') int get recipientCount;
/// Create a copy of StopReachedResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StopReachedResultCopyWith<StopReachedResult> get copyWith => _$StopReachedResultCopyWithImpl<StopReachedResult>(this as StopReachedResult, _$identity);

  /// Serializes this StopReachedResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StopReachedResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StopReachedResult&&(identical(other.alertId, _this.alertId) || other.alertId == _this.alertId)&&(identical(other.recipientCount, _this.recipientCount) || other.recipientCount == _this.recipientCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StopReachedResult;
  return Object.hash(runtimeType,_this.alertId,_this.recipientCount);
}

@override
String toString() {
  final _this = this as StopReachedResult;
  return 'StopReachedResult(alertId: ${_this.alertId}, recipientCount: ${_this.recipientCount})';
}


}

/// @nodoc
abstract mixin class $StopReachedResultCopyWith<$Res>  {
  factory $StopReachedResultCopyWith(StopReachedResult value, $Res Function(StopReachedResult) _then) = _$StopReachedResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'alert_id') String alertId,@JsonKey(name: 'recipient_count') int recipientCount
});




}
/// @nodoc
class _$StopReachedResultCopyWithImpl<$Res>
    implements $StopReachedResultCopyWith<$Res> {
  _$StopReachedResultCopyWithImpl(this._self, this._then);

  final StopReachedResult _self;
  final $Res Function(StopReachedResult) _then;

/// Create a copy of StopReachedResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? alertId = null,Object? recipientCount = null,}) {
  return _then(StopReachedResult(
alertId: null == alertId ? _self.alertId : alertId // ignore: cast_nullable_to_non_nullable
as String,recipientCount: null == recipientCount ? _self.recipientCount : recipientCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StopReachedResult].
extension StopReachedResultPatterns on StopReachedResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StopReachedResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StopReachedResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StopReachedResult value)  $default,){
final _that = this;
switch (_that) {
case _StopReachedResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StopReachedResult value)?  $default,){
final _that = this;
switch (_that) {
case _StopReachedResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'alert_id')  String alertId, @JsonKey(name: 'recipient_count')  int recipientCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StopReachedResult() when $default != null:
return $default(_that.alertId,_that.recipientCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'alert_id')  String alertId, @JsonKey(name: 'recipient_count')  int recipientCount)  $default,) {final _that = this;
switch (_that) {
case _StopReachedResult():
return $default(_that.alertId,_that.recipientCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'alert_id')  String alertId, @JsonKey(name: 'recipient_count')  int recipientCount)?  $default,) {final _that = this;
switch (_that) {
case _StopReachedResult() when $default != null:
return $default(_that.alertId,_that.recipientCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StopReachedResult implements StopReachedResult {
  const _StopReachedResult({@JsonKey(name: 'alert_id') required this.alertId, @JsonKey(name: 'recipient_count') required this.recipientCount});
  factory _StopReachedResult.fromJson(Map<String, dynamic> json) => _$StopReachedResultFromJson(json);

@override@JsonKey(name: 'alert_id') final  String alertId;
@override@JsonKey(name: 'recipient_count') final  int recipientCount;

/// Create a copy of StopReachedResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StopReachedResultCopyWith<_StopReachedResult> get copyWith => __$StopReachedResultCopyWithImpl<_StopReachedResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StopReachedResultToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StopReachedResult&&(identical(other.alertId, alertId) || other.alertId == alertId)&&(identical(other.recipientCount, recipientCount) || other.recipientCount == recipientCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,alertId,recipientCount);
}

@override
String toString() {
    return 'StopReachedResult(alertId: $alertId, recipientCount: $recipientCount)';
}


}

/// @nodoc
abstract mixin class _$StopReachedResultCopyWith<$Res> implements $StopReachedResultCopyWith<$Res> {
  factory _$StopReachedResultCopyWith(_StopReachedResult value, $Res Function(_StopReachedResult) _then) = __$StopReachedResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'alert_id') String alertId,@JsonKey(name: 'recipient_count') int recipientCount
});




}
/// @nodoc
class __$StopReachedResultCopyWithImpl<$Res>
    implements _$StopReachedResultCopyWith<$Res> {
  __$StopReachedResultCopyWithImpl(this._self, this._then);

  final _StopReachedResult _self;
  final $Res Function(_StopReachedResult) _then;

/// Create a copy of StopReachedResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? alertId = null,Object? recipientCount = null,}) {
  return _then(_StopReachedResult(
alertId: null == alertId ? _self.alertId : alertId // ignore: cast_nullable_to_non_nullable
as String,recipientCount: null == recipientCount ? _self.recipientCount : recipientCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
