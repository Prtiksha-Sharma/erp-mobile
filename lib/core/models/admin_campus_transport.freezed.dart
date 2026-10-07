// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_campus_transport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FleetDriverRef {

@JsonKey(name: 'driver_id') String? get driverId; String? get name; String? get phone;
/// Create a copy of FleetDriverRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FleetDriverRefCopyWith<FleetDriverRef> get copyWith => _$FleetDriverRefCopyWithImpl<FleetDriverRef>(this as FleetDriverRef, _$identity);

  /// Serializes this FleetDriverRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FleetDriverRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FleetDriverRef&&(identical(other.driverId, _this.driverId) || other.driverId == _this.driverId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FleetDriverRef;
  return Object.hash(runtimeType,_this.driverId,_this.name,_this.phone);
}

@override
String toString() {
  final _this = this as FleetDriverRef;
  return 'FleetDriverRef(driverId: ${_this.driverId}, name: ${_this.name}, phone: ${_this.phone})';
}


}

/// @nodoc
abstract mixin class $FleetDriverRefCopyWith<$Res>  {
  factory $FleetDriverRefCopyWith(FleetDriverRef value, $Res Function(FleetDriverRef) _then) = _$FleetDriverRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'driver_id') String? driverId, String? name, String? phone
});




}
/// @nodoc
class _$FleetDriverRefCopyWithImpl<$Res>
    implements $FleetDriverRefCopyWith<$Res> {
  _$FleetDriverRefCopyWithImpl(this._self, this._then);

  final FleetDriverRef _self;
  final $Res Function(FleetDriverRef) _then;

/// Create a copy of FleetDriverRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? driverId = freezed,Object? name = freezed,Object? phone = freezed,}) {
  return _then(FleetDriverRef(
driverId: freezed == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FleetDriverRef].
extension FleetDriverRefPatterns on FleetDriverRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FleetDriverRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FleetDriverRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FleetDriverRef value)  $default,){
final _that = this;
switch (_that) {
case _FleetDriverRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FleetDriverRef value)?  $default,){
final _that = this;
switch (_that) {
case _FleetDriverRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'driver_id')  String? driverId,  String? name,  String? phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FleetDriverRef() when $default != null:
return $default(_that.driverId,_that.name,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'driver_id')  String? driverId,  String? name,  String? phone)  $default,) {final _that = this;
switch (_that) {
case _FleetDriverRef():
return $default(_that.driverId,_that.name,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'driver_id')  String? driverId,  String? name,  String? phone)?  $default,) {final _that = this;
switch (_that) {
case _FleetDriverRef() when $default != null:
return $default(_that.driverId,_that.name,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FleetDriverRef implements FleetDriverRef {
  const _FleetDriverRef({@JsonKey(name: 'driver_id') this.driverId, this.name, this.phone});
  factory _FleetDriverRef.fromJson(Map<String, dynamic> json) => _$FleetDriverRefFromJson(json);

@override@JsonKey(name: 'driver_id') final  String? driverId;
@override final  String? name;
@override final  String? phone;

/// Create a copy of FleetDriverRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FleetDriverRefCopyWith<_FleetDriverRef> get copyWith => __$FleetDriverRefCopyWithImpl<_FleetDriverRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FleetDriverRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FleetDriverRef&&(identical(other.driverId, driverId) || other.driverId == driverId)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,driverId,name,phone);
}

@override
String toString() {
    return 'FleetDriverRef(driverId: $driverId, name: $name, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$FleetDriverRefCopyWith<$Res> implements $FleetDriverRefCopyWith<$Res> {
  factory _$FleetDriverRefCopyWith(_FleetDriverRef value, $Res Function(_FleetDriverRef) _then) = __$FleetDriverRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'driver_id') String? driverId, String? name, String? phone
});




}
/// @nodoc
class __$FleetDriverRefCopyWithImpl<$Res>
    implements _$FleetDriverRefCopyWith<$Res> {
  __$FleetDriverRefCopyWithImpl(this._self, this._then);

  final _FleetDriverRef _self;
  final $Res Function(_FleetDriverRef) _then;

/// Create a copy of FleetDriverRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? driverId = freezed,Object? name = freezed,Object? phone = freezed,}) {
  return _then(_FleetDriverRef(
driverId: freezed == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FleetBusRef {

@JsonKey(name: 'bus_id') String? get busId;@JsonKey(name: 'bus_number') String? get busNumber; int? get capacity;
/// Create a copy of FleetBusRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FleetBusRefCopyWith<FleetBusRef> get copyWith => _$FleetBusRefCopyWithImpl<FleetBusRef>(this as FleetBusRef, _$identity);

  /// Serializes this FleetBusRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FleetBusRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FleetBusRef&&(identical(other.busId, _this.busId) || other.busId == _this.busId)&&(identical(other.busNumber, _this.busNumber) || other.busNumber == _this.busNumber)&&(identical(other.capacity, _this.capacity) || other.capacity == _this.capacity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FleetBusRef;
  return Object.hash(runtimeType,_this.busId,_this.busNumber,_this.capacity);
}

@override
String toString() {
  final _this = this as FleetBusRef;
  return 'FleetBusRef(busId: ${_this.busId}, busNumber: ${_this.busNumber}, capacity: ${_this.capacity})';
}


}

/// @nodoc
abstract mixin class $FleetBusRefCopyWith<$Res>  {
  factory $FleetBusRefCopyWith(FleetBusRef value, $Res Function(FleetBusRef) _then) = _$FleetBusRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'bus_id') String? busId,@JsonKey(name: 'bus_number') String? busNumber, int? capacity
});




}
/// @nodoc
class _$FleetBusRefCopyWithImpl<$Res>
    implements $FleetBusRefCopyWith<$Res> {
  _$FleetBusRefCopyWithImpl(this._self, this._then);

  final FleetBusRef _self;
  final $Res Function(FleetBusRef) _then;

/// Create a copy of FleetBusRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? busId = freezed,Object? busNumber = freezed,Object? capacity = freezed,}) {
  return _then(FleetBusRef(
busId: freezed == busId ? _self.busId : busId // ignore: cast_nullable_to_non_nullable
as String?,busNumber: freezed == busNumber ? _self.busNumber : busNumber // ignore: cast_nullable_to_non_nullable
as String?,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [FleetBusRef].
extension FleetBusRefPatterns on FleetBusRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FleetBusRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FleetBusRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FleetBusRef value)  $default,){
final _that = this;
switch (_that) {
case _FleetBusRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FleetBusRef value)?  $default,){
final _that = this;
switch (_that) {
case _FleetBusRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'bus_id')  String? busId, @JsonKey(name: 'bus_number')  String? busNumber,  int? capacity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FleetBusRef() when $default != null:
return $default(_that.busId,_that.busNumber,_that.capacity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'bus_id')  String? busId, @JsonKey(name: 'bus_number')  String? busNumber,  int? capacity)  $default,) {final _that = this;
switch (_that) {
case _FleetBusRef():
return $default(_that.busId,_that.busNumber,_that.capacity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'bus_id')  String? busId, @JsonKey(name: 'bus_number')  String? busNumber,  int? capacity)?  $default,) {final _that = this;
switch (_that) {
case _FleetBusRef() when $default != null:
return $default(_that.busId,_that.busNumber,_that.capacity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FleetBusRef implements FleetBusRef {
  const _FleetBusRef({@JsonKey(name: 'bus_id') this.busId, @JsonKey(name: 'bus_number') this.busNumber, this.capacity});
  factory _FleetBusRef.fromJson(Map<String, dynamic> json) => _$FleetBusRefFromJson(json);

@override@JsonKey(name: 'bus_id') final  String? busId;
@override@JsonKey(name: 'bus_number') final  String? busNumber;
@override final  int? capacity;

/// Create a copy of FleetBusRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FleetBusRefCopyWith<_FleetBusRef> get copyWith => __$FleetBusRefCopyWithImpl<_FleetBusRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FleetBusRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FleetBusRef&&(identical(other.busId, busId) || other.busId == busId)&&(identical(other.busNumber, busNumber) || other.busNumber == busNumber)&&(identical(other.capacity, capacity) || other.capacity == capacity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,busId,busNumber,capacity);
}

@override
String toString() {
    return 'FleetBusRef(busId: $busId, busNumber: $busNumber, capacity: $capacity)';
}


}

/// @nodoc
abstract mixin class _$FleetBusRefCopyWith<$Res> implements $FleetBusRefCopyWith<$Res> {
  factory _$FleetBusRefCopyWith(_FleetBusRef value, $Res Function(_FleetBusRef) _then) = __$FleetBusRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'bus_id') String? busId,@JsonKey(name: 'bus_number') String? busNumber, int? capacity
});




}
/// @nodoc
class __$FleetBusRefCopyWithImpl<$Res>
    implements _$FleetBusRefCopyWith<$Res> {
  __$FleetBusRefCopyWithImpl(this._self, this._then);

  final _FleetBusRef _self;
  final $Res Function(_FleetBusRef) _then;

/// Create a copy of FleetBusRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? busId = freezed,Object? busNumber = freezed,Object? capacity = freezed,}) {
  return _then(_FleetBusRef(
busId: freezed == busId ? _self.busId : busId // ignore: cast_nullable_to_non_nullable
as String?,busNumber: freezed == busNumber ? _self.busNumber : busNumber // ignore: cast_nullable_to_non_nullable
as String?,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$FleetBus {

@JsonKey(name: 'bus_id') String get busId;@JsonKey(name: 'bus_number') String get busNumber; int? get capacity;@JsonKey(name: 'insurance_expiry_date') DateTime? get insuranceExpiryDate;@JsonKey(name: 'fitness_certificate_expiry_date') DateTime? get fitnessCertificateExpiryDate;@JsonKey(name: 'plate_number') String? get plateNumber;@JsonKey(name: 'is_active') bool get isActive; FleetDriverRef? get drivers;
/// Create a copy of FleetBus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FleetBusCopyWith<FleetBus> get copyWith => _$FleetBusCopyWithImpl<FleetBus>(this as FleetBus, _$identity);

  /// Serializes this FleetBus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FleetBus;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FleetBus&&(identical(other.busId, _this.busId) || other.busId == _this.busId)&&(identical(other.busNumber, _this.busNumber) || other.busNumber == _this.busNumber)&&(identical(other.capacity, _this.capacity) || other.capacity == _this.capacity)&&(identical(other.insuranceExpiryDate, _this.insuranceExpiryDate) || other.insuranceExpiryDate == _this.insuranceExpiryDate)&&(identical(other.fitnessCertificateExpiryDate, _this.fitnessCertificateExpiryDate) || other.fitnessCertificateExpiryDate == _this.fitnessCertificateExpiryDate)&&(identical(other.plateNumber, _this.plateNumber) || other.plateNumber == _this.plateNumber)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&(identical(other.drivers, _this.drivers) || other.drivers == _this.drivers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FleetBus;
  return Object.hash(runtimeType,_this.busId,_this.busNumber,_this.capacity,_this.insuranceExpiryDate,_this.fitnessCertificateExpiryDate,_this.plateNumber,_this.isActive,_this.drivers);
}

@override
String toString() {
  final _this = this as FleetBus;
  return 'FleetBus(busId: ${_this.busId}, busNumber: ${_this.busNumber}, capacity: ${_this.capacity}, insuranceExpiryDate: ${_this.insuranceExpiryDate}, fitnessCertificateExpiryDate: ${_this.fitnessCertificateExpiryDate}, plateNumber: ${_this.plateNumber}, isActive: ${_this.isActive}, drivers: ${_this.drivers})';
}


}

/// @nodoc
abstract mixin class $FleetBusCopyWith<$Res>  {
  factory $FleetBusCopyWith(FleetBus value, $Res Function(FleetBus) _then) = _$FleetBusCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'bus_id') String busId,@JsonKey(name: 'bus_number') String busNumber, int? capacity,@JsonKey(name: 'insurance_expiry_date') DateTime? insuranceExpiryDate,@JsonKey(name: 'fitness_certificate_expiry_date') DateTime? fitnessCertificateExpiryDate,@JsonKey(name: 'plate_number') String? plateNumber,@JsonKey(name: 'is_active') bool isActive, FleetDriverRef? drivers
});


$FleetDriverRefCopyWith<$Res>? get drivers;

}
/// @nodoc
class _$FleetBusCopyWithImpl<$Res>
    implements $FleetBusCopyWith<$Res> {
  _$FleetBusCopyWithImpl(this._self, this._then);

  final FleetBus _self;
  final $Res Function(FleetBus) _then;

/// Create a copy of FleetBus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? busId = null,Object? busNumber = null,Object? capacity = freezed,Object? insuranceExpiryDate = freezed,Object? fitnessCertificateExpiryDate = freezed,Object? plateNumber = freezed,Object? isActive = null,Object? drivers = freezed,}) {
  return _then(FleetBus(
busId: null == busId ? _self.busId : busId // ignore: cast_nullable_to_non_nullable
as String,busNumber: null == busNumber ? _self.busNumber : busNumber // ignore: cast_nullable_to_non_nullable
as String,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int?,insuranceExpiryDate: freezed == insuranceExpiryDate ? _self.insuranceExpiryDate : insuranceExpiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,fitnessCertificateExpiryDate: freezed == fitnessCertificateExpiryDate ? _self.fitnessCertificateExpiryDate : fitnessCertificateExpiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,plateNumber: freezed == plateNumber ? _self.plateNumber : plateNumber // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,drivers: freezed == drivers ? _self.drivers : drivers // ignore: cast_nullable_to_non_nullable
as FleetDriverRef?,
  ));
}
/// Create a copy of FleetBus
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetDriverRefCopyWith<$Res>? get drivers {
    if (_self.drivers == null) {
    return null;
  }

  return $FleetDriverRefCopyWith<$Res>(_self.drivers!, (value) {
    return _then(_self.copyWith(drivers: value));
  });
}
}


/// Adds pattern-matching-related methods to [FleetBus].
extension FleetBusPatterns on FleetBus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FleetBus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FleetBus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FleetBus value)  $default,){
final _that = this;
switch (_that) {
case _FleetBus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FleetBus value)?  $default,){
final _that = this;
switch (_that) {
case _FleetBus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'bus_id')  String busId, @JsonKey(name: 'bus_number')  String busNumber,  int? capacity, @JsonKey(name: 'insurance_expiry_date')  DateTime? insuranceExpiryDate, @JsonKey(name: 'fitness_certificate_expiry_date')  DateTime? fitnessCertificateExpiryDate, @JsonKey(name: 'plate_number')  String? plateNumber, @JsonKey(name: 'is_active')  bool isActive,  FleetDriverRef? drivers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FleetBus() when $default != null:
return $default(_that.busId,_that.busNumber,_that.capacity,_that.insuranceExpiryDate,_that.fitnessCertificateExpiryDate,_that.plateNumber,_that.isActive,_that.drivers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'bus_id')  String busId, @JsonKey(name: 'bus_number')  String busNumber,  int? capacity, @JsonKey(name: 'insurance_expiry_date')  DateTime? insuranceExpiryDate, @JsonKey(name: 'fitness_certificate_expiry_date')  DateTime? fitnessCertificateExpiryDate, @JsonKey(name: 'plate_number')  String? plateNumber, @JsonKey(name: 'is_active')  bool isActive,  FleetDriverRef? drivers)  $default,) {final _that = this;
switch (_that) {
case _FleetBus():
return $default(_that.busId,_that.busNumber,_that.capacity,_that.insuranceExpiryDate,_that.fitnessCertificateExpiryDate,_that.plateNumber,_that.isActive,_that.drivers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'bus_id')  String busId, @JsonKey(name: 'bus_number')  String busNumber,  int? capacity, @JsonKey(name: 'insurance_expiry_date')  DateTime? insuranceExpiryDate, @JsonKey(name: 'fitness_certificate_expiry_date')  DateTime? fitnessCertificateExpiryDate, @JsonKey(name: 'plate_number')  String? plateNumber, @JsonKey(name: 'is_active')  bool isActive,  FleetDriverRef? drivers)?  $default,) {final _that = this;
switch (_that) {
case _FleetBus() when $default != null:
return $default(_that.busId,_that.busNumber,_that.capacity,_that.insuranceExpiryDate,_that.fitnessCertificateExpiryDate,_that.plateNumber,_that.isActive,_that.drivers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FleetBus implements FleetBus {
  const _FleetBus({@JsonKey(name: 'bus_id') required this.busId, @JsonKey(name: 'bus_number') this.busNumber = '', this.capacity, @JsonKey(name: 'insurance_expiry_date') this.insuranceExpiryDate, @JsonKey(name: 'fitness_certificate_expiry_date') this.fitnessCertificateExpiryDate, @JsonKey(name: 'plate_number') this.plateNumber, @JsonKey(name: 'is_active') this.isActive = true, this.drivers});
  factory _FleetBus.fromJson(Map<String, dynamic> json) => _$FleetBusFromJson(json);

@override@JsonKey(name: 'bus_id') final  String busId;
@override@JsonKey(name: 'bus_number') final  String busNumber;
@override final  int? capacity;
@override@JsonKey(name: 'insurance_expiry_date') final  DateTime? insuranceExpiryDate;
@override@JsonKey(name: 'fitness_certificate_expiry_date') final  DateTime? fitnessCertificateExpiryDate;
@override@JsonKey(name: 'plate_number') final  String? plateNumber;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override final  FleetDriverRef? drivers;

/// Create a copy of FleetBus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FleetBusCopyWith<_FleetBus> get copyWith => __$FleetBusCopyWithImpl<_FleetBus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FleetBusToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FleetBus&&(identical(other.busId, busId) || other.busId == busId)&&(identical(other.busNumber, busNumber) || other.busNumber == busNumber)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.insuranceExpiryDate, insuranceExpiryDate) || other.insuranceExpiryDate == insuranceExpiryDate)&&(identical(other.fitnessCertificateExpiryDate, fitnessCertificateExpiryDate) || other.fitnessCertificateExpiryDate == fitnessCertificateExpiryDate)&&(identical(other.plateNumber, plateNumber) || other.plateNumber == plateNumber)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.drivers, drivers) || other.drivers == drivers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,busId,busNumber,capacity,insuranceExpiryDate,fitnessCertificateExpiryDate,plateNumber,isActive,drivers);
}

@override
String toString() {
    return 'FleetBus(busId: $busId, busNumber: $busNumber, capacity: $capacity, insuranceExpiryDate: $insuranceExpiryDate, fitnessCertificateExpiryDate: $fitnessCertificateExpiryDate, plateNumber: $plateNumber, isActive: $isActive, drivers: $drivers)';
}


}

/// @nodoc
abstract mixin class _$FleetBusCopyWith<$Res> implements $FleetBusCopyWith<$Res> {
  factory _$FleetBusCopyWith(_FleetBus value, $Res Function(_FleetBus) _then) = __$FleetBusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'bus_id') String busId,@JsonKey(name: 'bus_number') String busNumber, int? capacity,@JsonKey(name: 'insurance_expiry_date') DateTime? insuranceExpiryDate,@JsonKey(name: 'fitness_certificate_expiry_date') DateTime? fitnessCertificateExpiryDate,@JsonKey(name: 'plate_number') String? plateNumber,@JsonKey(name: 'is_active') bool isActive, FleetDriverRef? drivers
});


@override $FleetDriverRefCopyWith<$Res>? get drivers;

}
/// @nodoc
class __$FleetBusCopyWithImpl<$Res>
    implements _$FleetBusCopyWith<$Res> {
  __$FleetBusCopyWithImpl(this._self, this._then);

  final _FleetBus _self;
  final $Res Function(_FleetBus) _then;

/// Create a copy of FleetBus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? busId = null,Object? busNumber = null,Object? capacity = freezed,Object? insuranceExpiryDate = freezed,Object? fitnessCertificateExpiryDate = freezed,Object? plateNumber = freezed,Object? isActive = null,Object? drivers = freezed,}) {
  return _then(_FleetBus(
busId: null == busId ? _self.busId : busId // ignore: cast_nullable_to_non_nullable
as String,busNumber: null == busNumber ? _self.busNumber : busNumber // ignore: cast_nullable_to_non_nullable
as String,capacity: freezed == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int?,insuranceExpiryDate: freezed == insuranceExpiryDate ? _self.insuranceExpiryDate : insuranceExpiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,fitnessCertificateExpiryDate: freezed == fitnessCertificateExpiryDate ? _self.fitnessCertificateExpiryDate : fitnessCertificateExpiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,plateNumber: freezed == plateNumber ? _self.plateNumber : plateNumber // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,drivers: freezed == drivers ? _self.drivers : drivers // ignore: cast_nullable_to_non_nullable
as FleetDriverRef?,
  ));
}

/// Create a copy of FleetBus
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetDriverRefCopyWith<$Res>? get drivers {
    if (_self.drivers == null) {
    return null;
  }

  return $FleetDriverRefCopyWith<$Res>(_self.drivers!, (value) {
    return _then(_self.copyWith(drivers: value));
  });
}
}


/// @nodoc
mixin _$FleetDriver {

@JsonKey(name: 'driver_id') String get driverId; String get name; String? get phone;@JsonKey(name: 'license_number') String? get licenseNumber;@JsonKey(name: 'license_expiry_date') DateTime? get licenseExpiryDate;@JsonKey(name: 'license_type') String? get licenseType;@JsonKey(name: 'employment_status') String? get employmentStatus; FleetBusRef? get buses;
/// Create a copy of FleetDriver
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FleetDriverCopyWith<FleetDriver> get copyWith => _$FleetDriverCopyWithImpl<FleetDriver>(this as FleetDriver, _$identity);

  /// Serializes this FleetDriver to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FleetDriver;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FleetDriver&&(identical(other.driverId, _this.driverId) || other.driverId == _this.driverId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.licenseNumber, _this.licenseNumber) || other.licenseNumber == _this.licenseNumber)&&(identical(other.licenseExpiryDate, _this.licenseExpiryDate) || other.licenseExpiryDate == _this.licenseExpiryDate)&&(identical(other.licenseType, _this.licenseType) || other.licenseType == _this.licenseType)&&(identical(other.employmentStatus, _this.employmentStatus) || other.employmentStatus == _this.employmentStatus)&&(identical(other.buses, _this.buses) || other.buses == _this.buses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FleetDriver;
  return Object.hash(runtimeType,_this.driverId,_this.name,_this.phone,_this.licenseNumber,_this.licenseExpiryDate,_this.licenseType,_this.employmentStatus,_this.buses);
}

@override
String toString() {
  final _this = this as FleetDriver;
  return 'FleetDriver(driverId: ${_this.driverId}, name: ${_this.name}, phone: ${_this.phone}, licenseNumber: ${_this.licenseNumber}, licenseExpiryDate: ${_this.licenseExpiryDate}, licenseType: ${_this.licenseType}, employmentStatus: ${_this.employmentStatus}, buses: ${_this.buses})';
}


}

