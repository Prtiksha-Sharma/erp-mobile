// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accounting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LedgerAccount {

@JsonKey(name: 'account_id') String get accountId;@JsonKey(name: 'account_code') String get accountCode;@JsonKey(name: 'account_name') String get accountName;@JsonKey(name: 'account_type') String get accountType;/// CASH / BANK for the cash-book / bank-book accounts, else usually null.
@JsonKey(name: 'account_subtype') String? get accountSubtype;@JsonKey(name: 'parent_account_id') String? get parentAccountId;@JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get openingBalance;/// DR / CR.
@JsonKey(name: 'opening_balance_side') String? get openingBalanceSide;@JsonKey(name: 'is_system_account') bool get isSystemAccount;@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of LedgerAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LedgerAccountCopyWith<LedgerAccount> get copyWith => _$LedgerAccountCopyWithImpl<LedgerAccount>(this as LedgerAccount, _$identity);

  /// Serializes this LedgerAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LedgerAccount;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LedgerAccount&&(identical(other.accountId, _this.accountId) || other.accountId == _this.accountId)&&(identical(other.accountCode, _this.accountCode) || other.accountCode == _this.accountCode)&&(identical(other.accountName, _this.accountName) || other.accountName == _this.accountName)&&(identical(other.accountType, _this.accountType) || other.accountType == _this.accountType)&&(identical(other.accountSubtype, _this.accountSubtype) || other.accountSubtype == _this.accountSubtype)&&(identical(other.parentAccountId, _this.parentAccountId) || other.parentAccountId == _this.parentAccountId)&&(identical(other.openingBalance, _this.openingBalance) || other.openingBalance == _this.openingBalance)&&(identical(other.openingBalanceSide, _this.openingBalanceSide) || other.openingBalanceSide == _this.openingBalanceSide)&&(identical(other.isSystemAccount, _this.isSystemAccount) || other.isSystemAccount == _this.isSystemAccount)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LedgerAccount;
  return Object.hash(runtimeType,_this.accountId,_this.accountCode,_this.accountName,_this.accountType,_this.accountSubtype,_this.parentAccountId,_this.openingBalance,_this.openingBalanceSide,_this.isSystemAccount,_this.isActive);
}

@override
String toString() {
  final _this = this as LedgerAccount;
  return 'LedgerAccount(accountId: ${_this.accountId}, accountCode: ${_this.accountCode}, accountName: ${_this.accountName}, accountType: ${_this.accountType}, accountSubtype: ${_this.accountSubtype}, parentAccountId: ${_this.parentAccountId}, openingBalance: ${_this.openingBalance}, openingBalanceSide: ${_this.openingBalanceSide}, isSystemAccount: ${_this.isSystemAccount}, isActive: ${_this.isActive})';
}


}

/// @nodoc
abstract mixin class $LedgerAccountCopyWith<$Res>  {
  factory $LedgerAccountCopyWith(LedgerAccount value, $Res Function(LedgerAccount) _then) = _$LedgerAccountCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'account_id') String accountId,@JsonKey(name: 'account_code') String accountCode,@JsonKey(name: 'account_name') String accountName,@JsonKey(name: 'account_type') String accountType,@JsonKey(name: 'account_subtype') String? accountSubtype,@JsonKey(name: 'parent_account_id') String? parentAccountId,@JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal openingBalance,@JsonKey(name: 'opening_balance_side') String? openingBalanceSide,@JsonKey(name: 'is_system_account') bool isSystemAccount,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class _$LedgerAccountCopyWithImpl<$Res>
    implements $LedgerAccountCopyWith<$Res> {
  _$LedgerAccountCopyWithImpl(this._self, this._then);

  final LedgerAccount _self;
  final $Res Function(LedgerAccount) _then;

/// Create a copy of LedgerAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountId = null,Object? accountCode = null,Object? accountName = null,Object? accountType = null,Object? accountSubtype = freezed,Object? parentAccountId = freezed,Object? openingBalance = null,Object? openingBalanceSide = freezed,Object? isSystemAccount = null,Object? isActive = null,}) {
  return _then(LedgerAccount(
accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,accountCode: null == accountCode ? _self.accountCode : accountCode // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountType: null == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as String,accountSubtype: freezed == accountSubtype ? _self.accountSubtype : accountSubtype // ignore: cast_nullable_to_non_nullable
as String?,parentAccountId: freezed == parentAccountId ? _self.parentAccountId : parentAccountId // ignore: cast_nullable_to_non_nullable
as String?,openingBalance: null == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as Decimal,openingBalanceSide: freezed == openingBalanceSide ? _self.openingBalanceSide : openingBalanceSide // ignore: cast_nullable_to_non_nullable
as String?,isSystemAccount: null == isSystemAccount ? _self.isSystemAccount : isSystemAccount // ignore: cast_nullable_to_non_nullable
as bool,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LedgerAccount].
extension LedgerAccountPatterns on LedgerAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LedgerAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LedgerAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LedgerAccount value)  $default,){
final _that = this;
switch (_that) {
case _LedgerAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LedgerAccount value)?  $default,){
final _that = this;
switch (_that) {
case _LedgerAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'account_id')  String accountId, @JsonKey(name: 'account_code')  String accountCode, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'account_type')  String accountType, @JsonKey(name: 'account_subtype')  String? accountSubtype, @JsonKey(name: 'parent_account_id')  String? parentAccountId, @JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal openingBalance, @JsonKey(name: 'opening_balance_side')  String? openingBalanceSide, @JsonKey(name: 'is_system_account')  bool isSystemAccount, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LedgerAccount() when $default != null:
return $default(_that.accountId,_that.accountCode,_that.accountName,_that.accountType,_that.accountSubtype,_that.parentAccountId,_that.openingBalance,_that.openingBalanceSide,_that.isSystemAccount,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'account_id')  String accountId, @JsonKey(name: 'account_code')  String accountCode, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'account_type')  String accountType, @JsonKey(name: 'account_subtype')  String? accountSubtype, @JsonKey(name: 'parent_account_id')  String? parentAccountId, @JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal openingBalance, @JsonKey(name: 'opening_balance_side')  String? openingBalanceSide, @JsonKey(name: 'is_system_account')  bool isSystemAccount, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _LedgerAccount():
return $default(_that.accountId,_that.accountCode,_that.accountName,_that.accountType,_that.accountSubtype,_that.parentAccountId,_that.openingBalance,_that.openingBalanceSide,_that.isSystemAccount,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'account_id')  String accountId, @JsonKey(name: 'account_code')  String accountCode, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'account_type')  String accountType, @JsonKey(name: 'account_subtype')  String? accountSubtype, @JsonKey(name: 'parent_account_id')  String? parentAccountId, @JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal openingBalance, @JsonKey(name: 'opening_balance_side')  String? openingBalanceSide, @JsonKey(name: 'is_system_account')  bool isSystemAccount, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _LedgerAccount() when $default != null:
return $default(_that.accountId,_that.accountCode,_that.accountName,_that.accountType,_that.accountSubtype,_that.parentAccountId,_that.openingBalance,_that.openingBalanceSide,_that.isSystemAccount,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LedgerAccount implements LedgerAccount {
  const _LedgerAccount({@JsonKey(name: 'account_id') required this.accountId, @JsonKey(name: 'account_code') this.accountCode = '', @JsonKey(name: 'account_name') this.accountName = '', @JsonKey(name: 'account_type') this.accountType = '', @JsonKey(name: 'account_subtype') this.accountSubtype, @JsonKey(name: 'parent_account_id') this.parentAccountId, @JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) required this.openingBalance, @JsonKey(name: 'opening_balance_side') this.openingBalanceSide, @JsonKey(name: 'is_system_account') this.isSystemAccount = false, @JsonKey(name: 'is_active') this.isActive = true});
  factory _LedgerAccount.fromJson(Map<String, dynamic> json) => _$LedgerAccountFromJson(json);

@override@JsonKey(name: 'account_id') final  String accountId;
@override@JsonKey(name: 'account_code') final  String accountCode;
@override@JsonKey(name: 'account_name') final  String accountName;
@override@JsonKey(name: 'account_type') final  String accountType;
/// CASH / BANK for the cash-book / bank-book accounts, else usually null.
@override@JsonKey(name: 'account_subtype') final  String? accountSubtype;
@override@JsonKey(name: 'parent_account_id') final  String? parentAccountId;
@override@JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal openingBalance;
/// DR / CR.
@override@JsonKey(name: 'opening_balance_side') final  String? openingBalanceSide;
@override@JsonKey(name: 'is_system_account') final  bool isSystemAccount;
@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of LedgerAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LedgerAccountCopyWith<_LedgerAccount> get copyWith => __$LedgerAccountCopyWithImpl<_LedgerAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LedgerAccountToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LedgerAccount&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.accountCode, accountCode) || other.accountCode == accountCode)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountType, accountType) || other.accountType == accountType)&&(identical(other.accountSubtype, accountSubtype) || other.accountSubtype == accountSubtype)&&(identical(other.parentAccountId, parentAccountId) || other.parentAccountId == parentAccountId)&&(identical(other.openingBalance, openingBalance) || other.openingBalance == openingBalance)&&(identical(other.openingBalanceSide, openingBalanceSide) || other.openingBalanceSide == openingBalanceSide)&&(identical(other.isSystemAccount, isSystemAccount) || other.isSystemAccount == isSystemAccount)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,accountId,accountCode,accountName,accountType,accountSubtype,parentAccountId,openingBalance,openingBalanceSide,isSystemAccount,isActive);
}

@override
String toString() {
    return 'LedgerAccount(accountId: $accountId, accountCode: $accountCode, accountName: $accountName, accountType: $accountType, accountSubtype: $accountSubtype, parentAccountId: $parentAccountId, openingBalance: $openingBalance, openingBalanceSide: $openingBalanceSide, isSystemAccount: $isSystemAccount, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$LedgerAccountCopyWith<$Res> implements $LedgerAccountCopyWith<$Res> {
  factory _$LedgerAccountCopyWith(_LedgerAccount value, $Res Function(_LedgerAccount) _then) = __$LedgerAccountCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'account_id') String accountId,@JsonKey(name: 'account_code') String accountCode,@JsonKey(name: 'account_name') String accountName,@JsonKey(name: 'account_type') String accountType,@JsonKey(name: 'account_subtype') String? accountSubtype,@JsonKey(name: 'parent_account_id') String? parentAccountId,@JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal openingBalance,@JsonKey(name: 'opening_balance_side') String? openingBalanceSide,@JsonKey(name: 'is_system_account') bool isSystemAccount,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class __$LedgerAccountCopyWithImpl<$Res>
    implements _$LedgerAccountCopyWith<$Res> {
  __$LedgerAccountCopyWithImpl(this._self, this._then);

  final _LedgerAccount _self;
  final $Res Function(_LedgerAccount) _then;

/// Create a copy of LedgerAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountId = null,Object? accountCode = null,Object? accountName = null,Object? accountType = null,Object? accountSubtype = freezed,Object? parentAccountId = freezed,Object? openingBalance = null,Object? openingBalanceSide = freezed,Object? isSystemAccount = null,Object? isActive = null,}) {
  return _then(_LedgerAccount(
accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,accountCode: null == accountCode ? _self.accountCode : accountCode // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountType: null == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as String,accountSubtype: freezed == accountSubtype ? _self.accountSubtype : accountSubtype // ignore: cast_nullable_to_non_nullable
as String?,parentAccountId: freezed == parentAccountId ? _self.parentAccountId : parentAccountId // ignore: cast_nullable_to_non_nullable
as String?,openingBalance: null == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as Decimal,openingBalanceSide: freezed == openingBalanceSide ? _self.openingBalanceSide : openingBalanceSide // ignore: cast_nullable_to_non_nullable
as String?,isSystemAccount: null == isSystemAccount ? _self.isSystemAccount : isSystemAccount // ignore: cast_nullable_to_non_nullable
as bool,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ReportPeriod {

 String? get from; String? get to;
/// Create a copy of ReportPeriod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportPeriodCopyWith<ReportPeriod> get copyWith => _$ReportPeriodCopyWithImpl<ReportPeriod>(this as ReportPeriod, _$identity);

  /// Serializes this ReportPeriod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReportPeriod;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportPeriod&&(identical(other.from, _this.from) || other.from == _this.from)&&(identical(other.to, _this.to) || other.to == _this.to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReportPeriod;
  return Object.hash(runtimeType,_this.from,_this.to);
}

@override
String toString() {
  final _this = this as ReportPeriod;
  return 'ReportPeriod(from: ${_this.from}, to: ${_this.to})';
}


}

/// @nodoc
abstract mixin class $ReportPeriodCopyWith<$Res>  {
  factory $ReportPeriodCopyWith(ReportPeriod value, $Res Function(ReportPeriod) _then) = _$ReportPeriodCopyWithImpl;
@useResult
$Res call({
 String? from, String? to
});




}
/// @nodoc
class _$ReportPeriodCopyWithImpl<$Res>
    implements $ReportPeriodCopyWith<$Res> {
  _$ReportPeriodCopyWithImpl(this._self, this._then);

  final ReportPeriod _self;
  final $Res Function(ReportPeriod) _then;

/// Create a copy of ReportPeriod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = freezed,Object? to = freezed,}) {
  return _then(ReportPeriod(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportPeriod].
extension ReportPeriodPatterns on ReportPeriod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportPeriod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportPeriod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportPeriod value)  $default,){
final _that = this;
switch (_that) {
case _ReportPeriod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportPeriod value)?  $default,){
final _that = this;
switch (_that) {
case _ReportPeriod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? from,  String? to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportPeriod() when $default != null:
return $default(_that.from,_that.to);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? from,  String? to)  $default,) {final _that = this;
switch (_that) {
case _ReportPeriod():
return $default(_that.from,_that.to);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? from,  String? to)?  $default,) {final _that = this;
switch (_that) {
case _ReportPeriod() when $default != null:
return $default(_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportPeriod implements ReportPeriod {
  const _ReportPeriod({this.from, this.to});
  factory _ReportPeriod.fromJson(Map<String, dynamic> json) => _$ReportPeriodFromJson(json);

@override final  String? from;
@override final  String? to;

/// Create a copy of ReportPeriod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportPeriodCopyWith<_ReportPeriod> get copyWith => __$ReportPeriodCopyWithImpl<_ReportPeriod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportPeriodToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportPeriod&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,from,to);
}

@override
String toString() {
    return 'ReportPeriod(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$ReportPeriodCopyWith<$Res> implements $ReportPeriodCopyWith<$Res> {
  factory _$ReportPeriodCopyWith(_ReportPeriod value, $Res Function(_ReportPeriod) _then) = __$ReportPeriodCopyWithImpl;
@override @useResult
$Res call({
 String? from, String? to
});




}
/// @nodoc
class __$ReportPeriodCopyWithImpl<$Res>
    implements _$ReportPeriodCopyWith<$Res> {
  __$ReportPeriodCopyWithImpl(this._self, this._then);

  final _ReportPeriod _self;
  final $Res Function(_ReportPeriod) _then;

/// Create a copy of ReportPeriod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = freezed,Object? to = freezed,}) {
  return _then(_ReportPeriod(
from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AccountTotalRow {

@JsonKey(name: 'account_id') String get accountId;@JsonKey(name: 'account_code') String get accountCode;@JsonKey(name: 'account_name') String get accountName;@JsonKey(name: 'account_type') String get accountType;@JsonKey(name: 'account_subtype') String? get accountSubtype;@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalDebit;@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalCredit;@JsonKey(name: 'net', readValue: _readNet, fromJson: decimalFromJson, toJson: decimalToJson) Decimal get net;
/// Create a copy of AccountTotalRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountTotalRowCopyWith<AccountTotalRow> get copyWith => _$AccountTotalRowCopyWithImpl<AccountTotalRow>(this as AccountTotalRow, _$identity);

  /// Serializes this AccountTotalRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AccountTotalRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountTotalRow&&(identical(other.accountId, _this.accountId) || other.accountId == _this.accountId)&&(identical(other.accountCode, _this.accountCode) || other.accountCode == _this.accountCode)&&(identical(other.accountName, _this.accountName) || other.accountName == _this.accountName)&&(identical(other.accountType, _this.accountType) || other.accountType == _this.accountType)&&(identical(other.accountSubtype, _this.accountSubtype) || other.accountSubtype == _this.accountSubtype)&&(identical(other.totalDebit, _this.totalDebit) || other.totalDebit == _this.totalDebit)&&(identical(other.totalCredit, _this.totalCredit) || other.totalCredit == _this.totalCredit)&&(identical(other.net, _this.net) || other.net == _this.net));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AccountTotalRow;
  return Object.hash(runtimeType,_this.accountId,_this.accountCode,_this.accountName,_this.accountType,_this.accountSubtype,_this.totalDebit,_this.totalCredit,_this.net);
}

@override
String toString() {
  final _this = this as AccountTotalRow;
  return 'AccountTotalRow(accountId: ${_this.accountId}, accountCode: ${_this.accountCode}, accountName: ${_this.accountName}, accountType: ${_this.accountType}, accountSubtype: ${_this.accountSubtype}, totalDebit: ${_this.totalDebit}, totalCredit: ${_this.totalCredit}, net: ${_this.net})';
}


}

/// @nodoc
abstract mixin class $AccountTotalRowCopyWith<$Res>  {
  factory $AccountTotalRowCopyWith(AccountTotalRow value, $Res Function(AccountTotalRow) _then) = _$AccountTotalRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'account_id') String accountId,@JsonKey(name: 'account_code') String accountCode,@JsonKey(name: 'account_name') String accountName,@JsonKey(name: 'account_type') String accountType,@JsonKey(name: 'account_subtype') String? accountSubtype,@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDebit,@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalCredit,@JsonKey(name: 'net', readValue: _readNet, fromJson: decimalFromJson, toJson: decimalToJson) Decimal net
});




}
/// @nodoc
class _$AccountTotalRowCopyWithImpl<$Res>
    implements $AccountTotalRowCopyWith<$Res> {
  _$AccountTotalRowCopyWithImpl(this._self, this._then);

  final AccountTotalRow _self;
  final $Res Function(AccountTotalRow) _then;

/// Create a copy of AccountTotalRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountId = null,Object? accountCode = null,Object? accountName = null,Object? accountType = null,Object? accountSubtype = freezed,Object? totalDebit = null,Object? totalCredit = null,Object? net = null,}) {
  return _then(AccountTotalRow(
accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,accountCode: null == accountCode ? _self.accountCode : accountCode // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountType: null == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as String,accountSubtype: freezed == accountSubtype ? _self.accountSubtype : accountSubtype // ignore: cast_nullable_to_non_nullable
as String?,totalDebit: null == totalDebit ? _self.totalDebit : totalDebit // ignore: cast_nullable_to_non_nullable
as Decimal,totalCredit: null == totalCredit ? _self.totalCredit : totalCredit // ignore: cast_nullable_to_non_nullable
as Decimal,net: null == net ? _self.net : net // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountTotalRow].
extension AccountTotalRowPatterns on AccountTotalRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountTotalRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountTotalRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountTotalRow value)  $default,){
final _that = this;
switch (_that) {
case _AccountTotalRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountTotalRow value)?  $default,){
final _that = this;
switch (_that) {
case _AccountTotalRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'account_id')  String accountId, @JsonKey(name: 'account_code')  String accountCode, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'account_type')  String accountType, @JsonKey(name: 'account_subtype')  String? accountSubtype, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit, @JsonKey(name: 'net', readValue: _readNet, fromJson: decimalFromJson, toJson: decimalToJson)  Decimal net)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountTotalRow() when $default != null:
return $default(_that.accountId,_that.accountCode,_that.accountName,_that.accountType,_that.accountSubtype,_that.totalDebit,_that.totalCredit,_that.net);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'account_id')  String accountId, @JsonKey(name: 'account_code')  String accountCode, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'account_type')  String accountType, @JsonKey(name: 'account_subtype')  String? accountSubtype, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit, @JsonKey(name: 'net', readValue: _readNet, fromJson: decimalFromJson, toJson: decimalToJson)  Decimal net)  $default,) {final _that = this;
switch (_that) {
case _AccountTotalRow():
return $default(_that.accountId,_that.accountCode,_that.accountName,_that.accountType,_that.accountSubtype,_that.totalDebit,_that.totalCredit,_that.net);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'account_id')  String accountId, @JsonKey(name: 'account_code')  String accountCode, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'account_type')  String accountType, @JsonKey(name: 'account_subtype')  String? accountSubtype, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit, @JsonKey(name: 'net', readValue: _readNet, fromJson: decimalFromJson, toJson: decimalToJson)  Decimal net)?  $default,) {final _that = this;
switch (_that) {
case _AccountTotalRow() when $default != null:
return $default(_that.accountId,_that.accountCode,_that.accountName,_that.accountType,_that.accountSubtype,_that.totalDebit,_that.totalCredit,_that.net);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountTotalRow implements AccountTotalRow {
  const _AccountTotalRow({@JsonKey(name: 'account_id') required this.accountId, @JsonKey(name: 'account_code') this.accountCode = '', @JsonKey(name: 'account_name') this.accountName = '', @JsonKey(name: 'account_type') this.accountType = '', @JsonKey(name: 'account_subtype') this.accountSubtype, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalCredit, @JsonKey(name: 'net', readValue: _readNet, fromJson: decimalFromJson, toJson: decimalToJson) required this.net});
  factory _AccountTotalRow.fromJson(Map<String, dynamic> json) => _$AccountTotalRowFromJson(json);

@override@JsonKey(name: 'account_id') final  String accountId;
@override@JsonKey(name: 'account_code') final  String accountCode;
@override@JsonKey(name: 'account_name') final  String accountName;
@override@JsonKey(name: 'account_type') final  String accountType;
@override@JsonKey(name: 'account_subtype') final  String? accountSubtype;
@override@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalDebit;
@override@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalCredit;
@override@JsonKey(name: 'net', readValue: _readNet, fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal net;

/// Create a copy of AccountTotalRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountTotalRowCopyWith<_AccountTotalRow> get copyWith => __$AccountTotalRowCopyWithImpl<_AccountTotalRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountTotalRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountTotalRow&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.accountCode, accountCode) || other.accountCode == accountCode)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountType, accountType) || other.accountType == accountType)&&(identical(other.accountSubtype, accountSubtype) || other.accountSubtype == accountSubtype)&&(identical(other.totalDebit, totalDebit) || other.totalDebit == totalDebit)&&(identical(other.totalCredit, totalCredit) || other.totalCredit == totalCredit)&&(identical(other.net, net) || other.net == net));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,accountId,accountCode,accountName,accountType,accountSubtype,totalDebit,totalCredit,net);
}

@override
String toString() {
    return 'AccountTotalRow(accountId: $accountId, accountCode: $accountCode, accountName: $accountName, accountType: $accountType, accountSubtype: $accountSubtype, totalDebit: $totalDebit, totalCredit: $totalCredit, net: $net)';
}


}

/// @nodoc
abstract mixin class _$AccountTotalRowCopyWith<$Res> implements $AccountTotalRowCopyWith<$Res> {
  factory _$AccountTotalRowCopyWith(_AccountTotalRow value, $Res Function(_AccountTotalRow) _then) = __$AccountTotalRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'account_id') String accountId,@JsonKey(name: 'account_code') String accountCode,@JsonKey(name: 'account_name') String accountName,@JsonKey(name: 'account_type') String accountType,@JsonKey(name: 'account_subtype') String? accountSubtype,@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDebit,@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalCredit,@JsonKey(name: 'net', readValue: _readNet, fromJson: decimalFromJson, toJson: decimalToJson) Decimal net
});




}
/// @nodoc
class __$AccountTotalRowCopyWithImpl<$Res>
    implements _$AccountTotalRowCopyWith<$Res> {
  __$AccountTotalRowCopyWithImpl(this._self, this._then);

  final _AccountTotalRow _self;
  final $Res Function(_AccountTotalRow) _then;

/// Create a copy of AccountTotalRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountId = null,Object? accountCode = null,Object? accountName = null,Object? accountType = null,Object? accountSubtype = freezed,Object? totalDebit = null,Object? totalCredit = null,Object? net = null,}) {
  return _then(_AccountTotalRow(
accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,accountCode: null == accountCode ? _self.accountCode : accountCode // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountType: null == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as String,accountSubtype: freezed == accountSubtype ? _self.accountSubtype : accountSubtype // ignore: cast_nullable_to_non_nullable
as String?,totalDebit: null == totalDebit ? _self.totalDebit : totalDebit // ignore: cast_nullable_to_non_nullable
as Decimal,totalCredit: null == totalCredit ? _self.totalCredit : totalCredit // ignore: cast_nullable_to_non_nullable
as Decimal,net: null == net ? _self.net : net // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}


}


/// @nodoc
mixin _$AccountGroup {

 String? get description; List<AccountTotalRow> get accounts;@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal get total;/// Balance sheet equity only: the period's P&L folded into equity.
@JsonKey(name: 'net_income', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson) Decimal? get netIncome;
/// Create a copy of AccountGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountGroupCopyWith<AccountGroup> get copyWith => _$AccountGroupCopyWithImpl<AccountGroup>(this as AccountGroup, _$identity);

  /// Serializes this AccountGroup to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AccountGroup;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountGroup&&(identical(other.description, _this.description) || other.description == _this.description)&&const DeepCollectionEquality().equals(other.accounts, _this.accounts)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.netIncome, _this.netIncome) || other.netIncome == _this.netIncome));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AccountGroup;
  return Object.hash(runtimeType,_this.description,const DeepCollectionEquality().hash(_this.accounts),_this.total,_this.netIncome);
}

@override
String toString() {
  final _this = this as AccountGroup;
  return 'AccountGroup(description: ${_this.description}, accounts: ${_this.accounts}, total: ${_this.total}, netIncome: ${_this.netIncome})';
}


}

/// @nodoc
abstract mixin class $AccountGroupCopyWith<$Res>  {
  factory $AccountGroupCopyWith(AccountGroup value, $Res Function(AccountGroup) _then) = _$AccountGroupCopyWithImpl;
@useResult
$Res call({
 String? description, List<AccountTotalRow> accounts,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal total,@JsonKey(name: 'net_income', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson) Decimal? netIncome
});




}
/// @nodoc
class _$AccountGroupCopyWithImpl<$Res>
    implements $AccountGroupCopyWith<$Res> {
  _$AccountGroupCopyWithImpl(this._self, this._then);

  final AccountGroup _self;
  final $Res Function(AccountGroup) _then;

/// Create a copy of AccountGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = freezed,Object? accounts = null,Object? total = null,Object? netIncome = freezed,}) {
  return _then(AccountGroup(
description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,accounts: null == accounts ? _self.accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<AccountTotalRow>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as Decimal,netIncome: freezed == netIncome ? _self.netIncome : netIncome // ignore: cast_nullable_to_non_nullable
as Decimal?,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountGroup].
extension AccountGroupPatterns on AccountGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountGroup value)  $default,){
final _that = this;
switch (_that) {
case _AccountGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountGroup value)?  $default,){
final _that = this;
switch (_that) {
case _AccountGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? description,  List<AccountTotalRow> accounts, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal total, @JsonKey(name: 'net_income', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson)  Decimal? netIncome)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountGroup() when $default != null:
return $default(_that.description,_that.accounts,_that.total,_that.netIncome);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? description,  List<AccountTotalRow> accounts, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal total, @JsonKey(name: 'net_income', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson)  Decimal? netIncome)  $default,) {final _that = this;
switch (_that) {
case _AccountGroup():
return $default(_that.description,_that.accounts,_that.total,_that.netIncome);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? description,  List<AccountTotalRow> accounts, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal total, @JsonKey(name: 'net_income', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson)  Decimal? netIncome)?  $default,) {final _that = this;
switch (_that) {
case _AccountGroup() when $default != null:
return $default(_that.description,_that.accounts,_that.total,_that.netIncome);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountGroup implements AccountGroup {
  const _AccountGroup({this.description,  List<AccountTotalRow> accounts = const [], @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required this.total, @JsonKey(name: 'net_income', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson) this.netIncome}): _accounts = accounts;
  factory _AccountGroup.fromJson(Map<String, dynamic> json) => _$AccountGroupFromJson(json);

@override final  String? description;
 final  List<AccountTotalRow> _accounts;
@override@JsonKey() List<AccountTotalRow> get accounts {
  if (_accounts is EqualUnmodifiableListView) return _accounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accounts);
}

@override@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal total;
/// Balance sheet equity only: the period's P&L folded into equity.
@override@JsonKey(name: 'net_income', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson) final  Decimal? netIncome;

/// Create a copy of AccountGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountGroupCopyWith<_AccountGroup> get copyWith => __$AccountGroupCopyWithImpl<_AccountGroup>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountGroupToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountGroup&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.accounts, _accounts)&&(identical(other.total, total) || other.total == total)&&(identical(other.netIncome, netIncome) || other.netIncome == netIncome));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,description,const DeepCollectionEquality().hash(_accounts),total,netIncome);
}

@override
String toString() {
    return 'AccountGroup(description: $description, accounts: $accounts, total: $total, netIncome: $netIncome)';
}


}

