// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentInitiation {

 String get paymentId; String get merchantOrderId; String get redirectUrl;@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal get amount;
/// Create a copy of PaymentInitiation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentInitiationCopyWith<PaymentInitiation> get copyWith => _$PaymentInitiationCopyWithImpl<PaymentInitiation>(this as PaymentInitiation, _$identity);

  /// Serializes this PaymentInitiation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PaymentInitiation;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentInitiation&&(identical(other.paymentId, _this.paymentId) || other.paymentId == _this.paymentId)&&(identical(other.merchantOrderId, _this.merchantOrderId) || other.merchantOrderId == _this.merchantOrderId)&&(identical(other.redirectUrl, _this.redirectUrl) || other.redirectUrl == _this.redirectUrl)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PaymentInitiation;
  return Object.hash(runtimeType,_this.paymentId,_this.merchantOrderId,_this.redirectUrl,_this.amount);
}

@override
String toString() {
  final _this = this as PaymentInitiation;
  return 'PaymentInitiation(paymentId: ${_this.paymentId}, merchantOrderId: ${_this.merchantOrderId}, redirectUrl: ${_this.redirectUrl}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $PaymentInitiationCopyWith<$Res>  {
  factory $PaymentInitiationCopyWith(PaymentInitiation value, $Res Function(PaymentInitiation) _then) = _$PaymentInitiationCopyWithImpl;
@useResult
$Res call({
 String paymentId, String merchantOrderId, String redirectUrl,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount
});




}
/// @nodoc
class _$PaymentInitiationCopyWithImpl<$Res>
    implements $PaymentInitiationCopyWith<$Res> {
  _$PaymentInitiationCopyWithImpl(this._self, this._then);

  final PaymentInitiation _self;
  final $Res Function(PaymentInitiation) _then;

/// Create a copy of PaymentInitiation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentId = null,Object? merchantOrderId = null,Object? redirectUrl = null,Object? amount = null,}) {
  return _then(PaymentInitiation(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,merchantOrderId: null == merchantOrderId ? _self.merchantOrderId : merchantOrderId // ignore: cast_nullable_to_non_nullable
as String,redirectUrl: null == redirectUrl ? _self.redirectUrl : redirectUrl // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentInitiation].
extension PaymentInitiationPatterns on PaymentInitiation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentInitiation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentInitiation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentInitiation value)  $default,){
final _that = this;
switch (_that) {
case _PaymentInitiation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentInitiation value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentInitiation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String paymentId,  String merchantOrderId,  String redirectUrl, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentInitiation() when $default != null:
return $default(_that.paymentId,_that.merchantOrderId,_that.redirectUrl,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String paymentId,  String merchantOrderId,  String redirectUrl, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount)  $default,) {final _that = this;
switch (_that) {
case _PaymentInitiation():
return $default(_that.paymentId,_that.merchantOrderId,_that.redirectUrl,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String paymentId,  String merchantOrderId,  String redirectUrl, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount)?  $default,) {final _that = this;
switch (_that) {
case _PaymentInitiation() when $default != null:
return $default(_that.paymentId,_that.merchantOrderId,_that.redirectUrl,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentInitiation implements PaymentInitiation {
  const _PaymentInitiation({required this.paymentId, required this.merchantOrderId, required this.redirectUrl, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required this.amount});
  factory _PaymentInitiation.fromJson(Map<String, dynamic> json) => _$PaymentInitiationFromJson(json);

@override final  String paymentId;
@override final  String merchantOrderId;
@override final  String redirectUrl;
@override@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal amount;

/// Create a copy of PaymentInitiation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentInitiationCopyWith<_PaymentInitiation> get copyWith => __$PaymentInitiationCopyWithImpl<_PaymentInitiation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentInitiationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentInitiation&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.merchantOrderId, merchantOrderId) || other.merchantOrderId == merchantOrderId)&&(identical(other.redirectUrl, redirectUrl) || other.redirectUrl == redirectUrl)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,paymentId,merchantOrderId,redirectUrl,amount);
}

@override
String toString() {
    return 'PaymentInitiation(paymentId: $paymentId, merchantOrderId: $merchantOrderId, redirectUrl: $redirectUrl, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$PaymentInitiationCopyWith<$Res> implements $PaymentInitiationCopyWith<$Res> {
  factory _$PaymentInitiationCopyWith(_PaymentInitiation value, $Res Function(_PaymentInitiation) _then) = __$PaymentInitiationCopyWithImpl;
@override @useResult
$Res call({
 String paymentId, String merchantOrderId, String redirectUrl,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount
});




}
/// @nodoc
class __$PaymentInitiationCopyWithImpl<$Res>
    implements _$PaymentInitiationCopyWith<$Res> {
  __$PaymentInitiationCopyWithImpl(this._self, this._then);

  final _PaymentInitiation _self;
  final $Res Function(_PaymentInitiation) _then;

/// Create a copy of PaymentInitiation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentId = null,Object? merchantOrderId = null,Object? redirectUrl = null,Object? amount = null,}) {
  return _then(_PaymentInitiation(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,merchantOrderId: null == merchantOrderId ? _self.merchantOrderId : merchantOrderId // ignore: cast_nullable_to_non_nullable
as String,redirectUrl: null == redirectUrl ? _self.redirectUrl : redirectUrl // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}


}


/// @nodoc
mixin _$PaymentStatusResult {

@JsonKey(unknownEnumValue: PaymentStatus.unknown) PaymentStatus get status; String get merchantOrderId;
/// Create a copy of PaymentStatusResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentStatusResultCopyWith<PaymentStatusResult> get copyWith => _$PaymentStatusResultCopyWithImpl<PaymentStatusResult>(this as PaymentStatusResult, _$identity);

  /// Serializes this PaymentStatusResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PaymentStatusResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentStatusResult&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.merchantOrderId, _this.merchantOrderId) || other.merchantOrderId == _this.merchantOrderId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PaymentStatusResult;
  return Object.hash(runtimeType,_this.status,_this.merchantOrderId);
}

@override
String toString() {
  final _this = this as PaymentStatusResult;
  return 'PaymentStatusResult(status: ${_this.status}, merchantOrderId: ${_this.merchantOrderId})';
}


}

/// @nodoc
abstract mixin class $PaymentStatusResultCopyWith<$Res>  {
  factory $PaymentStatusResultCopyWith(PaymentStatusResult value, $Res Function(PaymentStatusResult) _then) = _$PaymentStatusResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(unknownEnumValue: PaymentStatus.unknown) PaymentStatus status, String merchantOrderId
});




}
/// @nodoc
class _$PaymentStatusResultCopyWithImpl<$Res>
    implements $PaymentStatusResultCopyWith<$Res> {
  _$PaymentStatusResultCopyWithImpl(this._self, this._then);

  final PaymentStatusResult _self;
  final $Res Function(PaymentStatusResult) _then;

/// Create a copy of PaymentStatusResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? merchantOrderId = null,}) {
  return _then(PaymentStatusResult(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,merchantOrderId: null == merchantOrderId ? _self.merchantOrderId : merchantOrderId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentStatusResult].
extension PaymentStatusResultPatterns on PaymentStatusResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentStatusResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentStatusResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentStatusResult value)  $default,){
final _that = this;
switch (_that) {
case _PaymentStatusResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentStatusResult value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentStatusResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: PaymentStatus.unknown)  PaymentStatus status,  String merchantOrderId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentStatusResult() when $default != null:
return $default(_that.status,_that.merchantOrderId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: PaymentStatus.unknown)  PaymentStatus status,  String merchantOrderId)  $default,) {final _that = this;
switch (_that) {
case _PaymentStatusResult():
return $default(_that.status,_that.merchantOrderId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(unknownEnumValue: PaymentStatus.unknown)  PaymentStatus status,  String merchantOrderId)?  $default,) {final _that = this;
switch (_that) {
case _PaymentStatusResult() when $default != null:
return $default(_that.status,_that.merchantOrderId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentStatusResult implements PaymentStatusResult {
  const _PaymentStatusResult({@JsonKey(unknownEnumValue: PaymentStatus.unknown) required this.status, required this.merchantOrderId});
  factory _PaymentStatusResult.fromJson(Map<String, dynamic> json) => _$PaymentStatusResultFromJson(json);

@override@JsonKey(unknownEnumValue: PaymentStatus.unknown) final  PaymentStatus status;
@override final  String merchantOrderId;

/// Create a copy of PaymentStatusResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentStatusResultCopyWith<_PaymentStatusResult> get copyWith => __$PaymentStatusResultCopyWithImpl<_PaymentStatusResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentStatusResultToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentStatusResult&&(identical(other.status, status) || other.status == status)&&(identical(other.merchantOrderId, merchantOrderId) || other.merchantOrderId == merchantOrderId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,status,merchantOrderId);
}

@override
String toString() {
    return 'PaymentStatusResult(status: $status, merchantOrderId: $merchantOrderId)';
}


}

/// @nodoc
abstract mixin class _$PaymentStatusResultCopyWith<$Res> implements $PaymentStatusResultCopyWith<$Res> {
  factory _$PaymentStatusResultCopyWith(_PaymentStatusResult value, $Res Function(_PaymentStatusResult) _then) = __$PaymentStatusResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(unknownEnumValue: PaymentStatus.unknown) PaymentStatus status, String merchantOrderId
});




}
/// @nodoc
class __$PaymentStatusResultCopyWithImpl<$Res>
    implements _$PaymentStatusResultCopyWith<$Res> {
  __$PaymentStatusResultCopyWithImpl(this._self, this._then);

  final _PaymentStatusResult _self;
  final $Res Function(_PaymentStatusResult) _then;

/// Create a copy of PaymentStatusResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? merchantOrderId = null,}) {
  return _then(_PaymentStatusResult(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,merchantOrderId: null == merchantOrderId ? _self.merchantOrderId : merchantOrderId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