/// @nodoc
abstract mixin class $FleetDriverCopyWith<$Res>  {
  factory $FleetDriverCopyWith(FleetDriver value, $Res Function(FleetDriver) _then) = _$FleetDriverCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'driver_id') String driverId, String name, String? phone,@JsonKey(name: 'license_number') String? licenseNumber,@JsonKey(name: 'license_expiry_date') DateTime? licenseExpiryDate,@JsonKey(name: 'license_type') String? licenseType,@JsonKey(name: 'employment_status') String? employmentStatus, FleetBusRef? buses
});


$FleetBusRefCopyWith<$Res>? get buses;

}
/// @nodoc
class _$FleetDriverCopyWithImpl<$Res>
    implements $FleetDriverCopyWith<$Res> {
  _$FleetDriverCopyWithImpl(this._self, this._then);

  final FleetDriver _self;
  final $Res Function(FleetDriver) _then;

/// Create a copy of FleetDriver
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? driverId = null,Object? name = null,Object? phone = freezed,Object? licenseNumber = freezed,Object? licenseExpiryDate = freezed,Object? licenseType = freezed,Object? employmentStatus = freezed,Object? buses = freezed,}) {
  return _then(FleetDriver(
driverId: null == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,licenseNumber: freezed == licenseNumber ? _self.licenseNumber : licenseNumber // ignore: cast_nullable_to_non_nullable
as String?,licenseExpiryDate: freezed == licenseExpiryDate ? _self.licenseExpiryDate : licenseExpiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,licenseType: freezed == licenseType ? _self.licenseType : licenseType // ignore: cast_nullable_to_non_nullable
as String?,employmentStatus: freezed == employmentStatus ? _self.employmentStatus : employmentStatus // ignore: cast_nullable_to_non_nullable
as String?,buses: freezed == buses ? _self.buses : buses // ignore: cast_nullable_to_non_nullable
as FleetBusRef?,
  ));
}
/// Create a copy of FleetDriver
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetBusRefCopyWith<$Res>? get buses {
    if (_self.buses == null) {
    return null;
  }

  return $FleetBusRefCopyWith<$Res>(_self.buses!, (value) {
    return _then(_self.copyWith(buses: value));
  });
}
}


/// Adds pattern-matching-related methods to [FleetDriver].
extension FleetDriverPatterns on FleetDriver {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FleetDriver value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FleetDriver() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FleetDriver value)  $default,){
final _that = this;
switch (_that) {
case _FleetDriver():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FleetDriver value)?  $default,){
final _that = this;
switch (_that) {
case _FleetDriver() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'driver_id')  String driverId,  String name,  String? phone, @JsonKey(name: 'license_number')  String? licenseNumber, @JsonKey(name: 'license_expiry_date')  DateTime? licenseExpiryDate, @JsonKey(name: 'license_type')  String? licenseType, @JsonKey(name: 'employment_status')  String? employmentStatus,  FleetBusRef? buses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FleetDriver() when $default != null:
return $default(_that.driverId,_that.name,_that.phone,_that.licenseNumber,_that.licenseExpiryDate,_that.licenseType,_that.employmentStatus,_that.buses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'driver_id')  String driverId,  String name,  String? phone, @JsonKey(name: 'license_number')  String? licenseNumber, @JsonKey(name: 'license_expiry_date')  DateTime? licenseExpiryDate, @JsonKey(name: 'license_type')  String? licenseType, @JsonKey(name: 'employment_status')  String? employmentStatus,  FleetBusRef? buses)  $default,) {final _that = this;
switch (_that) {
case _FleetDriver():
return $default(_that.driverId,_that.name,_that.phone,_that.licenseNumber,_that.licenseExpiryDate,_that.licenseType,_that.employmentStatus,_that.buses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'driver_id')  String driverId,  String name,  String? phone, @JsonKey(name: 'license_number')  String? licenseNumber, @JsonKey(name: 'license_expiry_date')  DateTime? licenseExpiryDate, @JsonKey(name: 'license_type')  String? licenseType, @JsonKey(name: 'employment_status')  String? employmentStatus,  FleetBusRef? buses)?  $default,) {final _that = this;
switch (_that) {
case _FleetDriver() when $default != null:
return $default(_that.driverId,_that.name,_that.phone,_that.licenseNumber,_that.licenseExpiryDate,_that.licenseType,_that.employmentStatus,_that.buses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FleetDriver implements FleetDriver {
  const _FleetDriver({@JsonKey(name: 'driver_id') required this.driverId, this.name = '', this.phone, @JsonKey(name: 'license_number') this.licenseNumber, @JsonKey(name: 'license_expiry_date') this.licenseExpiryDate, @JsonKey(name: 'license_type') this.licenseType, @JsonKey(name: 'employment_status') this.employmentStatus, this.buses});
  factory _FleetDriver.fromJson(Map<String, dynamic> json) => _$FleetDriverFromJson(json);

@override@JsonKey(name: 'driver_id') final  String driverId;
@override@JsonKey() final  String name;
@override final  String? phone;
@override@JsonKey(name: 'license_number') final  String? licenseNumber;
@override@JsonKey(name: 'license_expiry_date') final  DateTime? licenseExpiryDate;
@override@JsonKey(name: 'license_type') final  String? licenseType;
@override@JsonKey(name: 'employment_status') final  String? employmentStatus;
@override final  FleetBusRef? buses;

/// Create a copy of FleetDriver
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FleetDriverCopyWith<_FleetDriver> get copyWith => __$FleetDriverCopyWithImpl<_FleetDriver>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FleetDriverToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FleetDriver&&(identical(other.driverId, driverId) || other.driverId == driverId)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.licenseNumber, licenseNumber) || other.licenseNumber == licenseNumber)&&(identical(other.licenseExpiryDate, licenseExpiryDate) || other.licenseExpiryDate == licenseExpiryDate)&&(identical(other.licenseType, licenseType) || other.licenseType == licenseType)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.buses, buses) || other.buses == buses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,driverId,name,phone,licenseNumber,licenseExpiryDate,licenseType,employmentStatus,buses);
}

@override
String toString() {
    return 'FleetDriver(driverId: $driverId, name: $name, phone: $phone, licenseNumber: $licenseNumber, licenseExpiryDate: $licenseExpiryDate, licenseType: $licenseType, employmentStatus: $employmentStatus, buses: $buses)';
}


}

/// @nodoc
abstract mixin class _$FleetDriverCopyWith<$Res> implements $FleetDriverCopyWith<$Res> {
  factory _$FleetDriverCopyWith(_FleetDriver value, $Res Function(_FleetDriver) _then) = __$FleetDriverCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'driver_id') String driverId, String name, String? phone,@JsonKey(name: 'license_number') String? licenseNumber,@JsonKey(name: 'license_expiry_date') DateTime? licenseExpiryDate,@JsonKey(name: 'license_type') String? licenseType,@JsonKey(name: 'employment_status') String? employmentStatus, FleetBusRef? buses
});


@override $FleetBusRefCopyWith<$Res>? get buses;

}
/// @nodoc
class __$FleetDriverCopyWithImpl<$Res>
    implements _$FleetDriverCopyWith<$Res> {
  __$FleetDriverCopyWithImpl(this._self, this._then);

  final _FleetDriver _self;
  final $Res Function(_FleetDriver) _then;

/// Create a copy of FleetDriver
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? driverId = null,Object? name = null,Object? phone = freezed,Object? licenseNumber = freezed,Object? licenseExpiryDate = freezed,Object? licenseType = freezed,Object? employmentStatus = freezed,Object? buses = freezed,}) {
  return _then(_FleetDriver(
driverId: null == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,licenseNumber: freezed == licenseNumber ? _self.licenseNumber : licenseNumber // ignore: cast_nullable_to_non_nullable
as String?,licenseExpiryDate: freezed == licenseExpiryDate ? _self.licenseExpiryDate : licenseExpiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,licenseType: freezed == licenseType ? _self.licenseType : licenseType // ignore: cast_nullable_to_non_nullable
as String?,employmentStatus: freezed == employmentStatus ? _self.employmentStatus : employmentStatus // ignore: cast_nullable_to_non_nullable
as String?,buses: freezed == buses ? _self.buses : buses // ignore: cast_nullable_to_non_nullable
as FleetBusRef?,
  ));
}

/// Create a copy of FleetDriver
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetBusRefCopyWith<$Res>? get buses {
    if (_self.buses == null) {
    return null;
  }

  return $FleetBusRefCopyWith<$Res>(_self.buses!, (value) {
    return _then(_self.copyWith(buses: value));
  });
}
}


/// @nodoc
mixin _$FleetRouteStop {

@JsonKey(name: 'stop_id') String get stopId;@JsonKey(name: 'stop_name') String get stopName;@JsonKey(name: 'pickup_time') DateTime? get pickupTime;@JsonKey(name: 'drop_time') DateTime? get dropTime;@JsonKey(name: 'stop_order') int get stopOrder;
/// Create a copy of FleetRouteStop
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FleetRouteStopCopyWith<FleetRouteStop> get copyWith => _$FleetRouteStopCopyWithImpl<FleetRouteStop>(this as FleetRouteStop, _$identity);

  /// Serializes this FleetRouteStop to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FleetRouteStop;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FleetRouteStop&&(identical(other.stopId, _this.stopId) || other.stopId == _this.stopId)&&(identical(other.stopName, _this.stopName) || other.stopName == _this.stopName)&&(identical(other.pickupTime, _this.pickupTime) || other.pickupTime == _this.pickupTime)&&(identical(other.dropTime, _this.dropTime) || other.dropTime == _this.dropTime)&&(identical(other.stopOrder, _this.stopOrder) || other.stopOrder == _this.stopOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FleetRouteStop;
  return Object.hash(runtimeType,_this.stopId,_this.stopName,_this.pickupTime,_this.dropTime,_this.stopOrder);
}

@override
String toString() {
  final _this = this as FleetRouteStop;
  return 'FleetRouteStop(stopId: ${_this.stopId}, stopName: ${_this.stopName}, pickupTime: ${_this.pickupTime}, dropTime: ${_this.dropTime}, stopOrder: ${_this.stopOrder})';
}


}

/// @nodoc
abstract mixin class $FleetRouteStopCopyWith<$Res>  {
  factory $FleetRouteStopCopyWith(FleetRouteStop value, $Res Function(FleetRouteStop) _then) = _$FleetRouteStopCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'stop_id') String stopId,@JsonKey(name: 'stop_name') String stopName,@JsonKey(name: 'pickup_time') DateTime? pickupTime,@JsonKey(name: 'drop_time') DateTime? dropTime,@JsonKey(name: 'stop_order') int stopOrder
});




}
/// @nodoc
class _$FleetRouteStopCopyWithImpl<$Res>
    implements $FleetRouteStopCopyWith<$Res> {
  _$FleetRouteStopCopyWithImpl(this._self, this._then);

  final FleetRouteStop _self;
  final $Res Function(FleetRouteStop) _then;

/// Create a copy of FleetRouteStop
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stopId = null,Object? stopName = null,Object? pickupTime = freezed,Object? dropTime = freezed,Object? stopOrder = null,}) {
  return _then(FleetRouteStop(
stopId: null == stopId ? _self.stopId : stopId // ignore: cast_nullable_to_non_nullable
as String,stopName: null == stopName ? _self.stopName : stopName // ignore: cast_nullable_to_non_nullable
as String,pickupTime: freezed == pickupTime ? _self.pickupTime : pickupTime // ignore: cast_nullable_to_non_nullable
as DateTime?,dropTime: freezed == dropTime ? _self.dropTime : dropTime // ignore: cast_nullable_to_non_nullable
as DateTime?,stopOrder: null == stopOrder ? _self.stopOrder : stopOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FleetRouteStop].
extension FleetRouteStopPatterns on FleetRouteStop {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FleetRouteStop value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FleetRouteStop() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FleetRouteStop value)  $default,){
final _that = this;
switch (_that) {
case _FleetRouteStop():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FleetRouteStop value)?  $default,){
final _that = this;
switch (_that) {
case _FleetRouteStop() when $default != null:
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
case _FleetRouteStop() when $default != null:
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
case _FleetRouteStop():
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
case _FleetRouteStop() when $default != null:
return $default(_that.stopId,_that.stopName,_that.pickupTime,_that.dropTime,_that.stopOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FleetRouteStop implements FleetRouteStop {
  const _FleetRouteStop({@JsonKey(name: 'stop_id') required this.stopId, @JsonKey(name: 'stop_name') this.stopName = '', @JsonKey(name: 'pickup_time') this.pickupTime, @JsonKey(name: 'drop_time') this.dropTime, @JsonKey(name: 'stop_order') this.stopOrder = 0});
  factory _FleetRouteStop.fromJson(Map<String, dynamic> json) => _$FleetRouteStopFromJson(json);

@override@JsonKey(name: 'stop_id') final  String stopId;
@override@JsonKey(name: 'stop_name') final  String stopName;
@override@JsonKey(name: 'pickup_time') final  DateTime? pickupTime;
@override@JsonKey(name: 'drop_time') final  DateTime? dropTime;
@override@JsonKey(name: 'stop_order') final  int stopOrder;

/// Create a copy of FleetRouteStop
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FleetRouteStopCopyWith<_FleetRouteStop> get copyWith => __$FleetRouteStopCopyWithImpl<_FleetRouteStop>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FleetRouteStopToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FleetRouteStop&&(identical(other.stopId, stopId) || other.stopId == stopId)&&(identical(other.stopName, stopName) || other.stopName == stopName)&&(identical(other.pickupTime, pickupTime) || other.pickupTime == pickupTime)&&(identical(other.dropTime, dropTime) || other.dropTime == dropTime)&&(identical(other.stopOrder, stopOrder) || other.stopOrder == stopOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,stopId,stopName,pickupTime,dropTime,stopOrder);
}

@override
String toString() {
    return 'FleetRouteStop(stopId: $stopId, stopName: $stopName, pickupTime: $pickupTime, dropTime: $dropTime, stopOrder: $stopOrder)';
}


}

/// @nodoc
abstract mixin class _$FleetRouteStopCopyWith<$Res> implements $FleetRouteStopCopyWith<$Res> {
  factory _$FleetRouteStopCopyWith(_FleetRouteStop value, $Res Function(_FleetRouteStop) _then) = __$FleetRouteStopCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'stop_id') String stopId,@JsonKey(name: 'stop_name') String stopName,@JsonKey(name: 'pickup_time') DateTime? pickupTime,@JsonKey(name: 'drop_time') DateTime? dropTime,@JsonKey(name: 'stop_order') int stopOrder
});




}
/// @nodoc
class __$FleetRouteStopCopyWithImpl<$Res>
    implements _$FleetRouteStopCopyWith<$Res> {
  __$FleetRouteStopCopyWithImpl(this._self, this._then);

  final _FleetRouteStop _self;
  final $Res Function(_FleetRouteStop) _then;

/// Create a copy of FleetRouteStop
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stopId = null,Object? stopName = null,Object? pickupTime = freezed,Object? dropTime = freezed,Object? stopOrder = null,}) {
  return _then(_FleetRouteStop(
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
mixin _$FleetRoute {

@JsonKey(name: 'route_id') String get routeId;@JsonKey(name: 'route_name') String get routeName;@JsonKey(name: 'distance_km')@NullableDecimalConverter() Decimal? get distanceKm;@JsonKey(name: 'is_active') bool get isActive; FleetBusRef? get buses;@JsonKey(name: 'route_stops') List<FleetRouteStop> get routeStops;
/// Create a copy of FleetRoute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FleetRouteCopyWith<FleetRoute> get copyWith => _$FleetRouteCopyWithImpl<FleetRoute>(this as FleetRoute, _$identity);

  /// Serializes this FleetRoute to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FleetRoute;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FleetRoute&&(identical(other.routeId, _this.routeId) || other.routeId == _this.routeId)&&(identical(other.routeName, _this.routeName) || other.routeName == _this.routeName)&&(identical(other.distanceKm, _this.distanceKm) || other.distanceKm == _this.distanceKm)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&(identical(other.buses, _this.buses) || other.buses == _this.buses)&&const DeepCollectionEquality().equals(other.routeStops, _this.routeStops));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FleetRoute;
  return Object.hash(runtimeType,_this.routeId,_this.routeName,_this.distanceKm,_this.isActive,_this.buses,const DeepCollectionEquality().hash(_this.routeStops));
}

@override
String toString() {
  final _this = this as FleetRoute;
  return 'FleetRoute(routeId: ${_this.routeId}, routeName: ${_this.routeName}, distanceKm: ${_this.distanceKm}, isActive: ${_this.isActive}, buses: ${_this.buses}, routeStops: ${_this.routeStops})';
}


}

/// @nodoc
abstract mixin class $FleetRouteCopyWith<$Res>  {
  factory $FleetRouteCopyWith(FleetRoute value, $Res Function(FleetRoute) _then) = _$FleetRouteCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'route_id') String routeId,@JsonKey(name: 'route_name') String routeName,@JsonKey(name: 'distance_km')@NullableDecimalConverter() Decimal? distanceKm,@JsonKey(name: 'is_active') bool isActive, FleetBusRef? buses,@JsonKey(name: 'route_stops') List<FleetRouteStop> routeStops
});


$FleetBusRefCopyWith<$Res>? get buses;

}
/// @nodoc
class _$FleetRouteCopyWithImpl<$Res>
    implements $FleetRouteCopyWith<$Res> {
  _$FleetRouteCopyWithImpl(this._self, this._then);

  final FleetRoute _self;
  final $Res Function(FleetRoute) _then;

/// Create a copy of FleetRoute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routeId = null,Object? routeName = null,Object? distanceKm = freezed,Object? isActive = null,Object? buses = freezed,Object? routeStops = null,}) {
  return _then(FleetRoute(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,routeName: null == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as Decimal?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,buses: freezed == buses ? _self.buses : buses // ignore: cast_nullable_to_non_nullable
as FleetBusRef?,routeStops: null == routeStops ? _self.routeStops : routeStops // ignore: cast_nullable_to_non_nullable
as List<FleetRouteStop>,
  ));
}
/// Create a copy of FleetRoute
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetBusRefCopyWith<$Res>? get buses {
    if (_self.buses == null) {
    return null;
  }

  return $FleetBusRefCopyWith<$Res>(_self.buses!, (value) {
    return _then(_self.copyWith(buses: value));
  });
}
}


/// Adds pattern-matching-related methods to [FleetRoute].
extension FleetRoutePatterns on FleetRoute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FleetRoute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FleetRoute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FleetRoute value)  $default,){
final _that = this;
switch (_that) {
case _FleetRoute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FleetRoute value)?  $default,){
final _that = this;
switch (_that) {
case _FleetRoute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'route_id')  String routeId, @JsonKey(name: 'route_name')  String routeName, @JsonKey(name: 'distance_km')@NullableDecimalConverter()  Decimal? distanceKm, @JsonKey(name: 'is_active')  bool isActive,  FleetBusRef? buses, @JsonKey(name: 'route_stops')  List<FleetRouteStop> routeStops)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FleetRoute() when $default != null:
return $default(_that.routeId,_that.routeName,_that.distanceKm,_that.isActive,_that.buses,_that.routeStops);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'route_id')  String routeId, @JsonKey(name: 'route_name')  String routeName, @JsonKey(name: 'distance_km')@NullableDecimalConverter()  Decimal? distanceKm, @JsonKey(name: 'is_active')  bool isActive,  FleetBusRef? buses, @JsonKey(name: 'route_stops')  List<FleetRouteStop> routeStops)  $default,) {final _that = this;
switch (_that) {
case _FleetRoute():
return $default(_that.routeId,_that.routeName,_that.distanceKm,_that.isActive,_that.buses,_that.routeStops);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'route_id')  String routeId, @JsonKey(name: 'route_name')  String routeName, @JsonKey(name: 'distance_km')@NullableDecimalConverter()  Decimal? distanceKm, @JsonKey(name: 'is_active')  bool isActive,  FleetBusRef? buses, @JsonKey(name: 'route_stops')  List<FleetRouteStop> routeStops)?  $default,) {final _that = this;
switch (_that) {
case _FleetRoute() when $default != null:
return $default(_that.routeId,_that.routeName,_that.distanceKm,_that.isActive,_that.buses,_that.routeStops);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FleetRoute implements FleetRoute {
  const _FleetRoute({@JsonKey(name: 'route_id') required this.routeId, @JsonKey(name: 'route_name') this.routeName = '', @JsonKey(name: 'distance_km')@NullableDecimalConverter() this.distanceKm, @JsonKey(name: 'is_active') this.isActive = true, this.buses, @JsonKey(name: 'route_stops')  List<FleetRouteStop> routeStops = const <FleetRouteStop>[]}): _routeStops = routeStops;
  factory _FleetRoute.fromJson(Map<String, dynamic> json) => _$FleetRouteFromJson(json);

@override@JsonKey(name: 'route_id') final  String routeId;
@override@JsonKey(name: 'route_name') final  String routeName;
@override@JsonKey(name: 'distance_km')@NullableDecimalConverter() final  Decimal? distanceKm;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override final  FleetBusRef? buses;
 final  List<FleetRouteStop> _routeStops;
@override@JsonKey(name: 'route_stops') List<FleetRouteStop> get routeStops {
  if (_routeStops is EqualUnmodifiableListView) return _routeStops;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_routeStops);
}


/// Create a copy of FleetRoute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FleetRouteCopyWith<_FleetRoute> get copyWith => __$FleetRouteCopyWithImpl<_FleetRoute>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FleetRouteToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FleetRoute&&(identical(other.routeId, routeId) || other.routeId == routeId)&&(identical(other.routeName, routeName) || other.routeName == routeName)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.buses, buses) || other.buses == buses)&&const DeepCollectionEquality().equals(other.routeStops, _routeStops));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,routeId,routeName,distanceKm,isActive,buses,const DeepCollectionEquality().hash(_routeStops));
}

@override
String toString() {
    return 'FleetRoute(routeId: $routeId, routeName: $routeName, distanceKm: $distanceKm, isActive: $isActive, buses: $buses, routeStops: $routeStops)';
}


}

/// @nodoc
abstract mixin class _$FleetRouteCopyWith<$Res> implements $FleetRouteCopyWith<$Res> {
  factory _$FleetRouteCopyWith(_FleetRoute value, $Res Function(_FleetRoute) _then) = __$FleetRouteCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'route_id') String routeId,@JsonKey(name: 'route_name') String routeName,@JsonKey(name: 'distance_km')@NullableDecimalConverter() Decimal? distanceKm,@JsonKey(name: 'is_active') bool isActive, FleetBusRef? buses,@JsonKey(name: 'route_stops') List<FleetRouteStop> routeStops
});