/// @nodoc
abstract mixin class _$AccountGroupCopyWith<$Res> implements $AccountGroupCopyWith<$Res> {
  factory _$AccountGroupCopyWith(_AccountGroup value, $Res Function(_AccountGroup) _then) = __$AccountGroupCopyWithImpl;
@override @useResult
$Res call({
 String? description, List<AccountTotalRow> accounts,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal total,@JsonKey(name: 'net_income', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson) Decimal? netIncome
});




}
/// @nodoc
class __$AccountGroupCopyWithImpl<$Res>
    implements _$AccountGroupCopyWith<$Res> {
  __$AccountGroupCopyWithImpl(this._self, this._then);

  final _AccountGroup _self;
  final $Res Function(_AccountGroup) _then;

/// Create a copy of AccountGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = freezed,Object? accounts = null,Object? total = null,Object? netIncome = freezed,}) {
  return _then(_AccountGroup(
description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,accounts: null == accounts ? _self._accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<AccountTotalRow>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as Decimal,netIncome: freezed == netIncome ? _self.netIncome : netIncome // ignore: cast_nullable_to_non_nullable
as Decimal?,
  ));
}


}


/// @nodoc
mixin _$TrialBalance {

@JsonKey(name: 'as_of') String? get asOf; List<AccountTotalRow> get accounts;@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalDebit;@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalCredit;/// Total debits equal total credits.
@JsonKey(name: 'tie_out') bool get tieOut;
/// Create a copy of TrialBalance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrialBalanceCopyWith<TrialBalance> get copyWith => _$TrialBalanceCopyWithImpl<TrialBalance>(this as TrialBalance, _$identity);

  /// Serializes this TrialBalance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TrialBalance;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrialBalance&&(identical(other.asOf, _this.asOf) || other.asOf == _this.asOf)&&const DeepCollectionEquality().equals(other.accounts, _this.accounts)&&(identical(other.totalDebit, _this.totalDebit) || other.totalDebit == _this.totalDebit)&&(identical(other.totalCredit, _this.totalCredit) || other.totalCredit == _this.totalCredit)&&(identical(other.tieOut, _this.tieOut) || other.tieOut == _this.tieOut));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TrialBalance;
  return Object.hash(runtimeType,_this.asOf,const DeepCollectionEquality().hash(_this.accounts),_this.totalDebit,_this.totalCredit,_this.tieOut);
}

@override
String toString() {
  final _this = this as TrialBalance;
  return 'TrialBalance(asOf: ${_this.asOf}, accounts: ${_this.accounts}, totalDebit: ${_this.totalDebit}, totalCredit: ${_this.totalCredit}, tieOut: ${_this.tieOut})';
}


}

/// @nodoc
abstract mixin class $TrialBalanceCopyWith<$Res>  {
  factory $TrialBalanceCopyWith(TrialBalance value, $Res Function(TrialBalance) _then) = _$TrialBalanceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'as_of') String? asOf, List<AccountTotalRow> accounts,@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDebit,@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalCredit,@JsonKey(name: 'tie_out') bool tieOut
});




}
/// @nodoc
class _$TrialBalanceCopyWithImpl<$Res>
    implements $TrialBalanceCopyWith<$Res> {
  _$TrialBalanceCopyWithImpl(this._self, this._then);

  final TrialBalance _self;
  final $Res Function(TrialBalance) _then;

/// Create a copy of TrialBalance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? asOf = freezed,Object? accounts = null,Object? totalDebit = null,Object? totalCredit = null,Object? tieOut = null,}) {
  return _then(TrialBalance(
asOf: freezed == asOf ? _self.asOf : asOf // ignore: cast_nullable_to_non_nullable
as String?,accounts: null == accounts ? _self.accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<AccountTotalRow>,totalDebit: null == totalDebit ? _self.totalDebit : totalDebit // ignore: cast_nullable_to_non_nullable
as Decimal,totalCredit: null == totalCredit ? _self.totalCredit : totalCredit // ignore: cast_nullable_to_non_nullable
as Decimal,tieOut: null == tieOut ? _self.tieOut : tieOut // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TrialBalance].
extension TrialBalancePatterns on TrialBalance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrialBalance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrialBalance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrialBalance value)  $default,){
final _that = this;
switch (_that) {
case _TrialBalance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrialBalance value)?  $default,){
final _that = this;
switch (_that) {
case _TrialBalance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'as_of')  String? asOf,  List<AccountTotalRow> accounts, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit, @JsonKey(name: 'tie_out')  bool tieOut)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrialBalance() when $default != null:
return $default(_that.asOf,_that.accounts,_that.totalDebit,_that.totalCredit,_that.tieOut);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'as_of')  String? asOf,  List<AccountTotalRow> accounts, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit, @JsonKey(name: 'tie_out')  bool tieOut)  $default,) {final _that = this;
switch (_that) {
case _TrialBalance():
return $default(_that.asOf,_that.accounts,_that.totalDebit,_that.totalCredit,_that.tieOut);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'as_of')  String? asOf,  List<AccountTotalRow> accounts, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit, @JsonKey(name: 'tie_out')  bool tieOut)?  $default,) {final _that = this;
switch (_that) {
case _TrialBalance() when $default != null:
return $default(_that.asOf,_that.accounts,_that.totalDebit,_that.totalCredit,_that.tieOut);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrialBalance implements TrialBalance {
  const _TrialBalance({@JsonKey(name: 'as_of') this.asOf,  List<AccountTotalRow> accounts = const [], @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalCredit, @JsonKey(name: 'tie_out') this.tieOut = false}): _accounts = accounts;
  factory _TrialBalance.fromJson(Map<String, dynamic> json) => _$TrialBalanceFromJson(json);

@override@JsonKey(name: 'as_of') final  String? asOf;
 final  List<AccountTotalRow> _accounts;
@override@JsonKey() List<AccountTotalRow> get accounts {
  if (_accounts is EqualUnmodifiableListView) return _accounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accounts);
}

@override@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalDebit;
@override@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalCredit;
/// Total debits equal total credits.
@override@JsonKey(name: 'tie_out') final  bool tieOut;

/// Create a copy of TrialBalance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrialBalanceCopyWith<_TrialBalance> get copyWith => __$TrialBalanceCopyWithImpl<_TrialBalance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrialBalanceToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrialBalance&&(identical(other.asOf, asOf) || other.asOf == asOf)&&const DeepCollectionEquality().equals(other.accounts, _accounts)&&(identical(other.totalDebit, totalDebit) || other.totalDebit == totalDebit)&&(identical(other.totalCredit, totalCredit) || other.totalCredit == totalCredit)&&(identical(other.tieOut, tieOut) || other.tieOut == tieOut));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,asOf,const DeepCollectionEquality().hash(_accounts),totalDebit,totalCredit,tieOut);
}

@override
String toString() {
    return 'TrialBalance(asOf: $asOf, accounts: $accounts, totalDebit: $totalDebit, totalCredit: $totalCredit, tieOut: $tieOut)';
}


}