@override $FleetBusRefCopyWith<$Res>? get buses;

}
/// @nodoc
class __$FleetRouteCopyWithImpl<$Res>
    implements _$FleetRouteCopyWith<$Res> {
  __$FleetRouteCopyWithImpl(this._self, this._then);

  final _FleetRoute _self;
  final $Res Function(_FleetRoute) _then;

/// Create a copy of FleetRoute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routeId = null,Object? routeName = null,Object? distanceKm = freezed,Object? isActive = null,Object? buses = freezed,Object? routeStops = null,}) {
  return _then(_FleetRoute(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,routeName: null == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as Decimal?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,buses: freezed == buses ? _self.buses : buses // ignore: cast_nullable_to_non_nullable
as FleetBusRef?,routeStops: null == routeStops ? _self._routeStops : routeStops // ignore: cast_nullable_to_non_nullable
as List<FleetRouteStop>,
  ));
}

/// Create a copy of FleetRoute
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetBusRefCopyWith<$Res>? get buses {
    if (_self.buses == null) {
    return null;
  }

  return $FleetBusRefCopyWith<$Res>(_self.buses!, (value) {
    return _then(_self.copyWith(buses: value));
  });
}
}


/// @nodoc
mixin _$FleetRouteRef {

@JsonKey(name: 'route_id') String? get routeId;@JsonKey(name: 'route_name') String? get routeName; FleetBusRef? get buses;
/// Create a copy of FleetRouteRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FleetRouteRefCopyWith<FleetRouteRef> get copyWith => _$FleetRouteRefCopyWithImpl<FleetRouteRef>(this as FleetRouteRef, _$identity);

  /// Serializes this FleetRouteRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FleetRouteRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FleetRouteRef&&(identical(other.routeId, _this.routeId) || other.routeId == _this.routeId)&&(identical(other.routeName, _this.routeName) || other.routeName == _this.routeName)&&(identical(other.buses, _this.buses) || other.buses == _this.buses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FleetRouteRef;
  return Object.hash(runtimeType,_this.routeId,_this.routeName,_this.buses);
}

@override
String toString() {
  final _this = this as FleetRouteRef;
  return 'FleetRouteRef(routeId: ${_this.routeId}, routeName: ${_this.routeName}, buses: ${_this.buses})';
}


}

/// @nodoc
abstract mixin class $FleetRouteRefCopyWith<$Res>  {
  factory $FleetRouteRefCopyWith(FleetRouteRef value, $Res Function(FleetRouteRef) _then) = _$FleetRouteRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'route_id') String? routeId,@JsonKey(name: 'route_name') String? routeName, FleetBusRef? buses
});


$FleetBusRefCopyWith<$Res>? get buses;

}
/// @nodoc
class _$FleetRouteRefCopyWithImpl<$Res>
    implements $FleetRouteRefCopyWith<$Res> {
  _$FleetRouteRefCopyWithImpl(this._self, this._then);

  final FleetRouteRef _self;
  final $Res Function(FleetRouteRef) _then;

/// Create a copy of FleetRouteRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routeId = freezed,Object? routeName = freezed,Object? buses = freezed,}) {
  return _then(FleetRouteRef(
routeId: freezed == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String?,routeName: freezed == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String?,buses: freezed == buses ? _self.buses : buses // ignore: cast_nullable_to_non_nullable
as FleetBusRef?,
  ));
}
/// Create a copy of FleetRouteRef
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetBusRefCopyWith<$Res>? get buses {
    if (_self.buses == null) {
    return null;
  }

  return $FleetBusRefCopyWith<$Res>(_self.buses!, (value) {
    return _then(_self.copyWith(buses: value));
  });
}
}


/// Adds pattern-matching-related methods to [FleetRouteRef].
extension FleetRouteRefPatterns on FleetRouteRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FleetRouteRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FleetRouteRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FleetRouteRef value)  $default,){
final _that = this;
switch (_that) {
case _FleetRouteRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FleetRouteRef value)?  $default,){
final _that = this;
switch (_that) {
case _FleetRouteRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'route_id')  String? routeId, @JsonKey(name: 'route_name')  String? routeName,  FleetBusRef? buses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FleetRouteRef() when $default != null:
return $default(_that.routeId,_that.routeName,_that.buses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'route_id')  String? routeId, @JsonKey(name: 'route_name')  String? routeName,  FleetBusRef? buses)  $default,) {final _that = this;
switch (_that) {
case _FleetRouteRef():
return $default(_that.routeId,_that.routeName,_that.buses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'route_id')  String? routeId, @JsonKey(name: 'route_name')  String? routeName,  FleetBusRef? buses)?  $default,) {final _that = this;
switch (_that) {
case _FleetRouteRef() when $default != null:
return $default(_that.routeId,_that.routeName,_that.buses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FleetRouteRef implements FleetRouteRef {
  const _FleetRouteRef({@JsonKey(name: 'route_id') this.routeId, @JsonKey(name: 'route_name') this.routeName, this.buses});
  factory _FleetRouteRef.fromJson(Map<String, dynamic> json) => _$FleetRouteRefFromJson(json);

@override@JsonKey(name: 'route_id') final  String? routeId;
@override@JsonKey(name: 'route_name') final  String? routeName;
@override final  FleetBusRef? buses;

/// Create a copy of FleetRouteRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FleetRouteRefCopyWith<_FleetRouteRef> get copyWith => __$FleetRouteRefCopyWithImpl<_FleetRouteRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FleetRouteRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FleetRouteRef&&(identical(other.routeId, routeId) || other.routeId == routeId)&&(identical(other.routeName, routeName) || other.routeName == routeName)&&(identical(other.buses, buses) || other.buses == buses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,routeId,routeName,buses);
}

@override
String toString() {
    return 'FleetRouteRef(routeId: $routeId, routeName: $routeName, buses: $buses)';
}


}

/// @nodoc
abstract mixin class _$FleetRouteRefCopyWith<$Res> implements $FleetRouteRefCopyWith<$Res> {
  factory _$FleetRouteRefCopyWith(_FleetRouteRef value, $Res Function(_FleetRouteRef) _then) = __$FleetRouteRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'route_id') String? routeId,@JsonKey(name: 'route_name') String? routeName, FleetBusRef? buses
});


@override $FleetBusRefCopyWith<$Res>? get buses;

}
/// @nodoc
class __$FleetRouteRefCopyWithImpl<$Res>
    implements _$FleetRouteRefCopyWith<$Res> {
  __$FleetRouteRefCopyWithImpl(this._self, this._then);

  final _FleetRouteRef _self;
  final $Res Function(_FleetRouteRef) _then;

/// Create a copy of FleetRouteRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routeId = freezed,Object? routeName = freezed,Object? buses = freezed,}) {
  return _then(_FleetRouteRef(
routeId: freezed == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String?,routeName: freezed == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String?,buses: freezed == buses ? _self.buses : buses // ignore: cast_nullable_to_non_nullable
as FleetBusRef?,
  ));
}

/// Create a copy of FleetRouteRef
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetBusRefCopyWith<$Res>? get buses {
    if (_self.buses == null) {
    return null;
  }

  return $FleetBusRefCopyWith<$Res>(_self.buses!, (value) {
    return _then(_self.copyWith(buses: value));
  });
}
}


/// @nodoc
mixin _$FleetStudentAssignment {

@JsonKey(name: 'assignment_id') String get assignmentId;@JsonKey(name: 'routes') FleetRouteRef? get route;@JsonKey(name: 'route_stops') FleetRouteStop? get stop;@JsonKey(name: 'students') StudentBrief? get student;
/// Create a copy of FleetStudentAssignment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FleetStudentAssignmentCopyWith<FleetStudentAssignment> get copyWith => _$FleetStudentAssignmentCopyWithImpl<FleetStudentAssignment>(this as FleetStudentAssignment, _$identity);

  /// Serializes this FleetStudentAssignment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FleetStudentAssignment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FleetStudentAssignment&&(identical(other.assignmentId, _this.assignmentId) || other.assignmentId == _this.assignmentId)&&(identical(other.route, _this.route) || other.route == _this.route)&&(identical(other.stop, _this.stop) || other.stop == _this.stop)&&(identical(other.student, _this.student) || other.student == _this.student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FleetStudentAssignment;
  return Object.hash(runtimeType,_this.assignmentId,_this.route,_this.stop,_this.student);
}

@override
String toString() {
  final _this = this as FleetStudentAssignment;
  return 'FleetStudentAssignment(assignmentId: ${_this.assignmentId}, route: ${_this.route}, stop: ${_this.stop}, student: ${_this.student})';
}


}

/// @nodoc
abstract mixin class $FleetStudentAssignmentCopyWith<$Res>  {
  factory $FleetStudentAssignmentCopyWith(FleetStudentAssignment value, $Res Function(FleetStudentAssignment) _then) = _$FleetStudentAssignmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'assignment_id') String assignmentId,@JsonKey(name: 'routes') FleetRouteRef? route,@JsonKey(name: 'route_stops') FleetRouteStop? stop,@JsonKey(name: 'students') StudentBrief? student
});


$FleetRouteRefCopyWith<$Res>? get route;$FleetRouteStopCopyWith<$Res>? get stop;$StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class _$FleetStudentAssignmentCopyWithImpl<$Res>
    implements $FleetStudentAssignmentCopyWith<$Res> {
  _$FleetStudentAssignmentCopyWithImpl(this._self, this._then);

  final FleetStudentAssignment _self;
  final $Res Function(FleetStudentAssignment) _then;

/// Create a copy of FleetStudentAssignment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assignmentId = null,Object? route = freezed,Object? stop = freezed,Object? student = freezed,}) {
  return _then(FleetStudentAssignment(
assignmentId: null == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as FleetRouteRef?,stop: freezed == stop ? _self.stop : stop // ignore: cast_nullable_to_non_nullable
as FleetRouteStop?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,
  ));
}
/// Create a copy of FleetStudentAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetRouteRefCopyWith<$Res>? get route {
    if (_self.route == null) {
    return null;
  }

  return $FleetRouteRefCopyWith<$Res>(_self.route!, (value) {
    return _then(_self.copyWith(route: value));
  });
}/// Create a copy of FleetStudentAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetRouteStopCopyWith<$Res>? get stop {
    if (_self.stop == null) {
    return null;
  }

  return $FleetRouteStopCopyWith<$Res>(_self.stop!, (value) {
    return _then(_self.copyWith(stop: value));
  });
}/// Create a copy of FleetStudentAssignment
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
}
}


/// Adds pattern-matching-related methods to [FleetStudentAssignment].
extension FleetStudentAssignmentPatterns on FleetStudentAssignment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FleetStudentAssignment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FleetStudentAssignment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FleetStudentAssignment value)  $default,){
final _that = this;
switch (_that) {
case _FleetStudentAssignment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FleetStudentAssignment value)?  $default,){
final _that = this;
switch (_that) {
case _FleetStudentAssignment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'routes')  FleetRouteRef? route, @JsonKey(name: 'route_stops')  FleetRouteStop? stop, @JsonKey(name: 'students')  StudentBrief? student)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FleetStudentAssignment() when $default != null:
return $default(_that.assignmentId,_that.route,_that.stop,_that.student);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'routes')  FleetRouteRef? route, @JsonKey(name: 'route_stops')  FleetRouteStop? stop, @JsonKey(name: 'students')  StudentBrief? student)  $default,) {final _that = this;
switch (_that) {
case _FleetStudentAssignment():
return $default(_that.assignmentId,_that.route,_that.stop,_that.student);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'assignment_id')  String assignmentId, @JsonKey(name: 'routes')  FleetRouteRef? route, @JsonKey(name: 'route_stops')  FleetRouteStop? stop, @JsonKey(name: 'students')  StudentBrief? student)?  $default,) {final _that = this;
switch (_that) {
case _FleetStudentAssignment() when $default != null:
return $default(_that.assignmentId,_that.route,_that.stop,_that.student);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FleetStudentAssignment implements FleetStudentAssignment {
  const _FleetStudentAssignment({@JsonKey(name: 'assignment_id') required this.assignmentId, @JsonKey(name: 'routes') this.route, @JsonKey(name: 'route_stops') this.stop, @JsonKey(name: 'students') this.student});
  factory _FleetStudentAssignment.fromJson(Map<String, dynamic> json) => _$FleetStudentAssignmentFromJson(json);

@override@JsonKey(name: 'assignment_id') final  String assignmentId;
@override@JsonKey(name: 'routes') final  FleetRouteRef? route;
@override@JsonKey(name: 'route_stops') final  FleetRouteStop? stop;
@override@JsonKey(name: 'students') final  StudentBrief? student;

/// Create a copy of FleetStudentAssignment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FleetStudentAssignmentCopyWith<_FleetStudentAssignment> get copyWith => __$FleetStudentAssignmentCopyWithImpl<_FleetStudentAssignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FleetStudentAssignmentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FleetStudentAssignment&&(identical(other.assignmentId, assignmentId) || other.assignmentId == assignmentId)&&(identical(other.route, route) || other.route == route)&&(identical(other.stop, stop) || other.stop == stop)&&(identical(other.student, student) || other.student == student));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,assignmentId,route,stop,student);
}

@override
String toString() {
    return 'FleetStudentAssignment(assignmentId: $assignmentId, route: $route, stop: $stop, student: $student)';
}


}

/// @nodoc
abstract mixin class _$FleetStudentAssignmentCopyWith<$Res> implements $FleetStudentAssignmentCopyWith<$Res> {
  factory _$FleetStudentAssignmentCopyWith(_FleetStudentAssignment value, $Res Function(_FleetStudentAssignment) _then) = __$FleetStudentAssignmentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'assignment_id') String assignmentId,@JsonKey(name: 'routes') FleetRouteRef? route,@JsonKey(name: 'route_stops') FleetRouteStop? stop,@JsonKey(name: 'students') StudentBrief? student
});


@override $FleetRouteRefCopyWith<$Res>? get route;@override $FleetRouteStopCopyWith<$Res>? get stop;@override $StudentBriefCopyWith<$Res>? get student;

}
/// @nodoc
class __$FleetStudentAssignmentCopyWithImpl<$Res>
    implements _$FleetStudentAssignmentCopyWith<$Res> {
  __$FleetStudentAssignmentCopyWithImpl(this._self, this._then);

  final _FleetStudentAssignment _self;
  final $Res Function(_FleetStudentAssignment) _then;

/// Create a copy of FleetStudentAssignment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assignmentId = null,Object? route = freezed,Object? stop = freezed,Object? student = freezed,}) {
  return _then(_FleetStudentAssignment(
assignmentId: null == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as FleetRouteRef?,stop: freezed == stop ? _self.stop : stop // ignore: cast_nullable_to_non_nullable
as FleetRouteStop?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,
  ));
}

/// Create a copy of FleetStudentAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetRouteRefCopyWith<$Res>? get route {
    if (_self.route == null) {
    return null;
  }

  return $FleetRouteRefCopyWith<$Res>(_self.route!, (value) {
    return _then(_self.copyWith(route: value));
  });
}/// Create a copy of FleetStudentAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetRouteStopCopyWith<$Res>? get stop {
    if (_self.stop == null) {
    return null;
  }

  return $FleetRouteStopCopyWith<$Res>(_self.stop!, (value) {
    return _then(_self.copyWith(stop: value));
  });
}/// Create a copy of FleetStudentAssignment
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
}
}


/// @nodoc
mixin _$FleetVehicleAssignment {

@JsonKey(name: 'assignment_id') String get assignmentId; String? get role;@JsonKey(name: 'start_date') DateTime? get startDate;@JsonKey(name: 'end_date') DateTime? get endDate; FleetDriverRef? get drivers; FleetBusRef? get buses;
/// Create a copy of FleetVehicleAssignment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FleetVehicleAssignmentCopyWith<FleetVehicleAssignment> get copyWith => _$FleetVehicleAssignmentCopyWithImpl<FleetVehicleAssignment>(this as FleetVehicleAssignment, _$identity);

  /// Serializes this FleetVehicleAssignment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FleetVehicleAssignment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FleetVehicleAssignment&&(identical(other.assignmentId, _this.assignmentId) || other.assignmentId == _this.assignmentId)&&(identical(other.role, _this.role) || other.role == _this.role)&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.endDate, _this.endDate) || other.endDate == _this.endDate)&&(identical(other.drivers, _this.drivers) || other.drivers == _this.drivers)&&(identical(other.buses, _this.buses) || other.buses == _this.buses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FleetVehicleAssignment;
  return Object.hash(runtimeType,_this.assignmentId,_this.role,_this.startDate,_this.endDate,_this.drivers,_this.buses);
}

@override
String toString() {
  final _this = this as FleetVehicleAssignment;
  return 'FleetVehicleAssignment(assignmentId: ${_this.assignmentId}, role: ${_this.role}, startDate: ${_this.startDate}, endDate: ${_this.endDate}, drivers: ${_this.drivers}, buses: ${_this.buses})';
}


}

/// @nodoc
abstract mixin class $FleetVehicleAssignmentCopyWith<$Res>  {
  factory $FleetVehicleAssignmentCopyWith(FleetVehicleAssignment value, $Res Function(FleetVehicleAssignment) _then) = _$FleetVehicleAssignmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'assignment_id') String assignmentId, String? role,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'end_date') DateTime? endDate, FleetDriverRef? drivers, FleetBusRef? buses
});


$FleetDriverRefCopyWith<$Res>? get drivers;$FleetBusRefCopyWith<$Res>? get buses;

}
/// @nodoc
class _$FleetVehicleAssignmentCopyWithImpl<$Res>
    implements $FleetVehicleAssignmentCopyWith<$Res> {
  _$FleetVehicleAssignmentCopyWithImpl(this._self, this._then);

  final FleetVehicleAssignment _self;
  final $Res Function(FleetVehicleAssignment) _then;

/// Create a copy of FleetVehicleAssignment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assignmentId = null,Object? role = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? drivers = freezed,Object? buses = freezed,}) {
  return _then(FleetVehicleAssignment(
assignmentId: null == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,drivers: freezed == drivers ? _self.drivers : drivers // ignore: cast_nullable_to_non_nullable
as FleetDriverRef?,buses: freezed == buses ? _self.buses : buses // ignore: cast_nullable_to_non_nullable
as FleetBusRef?,
  ));
}
/// Create a copy of FleetVehicleAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetDriverRefCopyWith<$Res>? get drivers {
    if (_self.drivers == null) {
    return null;
  }

  return $FleetDriverRefCopyWith<$Res>(_self.drivers!, (value) {
    return _then(_self.copyWith(drivers: value));
  });
}/// Create a copy of FleetVehicleAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetBusRefCopyWith<$Res>? get buses {
    if (_self.buses == null) {
    return null;
  }

  return $FleetBusRefCopyWith<$Res>(_self.buses!, (value) {
    return _then(_self.copyWith(buses: value));
  });
}
}


/// Adds pattern-matching-related methods to [FleetVehicleAssignment].
extension FleetVehicleAssignmentPatterns on FleetVehicleAssignment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FleetVehicleAssignment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FleetVehicleAssignment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FleetVehicleAssignment value)  $default,){
final _that = this;
switch (_that) {
case _FleetVehicleAssignment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FleetVehicleAssignment value)?  $default,){
final _that = this;
switch (_that) {
case _FleetVehicleAssignment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'assignment_id')  String assignmentId,  String? role, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate,  FleetDriverRef? drivers,  FleetBusRef? buses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FleetVehicleAssignment() when $default != null:
return $default(_that.assignmentId,_that.role,_that.startDate,_that.endDate,_that.drivers,_that.buses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'assignment_id')  String assignmentId,  String? role, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate,  FleetDriverRef? drivers,  FleetBusRef? buses)  $default,) {final _that = this;
switch (_that) {
case _FleetVehicleAssignment():
return $default(_that.assignmentId,_that.role,_that.startDate,_that.endDate,_that.drivers,_that.buses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'assignment_id')  String assignmentId,  String? role, @JsonKey(name: 'start_date')  DateTime? startDate, @JsonKey(name: 'end_date')  DateTime? endDate,  FleetDriverRef? drivers,  FleetBusRef? buses)?  $default,) {final _that = this;
switch (_that) {
case _FleetVehicleAssignment() when $default != null:
return $default(_that.assignmentId,_that.role,_that.startDate,_that.endDate,_that.drivers,_that.buses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FleetVehicleAssignment implements FleetVehicleAssignment {
  const _FleetVehicleAssignment({@JsonKey(name: 'assignment_id') required this.assignmentId, this.role, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'end_date') this.endDate, this.drivers, this.buses});
  factory _FleetVehicleAssignment.fromJson(Map<String, dynamic> json) => _$FleetVehicleAssignmentFromJson(json);

@override@JsonKey(name: 'assignment_id') final  String assignmentId;
@override final  String? role;
@override@JsonKey(name: 'start_date') final  DateTime? startDate;
@override@JsonKey(name: 'end_date') final  DateTime? endDate;
@override final  FleetDriverRef? drivers;
@override final  FleetBusRef? buses;

/// Create a copy of FleetVehicleAssignment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FleetVehicleAssignmentCopyWith<_FleetVehicleAssignment> get copyWith => __$FleetVehicleAssignmentCopyWithImpl<_FleetVehicleAssignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FleetVehicleAssignmentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FleetVehicleAssignment&&(identical(other.assignmentId, assignmentId) || other.assignmentId == assignmentId)&&(identical(other.role, role) || other.role == role)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.drivers, drivers) || other.drivers == drivers)&&(identical(other.buses, buses) || other.buses == buses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,assignmentId,role,startDate,endDate,drivers,buses);
}

@override
String toString() {
    return 'FleetVehicleAssignment(assignmentId: $assignmentId, role: $role, startDate: $startDate, endDate: $endDate, drivers: $drivers, buses: $buses)';
}


}

/// @nodoc
abstract mixin class _$FleetVehicleAssignmentCopyWith<$Res> implements $FleetVehicleAssignmentCopyWith<$Res> {
  factory _$FleetVehicleAssignmentCopyWith(_FleetVehicleAssignment value, $Res Function(_FleetVehicleAssignment) _then) = __$FleetVehicleAssignmentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'assignment_id') String assignmentId, String? role,@JsonKey(name: 'start_date') DateTime? startDate,@JsonKey(name: 'end_date') DateTime? endDate, FleetDriverRef? drivers, FleetBusRef? buses
});


@override $FleetDriverRefCopyWith<$Res>? get drivers;@override $FleetBusRefCopyWith<$Res>? get buses;

}
/// @nodoc
class __$FleetVehicleAssignmentCopyWithImpl<$Res>
    implements _$FleetVehicleAssignmentCopyWith<$Res> {
  __$FleetVehicleAssignmentCopyWithImpl(this._self, this._then);

  final _FleetVehicleAssignment _self;
  final $Res Function(_FleetVehicleAssignment) _then;

/// Create a copy of FleetVehicleAssignment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assignmentId = null,Object? role = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? drivers = freezed,Object? buses = freezed,}) {
  return _then(_FleetVehicleAssignment(
assignmentId: null == assignmentId ? _self.assignmentId : assignmentId // ignore: cast_nullable_to_non_nullable
as String,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,drivers: freezed == drivers ? _self.drivers : drivers // ignore: cast_nullable_to_non_nullable
as FleetDriverRef?,buses: freezed == buses ? _self.buses : buses // ignore: cast_nullable_to_non_nullable
as FleetBusRef?,
  ));
}

/// Create a copy of FleetVehicleAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetDriverRefCopyWith<$Res>? get drivers {
    if (_self.drivers == null) {
    return null;
  }

  return $FleetDriverRefCopyWith<$Res>(_self.drivers!, (value) {
    return _then(_self.copyWith(drivers: value));
  });
}/// Create a copy of FleetVehicleAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetBusRefCopyWith<$Res>? get buses {
    if (_self.buses == null) {
    return null;
  }

  return $FleetBusRefCopyWith<$Res>(_self.buses!, (value) {
    return _then(_self.copyWith(buses: value));
  });
}
}


/// @nodoc
mixin _$FleetTrip {

@JsonKey(name: 'trip_id') String get tripId;@JsonKey(name: 'trip_type') String? get tripType;@JsonKey(name: 'trip_date') DateTime? get tripDate;@JsonKey(name: 'start_time') DateTime? get startTime;@JsonKey(name: 'end_time') DateTime? get endTime; String? get status;@JsonKey(name: 'student_count') int? get studentCount; FleetDriverRef? get drivers; FleetBusRef? get buses;@JsonKey(name: 'routes') FleetRouteRef? get route;
/// Create a copy of FleetTrip
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FleetTripCopyWith<FleetTrip> get copyWith => _$FleetTripCopyWithImpl<FleetTrip>(this as FleetTrip, _$identity);

  /// Serializes this FleetTrip to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FleetTrip;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FleetTrip&&(identical(other.tripId, _this.tripId) || other.tripId == _this.tripId)&&(identical(other.tripType, _this.tripType) || other.tripType == _this.tripType)&&(identical(other.tripDate, _this.tripDate) || other.tripDate == _this.tripDate)&&(identical(other.startTime, _this.startTime) || other.startTime == _this.startTime)&&(identical(other.endTime, _this.endTime) || other.endTime == _this.endTime)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.studentCount, _this.studentCount) || other.studentCount == _this.studentCount)&&(identical(other.drivers, _this.drivers) || other.drivers == _this.drivers)&&(identical(other.buses, _this.buses) || other.buses == _this.buses)&&(identical(other.route, _this.route) || other.route == _this.route));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FleetTrip;
  return Object.hash(runtimeType,_this.tripId,_this.tripType,_this.tripDate,_this.startTime,_this.endTime,_this.status,_this.studentCount,_this.drivers,_this.buses,_this.route);
}

@override
String toString() {
  final _this = this as FleetTrip;
  return 'FleetTrip(tripId: ${_this.tripId}, tripType: ${_this.tripType}, tripDate: ${_this.tripDate}, startTime: ${_this.startTime}, endTime: ${_this.endTime}, status: ${_this.status}, studentCount: ${_this.studentCount}, drivers: ${_this.drivers}, buses: ${_this.buses}, route: ${_this.route})';
}


}

/// @nodoc
abstract mixin class $FleetTripCopyWith<$Res>  {
  factory $FleetTripCopyWith(FleetTrip value, $Res Function(FleetTrip) _then) = _$FleetTripCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'trip_id') String tripId,@JsonKey(name: 'trip_type') String? tripType,@JsonKey(name: 'trip_date') DateTime? tripDate,@JsonKey(name: 'start_time') DateTime? startTime,@JsonKey(name: 'end_time') DateTime? endTime, String? status,@JsonKey(name: 'student_count') int? studentCount, FleetDriverRef? drivers, FleetBusRef? buses,@JsonKey(name: 'routes') FleetRouteRef? route
});


$FleetDriverRefCopyWith<$Res>? get drivers;$FleetBusRefCopyWith<$Res>? get buses;$FleetRouteRefCopyWith<$Res>? get route;

}
/// @nodoc
class _$FleetTripCopyWithImpl<$Res>
    implements $FleetTripCopyWith<$Res> {
  _$FleetTripCopyWithImpl(this._self, this._then);

  final FleetTrip _self;
  final $Res Function(FleetTrip) _then;

/// Create a copy of FleetTrip
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tripId = null,Object? tripType = freezed,Object? tripDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? status = freezed,Object? studentCount = freezed,Object? drivers = freezed,Object? buses = freezed,Object? route = freezed,}) {
  return _then(FleetTrip(
tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as String,tripType: freezed == tripType ? _self.tripType : tripType // ignore: cast_nullable_to_non_nullable
as String?,tripDate: freezed == tripDate ? _self.tripDate : tripDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,studentCount: freezed == studentCount ? _self.studentCount : studentCount // ignore: cast_nullable_to_non_nullable
as int?,drivers: freezed == drivers ? _self.drivers : drivers // ignore: cast_nullable_to_non_nullable
as FleetDriverRef?,buses: freezed == buses ? _self.buses : buses // ignore: cast_nullable_to_non_nullable
as FleetBusRef?,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as FleetRouteRef?,
  ));
}
/// Create a copy of FleetTrip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetDriverRefCopyWith<$Res>? get drivers {
    if (_self.drivers == null) {
    return null;
  }

  return $FleetDriverRefCopyWith<$Res>(_self.drivers!, (value) {
    return _then(_self.copyWith(drivers: value));
  });
}/// Create a copy of FleetTrip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetBusRefCopyWith<$Res>? get buses {
    if (_self.buses == null) {
    return null;
  }

  return $FleetBusRefCopyWith<$Res>(_self.buses!, (value) {
    return _then(_self.copyWith(buses: value));
  });
}/// Create a copy of FleetTrip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetRouteRefCopyWith<$Res>? get route {
    if (_self.route == null) {
    return null;
  }

  return $FleetRouteRefCopyWith<$Res>(_self.route!, (value) {
    return _then(_self.copyWith(route: value));
  });
}
}


/// Adds pattern-matching-related methods to [FleetTrip].
extension FleetTripPatterns on FleetTrip {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FleetTrip value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FleetTrip() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FleetTrip value)  $default,){
final _that = this;
switch (_that) {
case _FleetTrip():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FleetTrip value)?  $default,){
final _that = this;
switch (_that) {
case _FleetTrip() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'trip_id')  String tripId, @JsonKey(name: 'trip_type')  String? tripType, @JsonKey(name: 'trip_date')  DateTime? tripDate, @JsonKey(name: 'start_time')  DateTime? startTime, @JsonKey(name: 'end_time')  DateTime? endTime,  String? status, @JsonKey(name: 'student_count')  int? studentCount,  FleetDriverRef? drivers,  FleetBusRef? buses, @JsonKey(name: 'routes')  FleetRouteRef? route)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FleetTrip() when $default != null:
return $default(_that.tripId,_that.tripType,_that.tripDate,_that.startTime,_that.endTime,_that.status,_that.studentCount,_that.drivers,_that.buses,_that.route);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'trip_id')  String tripId, @JsonKey(name: 'trip_type')  String? tripType, @JsonKey(name: 'trip_date')  DateTime? tripDate, @JsonKey(name: 'start_time')  DateTime? startTime, @JsonKey(name: 'end_time')  DateTime? endTime,  String? status, @JsonKey(name: 'student_count')  int? studentCount,  FleetDriverRef? drivers,  FleetBusRef? buses, @JsonKey(name: 'routes')  FleetRouteRef? route)  $default,) {final _that = this;
switch (_that) {
case _FleetTrip():
return $default(_that.tripId,_that.tripType,_that.tripDate,_that.startTime,_that.endTime,_that.status,_that.studentCount,_that.drivers,_that.buses,_that.route);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'trip_id')  String tripId, @JsonKey(name: 'trip_type')  String? tripType, @JsonKey(name: 'trip_date')  DateTime? tripDate, @JsonKey(name: 'start_time')  DateTime? startTime, @JsonKey(name: 'end_time')  DateTime? endTime,  String? status, @JsonKey(name: 'student_count')  int? studentCount,  FleetDriverRef? drivers,  FleetBusRef? buses, @JsonKey(name: 'routes')  FleetRouteRef? route)?  $default,) {final _that = this;
switch (_that) {
case _FleetTrip() when $default != null:
return $default(_that.tripId,_that.tripType,_that.tripDate,_that.startTime,_that.endTime,_that.status,_that.studentCount,_that.drivers,_that.buses,_that.route);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FleetTrip implements FleetTrip {
  const _FleetTrip({@JsonKey(name: 'trip_id') required this.tripId, @JsonKey(name: 'trip_type') this.tripType, @JsonKey(name: 'trip_date') this.tripDate, @JsonKey(name: 'start_time') this.startTime, @JsonKey(name: 'end_time') this.endTime, this.status, @JsonKey(name: 'student_count') this.studentCount, this.drivers, this.buses, @JsonKey(name: 'routes') this.route});
  factory _FleetTrip.fromJson(Map<String, dynamic> json) => _$FleetTripFromJson(json);

@override@JsonKey(name: 'trip_id') final  String tripId;
@override@JsonKey(name: 'trip_type') final  String? tripType;
@override@JsonKey(name: 'trip_date') final  DateTime? tripDate;
@override@JsonKey(name: 'start_time') final  DateTime? startTime;
@override@JsonKey(name: 'end_time') final  DateTime? endTime;
@override final  String? status;
@override@JsonKey(name: 'student_count') final  int? studentCount;
@override final  FleetDriverRef? drivers;
@override final  FleetBusRef? buses;
@override@JsonKey(name: 'routes') final  FleetRouteRef? route;

/// Create a copy of FleetTrip
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FleetTripCopyWith<_FleetTrip> get copyWith => __$FleetTripCopyWithImpl<_FleetTrip>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FleetTripToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FleetTrip&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.tripType, tripType) || other.tripType == tripType)&&(identical(other.tripDate, tripDate) || other.tripDate == tripDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.studentCount, studentCount) || other.studentCount == studentCount)&&(identical(other.drivers, drivers) || other.drivers == drivers)&&(identical(other.buses, buses) || other.buses == buses)&&(identical(other.route, route) || other.route == route));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,tripId,tripType,tripDate,startTime,endTime,status,studentCount,drivers,buses,route);
}

@override
String toString() {
    return 'FleetTrip(tripId: $tripId, tripType: $tripType, tripDate: $tripDate, startTime: $startTime, endTime: $endTime, status: $status, studentCount: $studentCount, drivers: $drivers, buses: $buses, route: $route)';
}


}

/// @nodoc
abstract mixin class _$FleetTripCopyWith<$Res> implements $FleetTripCopyWith<$Res> {
  factory _$FleetTripCopyWith(_FleetTrip value, $Res Function(_FleetTrip) _then) = __$FleetTripCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'trip_id') String tripId,@JsonKey(name: 'trip_type') String? tripType,@JsonKey(name: 'trip_date') DateTime? tripDate,@JsonKey(name: 'start_time') DateTime? startTime,@JsonKey(name: 'end_time') DateTime? endTime, String? status,@JsonKey(name: 'student_count') int? studentCount, FleetDriverRef? drivers, FleetBusRef? buses,@JsonKey(name: 'routes') FleetRouteRef? route
});


@override $FleetDriverRefCopyWith<$Res>? get drivers;@override $FleetBusRefCopyWith<$Res>? get buses;@override $FleetRouteRefCopyWith<$Res>? get route;

}
/// @nodoc
class __$FleetTripCopyWithImpl<$Res>
    implements _$FleetTripCopyWith<$Res> {
  __$FleetTripCopyWithImpl(this._self, this._then);

  final _FleetTrip _self;
  final $Res Function(_FleetTrip) _then;

/// Create a copy of FleetTrip
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tripId = null,Object? tripType = freezed,Object? tripDate = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? status = freezed,Object? studentCount = freezed,Object? drivers = freezed,Object? buses = freezed,Object? route = freezed,}) {
  return _then(_FleetTrip(
tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as String,tripType: freezed == tripType ? _self.tripType : tripType // ignore: cast_nullable_to_non_nullable
as String?,tripDate: freezed == tripDate ? _self.tripDate : tripDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,studentCount: freezed == studentCount ? _self.studentCount : studentCount // ignore: cast_nullable_to_non_nullable
as int?,drivers: freezed == drivers ? _self.drivers : drivers // ignore: cast_nullable_to_non_nullable
as FleetDriverRef?,buses: freezed == buses ? _self.buses : buses // ignore: cast_nullable_to_non_nullable
as FleetBusRef?,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as FleetRouteRef?,
  ));
}

/// Create a copy of FleetTrip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetDriverRefCopyWith<$Res>? get drivers {
    if (_self.drivers == null) {
    return null;
  }

  return $FleetDriverRefCopyWith<$Res>(_self.drivers!, (value) {
    return _then(_self.copyWith(drivers: value));
  });
}/// Create a copy of FleetTrip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetBusRefCopyWith<$Res>? get buses {
    if (_self.buses == null) {
    return null;
  }

  return $FleetBusRefCopyWith<$Res>(_self.buses!, (value) {
    return _then(_self.copyWith(buses: value));
  });
}/// Create a copy of FleetTrip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FleetRouteRefCopyWith<$Res>? get route {
    if (_self.route == null) {
    return null;
  }

  return $FleetRouteRefCopyWith<$Res>(_self.route!, (value) {
    return _then(_self.copyWith(route: value));
  });
}
}


/// @nodoc
mixin _$DriverAttendanceReport {

 DateTime? get date; int get total; List<DriverAttendanceRow> get data;
/// Create a copy of DriverAttendanceReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriverAttendanceReportCopyWith<DriverAttendanceReport> get copyWith => _$DriverAttendanceReportCopyWithImpl<DriverAttendanceReport>(this as DriverAttendanceReport, _$identity);

  /// Serializes this DriverAttendanceReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DriverAttendanceReport;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriverAttendanceReport&&(identical(other.date, _this.date) || other.date == _this.date)&&(identical(other.total, _this.total) || other.total == _this.total)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DriverAttendanceReport;
  return Object.hash(runtimeType,_this.date,_this.total,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as DriverAttendanceReport;
  return 'DriverAttendanceReport(date: ${_this.date}, total: ${_this.total}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $DriverAttendanceReportCopyWith<$Res>  {
  factory $DriverAttendanceReportCopyWith(DriverAttendanceReport value, $Res Function(DriverAttendanceReport) _then) = _$DriverAttendanceReportCopyWithImpl;
@useResult
$Res call({
 DateTime? date, int total, List<DriverAttendanceRow> data
});




}
/// @nodoc
class _$DriverAttendanceReportCopyWithImpl<$Res>
    implements $DriverAttendanceReportCopyWith<$Res> {
  _$DriverAttendanceReportCopyWithImpl(this._self, this._then);

  final DriverAttendanceReport _self;
  final $Res Function(DriverAttendanceReport) _then;

/// Create a copy of DriverAttendanceReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? total = null,Object? data = null,}) {
  return _then(DriverAttendanceReport(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<DriverAttendanceRow>,
  ));
}

}


/// Adds pattern-matching-related methods to [DriverAttendanceReport].
extension DriverAttendanceReportPatterns on DriverAttendanceReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DriverAttendanceReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DriverAttendanceReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DriverAttendanceReport value)  $default,){
final _that = this;
switch (_that) {
case _DriverAttendanceReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DriverAttendanceReport value)?  $default,){
final _that = this;
switch (_that) {
case _DriverAttendanceReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? date,  int total,  List<DriverAttendanceRow> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DriverAttendanceReport() when $default != null:
return $default(_that.date,_that.total,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? date,  int total,  List<DriverAttendanceRow> data)  $default,) {final _that = this;
switch (_that) {
case _DriverAttendanceReport():
return $default(_that.date,_that.total,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? date,  int total,  List<DriverAttendanceRow> data)?  $default,) {final _that = this;
switch (_that) {
case _DriverAttendanceReport() when $default != null:
return $default(_that.date,_that.total,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DriverAttendanceReport implements DriverAttendanceReport {
  const _DriverAttendanceReport({this.date, this.total = 0,  List<DriverAttendanceRow> data = const <DriverAttendanceRow>[]}): _data = data;
  factory _DriverAttendanceReport.fromJson(Map<String, dynamic> json) => _$DriverAttendanceReportFromJson(json);

@override final  DateTime? date;
@override@JsonKey() final  int total;
 final  List<DriverAttendanceRow> _data;
@override@JsonKey() List<DriverAttendanceRow> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of DriverAttendanceReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverAttendanceReportCopyWith<_DriverAttendanceReport> get copyWith => __$DriverAttendanceReportCopyWithImpl<_DriverAttendanceReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DriverAttendanceReportToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverAttendanceReport&&(identical(other.date, date) || other.date == date)&&(identical(other.total, total) || other.total == total)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,date,total,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'DriverAttendanceReport(date: $date, total: $total, data: $data)';
}


}

/// @nodoc
abstract mixin class _$DriverAttendanceReportCopyWith<$Res> implements $DriverAttendanceReportCopyWith<$Res> {
  factory _$DriverAttendanceReportCopyWith(_DriverAttendanceReport value, $Res Function(_DriverAttendanceReport) _then) = __$DriverAttendanceReportCopyWithImpl;
@override @useResult
$Res call({
 DateTime? date, int total, List<DriverAttendanceRow> data
});




}
/// @nodoc
class __$DriverAttendanceReportCopyWithImpl<$Res>
    implements _$DriverAttendanceReportCopyWith<$Res> {
  __$DriverAttendanceReportCopyWithImpl(this._self, this._then);

  final _DriverAttendanceReport _self;
  final $Res Function(_DriverAttendanceReport) _then;

/// Create a copy of DriverAttendanceReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? total = null,Object? data = null,}) {
  return _then(_DriverAttendanceReport(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<DriverAttendanceRow>,
  ));
}


}


/// @nodoc
mixin _$DriverAttendanceRow {

@JsonKey(name: 'driver_id') String get driverId; String get name; String? get phone; DriverAttendanceMark? get attendance;
/// Create a copy of DriverAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriverAttendanceRowCopyWith<DriverAttendanceRow> get copyWith => _$DriverAttendanceRowCopyWithImpl<DriverAttendanceRow>(this as DriverAttendanceRow, _$identity);

  /// Serializes this DriverAttendanceRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DriverAttendanceRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriverAttendanceRow&&(identical(other.driverId, _this.driverId) || other.driverId == _this.driverId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.attendance, _this.attendance) || other.attendance == _this.attendance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DriverAttendanceRow;
  return Object.hash(runtimeType,_this.driverId,_this.name,_this.phone,_this.attendance);
}

@override
String toString() {
  final _this = this as DriverAttendanceRow;
  return 'DriverAttendanceRow(driverId: ${_this.driverId}, name: ${_this.name}, phone: ${_this.phone}, attendance: ${_this.attendance})';
}


}

/// @nodoc
abstract mixin class $DriverAttendanceRowCopyWith<$Res>  {
  factory $DriverAttendanceRowCopyWith(DriverAttendanceRow value, $Res Function(DriverAttendanceRow) _then) = _$DriverAttendanceRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'driver_id') String driverId, String name, String? phone, DriverAttendanceMark? attendance
});


$DriverAttendanceMarkCopyWith<$Res>? get attendance;

}
/// @nodoc
class _$DriverAttendanceRowCopyWithImpl<$Res>
    implements $DriverAttendanceRowCopyWith<$Res> {
  _$DriverAttendanceRowCopyWithImpl(this._self, this._then);

  final DriverAttendanceRow _self;
  final $Res Function(DriverAttendanceRow) _then;

/// Create a copy of DriverAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? driverId = null,Object? name = null,Object? phone = freezed,Object? attendance = freezed,}) {
  return _then(DriverAttendanceRow(
driverId: null == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,attendance: freezed == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as DriverAttendanceMark?,
  ));
}
/// Create a copy of DriverAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DriverAttendanceMarkCopyWith<$Res>? get attendance {
    if (_self.attendance == null) {
    return null;
  }

  return $DriverAttendanceMarkCopyWith<$Res>(_self.attendance!, (value) {
    return _then(_self.copyWith(attendance: value));
  });
}
}


/// Adds pattern-matching-related methods to [DriverAttendanceRow].
extension DriverAttendanceRowPatterns on DriverAttendanceRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DriverAttendanceRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DriverAttendanceRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DriverAttendanceRow value)  $default,){
final _that = this;
switch (_that) {
case _DriverAttendanceRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DriverAttendanceRow value)?  $default,){
final _that = this;
switch (_that) {
case _DriverAttendanceRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'driver_id')  String driverId,  String name,  String? phone,  DriverAttendanceMark? attendance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DriverAttendanceRow() when $default != null:
return $default(_that.driverId,_that.name,_that.phone,_that.attendance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'driver_id')  String driverId,  String name,  String? phone,  DriverAttendanceMark? attendance)  $default,) {final _that = this;
switch (_that) {
case _DriverAttendanceRow():
return $default(_that.driverId,_that.name,_that.phone,_that.attendance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'driver_id')  String driverId,  String name,  String? phone,  DriverAttendanceMark? attendance)?  $default,) {final _that = this;
switch (_that) {
case _DriverAttendanceRow() when $default != null:
return $default(_that.driverId,_that.name,_that.phone,_that.attendance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DriverAttendanceRow implements DriverAttendanceRow {
  const _DriverAttendanceRow({@JsonKey(name: 'driver_id') required this.driverId, this.name = '', this.phone, this.attendance});
  factory _DriverAttendanceRow.fromJson(Map<String, dynamic> json) => _$DriverAttendanceRowFromJson(json);

@override@JsonKey(name: 'driver_id') final  String driverId;
@override@JsonKey() final  String name;
@override final  String? phone;
@override final  DriverAttendanceMark? attendance;

/// Create a copy of DriverAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverAttendanceRowCopyWith<_DriverAttendanceRow> get copyWith => __$DriverAttendanceRowCopyWithImpl<_DriverAttendanceRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DriverAttendanceRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverAttendanceRow&&(identical(other.driverId, driverId) || other.driverId == driverId)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.attendance, attendance) || other.attendance == attendance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,driverId,name,phone,attendance);
}

@override
String toString() {
    return 'DriverAttendanceRow(driverId: $driverId, name: $name, phone: $phone, attendance: $attendance)';
}


}

/// @nodoc
abstract mixin class _$DriverAttendanceRowCopyWith<$Res> implements $DriverAttendanceRowCopyWith<$Res> {
  factory _$DriverAttendanceRowCopyWith(_DriverAttendanceRow value, $Res Function(_DriverAttendanceRow) _then) = __$DriverAttendanceRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'driver_id') String driverId, String name, String? phone, DriverAttendanceMark? attendance
});