/// @nodoc
abstract mixin class _$TrialBalanceCopyWith<$Res> implements $TrialBalanceCopyWith<$Res> {
  factory _$TrialBalanceCopyWith(_TrialBalance value, $Res Function(_TrialBalance) _then) = __$TrialBalanceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'as_of') String? asOf, List<AccountTotalRow> accounts,@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDebit,@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalCredit,@JsonKey(name: 'tie_out') bool tieOut
});




}
/// @nodoc
class __$TrialBalanceCopyWithImpl<$Res>
    implements _$TrialBalanceCopyWith<$Res> {
  __$TrialBalanceCopyWithImpl(this._self, this._then);

  final _TrialBalance _self;
  final $Res Function(_TrialBalance) _then;

/// Create a copy of TrialBalance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? asOf = freezed,Object? accounts = null,Object? totalDebit = null,Object? totalCredit = null,Object? tieOut = null,}) {
  return _then(_TrialBalance(
asOf: freezed == asOf ? _self.asOf : asOf // ignore: cast_nullable_to_non_nullable
as String?,accounts: null == accounts ? _self._accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<AccountTotalRow>,totalDebit: null == totalDebit ? _self.totalDebit : totalDebit // ignore: cast_nullable_to_non_nullable
as Decimal,totalCredit: null == totalCredit ? _self.totalCredit : totalCredit // ignore: cast_nullable_to_non_nullable
as Decimal,tieOut: null == tieOut ? _self.tieOut : tieOut // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ProfitAndLoss {

 ReportPeriod? get period; AccountGroup get income; AccountGroup get expenses;@JsonKey(name: 'net_profit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get netProfit;@JsonKey(name: 'is_profit') bool get isProfit;
/// Create a copy of ProfitAndLoss
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfitAndLossCopyWith<ProfitAndLoss> get copyWith => _$ProfitAndLossCopyWithImpl<ProfitAndLoss>(this as ProfitAndLoss, _$identity);

  /// Serializes this ProfitAndLoss to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProfitAndLoss;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfitAndLoss&&(identical(other.period, _this.period) || other.period == _this.period)&&(identical(other.income, _this.income) || other.income == _this.income)&&(identical(other.expenses, _this.expenses) || other.expenses == _this.expenses)&&(identical(other.netProfit, _this.netProfit) || other.netProfit == _this.netProfit)&&(identical(other.isProfit, _this.isProfit) || other.isProfit == _this.isProfit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProfitAndLoss;
  return Object.hash(runtimeType,_this.period,_this.income,_this.expenses,_this.netProfit,_this.isProfit);
}

@override
String toString() {
  final _this = this as ProfitAndLoss;
  return 'ProfitAndLoss(period: ${_this.period}, income: ${_this.income}, expenses: ${_this.expenses}, netProfit: ${_this.netProfit}, isProfit: ${_this.isProfit})';
}


}

/// @nodoc
abstract mixin class $ProfitAndLossCopyWith<$Res>  {
  factory $ProfitAndLossCopyWith(ProfitAndLoss value, $Res Function(ProfitAndLoss) _then) = _$ProfitAndLossCopyWithImpl;
@useResult
$Res call({
 ReportPeriod? period, AccountGroup income, AccountGroup expenses,@JsonKey(name: 'net_profit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal netProfit,@JsonKey(name: 'is_profit') bool isProfit
});


$ReportPeriodCopyWith<$Res>? get period;$AccountGroupCopyWith<$Res> get income;$AccountGroupCopyWith<$Res> get expenses;

}
/// @nodoc
class _$ProfitAndLossCopyWithImpl<$Res>
    implements $ProfitAndLossCopyWith<$Res> {
  _$ProfitAndLossCopyWithImpl(this._self, this._then);

  final ProfitAndLoss _self;
  final $Res Function(ProfitAndLoss) _then;

/// Create a copy of ProfitAndLoss
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = freezed,Object? income = null,Object? expenses = null,Object? netProfit = null,Object? isProfit = null,}) {
  return _then(ProfitAndLoss(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriod?,income: null == income ? _self.income : income // ignore: cast_nullable_to_non_nullable
as AccountGroup,expenses: null == expenses ? _self.expenses : expenses // ignore: cast_nullable_to_non_nullable
as AccountGroup,netProfit: null == netProfit ? _self.netProfit : netProfit // ignore: cast_nullable_to_non_nullable
as Decimal,isProfit: null == isProfit ? _self.isProfit : isProfit // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ProfitAndLoss
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $ReportPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}/// Create a copy of ProfitAndLoss
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountGroupCopyWith<$Res> get income {
  
  return $AccountGroupCopyWith<$Res>(_self.income, (value) {
    return _then(_self.copyWith(income: value));
  });
}/// Create a copy of ProfitAndLoss
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountGroupCopyWith<$Res> get expenses {
  
  return $AccountGroupCopyWith<$Res>(_self.expenses, (value) {
    return _then(_self.copyWith(expenses: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfitAndLoss].
extension ProfitAndLossPatterns on ProfitAndLoss {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfitAndLoss value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfitAndLoss() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfitAndLoss value)  $default,){
final _that = this;
switch (_that) {
case _ProfitAndLoss():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfitAndLoss value)?  $default,){
final _that = this;
switch (_that) {
case _ProfitAndLoss() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReportPeriod? period,  AccountGroup income,  AccountGroup expenses, @JsonKey(name: 'net_profit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netProfit, @JsonKey(name: 'is_profit')  bool isProfit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfitAndLoss() when $default != null:
return $default(_that.period,_that.income,_that.expenses,_that.netProfit,_that.isProfit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReportPeriod? period,  AccountGroup income,  AccountGroup expenses, @JsonKey(name: 'net_profit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netProfit, @JsonKey(name: 'is_profit')  bool isProfit)  $default,) {final _that = this;
switch (_that) {
case _ProfitAndLoss():
return $default(_that.period,_that.income,_that.expenses,_that.netProfit,_that.isProfit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReportPeriod? period,  AccountGroup income,  AccountGroup expenses, @JsonKey(name: 'net_profit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netProfit, @JsonKey(name: 'is_profit')  bool isProfit)?  $default,) {final _that = this;
switch (_that) {
case _ProfitAndLoss() when $default != null:
return $default(_that.period,_that.income,_that.expenses,_that.netProfit,_that.isProfit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfitAndLoss implements ProfitAndLoss {
  const _ProfitAndLoss({this.period, required this.income, required this.expenses, @JsonKey(name: 'net_profit', fromJson: decimalFromJson, toJson: decimalToJson) required this.netProfit, @JsonKey(name: 'is_profit') this.isProfit = true});
  factory _ProfitAndLoss.fromJson(Map<String, dynamic> json) => _$ProfitAndLossFromJson(json);

@override final  ReportPeriod? period;
@override final  AccountGroup income;
@override final  AccountGroup expenses;
@override@JsonKey(name: 'net_profit', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal netProfit;
@override@JsonKey(name: 'is_profit') final  bool isProfit;

/// Create a copy of ProfitAndLoss
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfitAndLossCopyWith<_ProfitAndLoss> get copyWith => __$ProfitAndLossCopyWithImpl<_ProfitAndLoss>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfitAndLossToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfitAndLoss&&(identical(other.period, period) || other.period == period)&&(identical(other.income, income) || other.income == income)&&(identical(other.expenses, expenses) || other.expenses == expenses)&&(identical(other.netProfit, netProfit) || other.netProfit == netProfit)&&(identical(other.isProfit, isProfit) || other.isProfit == isProfit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,period,income,expenses,netProfit,isProfit);
}

@override
String toString() {
    return 'ProfitAndLoss(period: $period, income: $income, expenses: $expenses, netProfit: $netProfit, isProfit: $isProfit)';
}


}

/// @nodoc
abstract mixin class _$ProfitAndLossCopyWith<$Res> implements $ProfitAndLossCopyWith<$Res> {
  factory _$ProfitAndLossCopyWith(_ProfitAndLoss value, $Res Function(_ProfitAndLoss) _then) = __$ProfitAndLossCopyWithImpl;
@override @useResult
$Res call({
 ReportPeriod? period, AccountGroup income, AccountGroup expenses,@JsonKey(name: 'net_profit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal netProfit,@JsonKey(name: 'is_profit') bool isProfit
});


@override $ReportPeriodCopyWith<$Res>? get period;@override $AccountGroupCopyWith<$Res> get income;@override $AccountGroupCopyWith<$Res> get expenses;

}
/// @nodoc
class __$ProfitAndLossCopyWithImpl<$Res>
    implements _$ProfitAndLossCopyWith<$Res> {
  __$ProfitAndLossCopyWithImpl(this._self, this._then);

  final _ProfitAndLoss _self;
  final $Res Function(_ProfitAndLoss) _then;

/// Create a copy of ProfitAndLoss
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = freezed,Object? income = null,Object? expenses = null,Object? netProfit = null,Object? isProfit = null,}) {
  return _then(_ProfitAndLoss(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriod?,income: null == income ? _self.income : income // ignore: cast_nullable_to_non_nullable
as AccountGroup,expenses: null == expenses ? _self.expenses : expenses // ignore: cast_nullable_to_non_nullable
as AccountGroup,netProfit: null == netProfit ? _self.netProfit : netProfit // ignore: cast_nullable_to_non_nullable
as Decimal,isProfit: null == isProfit ? _self.isProfit : isProfit // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ProfitAndLoss
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $ReportPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}/// Create a copy of ProfitAndLoss
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountGroupCopyWith<$Res> get income {
  
  return $AccountGroupCopyWith<$Res>(_self.income, (value) {
    return _then(_self.copyWith(income: value));
  });
}/// Create a copy of ProfitAndLoss
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountGroupCopyWith<$Res> get expenses {
  
  return $AccountGroupCopyWith<$Res>(_self.expenses, (value) {
    return _then(_self.copyWith(expenses: value));
  });
}
}


/// @nodoc
mixin _$BalanceSheet {

@JsonKey(name: 'as_of') String? get asOf; AccountGroup get assets; AccountGroup get liabilities; AccountGroup get equity;@JsonKey(name: 'total_liabilities_and_equity', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalLiabilitiesAndEquity;@JsonKey(name: 'is_balanced') bool get isBalanced;
/// Create a copy of BalanceSheet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BalanceSheetCopyWith<BalanceSheet> get copyWith => _$BalanceSheetCopyWithImpl<BalanceSheet>(this as BalanceSheet, _$identity);

  /// Serializes this BalanceSheet to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BalanceSheet;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceSheet&&(identical(other.asOf, _this.asOf) || other.asOf == _this.asOf)&&(identical(other.assets, _this.assets) || other.assets == _this.assets)&&(identical(other.liabilities, _this.liabilities) || other.liabilities == _this.liabilities)&&(identical(other.equity, _this.equity) || other.equity == _this.equity)&&(identical(other.totalLiabilitiesAndEquity, _this.totalLiabilitiesAndEquity) || other.totalLiabilitiesAndEquity == _this.totalLiabilitiesAndEquity)&&(identical(other.isBalanced, _this.isBalanced) || other.isBalanced == _this.isBalanced));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BalanceSheet;
  return Object.hash(runtimeType,_this.asOf,_this.assets,_this.liabilities,_this.equity,_this.totalLiabilitiesAndEquity,_this.isBalanced);
}

@override
String toString() {
  final _this = this as BalanceSheet;
  return 'BalanceSheet(asOf: ${_this.asOf}, assets: ${_this.assets}, liabilities: ${_this.liabilities}, equity: ${_this.equity}, totalLiabilitiesAndEquity: ${_this.totalLiabilitiesAndEquity}, isBalanced: ${_this.isBalanced})';
}


}

/// @nodoc
abstract mixin class $BalanceSheetCopyWith<$Res>  {
  factory $BalanceSheetCopyWith(BalanceSheet value, $Res Function(BalanceSheet) _then) = _$BalanceSheetCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'as_of') String? asOf, AccountGroup assets, AccountGroup liabilities, AccountGroup equity,@JsonKey(name: 'total_liabilities_and_equity', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalLiabilitiesAndEquity,@JsonKey(name: 'is_balanced') bool isBalanced
});


$AccountGroupCopyWith<$Res> get assets;$AccountGroupCopyWith<$Res> get liabilities;$AccountGroupCopyWith<$Res> get equity;

}
/// @nodoc
class _$BalanceSheetCopyWithImpl<$Res>
    implements $BalanceSheetCopyWith<$Res> {
  _$BalanceSheetCopyWithImpl(this._self, this._then);

  final BalanceSheet _self;
  final $Res Function(BalanceSheet) _then;

/// Create a copy of BalanceSheet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? asOf = freezed,Object? assets = null,Object? liabilities = null,Object? equity = null,Object? totalLiabilitiesAndEquity = null,Object? isBalanced = null,}) {
  return _then(BalanceSheet(
asOf: freezed == asOf ? _self.asOf : asOf // ignore: cast_nullable_to_non_nullable
as String?,assets: null == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as AccountGroup,liabilities: null == liabilities ? _self.liabilities : liabilities // ignore: cast_nullable_to_non_nullable
as AccountGroup,equity: null == equity ? _self.equity : equity // ignore: cast_nullable_to_non_nullable
as AccountGroup,totalLiabilitiesAndEquity: null == totalLiabilitiesAndEquity ? _self.totalLiabilitiesAndEquity : totalLiabilitiesAndEquity // ignore: cast_nullable_to_non_nullable
as Decimal,isBalanced: null == isBalanced ? _self.isBalanced : isBalanced // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of BalanceSheet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountGroupCopyWith<$Res> get assets {
  
  return $AccountGroupCopyWith<$Res>(_self.assets, (value) {
    return _then(_self.copyWith(assets: value));
  });
}/// Create a copy of BalanceSheet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountGroupCopyWith<$Res> get liabilities {
  
  return $AccountGroupCopyWith<$Res>(_self.liabilities, (value) {
    return _then(_self.copyWith(liabilities: value));
  });
}/// Create a copy of BalanceSheet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountGroupCopyWith<$Res> get equity {
  
  return $AccountGroupCopyWith<$Res>(_self.equity, (value) {
    return _then(_self.copyWith(equity: value));
  });
}
}


/// Adds pattern-matching-related methods to [BalanceSheet].
extension BalanceSheetPatterns on BalanceSheet {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BalanceSheet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BalanceSheet() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BalanceSheet value)  $default,){
final _that = this;
switch (_that) {
case _BalanceSheet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BalanceSheet value)?  $default,){
final _that = this;
switch (_that) {
case _BalanceSheet() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'as_of')  String? asOf,  AccountGroup assets,  AccountGroup liabilities,  AccountGroup equity, @JsonKey(name: 'total_liabilities_and_equity', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalLiabilitiesAndEquity, @JsonKey(name: 'is_balanced')  bool isBalanced)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BalanceSheet() when $default != null:
return $default(_that.asOf,_that.assets,_that.liabilities,_that.equity,_that.totalLiabilitiesAndEquity,_that.isBalanced);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'as_of')  String? asOf,  AccountGroup assets,  AccountGroup liabilities,  AccountGroup equity, @JsonKey(name: 'total_liabilities_and_equity', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalLiabilitiesAndEquity, @JsonKey(name: 'is_balanced')  bool isBalanced)  $default,) {final _that = this;
switch (_that) {
case _BalanceSheet():
return $default(_that.asOf,_that.assets,_that.liabilities,_that.equity,_that.totalLiabilitiesAndEquity,_that.isBalanced);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'as_of')  String? asOf,  AccountGroup assets,  AccountGroup liabilities,  AccountGroup equity, @JsonKey(name: 'total_liabilities_and_equity', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalLiabilitiesAndEquity, @JsonKey(name: 'is_balanced')  bool isBalanced)?  $default,) {final _that = this;
switch (_that) {
case _BalanceSheet() when $default != null:
return $default(_that.asOf,_that.assets,_that.liabilities,_that.equity,_that.totalLiabilitiesAndEquity,_that.isBalanced);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BalanceSheet implements BalanceSheet {
  const _BalanceSheet({@JsonKey(name: 'as_of') this.asOf, required this.assets, required this.liabilities, required this.equity, @JsonKey(name: 'total_liabilities_and_equity', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalLiabilitiesAndEquity, @JsonKey(name: 'is_balanced') this.isBalanced = false});
  factory _BalanceSheet.fromJson(Map<String, dynamic> json) => _$BalanceSheetFromJson(json);

@override@JsonKey(name: 'as_of') final  String? asOf;
@override final  AccountGroup assets;
@override final  AccountGroup liabilities;
@override final  AccountGroup equity;
@override@JsonKey(name: 'total_liabilities_and_equity', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalLiabilitiesAndEquity;
@override@JsonKey(name: 'is_balanced') final  bool isBalanced;

/// Create a copy of BalanceSheet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BalanceSheetCopyWith<_BalanceSheet> get copyWith => __$BalanceSheetCopyWithImpl<_BalanceSheet>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BalanceSheetToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BalanceSheet&&(identical(other.asOf, asOf) || other.asOf == asOf)&&(identical(other.assets, assets) || other.assets == assets)&&(identical(other.liabilities, liabilities) || other.liabilities == liabilities)&&(identical(other.equity, equity) || other.equity == equity)&&(identical(other.totalLiabilitiesAndEquity, totalLiabilitiesAndEquity) || other.totalLiabilitiesAndEquity == totalLiabilitiesAndEquity)&&(identical(other.isBalanced, isBalanced) || other.isBalanced == isBalanced));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,asOf,assets,liabilities,equity,totalLiabilitiesAndEquity,isBalanced);
}

@override
String toString() {
    return 'BalanceSheet(asOf: $asOf, assets: $assets, liabilities: $liabilities, equity: $equity, totalLiabilitiesAndEquity: $totalLiabilitiesAndEquity, isBalanced: $isBalanced)';
}


}

/// @nodoc
abstract mixin class _$BalanceSheetCopyWith<$Res> implements $BalanceSheetCopyWith<$Res> {
  factory _$BalanceSheetCopyWith(_BalanceSheet value, $Res Function(_BalanceSheet) _then) = __$BalanceSheetCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'as_of') String? asOf, AccountGroup assets, AccountGroup liabilities, AccountGroup equity,@JsonKey(name: 'total_liabilities_and_equity', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalLiabilitiesAndEquity,@JsonKey(name: 'is_balanced') bool isBalanced
});


@override $AccountGroupCopyWith<$Res> get assets;@override $AccountGroupCopyWith<$Res> get liabilities;@override $AccountGroupCopyWith<$Res> get equity;

}
/// @nodoc
class __$BalanceSheetCopyWithImpl<$Res>
    implements _$BalanceSheetCopyWith<$Res> {
  __$BalanceSheetCopyWithImpl(this._self, this._then);

  final _BalanceSheet _self;
  final $Res Function(_BalanceSheet) _then;

/// Create a copy of BalanceSheet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? asOf = freezed,Object? assets = null,Object? liabilities = null,Object? equity = null,Object? totalLiabilitiesAndEquity = null,Object? isBalanced = null,}) {
  return _then(_BalanceSheet(
asOf: freezed == asOf ? _self.asOf : asOf // ignore: cast_nullable_to_non_nullable
as String?,assets: null == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as AccountGroup,liabilities: null == liabilities ? _self.liabilities : liabilities // ignore: cast_nullable_to_non_nullable
as AccountGroup,equity: null == equity ? _self.equity : equity // ignore: cast_nullable_to_non_nullable
as AccountGroup,totalLiabilitiesAndEquity: null == totalLiabilitiesAndEquity ? _self.totalLiabilitiesAndEquity : totalLiabilitiesAndEquity // ignore: cast_nullable_to_non_nullable
as Decimal,isBalanced: null == isBalanced ? _self.isBalanced : isBalanced // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of BalanceSheet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountGroupCopyWith<$Res> get assets {
  
  return $AccountGroupCopyWith<$Res>(_self.assets, (value) {
    return _then(_self.copyWith(assets: value));
  });
}/// Create a copy of BalanceSheet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountGroupCopyWith<$Res> get liabilities {
  
  return $AccountGroupCopyWith<$Res>(_self.liabilities, (value) {
    return _then(_self.copyWith(liabilities: value));
  });
}/// Create a copy of BalanceSheet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountGroupCopyWith<$Res> get equity {
  
  return $AccountGroupCopyWith<$Res>(_self.equity, (value) {
    return _then(_self.copyWith(equity: value));
  });
}
}


/// @nodoc
mixin _$OutstandingReport {

@JsonKey(name: 'as_of') String? get asOf; AccountGroup get receivables; AccountGroup get payables;@JsonKey(name: 'net_position', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get netPosition;
/// Create a copy of OutstandingReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OutstandingReportCopyWith<OutstandingReport> get copyWith => _$OutstandingReportCopyWithImpl<OutstandingReport>(this as OutstandingReport, _$identity);

  /// Serializes this OutstandingReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OutstandingReport;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OutstandingReport&&(identical(other.asOf, _this.asOf) || other.asOf == _this.asOf)&&(identical(other.receivables, _this.receivables) || other.receivables == _this.receivables)&&(identical(other.payables, _this.payables) || other.payables == _this.payables)&&(identical(other.netPosition, _this.netPosition) || other.netPosition == _this.netPosition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OutstandingReport;
  return Object.hash(runtimeType,_this.asOf,_this.receivables,_this.payables,_this.netPosition);
}

@override
String toString() {
  final _this = this as OutstandingReport;
  return 'OutstandingReport(asOf: ${_this.asOf}, receivables: ${_this.receivables}, payables: ${_this.payables}, netPosition: ${_this.netPosition})';
}


}

/// @nodoc
abstract mixin class $OutstandingReportCopyWith<$Res>  {
  factory $OutstandingReportCopyWith(OutstandingReport value, $Res Function(OutstandingReport) _then) = _$OutstandingReportCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'as_of') String? asOf, AccountGroup receivables, AccountGroup payables,@JsonKey(name: 'net_position', fromJson: decimalFromJson, toJson: decimalToJson) Decimal netPosition
});


$AccountGroupCopyWith<$Res> get receivables;$AccountGroupCopyWith<$Res> get payables;

}
/// @nodoc
class _$OutstandingReportCopyWithImpl<$Res>
    implements $OutstandingReportCopyWith<$Res> {
  _$OutstandingReportCopyWithImpl(this._self, this._then);

  final OutstandingReport _self;
  final $Res Function(OutstandingReport) _then;

/// Create a copy of OutstandingReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? asOf = freezed,Object? receivables = null,Object? payables = null,Object? netPosition = null,}) {
  return _then(OutstandingReport(
asOf: freezed == asOf ? _self.asOf : asOf // ignore: cast_nullable_to_non_nullable
as String?,receivables: null == receivables ? _self.receivables : receivables // ignore: cast_nullable_to_non_nullable
as AccountGroup,payables: null == payables ? _self.payables : payables // ignore: cast_nullable_to_non_nullable
as AccountGroup,netPosition: null == netPosition ? _self.netPosition : netPosition // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}
/// Create a copy of OutstandingReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountGroupCopyWith<$Res> get receivables {
  
  return $AccountGroupCopyWith<$Res>(_self.receivables, (value) {
    return _then(_self.copyWith(receivables: value));
  });
}/// Create a copy of OutstandingReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountGroupCopyWith<$Res> get payables {
  
  return $AccountGroupCopyWith<$Res>(_self.payables, (value) {
    return _then(_self.copyWith(payables: value));
  });
}
}


/// Adds pattern-matching-related methods to [OutstandingReport].
extension OutstandingReportPatterns on OutstandingReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OutstandingReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OutstandingReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OutstandingReport value)  $default,){
final _that = this;
switch (_that) {
case _OutstandingReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OutstandingReport value)?  $default,){
final _that = this;
switch (_that) {
case _OutstandingReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'as_of')  String? asOf,  AccountGroup receivables,  AccountGroup payables, @JsonKey(name: 'net_position', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netPosition)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OutstandingReport() when $default != null:
return $default(_that.asOf,_that.receivables,_that.payables,_that.netPosition);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'as_of')  String? asOf,  AccountGroup receivables,  AccountGroup payables, @JsonKey(name: 'net_position', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netPosition)  $default,) {final _that = this;
switch (_that) {
case _OutstandingReport():
return $default(_that.asOf,_that.receivables,_that.payables,_that.netPosition);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'as_of')  String? asOf,  AccountGroup receivables,  AccountGroup payables, @JsonKey(name: 'net_position', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netPosition)?  $default,) {final _that = this;
switch (_that) {
case _OutstandingReport() when $default != null:
return $default(_that.asOf,_that.receivables,_that.payables,_that.netPosition);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OutstandingReport implements OutstandingReport {
  const _OutstandingReport({@JsonKey(name: 'as_of') this.asOf, required this.receivables, required this.payables, @JsonKey(name: 'net_position', fromJson: decimalFromJson, toJson: decimalToJson) required this.netPosition});
  factory _OutstandingReport.fromJson(Map<String, dynamic> json) => _$OutstandingReportFromJson(json);

@override@JsonKey(name: 'as_of') final  String? asOf;
@override final  AccountGroup receivables;
@override final  AccountGroup payables;
@override@JsonKey(name: 'net_position', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal netPosition;

/// Create a copy of OutstandingReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OutstandingReportCopyWith<_OutstandingReport> get copyWith => __$OutstandingReportCopyWithImpl<_OutstandingReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OutstandingReportToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OutstandingReport&&(identical(other.asOf, asOf) || other.asOf == asOf)&&(identical(other.receivables, receivables) || other.receivables == receivables)&&(identical(other.payables, payables) || other.payables == payables)&&(identical(other.netPosition, netPosition) || other.netPosition == netPosition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,asOf,receivables,payables,netPosition);
}

@override
String toString() {
    return 'OutstandingReport(asOf: $asOf, receivables: $receivables, payables: $payables, netPosition: $netPosition)';
}


}

/// @nodoc
abstract mixin class _$OutstandingReportCopyWith<$Res> implements $OutstandingReportCopyWith<$Res> {
  factory _$OutstandingReportCopyWith(_OutstandingReport value, $Res Function(_OutstandingReport) _then) = __$OutstandingReportCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'as_of') String? asOf, AccountGroup receivables, AccountGroup payables,@JsonKey(name: 'net_position', fromJson: decimalFromJson, toJson: decimalToJson) Decimal netPosition
});


@override $AccountGroupCopyWith<$Res> get receivables;@override $AccountGroupCopyWith<$Res> get payables;

}
/// @nodoc
class __$OutstandingReportCopyWithImpl<$Res>
    implements _$OutstandingReportCopyWith<$Res> {
  __$OutstandingReportCopyWithImpl(this._self, this._then);

  final _OutstandingReport _self;
  final $Res Function(_OutstandingReport) _then;

/// Create a copy of OutstandingReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? asOf = freezed,Object? receivables = null,Object? payables = null,Object? netPosition = null,}) {
  return _then(_OutstandingReport(
asOf: freezed == asOf ? _self.asOf : asOf // ignore: cast_nullable_to_non_nullable
as String?,receivables: null == receivables ? _self.receivables : receivables // ignore: cast_nullable_to_non_nullable
as AccountGroup,payables: null == payables ? _self.payables : payables // ignore: cast_nullable_to_non_nullable
as AccountGroup,netPosition: null == netPosition ? _self.netPosition : netPosition // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

/// Create a copy of OutstandingReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountGroupCopyWith<$Res> get receivables {
  
  return $AccountGroupCopyWith<$Res>(_self.receivables, (value) {
    return _then(_self.copyWith(receivables: value));
  });
}/// Create a copy of OutstandingReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountGroupCopyWith<$Res> get payables {
  
  return $AccountGroupCopyWith<$Res>(_self.payables, (value) {
    return _then(_self.copyWith(payables: value));
  });
}
}


/// @nodoc
mixin _$BookLine {

@JsonKey(name: 'line_id') String? get lineId;@JsonKey(name: 'entry_id') String? get entryId;@JsonKey(name: 'voucher_no') String get voucherNo;@JsonKey(name: 'entry_date') DateTime? get entryDate; String? get narration;@JsonKey(name: 'entry_type') String? get entryType;@JsonKey(name: 'line_narration') String? get lineNarration;@JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get debitAmount;@JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get creditAmount;@JsonKey(name: 'running_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get runningBalance;
/// Create a copy of BookLine
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookLineCopyWith<BookLine> get copyWith => _$BookLineCopyWithImpl<BookLine>(this as BookLine, _$identity);

  /// Serializes this BookLine to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BookLine;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookLine&&(identical(other.lineId, _this.lineId) || other.lineId == _this.lineId)&&(identical(other.entryId, _this.entryId) || other.entryId == _this.entryId)&&(identical(other.voucherNo, _this.voucherNo) || other.voucherNo == _this.voucherNo)&&(identical(other.entryDate, _this.entryDate) || other.entryDate == _this.entryDate)&&(identical(other.narration, _this.narration) || other.narration == _this.narration)&&(identical(other.entryType, _this.entryType) || other.entryType == _this.entryType)&&(identical(other.lineNarration, _this.lineNarration) || other.lineNarration == _this.lineNarration)&&(identical(other.debitAmount, _this.debitAmount) || other.debitAmount == _this.debitAmount)&&(identical(other.creditAmount, _this.creditAmount) || other.creditAmount == _this.creditAmount)&&(identical(other.runningBalance, _this.runningBalance) || other.runningBalance == _this.runningBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BookLine;
  return Object.hash(runtimeType,_this.lineId,_this.entryId,_this.voucherNo,_this.entryDate,_this.narration,_this.entryType,_this.lineNarration,_this.debitAmount,_this.creditAmount,_this.runningBalance);
}

@override
String toString() {
  final _this = this as BookLine;
  return 'BookLine(lineId: ${_this.lineId}, entryId: ${_this.entryId}, voucherNo: ${_this.voucherNo}, entryDate: ${_this.entryDate}, narration: ${_this.narration}, entryType: ${_this.entryType}, lineNarration: ${_this.lineNarration}, debitAmount: ${_this.debitAmount}, creditAmount: ${_this.creditAmount}, runningBalance: ${_this.runningBalance})';
}


}

/// @nodoc
abstract mixin class $BookLineCopyWith<$Res>  {
  factory $BookLineCopyWith(BookLine value, $Res Function(BookLine) _then) = _$BookLineCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'line_id') String? lineId,@JsonKey(name: 'entry_id') String? entryId,@JsonKey(name: 'voucher_no') String voucherNo,@JsonKey(name: 'entry_date') DateTime? entryDate, String? narration,@JsonKey(name: 'entry_type') String? entryType,@JsonKey(name: 'line_narration') String? lineNarration,@JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal debitAmount,@JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal creditAmount,@JsonKey(name: 'running_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal runningBalance
});




}
/// @nodoc
class _$BookLineCopyWithImpl<$Res>
    implements $BookLineCopyWith<$Res> {
  _$BookLineCopyWithImpl(this._self, this._then);

  final BookLine _self;
  final $Res Function(BookLine) _then;

/// Create a copy of BookLine
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lineId = freezed,Object? entryId = freezed,Object? voucherNo = null,Object? entryDate = freezed,Object? narration = freezed,Object? entryType = freezed,Object? lineNarration = freezed,Object? debitAmount = null,Object? creditAmount = null,Object? runningBalance = null,}) {
  return _then(BookLine(
lineId: freezed == lineId ? _self.lineId : lineId // ignore: cast_nullable_to_non_nullable
as String?,entryId: freezed == entryId ? _self.entryId : entryId // ignore: cast_nullable_to_non_nullable
as String?,voucherNo: null == voucherNo ? _self.voucherNo : voucherNo // ignore: cast_nullable_to_non_nullable
as String,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,narration: freezed == narration ? _self.narration : narration // ignore: cast_nullable_to_non_nullable
as String?,entryType: freezed == entryType ? _self.entryType : entryType // ignore: cast_nullable_to_non_nullable
as String?,lineNarration: freezed == lineNarration ? _self.lineNarration : lineNarration // ignore: cast_nullable_to_non_nullable
as String?,debitAmount: null == debitAmount ? _self.debitAmount : debitAmount // ignore: cast_nullable_to_non_nullable
as Decimal,creditAmount: null == creditAmount ? _self.creditAmount : creditAmount // ignore: cast_nullable_to_non_nullable
as Decimal,runningBalance: null == runningBalance ? _self.runningBalance : runningBalance // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

}


/// Adds pattern-matching-related methods to [BookLine].
extension BookLinePatterns on BookLine {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookLine value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookLine() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookLine value)  $default,){
final _that = this;
switch (_that) {
case _BookLine():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookLine value)?  $default,){
final _that = this;
switch (_that) {
case _BookLine() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'line_id')  String? lineId, @JsonKey(name: 'entry_id')  String? entryId, @JsonKey(name: 'voucher_no')  String voucherNo, @JsonKey(name: 'entry_date')  DateTime? entryDate,  String? narration, @JsonKey(name: 'entry_type')  String? entryType, @JsonKey(name: 'line_narration')  String? lineNarration, @JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal debitAmount, @JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal creditAmount, @JsonKey(name: 'running_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal runningBalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookLine() when $default != null:
return $default(_that.lineId,_that.entryId,_that.voucherNo,_that.entryDate,_that.narration,_that.entryType,_that.lineNarration,_that.debitAmount,_that.creditAmount,_that.runningBalance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'line_id')  String? lineId, @JsonKey(name: 'entry_id')  String? entryId, @JsonKey(name: 'voucher_no')  String voucherNo, @JsonKey(name: 'entry_date')  DateTime? entryDate,  String? narration, @JsonKey(name: 'entry_type')  String? entryType, @JsonKey(name: 'line_narration')  String? lineNarration, @JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal debitAmount, @JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal creditAmount, @JsonKey(name: 'running_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal runningBalance)  $default,) {final _that = this;
switch (_that) {
case _BookLine():
return $default(_that.lineId,_that.entryId,_that.voucherNo,_that.entryDate,_that.narration,_that.entryType,_that.lineNarration,_that.debitAmount,_that.creditAmount,_that.runningBalance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'line_id')  String? lineId, @JsonKey(name: 'entry_id')  String? entryId, @JsonKey(name: 'voucher_no')  String voucherNo, @JsonKey(name: 'entry_date')  DateTime? entryDate,  String? narration, @JsonKey(name: 'entry_type')  String? entryType, @JsonKey(name: 'line_narration')  String? lineNarration, @JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal debitAmount, @JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal creditAmount, @JsonKey(name: 'running_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal runningBalance)?  $default,) {final _that = this;
switch (_that) {
case _BookLine() when $default != null:
return $default(_that.lineId,_that.entryId,_that.voucherNo,_that.entryDate,_that.narration,_that.entryType,_that.lineNarration,_that.debitAmount,_that.creditAmount,_that.runningBalance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookLine implements BookLine {
  const _BookLine({@JsonKey(name: 'line_id') this.lineId, @JsonKey(name: 'entry_id') this.entryId, @JsonKey(name: 'voucher_no') this.voucherNo = '', @JsonKey(name: 'entry_date') this.entryDate, this.narration, @JsonKey(name: 'entry_type') this.entryType, @JsonKey(name: 'line_narration') this.lineNarration, @JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.debitAmount, @JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.creditAmount, @JsonKey(name: 'running_balance', fromJson: decimalFromJson, toJson: decimalToJson) required this.runningBalance});
  factory _BookLine.fromJson(Map<String, dynamic> json) => _$BookLineFromJson(json);

@override@JsonKey(name: 'line_id') final  String? lineId;
@override@JsonKey(name: 'entry_id') final  String? entryId;
@override@JsonKey(name: 'voucher_no') final  String voucherNo;
@override@JsonKey(name: 'entry_date') final  DateTime? entryDate;
@override final  String? narration;
@override@JsonKey(name: 'entry_type') final  String? entryType;
@override@JsonKey(name: 'line_narration') final  String? lineNarration;
@override@JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal debitAmount;
@override@JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal creditAmount;
@override@JsonKey(name: 'running_balance', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal runningBalance;

/// Create a copy of BookLine
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookLineCopyWith<_BookLine> get copyWith => __$BookLineCopyWithImpl<_BookLine>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookLineToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookLine&&(identical(other.lineId, lineId) || other.lineId == lineId)&&(identical(other.entryId, entryId) || other.entryId == entryId)&&(identical(other.voucherNo, voucherNo) || other.voucherNo == voucherNo)&&(identical(other.entryDate, entryDate) || other.entryDate == entryDate)&&(identical(other.narration, narration) || other.narration == narration)&&(identical(other.entryType, entryType) || other.entryType == entryType)&&(identical(other.lineNarration, lineNarration) || other.lineNarration == lineNarration)&&(identical(other.debitAmount, debitAmount) || other.debitAmount == debitAmount)&&(identical(other.creditAmount, creditAmount) || other.creditAmount == creditAmount)&&(identical(other.runningBalance, runningBalance) || other.runningBalance == runningBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,lineId,entryId,voucherNo,entryDate,narration,entryType,lineNarration,debitAmount,creditAmount,runningBalance);
}

@override
String toString() {
    return 'BookLine(lineId: $lineId, entryId: $entryId, voucherNo: $voucherNo, entryDate: $entryDate, narration: $narration, entryType: $entryType, lineNarration: $lineNarration, debitAmount: $debitAmount, creditAmount: $creditAmount, runningBalance: $runningBalance)';
}


}

/// @nodoc
abstract mixin class _$BookLineCopyWith<$Res> implements $BookLineCopyWith<$Res> {
  factory _$BookLineCopyWith(_BookLine value, $Res Function(_BookLine) _then) = __$BookLineCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'line_id') String? lineId,@JsonKey(name: 'entry_id') String? entryId,@JsonKey(name: 'voucher_no') String voucherNo,@JsonKey(name: 'entry_date') DateTime? entryDate, String? narration,@JsonKey(name: 'entry_type') String? entryType,@JsonKey(name: 'line_narration') String? lineNarration,@JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal debitAmount,@JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal creditAmount,@JsonKey(name: 'running_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal runningBalance
});




}
/// @nodoc
class __$BookLineCopyWithImpl<$Res>
    implements _$BookLineCopyWith<$Res> {
  __$BookLineCopyWithImpl(this._self, this._then);

  final _BookLine _self;
  final $Res Function(_BookLine) _then;

/// Create a copy of BookLine
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lineId = freezed,Object? entryId = freezed,Object? voucherNo = null,Object? entryDate = freezed,Object? narration = freezed,Object? entryType = freezed,Object? lineNarration = freezed,Object? debitAmount = null,Object? creditAmount = null,Object? runningBalance = null,}) {
  return _then(_BookLine(
lineId: freezed == lineId ? _self.lineId : lineId // ignore: cast_nullable_to_non_nullable
as String?,entryId: freezed == entryId ? _self.entryId : entryId // ignore: cast_nullable_to_non_nullable
as String?,voucherNo: null == voucherNo ? _self.voucherNo : voucherNo // ignore: cast_nullable_to_non_nullable
as String,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,narration: freezed == narration ? _self.narration : narration // ignore: cast_nullable_to_non_nullable
as String?,entryType: freezed == entryType ? _self.entryType : entryType // ignore: cast_nullable_to_non_nullable
as String?,lineNarration: freezed == lineNarration ? _self.lineNarration : lineNarration // ignore: cast_nullable_to_non_nullable
as String?,debitAmount: null == debitAmount ? _self.debitAmount : debitAmount // ignore: cast_nullable_to_non_nullable
as Decimal,creditAmount: null == creditAmount ? _self.creditAmount : creditAmount // ignore: cast_nullable_to_non_nullable
as Decimal,runningBalance: null == runningBalance ? _self.runningBalance : runningBalance // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}


}


/// @nodoc
mixin _$LedgerAccountRef {

@JsonKey(name: 'account_id') String get accountId;@JsonKey(name: 'account_code') String get accountCode;@JsonKey(name: 'account_name') String get accountName;@JsonKey(name: 'account_type') String get accountType;@JsonKey(name: 'account_subtype') String? get accountSubtype;
/// Create a copy of LedgerAccountRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<LedgerAccountRef> get copyWith => _$LedgerAccountRefCopyWithImpl<LedgerAccountRef>(this as LedgerAccountRef, _$identity);

  /// Serializes this LedgerAccountRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LedgerAccountRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LedgerAccountRef&&(identical(other.accountId, _this.accountId) || other.accountId == _this.accountId)&&(identical(other.accountCode, _this.accountCode) || other.accountCode == _this.accountCode)&&(identical(other.accountName, _this.accountName) || other.accountName == _this.accountName)&&(identical(other.accountType, _this.accountType) || other.accountType == _this.accountType)&&(identical(other.accountSubtype, _this.accountSubtype) || other.accountSubtype == _this.accountSubtype));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LedgerAccountRef;
  return Object.hash(runtimeType,_this.accountId,_this.accountCode,_this.accountName,_this.accountType,_this.accountSubtype);
}

@override
String toString() {
  final _this = this as LedgerAccountRef;
  return 'LedgerAccountRef(accountId: ${_this.accountId}, accountCode: ${_this.accountCode}, accountName: ${_this.accountName}, accountType: ${_this.accountType}, accountSubtype: ${_this.accountSubtype})';
}


}

/// @nodoc
abstract mixin class $LedgerAccountRefCopyWith<$Res>  {
  factory $LedgerAccountRefCopyWith(LedgerAccountRef value, $Res Function(LedgerAccountRef) _then) = _$LedgerAccountRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'account_id') String accountId,@JsonKey(name: 'account_code') String accountCode,@JsonKey(name: 'account_name') String accountName,@JsonKey(name: 'account_type') String accountType,@JsonKey(name: 'account_subtype') String? accountSubtype
});




}
/// @nodoc
class _$LedgerAccountRefCopyWithImpl<$Res>
    implements $LedgerAccountRefCopyWith<$Res> {
  _$LedgerAccountRefCopyWithImpl(this._self, this._then);

  final LedgerAccountRef _self;
  final $Res Function(LedgerAccountRef) _then;

/// Create a copy of LedgerAccountRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountId = null,Object? accountCode = null,Object? accountName = null,Object? accountType = null,Object? accountSubtype = freezed,}) {
  return _then(LedgerAccountRef(
accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,accountCode: null == accountCode ? _self.accountCode : accountCode // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountType: null == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as String,accountSubtype: freezed == accountSubtype ? _self.accountSubtype : accountSubtype // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LedgerAccountRef].
extension LedgerAccountRefPatterns on LedgerAccountRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LedgerAccountRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LedgerAccountRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LedgerAccountRef value)  $default,){
final _that = this;
switch (_that) {
case _LedgerAccountRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LedgerAccountRef value)?  $default,){
final _that = this;
switch (_that) {
case _LedgerAccountRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'account_id')  String accountId, @JsonKey(name: 'account_code')  String accountCode, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'account_type')  String accountType, @JsonKey(name: 'account_subtype')  String? accountSubtype)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LedgerAccountRef() when $default != null:
return $default(_that.accountId,_that.accountCode,_that.accountName,_that.accountType,_that.accountSubtype);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'account_id')  String accountId, @JsonKey(name: 'account_code')  String accountCode, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'account_type')  String accountType, @JsonKey(name: 'account_subtype')  String? accountSubtype)  $default,) {final _that = this;
switch (_that) {
case _LedgerAccountRef():
return $default(_that.accountId,_that.accountCode,_that.accountName,_that.accountType,_that.accountSubtype);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'account_id')  String accountId, @JsonKey(name: 'account_code')  String accountCode, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'account_type')  String accountType, @JsonKey(name: 'account_subtype')  String? accountSubtype)?  $default,) {final _that = this;
switch (_that) {
case _LedgerAccountRef() when $default != null:
return $default(_that.accountId,_that.accountCode,_that.accountName,_that.accountType,_that.accountSubtype);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LedgerAccountRef implements LedgerAccountRef {
  const _LedgerAccountRef({@JsonKey(name: 'account_id') required this.accountId, @JsonKey(name: 'account_code') this.accountCode = '', @JsonKey(name: 'account_name') this.accountName = '', @JsonKey(name: 'account_type') this.accountType = '', @JsonKey(name: 'account_subtype') this.accountSubtype});
  factory _LedgerAccountRef.fromJson(Map<String, dynamic> json) => _$LedgerAccountRefFromJson(json);

@override@JsonKey(name: 'account_id') final  String accountId;
@override@JsonKey(name: 'account_code') final  String accountCode;
@override@JsonKey(name: 'account_name') final  String accountName;
@override@JsonKey(name: 'account_type') final  String accountType;
@override@JsonKey(name: 'account_subtype') final  String? accountSubtype;

/// Create a copy of LedgerAccountRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LedgerAccountRefCopyWith<_LedgerAccountRef> get copyWith => __$LedgerAccountRefCopyWithImpl<_LedgerAccountRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LedgerAccountRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LedgerAccountRef&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.accountCode, accountCode) || other.accountCode == accountCode)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountType, accountType) || other.accountType == accountType)&&(identical(other.accountSubtype, accountSubtype) || other.accountSubtype == accountSubtype));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,accountId,accountCode,accountName,accountType,accountSubtype);
}

@override
String toString() {
    return 'LedgerAccountRef(accountId: $accountId, accountCode: $accountCode, accountName: $accountName, accountType: $accountType, accountSubtype: $accountSubtype)';
}


}

/// @nodoc
abstract mixin class _$LedgerAccountRefCopyWith<$Res> implements $LedgerAccountRefCopyWith<$Res> {
  factory _$LedgerAccountRefCopyWith(_LedgerAccountRef value, $Res Function(_LedgerAccountRef) _then) = __$LedgerAccountRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'account_id') String accountId,@JsonKey(name: 'account_code') String accountCode,@JsonKey(name: 'account_name') String accountName,@JsonKey(name: 'account_type') String accountType,@JsonKey(name: 'account_subtype') String? accountSubtype
});




}
/// @nodoc
class __$LedgerAccountRefCopyWithImpl<$Res>
    implements _$LedgerAccountRefCopyWith<$Res> {
  __$LedgerAccountRefCopyWithImpl(this._self, this._then);

  final _LedgerAccountRef _self;
  final $Res Function(_LedgerAccountRef) _then;

/// Create a copy of LedgerAccountRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountId = null,Object? accountCode = null,Object? accountName = null,Object? accountType = null,Object? accountSubtype = freezed,}) {
  return _then(_LedgerAccountRef(
accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,accountCode: null == accountCode ? _self.accountCode : accountCode // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountType: null == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as String,accountSubtype: freezed == accountSubtype ? _self.accountSubtype : accountSubtype // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LedgerReport {

 LedgerAccountRef get account; ReportPeriod? get period;@JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get openingBalance; List<BookLine> get lines;@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalDebit;@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalCredit;@JsonKey(name: 'closing_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get closingBalance;
/// Create a copy of LedgerReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LedgerReportCopyWith<LedgerReport> get copyWith => _$LedgerReportCopyWithImpl<LedgerReport>(this as LedgerReport, _$identity);

  /// Serializes this LedgerReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LedgerReport;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LedgerReport&&(identical(other.account, _this.account) || other.account == _this.account)&&(identical(other.period, _this.period) || other.period == _this.period)&&(identical(other.openingBalance, _this.openingBalance) || other.openingBalance == _this.openingBalance)&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&(identical(other.totalDebit, _this.totalDebit) || other.totalDebit == _this.totalDebit)&&(identical(other.totalCredit, _this.totalCredit) || other.totalCredit == _this.totalCredit)&&(identical(other.closingBalance, _this.closingBalance) || other.closingBalance == _this.closingBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LedgerReport;
  return Object.hash(runtimeType,_this.account,_this.period,_this.openingBalance,const DeepCollectionEquality().hash(_this.lines),_this.totalDebit,_this.totalCredit,_this.closingBalance);
}

@override
String toString() {
  final _this = this as LedgerReport;
  return 'LedgerReport(account: ${_this.account}, period: ${_this.period}, openingBalance: ${_this.openingBalance}, lines: ${_this.lines}, totalDebit: ${_this.totalDebit}, totalCredit: ${_this.totalCredit}, closingBalance: ${_this.closingBalance})';
}


}

/// @nodoc
abstract mixin class $LedgerReportCopyWith<$Res>  {
  factory $LedgerReportCopyWith(LedgerReport value, $Res Function(LedgerReport) _then) = _$LedgerReportCopyWithImpl;
@useResult
$Res call({
 LedgerAccountRef account, ReportPeriod? period,@JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal openingBalance, List<BookLine> lines,@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDebit,@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalCredit,@JsonKey(name: 'closing_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal closingBalance
});


$LedgerAccountRefCopyWith<$Res> get account;$ReportPeriodCopyWith<$Res>? get period;

}
/// @nodoc
class _$LedgerReportCopyWithImpl<$Res>
    implements $LedgerReportCopyWith<$Res> {
  _$LedgerReportCopyWithImpl(this._self, this._then);

  final LedgerReport _self;
  final $Res Function(LedgerReport) _then;

/// Create a copy of LedgerReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? account = null,Object? period = freezed,Object? openingBalance = null,Object? lines = null,Object? totalDebit = null,Object? totalCredit = null,Object? closingBalance = null,}) {
  return _then(LedgerReport(
account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as LedgerAccountRef,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriod?,openingBalance: null == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as Decimal,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<BookLine>,totalDebit: null == totalDebit ? _self.totalDebit : totalDebit // ignore: cast_nullable_to_non_nullable
as Decimal,totalCredit: null == totalCredit ? _self.totalCredit : totalCredit // ignore: cast_nullable_to_non_nullable
as Decimal,closingBalance: null == closingBalance ? _self.closingBalance : closingBalance // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}
/// Create a copy of LedgerReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<$Res> get account {
  
  return $LedgerAccountRefCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}/// Create a copy of LedgerReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $ReportPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// Adds pattern-matching-related methods to [LedgerReport].
extension LedgerReportPatterns on LedgerReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LedgerReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LedgerReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LedgerReport value)  $default,){
final _that = this;
switch (_that) {
case _LedgerReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LedgerReport value)?  $default,){
final _that = this;
switch (_that) {
case _LedgerReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LedgerAccountRef account,  ReportPeriod? period, @JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal openingBalance,  List<BookLine> lines, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit, @JsonKey(name: 'closing_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal closingBalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LedgerReport() when $default != null:
return $default(_that.account,_that.period,_that.openingBalance,_that.lines,_that.totalDebit,_that.totalCredit,_that.closingBalance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LedgerAccountRef account,  ReportPeriod? period, @JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal openingBalance,  List<BookLine> lines, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit, @JsonKey(name: 'closing_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal closingBalance)  $default,) {final _that = this;
switch (_that) {
case _LedgerReport():
return $default(_that.account,_that.period,_that.openingBalance,_that.lines,_that.totalDebit,_that.totalCredit,_that.closingBalance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LedgerAccountRef account,  ReportPeriod? period, @JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal openingBalance,  List<BookLine> lines, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit, @JsonKey(name: 'closing_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal closingBalance)?  $default,) {final _that = this;
switch (_that) {
case _LedgerReport() when $default != null:
return $default(_that.account,_that.period,_that.openingBalance,_that.lines,_that.totalDebit,_that.totalCredit,_that.closingBalance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LedgerReport implements LedgerReport {
  const _LedgerReport({required this.account, this.period, @JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) required this.openingBalance,  List<BookLine> lines = const [], @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalCredit, @JsonKey(name: 'closing_balance', fromJson: decimalFromJson, toJson: decimalToJson) required this.closingBalance}): _lines = lines;
  factory _LedgerReport.fromJson(Map<String, dynamic> json) => _$LedgerReportFromJson(json);

@override final  LedgerAccountRef account;
@override final  ReportPeriod? period;
@override@JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal openingBalance;
 final  List<BookLine> _lines;
@override@JsonKey() List<BookLine> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalDebit;
@override@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalCredit;
@override@JsonKey(name: 'closing_balance', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal closingBalance;

/// Create a copy of LedgerReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LedgerReportCopyWith<_LedgerReport> get copyWith => __$LedgerReportCopyWithImpl<_LedgerReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LedgerReportToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LedgerReport&&(identical(other.account, account) || other.account == account)&&(identical(other.period, period) || other.period == period)&&(identical(other.openingBalance, openingBalance) || other.openingBalance == openingBalance)&&const DeepCollectionEquality().equals(other.lines, _lines)&&(identical(other.totalDebit, totalDebit) || other.totalDebit == totalDebit)&&(identical(other.totalCredit, totalCredit) || other.totalCredit == totalCredit)&&(identical(other.closingBalance, closingBalance) || other.closingBalance == closingBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,account,period,openingBalance,const DeepCollectionEquality().hash(_lines),totalDebit,totalCredit,closingBalance);
}

@override
String toString() {
    return 'LedgerReport(account: $account, period: $period, openingBalance: $openingBalance, lines: $lines, totalDebit: $totalDebit, totalCredit: $totalCredit, closingBalance: $closingBalance)';
}


}

/// @nodoc
abstract mixin class _$LedgerReportCopyWith<$Res> implements $LedgerReportCopyWith<$Res> {
  factory _$LedgerReportCopyWith(_LedgerReport value, $Res Function(_LedgerReport) _then) = __$LedgerReportCopyWithImpl;
@override @useResult
$Res call({
 LedgerAccountRef account, ReportPeriod? period,@JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal openingBalance, List<BookLine> lines,@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDebit,@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalCredit,@JsonKey(name: 'closing_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal closingBalance
});


@override $LedgerAccountRefCopyWith<$Res> get account;@override $ReportPeriodCopyWith<$Res>? get period;

}
/// @nodoc
class __$LedgerReportCopyWithImpl<$Res>
    implements _$LedgerReportCopyWith<$Res> {
  __$LedgerReportCopyWithImpl(this._self, this._then);

  final _LedgerReport _self;
  final $Res Function(_LedgerReport) _then;

/// Create a copy of LedgerReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? account = null,Object? period = freezed,Object? openingBalance = null,Object? lines = null,Object? totalDebit = null,Object? totalCredit = null,Object? closingBalance = null,}) {
  return _then(_LedgerReport(
account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as LedgerAccountRef,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriod?,openingBalance: null == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as Decimal,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<BookLine>,totalDebit: null == totalDebit ? _self.totalDebit : totalDebit // ignore: cast_nullable_to_non_nullable
as Decimal,totalCredit: null == totalCredit ? _self.totalCredit : totalCredit // ignore: cast_nullable_to_non_nullable
as Decimal,closingBalance: null == closingBalance ? _self.closingBalance : closingBalance // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

/// Create a copy of LedgerReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<$Res> get account {
  
  return $LedgerAccountRefCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}/// Create a copy of LedgerReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $ReportPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// @nodoc
mixin _$BookAccount {

@JsonKey(name: 'account_id') String get accountId;@JsonKey(name: 'account_code') String get accountCode;@JsonKey(name: 'account_name') String get accountName;@JsonKey(name: 'account_subtype') String? get accountSubtype;@JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get openingBalance; List<BookLine> get lines;@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalDebit;@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalCredit;@JsonKey(name: 'closing_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get closingBalance;
/// Create a copy of BookAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookAccountCopyWith<BookAccount> get copyWith => _$BookAccountCopyWithImpl<BookAccount>(this as BookAccount, _$identity);

  /// Serializes this BookAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BookAccount;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookAccount&&(identical(other.accountId, _this.accountId) || other.accountId == _this.accountId)&&(identical(other.accountCode, _this.accountCode) || other.accountCode == _this.accountCode)&&(identical(other.accountName, _this.accountName) || other.accountName == _this.accountName)&&(identical(other.accountSubtype, _this.accountSubtype) || other.accountSubtype == _this.accountSubtype)&&(identical(other.openingBalance, _this.openingBalance) || other.openingBalance == _this.openingBalance)&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&(identical(other.totalDebit, _this.totalDebit) || other.totalDebit == _this.totalDebit)&&(identical(other.totalCredit, _this.totalCredit) || other.totalCredit == _this.totalCredit)&&(identical(other.closingBalance, _this.closingBalance) || other.closingBalance == _this.closingBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BookAccount;
  return Object.hash(runtimeType,_this.accountId,_this.accountCode,_this.accountName,_this.accountSubtype,_this.openingBalance,const DeepCollectionEquality().hash(_this.lines),_this.totalDebit,_this.totalCredit,_this.closingBalance);
}

@override
String toString() {
  final _this = this as BookAccount;
  return 'BookAccount(accountId: ${_this.accountId}, accountCode: ${_this.accountCode}, accountName: ${_this.accountName}, accountSubtype: ${_this.accountSubtype}, openingBalance: ${_this.openingBalance}, lines: ${_this.lines}, totalDebit: ${_this.totalDebit}, totalCredit: ${_this.totalCredit}, closingBalance: ${_this.closingBalance})';
}


}

/// @nodoc
abstract mixin class $BookAccountCopyWith<$Res>  {
  factory $BookAccountCopyWith(BookAccount value, $Res Function(BookAccount) _then) = _$BookAccountCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'account_id') String accountId,@JsonKey(name: 'account_code') String accountCode,@JsonKey(name: 'account_name') String accountName,@JsonKey(name: 'account_subtype') String? accountSubtype,@JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal openingBalance, List<BookLine> lines,@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDebit,@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalCredit,@JsonKey(name: 'closing_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal closingBalance
});




}
/// @nodoc
class _$BookAccountCopyWithImpl<$Res>
    implements $BookAccountCopyWith<$Res> {
  _$BookAccountCopyWithImpl(this._self, this._then);

  final BookAccount _self;
  final $Res Function(BookAccount) _then;

/// Create a copy of BookAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountId = null,Object? accountCode = null,Object? accountName = null,Object? accountSubtype = freezed,Object? openingBalance = null,Object? lines = null,Object? totalDebit = null,Object? totalCredit = null,Object? closingBalance = null,}) {
  return _then(BookAccount(
accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,accountCode: null == accountCode ? _self.accountCode : accountCode // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountSubtype: freezed == accountSubtype ? _self.accountSubtype : accountSubtype // ignore: cast_nullable_to_non_nullable
as String?,openingBalance: null == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as Decimal,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<BookLine>,totalDebit: null == totalDebit ? _self.totalDebit : totalDebit // ignore: cast_nullable_to_non_nullable
as Decimal,totalCredit: null == totalCredit ? _self.totalCredit : totalCredit // ignore: cast_nullable_to_non_nullable
as Decimal,closingBalance: null == closingBalance ? _self.closingBalance : closingBalance // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

}


/// Adds pattern-matching-related methods to [BookAccount].
extension BookAccountPatterns on BookAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookAccount value)  $default,){
final _that = this;
switch (_that) {
case _BookAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookAccount value)?  $default,){
final _that = this;
switch (_that) {
case _BookAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'account_id')  String accountId, @JsonKey(name: 'account_code')  String accountCode, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'account_subtype')  String? accountSubtype, @JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal openingBalance,  List<BookLine> lines, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit, @JsonKey(name: 'closing_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal closingBalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookAccount() when $default != null:
return $default(_that.accountId,_that.accountCode,_that.accountName,_that.accountSubtype,_that.openingBalance,_that.lines,_that.totalDebit,_that.totalCredit,_that.closingBalance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'account_id')  String accountId, @JsonKey(name: 'account_code')  String accountCode, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'account_subtype')  String? accountSubtype, @JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal openingBalance,  List<BookLine> lines, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit, @JsonKey(name: 'closing_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal closingBalance)  $default,) {final _that = this;
switch (_that) {
case _BookAccount():
return $default(_that.accountId,_that.accountCode,_that.accountName,_that.accountSubtype,_that.openingBalance,_that.lines,_that.totalDebit,_that.totalCredit,_that.closingBalance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'account_id')  String accountId, @JsonKey(name: 'account_code')  String accountCode, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'account_subtype')  String? accountSubtype, @JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal openingBalance,  List<BookLine> lines, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit, @JsonKey(name: 'closing_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal closingBalance)?  $default,) {final _that = this;
switch (_that) {
case _BookAccount() when $default != null:
return $default(_that.accountId,_that.accountCode,_that.accountName,_that.accountSubtype,_that.openingBalance,_that.lines,_that.totalDebit,_that.totalCredit,_that.closingBalance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookAccount implements BookAccount {
  const _BookAccount({@JsonKey(name: 'account_id') required this.accountId, @JsonKey(name: 'account_code') this.accountCode = '', @JsonKey(name: 'account_name') this.accountName = '', @JsonKey(name: 'account_subtype') this.accountSubtype, @JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) required this.openingBalance,  List<BookLine> lines = const [], @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalCredit, @JsonKey(name: 'closing_balance', fromJson: decimalFromJson, toJson: decimalToJson) required this.closingBalance}): _lines = lines;
  factory _BookAccount.fromJson(Map<String, dynamic> json) => _$BookAccountFromJson(json);

@override@JsonKey(name: 'account_id') final  String accountId;
@override@JsonKey(name: 'account_code') final  String accountCode;
@override@JsonKey(name: 'account_name') final  String accountName;
@override@JsonKey(name: 'account_subtype') final  String? accountSubtype;
@override@JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal openingBalance;
 final  List<BookLine> _lines;
@override@JsonKey() List<BookLine> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalDebit;
@override@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalCredit;
@override@JsonKey(name: 'closing_balance', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal closingBalance;

/// Create a copy of BookAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookAccountCopyWith<_BookAccount> get copyWith => __$BookAccountCopyWithImpl<_BookAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookAccountToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookAccount&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.accountCode, accountCode) || other.accountCode == accountCode)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountSubtype, accountSubtype) || other.accountSubtype == accountSubtype)&&(identical(other.openingBalance, openingBalance) || other.openingBalance == openingBalance)&&const DeepCollectionEquality().equals(other.lines, _lines)&&(identical(other.totalDebit, totalDebit) || other.totalDebit == totalDebit)&&(identical(other.totalCredit, totalCredit) || other.totalCredit == totalCredit)&&(identical(other.closingBalance, closingBalance) || other.closingBalance == closingBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,accountId,accountCode,accountName,accountSubtype,openingBalance,const DeepCollectionEquality().hash(_lines),totalDebit,totalCredit,closingBalance);
}

@override
String toString() {
    return 'BookAccount(accountId: $accountId, accountCode: $accountCode, accountName: $accountName, accountSubtype: $accountSubtype, openingBalance: $openingBalance, lines: $lines, totalDebit: $totalDebit, totalCredit: $totalCredit, closingBalance: $closingBalance)';
}


}

/// @nodoc
abstract mixin class _$BookAccountCopyWith<$Res> implements $BookAccountCopyWith<$Res> {
  factory _$BookAccountCopyWith(_BookAccount value, $Res Function(_BookAccount) _then) = __$BookAccountCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'account_id') String accountId,@JsonKey(name: 'account_code') String accountCode,@JsonKey(name: 'account_name') String accountName,@JsonKey(name: 'account_subtype') String? accountSubtype,@JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal openingBalance, List<BookLine> lines,@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDebit,@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalCredit,@JsonKey(name: 'closing_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal closingBalance
});




}
/// @nodoc
class __$BookAccountCopyWithImpl<$Res>
    implements _$BookAccountCopyWith<$Res> {
  __$BookAccountCopyWithImpl(this._self, this._then);

  final _BookAccount _self;
  final $Res Function(_BookAccount) _then;

/// Create a copy of BookAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountId = null,Object? accountCode = null,Object? accountName = null,Object? accountSubtype = freezed,Object? openingBalance = null,Object? lines = null,Object? totalDebit = null,Object? totalCredit = null,Object? closingBalance = null,}) {
  return _then(_BookAccount(
accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,accountCode: null == accountCode ? _self.accountCode : accountCode // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountSubtype: freezed == accountSubtype ? _self.accountSubtype : accountSubtype // ignore: cast_nullable_to_non_nullable
as String?,openingBalance: null == openingBalance ? _self.openingBalance : openingBalance // ignore: cast_nullable_to_non_nullable
as Decimal,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<BookLine>,totalDebit: null == totalDebit ? _self.totalDebit : totalDebit // ignore: cast_nullable_to_non_nullable
as Decimal,totalCredit: null == totalCredit ? _self.totalCredit : totalCredit // ignore: cast_nullable_to_non_nullable
as Decimal,closingBalance: null == closingBalance ? _self.closingBalance : closingBalance // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}


}


/// @nodoc
mixin _$CashBankBook {

 ReportPeriod? get period; List<BookAccount> get accounts;@JsonKey(name: 'total_opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalOpeningBalance;@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalDebit;@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalCredit;@JsonKey(name: 'total_closing_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalClosingBalance;
/// Create a copy of CashBankBook
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CashBankBookCopyWith<CashBankBook> get copyWith => _$CashBankBookCopyWithImpl<CashBankBook>(this as CashBankBook, _$identity);

  /// Serializes this CashBankBook to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CashBankBook;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CashBankBook&&(identical(other.period, _this.period) || other.period == _this.period)&&const DeepCollectionEquality().equals(other.accounts, _this.accounts)&&(identical(other.totalOpeningBalance, _this.totalOpeningBalance) || other.totalOpeningBalance == _this.totalOpeningBalance)&&(identical(other.totalDebit, _this.totalDebit) || other.totalDebit == _this.totalDebit)&&(identical(other.totalCredit, _this.totalCredit) || other.totalCredit == _this.totalCredit)&&(identical(other.totalClosingBalance, _this.totalClosingBalance) || other.totalClosingBalance == _this.totalClosingBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CashBankBook;
  return Object.hash(runtimeType,_this.period,const DeepCollectionEquality().hash(_this.accounts),_this.totalOpeningBalance,_this.totalDebit,_this.totalCredit,_this.totalClosingBalance);
}

@override
String toString() {
  final _this = this as CashBankBook;
  return 'CashBankBook(period: ${_this.period}, accounts: ${_this.accounts}, totalOpeningBalance: ${_this.totalOpeningBalance}, totalDebit: ${_this.totalDebit}, totalCredit: ${_this.totalCredit}, totalClosingBalance: ${_this.totalClosingBalance})';
}


}

/// @nodoc
abstract mixin class $CashBankBookCopyWith<$Res>  {
  factory $CashBankBookCopyWith(CashBankBook value, $Res Function(CashBankBook) _then) = _$CashBankBookCopyWithImpl;
@useResult
$Res call({
 ReportPeriod? period, List<BookAccount> accounts,@JsonKey(name: 'total_opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalOpeningBalance,@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDebit,@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalCredit,@JsonKey(name: 'total_closing_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalClosingBalance
});


$ReportPeriodCopyWith<$Res>? get period;

}
/// @nodoc
class _$CashBankBookCopyWithImpl<$Res>
    implements $CashBankBookCopyWith<$Res> {
  _$CashBankBookCopyWithImpl(this._self, this._then);

  final CashBankBook _self;
  final $Res Function(CashBankBook) _then;

/// Create a copy of CashBankBook
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = freezed,Object? accounts = null,Object? totalOpeningBalance = null,Object? totalDebit = null,Object? totalCredit = null,Object? totalClosingBalance = null,}) {
  return _then(CashBankBook(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriod?,accounts: null == accounts ? _self.accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<BookAccount>,totalOpeningBalance: null == totalOpeningBalance ? _self.totalOpeningBalance : totalOpeningBalance // ignore: cast_nullable_to_non_nullable
as Decimal,totalDebit: null == totalDebit ? _self.totalDebit : totalDebit // ignore: cast_nullable_to_non_nullable
as Decimal,totalCredit: null == totalCredit ? _self.totalCredit : totalCredit // ignore: cast_nullable_to_non_nullable
as Decimal,totalClosingBalance: null == totalClosingBalance ? _self.totalClosingBalance : totalClosingBalance // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}
/// Create a copy of CashBankBook
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $ReportPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// Adds pattern-matching-related methods to [CashBankBook].
extension CashBankBookPatterns on CashBankBook {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CashBankBook value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CashBankBook() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CashBankBook value)  $default,){
final _that = this;
switch (_that) {
case _CashBankBook():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CashBankBook value)?  $default,){
final _that = this;
switch (_that) {
case _CashBankBook() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReportPeriod? period,  List<BookAccount> accounts, @JsonKey(name: 'total_opening_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalOpeningBalance, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit, @JsonKey(name: 'total_closing_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalClosingBalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CashBankBook() when $default != null:
return $default(_that.period,_that.accounts,_that.totalOpeningBalance,_that.totalDebit,_that.totalCredit,_that.totalClosingBalance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReportPeriod? period,  List<BookAccount> accounts, @JsonKey(name: 'total_opening_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalOpeningBalance, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit, @JsonKey(name: 'total_closing_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalClosingBalance)  $default,) {final _that = this;
switch (_that) {
case _CashBankBook():
return $default(_that.period,_that.accounts,_that.totalOpeningBalance,_that.totalDebit,_that.totalCredit,_that.totalClosingBalance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReportPeriod? period,  List<BookAccount> accounts, @JsonKey(name: 'total_opening_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalOpeningBalance, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit, @JsonKey(name: 'total_closing_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalClosingBalance)?  $default,) {final _that = this;
switch (_that) {
case _CashBankBook() when $default != null:
return $default(_that.period,_that.accounts,_that.totalOpeningBalance,_that.totalDebit,_that.totalCredit,_that.totalClosingBalance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CashBankBook implements CashBankBook {
  const _CashBankBook({this.period,  List<BookAccount> accounts = const [], @JsonKey(name: 'total_opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalOpeningBalance, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalCredit, @JsonKey(name: 'total_closing_balance', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalClosingBalance}): _accounts = accounts;
  factory _CashBankBook.fromJson(Map<String, dynamic> json) => _$CashBankBookFromJson(json);

@override final  ReportPeriod? period;
 final  List<BookAccount> _accounts;
@override@JsonKey() List<BookAccount> get accounts {
  if (_accounts is EqualUnmodifiableListView) return _accounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accounts);
}

@override@JsonKey(name: 'total_opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalOpeningBalance;
@override@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalDebit;
@override@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalCredit;
@override@JsonKey(name: 'total_closing_balance', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalClosingBalance;

/// Create a copy of CashBankBook
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CashBankBookCopyWith<_CashBankBook> get copyWith => __$CashBankBookCopyWithImpl<_CashBankBook>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CashBankBookToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CashBankBook&&(identical(other.period, period) || other.period == period)&&const DeepCollectionEquality().equals(other.accounts, _accounts)&&(identical(other.totalOpeningBalance, totalOpeningBalance) || other.totalOpeningBalance == totalOpeningBalance)&&(identical(other.totalDebit, totalDebit) || other.totalDebit == totalDebit)&&(identical(other.totalCredit, totalCredit) || other.totalCredit == totalCredit)&&(identical(other.totalClosingBalance, totalClosingBalance) || other.totalClosingBalance == totalClosingBalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,period,const DeepCollectionEquality().hash(_accounts),totalOpeningBalance,totalDebit,totalCredit,totalClosingBalance);
}

@override
String toString() {
    return 'CashBankBook(period: $period, accounts: $accounts, totalOpeningBalance: $totalOpeningBalance, totalDebit: $totalDebit, totalCredit: $totalCredit, totalClosingBalance: $totalClosingBalance)';
}


}

/// @nodoc
abstract mixin class _$CashBankBookCopyWith<$Res> implements $CashBankBookCopyWith<$Res> {
  factory _$CashBankBookCopyWith(_CashBankBook value, $Res Function(_CashBankBook) _then) = __$CashBankBookCopyWithImpl;
@override @useResult
$Res call({
 ReportPeriod? period, List<BookAccount> accounts,@JsonKey(name: 'total_opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalOpeningBalance,@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDebit,@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalCredit,@JsonKey(name: 'total_closing_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalClosingBalance
});


@override $ReportPeriodCopyWith<$Res>? get period;

}
/// @nodoc
class __$CashBankBookCopyWithImpl<$Res>
    implements _$CashBankBookCopyWith<$Res> {
  __$CashBankBookCopyWithImpl(this._self, this._then);

  final _CashBankBook _self;
  final $Res Function(_CashBankBook) _then;

/// Create a copy of CashBankBook
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = freezed,Object? accounts = null,Object? totalOpeningBalance = null,Object? totalDebit = null,Object? totalCredit = null,Object? totalClosingBalance = null,}) {
  return _then(_CashBankBook(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriod?,accounts: null == accounts ? _self._accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<BookAccount>,totalOpeningBalance: null == totalOpeningBalance ? _self.totalOpeningBalance : totalOpeningBalance // ignore: cast_nullable_to_non_nullable
as Decimal,totalDebit: null == totalDebit ? _self.totalDebit : totalDebit // ignore: cast_nullable_to_non_nullable
as Decimal,totalCredit: null == totalCredit ? _self.totalCredit : totalCredit // ignore: cast_nullable_to_non_nullable
as Decimal,totalClosingBalance: null == totalClosingBalance ? _self.totalClosingBalance : totalClosingBalance // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

/// Create a copy of CashBankBook
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $ReportPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// @nodoc
mixin _$DayBookLine {

@JsonKey(name: 'account_id') String? get accountId;@JsonKey(name: 'account_code') String get accountCode;@JsonKey(name: 'account_name') String get accountName;@JsonKey(name: 'account_type') String? get accountType;@JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get debitAmount;@JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get creditAmount;@JsonKey(name: 'line_narration') String? get lineNarration;
/// Create a copy of DayBookLine
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DayBookLineCopyWith<DayBookLine> get copyWith => _$DayBookLineCopyWithImpl<DayBookLine>(this as DayBookLine, _$identity);

  /// Serializes this DayBookLine to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DayBookLine;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DayBookLine&&(identical(other.accountId, _this.accountId) || other.accountId == _this.accountId)&&(identical(other.accountCode, _this.accountCode) || other.accountCode == _this.accountCode)&&(identical(other.accountName, _this.accountName) || other.accountName == _this.accountName)&&(identical(other.accountType, _this.accountType) || other.accountType == _this.accountType)&&(identical(other.debitAmount, _this.debitAmount) || other.debitAmount == _this.debitAmount)&&(identical(other.creditAmount, _this.creditAmount) || other.creditAmount == _this.creditAmount)&&(identical(other.lineNarration, _this.lineNarration) || other.lineNarration == _this.lineNarration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DayBookLine;
  return Object.hash(runtimeType,_this.accountId,_this.accountCode,_this.accountName,_this.accountType,_this.debitAmount,_this.creditAmount,_this.lineNarration);
}

@override
String toString() {
  final _this = this as DayBookLine;
  return 'DayBookLine(accountId: ${_this.accountId}, accountCode: ${_this.accountCode}, accountName: ${_this.accountName}, accountType: ${_this.accountType}, debitAmount: ${_this.debitAmount}, creditAmount: ${_this.creditAmount}, lineNarration: ${_this.lineNarration})';
}


}

/// @nodoc
abstract mixin class $DayBookLineCopyWith<$Res>  {
  factory $DayBookLineCopyWith(DayBookLine value, $Res Function(DayBookLine) _then) = _$DayBookLineCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'account_id') String? accountId,@JsonKey(name: 'account_code') String accountCode,@JsonKey(name: 'account_name') String accountName,@JsonKey(name: 'account_type') String? accountType,@JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal debitAmount,@JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal creditAmount,@JsonKey(name: 'line_narration') String? lineNarration
});




}
/// @nodoc
class _$DayBookLineCopyWithImpl<$Res>
    implements $DayBookLineCopyWith<$Res> {
  _$DayBookLineCopyWithImpl(this._self, this._then);

  final DayBookLine _self;
  final $Res Function(DayBookLine) _then;

/// Create a copy of DayBookLine
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountId = freezed,Object? accountCode = null,Object? accountName = null,Object? accountType = freezed,Object? debitAmount = null,Object? creditAmount = null,Object? lineNarration = freezed,}) {
  return _then(DayBookLine(
accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,accountCode: null == accountCode ? _self.accountCode : accountCode // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountType: freezed == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as String?,debitAmount: null == debitAmount ? _self.debitAmount : debitAmount // ignore: cast_nullable_to_non_nullable
as Decimal,creditAmount: null == creditAmount ? _self.creditAmount : creditAmount // ignore: cast_nullable_to_non_nullable
as Decimal,lineNarration: freezed == lineNarration ? _self.lineNarration : lineNarration // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DayBookLine].
extension DayBookLinePatterns on DayBookLine {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DayBookLine value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DayBookLine() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DayBookLine value)  $default,){
final _that = this;
switch (_that) {
case _DayBookLine():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DayBookLine value)?  $default,){
final _that = this;
switch (_that) {
case _DayBookLine() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'account_id')  String? accountId, @JsonKey(name: 'account_code')  String accountCode, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'account_type')  String? accountType, @JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal debitAmount, @JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal creditAmount, @JsonKey(name: 'line_narration')  String? lineNarration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DayBookLine() when $default != null:
return $default(_that.accountId,_that.accountCode,_that.accountName,_that.accountType,_that.debitAmount,_that.creditAmount,_that.lineNarration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'account_id')  String? accountId, @JsonKey(name: 'account_code')  String accountCode, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'account_type')  String? accountType, @JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal debitAmount, @JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal creditAmount, @JsonKey(name: 'line_narration')  String? lineNarration)  $default,) {final _that = this;
switch (_that) {
case _DayBookLine():
return $default(_that.accountId,_that.accountCode,_that.accountName,_that.accountType,_that.debitAmount,_that.creditAmount,_that.lineNarration);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'account_id')  String? accountId, @JsonKey(name: 'account_code')  String accountCode, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'account_type')  String? accountType, @JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal debitAmount, @JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal creditAmount, @JsonKey(name: 'line_narration')  String? lineNarration)?  $default,) {final _that = this;
switch (_that) {
case _DayBookLine() when $default != null:
return $default(_that.accountId,_that.accountCode,_that.accountName,_that.accountType,_that.debitAmount,_that.creditAmount,_that.lineNarration);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DayBookLine implements DayBookLine {
  const _DayBookLine({@JsonKey(name: 'account_id') this.accountId, @JsonKey(name: 'account_code') this.accountCode = '', @JsonKey(name: 'account_name') this.accountName = '', @JsonKey(name: 'account_type') this.accountType, @JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.debitAmount, @JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.creditAmount, @JsonKey(name: 'line_narration') this.lineNarration});
  factory _DayBookLine.fromJson(Map<String, dynamic> json) => _$DayBookLineFromJson(json);

@override@JsonKey(name: 'account_id') final  String? accountId;
@override@JsonKey(name: 'account_code') final  String accountCode;
@override@JsonKey(name: 'account_name') final  String accountName;
@override@JsonKey(name: 'account_type') final  String? accountType;
@override@JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal debitAmount;
@override@JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal creditAmount;
@override@JsonKey(name: 'line_narration') final  String? lineNarration;

/// Create a copy of DayBookLine
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DayBookLineCopyWith<_DayBookLine> get copyWith => __$DayBookLineCopyWithImpl<_DayBookLine>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DayBookLineToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DayBookLine&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.accountCode, accountCode) || other.accountCode == accountCode)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountType, accountType) || other.accountType == accountType)&&(identical(other.debitAmount, debitAmount) || other.debitAmount == debitAmount)&&(identical(other.creditAmount, creditAmount) || other.creditAmount == creditAmount)&&(identical(other.lineNarration, lineNarration) || other.lineNarration == lineNarration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,accountId,accountCode,accountName,accountType,debitAmount,creditAmount,lineNarration);
}

@override
String toString() {
    return 'DayBookLine(accountId: $accountId, accountCode: $accountCode, accountName: $accountName, accountType: $accountType, debitAmount: $debitAmount, creditAmount: $creditAmount, lineNarration: $lineNarration)';
}


}

/// @nodoc
abstract mixin class _$DayBookLineCopyWith<$Res> implements $DayBookLineCopyWith<$Res> {
  factory _$DayBookLineCopyWith(_DayBookLine value, $Res Function(_DayBookLine) _then) = __$DayBookLineCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'account_id') String? accountId,@JsonKey(name: 'account_code') String accountCode,@JsonKey(name: 'account_name') String accountName,@JsonKey(name: 'account_type') String? accountType,@JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal debitAmount,@JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal creditAmount,@JsonKey(name: 'line_narration') String? lineNarration
});




}
/// @nodoc
class __$DayBookLineCopyWithImpl<$Res>
    implements _$DayBookLineCopyWith<$Res> {
  __$DayBookLineCopyWithImpl(this._self, this._then);

  final _DayBookLine _self;
  final $Res Function(_DayBookLine) _then;

/// Create a copy of DayBookLine
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountId = freezed,Object? accountCode = null,Object? accountName = null,Object? accountType = freezed,Object? debitAmount = null,Object? creditAmount = null,Object? lineNarration = freezed,}) {
  return _then(_DayBookLine(
accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,accountCode: null == accountCode ? _self.accountCode : accountCode // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountType: freezed == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as String?,debitAmount: null == debitAmount ? _self.debitAmount : debitAmount // ignore: cast_nullable_to_non_nullable
as Decimal,creditAmount: null == creditAmount ? _self.creditAmount : creditAmount // ignore: cast_nullable_to_non_nullable
as Decimal,lineNarration: freezed == lineNarration ? _self.lineNarration : lineNarration // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DayBookEntry {

@JsonKey(name: 'entry_id') String get entryId;@JsonKey(name: 'voucher_no') String get voucherNo;@JsonKey(name: 'entry_date') DateTime? get entryDate; String? get narration;/// MANUAL / RECEIPT_VOUCHER / PAYMENT_VOUCHER / CONTRA /
/// DEBIT_CREDIT_NOTE / SYSTEM_FEE_RECEIPT …
@JsonKey(name: 'entry_type') String get entryType;@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalDebit;@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalCredit; List<DayBookLine> get lines;
/// Create a copy of DayBookEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DayBookEntryCopyWith<DayBookEntry> get copyWith => _$DayBookEntryCopyWithImpl<DayBookEntry>(this as DayBookEntry, _$identity);

  /// Serializes this DayBookEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DayBookEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DayBookEntry&&(identical(other.entryId, _this.entryId) || other.entryId == _this.entryId)&&(identical(other.voucherNo, _this.voucherNo) || other.voucherNo == _this.voucherNo)&&(identical(other.entryDate, _this.entryDate) || other.entryDate == _this.entryDate)&&(identical(other.narration, _this.narration) || other.narration == _this.narration)&&(identical(other.entryType, _this.entryType) || other.entryType == _this.entryType)&&(identical(other.totalDebit, _this.totalDebit) || other.totalDebit == _this.totalDebit)&&(identical(other.totalCredit, _this.totalCredit) || other.totalCredit == _this.totalCredit)&&const DeepCollectionEquality().equals(other.lines, _this.lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DayBookEntry;
  return Object.hash(runtimeType,_this.entryId,_this.voucherNo,_this.entryDate,_this.narration,_this.entryType,_this.totalDebit,_this.totalCredit,const DeepCollectionEquality().hash(_this.lines));
}

@override
String toString() {
  final _this = this as DayBookEntry;
  return 'DayBookEntry(entryId: ${_this.entryId}, voucherNo: ${_this.voucherNo}, entryDate: ${_this.entryDate}, narration: ${_this.narration}, entryType: ${_this.entryType}, totalDebit: ${_this.totalDebit}, totalCredit: ${_this.totalCredit}, lines: ${_this.lines})';
}


}

/// @nodoc
abstract mixin class $DayBookEntryCopyWith<$Res>  {
  factory $DayBookEntryCopyWith(DayBookEntry value, $Res Function(DayBookEntry) _then) = _$DayBookEntryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'entry_id') String entryId,@JsonKey(name: 'voucher_no') String voucherNo,@JsonKey(name: 'entry_date') DateTime? entryDate, String? narration,@JsonKey(name: 'entry_type') String entryType,@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDebit,@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalCredit, List<DayBookLine> lines
});




}
/// @nodoc
class _$DayBookEntryCopyWithImpl<$Res>
    implements $DayBookEntryCopyWith<$Res> {
  _$DayBookEntryCopyWithImpl(this._self, this._then);

  final DayBookEntry _self;
  final $Res Function(DayBookEntry) _then;

/// Create a copy of DayBookEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entryId = null,Object? voucherNo = null,Object? entryDate = freezed,Object? narration = freezed,Object? entryType = null,Object? totalDebit = null,Object? totalCredit = null,Object? lines = null,}) {
  return _then(DayBookEntry(
entryId: null == entryId ? _self.entryId : entryId // ignore: cast_nullable_to_non_nullable
as String,voucherNo: null == voucherNo ? _self.voucherNo : voucherNo // ignore: cast_nullable_to_non_nullable
as String,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,narration: freezed == narration ? _self.narration : narration // ignore: cast_nullable_to_non_nullable
as String?,entryType: null == entryType ? _self.entryType : entryType // ignore: cast_nullable_to_non_nullable
as String,totalDebit: null == totalDebit ? _self.totalDebit : totalDebit // ignore: cast_nullable_to_non_nullable
as Decimal,totalCredit: null == totalCredit ? _self.totalCredit : totalCredit // ignore: cast_nullable_to_non_nullable
as Decimal,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<DayBookLine>,
  ));
}

}


/// Adds pattern-matching-related methods to [DayBookEntry].
extension DayBookEntryPatterns on DayBookEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DayBookEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DayBookEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DayBookEntry value)  $default,){
final _that = this;
switch (_that) {
case _DayBookEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DayBookEntry value)?  $default,){
final _that = this;
switch (_that) {
case _DayBookEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'entry_id')  String entryId, @JsonKey(name: 'voucher_no')  String voucherNo, @JsonKey(name: 'entry_date')  DateTime? entryDate,  String? narration, @JsonKey(name: 'entry_type')  String entryType, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit,  List<DayBookLine> lines)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DayBookEntry() when $default != null:
return $default(_that.entryId,_that.voucherNo,_that.entryDate,_that.narration,_that.entryType,_that.totalDebit,_that.totalCredit,_that.lines);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'entry_id')  String entryId, @JsonKey(name: 'voucher_no')  String voucherNo, @JsonKey(name: 'entry_date')  DateTime? entryDate,  String? narration, @JsonKey(name: 'entry_type')  String entryType, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit,  List<DayBookLine> lines)  $default,) {final _that = this;
switch (_that) {
case _DayBookEntry():
return $default(_that.entryId,_that.voucherNo,_that.entryDate,_that.narration,_that.entryType,_that.totalDebit,_that.totalCredit,_that.lines);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'entry_id')  String entryId, @JsonKey(name: 'voucher_no')  String voucherNo, @JsonKey(name: 'entry_date')  DateTime? entryDate,  String? narration, @JsonKey(name: 'entry_type')  String entryType, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit,  List<DayBookLine> lines)?  $default,) {final _that = this;
switch (_that) {
case _DayBookEntry() when $default != null:
return $default(_that.entryId,_that.voucherNo,_that.entryDate,_that.narration,_that.entryType,_that.totalDebit,_that.totalCredit,_that.lines);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DayBookEntry implements DayBookEntry {
  const _DayBookEntry({@JsonKey(name: 'entry_id') required this.entryId, @JsonKey(name: 'voucher_no') this.voucherNo = '', @JsonKey(name: 'entry_date') this.entryDate, this.narration, @JsonKey(name: 'entry_type') this.entryType = '', @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalCredit,  List<DayBookLine> lines = const []}): _lines = lines;
  factory _DayBookEntry.fromJson(Map<String, dynamic> json) => _$DayBookEntryFromJson(json);

@override@JsonKey(name: 'entry_id') final  String entryId;
@override@JsonKey(name: 'voucher_no') final  String voucherNo;
@override@JsonKey(name: 'entry_date') final  DateTime? entryDate;
@override final  String? narration;
/// MANUAL / RECEIPT_VOUCHER / PAYMENT_VOUCHER / CONTRA /
/// DEBIT_CREDIT_NOTE / SYSTEM_FEE_RECEIPT …
@override@JsonKey(name: 'entry_type') final  String entryType;
@override@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalDebit;
@override@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalCredit;
 final  List<DayBookLine> _lines;
@override@JsonKey() List<DayBookLine> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}


/// Create a copy of DayBookEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DayBookEntryCopyWith<_DayBookEntry> get copyWith => __$DayBookEntryCopyWithImpl<_DayBookEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DayBookEntryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DayBookEntry&&(identical(other.entryId, entryId) || other.entryId == entryId)&&(identical(other.voucherNo, voucherNo) || other.voucherNo == voucherNo)&&(identical(other.entryDate, entryDate) || other.entryDate == entryDate)&&(identical(other.narration, narration) || other.narration == narration)&&(identical(other.entryType, entryType) || other.entryType == entryType)&&(identical(other.totalDebit, totalDebit) || other.totalDebit == totalDebit)&&(identical(other.totalCredit, totalCredit) || other.totalCredit == totalCredit)&&const DeepCollectionEquality().equals(other.lines, _lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,entryId,voucherNo,entryDate,narration,entryType,totalDebit,totalCredit,const DeepCollectionEquality().hash(_lines));
}

@override
String toString() {
    return 'DayBookEntry(entryId: $entryId, voucherNo: $voucherNo, entryDate: $entryDate, narration: $narration, entryType: $entryType, totalDebit: $totalDebit, totalCredit: $totalCredit, lines: $lines)';
}


}

/// @nodoc
abstract mixin class _$DayBookEntryCopyWith<$Res> implements $DayBookEntryCopyWith<$Res> {
  factory _$DayBookEntryCopyWith(_DayBookEntry value, $Res Function(_DayBookEntry) _then) = __$DayBookEntryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'entry_id') String entryId,@JsonKey(name: 'voucher_no') String voucherNo,@JsonKey(name: 'entry_date') DateTime? entryDate, String? narration,@JsonKey(name: 'entry_type') String entryType,@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDebit,@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalCredit, List<DayBookLine> lines
});




}
/// @nodoc
class __$DayBookEntryCopyWithImpl<$Res>
    implements _$DayBookEntryCopyWith<$Res> {
  __$DayBookEntryCopyWithImpl(this._self, this._then);

  final _DayBookEntry _self;
  final $Res Function(_DayBookEntry) _then;

/// Create a copy of DayBookEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entryId = null,Object? voucherNo = null,Object? entryDate = freezed,Object? narration = freezed,Object? entryType = null,Object? totalDebit = null,Object? totalCredit = null,Object? lines = null,}) {
  return _then(_DayBookEntry(
entryId: null == entryId ? _self.entryId : entryId // ignore: cast_nullable_to_non_nullable
as String,voucherNo: null == voucherNo ? _self.voucherNo : voucherNo // ignore: cast_nullable_to_non_nullable
as String,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,narration: freezed == narration ? _self.narration : narration // ignore: cast_nullable_to_non_nullable
as String?,entryType: null == entryType ? _self.entryType : entryType // ignore: cast_nullable_to_non_nullable
as String,totalDebit: null == totalDebit ? _self.totalDebit : totalDebit // ignore: cast_nullable_to_non_nullable
as Decimal,totalCredit: null == totalCredit ? _self.totalCredit : totalCredit // ignore: cast_nullable_to_non_nullable
as Decimal,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<DayBookLine>,
  ));
}


}


/// @nodoc
mixin _$DayBook {

 ReportPeriod? get period; List<DayBookEntry> get entries;@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalDebit;@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalCredit;
/// Create a copy of DayBook
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DayBookCopyWith<DayBook> get copyWith => _$DayBookCopyWithImpl<DayBook>(this as DayBook, _$identity);

  /// Serializes this DayBook to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DayBook;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DayBook&&(identical(other.period, _this.period) || other.period == _this.period)&&const DeepCollectionEquality().equals(other.entries, _this.entries)&&(identical(other.totalDebit, _this.totalDebit) || other.totalDebit == _this.totalDebit)&&(identical(other.totalCredit, _this.totalCredit) || other.totalCredit == _this.totalCredit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DayBook;
  return Object.hash(runtimeType,_this.period,const DeepCollectionEquality().hash(_this.entries),_this.totalDebit,_this.totalCredit);
}

@override
String toString() {
  final _this = this as DayBook;
  return 'DayBook(period: ${_this.period}, entries: ${_this.entries}, totalDebit: ${_this.totalDebit}, totalCredit: ${_this.totalCredit})';
}


}

/// @nodoc
abstract mixin class $DayBookCopyWith<$Res>  {
  factory $DayBookCopyWith(DayBook value, $Res Function(DayBook) _then) = _$DayBookCopyWithImpl;
@useResult
$Res call({
 ReportPeriod? period, List<DayBookEntry> entries,@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDebit,@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalCredit
});


$ReportPeriodCopyWith<$Res>? get period;

}
/// @nodoc
class _$DayBookCopyWithImpl<$Res>
    implements $DayBookCopyWith<$Res> {
  _$DayBookCopyWithImpl(this._self, this._then);

  final DayBook _self;
  final $Res Function(DayBook) _then;

/// Create a copy of DayBook
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = freezed,Object? entries = null,Object? totalDebit = null,Object? totalCredit = null,}) {
  return _then(DayBook(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriod?,entries: null == entries ? _self.entries : entries // ignore: cast_nullable_to_non_nullable
as List<DayBookEntry>,totalDebit: null == totalDebit ? _self.totalDebit : totalDebit // ignore: cast_nullable_to_non_nullable
as Decimal,totalCredit: null == totalCredit ? _self.totalCredit : totalCredit // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}
/// Create a copy of DayBook
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $ReportPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// Adds pattern-matching-related methods to [DayBook].
extension DayBookPatterns on DayBook {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DayBook value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DayBook() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DayBook value)  $default,){
final _that = this;
switch (_that) {
case _DayBook():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DayBook value)?  $default,){
final _that = this;
switch (_that) {
case _DayBook() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReportPeriod? period,  List<DayBookEntry> entries, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DayBook() when $default != null:
return $default(_that.period,_that.entries,_that.totalDebit,_that.totalCredit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReportPeriod? period,  List<DayBookEntry> entries, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit)  $default,) {final _that = this;
switch (_that) {
case _DayBook():
return $default(_that.period,_that.entries,_that.totalDebit,_that.totalCredit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReportPeriod? period,  List<DayBookEntry> entries, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit)?  $default,) {final _that = this;
switch (_that) {
case _DayBook() when $default != null:
return $default(_that.period,_that.entries,_that.totalDebit,_that.totalCredit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DayBook implements DayBook {
  const _DayBook({this.period,  List<DayBookEntry> entries = const [], @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalCredit}): _entries = entries;
  factory _DayBook.fromJson(Map<String, dynamic> json) => _$DayBookFromJson(json);

@override final  ReportPeriod? period;
 final  List<DayBookEntry> _entries;
@override@JsonKey() List<DayBookEntry> get entries {
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entries);
}

@override@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalDebit;
@override@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalCredit;

/// Create a copy of DayBook
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DayBookCopyWith<_DayBook> get copyWith => __$DayBookCopyWithImpl<_DayBook>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DayBookToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DayBook&&(identical(other.period, period) || other.period == period)&&const DeepCollectionEquality().equals(other.entries, _entries)&&(identical(other.totalDebit, totalDebit) || other.totalDebit == totalDebit)&&(identical(other.totalCredit, totalCredit) || other.totalCredit == totalCredit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,period,const DeepCollectionEquality().hash(_entries),totalDebit,totalCredit);
}

@override
String toString() {
    return 'DayBook(period: $period, entries: $entries, totalDebit: $totalDebit, totalCredit: $totalCredit)';
}


}

/// @nodoc
abstract mixin class _$DayBookCopyWith<$Res> implements $DayBookCopyWith<$Res> {
  factory _$DayBookCopyWith(_DayBook value, $Res Function(_DayBook) _then) = __$DayBookCopyWithImpl;
@override @useResult
$Res call({
 ReportPeriod? period, List<DayBookEntry> entries,@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDebit,@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalCredit
});


@override $ReportPeriodCopyWith<$Res>? get period;

}
/// @nodoc
class __$DayBookCopyWithImpl<$Res>
    implements _$DayBookCopyWith<$Res> {
  __$DayBookCopyWithImpl(this._self, this._then);

  final _DayBook _self;
  final $Res Function(_DayBook) _then;

/// Create a copy of DayBook
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = freezed,Object? entries = null,Object? totalDebit = null,Object? totalCredit = null,}) {
  return _then(_DayBook(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriod?,entries: null == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<DayBookEntry>,totalDebit: null == totalDebit ? _self.totalDebit : totalDebit // ignore: cast_nullable_to_non_nullable
as Decimal,totalCredit: null == totalCredit ? _self.totalCredit : totalCredit // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

/// Create a copy of DayBook
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $ReportPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// @nodoc
mixin _$GstItem {

@JsonKey(name: 'voucher_no', readValue: _readDocNo) String? get documentNo;@JsonKey(name: 'entry_date') DateTime? get entryDate;@JsonKey(name: 'party', readValue: _readParty) String? get party;@JsonKey(name: 'party_type', readValue: _readPartyType) String? get partyType;@JsonKey(name: 'detail', readValue: _readDetail) String? get detail;/// DEBIT / CREDIT on adjustment rows.
@JsonKey(name: 'note_type') String? get noteType;@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal get amount;@JsonKey(name: 'gst_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get gstAmount;
/// Create a copy of GstItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GstItemCopyWith<GstItem> get copyWith => _$GstItemCopyWithImpl<GstItem>(this as GstItem, _$identity);

  /// Serializes this GstItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GstItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GstItem&&(identical(other.documentNo, _this.documentNo) || other.documentNo == _this.documentNo)&&(identical(other.entryDate, _this.entryDate) || other.entryDate == _this.entryDate)&&(identical(other.party, _this.party) || other.party == _this.party)&&(identical(other.partyType, _this.partyType) || other.partyType == _this.partyType)&&(identical(other.detail, _this.detail) || other.detail == _this.detail)&&(identical(other.noteType, _this.noteType) || other.noteType == _this.noteType)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.gstAmount, _this.gstAmount) || other.gstAmount == _this.gstAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GstItem;
  return Object.hash(runtimeType,_this.documentNo,_this.entryDate,_this.party,_this.partyType,_this.detail,_this.noteType,_this.amount,_this.gstAmount);
}

@override
String toString() {
  final _this = this as GstItem;
  return 'GstItem(documentNo: ${_this.documentNo}, entryDate: ${_this.entryDate}, party: ${_this.party}, partyType: ${_this.partyType}, detail: ${_this.detail}, noteType: ${_this.noteType}, amount: ${_this.amount}, gstAmount: ${_this.gstAmount})';
}


}

/// @nodoc
abstract mixin class $GstItemCopyWith<$Res>  {
  factory $GstItemCopyWith(GstItem value, $Res Function(GstItem) _then) = _$GstItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'voucher_no', readValue: _readDocNo) String? documentNo,@JsonKey(name: 'entry_date') DateTime? entryDate,@JsonKey(name: 'party', readValue: _readParty) String? party,@JsonKey(name: 'party_type', readValue: _readPartyType) String? partyType,@JsonKey(name: 'detail', readValue: _readDetail) String? detail,@JsonKey(name: 'note_type') String? noteType,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount,@JsonKey(name: 'gst_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal gstAmount
});




}
/// @nodoc
class _$GstItemCopyWithImpl<$Res>
    implements $GstItemCopyWith<$Res> {
  _$GstItemCopyWithImpl(this._self, this._then);

  final GstItem _self;
  final $Res Function(GstItem) _then;

/// Create a copy of GstItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? documentNo = freezed,Object? entryDate = freezed,Object? party = freezed,Object? partyType = freezed,Object? detail = freezed,Object? noteType = freezed,Object? amount = null,Object? gstAmount = null,}) {
  return _then(GstItem(
documentNo: freezed == documentNo ? _self.documentNo : documentNo // ignore: cast_nullable_to_non_nullable
as String?,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,party: freezed == party ? _self.party : party // ignore: cast_nullable_to_non_nullable
as String?,partyType: freezed == partyType ? _self.partyType : partyType // ignore: cast_nullable_to_non_nullable
as String?,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,noteType: freezed == noteType ? _self.noteType : noteType // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,gstAmount: null == gstAmount ? _self.gstAmount : gstAmount // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

}


/// Adds pattern-matching-related methods to [GstItem].
extension GstItemPatterns on GstItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GstItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GstItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GstItem value)  $default,){
final _that = this;
switch (_that) {
case _GstItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GstItem value)?  $default,){
final _that = this;
switch (_that) {
case _GstItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'voucher_no', readValue: _readDocNo)  String? documentNo, @JsonKey(name: 'entry_date')  DateTime? entryDate, @JsonKey(name: 'party', readValue: _readParty)  String? party, @JsonKey(name: 'party_type', readValue: _readPartyType)  String? partyType, @JsonKey(name: 'detail', readValue: _readDetail)  String? detail, @JsonKey(name: 'note_type')  String? noteType, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'gst_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal gstAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GstItem() when $default != null:
return $default(_that.documentNo,_that.entryDate,_that.party,_that.partyType,_that.detail,_that.noteType,_that.amount,_that.gstAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'voucher_no', readValue: _readDocNo)  String? documentNo, @JsonKey(name: 'entry_date')  DateTime? entryDate, @JsonKey(name: 'party', readValue: _readParty)  String? party, @JsonKey(name: 'party_type', readValue: _readPartyType)  String? partyType, @JsonKey(name: 'detail', readValue: _readDetail)  String? detail, @JsonKey(name: 'note_type')  String? noteType, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'gst_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal gstAmount)  $default,) {final _that = this;
switch (_that) {
case _GstItem():
return $default(_that.documentNo,_that.entryDate,_that.party,_that.partyType,_that.detail,_that.noteType,_that.amount,_that.gstAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'voucher_no', readValue: _readDocNo)  String? documentNo, @JsonKey(name: 'entry_date')  DateTime? entryDate, @JsonKey(name: 'party', readValue: _readParty)  String? party, @JsonKey(name: 'party_type', readValue: _readPartyType)  String? partyType, @JsonKey(name: 'detail', readValue: _readDetail)  String? detail, @JsonKey(name: 'note_type')  String? noteType, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'gst_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal gstAmount)?  $default,) {final _that = this;
switch (_that) {
case _GstItem() when $default != null:
return $default(_that.documentNo,_that.entryDate,_that.party,_that.partyType,_that.detail,_that.noteType,_that.amount,_that.gstAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GstItem implements GstItem {
  const _GstItem({@JsonKey(name: 'voucher_no', readValue: _readDocNo) this.documentNo, @JsonKey(name: 'entry_date') this.entryDate, @JsonKey(name: 'party', readValue: _readParty) this.party, @JsonKey(name: 'party_type', readValue: _readPartyType) this.partyType, @JsonKey(name: 'detail', readValue: _readDetail) this.detail, @JsonKey(name: 'note_type') this.noteType, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required this.amount, @JsonKey(name: 'gst_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.gstAmount});
  factory _GstItem.fromJson(Map<String, dynamic> json) => _$GstItemFromJson(json);

@override@JsonKey(name: 'voucher_no', readValue: _readDocNo) final  String? documentNo;
@override@JsonKey(name: 'entry_date') final  DateTime? entryDate;
@override@JsonKey(name: 'party', readValue: _readParty) final  String? party;
@override@JsonKey(name: 'party_type', readValue: _readPartyType) final  String? partyType;
@override@JsonKey(name: 'detail', readValue: _readDetail) final  String? detail;
/// DEBIT / CREDIT on adjustment rows.
@override@JsonKey(name: 'note_type') final  String? noteType;
@override@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal amount;
@override@JsonKey(name: 'gst_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal gstAmount;

/// Create a copy of GstItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GstItemCopyWith<_GstItem> get copyWith => __$GstItemCopyWithImpl<_GstItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GstItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GstItem&&(identical(other.documentNo, documentNo) || other.documentNo == documentNo)&&(identical(other.entryDate, entryDate) || other.entryDate == entryDate)&&(identical(other.party, party) || other.party == party)&&(identical(other.partyType, partyType) || other.partyType == partyType)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.noteType, noteType) || other.noteType == noteType)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.gstAmount, gstAmount) || other.gstAmount == gstAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,documentNo,entryDate,party,partyType,detail,noteType,amount,gstAmount);
}

@override
String toString() {
    return 'GstItem(documentNo: $documentNo, entryDate: $entryDate, party: $party, partyType: $partyType, detail: $detail, noteType: $noteType, amount: $amount, gstAmount: $gstAmount)';
}


}

/// @nodoc
abstract mixin class _$GstItemCopyWith<$Res> implements $GstItemCopyWith<$Res> {
  factory _$GstItemCopyWith(_GstItem value, $Res Function(_GstItem) _then) = __$GstItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'voucher_no', readValue: _readDocNo) String? documentNo,@JsonKey(name: 'entry_date') DateTime? entryDate,@JsonKey(name: 'party', readValue: _readParty) String? party,@JsonKey(name: 'party_type', readValue: _readPartyType) String? partyType,@JsonKey(name: 'detail', readValue: _readDetail) String? detail,@JsonKey(name: 'note_type') String? noteType,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount,@JsonKey(name: 'gst_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal gstAmount
});




}
/// @nodoc
class __$GstItemCopyWithImpl<$Res>
    implements _$GstItemCopyWith<$Res> {
  __$GstItemCopyWithImpl(this._self, this._then);

  final _GstItem _self;
  final $Res Function(_GstItem) _then;

/// Create a copy of GstItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? documentNo = freezed,Object? entryDate = freezed,Object? party = freezed,Object? partyType = freezed,Object? detail = freezed,Object? noteType = freezed,Object? amount = null,Object? gstAmount = null,}) {
  return _then(_GstItem(
documentNo: freezed == documentNo ? _self.documentNo : documentNo // ignore: cast_nullable_to_non_nullable
as String?,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,party: freezed == party ? _self.party : party // ignore: cast_nullable_to_non_nullable
as String?,partyType: freezed == partyType ? _self.partyType : partyType // ignore: cast_nullable_to_non_nullable
as String?,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,noteType: freezed == noteType ? _self.noteType : noteType // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,gstAmount: null == gstAmount ? _self.gstAmount : gstAmount // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}


}


/// @nodoc
mixin _$GstSection {

 String? get description; List<GstItem> get items;@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal get total;
/// Create a copy of GstSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GstSectionCopyWith<GstSection> get copyWith => _$GstSectionCopyWithImpl<GstSection>(this as GstSection, _$identity);

  /// Serializes this GstSection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GstSection;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GstSection&&(identical(other.description, _this.description) || other.description == _this.description)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.total, _this.total) || other.total == _this.total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GstSection;
  return Object.hash(runtimeType,_this.description,const DeepCollectionEquality().hash(_this.items),_this.total);
}

@override
String toString() {
  final _this = this as GstSection;
  return 'GstSection(description: ${_this.description}, items: ${_this.items}, total: ${_this.total})';
}


}

/// @nodoc
abstract mixin class $GstSectionCopyWith<$Res>  {
  factory $GstSectionCopyWith(GstSection value, $Res Function(GstSection) _then) = _$GstSectionCopyWithImpl;
@useResult
$Res call({
 String? description, List<GstItem> items,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal total
});




}
/// @nodoc
class _$GstSectionCopyWithImpl<$Res>
    implements $GstSectionCopyWith<$Res> {
  _$GstSectionCopyWithImpl(this._self, this._then);

  final GstSection _self;
  final $Res Function(GstSection) _then;

/// Create a copy of GstSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = freezed,Object? items = null,Object? total = null,}) {
  return _then(GstSection(
description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<GstItem>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

}


/// Adds pattern-matching-related methods to [GstSection].
extension GstSectionPatterns on GstSection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GstSection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GstSection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GstSection value)  $default,){
final _that = this;
switch (_that) {
case _GstSection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GstSection value)?  $default,){
final _that = this;
switch (_that) {
case _GstSection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? description,  List<GstItem> items, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GstSection() when $default != null:
return $default(_that.description,_that.items,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? description,  List<GstItem> items, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal total)  $default,) {final _that = this;
switch (_that) {
case _GstSection():
return $default(_that.description,_that.items,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? description,  List<GstItem> items, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal total)?  $default,) {final _that = this;
switch (_that) {
case _GstSection() when $default != null:
return $default(_that.description,_that.items,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GstSection implements GstSection {
  const _GstSection({this.description,  List<GstItem> items = const [], @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required this.total}): _items = items;
  factory _GstSection.fromJson(Map<String, dynamic> json) => _$GstSectionFromJson(json);

@override final  String? description;
 final  List<GstItem> _items;
@override@JsonKey() List<GstItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal total;

/// Create a copy of GstSection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GstSectionCopyWith<_GstSection> get copyWith => __$GstSectionCopyWithImpl<_GstSection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GstSectionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GstSection&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,description,const DeepCollectionEquality().hash(_items),total);
}

@override
String toString() {
    return 'GstSection(description: $description, items: $items, total: $total)';
}


}

/// @nodoc
abstract mixin class _$GstSectionCopyWith<$Res> implements $GstSectionCopyWith<$Res> {
  factory _$GstSectionCopyWith(_GstSection value, $Res Function(_GstSection) _then) = __$GstSectionCopyWithImpl;
@override @useResult
$Res call({
 String? description, List<GstItem> items,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal total
});




}
/// @nodoc
class __$GstSectionCopyWithImpl<$Res>
    implements _$GstSectionCopyWith<$Res> {
  __$GstSectionCopyWithImpl(this._self, this._then);

  final _GstSection _self;
  final $Res Function(_GstSection) _then;

/// Create a copy of GstSection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = freezed,Object? items = null,Object? total = null,}) {
  return _then(_GstSection(
description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<GstItem>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}


}


/// @nodoc
mixin _$GstReport {

 ReportPeriod? get period;@JsonKey(name: 'output_gst') GstSection get outputGst;@JsonKey(name: 'input_gst') GstSection get inputGst;@JsonKey(name: 'adjustment_gst') GstSection get adjustmentGst;@JsonKey(name: 'net_gst_liability', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get netGstLiability;
/// Create a copy of GstReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GstReportCopyWith<GstReport> get copyWith => _$GstReportCopyWithImpl<GstReport>(this as GstReport, _$identity);

  /// Serializes this GstReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GstReport;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GstReport&&(identical(other.period, _this.period) || other.period == _this.period)&&(identical(other.outputGst, _this.outputGst) || other.outputGst == _this.outputGst)&&(identical(other.inputGst, _this.inputGst) || other.inputGst == _this.inputGst)&&(identical(other.adjustmentGst, _this.adjustmentGst) || other.adjustmentGst == _this.adjustmentGst)&&(identical(other.netGstLiability, _this.netGstLiability) || other.netGstLiability == _this.netGstLiability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GstReport;
  return Object.hash(runtimeType,_this.period,_this.outputGst,_this.inputGst,_this.adjustmentGst,_this.netGstLiability);
}

@override
String toString() {
  final _this = this as GstReport;
  return 'GstReport(period: ${_this.period}, outputGst: ${_this.outputGst}, inputGst: ${_this.inputGst}, adjustmentGst: ${_this.adjustmentGst}, netGstLiability: ${_this.netGstLiability})';
}


}

/// @nodoc
abstract mixin class $GstReportCopyWith<$Res>  {
  factory $GstReportCopyWith(GstReport value, $Res Function(GstReport) _then) = _$GstReportCopyWithImpl;
@useResult
$Res call({
 ReportPeriod? period,@JsonKey(name: 'output_gst') GstSection outputGst,@JsonKey(name: 'input_gst') GstSection inputGst,@JsonKey(name: 'adjustment_gst') GstSection adjustmentGst,@JsonKey(name: 'net_gst_liability', fromJson: decimalFromJson, toJson: decimalToJson) Decimal netGstLiability
});


$ReportPeriodCopyWith<$Res>? get period;$GstSectionCopyWith<$Res> get outputGst;$GstSectionCopyWith<$Res> get inputGst;$GstSectionCopyWith<$Res> get adjustmentGst;

}
/// @nodoc
class _$GstReportCopyWithImpl<$Res>
    implements $GstReportCopyWith<$Res> {
  _$GstReportCopyWithImpl(this._self, this._then);

  final GstReport _self;
  final $Res Function(GstReport) _then;

/// Create a copy of GstReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = freezed,Object? outputGst = null,Object? inputGst = null,Object? adjustmentGst = null,Object? netGstLiability = null,}) {
  return _then(GstReport(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriod?,outputGst: null == outputGst ? _self.outputGst : outputGst // ignore: cast_nullable_to_non_nullable
as GstSection,inputGst: null == inputGst ? _self.inputGst : inputGst // ignore: cast_nullable_to_non_nullable
as GstSection,adjustmentGst: null == adjustmentGst ? _self.adjustmentGst : adjustmentGst // ignore: cast_nullable_to_non_nullable
as GstSection,netGstLiability: null == netGstLiability ? _self.netGstLiability : netGstLiability // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}
/// Create a copy of GstReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $ReportPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}/// Create a copy of GstReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GstSectionCopyWith<$Res> get outputGst {
  
  return $GstSectionCopyWith<$Res>(_self.outputGst, (value) {
    return _then(_self.copyWith(outputGst: value));
  });
}/// Create a copy of GstReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GstSectionCopyWith<$Res> get inputGst {
  
  return $GstSectionCopyWith<$Res>(_self.inputGst, (value) {
    return _then(_self.copyWith(inputGst: value));
  });
}/// Create a copy of GstReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GstSectionCopyWith<$Res> get adjustmentGst {
  
  return $GstSectionCopyWith<$Res>(_self.adjustmentGst, (value) {
    return _then(_self.copyWith(adjustmentGst: value));
  });
}
}


/// Adds pattern-matching-related methods to [GstReport].
extension GstReportPatterns on GstReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GstReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GstReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GstReport value)  $default,){
final _that = this;
switch (_that) {
case _GstReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GstReport value)?  $default,){
final _that = this;
switch (_that) {
case _GstReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReportPeriod? period, @JsonKey(name: 'output_gst')  GstSection outputGst, @JsonKey(name: 'input_gst')  GstSection inputGst, @JsonKey(name: 'adjustment_gst')  GstSection adjustmentGst, @JsonKey(name: 'net_gst_liability', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netGstLiability)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GstReport() when $default != null:
return $default(_that.period,_that.outputGst,_that.inputGst,_that.adjustmentGst,_that.netGstLiability);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReportPeriod? period, @JsonKey(name: 'output_gst')  GstSection outputGst, @JsonKey(name: 'input_gst')  GstSection inputGst, @JsonKey(name: 'adjustment_gst')  GstSection adjustmentGst, @JsonKey(name: 'net_gst_liability', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netGstLiability)  $default,) {final _that = this;
switch (_that) {
case _GstReport():
return $default(_that.period,_that.outputGst,_that.inputGst,_that.adjustmentGst,_that.netGstLiability);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReportPeriod? period, @JsonKey(name: 'output_gst')  GstSection outputGst, @JsonKey(name: 'input_gst')  GstSection inputGst, @JsonKey(name: 'adjustment_gst')  GstSection adjustmentGst, @JsonKey(name: 'net_gst_liability', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netGstLiability)?  $default,) {final _that = this;
switch (_that) {
case _GstReport() when $default != null:
return $default(_that.period,_that.outputGst,_that.inputGst,_that.adjustmentGst,_that.netGstLiability);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GstReport implements GstReport {
  const _GstReport({this.period, @JsonKey(name: 'output_gst') required this.outputGst, @JsonKey(name: 'input_gst') required this.inputGst, @JsonKey(name: 'adjustment_gst') required this.adjustmentGst, @JsonKey(name: 'net_gst_liability', fromJson: decimalFromJson, toJson: decimalToJson) required this.netGstLiability});
  factory _GstReport.fromJson(Map<String, dynamic> json) => _$GstReportFromJson(json);

@override final  ReportPeriod? period;
@override@JsonKey(name: 'output_gst') final  GstSection outputGst;
@override@JsonKey(name: 'input_gst') final  GstSection inputGst;
@override@JsonKey(name: 'adjustment_gst') final  GstSection adjustmentGst;
@override@JsonKey(name: 'net_gst_liability', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal netGstLiability;

/// Create a copy of GstReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GstReportCopyWith<_GstReport> get copyWith => __$GstReportCopyWithImpl<_GstReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GstReportToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GstReport&&(identical(other.period, period) || other.period == period)&&(identical(other.outputGst, outputGst) || other.outputGst == outputGst)&&(identical(other.inputGst, inputGst) || other.inputGst == inputGst)&&(identical(other.adjustmentGst, adjustmentGst) || other.adjustmentGst == adjustmentGst)&&(identical(other.netGstLiability, netGstLiability) || other.netGstLiability == netGstLiability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,period,outputGst,inputGst,adjustmentGst,netGstLiability);
}

@override
String toString() {
    return 'GstReport(period: $period, outputGst: $outputGst, inputGst: $inputGst, adjustmentGst: $adjustmentGst, netGstLiability: $netGstLiability)';
}


}

/// @nodoc
abstract mixin class _$GstReportCopyWith<$Res> implements $GstReportCopyWith<$Res> {
  factory _$GstReportCopyWith(_GstReport value, $Res Function(_GstReport) _then) = __$GstReportCopyWithImpl;
@override @useResult
$Res call({
 ReportPeriod? period,@JsonKey(name: 'output_gst') GstSection outputGst,@JsonKey(name: 'input_gst') GstSection inputGst,@JsonKey(name: 'adjustment_gst') GstSection adjustmentGst,@JsonKey(name: 'net_gst_liability', fromJson: decimalFromJson, toJson: decimalToJson) Decimal netGstLiability
});


@override $ReportPeriodCopyWith<$Res>? get period;@override $GstSectionCopyWith<$Res> get outputGst;@override $GstSectionCopyWith<$Res> get inputGst;@override $GstSectionCopyWith<$Res> get adjustmentGst;

}
/// @nodoc
class __$GstReportCopyWithImpl<$Res>
    implements _$GstReportCopyWith<$Res> {
  __$GstReportCopyWithImpl(this._self, this._then);

  final _GstReport _self;
  final $Res Function(_GstReport) _then;

/// Create a copy of GstReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = freezed,Object? outputGst = null,Object? inputGst = null,Object? adjustmentGst = null,Object? netGstLiability = null,}) {
  return _then(_GstReport(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriod?,outputGst: null == outputGst ? _self.outputGst : outputGst // ignore: cast_nullable_to_non_nullable
as GstSection,inputGst: null == inputGst ? _self.inputGst : inputGst // ignore: cast_nullable_to_non_nullable
as GstSection,adjustmentGst: null == adjustmentGst ? _self.adjustmentGst : adjustmentGst // ignore: cast_nullable_to_non_nullable
as GstSection,netGstLiability: null == netGstLiability ? _self.netGstLiability : netGstLiability // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

/// Create a copy of GstReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $ReportPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}/// Create a copy of GstReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GstSectionCopyWith<$Res> get outputGst {
  
  return $GstSectionCopyWith<$Res>(_self.outputGst, (value) {
    return _then(_self.copyWith(outputGst: value));
  });
}/// Create a copy of GstReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GstSectionCopyWith<$Res> get inputGst {
  
  return $GstSectionCopyWith<$Res>(_self.inputGst, (value) {
    return _then(_self.copyWith(inputGst: value));
  });
}/// Create a copy of GstReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GstSectionCopyWith<$Res> get adjustmentGst {
  
  return $GstSectionCopyWith<$Res>(_self.adjustmentGst, (value) {
    return _then(_self.copyWith(adjustmentGst: value));
  });
}
}


/// @nodoc
mixin _$TdsItem {

@JsonKey(name: 'voucher_no') String get voucherNo;@JsonKey(name: 'entry_date') DateTime? get entryDate;@JsonKey(name: 'payee_name') String? get payeeName;@JsonKey(name: 'payee_type') String? get payeeType;@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal get amount;@JsonKey(name: 'tds_section') String? get tdsSection;@JsonKey(name: 'tds_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get tdsAmount; String? get purpose;
/// Create a copy of TdsItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TdsItemCopyWith<TdsItem> get copyWith => _$TdsItemCopyWithImpl<TdsItem>(this as TdsItem, _$identity);

  /// Serializes this TdsItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TdsItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TdsItem&&(identical(other.voucherNo, _this.voucherNo) || other.voucherNo == _this.voucherNo)&&(identical(other.entryDate, _this.entryDate) || other.entryDate == _this.entryDate)&&(identical(other.payeeName, _this.payeeName) || other.payeeName == _this.payeeName)&&(identical(other.payeeType, _this.payeeType) || other.payeeType == _this.payeeType)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.tdsSection, _this.tdsSection) || other.tdsSection == _this.tdsSection)&&(identical(other.tdsAmount, _this.tdsAmount) || other.tdsAmount == _this.tdsAmount)&&(identical(other.purpose, _this.purpose) || other.purpose == _this.purpose));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TdsItem;
  return Object.hash(runtimeType,_this.voucherNo,_this.entryDate,_this.payeeName,_this.payeeType,_this.amount,_this.tdsSection,_this.tdsAmount,_this.purpose);
}

@override
String toString() {
  final _this = this as TdsItem;
  return 'TdsItem(voucherNo: ${_this.voucherNo}, entryDate: ${_this.entryDate}, payeeName: ${_this.payeeName}, payeeType: ${_this.payeeType}, amount: ${_this.amount}, tdsSection: ${_this.tdsSection}, tdsAmount: ${_this.tdsAmount}, purpose: ${_this.purpose})';
}


}

/// @nodoc
abstract mixin class $TdsItemCopyWith<$Res>  {
  factory $TdsItemCopyWith(TdsItem value, $Res Function(TdsItem) _then) = _$TdsItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'voucher_no') String voucherNo,@JsonKey(name: 'entry_date') DateTime? entryDate,@JsonKey(name: 'payee_name') String? payeeName,@JsonKey(name: 'payee_type') String? payeeType,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount,@JsonKey(name: 'tds_section') String? tdsSection,@JsonKey(name: 'tds_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal tdsAmount, String? purpose
});




}
/// @nodoc
class _$TdsItemCopyWithImpl<$Res>
    implements $TdsItemCopyWith<$Res> {
  _$TdsItemCopyWithImpl(this._self, this._then);

  final TdsItem _self;
  final $Res Function(TdsItem) _then;

/// Create a copy of TdsItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? voucherNo = null,Object? entryDate = freezed,Object? payeeName = freezed,Object? payeeType = freezed,Object? amount = null,Object? tdsSection = freezed,Object? tdsAmount = null,Object? purpose = freezed,}) {
  return _then(TdsItem(
voucherNo: null == voucherNo ? _self.voucherNo : voucherNo // ignore: cast_nullable_to_non_nullable
as String,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,payeeName: freezed == payeeName ? _self.payeeName : payeeName // ignore: cast_nullable_to_non_nullable
as String?,payeeType: freezed == payeeType ? _self.payeeType : payeeType // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,tdsSection: freezed == tdsSection ? _self.tdsSection : tdsSection // ignore: cast_nullable_to_non_nullable
as String?,tdsAmount: null == tdsAmount ? _self.tdsAmount : tdsAmount // ignore: cast_nullable_to_non_nullable
as Decimal,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TdsItem].
extension TdsItemPatterns on TdsItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TdsItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TdsItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TdsItem value)  $default,){
final _that = this;
switch (_that) {
case _TdsItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TdsItem value)?  $default,){
final _that = this;
switch (_that) {
case _TdsItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'voucher_no')  String voucherNo, @JsonKey(name: 'entry_date')  DateTime? entryDate, @JsonKey(name: 'payee_name')  String? payeeName, @JsonKey(name: 'payee_type')  String? payeeType, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'tds_section')  String? tdsSection, @JsonKey(name: 'tds_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal tdsAmount,  String? purpose)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TdsItem() when $default != null:
return $default(_that.voucherNo,_that.entryDate,_that.payeeName,_that.payeeType,_that.amount,_that.tdsSection,_that.tdsAmount,_that.purpose);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'voucher_no')  String voucherNo, @JsonKey(name: 'entry_date')  DateTime? entryDate, @JsonKey(name: 'payee_name')  String? payeeName, @JsonKey(name: 'payee_type')  String? payeeType, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'tds_section')  String? tdsSection, @JsonKey(name: 'tds_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal tdsAmount,  String? purpose)  $default,) {final _that = this;
switch (_that) {
case _TdsItem():
return $default(_that.voucherNo,_that.entryDate,_that.payeeName,_that.payeeType,_that.amount,_that.tdsSection,_that.tdsAmount,_that.purpose);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'voucher_no')  String voucherNo, @JsonKey(name: 'entry_date')  DateTime? entryDate, @JsonKey(name: 'payee_name')  String? payeeName, @JsonKey(name: 'payee_type')  String? payeeType, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'tds_section')  String? tdsSection, @JsonKey(name: 'tds_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal tdsAmount,  String? purpose)?  $default,) {final _that = this;
switch (_that) {
case _TdsItem() when $default != null:
return $default(_that.voucherNo,_that.entryDate,_that.payeeName,_that.payeeType,_that.amount,_that.tdsSection,_that.tdsAmount,_that.purpose);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TdsItem implements TdsItem {
  const _TdsItem({@JsonKey(name: 'voucher_no') this.voucherNo = '', @JsonKey(name: 'entry_date') this.entryDate, @JsonKey(name: 'payee_name') this.payeeName, @JsonKey(name: 'payee_type') this.payeeType, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required this.amount, @JsonKey(name: 'tds_section') this.tdsSection, @JsonKey(name: 'tds_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.tdsAmount, this.purpose});
  factory _TdsItem.fromJson(Map<String, dynamic> json) => _$TdsItemFromJson(json);

@override@JsonKey(name: 'voucher_no') final  String voucherNo;
@override@JsonKey(name: 'entry_date') final  DateTime? entryDate;
@override@JsonKey(name: 'payee_name') final  String? payeeName;
@override@JsonKey(name: 'payee_type') final  String? payeeType;
@override@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal amount;
@override@JsonKey(name: 'tds_section') final  String? tdsSection;
@override@JsonKey(name: 'tds_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal tdsAmount;
@override final  String? purpose;

/// Create a copy of TdsItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TdsItemCopyWith<_TdsItem> get copyWith => __$TdsItemCopyWithImpl<_TdsItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TdsItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TdsItem&&(identical(other.voucherNo, voucherNo) || other.voucherNo == voucherNo)&&(identical(other.entryDate, entryDate) || other.entryDate == entryDate)&&(identical(other.payeeName, payeeName) || other.payeeName == payeeName)&&(identical(other.payeeType, payeeType) || other.payeeType == payeeType)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.tdsSection, tdsSection) || other.tdsSection == tdsSection)&&(identical(other.tdsAmount, tdsAmount) || other.tdsAmount == tdsAmount)&&(identical(other.purpose, purpose) || other.purpose == purpose));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,voucherNo,entryDate,payeeName,payeeType,amount,tdsSection,tdsAmount,purpose);
}

@override
String toString() {
    return 'TdsItem(voucherNo: $voucherNo, entryDate: $entryDate, payeeName: $payeeName, payeeType: $payeeType, amount: $amount, tdsSection: $tdsSection, tdsAmount: $tdsAmount, purpose: $purpose)';
}


}

/// @nodoc
abstract mixin class _$TdsItemCopyWith<$Res> implements $TdsItemCopyWith<$Res> {
  factory _$TdsItemCopyWith(_TdsItem value, $Res Function(_TdsItem) _then) = __$TdsItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'voucher_no') String voucherNo,@JsonKey(name: 'entry_date') DateTime? entryDate,@JsonKey(name: 'payee_name') String? payeeName,@JsonKey(name: 'payee_type') String? payeeType,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount,@JsonKey(name: 'tds_section') String? tdsSection,@JsonKey(name: 'tds_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal tdsAmount, String? purpose
});




}
/// @nodoc
class __$TdsItemCopyWithImpl<$Res>
    implements _$TdsItemCopyWith<$Res> {
  __$TdsItemCopyWithImpl(this._self, this._then);

  final _TdsItem _self;
  final $Res Function(_TdsItem) _then;

/// Create a copy of TdsItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? voucherNo = null,Object? entryDate = freezed,Object? payeeName = freezed,Object? payeeType = freezed,Object? amount = null,Object? tdsSection = freezed,Object? tdsAmount = null,Object? purpose = freezed,}) {
  return _then(_TdsItem(
voucherNo: null == voucherNo ? _self.voucherNo : voucherNo // ignore: cast_nullable_to_non_nullable
as String,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,payeeName: freezed == payeeName ? _self.payeeName : payeeName // ignore: cast_nullable_to_non_nullable
as String?,payeeType: freezed == payeeType ? _self.payeeType : payeeType // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,tdsSection: freezed == tdsSection ? _self.tdsSection : tdsSection // ignore: cast_nullable_to_non_nullable
as String?,tdsAmount: null == tdsAmount ? _self.tdsAmount : tdsAmount // ignore: cast_nullable_to_non_nullable
as Decimal,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TdsSection {

@JsonKey(name: 'tds_section') String get tdsSection; List<TdsItem> get items;@JsonKey(name: 'total_base_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalBaseAmount;@JsonKey(name: 'total_tds_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalTdsAmount;
/// Create a copy of TdsSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TdsSectionCopyWith<TdsSection> get copyWith => _$TdsSectionCopyWithImpl<TdsSection>(this as TdsSection, _$identity);

  /// Serializes this TdsSection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TdsSection;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TdsSection&&(identical(other.tdsSection, _this.tdsSection) || other.tdsSection == _this.tdsSection)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.totalBaseAmount, _this.totalBaseAmount) || other.totalBaseAmount == _this.totalBaseAmount)&&(identical(other.totalTdsAmount, _this.totalTdsAmount) || other.totalTdsAmount == _this.totalTdsAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TdsSection;
  return Object.hash(runtimeType,_this.tdsSection,const DeepCollectionEquality().hash(_this.items),_this.totalBaseAmount,_this.totalTdsAmount);
}

@override
String toString() {
  final _this = this as TdsSection;
  return 'TdsSection(tdsSection: ${_this.tdsSection}, items: ${_this.items}, totalBaseAmount: ${_this.totalBaseAmount}, totalTdsAmount: ${_this.totalTdsAmount})';
}


}

/// @nodoc
abstract mixin class $TdsSectionCopyWith<$Res>  {
  factory $TdsSectionCopyWith(TdsSection value, $Res Function(TdsSection) _then) = _$TdsSectionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'tds_section') String tdsSection, List<TdsItem> items,@JsonKey(name: 'total_base_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalBaseAmount,@JsonKey(name: 'total_tds_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalTdsAmount
});




}
/// @nodoc
class _$TdsSectionCopyWithImpl<$Res>
    implements $TdsSectionCopyWith<$Res> {
  _$TdsSectionCopyWithImpl(this._self, this._then);

  final TdsSection _self;
  final $Res Function(TdsSection) _then;

/// Create a copy of TdsSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tdsSection = null,Object? items = null,Object? totalBaseAmount = null,Object? totalTdsAmount = null,}) {
  return _then(TdsSection(
tdsSection: null == tdsSection ? _self.tdsSection : tdsSection // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<TdsItem>,totalBaseAmount: null == totalBaseAmount ? _self.totalBaseAmount : totalBaseAmount // ignore: cast_nullable_to_non_nullable
as Decimal,totalTdsAmount: null == totalTdsAmount ? _self.totalTdsAmount : totalTdsAmount // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

}


/// Adds pattern-matching-related methods to [TdsSection].
extension TdsSectionPatterns on TdsSection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TdsSection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TdsSection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TdsSection value)  $default,){
final _that = this;
switch (_that) {
case _TdsSection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TdsSection value)?  $default,){
final _that = this;
switch (_that) {
case _TdsSection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'tds_section')  String tdsSection,  List<TdsItem> items, @JsonKey(name: 'total_base_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalBaseAmount, @JsonKey(name: 'total_tds_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalTdsAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TdsSection() when $default != null:
return $default(_that.tdsSection,_that.items,_that.totalBaseAmount,_that.totalTdsAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'tds_section')  String tdsSection,  List<TdsItem> items, @JsonKey(name: 'total_base_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalBaseAmount, @JsonKey(name: 'total_tds_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalTdsAmount)  $default,) {final _that = this;
switch (_that) {
case _TdsSection():
return $default(_that.tdsSection,_that.items,_that.totalBaseAmount,_that.totalTdsAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'tds_section')  String tdsSection,  List<TdsItem> items, @JsonKey(name: 'total_base_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalBaseAmount, @JsonKey(name: 'total_tds_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalTdsAmount)?  $default,) {final _that = this;
switch (_that) {
case _TdsSection() when $default != null:
return $default(_that.tdsSection,_that.items,_that.totalBaseAmount,_that.totalTdsAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TdsSection implements TdsSection {
  const _TdsSection({@JsonKey(name: 'tds_section') this.tdsSection = 'UNSPECIFIED',  List<TdsItem> items = const [], @JsonKey(name: 'total_base_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalBaseAmount, @JsonKey(name: 'total_tds_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalTdsAmount}): _items = items;
  factory _TdsSection.fromJson(Map<String, dynamic> json) => _$TdsSectionFromJson(json);

@override@JsonKey(name: 'tds_section') final  String tdsSection;
 final  List<TdsItem> _items;
@override@JsonKey() List<TdsItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey(name: 'total_base_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalBaseAmount;
@override@JsonKey(name: 'total_tds_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalTdsAmount;

/// Create a copy of TdsSection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TdsSectionCopyWith<_TdsSection> get copyWith => __$TdsSectionCopyWithImpl<_TdsSection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TdsSectionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TdsSection&&(identical(other.tdsSection, tdsSection) || other.tdsSection == tdsSection)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.totalBaseAmount, totalBaseAmount) || other.totalBaseAmount == totalBaseAmount)&&(identical(other.totalTdsAmount, totalTdsAmount) || other.totalTdsAmount == totalTdsAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,tdsSection,const DeepCollectionEquality().hash(_items),totalBaseAmount,totalTdsAmount);
}

@override
String toString() {
    return 'TdsSection(tdsSection: $tdsSection, items: $items, totalBaseAmount: $totalBaseAmount, totalTdsAmount: $totalTdsAmount)';
}


}

/// @nodoc
abstract mixin class _$TdsSectionCopyWith<$Res> implements $TdsSectionCopyWith<$Res> {
  factory _$TdsSectionCopyWith(_TdsSection value, $Res Function(_TdsSection) _then) = __$TdsSectionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'tds_section') String tdsSection, List<TdsItem> items,@JsonKey(name: 'total_base_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalBaseAmount,@JsonKey(name: 'total_tds_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalTdsAmount
});




}
/// @nodoc
class __$TdsSectionCopyWithImpl<$Res>
    implements _$TdsSectionCopyWith<$Res> {
  __$TdsSectionCopyWithImpl(this._self, this._then);

  final _TdsSection _self;
  final $Res Function(_TdsSection) _then;

/// Create a copy of TdsSection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tdsSection = null,Object? items = null,Object? totalBaseAmount = null,Object? totalTdsAmount = null,}) {
  return _then(_TdsSection(
tdsSection: null == tdsSection ? _self.tdsSection : tdsSection // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<TdsItem>,totalBaseAmount: null == totalBaseAmount ? _self.totalBaseAmount : totalBaseAmount // ignore: cast_nullable_to_non_nullable
as Decimal,totalTdsAmount: null == totalTdsAmount ? _self.totalTdsAmount : totalTdsAmount // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}


}


/// @nodoc
mixin _$TdsReport {

 ReportPeriod? get period; List<TdsSection> get sections;@JsonKey(name: 'total_tds', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalTds;
/// Create a copy of TdsReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TdsReportCopyWith<TdsReport> get copyWith => _$TdsReportCopyWithImpl<TdsReport>(this as TdsReport, _$identity);

  /// Serializes this TdsReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TdsReport;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TdsReport&&(identical(other.period, _this.period) || other.period == _this.period)&&const DeepCollectionEquality().equals(other.sections, _this.sections)&&(identical(other.totalTds, _this.totalTds) || other.totalTds == _this.totalTds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TdsReport;
  return Object.hash(runtimeType,_this.period,const DeepCollectionEquality().hash(_this.sections),_this.totalTds);
}

@override
String toString() {
  final _this = this as TdsReport;
  return 'TdsReport(period: ${_this.period}, sections: ${_this.sections}, totalTds: ${_this.totalTds})';
}


}

/// @nodoc
abstract mixin class $TdsReportCopyWith<$Res>  {
  factory $TdsReportCopyWith(TdsReport value, $Res Function(TdsReport) _then) = _$TdsReportCopyWithImpl;
@useResult
$Res call({
 ReportPeriod? period, List<TdsSection> sections,@JsonKey(name: 'total_tds', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalTds
});


$ReportPeriodCopyWith<$Res>? get period;

}
/// @nodoc
class _$TdsReportCopyWithImpl<$Res>
    implements $TdsReportCopyWith<$Res> {
  _$TdsReportCopyWithImpl(this._self, this._then);

  final TdsReport _self;
  final $Res Function(TdsReport) _then;

/// Create a copy of TdsReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = freezed,Object? sections = null,Object? totalTds = null,}) {
  return _then(TdsReport(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriod?,sections: null == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<TdsSection>,totalTds: null == totalTds ? _self.totalTds : totalTds // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}
/// Create a copy of TdsReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $ReportPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}


/// Adds pattern-matching-related methods to [TdsReport].
extension TdsReportPatterns on TdsReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TdsReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TdsReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TdsReport value)  $default,){
final _that = this;
switch (_that) {
case _TdsReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TdsReport value)?  $default,){
final _that = this;
switch (_that) {
case _TdsReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReportPeriod? period,  List<TdsSection> sections, @JsonKey(name: 'total_tds', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalTds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TdsReport() when $default != null:
return $default(_that.period,_that.sections,_that.totalTds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReportPeriod? period,  List<TdsSection> sections, @JsonKey(name: 'total_tds', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalTds)  $default,) {final _that = this;
switch (_that) {
case _TdsReport():
return $default(_that.period,_that.sections,_that.totalTds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReportPeriod? period,  List<TdsSection> sections, @JsonKey(name: 'total_tds', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalTds)?  $default,) {final _that = this;
switch (_that) {
case _TdsReport() when $default != null:
return $default(_that.period,_that.sections,_that.totalTds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TdsReport implements TdsReport {
  const _TdsReport({this.period,  List<TdsSection> sections = const [], @JsonKey(name: 'total_tds', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalTds}): _sections = sections;
  factory _TdsReport.fromJson(Map<String, dynamic> json) => _$TdsReportFromJson(json);

@override final  ReportPeriod? period;
 final  List<TdsSection> _sections;
@override@JsonKey() List<TdsSection> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}

@override@JsonKey(name: 'total_tds', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalTds;

/// Create a copy of TdsReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TdsReportCopyWith<_TdsReport> get copyWith => __$TdsReportCopyWithImpl<_TdsReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TdsReportToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TdsReport&&(identical(other.period, period) || other.period == period)&&const DeepCollectionEquality().equals(other.sections, _sections)&&(identical(other.totalTds, totalTds) || other.totalTds == totalTds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,period,const DeepCollectionEquality().hash(_sections),totalTds);
}

@override
String toString() {
    return 'TdsReport(period: $period, sections: $sections, totalTds: $totalTds)';
}


}

/// @nodoc
abstract mixin class _$TdsReportCopyWith<$Res> implements $TdsReportCopyWith<$Res> {
  factory _$TdsReportCopyWith(_TdsReport value, $Res Function(_TdsReport) _then) = __$TdsReportCopyWithImpl;
@override @useResult
$Res call({
 ReportPeriod? period, List<TdsSection> sections,@JsonKey(name: 'total_tds', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalTds
});


@override $ReportPeriodCopyWith<$Res>? get period;

}
/// @nodoc
class __$TdsReportCopyWithImpl<$Res>
    implements _$TdsReportCopyWith<$Res> {
  __$TdsReportCopyWithImpl(this._self, this._then);

  final _TdsReport _self;
  final $Res Function(_TdsReport) _then;

/// Create a copy of TdsReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = freezed,Object? sections = null,Object? totalTds = null,}) {
  return _then(_TdsReport(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as ReportPeriod?,sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<TdsSection>,totalTds: null == totalTds ? _self.totalTds : totalTds // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

/// Create a copy of TdsReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportPeriodCopyWith<$Res>? get period {
    if (_self.period == null) {
    return null;
  }

  return $ReportPeriodCopyWith<$Res>(_self.period!, (value) {
    return _then(_self.copyWith(period: value));
  });
}
}

// dart format on