@override $DriverAttendanceMarkCopyWith<$Res>? get attendance;

}
/// @nodoc
class __$DriverAttendanceRowCopyWithImpl<$Res>
    implements _$DriverAttendanceRowCopyWith<$Res> {
  __$DriverAttendanceRowCopyWithImpl(this._self, this._then);

  final _DriverAttendanceRow _self;
  final $Res Function(_DriverAttendanceRow) _then;

/// Create a copy of DriverAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? driverId = null,Object? name = null,Object? phone = freezed,Object? attendance = freezed,}) {
  return _then(_DriverAttendanceRow(
driverId: null == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,attendance: freezed == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as DriverAttendanceMark?,
  ));
}

/// Create a copy of DriverAttendanceRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DriverAttendanceMarkCopyWith<$Res>? get attendance {
    if (_self.attendance == null) {
    return null;
  }

  return $DriverAttendanceMarkCopyWith<$Res>(_self.attendance!, (value) {
    return _then(_self.copyWith(attendance: value));
  });
}
}


/// @nodoc
mixin _$DriverAttendanceMark {

@JsonKey(name: 'attendance_id') String? get attendanceId; String? get status; String? get remarks;
/// Create a copy of DriverAttendanceMark
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriverAttendanceMarkCopyWith<DriverAttendanceMark> get copyWith => _$DriverAttendanceMarkCopyWithImpl<DriverAttendanceMark>(this as DriverAttendanceMark, _$identity);

  /// Serializes this DriverAttendanceMark to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DriverAttendanceMark;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriverAttendanceMark&&(identical(other.attendanceId, _this.attendanceId) || other.attendanceId == _this.attendanceId)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DriverAttendanceMark;
  return Object.hash(runtimeType,_this.attendanceId,_this.status,_this.remarks);
}

@override
String toString() {
  final _this = this as DriverAttendanceMark;
  return 'DriverAttendanceMark(attendanceId: ${_this.attendanceId}, status: ${_this.status}, remarks: ${_this.remarks})';
}


}

/// @nodoc
abstract mixin class $DriverAttendanceMarkCopyWith<$Res>  {
  factory $DriverAttendanceMarkCopyWith(DriverAttendanceMark value, $Res Function(DriverAttendanceMark) _then) = _$DriverAttendanceMarkCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'attendance_id') String? attendanceId, String? status, String? remarks
});




}
/// @nodoc
class _$DriverAttendanceMarkCopyWithImpl<$Res>
    implements $DriverAttendanceMarkCopyWith<$Res> {
  _$DriverAttendanceMarkCopyWithImpl(this._self, this._then);

  final DriverAttendanceMark _self;
  final $Res Function(DriverAttendanceMark) _then;

/// Create a copy of DriverAttendanceMark
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attendanceId = freezed,Object? status = freezed,Object? remarks = freezed,}) {
  return _then(DriverAttendanceMark(
attendanceId: freezed == attendanceId ? _self.attendanceId : attendanceId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DriverAttendanceMark].
extension DriverAttendanceMarkPatterns on DriverAttendanceMark {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DriverAttendanceMark value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DriverAttendanceMark() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DriverAttendanceMark value)  $default,){
final _that = this;
switch (_that) {
case _DriverAttendanceMark():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DriverAttendanceMark value)?  $default,){
final _that = this;
switch (_that) {
case _DriverAttendanceMark() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_id')  String? attendanceId,  String? status,  String? remarks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DriverAttendanceMark() when $default != null:
return $default(_that.attendanceId,_that.status,_that.remarks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'attendance_id')  String? attendanceId,  String? status,  String? remarks)  $default,) {final _that = this;
switch (_that) {
case _DriverAttendanceMark():
return $default(_that.attendanceId,_that.status,_that.remarks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'attendance_id')  String? attendanceId,  String? status,  String? remarks)?  $default,) {final _that = this;
switch (_that) {
case _DriverAttendanceMark() when $default != null:
return $default(_that.attendanceId,_that.status,_that.remarks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DriverAttendanceMark implements DriverAttendanceMark {
  const _DriverAttendanceMark({@JsonKey(name: 'attendance_id') this.attendanceId, this.status, this.remarks});
  factory _DriverAttendanceMark.fromJson(Map<String, dynamic> json) => _$DriverAttendanceMarkFromJson(json);

@override@JsonKey(name: 'attendance_id') final  String? attendanceId;
@override final  String? status;
@override final  String? remarks;

/// Create a copy of DriverAttendanceMark
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverAttendanceMarkCopyWith<_DriverAttendanceMark> get copyWith => __$DriverAttendanceMarkCopyWithImpl<_DriverAttendanceMark>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DriverAttendanceMarkToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverAttendanceMark&&(identical(other.attendanceId, attendanceId) || other.attendanceId == attendanceId)&&(identical(other.status, status) || other.status == status)&&(identical(other.remarks, remarks) || other.remarks == remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,attendanceId,status,remarks);
}

@override
String toString() {
    return 'DriverAttendanceMark(attendanceId: $attendanceId, status: $status, remarks: $remarks)';
}


}

/// @nodoc
abstract mixin class _$DriverAttendanceMarkCopyWith<$Res> implements $DriverAttendanceMarkCopyWith<$Res> {
  factory _$DriverAttendanceMarkCopyWith(_DriverAttendanceMark value, $Res Function(_DriverAttendanceMark) _then) = __$DriverAttendanceMarkCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'attendance_id') String? attendanceId, String? status, String? remarks
});




}
/// @nodoc
class __$DriverAttendanceMarkCopyWithImpl<$Res>
    implements _$DriverAttendanceMarkCopyWith<$Res> {
  __$DriverAttendanceMarkCopyWithImpl(this._self, this._then);

  final _DriverAttendanceMark _self;
  final $Res Function(_DriverAttendanceMark) _then;

/// Create a copy of DriverAttendanceMark
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attendanceId = freezed,Object? status = freezed,Object? remarks = freezed,}) {
  return _then(_DriverAttendanceMark(
attendanceId: freezed == attendanceId ? _self.attendanceId : attendanceId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FleetDriverDocument {

@JsonKey(name: 'document_id') String get documentId;@JsonKey(name: 'document_type') String? get documentType;@JsonKey(name: 'document_name') String? get documentName;@JsonKey(name: 'file_name') String? get fileName;@JsonKey(name: 'file_url') String? get fileUrl;@JsonKey(name: 'file_size')@LooseNumConverter() num? get fileSize;@JsonKey(name: 'expiry_date') DateTime? get expiryDate;@JsonKey(name: 'verification_status') String? get verificationStatus; String? get remarks;@JsonKey(name: 'uploaded_at') DateTime? get uploadedAt;
/// Create a copy of FleetDriverDocument
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FleetDriverDocumentCopyWith<FleetDriverDocument> get copyWith => _$FleetDriverDocumentCopyWithImpl<FleetDriverDocument>(this as FleetDriverDocument, _$identity);

  /// Serializes this FleetDriverDocument to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FleetDriverDocument;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FleetDriverDocument&&(identical(other.documentId, _this.documentId) || other.documentId == _this.documentId)&&(identical(other.documentType, _this.documentType) || other.documentType == _this.documentType)&&(identical(other.documentName, _this.documentName) || other.documentName == _this.documentName)&&(identical(other.fileName, _this.fileName) || other.fileName == _this.fileName)&&(identical(other.fileUrl, _this.fileUrl) || other.fileUrl == _this.fileUrl)&&(identical(other.fileSize, _this.fileSize) || other.fileSize == _this.fileSize)&&(identical(other.expiryDate, _this.expiryDate) || other.expiryDate == _this.expiryDate)&&(identical(other.verificationStatus, _this.verificationStatus) || other.verificationStatus == _this.verificationStatus)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.uploadedAt, _this.uploadedAt) || other.uploadedAt == _this.uploadedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FleetDriverDocument;
  return Object.hash(runtimeType,_this.documentId,_this.documentType,_this.documentName,_this.fileName,_this.fileUrl,_this.fileSize,_this.expiryDate,_this.verificationStatus,_this.remarks,_this.uploadedAt);
}

@override
String toString() {
  final _this = this as FleetDriverDocument;
  return 'FleetDriverDocument(documentId: ${_this.documentId}, documentType: ${_this.documentType}, documentName: ${_this.documentName}, fileName: ${_this.fileName}, fileUrl: ${_this.fileUrl}, fileSize: ${_this.fileSize}, expiryDate: ${_this.expiryDate}, verificationStatus: ${_this.verificationStatus}, remarks: ${_this.remarks}, uploadedAt: ${_this.uploadedAt})';
}


}

/// @nodoc
abstract mixin class $FleetDriverDocumentCopyWith<$Res>  {
  factory $FleetDriverDocumentCopyWith(FleetDriverDocument value, $Res Function(FleetDriverDocument) _then) = _$FleetDriverDocumentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'document_id') String documentId,@JsonKey(name: 'document_type') String? documentType,@JsonKey(name: 'document_name') String? documentName,@JsonKey(name: 'file_name') String? fileName,@JsonKey(name: 'file_url') String? fileUrl,@JsonKey(name: 'file_size')@LooseNumConverter() num? fileSize,@JsonKey(name: 'expiry_date') DateTime? expiryDate,@JsonKey(name: 'verification_status') String? verificationStatus, String? remarks,@JsonKey(name: 'uploaded_at') DateTime? uploadedAt
});




}
/// @nodoc
class _$FleetDriverDocumentCopyWithImpl<$Res>
    implements $FleetDriverDocumentCopyWith<$Res> {
  _$FleetDriverDocumentCopyWithImpl(this._self, this._then);

  final FleetDriverDocument _self;
  final $Res Function(FleetDriverDocument) _then;

/// Create a copy of FleetDriverDocument
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? documentId = null,Object? documentType = freezed,Object? documentName = freezed,Object? fileName = freezed,Object? fileUrl = freezed,Object? fileSize = freezed,Object? expiryDate = freezed,Object? verificationStatus = freezed,Object? remarks = freezed,Object? uploadedAt = freezed,}) {
  return _then(FleetDriverDocument(
documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,documentType: freezed == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as String?,documentName: freezed == documentName ? _self.documentName : documentName // ignore: cast_nullable_to_non_nullable
as String?,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,fileUrl: freezed == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String?,fileSize: freezed == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as num?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [FleetDriverDocument].
extension FleetDriverDocumentPatterns on FleetDriverDocument {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FleetDriverDocument value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FleetDriverDocument() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FleetDriverDocument value)  $default,){
final _that = this;
switch (_that) {
case _FleetDriverDocument():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FleetDriverDocument value)?  $default,){
final _that = this;
switch (_that) {
case _FleetDriverDocument() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'document_type')  String? documentType, @JsonKey(name: 'document_name')  String? documentName, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'file_url')  String? fileUrl, @JsonKey(name: 'file_size')@LooseNumConverter()  num? fileSize, @JsonKey(name: 'expiry_date')  DateTime? expiryDate, @JsonKey(name: 'verification_status')  String? verificationStatus,  String? remarks, @JsonKey(name: 'uploaded_at')  DateTime? uploadedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FleetDriverDocument() when $default != null:
return $default(_that.documentId,_that.documentType,_that.documentName,_that.fileName,_that.fileUrl,_that.fileSize,_that.expiryDate,_that.verificationStatus,_that.remarks,_that.uploadedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'document_type')  String? documentType, @JsonKey(name: 'document_name')  String? documentName, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'file_url')  String? fileUrl, @JsonKey(name: 'file_size')@LooseNumConverter()  num? fileSize, @JsonKey(name: 'expiry_date')  DateTime? expiryDate, @JsonKey(name: 'verification_status')  String? verificationStatus,  String? remarks, @JsonKey(name: 'uploaded_at')  DateTime? uploadedAt)  $default,) {final _that = this;
switch (_that) {
case _FleetDriverDocument():
return $default(_that.documentId,_that.documentType,_that.documentName,_that.fileName,_that.fileUrl,_that.fileSize,_that.expiryDate,_that.verificationStatus,_that.remarks,_that.uploadedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'document_id')  String documentId, @JsonKey(name: 'document_type')  String? documentType, @JsonKey(name: 'document_name')  String? documentName, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'file_url')  String? fileUrl, @JsonKey(name: 'file_size')@LooseNumConverter()  num? fileSize, @JsonKey(name: 'expiry_date')  DateTime? expiryDate, @JsonKey(name: 'verification_status')  String? verificationStatus,  String? remarks, @JsonKey(name: 'uploaded_at')  DateTime? uploadedAt)?  $default,) {final _that = this;
switch (_that) {
case _FleetDriverDocument() when $default != null:
return $default(_that.documentId,_that.documentType,_that.documentName,_that.fileName,_that.fileUrl,_that.fileSize,_that.expiryDate,_that.verificationStatus,_that.remarks,_that.uploadedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FleetDriverDocument implements FleetDriverDocument {
  const _FleetDriverDocument({@JsonKey(name: 'document_id') required this.documentId, @JsonKey(name: 'document_type') this.documentType, @JsonKey(name: 'document_name') this.documentName, @JsonKey(name: 'file_name') this.fileName, @JsonKey(name: 'file_url') this.fileUrl, @JsonKey(name: 'file_size')@LooseNumConverter() this.fileSize, @JsonKey(name: 'expiry_date') this.expiryDate, @JsonKey(name: 'verification_status') this.verificationStatus, this.remarks, @JsonKey(name: 'uploaded_at') this.uploadedAt});
  factory _FleetDriverDocument.fromJson(Map<String, dynamic> json) => _$FleetDriverDocumentFromJson(json);

@override@JsonKey(name: 'document_id') final  String documentId;
@override@JsonKey(name: 'document_type') final  String? documentType;
@override@JsonKey(name: 'document_name') final  String? documentName;
@override@JsonKey(name: 'file_name') final  String? fileName;
@override@JsonKey(name: 'file_url') final  String? fileUrl;
@override@JsonKey(name: 'file_size')@LooseNumConverter() final  num? fileSize;
@override@JsonKey(name: 'expiry_date') final  DateTime? expiryDate;
@override@JsonKey(name: 'verification_status') final  String? verificationStatus;
@override final  String? remarks;
@override@JsonKey(name: 'uploaded_at') final  DateTime? uploadedAt;

/// Create a copy of FleetDriverDocument
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FleetDriverDocumentCopyWith<_FleetDriverDocument> get copyWith => __$FleetDriverDocumentCopyWithImpl<_FleetDriverDocument>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FleetDriverDocumentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FleetDriverDocument&&(identical(other.documentId, documentId) || other.documentId == documentId)&&(identical(other.documentType, documentType) || other.documentType == documentType)&&(identical(other.documentName, documentName) || other.documentName == documentName)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.verificationStatus, verificationStatus) || other.verificationStatus == verificationStatus)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,documentId,documentType,documentName,fileName,fileUrl,fileSize,expiryDate,verificationStatus,remarks,uploadedAt);
}

@override
String toString() {
    return 'FleetDriverDocument(documentId: $documentId, documentType: $documentType, documentName: $documentName, fileName: $fileName, fileUrl: $fileUrl, fileSize: $fileSize, expiryDate: $expiryDate, verificationStatus: $verificationStatus, remarks: $remarks, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class _$FleetDriverDocumentCopyWith<$Res> implements $FleetDriverDocumentCopyWith<$Res> {
  factory _$FleetDriverDocumentCopyWith(_FleetDriverDocument value, $Res Function(_FleetDriverDocument) _then) = __$FleetDriverDocumentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'document_id') String documentId,@JsonKey(name: 'document_type') String? documentType,@JsonKey(name: 'document_name') String? documentName,@JsonKey(name: 'file_name') String? fileName,@JsonKey(name: 'file_url') String? fileUrl,@JsonKey(name: 'file_size')@LooseNumConverter() num? fileSize,@JsonKey(name: 'expiry_date') DateTime? expiryDate,@JsonKey(name: 'verification_status') String? verificationStatus, String? remarks,@JsonKey(name: 'uploaded_at') DateTime? uploadedAt
});




}
/// @nodoc
class __$FleetDriverDocumentCopyWithImpl<$Res>
    implements _$FleetDriverDocumentCopyWith<$Res> {
  __$FleetDriverDocumentCopyWithImpl(this._self, this._then);

  final _FleetDriverDocument _self;
  final $Res Function(_FleetDriverDocument) _then;

/// Create a copy of FleetDriverDocument
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? documentId = null,Object? documentType = freezed,Object? documentName = freezed,Object? fileName = freezed,Object? fileUrl = freezed,Object? fileSize = freezed,Object? expiryDate = freezed,Object? verificationStatus = freezed,Object? remarks = freezed,Object? uploadedAt = freezed,}) {
  return _then(_FleetDriverDocument(
documentId: null == documentId ? _self.documentId : documentId // ignore: cast_nullable_to_non_nullable
as String,documentType: freezed == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as String?,documentName: freezed == documentName ? _self.documentName : documentName // ignore: cast_nullable_to_non_nullable
as String?,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,fileUrl: freezed == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String?,fileSize: freezed == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as num?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,verificationStatus: freezed == verificationStatus ? _self.verificationStatus : verificationStatus // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$LiveBoard {

@JsonKey(name: 'generated_at') DateTime? get generatedAt;@JsonKey(name: 'late_threshold_minutes') int? get lateThresholdMinutes; LiveBoardSummary get summary; List<LiveRouteRow> get rows;@JsonKey(name: 'open_sos') List<LiveSosAlert> get openSos;
/// Create a copy of LiveBoard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveBoardCopyWith<LiveBoard> get copyWith => _$LiveBoardCopyWithImpl<LiveBoard>(this as LiveBoard, _$identity);

  /// Serializes this LiveBoard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LiveBoard;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveBoard&&(identical(other.generatedAt, _this.generatedAt) || other.generatedAt == _this.generatedAt)&&(identical(other.lateThresholdMinutes, _this.lateThresholdMinutes) || other.lateThresholdMinutes == _this.lateThresholdMinutes)&&(identical(other.summary, _this.summary) || other.summary == _this.summary)&&const DeepCollectionEquality().equals(other.rows, _this.rows)&&const DeepCollectionEquality().equals(other.openSos, _this.openSos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LiveBoard;
  return Object.hash(runtimeType,_this.generatedAt,_this.lateThresholdMinutes,_this.summary,const DeepCollectionEquality().hash(_this.rows),const DeepCollectionEquality().hash(_this.openSos));
}

@override
String toString() {
  final _this = this as LiveBoard;
  return 'LiveBoard(generatedAt: ${_this.generatedAt}, lateThresholdMinutes: ${_this.lateThresholdMinutes}, summary: ${_this.summary}, rows: ${_this.rows}, openSos: ${_this.openSos})';
}


}

/// @nodoc
abstract mixin class $LiveBoardCopyWith<$Res>  {
  factory $LiveBoardCopyWith(LiveBoard value, $Res Function(LiveBoard) _then) = _$LiveBoardCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'generated_at') DateTime? generatedAt,@JsonKey(name: 'late_threshold_minutes') int? lateThresholdMinutes, LiveBoardSummary summary, List<LiveRouteRow> rows,@JsonKey(name: 'open_sos') List<LiveSosAlert> openSos
});


$LiveBoardSummaryCopyWith<$Res> get summary;

}
/// @nodoc
class _$LiveBoardCopyWithImpl<$Res>
    implements $LiveBoardCopyWith<$Res> {
  _$LiveBoardCopyWithImpl(this._self, this._then);

  final LiveBoard _self;
  final $Res Function(LiveBoard) _then;

/// Create a copy of LiveBoard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? generatedAt = freezed,Object? lateThresholdMinutes = freezed,Object? summary = null,Object? rows = null,Object? openSos = null,}) {
  return _then(LiveBoard(
generatedAt: freezed == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lateThresholdMinutes: freezed == lateThresholdMinutes ? _self.lateThresholdMinutes : lateThresholdMinutes // ignore: cast_nullable_to_non_nullable
as int?,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as LiveBoardSummary,rows: null == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as List<LiveRouteRow>,openSos: null == openSos ? _self.openSos : openSos // ignore: cast_nullable_to_non_nullable
as List<LiveSosAlert>,
  ));
}
/// Create a copy of LiveBoard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LiveBoardSummaryCopyWith<$Res> get summary {
  
  return $LiveBoardSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [LiveBoard].
extension LiveBoardPatterns on LiveBoard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveBoard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveBoard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveBoard value)  $default,){
final _that = this;
switch (_that) {
case _LiveBoard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveBoard value)?  $default,){
final _that = this;
switch (_that) {
case _LiveBoard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'generated_at')  DateTime? generatedAt, @JsonKey(name: 'late_threshold_minutes')  int? lateThresholdMinutes,  LiveBoardSummary summary,  List<LiveRouteRow> rows, @JsonKey(name: 'open_sos')  List<LiveSosAlert> openSos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveBoard() when $default != null:
return $default(_that.generatedAt,_that.lateThresholdMinutes,_that.summary,_that.rows,_that.openSos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'generated_at')  DateTime? generatedAt, @JsonKey(name: 'late_threshold_minutes')  int? lateThresholdMinutes,  LiveBoardSummary summary,  List<LiveRouteRow> rows, @JsonKey(name: 'open_sos')  List<LiveSosAlert> openSos)  $default,) {final _that = this;
switch (_that) {
case _LiveBoard():
return $default(_that.generatedAt,_that.lateThresholdMinutes,_that.summary,_that.rows,_that.openSos);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'generated_at')  DateTime? generatedAt, @JsonKey(name: 'late_threshold_minutes')  int? lateThresholdMinutes,  LiveBoardSummary summary,  List<LiveRouteRow> rows, @JsonKey(name: 'open_sos')  List<LiveSosAlert> openSos)?  $default,) {final _that = this;
switch (_that) {
case _LiveBoard() when $default != null:
return $default(_that.generatedAt,_that.lateThresholdMinutes,_that.summary,_that.rows,_that.openSos);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LiveBoard implements LiveBoard {
  const _LiveBoard({@JsonKey(name: 'generated_at') this.generatedAt, @JsonKey(name: 'late_threshold_minutes') this.lateThresholdMinutes, this.summary = const LiveBoardSummary(),  List<LiveRouteRow> rows = const <LiveRouteRow>[], @JsonKey(name: 'open_sos')  List<LiveSosAlert> openSos = const <LiveSosAlert>[]}): _rows = rows,_openSos = openSos;
  factory _LiveBoard.fromJson(Map<String, dynamic> json) => _$LiveBoardFromJson(json);

@override@JsonKey(name: 'generated_at') final  DateTime? generatedAt;
@override@JsonKey(name: 'late_threshold_minutes') final  int? lateThresholdMinutes;
@override@JsonKey() final  LiveBoardSummary summary;
 final  List<LiveRouteRow> _rows;
@override@JsonKey() List<LiveRouteRow> get rows {
  if (_rows is EqualUnmodifiableListView) return _rows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rows);
}

 final  List<LiveSosAlert> _openSos;
@override@JsonKey(name: 'open_sos') List<LiveSosAlert> get openSos {
  if (_openSos is EqualUnmodifiableListView) return _openSos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_openSos);
}


/// Create a copy of LiveBoard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveBoardCopyWith<_LiveBoard> get copyWith => __$LiveBoardCopyWithImpl<_LiveBoard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiveBoardToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveBoard&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&(identical(other.lateThresholdMinutes, lateThresholdMinutes) || other.lateThresholdMinutes == lateThresholdMinutes)&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other.rows, _rows)&&const DeepCollectionEquality().equals(other.openSos, _openSos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,generatedAt,lateThresholdMinutes,summary,const DeepCollectionEquality().hash(_rows),const DeepCollectionEquality().hash(_openSos));
}

@override
String toString() {
    return 'LiveBoard(generatedAt: $generatedAt, lateThresholdMinutes: $lateThresholdMinutes, summary: $summary, rows: $rows, openSos: $openSos)';
}


}

/// @nodoc
abstract mixin class _$LiveBoardCopyWith<$Res> implements $LiveBoardCopyWith<$Res> {
  factory _$LiveBoardCopyWith(_LiveBoard value, $Res Function(_LiveBoard) _then) = __$LiveBoardCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'generated_at') DateTime? generatedAt,@JsonKey(name: 'late_threshold_minutes') int? lateThresholdMinutes, LiveBoardSummary summary, List<LiveRouteRow> rows,@JsonKey(name: 'open_sos') List<LiveSosAlert> openSos
});


@override $LiveBoardSummaryCopyWith<$Res> get summary;

}
/// @nodoc
class __$LiveBoardCopyWithImpl<$Res>
    implements _$LiveBoardCopyWith<$Res> {
  __$LiveBoardCopyWithImpl(this._self, this._then);

  final _LiveBoard _self;
  final $Res Function(_LiveBoard) _then;

/// Create a copy of LiveBoard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? generatedAt = freezed,Object? lateThresholdMinutes = freezed,Object? summary = null,Object? rows = null,Object? openSos = null,}) {
  return _then(_LiveBoard(
generatedAt: freezed == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lateThresholdMinutes: freezed == lateThresholdMinutes ? _self.lateThresholdMinutes : lateThresholdMinutes // ignore: cast_nullable_to_non_nullable
as int?,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as LiveBoardSummary,rows: null == rows ? _self._rows : rows // ignore: cast_nullable_to_non_nullable
as List<LiveRouteRow>,openSos: null == openSos ? _self._openSos : openSos // ignore: cast_nullable_to_non_nullable
as List<LiveSosAlert>,
  ));
}

/// Create a copy of LiveBoard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LiveBoardSummaryCopyWith<$Res> get summary {
  
  return $LiveBoardSummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// @nodoc
mixin _$LiveBoardSummary {

 int get routes;@JsonKey(name: 'on_road') int get onRoad; int get late;@JsonKey(name: 'not_started') int get notStarted;@JsonKey(name: 'not_started_late') int get notStartedLate; int get completed; int get cancelled;@JsonKey(name: 'open_sos') int get openSos;@JsonKey(name: 'needs_attention') int get needsAttention;
/// Create a copy of LiveBoardSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveBoardSummaryCopyWith<LiveBoardSummary> get copyWith => _$LiveBoardSummaryCopyWithImpl<LiveBoardSummary>(this as LiveBoardSummary, _$identity);

  /// Serializes this LiveBoardSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LiveBoardSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveBoardSummary&&(identical(other.routes, _this.routes) || other.routes == _this.routes)&&(identical(other.onRoad, _this.onRoad) || other.onRoad == _this.onRoad)&&(identical(other.late, _this.late) || other.late == _this.late)&&(identical(other.notStarted, _this.notStarted) || other.notStarted == _this.notStarted)&&(identical(other.notStartedLate, _this.notStartedLate) || other.notStartedLate == _this.notStartedLate)&&(identical(other.completed, _this.completed) || other.completed == _this.completed)&&(identical(other.cancelled, _this.cancelled) || other.cancelled == _this.cancelled)&&(identical(other.openSos, _this.openSos) || other.openSos == _this.openSos)&&(identical(other.needsAttention, _this.needsAttention) || other.needsAttention == _this.needsAttention));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LiveBoardSummary;
  return Object.hash(runtimeType,_this.routes,_this.onRoad,_this.late,_this.notStarted,_this.notStartedLate,_this.completed,_this.cancelled,_this.openSos,_this.needsAttention);
}

@override
String toString() {
  final _this = this as LiveBoardSummary;
  return 'LiveBoardSummary(routes: ${_this.routes}, onRoad: ${_this.onRoad}, late: ${_this.late}, notStarted: ${_this.notStarted}, notStartedLate: ${_this.notStartedLate}, completed: ${_this.completed}, cancelled: ${_this.cancelled}, openSos: ${_this.openSos}, needsAttention: ${_this.needsAttention})';
}


}

/// @nodoc
abstract mixin class $LiveBoardSummaryCopyWith<$Res>  {
  factory $LiveBoardSummaryCopyWith(LiveBoardSummary value, $Res Function(LiveBoardSummary) _then) = _$LiveBoardSummaryCopyWithImpl;
@useResult
$Res call({
 int routes,@JsonKey(name: 'on_road') int onRoad, int late,@JsonKey(name: 'not_started') int notStarted,@JsonKey(name: 'not_started_late') int notStartedLate, int completed, int cancelled,@JsonKey(name: 'open_sos') int openSos,@JsonKey(name: 'needs_attention') int needsAttention
});




}
/// @nodoc
class _$LiveBoardSummaryCopyWithImpl<$Res>
    implements $LiveBoardSummaryCopyWith<$Res> {
  _$LiveBoardSummaryCopyWithImpl(this._self, this._then);

  final LiveBoardSummary _self;
  final $Res Function(LiveBoardSummary) _then;

/// Create a copy of LiveBoardSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routes = null,Object? onRoad = null,Object? late = null,Object? notStarted = null,Object? notStartedLate = null,Object? completed = null,Object? cancelled = null,Object? openSos = null,Object? needsAttention = null,}) {
  return _then(LiveBoardSummary(
routes: null == routes ? _self.routes : routes // ignore: cast_nullable_to_non_nullable
as int,onRoad: null == onRoad ? _self.onRoad : onRoad // ignore: cast_nullable_to_non_nullable
as int,late: null == late ? _self.late : late // ignore: cast_nullable_to_non_nullable
as int,notStarted: null == notStarted ? _self.notStarted : notStarted // ignore: cast_nullable_to_non_nullable
as int,notStartedLate: null == notStartedLate ? _self.notStartedLate : notStartedLate // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,cancelled: null == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as int,openSos: null == openSos ? _self.openSos : openSos // ignore: cast_nullable_to_non_nullable
as int,needsAttention: null == needsAttention ? _self.needsAttention : needsAttention // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LiveBoardSummary].
extension LiveBoardSummaryPatterns on LiveBoardSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveBoardSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveBoardSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveBoardSummary value)  $default,){
final _that = this;
switch (_that) {
case _LiveBoardSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveBoardSummary value)?  $default,){
final _that = this;
switch (_that) {
case _LiveBoardSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int routes, @JsonKey(name: 'on_road')  int onRoad,  int late, @JsonKey(name: 'not_started')  int notStarted, @JsonKey(name: 'not_started_late')  int notStartedLate,  int completed,  int cancelled, @JsonKey(name: 'open_sos')  int openSos, @JsonKey(name: 'needs_attention')  int needsAttention)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveBoardSummary() when $default != null:
return $default(_that.routes,_that.onRoad,_that.late,_that.notStarted,_that.notStartedLate,_that.completed,_that.cancelled,_that.openSos,_that.needsAttention);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int routes, @JsonKey(name: 'on_road')  int onRoad,  int late, @JsonKey(name: 'not_started')  int notStarted, @JsonKey(name: 'not_started_late')  int notStartedLate,  int completed,  int cancelled, @JsonKey(name: 'open_sos')  int openSos, @JsonKey(name: 'needs_attention')  int needsAttention)  $default,) {final _that = this;
switch (_that) {
case _LiveBoardSummary():
return $default(_that.routes,_that.onRoad,_that.late,_that.notStarted,_that.notStartedLate,_that.completed,_that.cancelled,_that.openSos,_that.needsAttention);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int routes, @JsonKey(name: 'on_road')  int onRoad,  int late, @JsonKey(name: 'not_started')  int notStarted, @JsonKey(name: 'not_started_late')  int notStartedLate,  int completed,  int cancelled, @JsonKey(name: 'open_sos')  int openSos, @JsonKey(name: 'needs_attention')  int needsAttention)?  $default,) {final _that = this;
switch (_that) {
case _LiveBoardSummary() when $default != null:
return $default(_that.routes,_that.onRoad,_that.late,_that.notStarted,_that.notStartedLate,_that.completed,_that.cancelled,_that.openSos,_that.needsAttention);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LiveBoardSummary implements LiveBoardSummary {
  const _LiveBoardSummary({this.routes = 0, @JsonKey(name: 'on_road') this.onRoad = 0, this.late = 0, @JsonKey(name: 'not_started') this.notStarted = 0, @JsonKey(name: 'not_started_late') this.notStartedLate = 0, this.completed = 0, this.cancelled = 0, @JsonKey(name: 'open_sos') this.openSos = 0, @JsonKey(name: 'needs_attention') this.needsAttention = 0});
  factory _LiveBoardSummary.fromJson(Map<String, dynamic> json) => _$LiveBoardSummaryFromJson(json);

@override@JsonKey() final  int routes;
@override@JsonKey(name: 'on_road') final  int onRoad;
@override@JsonKey() final  int late;
@override@JsonKey(name: 'not_started') final  int notStarted;
@override@JsonKey(name: 'not_started_late') final  int notStartedLate;
@override@JsonKey() final  int completed;
@override@JsonKey() final  int cancelled;
@override@JsonKey(name: 'open_sos') final  int openSos;
@override@JsonKey(name: 'needs_attention') final  int needsAttention;

/// Create a copy of LiveBoardSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveBoardSummaryCopyWith<_LiveBoardSummary> get copyWith => __$LiveBoardSummaryCopyWithImpl<_LiveBoardSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiveBoardSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveBoardSummary&&(identical(other.routes, routes) || other.routes == routes)&&(identical(other.onRoad, onRoad) || other.onRoad == onRoad)&&(identical(other.late, late) || other.late == late)&&(identical(other.notStarted, notStarted) || other.notStarted == notStarted)&&(identical(other.notStartedLate, notStartedLate) || other.notStartedLate == notStartedLate)&&(identical(other.completed, completed) || other.completed == completed)&&(identical(other.cancelled, cancelled) || other.cancelled == cancelled)&&(identical(other.openSos, openSos) || other.openSos == openSos)&&(identical(other.needsAttention, needsAttention) || other.needsAttention == needsAttention));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,routes,onRoad,late,notStarted,notStartedLate,completed,cancelled,openSos,needsAttention);
}

@override
String toString() {
    return 'LiveBoardSummary(routes: $routes, onRoad: $onRoad, late: $late, notStarted: $notStarted, notStartedLate: $notStartedLate, completed: $completed, cancelled: $cancelled, openSos: $openSos, needsAttention: $needsAttention)';
}


}

/// @nodoc
abstract mixin class _$LiveBoardSummaryCopyWith<$Res> implements $LiveBoardSummaryCopyWith<$Res> {
  factory _$LiveBoardSummaryCopyWith(_LiveBoardSummary value, $Res Function(_LiveBoardSummary) _then) = __$LiveBoardSummaryCopyWithImpl;
@override @useResult
$Res call({
 int routes,@JsonKey(name: 'on_road') int onRoad, int late,@JsonKey(name: 'not_started') int notStarted,@JsonKey(name: 'not_started_late') int notStartedLate, int completed, int cancelled,@JsonKey(name: 'open_sos') int openSos,@JsonKey(name: 'needs_attention') int needsAttention
});




}
/// @nodoc
class __$LiveBoardSummaryCopyWithImpl<$Res>
    implements _$LiveBoardSummaryCopyWith<$Res> {
  __$LiveBoardSummaryCopyWithImpl(this._self, this._then);

  final _LiveBoardSummary _self;
  final $Res Function(_LiveBoardSummary) _then;

/// Create a copy of LiveBoardSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routes = null,Object? onRoad = null,Object? late = null,Object? notStarted = null,Object? notStartedLate = null,Object? completed = null,Object? cancelled = null,Object? openSos = null,Object? needsAttention = null,}) {
  return _then(_LiveBoardSummary(
routes: null == routes ? _self.routes : routes // ignore: cast_nullable_to_non_nullable
as int,onRoad: null == onRoad ? _self.onRoad : onRoad // ignore: cast_nullable_to_non_nullable
as int,late: null == late ? _self.late : late // ignore: cast_nullable_to_non_nullable
as int,notStarted: null == notStarted ? _self.notStarted : notStarted // ignore: cast_nullable_to_non_nullable
as int,notStartedLate: null == notStartedLate ? _self.notStartedLate : notStartedLate // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,cancelled: null == cancelled ? _self.cancelled : cancelled // ignore: cast_nullable_to_non_nullable
as int,openSos: null == openSos ? _self.openSos : openSos // ignore: cast_nullable_to_non_nullable
as int,needsAttention: null == needsAttention ? _self.needsAttention : needsAttention // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$LiveRouteRow {

@JsonKey(name: 'route_id') String get routeId;@JsonKey(name: 'route_name') String get routeName; LiveBusRef get bus; LiveDriverRef? get driver;@JsonKey(name: 'students_assigned') int get studentsAssigned; String get status; String? get direction;@JsonKey(name: 'first_stop_scheduled') String? get firstStopScheduled; LiveTripInfo? get trip;@JsonKey(name: 'delay_minutes') int? get delayMinutes; LiveProgress? get progress; LiveBoarding? get boarding; List<String> get flags;
/// Create a copy of LiveRouteRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveRouteRowCopyWith<LiveRouteRow> get copyWith => _$LiveRouteRowCopyWithImpl<LiveRouteRow>(this as LiveRouteRow, _$identity);

  /// Serializes this LiveRouteRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LiveRouteRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveRouteRow&&(identical(other.routeId, _this.routeId) || other.routeId == _this.routeId)&&(identical(other.routeName, _this.routeName) || other.routeName == _this.routeName)&&(identical(other.bus, _this.bus) || other.bus == _this.bus)&&(identical(other.driver, _this.driver) || other.driver == _this.driver)&&(identical(other.studentsAssigned, _this.studentsAssigned) || other.studentsAssigned == _this.studentsAssigned)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.direction, _this.direction) || other.direction == _this.direction)&&(identical(other.firstStopScheduled, _this.firstStopScheduled) || other.firstStopScheduled == _this.firstStopScheduled)&&(identical(other.trip, _this.trip) || other.trip == _this.trip)&&(identical(other.delayMinutes, _this.delayMinutes) || other.delayMinutes == _this.delayMinutes)&&(identical(other.progress, _this.progress) || other.progress == _this.progress)&&(identical(other.boarding, _this.boarding) || other.boarding == _this.boarding)&&const DeepCollectionEquality().equals(other.flags, _this.flags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LiveRouteRow;
  return Object.hash(runtimeType,_this.routeId,_this.routeName,_this.bus,_this.driver,_this.studentsAssigned,_this.status,_this.direction,_this.firstStopScheduled,_this.trip,_this.delayMinutes,_this.progress,_this.boarding,const DeepCollectionEquality().hash(_this.flags));
}

@override
String toString() {
  final _this = this as LiveRouteRow;
  return 'LiveRouteRow(routeId: ${_this.routeId}, routeName: ${_this.routeName}, bus: ${_this.bus}, driver: ${_this.driver}, studentsAssigned: ${_this.studentsAssigned}, status: ${_this.status}, direction: ${_this.direction}, firstStopScheduled: ${_this.firstStopScheduled}, trip: ${_this.trip}, delayMinutes: ${_this.delayMinutes}, progress: ${_this.progress}, boarding: ${_this.boarding}, flags: ${_this.flags})';
}


}

/// @nodoc
abstract mixin class $LiveRouteRowCopyWith<$Res>  {
  factory $LiveRouteRowCopyWith(LiveRouteRow value, $Res Function(LiveRouteRow) _then) = _$LiveRouteRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'route_id') String routeId,@JsonKey(name: 'route_name') String routeName, LiveBusRef bus, LiveDriverRef? driver,@JsonKey(name: 'students_assigned') int studentsAssigned, String status, String? direction,@JsonKey(name: 'first_stop_scheduled') String? firstStopScheduled, LiveTripInfo? trip,@JsonKey(name: 'delay_minutes') int? delayMinutes, LiveProgress? progress, LiveBoarding? boarding, List<String> flags
});


$LiveBusRefCopyWith<$Res> get bus;$LiveDriverRefCopyWith<$Res>? get driver;$LiveTripInfoCopyWith<$Res>? get trip;$LiveProgressCopyWith<$Res>? get progress;$LiveBoardingCopyWith<$Res>? get boarding;

}
/// @nodoc
class _$LiveRouteRowCopyWithImpl<$Res>
    implements $LiveRouteRowCopyWith<$Res> {
  _$LiveRouteRowCopyWithImpl(this._self, this._then);

  final LiveRouteRow _self;
  final $Res Function(LiveRouteRow) _then;

/// Create a copy of LiveRouteRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routeId = null,Object? routeName = null,Object? bus = null,Object? driver = freezed,Object? studentsAssigned = null,Object? status = null,Object? direction = freezed,Object? firstStopScheduled = freezed,Object? trip = freezed,Object? delayMinutes = freezed,Object? progress = freezed,Object? boarding = freezed,Object? flags = null,}) {
  return _then(LiveRouteRow(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,routeName: null == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String,bus: null == bus ? _self.bus : bus // ignore: cast_nullable_to_non_nullable
as LiveBusRef,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as LiveDriverRef?,studentsAssigned: null == studentsAssigned ? _self.studentsAssigned : studentsAssigned // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,direction: freezed == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as String?,firstStopScheduled: freezed == firstStopScheduled ? _self.firstStopScheduled : firstStopScheduled // ignore: cast_nullable_to_non_nullable
as String?,trip: freezed == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as LiveTripInfo?,delayMinutes: freezed == delayMinutes ? _self.delayMinutes : delayMinutes // ignore: cast_nullable_to_non_nullable
as int?,progress: freezed == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as LiveProgress?,boarding: freezed == boarding ? _self.boarding : boarding // ignore: cast_nullable_to_non_nullable
as LiveBoarding?,flags: null == flags ? _self.flags : flags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of LiveRouteRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LiveBusRefCopyWith<$Res> get bus {
  
  return $LiveBusRefCopyWith<$Res>(_self.bus, (value) {
    return _then(_self.copyWith(bus: value));
  });
}/// Create a copy of LiveRouteRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LiveDriverRefCopyWith<$Res>? get driver {
    if (_self.driver == null) {
    return null;
  }

  return $LiveDriverRefCopyWith<$Res>(_self.driver!, (value) {
    return _then(_self.copyWith(driver: value));
  });
}/// Create a copy of LiveRouteRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LiveTripInfoCopyWith<$Res>? get trip {
    if (_self.trip == null) {
    return null;
  }

  return $LiveTripInfoCopyWith<$Res>(_self.trip!, (value) {
    return _then(_self.copyWith(trip: value));
  });
}/// Create a copy of LiveRouteRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LiveProgressCopyWith<$Res>? get progress {
    if (_self.progress == null) {
    return null;
  }

  return $LiveProgressCopyWith<$Res>(_self.progress!, (value) {
    return _then(_self.copyWith(progress: value));
  });
}/// Create a copy of LiveRouteRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LiveBoardingCopyWith<$Res>? get boarding {
    if (_self.boarding == null) {
    return null;
  }

  return $LiveBoardingCopyWith<$Res>(_self.boarding!, (value) {
    return _then(_self.copyWith(boarding: value));
  });
}
}


/// Adds pattern-matching-related methods to [LiveRouteRow].
extension LiveRouteRowPatterns on LiveRouteRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveRouteRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveRouteRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveRouteRow value)  $default,){
final _that = this;
switch (_that) {
case _LiveRouteRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveRouteRow value)?  $default,){
final _that = this;
switch (_that) {
case _LiveRouteRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'route_id')  String routeId, @JsonKey(name: 'route_name')  String routeName,  LiveBusRef bus,  LiveDriverRef? driver, @JsonKey(name: 'students_assigned')  int studentsAssigned,  String status,  String? direction, @JsonKey(name: 'first_stop_scheduled')  String? firstStopScheduled,  LiveTripInfo? trip, @JsonKey(name: 'delay_minutes')  int? delayMinutes,  LiveProgress? progress,  LiveBoarding? boarding,  List<String> flags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveRouteRow() when $default != null:
return $default(_that.routeId,_that.routeName,_that.bus,_that.driver,_that.studentsAssigned,_that.status,_that.direction,_that.firstStopScheduled,_that.trip,_that.delayMinutes,_that.progress,_that.boarding,_that.flags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'route_id')  String routeId, @JsonKey(name: 'route_name')  String routeName,  LiveBusRef bus,  LiveDriverRef? driver, @JsonKey(name: 'students_assigned')  int studentsAssigned,  String status,  String? direction, @JsonKey(name: 'first_stop_scheduled')  String? firstStopScheduled,  LiveTripInfo? trip, @JsonKey(name: 'delay_minutes')  int? delayMinutes,  LiveProgress? progress,  LiveBoarding? boarding,  List<String> flags)  $default,) {final _that = this;
switch (_that) {
case _LiveRouteRow():
return $default(_that.routeId,_that.routeName,_that.bus,_that.driver,_that.studentsAssigned,_that.status,_that.direction,_that.firstStopScheduled,_that.trip,_that.delayMinutes,_that.progress,_that.boarding,_that.flags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'route_id')  String routeId, @JsonKey(name: 'route_name')  String routeName,  LiveBusRef bus,  LiveDriverRef? driver, @JsonKey(name: 'students_assigned')  int studentsAssigned,  String status,  String? direction, @JsonKey(name: 'first_stop_scheduled')  String? firstStopScheduled,  LiveTripInfo? trip, @JsonKey(name: 'delay_minutes')  int? delayMinutes,  LiveProgress? progress,  LiveBoarding? boarding,  List<String> flags)?  $default,) {final _that = this;
switch (_that) {
case _LiveRouteRow() when $default != null:
return $default(_that.routeId,_that.routeName,_that.bus,_that.driver,_that.studentsAssigned,_that.status,_that.direction,_that.firstStopScheduled,_that.trip,_that.delayMinutes,_that.progress,_that.boarding,_that.flags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LiveRouteRow implements LiveRouteRow {
  const _LiveRouteRow({@JsonKey(name: 'route_id') required this.routeId, @JsonKey(name: 'route_name') this.routeName = '', this.bus = const LiveBusRef(), this.driver, @JsonKey(name: 'students_assigned') this.studentsAssigned = 0, this.status = 'NOT_STARTED', this.direction, @JsonKey(name: 'first_stop_scheduled') this.firstStopScheduled, this.trip, @JsonKey(name: 'delay_minutes') this.delayMinutes, this.progress, this.boarding,  List<String> flags = const <String>[]}): _flags = flags;
  factory _LiveRouteRow.fromJson(Map<String, dynamic> json) => _$LiveRouteRowFromJson(json);

@override@JsonKey(name: 'route_id') final  String routeId;
@override@JsonKey(name: 'route_name') final  String routeName;
@override@JsonKey() final  LiveBusRef bus;
@override final  LiveDriverRef? driver;
@override@JsonKey(name: 'students_assigned') final  int studentsAssigned;
@override@JsonKey() final  String status;
@override final  String? direction;
@override@JsonKey(name: 'first_stop_scheduled') final  String? firstStopScheduled;
@override final  LiveTripInfo? trip;
@override@JsonKey(name: 'delay_minutes') final  int? delayMinutes;
@override final  LiveProgress? progress;
@override final  LiveBoarding? boarding;
 final  List<String> _flags;
@override@JsonKey() List<String> get flags {
  if (_flags is EqualUnmodifiableListView) return _flags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_flags);
}


/// Create a copy of LiveRouteRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveRouteRowCopyWith<_LiveRouteRow> get copyWith => __$LiveRouteRowCopyWithImpl<_LiveRouteRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiveRouteRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveRouteRow&&(identical(other.routeId, routeId) || other.routeId == routeId)&&(identical(other.routeName, routeName) || other.routeName == routeName)&&(identical(other.bus, bus) || other.bus == bus)&&(identical(other.driver, driver) || other.driver == driver)&&(identical(other.studentsAssigned, studentsAssigned) || other.studentsAssigned == studentsAssigned)&&(identical(other.status, status) || other.status == status)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.firstStopScheduled, firstStopScheduled) || other.firstStopScheduled == firstStopScheduled)&&(identical(other.trip, trip) || other.trip == trip)&&(identical(other.delayMinutes, delayMinutes) || other.delayMinutes == delayMinutes)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.boarding, boarding) || other.boarding == boarding)&&const DeepCollectionEquality().equals(other.flags, _flags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,routeId,routeName,bus,driver,studentsAssigned,status,direction,firstStopScheduled,trip,delayMinutes,progress,boarding,const DeepCollectionEquality().hash(_flags));
}

@override
String toString() {
    return 'LiveRouteRow(routeId: $routeId, routeName: $routeName, bus: $bus, driver: $driver, studentsAssigned: $studentsAssigned, status: $status, direction: $direction, firstStopScheduled: $firstStopScheduled, trip: $trip, delayMinutes: $delayMinutes, progress: $progress, boarding: $boarding, flags: $flags)';
}


}

/// @nodoc
abstract mixin class _$LiveRouteRowCopyWith<$Res> implements $LiveRouteRowCopyWith<$Res> {
  factory _$LiveRouteRowCopyWith(_LiveRouteRow value, $Res Function(_LiveRouteRow) _then) = __$LiveRouteRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'route_id') String routeId,@JsonKey(name: 'route_name') String routeName, LiveBusRef bus, LiveDriverRef? driver,@JsonKey(name: 'students_assigned') int studentsAssigned, String status, String? direction,@JsonKey(name: 'first_stop_scheduled') String? firstStopScheduled, LiveTripInfo? trip,@JsonKey(name: 'delay_minutes') int? delayMinutes, LiveProgress? progress, LiveBoarding? boarding, List<String> flags
});


@override $LiveBusRefCopyWith<$Res> get bus;@override $LiveDriverRefCopyWith<$Res>? get driver;@override $LiveTripInfoCopyWith<$Res>? get trip;@override $LiveProgressCopyWith<$Res>? get progress;@override $LiveBoardingCopyWith<$Res>? get boarding;

}
/// @nodoc
class __$LiveRouteRowCopyWithImpl<$Res>
    implements _$LiveRouteRowCopyWith<$Res> {
  __$LiveRouteRowCopyWithImpl(this._self, this._then);

  final _LiveRouteRow _self;
  final $Res Function(_LiveRouteRow) _then;

/// Create a copy of LiveRouteRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routeId = null,Object? routeName = null,Object? bus = null,Object? driver = freezed,Object? studentsAssigned = null,Object? status = null,Object? direction = freezed,Object? firstStopScheduled = freezed,Object? trip = freezed,Object? delayMinutes = freezed,Object? progress = freezed,Object? boarding = freezed,Object? flags = null,}) {
  return _then(_LiveRouteRow(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,routeName: null == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String,bus: null == bus ? _self.bus : bus // ignore: cast_nullable_to_non_nullable
as LiveBusRef,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as LiveDriverRef?,studentsAssigned: null == studentsAssigned ? _self.studentsAssigned : studentsAssigned // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,direction: freezed == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as String?,firstStopScheduled: freezed == firstStopScheduled ? _self.firstStopScheduled : firstStopScheduled // ignore: cast_nullable_to_non_nullable
as String?,trip: freezed == trip ? _self.trip : trip // ignore: cast_nullable_to_non_nullable
as LiveTripInfo?,delayMinutes: freezed == delayMinutes ? _self.delayMinutes : delayMinutes // ignore: cast_nullable_to_non_nullable
as int?,progress: freezed == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as LiveProgress?,boarding: freezed == boarding ? _self.boarding : boarding // ignore: cast_nullable_to_non_nullable
as LiveBoarding?,flags: null == flags ? _self._flags : flags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of LiveRouteRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LiveBusRefCopyWith<$Res> get bus {
  
  return $LiveBusRefCopyWith<$Res>(_self.bus, (value) {
    return _then(_self.copyWith(bus: value));
  });
}/// Create a copy of LiveRouteRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LiveDriverRefCopyWith<$Res>? get driver {
    if (_self.driver == null) {
    return null;
  }

  return $LiveDriverRefCopyWith<$Res>(_self.driver!, (value) {
    return _then(_self.copyWith(driver: value));
  });
}/// Create a copy of LiveRouteRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LiveTripInfoCopyWith<$Res>? get trip {
    if (_self.trip == null) {
    return null;
  }

  return $LiveTripInfoCopyWith<$Res>(_self.trip!, (value) {
    return _then(_self.copyWith(trip: value));
  });
}/// Create a copy of LiveRouteRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LiveProgressCopyWith<$Res>? get progress {
    if (_self.progress == null) {
    return null;
  }

  return $LiveProgressCopyWith<$Res>(_self.progress!, (value) {
    return _then(_self.copyWith(progress: value));
  });
}/// Create a copy of LiveRouteRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LiveBoardingCopyWith<$Res>? get boarding {
    if (_self.boarding == null) {
    return null;
  }

  return $LiveBoardingCopyWith<$Res>(_self.boarding!, (value) {
    return _then(_self.copyWith(boarding: value));
  });
}
}


/// @nodoc
mixin _$LiveBusRef {

@JsonKey(name: 'bus_number') String? get busNumber;@JsonKey(name: 'plate_number') String? get plateNumber;
/// Create a copy of LiveBusRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveBusRefCopyWith<LiveBusRef> get copyWith => _$LiveBusRefCopyWithImpl<LiveBusRef>(this as LiveBusRef, _$identity);

  /// Serializes this LiveBusRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LiveBusRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveBusRef&&(identical(other.busNumber, _this.busNumber) || other.busNumber == _this.busNumber)&&(identical(other.plateNumber, _this.plateNumber) || other.plateNumber == _this.plateNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LiveBusRef;
  return Object.hash(runtimeType,_this.busNumber,_this.plateNumber);
}

@override
String toString() {
  final _this = this as LiveBusRef;
  return 'LiveBusRef(busNumber: ${_this.busNumber}, plateNumber: ${_this.plateNumber})';
}


}

/// @nodoc
abstract mixin class $LiveBusRefCopyWith<$Res>  {
  factory $LiveBusRefCopyWith(LiveBusRef value, $Res Function(LiveBusRef) _then) = _$LiveBusRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'bus_number') String? busNumber,@JsonKey(name: 'plate_number') String? plateNumber
});




}
/// @nodoc
class _$LiveBusRefCopyWithImpl<$Res>
    implements $LiveBusRefCopyWith<$Res> {
  _$LiveBusRefCopyWithImpl(this._self, this._then);

  final LiveBusRef _self;
  final $Res Function(LiveBusRef) _then;

/// Create a copy of LiveBusRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? busNumber = freezed,Object? plateNumber = freezed,}) {
  return _then(LiveBusRef(
busNumber: freezed == busNumber ? _self.busNumber : busNumber // ignore: cast_nullable_to_non_nullable
as String?,plateNumber: freezed == plateNumber ? _self.plateNumber : plateNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LiveBusRef].
extension LiveBusRefPatterns on LiveBusRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveBusRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveBusRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveBusRef value)  $default,){
final _that = this;
switch (_that) {
case _LiveBusRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveBusRef value)?  $default,){
final _that = this;
switch (_that) {
case _LiveBusRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'bus_number')  String? busNumber, @JsonKey(name: 'plate_number')  String? plateNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveBusRef() when $default != null:
return $default(_that.busNumber,_that.plateNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'bus_number')  String? busNumber, @JsonKey(name: 'plate_number')  String? plateNumber)  $default,) {final _that = this;
switch (_that) {
case _LiveBusRef():
return $default(_that.busNumber,_that.plateNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'bus_number')  String? busNumber, @JsonKey(name: 'plate_number')  String? plateNumber)?  $default,) {final _that = this;
switch (_that) {
case _LiveBusRef() when $default != null:
return $default(_that.busNumber,_that.plateNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LiveBusRef implements LiveBusRef {
  const _LiveBusRef({@JsonKey(name: 'bus_number') this.busNumber, @JsonKey(name: 'plate_number') this.plateNumber});
  factory _LiveBusRef.fromJson(Map<String, dynamic> json) => _$LiveBusRefFromJson(json);

@override@JsonKey(name: 'bus_number') final  String? busNumber;
@override@JsonKey(name: 'plate_number') final  String? plateNumber;

/// Create a copy of LiveBusRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveBusRefCopyWith<_LiveBusRef> get copyWith => __$LiveBusRefCopyWithImpl<_LiveBusRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiveBusRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveBusRef&&(identical(other.busNumber, busNumber) || other.busNumber == busNumber)&&(identical(other.plateNumber, plateNumber) || other.plateNumber == plateNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,busNumber,plateNumber);
}

@override
String toString() {
    return 'LiveBusRef(busNumber: $busNumber, plateNumber: $plateNumber)';
}


}

/// @nodoc
abstract mixin class _$LiveBusRefCopyWith<$Res> implements $LiveBusRefCopyWith<$Res> {
  factory _$LiveBusRefCopyWith(_LiveBusRef value, $Res Function(_LiveBusRef) _then) = __$LiveBusRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'bus_number') String? busNumber,@JsonKey(name: 'plate_number') String? plateNumber
});




}
/// @nodoc
class __$LiveBusRefCopyWithImpl<$Res>
    implements _$LiveBusRefCopyWith<$Res> {
  __$LiveBusRefCopyWithImpl(this._self, this._then);

  final _LiveBusRef _self;
  final $Res Function(_LiveBusRef) _then;

/// Create a copy of LiveBusRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? busNumber = freezed,Object? plateNumber = freezed,}) {
  return _then(_LiveBusRef(
busNumber: freezed == busNumber ? _self.busNumber : busNumber // ignore: cast_nullable_to_non_nullable
as String?,plateNumber: freezed == plateNumber ? _self.plateNumber : plateNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LiveDriverRef {

 String? get name; String? get phone;
/// Create a copy of LiveDriverRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveDriverRefCopyWith<LiveDriverRef> get copyWith => _$LiveDriverRefCopyWithImpl<LiveDriverRef>(this as LiveDriverRef, _$identity);

  /// Serializes this LiveDriverRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LiveDriverRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveDriverRef&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.phone, _this.phone) || other.phone == _this.phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LiveDriverRef;
  return Object.hash(runtimeType,_this.name,_this.phone);
}

@override
String toString() {
  final _this = this as LiveDriverRef;
  return 'LiveDriverRef(name: ${_this.name}, phone: ${_this.phone})';
}


}

/// @nodoc
abstract mixin class $LiveDriverRefCopyWith<$Res>  {
  factory $LiveDriverRefCopyWith(LiveDriverRef value, $Res Function(LiveDriverRef) _then) = _$LiveDriverRefCopyWithImpl;
@useResult
$Res call({
 String? name, String? phone
});




}
/// @nodoc
class _$LiveDriverRefCopyWithImpl<$Res>
    implements $LiveDriverRefCopyWith<$Res> {
  _$LiveDriverRefCopyWithImpl(this._self, this._then);

  final LiveDriverRef _self;
  final $Res Function(LiveDriverRef) _then;

/// Create a copy of LiveDriverRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? phone = freezed,}) {
  return _then(LiveDriverRef(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LiveDriverRef].
extension LiveDriverRefPatterns on LiveDriverRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveDriverRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveDriverRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveDriverRef value)  $default,){
final _that = this;
switch (_that) {
case _LiveDriverRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveDriverRef value)?  $default,){
final _that = this;
switch (_that) {
case _LiveDriverRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveDriverRef() when $default != null:
return $default(_that.name,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? phone)  $default,) {final _that = this;
switch (_that) {
case _LiveDriverRef():
return $default(_that.name,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? phone)?  $default,) {final _that = this;
switch (_that) {
case _LiveDriverRef() when $default != null:
return $default(_that.name,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LiveDriverRef implements LiveDriverRef {
  const _LiveDriverRef({this.name, this.phone});
  factory _LiveDriverRef.fromJson(Map<String, dynamic> json) => _$LiveDriverRefFromJson(json);

@override final  String? name;
@override final  String? phone;

/// Create a copy of LiveDriverRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveDriverRefCopyWith<_LiveDriverRef> get copyWith => __$LiveDriverRefCopyWithImpl<_LiveDriverRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiveDriverRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveDriverRef&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,phone);
}

@override
String toString() {
    return 'LiveDriverRef(name: $name, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$LiveDriverRefCopyWith<$Res> implements $LiveDriverRefCopyWith<$Res> {
  factory _$LiveDriverRefCopyWith(_LiveDriverRef value, $Res Function(_LiveDriverRef) _then) = __$LiveDriverRefCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? phone
});




}
/// @nodoc
class __$LiveDriverRefCopyWithImpl<$Res>
    implements _$LiveDriverRefCopyWith<$Res> {
  __$LiveDriverRefCopyWithImpl(this._self, this._then);

  final _LiveDriverRef _self;
  final $Res Function(_LiveDriverRef) _then;

/// Create a copy of LiveDriverRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? phone = freezed,}) {
  return _then(_LiveDriverRef(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LiveTripInfo {

@JsonKey(name: 'trip_type') String? get tripType;@JsonKey(name: 'started_time') String? get startedTime;@JsonKey(name: 'ended_time') String? get endedTime;
/// Create a copy of LiveTripInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveTripInfoCopyWith<LiveTripInfo> get copyWith => _$LiveTripInfoCopyWithImpl<LiveTripInfo>(this as LiveTripInfo, _$identity);

  /// Serializes this LiveTripInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LiveTripInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveTripInfo&&(identical(other.tripType, _this.tripType) || other.tripType == _this.tripType)&&(identical(other.startedTime, _this.startedTime) || other.startedTime == _this.startedTime)&&(identical(other.endedTime, _this.endedTime) || other.endedTime == _this.endedTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LiveTripInfo;
  return Object.hash(runtimeType,_this.tripType,_this.startedTime,_this.endedTime);
}

@override
String toString() {
  final _this = this as LiveTripInfo;
  return 'LiveTripInfo(tripType: ${_this.tripType}, startedTime: ${_this.startedTime}, endedTime: ${_this.endedTime})';
}


}

/// @nodoc
abstract mixin class $LiveTripInfoCopyWith<$Res>  {
  factory $LiveTripInfoCopyWith(LiveTripInfo value, $Res Function(LiveTripInfo) _then) = _$LiveTripInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'trip_type') String? tripType,@JsonKey(name: 'started_time') String? startedTime,@JsonKey(name: 'ended_time') String? endedTime
});




}
/// @nodoc
class _$LiveTripInfoCopyWithImpl<$Res>
    implements $LiveTripInfoCopyWith<$Res> {
  _$LiveTripInfoCopyWithImpl(this._self, this._then);

  final LiveTripInfo _self;
  final $Res Function(LiveTripInfo) _then;

/// Create a copy of LiveTripInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tripType = freezed,Object? startedTime = freezed,Object? endedTime = freezed,}) {
  return _then(LiveTripInfo(
tripType: freezed == tripType ? _self.tripType : tripType // ignore: cast_nullable_to_non_nullable
as String?,startedTime: freezed == startedTime ? _self.startedTime : startedTime // ignore: cast_nullable_to_non_nullable
as String?,endedTime: freezed == endedTime ? _self.endedTime : endedTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LiveTripInfo].
extension LiveTripInfoPatterns on LiveTripInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveTripInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveTripInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveTripInfo value)  $default,){
final _that = this;
switch (_that) {
case _LiveTripInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveTripInfo value)?  $default,){
final _that = this;
switch (_that) {
case _LiveTripInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'trip_type')  String? tripType, @JsonKey(name: 'started_time')  String? startedTime, @JsonKey(name: 'ended_time')  String? endedTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveTripInfo() when $default != null:
return $default(_that.tripType,_that.startedTime,_that.endedTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'trip_type')  String? tripType, @JsonKey(name: 'started_time')  String? startedTime, @JsonKey(name: 'ended_time')  String? endedTime)  $default,) {final _that = this;
switch (_that) {
case _LiveTripInfo():
return $default(_that.tripType,_that.startedTime,_that.endedTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'trip_type')  String? tripType, @JsonKey(name: 'started_time')  String? startedTime, @JsonKey(name: 'ended_time')  String? endedTime)?  $default,) {final _that = this;
switch (_that) {
case _LiveTripInfo() when $default != null:
return $default(_that.tripType,_that.startedTime,_that.endedTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LiveTripInfo implements LiveTripInfo {
  const _LiveTripInfo({@JsonKey(name: 'trip_type') this.tripType, @JsonKey(name: 'started_time') this.startedTime, @JsonKey(name: 'ended_time') this.endedTime});
  factory _LiveTripInfo.fromJson(Map<String, dynamic> json) => _$LiveTripInfoFromJson(json);

@override@JsonKey(name: 'trip_type') final  String? tripType;
@override@JsonKey(name: 'started_time') final  String? startedTime;
@override@JsonKey(name: 'ended_time') final  String? endedTime;

/// Create a copy of LiveTripInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveTripInfoCopyWith<_LiveTripInfo> get copyWith => __$LiveTripInfoCopyWithImpl<_LiveTripInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiveTripInfoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveTripInfo&&(identical(other.tripType, tripType) || other.tripType == tripType)&&(identical(other.startedTime, startedTime) || other.startedTime == startedTime)&&(identical(other.endedTime, endedTime) || other.endedTime == endedTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,tripType,startedTime,endedTime);
}

@override
String toString() {
    return 'LiveTripInfo(tripType: $tripType, startedTime: $startedTime, endedTime: $endedTime)';
}


}

/// @nodoc
abstract mixin class _$LiveTripInfoCopyWith<$Res> implements $LiveTripInfoCopyWith<$Res> {
  factory _$LiveTripInfoCopyWith(_LiveTripInfo value, $Res Function(_LiveTripInfo) _then) = __$LiveTripInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'trip_type') String? tripType,@JsonKey(name: 'started_time') String? startedTime,@JsonKey(name: 'ended_time') String? endedTime
});




}
/// @nodoc
class __$LiveTripInfoCopyWithImpl<$Res>
    implements _$LiveTripInfoCopyWith<$Res> {
  __$LiveTripInfoCopyWithImpl(this._self, this._then);

  final _LiveTripInfo _self;
  final $Res Function(_LiveTripInfo) _then;

/// Create a copy of LiveTripInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tripType = freezed,Object? startedTime = freezed,Object? endedTime = freezed,}) {
  return _then(_LiveTripInfo(
tripType: freezed == tripType ? _self.tripType : tripType // ignore: cast_nullable_to_non_nullable
as String?,startedTime: freezed == startedTime ? _self.startedTime : startedTime // ignore: cast_nullable_to_non_nullable
as String?,endedTime: freezed == endedTime ? _self.endedTime : endedTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LiveProgress {

 int get confirmed; int get total;@JsonKey(name: 'last_stop') LiveStopRef? get lastStop;@JsonKey(name: 'next_stop') LiveStopRef? get nextStop;
/// Create a copy of LiveProgress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveProgressCopyWith<LiveProgress> get copyWith => _$LiveProgressCopyWithImpl<LiveProgress>(this as LiveProgress, _$identity);

  /// Serializes this LiveProgress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LiveProgress;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveProgress&&(identical(other.confirmed, _this.confirmed) || other.confirmed == _this.confirmed)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.lastStop, _this.lastStop) || other.lastStop == _this.lastStop)&&(identical(other.nextStop, _this.nextStop) || other.nextStop == _this.nextStop));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LiveProgress;
  return Object.hash(runtimeType,_this.confirmed,_this.total,_this.lastStop,_this.nextStop);
}

@override
String toString() {
  final _this = this as LiveProgress;
  return 'LiveProgress(confirmed: ${_this.confirmed}, total: ${_this.total}, lastStop: ${_this.lastStop}, nextStop: ${_this.nextStop})';
}


}

/// @nodoc
abstract mixin class $LiveProgressCopyWith<$Res>  {
  factory $LiveProgressCopyWith(LiveProgress value, $Res Function(LiveProgress) _then) = _$LiveProgressCopyWithImpl;
@useResult
$Res call({
 int confirmed, int total,@JsonKey(name: 'last_stop') LiveStopRef? lastStop,@JsonKey(name: 'next_stop') LiveStopRef? nextStop
});


$LiveStopRefCopyWith<$Res>? get lastStop;$LiveStopRefCopyWith<$Res>? get nextStop;

}
/// @nodoc
class _$LiveProgressCopyWithImpl<$Res>
    implements $LiveProgressCopyWith<$Res> {
  _$LiveProgressCopyWithImpl(this._self, this._then);

  final LiveProgress _self;
  final $Res Function(LiveProgress) _then;

/// Create a copy of LiveProgress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? confirmed = null,Object? total = null,Object? lastStop = freezed,Object? nextStop = freezed,}) {
  return _then(LiveProgress(
confirmed: null == confirmed ? _self.confirmed : confirmed // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,lastStop: freezed == lastStop ? _self.lastStop : lastStop // ignore: cast_nullable_to_non_nullable
as LiveStopRef?,nextStop: freezed == nextStop ? _self.nextStop : nextStop // ignore: cast_nullable_to_non_nullable
as LiveStopRef?,
  ));
}
/// Create a copy of LiveProgress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LiveStopRefCopyWith<$Res>? get lastStop {
    if (_self.lastStop == null) {
    return null;
  }

  return $LiveStopRefCopyWith<$Res>(_self.lastStop!, (value) {
    return _then(_self.copyWith(lastStop: value));
  });
}/// Create a copy of LiveProgress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LiveStopRefCopyWith<$Res>? get nextStop {
    if (_self.nextStop == null) {
    return null;
  }

  return $LiveStopRefCopyWith<$Res>(_self.nextStop!, (value) {
    return _then(_self.copyWith(nextStop: value));
  });
}
}


/// Adds pattern-matching-related methods to [LiveProgress].
extension LiveProgressPatterns on LiveProgress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveProgress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveProgress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveProgress value)  $default,){
final _that = this;
switch (_that) {
case _LiveProgress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveProgress value)?  $default,){
final _that = this;
switch (_that) {
case _LiveProgress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int confirmed,  int total, @JsonKey(name: 'last_stop')  LiveStopRef? lastStop, @JsonKey(name: 'next_stop')  LiveStopRef? nextStop)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveProgress() when $default != null:
return $default(_that.confirmed,_that.total,_that.lastStop,_that.nextStop);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int confirmed,  int total, @JsonKey(name: 'last_stop')  LiveStopRef? lastStop, @JsonKey(name: 'next_stop')  LiveStopRef? nextStop)  $default,) {final _that = this;
switch (_that) {
case _LiveProgress():
return $default(_that.confirmed,_that.total,_that.lastStop,_that.nextStop);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int confirmed,  int total, @JsonKey(name: 'last_stop')  LiveStopRef? lastStop, @JsonKey(name: 'next_stop')  LiveStopRef? nextStop)?  $default,) {final _that = this;
switch (_that) {
case _LiveProgress() when $default != null:
return $default(_that.confirmed,_that.total,_that.lastStop,_that.nextStop);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LiveProgress implements LiveProgress {
  const _LiveProgress({this.confirmed = 0, this.total = 0, @JsonKey(name: 'last_stop') this.lastStop, @JsonKey(name: 'next_stop') this.nextStop});
  factory _LiveProgress.fromJson(Map<String, dynamic> json) => _$LiveProgressFromJson(json);

@override@JsonKey() final  int confirmed;
@override@JsonKey() final  int total;
@override@JsonKey(name: 'last_stop') final  LiveStopRef? lastStop;
@override@JsonKey(name: 'next_stop') final  LiveStopRef? nextStop;

/// Create a copy of LiveProgress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveProgressCopyWith<_LiveProgress> get copyWith => __$LiveProgressCopyWithImpl<_LiveProgress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiveProgressToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveProgress&&(identical(other.confirmed, confirmed) || other.confirmed == confirmed)&&(identical(other.total, total) || other.total == total)&&(identical(other.lastStop, lastStop) || other.lastStop == lastStop)&&(identical(other.nextStop, nextStop) || other.nextStop == nextStop));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,confirmed,total,lastStop,nextStop);
}

@override
String toString() {
    return 'LiveProgress(confirmed: $confirmed, total: $total, lastStop: $lastStop, nextStop: $nextStop)';
}


}

/// @nodoc
abstract mixin class _$LiveProgressCopyWith<$Res> implements $LiveProgressCopyWith<$Res> {
  factory _$LiveProgressCopyWith(_LiveProgress value, $Res Function(_LiveProgress) _then) = __$LiveProgressCopyWithImpl;
@override @useResult
$Res call({
 int confirmed, int total,@JsonKey(name: 'last_stop') LiveStopRef? lastStop,@JsonKey(name: 'next_stop') LiveStopRef? nextStop
});


@override $LiveStopRefCopyWith<$Res>? get lastStop;@override $LiveStopRefCopyWith<$Res>? get nextStop;

}
/// @nodoc
class __$LiveProgressCopyWithImpl<$Res>
    implements _$LiveProgressCopyWith<$Res> {
  __$LiveProgressCopyWithImpl(this._self, this._then);

  final _LiveProgress _self;
  final $Res Function(_LiveProgress) _then;

/// Create a copy of LiveProgress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? confirmed = null,Object? total = null,Object? lastStop = freezed,Object? nextStop = freezed,}) {
  return _then(_LiveProgress(
confirmed: null == confirmed ? _self.confirmed : confirmed // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,lastStop: freezed == lastStop ? _self.lastStop : lastStop // ignore: cast_nullable_to_non_nullable
as LiveStopRef?,nextStop: freezed == nextStop ? _self.nextStop : nextStop // ignore: cast_nullable_to_non_nullable
as LiveStopRef?,
  ));
}

/// Create a copy of LiveProgress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LiveStopRefCopyWith<$Res>? get lastStop {
    if (_self.lastStop == null) {
    return null;
  }

  return $LiveStopRefCopyWith<$Res>(_self.lastStop!, (value) {
    return _then(_self.copyWith(lastStop: value));
  });
}/// Create a copy of LiveProgress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LiveStopRefCopyWith<$Res>? get nextStop {
    if (_self.nextStop == null) {
    return null;
  }

  return $LiveStopRefCopyWith<$Res>(_self.nextStop!, (value) {
    return _then(_self.copyWith(nextStop: value));
  });
}
}


/// @nodoc
mixin _$LiveStopRef {

 String? get name; String? get time;@JsonKey(name: 'scheduled_time') String? get scheduledTime;
/// Create a copy of LiveStopRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveStopRefCopyWith<LiveStopRef> get copyWith => _$LiveStopRefCopyWithImpl<LiveStopRef>(this as LiveStopRef, _$identity);

  /// Serializes this LiveStopRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LiveStopRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveStopRef&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.time, _this.time) || other.time == _this.time)&&(identical(other.scheduledTime, _this.scheduledTime) || other.scheduledTime == _this.scheduledTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LiveStopRef;
  return Object.hash(runtimeType,_this.name,_this.time,_this.scheduledTime);
}

@override
String toString() {
  final _this = this as LiveStopRef;
  return 'LiveStopRef(name: ${_this.name}, time: ${_this.time}, scheduledTime: ${_this.scheduledTime})';
}


}

/// @nodoc
abstract mixin class $LiveStopRefCopyWith<$Res>  {
  factory $LiveStopRefCopyWith(LiveStopRef value, $Res Function(LiveStopRef) _then) = _$LiveStopRefCopyWithImpl;
@useResult
$Res call({
 String? name, String? time,@JsonKey(name: 'scheduled_time') String? scheduledTime
});




}
/// @nodoc
class _$LiveStopRefCopyWithImpl<$Res>
    implements $LiveStopRefCopyWith<$Res> {
  _$LiveStopRefCopyWithImpl(this._self, this._then);

  final LiveStopRef _self;
  final $Res Function(LiveStopRef) _then;

/// Create a copy of LiveStopRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? time = freezed,Object? scheduledTime = freezed,}) {
  return _then(LiveStopRef(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,scheduledTime: freezed == scheduledTime ? _self.scheduledTime : scheduledTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LiveStopRef].
extension LiveStopRefPatterns on LiveStopRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveStopRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveStopRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveStopRef value)  $default,){
final _that = this;
switch (_that) {
case _LiveStopRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveStopRef value)?  $default,){
final _that = this;
switch (_that) {
case _LiveStopRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? time, @JsonKey(name: 'scheduled_time')  String? scheduledTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveStopRef() when $default != null:
return $default(_that.name,_that.time,_that.scheduledTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? time, @JsonKey(name: 'scheduled_time')  String? scheduledTime)  $default,) {final _that = this;
switch (_that) {
case _LiveStopRef():
return $default(_that.name,_that.time,_that.scheduledTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? time, @JsonKey(name: 'scheduled_time')  String? scheduledTime)?  $default,) {final _that = this;
switch (_that) {
case _LiveStopRef() when $default != null:
return $default(_that.name,_that.time,_that.scheduledTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LiveStopRef implements LiveStopRef {
  const _LiveStopRef({this.name, this.time, @JsonKey(name: 'scheduled_time') this.scheduledTime});
  factory _LiveStopRef.fromJson(Map<String, dynamic> json) => _$LiveStopRefFromJson(json);

@override final  String? name;
@override final  String? time;
@override@JsonKey(name: 'scheduled_time') final  String? scheduledTime;

/// Create a copy of LiveStopRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveStopRefCopyWith<_LiveStopRef> get copyWith => __$LiveStopRefCopyWithImpl<_LiveStopRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiveStopRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveStopRef&&(identical(other.name, name) || other.name == name)&&(identical(other.time, time) || other.time == time)&&(identical(other.scheduledTime, scheduledTime) || other.scheduledTime == scheduledTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,time,scheduledTime);
}

@override
String toString() {
    return 'LiveStopRef(name: $name, time: $time, scheduledTime: $scheduledTime)';
}


}

/// @nodoc
abstract mixin class _$LiveStopRefCopyWith<$Res> implements $LiveStopRefCopyWith<$Res> {
  factory _$LiveStopRefCopyWith(_LiveStopRef value, $Res Function(_LiveStopRef) _then) = __$LiveStopRefCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? time,@JsonKey(name: 'scheduled_time') String? scheduledTime
});




}
/// @nodoc
class __$LiveStopRefCopyWithImpl<$Res>
    implements _$LiveStopRefCopyWith<$Res> {
  __$LiveStopRefCopyWithImpl(this._self, this._then);

  final _LiveStopRef _self;
  final $Res Function(_LiveStopRef) _then;

/// Create a copy of LiveStopRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? time = freezed,Object? scheduledTime = freezed,}) {
  return _then(_LiveStopRef(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,scheduledTime: freezed == scheduledTime ? _self.scheduledTime : scheduledTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LiveBoarding {

 int get present; int get absent; int get unmarked;
/// Create a copy of LiveBoarding
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveBoardingCopyWith<LiveBoarding> get copyWith => _$LiveBoardingCopyWithImpl<LiveBoarding>(this as LiveBoarding, _$identity);

  /// Serializes this LiveBoarding to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LiveBoarding;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveBoarding&&(identical(other.present, _this.present) || other.present == _this.present)&&(identical(other.absent, _this.absent) || other.absent == _this.absent)&&(identical(other.unmarked, _this.unmarked) || other.unmarked == _this.unmarked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LiveBoarding;
  return Object.hash(runtimeType,_this.present,_this.absent,_this.unmarked);
}

@override
String toString() {
  final _this = this as LiveBoarding;
  return 'LiveBoarding(present: ${_this.present}, absent: ${_this.absent}, unmarked: ${_this.unmarked})';
}


}

/// @nodoc
abstract mixin class $LiveBoardingCopyWith<$Res>  {
  factory $LiveBoardingCopyWith(LiveBoarding value, $Res Function(LiveBoarding) _then) = _$LiveBoardingCopyWithImpl;
@useResult
$Res call({
 int present, int absent, int unmarked
});




}
/// @nodoc
class _$LiveBoardingCopyWithImpl<$Res>
    implements $LiveBoardingCopyWith<$Res> {
  _$LiveBoardingCopyWithImpl(this._self, this._then);

  final LiveBoarding _self;
  final $Res Function(LiveBoarding) _then;

/// Create a copy of LiveBoarding
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? present = null,Object? absent = null,Object? unmarked = null,}) {
  return _then(LiveBoarding(
present: null == present ? _self.present : present // ignore: cast_nullable_to_non_nullable
as int,absent: null == absent ? _self.absent : absent // ignore: cast_nullable_to_non_nullable
as int,unmarked: null == unmarked ? _self.unmarked : unmarked // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LiveBoarding].
extension LiveBoardingPatterns on LiveBoarding {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveBoarding value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveBoarding() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveBoarding value)  $default,){
final _that = this;
switch (_that) {
case _LiveBoarding():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveBoarding value)?  $default,){
final _that = this;
switch (_that) {
case _LiveBoarding() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int present,  int absent,  int unmarked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveBoarding() when $default != null:
return $default(_that.present,_that.absent,_that.unmarked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int present,  int absent,  int unmarked)  $default,) {final _that = this;
switch (_that) {
case _LiveBoarding():
return $default(_that.present,_that.absent,_that.unmarked);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int present,  int absent,  int unmarked)?  $default,) {final _that = this;
switch (_that) {
case _LiveBoarding() when $default != null:
return $default(_that.present,_that.absent,_that.unmarked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LiveBoarding implements LiveBoarding {
  const _LiveBoarding({this.present = 0, this.absent = 0, this.unmarked = 0});
  factory _LiveBoarding.fromJson(Map<String, dynamic> json) => _$LiveBoardingFromJson(json);

@override@JsonKey() final  int present;
@override@JsonKey() final  int absent;
@override@JsonKey() final  int unmarked;

/// Create a copy of LiveBoarding
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveBoardingCopyWith<_LiveBoarding> get copyWith => __$LiveBoardingCopyWithImpl<_LiveBoarding>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiveBoardingToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveBoarding&&(identical(other.present, present) || other.present == present)&&(identical(other.absent, absent) || other.absent == absent)&&(identical(other.unmarked, unmarked) || other.unmarked == unmarked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,present,absent,unmarked);
}

@override
String toString() {
    return 'LiveBoarding(present: $present, absent: $absent, unmarked: $unmarked)';
}


}

/// @nodoc
abstract mixin class _$LiveBoardingCopyWith<$Res> implements $LiveBoardingCopyWith<$Res> {
  factory _$LiveBoardingCopyWith(_LiveBoarding value, $Res Function(_LiveBoarding) _then) = __$LiveBoardingCopyWithImpl;
@override @useResult
$Res call({
 int present, int absent, int unmarked
});




}
/// @nodoc
class __$LiveBoardingCopyWithImpl<$Res>
    implements _$LiveBoardingCopyWith<$Res> {
  __$LiveBoardingCopyWithImpl(this._self, this._then);

  final _LiveBoarding _self;
  final $Res Function(_LiveBoarding) _then;

/// Create a copy of LiveBoarding
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? present = null,Object? absent = null,Object? unmarked = null,}) {
  return _then(_LiveBoarding(
present: null == present ? _self.present : present // ignore: cast_nullable_to_non_nullable
as int,absent: null == absent ? _self.absent : absent // ignore: cast_nullable_to_non_nullable
as int,unmarked: null == unmarked ? _self.unmarked : unmarked // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$LiveSosAlert {

@JsonKey(name: 'sos_id') String get sosId;@JsonKey(name: 'created_at') DateTime? get createdAt; String? get message; LiveDriverRef? get driver;@JsonKey(name: 'bus_number') String? get busNumber;@JsonKey(name: 'route_name') String? get routeName;
/// Create a copy of LiveSosAlert
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveSosAlertCopyWith<LiveSosAlert> get copyWith => _$LiveSosAlertCopyWithImpl<LiveSosAlert>(this as LiveSosAlert, _$identity);

  /// Serializes this LiveSosAlert to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LiveSosAlert;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveSosAlert&&(identical(other.sosId, _this.sosId) || other.sosId == _this.sosId)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.driver, _this.driver) || other.driver == _this.driver)&&(identical(other.busNumber, _this.busNumber) || other.busNumber == _this.busNumber)&&(identical(other.routeName, _this.routeName) || other.routeName == _this.routeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LiveSosAlert;
  return Object.hash(runtimeType,_this.sosId,_this.createdAt,_this.message,_this.driver,_this.busNumber,_this.routeName);
}

@override
String toString() {
  final _this = this as LiveSosAlert;
  return 'LiveSosAlert(sosId: ${_this.sosId}, createdAt: ${_this.createdAt}, message: ${_this.message}, driver: ${_this.driver}, busNumber: ${_this.busNumber}, routeName: ${_this.routeName})';
}


}

/// @nodoc
abstract mixin class $LiveSosAlertCopyWith<$Res>  {
  factory $LiveSosAlertCopyWith(LiveSosAlert value, $Res Function(LiveSosAlert) _then) = _$LiveSosAlertCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sos_id') String sosId,@JsonKey(name: 'created_at') DateTime? createdAt, String? message, LiveDriverRef? driver,@JsonKey(name: 'bus_number') String? busNumber,@JsonKey(name: 'route_name') String? routeName
});


$LiveDriverRefCopyWith<$Res>? get driver;

}
/// @nodoc
class _$LiveSosAlertCopyWithImpl<$Res>
    implements $LiveSosAlertCopyWith<$Res> {
  _$LiveSosAlertCopyWithImpl(this._self, this._then);

  final LiveSosAlert _self;
  final $Res Function(LiveSosAlert) _then;

/// Create a copy of LiveSosAlert
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sosId = null,Object? createdAt = freezed,Object? message = freezed,Object? driver = freezed,Object? busNumber = freezed,Object? routeName = freezed,}) {
  return _then(LiveSosAlert(
sosId: null == sosId ? _self.sosId : sosId // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as LiveDriverRef?,busNumber: freezed == busNumber ? _self.busNumber : busNumber // ignore: cast_nullable_to_non_nullable
as String?,routeName: freezed == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of LiveSosAlert
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LiveDriverRefCopyWith<$Res>? get driver {
    if (_self.driver == null) {
    return null;
  }

  return $LiveDriverRefCopyWith<$Res>(_self.driver!, (value) {
    return _then(_self.copyWith(driver: value));
  });
}
}


/// Adds pattern-matching-related methods to [LiveSosAlert].
extension LiveSosAlertPatterns on LiveSosAlert {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveSosAlert value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveSosAlert() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveSosAlert value)  $default,){
final _that = this;
switch (_that) {
case _LiveSosAlert():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveSosAlert value)?  $default,){
final _that = this;
switch (_that) {
case _LiveSosAlert() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sos_id')  String sosId, @JsonKey(name: 'created_at')  DateTime? createdAt,  String? message,  LiveDriverRef? driver, @JsonKey(name: 'bus_number')  String? busNumber, @JsonKey(name: 'route_name')  String? routeName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveSosAlert() when $default != null:
return $default(_that.sosId,_that.createdAt,_that.message,_that.driver,_that.busNumber,_that.routeName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sos_id')  String sosId, @JsonKey(name: 'created_at')  DateTime? createdAt,  String? message,  LiveDriverRef? driver, @JsonKey(name: 'bus_number')  String? busNumber, @JsonKey(name: 'route_name')  String? routeName)  $default,) {final _that = this;
switch (_that) {
case _LiveSosAlert():
return $default(_that.sosId,_that.createdAt,_that.message,_that.driver,_that.busNumber,_that.routeName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sos_id')  String sosId, @JsonKey(name: 'created_at')  DateTime? createdAt,  String? message,  LiveDriverRef? driver, @JsonKey(name: 'bus_number')  String? busNumber, @JsonKey(name: 'route_name')  String? routeName)?  $default,) {final _that = this;
switch (_that) {
case _LiveSosAlert() when $default != null:
return $default(_that.sosId,_that.createdAt,_that.message,_that.driver,_that.busNumber,_that.routeName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LiveSosAlert implements LiveSosAlert {
  const _LiveSosAlert({@JsonKey(name: 'sos_id') required this.sosId, @JsonKey(name: 'created_at') this.createdAt, this.message, this.driver, @JsonKey(name: 'bus_number') this.busNumber, @JsonKey(name: 'route_name') this.routeName});
  factory _LiveSosAlert.fromJson(Map<String, dynamic> json) => _$LiveSosAlertFromJson(json);

@override@JsonKey(name: 'sos_id') final  String sosId;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override final  String? message;
@override final  LiveDriverRef? driver;
@override@JsonKey(name: 'bus_number') final  String? busNumber;
@override@JsonKey(name: 'route_name') final  String? routeName;

/// Create a copy of LiveSosAlert
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveSosAlertCopyWith<_LiveSosAlert> get copyWith => __$LiveSosAlertCopyWithImpl<_LiveSosAlert>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiveSosAlertToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveSosAlert&&(identical(other.sosId, sosId) || other.sosId == sosId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.message, message) || other.message == message)&&(identical(other.driver, driver) || other.driver == driver)&&(identical(other.busNumber, busNumber) || other.busNumber == busNumber)&&(identical(other.routeName, routeName) || other.routeName == routeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sosId,createdAt,message,driver,busNumber,routeName);
}

@override
String toString() {
    return 'LiveSosAlert(sosId: $sosId, createdAt: $createdAt, message: $message, driver: $driver, busNumber: $busNumber, routeName: $routeName)';
}


}

/// @nodoc
abstract mixin class _$LiveSosAlertCopyWith<$Res> implements $LiveSosAlertCopyWith<$Res> {
  factory _$LiveSosAlertCopyWith(_LiveSosAlert value, $Res Function(_LiveSosAlert) _then) = __$LiveSosAlertCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sos_id') String sosId,@JsonKey(name: 'created_at') DateTime? createdAt, String? message, LiveDriverRef? driver,@JsonKey(name: 'bus_number') String? busNumber,@JsonKey(name: 'route_name') String? routeName
});


@override $LiveDriverRefCopyWith<$Res>? get driver;

}
/// @nodoc
class __$LiveSosAlertCopyWithImpl<$Res>
    implements _$LiveSosAlertCopyWith<$Res> {
  __$LiveSosAlertCopyWithImpl(this._self, this._then);

  final _LiveSosAlert _self;
  final $Res Function(_LiveSosAlert) _then;

/// Create a copy of LiveSosAlert
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sosId = null,Object? createdAt = freezed,Object? message = freezed,Object? driver = freezed,Object? busNumber = freezed,Object? routeName = freezed,}) {
  return _then(_LiveSosAlert(
sosId: null == sosId ? _self.sosId : sosId // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,driver: freezed == driver ? _self.driver : driver // ignore: cast_nullable_to_non_nullable
as LiveDriverRef?,busNumber: freezed == busNumber ? _self.busNumber : busNumber // ignore: cast_nullable_to_non_nullable
as String?,routeName: freezed == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of LiveSosAlert
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LiveDriverRefCopyWith<$Res>? get driver {
    if (_self.driver == null) {
    return null;
  }

  return $LiveDriverRefCopyWith<$Res>(_self.driver!, (value) {
    return _then(_self.copyWith(driver: value));
  });
}
}

// dart format on
