// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accountant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountantDashboard {

@JsonKey(name: 'todays_collection', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get todaysCollection;@JsonKey(name: 'this_month_collection', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get thisMonthCollection;@JsonKey(name: 'pending_fees_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get pendingFeesAmount;@JsonKey(name: 'students_with_pending_fees') int get studentsWithPendingFees;@JsonKey(name: 'pending_library_fines', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get pendingLibraryFines;@JsonKey(name: 'pending_online_payments') int get pendingOnlinePayments;@JsonKey(name: 'failed_online_payments') int get failedOnlinePayments;
/// Create a copy of AccountantDashboard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountantDashboardCopyWith<AccountantDashboard> get copyWith => _$AccountantDashboardCopyWithImpl<AccountantDashboard>(this as AccountantDashboard, _$identity);

  /// Serializes this AccountantDashboard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AccountantDashboard;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountantDashboard&&(identical(other.todaysCollection, _this.todaysCollection) || other.todaysCollection == _this.todaysCollection)&&(identical(other.thisMonthCollection, _this.thisMonthCollection) || other.thisMonthCollection == _this.thisMonthCollection)&&(identical(other.pendingFeesAmount, _this.pendingFeesAmount) || other.pendingFeesAmount == _this.pendingFeesAmount)&&(identical(other.studentsWithPendingFees, _this.studentsWithPendingFees) || other.studentsWithPendingFees == _this.studentsWithPendingFees)&&(identical(other.pendingLibraryFines, _this.pendingLibraryFines) || other.pendingLibraryFines == _this.pendingLibraryFines)&&(identical(other.pendingOnlinePayments, _this.pendingOnlinePayments) || other.pendingOnlinePayments == _this.pendingOnlinePayments)&&(identical(other.failedOnlinePayments, _this.failedOnlinePayments) || other.failedOnlinePayments == _this.failedOnlinePayments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AccountantDashboard;
  return Object.hash(runtimeType,_this.todaysCollection,_this.thisMonthCollection,_this.pendingFeesAmount,_this.studentsWithPendingFees,_this.pendingLibraryFines,_this.pendingOnlinePayments,_this.failedOnlinePayments);
}

@override
String toString() {
  final _this = this as AccountantDashboard;
  return 'AccountantDashboard(todaysCollection: ${_this.todaysCollection}, thisMonthCollection: ${_this.thisMonthCollection}, pendingFeesAmount: ${_this.pendingFeesAmount}, studentsWithPendingFees: ${_this.studentsWithPendingFees}, pendingLibraryFines: ${_this.pendingLibraryFines}, pendingOnlinePayments: ${_this.pendingOnlinePayments}, failedOnlinePayments: ${_this.failedOnlinePayments})';
}


}

/// @nodoc
abstract mixin class $AccountantDashboardCopyWith<$Res>  {
  factory $AccountantDashboardCopyWith(AccountantDashboard value, $Res Function(AccountantDashboard) _then) = _$AccountantDashboardCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'todays_collection', fromJson: decimalFromJson, toJson: decimalToJson) Decimal todaysCollection,@JsonKey(name: 'this_month_collection', fromJson: decimalFromJson, toJson: decimalToJson) Decimal thisMonthCollection,@JsonKey(name: 'pending_fees_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal pendingFeesAmount,@JsonKey(name: 'students_with_pending_fees') int studentsWithPendingFees,@JsonKey(name: 'pending_library_fines', fromJson: decimalFromJson, toJson: decimalToJson) Decimal pendingLibraryFines,@JsonKey(name: 'pending_online_payments') int pendingOnlinePayments,@JsonKey(name: 'failed_online_payments') int failedOnlinePayments
});




}
/// @nodoc
class _$AccountantDashboardCopyWithImpl<$Res>
    implements $AccountantDashboardCopyWith<$Res> {
  _$AccountantDashboardCopyWithImpl(this._self, this._then);

  final AccountantDashboard _self;
  final $Res Function(AccountantDashboard) _then;

/// Create a copy of AccountantDashboard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? todaysCollection = null,Object? thisMonthCollection = null,Object? pendingFeesAmount = null,Object? studentsWithPendingFees = null,Object? pendingLibraryFines = null,Object? pendingOnlinePayments = null,Object? failedOnlinePayments = null,}) {
  return _then(AccountantDashboard(
todaysCollection: null == todaysCollection ? _self.todaysCollection : todaysCollection // ignore: cast_nullable_to_non_nullable
as Decimal,thisMonthCollection: null == thisMonthCollection ? _self.thisMonthCollection : thisMonthCollection // ignore: cast_nullable_to_non_nullable
as Decimal,pendingFeesAmount: null == pendingFeesAmount ? _self.pendingFeesAmount : pendingFeesAmount // ignore: cast_nullable_to_non_nullable
as Decimal,studentsWithPendingFees: null == studentsWithPendingFees ? _self.studentsWithPendingFees : studentsWithPendingFees // ignore: cast_nullable_to_non_nullable
as int,pendingLibraryFines: null == pendingLibraryFines ? _self.pendingLibraryFines : pendingLibraryFines // ignore: cast_nullable_to_non_nullable
as Decimal,pendingOnlinePayments: null == pendingOnlinePayments ? _self.pendingOnlinePayments : pendingOnlinePayments // ignore: cast_nullable_to_non_nullable
as int,failedOnlinePayments: null == failedOnlinePayments ? _self.failedOnlinePayments : failedOnlinePayments // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountantDashboard].
extension AccountantDashboardPatterns on AccountantDashboard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountantDashboard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountantDashboard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountantDashboard value)  $default,){
final _that = this;
switch (_that) {
case _AccountantDashboard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountantDashboard value)?  $default,){
final _that = this;
switch (_that) {
case _AccountantDashboard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'todays_collection', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal todaysCollection, @JsonKey(name: 'this_month_collection', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal thisMonthCollection, @JsonKey(name: 'pending_fees_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal pendingFeesAmount, @JsonKey(name: 'students_with_pending_fees')  int studentsWithPendingFees, @JsonKey(name: 'pending_library_fines', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal pendingLibraryFines, @JsonKey(name: 'pending_online_payments')  int pendingOnlinePayments, @JsonKey(name: 'failed_online_payments')  int failedOnlinePayments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountantDashboard() when $default != null:
return $default(_that.todaysCollection,_that.thisMonthCollection,_that.pendingFeesAmount,_that.studentsWithPendingFees,_that.pendingLibraryFines,_that.pendingOnlinePayments,_that.failedOnlinePayments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'todays_collection', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal todaysCollection, @JsonKey(name: 'this_month_collection', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal thisMonthCollection, @JsonKey(name: 'pending_fees_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal pendingFeesAmount, @JsonKey(name: 'students_with_pending_fees')  int studentsWithPendingFees, @JsonKey(name: 'pending_library_fines', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal pendingLibraryFines, @JsonKey(name: 'pending_online_payments')  int pendingOnlinePayments, @JsonKey(name: 'failed_online_payments')  int failedOnlinePayments)  $default,) {final _that = this;
switch (_that) {
case _AccountantDashboard():
return $default(_that.todaysCollection,_that.thisMonthCollection,_that.pendingFeesAmount,_that.studentsWithPendingFees,_that.pendingLibraryFines,_that.pendingOnlinePayments,_that.failedOnlinePayments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'todays_collection', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal todaysCollection, @JsonKey(name: 'this_month_collection', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal thisMonthCollection, @JsonKey(name: 'pending_fees_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal pendingFeesAmount, @JsonKey(name: 'students_with_pending_fees')  int studentsWithPendingFees, @JsonKey(name: 'pending_library_fines', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal pendingLibraryFines, @JsonKey(name: 'pending_online_payments')  int pendingOnlinePayments, @JsonKey(name: 'failed_online_payments')  int failedOnlinePayments)?  $default,) {final _that = this;
switch (_that) {
case _AccountantDashboard() when $default != null:
return $default(_that.todaysCollection,_that.thisMonthCollection,_that.pendingFeesAmount,_that.studentsWithPendingFees,_that.pendingLibraryFines,_that.pendingOnlinePayments,_that.failedOnlinePayments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountantDashboard implements AccountantDashboard {
  const _AccountantDashboard({@JsonKey(name: 'todays_collection', fromJson: decimalFromJson, toJson: decimalToJson) required this.todaysCollection, @JsonKey(name: 'this_month_collection', fromJson: decimalFromJson, toJson: decimalToJson) required this.thisMonthCollection, @JsonKey(name: 'pending_fees_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.pendingFeesAmount, @JsonKey(name: 'students_with_pending_fees') this.studentsWithPendingFees = 0, @JsonKey(name: 'pending_library_fines', fromJson: decimalFromJson, toJson: decimalToJson) required this.pendingLibraryFines, @JsonKey(name: 'pending_online_payments') this.pendingOnlinePayments = 0, @JsonKey(name: 'failed_online_payments') this.failedOnlinePayments = 0});
  factory _AccountantDashboard.fromJson(Map<String, dynamic> json) => _$AccountantDashboardFromJson(json);

@override@JsonKey(name: 'todays_collection', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal todaysCollection;
@override@JsonKey(name: 'this_month_collection', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal thisMonthCollection;
@override@JsonKey(name: 'pending_fees_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal pendingFeesAmount;
@override@JsonKey(name: 'students_with_pending_fees') final  int studentsWithPendingFees;
@override@JsonKey(name: 'pending_library_fines', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal pendingLibraryFines;
@override@JsonKey(name: 'pending_online_payments') final  int pendingOnlinePayments;
@override@JsonKey(name: 'failed_online_payments') final  int failedOnlinePayments;

/// Create a copy of AccountantDashboard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountantDashboardCopyWith<_AccountantDashboard> get copyWith => __$AccountantDashboardCopyWithImpl<_AccountantDashboard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountantDashboardToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountantDashboard&&(identical(other.todaysCollection, todaysCollection) || other.todaysCollection == todaysCollection)&&(identical(other.thisMonthCollection, thisMonthCollection) || other.thisMonthCollection == thisMonthCollection)&&(identical(other.pendingFeesAmount, pendingFeesAmount) || other.pendingFeesAmount == pendingFeesAmount)&&(identical(other.studentsWithPendingFees, studentsWithPendingFees) || other.studentsWithPendingFees == studentsWithPendingFees)&&(identical(other.pendingLibraryFines, pendingLibraryFines) || other.pendingLibraryFines == pendingLibraryFines)&&(identical(other.pendingOnlinePayments, pendingOnlinePayments) || other.pendingOnlinePayments == pendingOnlinePayments)&&(identical(other.failedOnlinePayments, failedOnlinePayments) || other.failedOnlinePayments == failedOnlinePayments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,todaysCollection,thisMonthCollection,pendingFeesAmount,studentsWithPendingFees,pendingLibraryFines,pendingOnlinePayments,failedOnlinePayments);
}

@override
String toString() {
    return 'AccountantDashboard(todaysCollection: $todaysCollection, thisMonthCollection: $thisMonthCollection, pendingFeesAmount: $pendingFeesAmount, studentsWithPendingFees: $studentsWithPendingFees, pendingLibraryFines: $pendingLibraryFines, pendingOnlinePayments: $pendingOnlinePayments, failedOnlinePayments: $failedOnlinePayments)';
}


}

/// @nodoc
abstract mixin class _$AccountantDashboardCopyWith<$Res> implements $AccountantDashboardCopyWith<$Res> {
  factory _$AccountantDashboardCopyWith(_AccountantDashboard value, $Res Function(_AccountantDashboard) _then) = __$AccountantDashboardCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'todays_collection', fromJson: decimalFromJson, toJson: decimalToJson) Decimal todaysCollection,@JsonKey(name: 'this_month_collection', fromJson: decimalFromJson, toJson: decimalToJson) Decimal thisMonthCollection,@JsonKey(name: 'pending_fees_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal pendingFeesAmount,@JsonKey(name: 'students_with_pending_fees') int studentsWithPendingFees,@JsonKey(name: 'pending_library_fines', fromJson: decimalFromJson, toJson: decimalToJson) Decimal pendingLibraryFines,@JsonKey(name: 'pending_online_payments') int pendingOnlinePayments,@JsonKey(name: 'failed_online_payments') int failedOnlinePayments
});




}
/// @nodoc
class __$AccountantDashboardCopyWithImpl<$Res>
    implements _$AccountantDashboardCopyWith<$Res> {
  __$AccountantDashboardCopyWithImpl(this._self, this._then);

  final _AccountantDashboard _self;
  final $Res Function(_AccountantDashboard) _then;

/// Create a copy of AccountantDashboard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? todaysCollection = null,Object? thisMonthCollection = null,Object? pendingFeesAmount = null,Object? studentsWithPendingFees = null,Object? pendingLibraryFines = null,Object? pendingOnlinePayments = null,Object? failedOnlinePayments = null,}) {
  return _then(_AccountantDashboard(
todaysCollection: null == todaysCollection ? _self.todaysCollection : todaysCollection // ignore: cast_nullable_to_non_nullable
as Decimal,thisMonthCollection: null == thisMonthCollection ? _self.thisMonthCollection : thisMonthCollection // ignore: cast_nullable_to_non_nullable
as Decimal,pendingFeesAmount: null == pendingFeesAmount ? _self.pendingFeesAmount : pendingFeesAmount // ignore: cast_nullable_to_non_nullable
as Decimal,studentsWithPendingFees: null == studentsWithPendingFees ? _self.studentsWithPendingFees : studentsWithPendingFees // ignore: cast_nullable_to_non_nullable
as int,pendingLibraryFines: null == pendingLibraryFines ? _self.pendingLibraryFines : pendingLibraryFines // ignore: cast_nullable_to_non_nullable
as Decimal,pendingOnlinePayments: null == pendingOnlinePayments ? _self.pendingOnlinePayments : pendingOnlinePayments // ignore: cast_nullable_to_non_nullable
as int,failedOnlinePayments: null == failedOnlinePayments ? _self.failedOnlinePayments : failedOnlinePayments // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$AcctApplicantRef {

@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName;
/// Create a copy of AcctApplicantRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcctApplicantRefCopyWith<AcctApplicantRef> get copyWith => _$AcctApplicantRefCopyWithImpl<AcctApplicantRef>(this as AcctApplicantRef, _$identity);

  /// Serializes this AcctApplicantRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AcctApplicantRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcctApplicantRef&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AcctApplicantRef;
  return Object.hash(runtimeType,_this.firstName,_this.lastName);
}

@override
String toString() {
  final _this = this as AcctApplicantRef;
  return 'AcctApplicantRef(firstName: ${_this.firstName}, lastName: ${_this.lastName})';
}


}

/// @nodoc
abstract mixin class $AcctApplicantRefCopyWith<$Res>  {
  factory $AcctApplicantRefCopyWith(AcctApplicantRef value, $Res Function(AcctApplicantRef) _then) = _$AcctApplicantRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName
});




}
/// @nodoc
class _$AcctApplicantRefCopyWithImpl<$Res>
    implements $AcctApplicantRefCopyWith<$Res> {
  _$AcctApplicantRefCopyWithImpl(this._self, this._then);

  final AcctApplicantRef _self;
  final $Res Function(AcctApplicantRef) _then;

/// Create a copy of AcctApplicantRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? lastName = freezed,}) {
  return _then(AcctApplicantRef(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AcctApplicantRef].
extension AcctApplicantRefPatterns on AcctApplicantRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcctApplicantRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcctApplicantRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcctApplicantRef value)  $default,){
final _that = this;
switch (_that) {
case _AcctApplicantRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcctApplicantRef value)?  $default,){
final _that = this;
switch (_that) {
case _AcctApplicantRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcctApplicantRef() when $default != null:
return $default(_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName)  $default,) {final _that = this;
switch (_that) {
case _AcctApplicantRef():
return $default(_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName)?  $default,) {final _that = this;
switch (_that) {
case _AcctApplicantRef() when $default != null:
return $default(_that.firstName,_that.lastName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcctApplicantRef implements AcctApplicantRef {
  const _AcctApplicantRef({@JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName});
  factory _AcctApplicantRef.fromJson(Map<String, dynamic> json) => _$AcctApplicantRefFromJson(json);

@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;

/// Create a copy of AcctApplicantRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcctApplicantRefCopyWith<_AcctApplicantRef> get copyWith => __$AcctApplicantRefCopyWithImpl<_AcctApplicantRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcctApplicantRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcctApplicantRef&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,firstName,lastName);
}

@override
String toString() {
    return 'AcctApplicantRef(firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class _$AcctApplicantRefCopyWith<$Res> implements $AcctApplicantRefCopyWith<$Res> {
  factory _$AcctApplicantRefCopyWith(_AcctApplicantRef value, $Res Function(_AcctApplicantRef) _then) = __$AcctApplicantRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName
});




}
/// @nodoc
class __$AcctApplicantRefCopyWithImpl<$Res>
    implements _$AcctApplicantRefCopyWith<$Res> {
  __$AcctApplicantRefCopyWithImpl(this._self, this._then);

  final _AcctApplicantRef _self;
  final $Res Function(_AcctApplicantRef) _then;

/// Create a copy of AcctApplicantRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? lastName = freezed,}) {
  return _then(_AcctApplicantRef(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AcctStudent {

@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'admission_no') String? get admissionNo;@JsonKey(name: 'roll_no') String? get rollNo;@JsonKey(name: 'student_status') String? get studentStatus;@JsonKey(name: 'current_class', readValue: _readClassName) String? get className;@JsonKey(name: 'current_section', readValue: _readSectionName) String? get sectionName; AcctApplicantRef? get applicants;
/// Create a copy of AcctStudent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcctStudentCopyWith<AcctStudent> get copyWith => _$AcctStudentCopyWithImpl<AcctStudent>(this as AcctStudent, _$identity);

  /// Serializes this AcctStudent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AcctStudent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcctStudent&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.rollNo, _this.rollNo) || other.rollNo == _this.rollNo)&&(identical(other.studentStatus, _this.studentStatus) || other.studentStatus == _this.studentStatus)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.sectionName, _this.sectionName) || other.sectionName == _this.sectionName)&&(identical(other.applicants, _this.applicants) || other.applicants == _this.applicants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AcctStudent;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.rollNo,_this.studentStatus,_this.className,_this.sectionName,_this.applicants);
}

@override
String toString() {
  final _this = this as AcctStudent;
  return 'AcctStudent(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, rollNo: ${_this.rollNo}, studentStatus: ${_this.studentStatus}, className: ${_this.className}, sectionName: ${_this.sectionName}, applicants: ${_this.applicants})';
}


}

/// @nodoc
abstract mixin class $AcctStudentCopyWith<$Res>  {
  factory $AcctStudentCopyWith(AcctStudent value, $Res Function(AcctStudent) _then) = _$AcctStudentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'roll_no') String? rollNo,@JsonKey(name: 'student_status') String? studentStatus,@JsonKey(name: 'current_class', readValue: _readClassName) String? className,@JsonKey(name: 'current_section', readValue: _readSectionName) String? sectionName, AcctApplicantRef? applicants
});


$AcctApplicantRefCopyWith<$Res>? get applicants;

}
/// @nodoc
class _$AcctStudentCopyWithImpl<$Res>
    implements $AcctStudentCopyWith<$Res> {
  _$AcctStudentCopyWithImpl(this._self, this._then);

  final AcctStudent _self;
  final $Res Function(AcctStudent) _then;

/// Create a copy of AcctStudent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? rollNo = freezed,Object? studentStatus = freezed,Object? className = freezed,Object? sectionName = freezed,Object? applicants = freezed,}) {
  return _then(AcctStudent(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,studentStatus: freezed == studentStatus ? _self.studentStatus : studentStatus // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,applicants: freezed == applicants ? _self.applicants : applicants // ignore: cast_nullable_to_non_nullable
as AcctApplicantRef?,
  ));
}
/// Create a copy of AcctStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcctApplicantRefCopyWith<$Res>? get applicants {
    if (_self.applicants == null) {
    return null;
  }

  return $AcctApplicantRefCopyWith<$Res>(_self.applicants!, (value) {
    return _then(_self.copyWith(applicants: value));
  });
}
}


/// Adds pattern-matching-related methods to [AcctStudent].
extension AcctStudentPatterns on AcctStudent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcctStudent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcctStudent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcctStudent value)  $default,){
final _that = this;
switch (_that) {
case _AcctStudent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcctStudent value)?  $default,){
final _that = this;
switch (_that) {
case _AcctStudent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')  String? rollNo, @JsonKey(name: 'student_status')  String? studentStatus, @JsonKey(name: 'current_class', readValue: _readClassName)  String? className, @JsonKey(name: 'current_section', readValue: _readSectionName)  String? sectionName,  AcctApplicantRef? applicants)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcctStudent() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.studentStatus,_that.className,_that.sectionName,_that.applicants);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')  String? rollNo, @JsonKey(name: 'student_status')  String? studentStatus, @JsonKey(name: 'current_class', readValue: _readClassName)  String? className, @JsonKey(name: 'current_section', readValue: _readSectionName)  String? sectionName,  AcctApplicantRef? applicants)  $default,) {final _that = this;
switch (_that) {
case _AcctStudent():
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.studentStatus,_that.className,_that.sectionName,_that.applicants);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'roll_no')  String? rollNo, @JsonKey(name: 'student_status')  String? studentStatus, @JsonKey(name: 'current_class', readValue: _readClassName)  String? className, @JsonKey(name: 'current_section', readValue: _readSectionName)  String? sectionName,  AcctApplicantRef? applicants)?  $default,) {final _that = this;
switch (_that) {
case _AcctStudent() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.rollNo,_that.studentStatus,_that.className,_that.sectionName,_that.applicants);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcctStudent implements AcctStudent {
  const _AcctStudent({@JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'admission_no') this.admissionNo, @JsonKey(name: 'roll_no') this.rollNo, @JsonKey(name: 'student_status') this.studentStatus, @JsonKey(name: 'current_class', readValue: _readClassName) this.className, @JsonKey(name: 'current_section', readValue: _readSectionName) this.sectionName, this.applicants});
  factory _AcctStudent.fromJson(Map<String, dynamic> json) => _$AcctStudentFromJson(json);

@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override@JsonKey(name: 'roll_no') final  String? rollNo;
@override@JsonKey(name: 'student_status') final  String? studentStatus;
@override@JsonKey(name: 'current_class', readValue: _readClassName) final  String? className;
@override@JsonKey(name: 'current_section', readValue: _readSectionName) final  String? sectionName;
@override final  AcctApplicantRef? applicants;

/// Create a copy of AcctStudent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcctStudentCopyWith<_AcctStudent> get copyWith => __$AcctStudentCopyWithImpl<_AcctStudent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcctStudentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcctStudent&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.rollNo, rollNo) || other.rollNo == rollNo)&&(identical(other.studentStatus, studentStatus) || other.studentStatus == studentStatus)&&(identical(other.className, className) || other.className == className)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName)&&(identical(other.applicants, applicants) || other.applicants == applicants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,rollNo,studentStatus,className,sectionName,applicants);
}

@override
String toString() {
    return 'AcctStudent(studentId: $studentId, admissionNo: $admissionNo, rollNo: $rollNo, studentStatus: $studentStatus, className: $className, sectionName: $sectionName, applicants: $applicants)';
}


}

/// @nodoc
abstract mixin class _$AcctStudentCopyWith<$Res> implements $AcctStudentCopyWith<$Res> {
  factory _$AcctStudentCopyWith(_AcctStudent value, $Res Function(_AcctStudent) _then) = __$AcctStudentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'roll_no') String? rollNo,@JsonKey(name: 'student_status') String? studentStatus,@JsonKey(name: 'current_class', readValue: _readClassName) String? className,@JsonKey(name: 'current_section', readValue: _readSectionName) String? sectionName, AcctApplicantRef? applicants
});


@override $AcctApplicantRefCopyWith<$Res>? get applicants;

}
/// @nodoc
class __$AcctStudentCopyWithImpl<$Res>
    implements _$AcctStudentCopyWith<$Res> {
  __$AcctStudentCopyWithImpl(this._self, this._then);

  final _AcctStudent _self;
  final $Res Function(_AcctStudent) _then;

/// Create a copy of AcctStudent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? rollNo = freezed,Object? studentStatus = freezed,Object? className = freezed,Object? sectionName = freezed,Object? applicants = freezed,}) {
  return _then(_AcctStudent(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,rollNo: freezed == rollNo ? _self.rollNo : rollNo // ignore: cast_nullable_to_non_nullable
as String?,studentStatus: freezed == studentStatus ? _self.studentStatus : studentStatus // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,applicants: freezed == applicants ? _self.applicants : applicants // ignore: cast_nullable_to_non_nullable
as AcctApplicantRef?,
  ));
}

/// Create a copy of AcctStudent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcctApplicantRefCopyWith<$Res>? get applicants {
    if (_self.applicants == null) {
    return null;
  }

  return $AcctApplicantRefCopyWith<$Res>(_self.applicants!, (value) {
    return _then(_self.copyWith(applicants: value));
  });
}
}


/// @nodoc
mixin _$AcctPendingItem {

@JsonKey(name: 'fee_structure_id') String? get feeStructureId;@JsonKey(name: 'fee_head_id') String? get feeHeadId;@JsonKey(name: 'fee_head_name') String get feeHeadName;@JsonKey(name: 'due_date') DateTime? get dueDate;@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get amount;@JsonKey(name: 'concession_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get concessionAmount;@JsonKey(name: 'paid_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get paidAmount;@JsonKey(name: 'net_due', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get netDue;/// PAID / PARTIALLY_PAID / OVERDUE / DUE.
 String get status;@JsonKey(name: 'suggested_fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get suggestedFineAmount;
/// Create a copy of AcctPendingItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcctPendingItemCopyWith<AcctPendingItem> get copyWith => _$AcctPendingItemCopyWithImpl<AcctPendingItem>(this as AcctPendingItem, _$identity);

  /// Serializes this AcctPendingItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AcctPendingItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcctPendingItem&&(identical(other.feeStructureId, _this.feeStructureId) || other.feeStructureId == _this.feeStructureId)&&(identical(other.feeHeadId, _this.feeHeadId) || other.feeHeadId == _this.feeHeadId)&&(identical(other.feeHeadName, _this.feeHeadName) || other.feeHeadName == _this.feeHeadName)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.concessionAmount, _this.concessionAmount) || other.concessionAmount == _this.concessionAmount)&&(identical(other.paidAmount, _this.paidAmount) || other.paidAmount == _this.paidAmount)&&(identical(other.netDue, _this.netDue) || other.netDue == _this.netDue)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.suggestedFineAmount, _this.suggestedFineAmount) || other.suggestedFineAmount == _this.suggestedFineAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AcctPendingItem;
  return Object.hash(runtimeType,_this.feeStructureId,_this.feeHeadId,_this.feeHeadName,_this.dueDate,_this.amount,_this.concessionAmount,_this.paidAmount,_this.netDue,_this.status,_this.suggestedFineAmount);
}

@override
String toString() {
  final _this = this as AcctPendingItem;
  return 'AcctPendingItem(feeStructureId: ${_this.feeStructureId}, feeHeadId: ${_this.feeHeadId}, feeHeadName: ${_this.feeHeadName}, dueDate: ${_this.dueDate}, amount: ${_this.amount}, concessionAmount: ${_this.concessionAmount}, paidAmount: ${_this.paidAmount}, netDue: ${_this.netDue}, status: ${_this.status}, suggestedFineAmount: ${_this.suggestedFineAmount})';
}


}

/// @nodoc
abstract mixin class $AcctPendingItemCopyWith<$Res>  {
  factory $AcctPendingItemCopyWith(AcctPendingItem value, $Res Function(AcctPendingItem) _then) = _$AcctPendingItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fee_structure_id') String? feeStructureId,@JsonKey(name: 'fee_head_id') String? feeHeadId,@JsonKey(name: 'fee_head_name') String feeHeadName,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount,@JsonKey(name: 'concession_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal concessionAmount,@JsonKey(name: 'paid_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal paidAmount,@JsonKey(name: 'net_due', fromJson: decimalFromJson, toJson: decimalToJson) Decimal netDue, String status,@JsonKey(name: 'suggested_fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal suggestedFineAmount
});




}
/// @nodoc
class _$AcctPendingItemCopyWithImpl<$Res>
    implements $AcctPendingItemCopyWith<$Res> {
  _$AcctPendingItemCopyWithImpl(this._self, this._then);

  final AcctPendingItem _self;
  final $Res Function(AcctPendingItem) _then;

/// Create a copy of AcctPendingItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feeStructureId = freezed,Object? feeHeadId = freezed,Object? feeHeadName = null,Object? dueDate = freezed,Object? amount = null,Object? concessionAmount = null,Object? paidAmount = null,Object? netDue = null,Object? status = null,Object? suggestedFineAmount = null,}) {
  return _then(AcctPendingItem(
feeStructureId: freezed == feeStructureId ? _self.feeStructureId : feeStructureId // ignore: cast_nullable_to_non_nullable
as String?,feeHeadId: freezed == feeHeadId ? _self.feeHeadId : feeHeadId // ignore: cast_nullable_to_non_nullable
as String?,feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,concessionAmount: null == concessionAmount ? _self.concessionAmount : concessionAmount // ignore: cast_nullable_to_non_nullable
as Decimal,paidAmount: null == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as Decimal,netDue: null == netDue ? _self.netDue : netDue // ignore: cast_nullable_to_non_nullable
as Decimal,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,suggestedFineAmount: null == suggestedFineAmount ? _self.suggestedFineAmount : suggestedFineAmount // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

}


/// Adds pattern-matching-related methods to [AcctPendingItem].
extension AcctPendingItemPatterns on AcctPendingItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcctPendingItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcctPendingItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcctPendingItem value)  $default,){
final _that = this;
switch (_that) {
case _AcctPendingItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcctPendingItem value)?  $default,){
final _that = this;
switch (_that) {
case _AcctPendingItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_structure_id')  String? feeStructureId, @JsonKey(name: 'fee_head_id')  String? feeHeadId, @JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'concession_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal concessionAmount, @JsonKey(name: 'paid_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal paidAmount, @JsonKey(name: 'net_due', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netDue,  String status, @JsonKey(name: 'suggested_fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal suggestedFineAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcctPendingItem() when $default != null:
return $default(_that.feeStructureId,_that.feeHeadId,_that.feeHeadName,_that.dueDate,_that.amount,_that.concessionAmount,_that.paidAmount,_that.netDue,_that.status,_that.suggestedFineAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_structure_id')  String? feeStructureId, @JsonKey(name: 'fee_head_id')  String? feeHeadId, @JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'concession_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal concessionAmount, @JsonKey(name: 'paid_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal paidAmount, @JsonKey(name: 'net_due', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netDue,  String status, @JsonKey(name: 'suggested_fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal suggestedFineAmount)  $default,) {final _that = this;
switch (_that) {
case _AcctPendingItem():
return $default(_that.feeStructureId,_that.feeHeadId,_that.feeHeadName,_that.dueDate,_that.amount,_that.concessionAmount,_that.paidAmount,_that.netDue,_that.status,_that.suggestedFineAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fee_structure_id')  String? feeStructureId, @JsonKey(name: 'fee_head_id')  String? feeHeadId, @JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'concession_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal concessionAmount, @JsonKey(name: 'paid_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal paidAmount, @JsonKey(name: 'net_due', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netDue,  String status, @JsonKey(name: 'suggested_fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal suggestedFineAmount)?  $default,) {final _that = this;
switch (_that) {
case _AcctPendingItem() when $default != null:
return $default(_that.feeStructureId,_that.feeHeadId,_that.feeHeadName,_that.dueDate,_that.amount,_that.concessionAmount,_that.paidAmount,_that.netDue,_that.status,_that.suggestedFineAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcctPendingItem implements AcctPendingItem {
  const _AcctPendingItem({@JsonKey(name: 'fee_structure_id') this.feeStructureId, @JsonKey(name: 'fee_head_id') this.feeHeadId, @JsonKey(name: 'fee_head_name') this.feeHeadName = '', @JsonKey(name: 'due_date') this.dueDate, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.amount, @JsonKey(name: 'concession_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.concessionAmount, @JsonKey(name: 'paid_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.paidAmount, @JsonKey(name: 'net_due', fromJson: decimalFromJson, toJson: decimalToJson) required this.netDue, this.status = 'DUE', @JsonKey(name: 'suggested_fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.suggestedFineAmount});
  factory _AcctPendingItem.fromJson(Map<String, dynamic> json) => _$AcctPendingItemFromJson(json);

@override@JsonKey(name: 'fee_structure_id') final  String? feeStructureId;
@override@JsonKey(name: 'fee_head_id') final  String? feeHeadId;
@override@JsonKey(name: 'fee_head_name') final  String feeHeadName;
@override@JsonKey(name: 'due_date') final  DateTime? dueDate;
@override@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal amount;
@override@JsonKey(name: 'concession_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal concessionAmount;
@override@JsonKey(name: 'paid_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal paidAmount;
@override@JsonKey(name: 'net_due', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal netDue;
/// PAID / PARTIALLY_PAID / OVERDUE / DUE.
@override@JsonKey() final  String status;
@override@JsonKey(name: 'suggested_fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal suggestedFineAmount;

/// Create a copy of AcctPendingItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcctPendingItemCopyWith<_AcctPendingItem> get copyWith => __$AcctPendingItemCopyWithImpl<_AcctPendingItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcctPendingItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcctPendingItem&&(identical(other.feeStructureId, feeStructureId) || other.feeStructureId == feeStructureId)&&(identical(other.feeHeadId, feeHeadId) || other.feeHeadId == feeHeadId)&&(identical(other.feeHeadName, feeHeadName) || other.feeHeadName == feeHeadName)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.concessionAmount, concessionAmount) || other.concessionAmount == concessionAmount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.netDue, netDue) || other.netDue == netDue)&&(identical(other.status, status) || other.status == status)&&(identical(other.suggestedFineAmount, suggestedFineAmount) || other.suggestedFineAmount == suggestedFineAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,feeStructureId,feeHeadId,feeHeadName,dueDate,amount,concessionAmount,paidAmount,netDue,status,suggestedFineAmount);
}

@override
String toString() {
    return 'AcctPendingItem(feeStructureId: $feeStructureId, feeHeadId: $feeHeadId, feeHeadName: $feeHeadName, dueDate: $dueDate, amount: $amount, concessionAmount: $concessionAmount, paidAmount: $paidAmount, netDue: $netDue, status: $status, suggestedFineAmount: $suggestedFineAmount)';
}


}

/// @nodoc
abstract mixin class _$AcctPendingItemCopyWith<$Res> implements $AcctPendingItemCopyWith<$Res> {
  factory _$AcctPendingItemCopyWith(_AcctPendingItem value, $Res Function(_AcctPendingItem) _then) = __$AcctPendingItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fee_structure_id') String? feeStructureId,@JsonKey(name: 'fee_head_id') String? feeHeadId,@JsonKey(name: 'fee_head_name') String feeHeadName,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount,@JsonKey(name: 'concession_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal concessionAmount,@JsonKey(name: 'paid_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal paidAmount,@JsonKey(name: 'net_due', fromJson: decimalFromJson, toJson: decimalToJson) Decimal netDue, String status,@JsonKey(name: 'suggested_fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal suggestedFineAmount
});




}
/// @nodoc
class __$AcctPendingItemCopyWithImpl<$Res>
    implements _$AcctPendingItemCopyWith<$Res> {
  __$AcctPendingItemCopyWithImpl(this._self, this._then);

  final _AcctPendingItem _self;
  final $Res Function(_AcctPendingItem) _then;

/// Create a copy of AcctPendingItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feeStructureId = freezed,Object? feeHeadId = freezed,Object? feeHeadName = null,Object? dueDate = freezed,Object? amount = null,Object? concessionAmount = null,Object? paidAmount = null,Object? netDue = null,Object? status = null,Object? suggestedFineAmount = null,}) {
  return _then(_AcctPendingItem(
feeStructureId: freezed == feeStructureId ? _self.feeStructureId : feeStructureId // ignore: cast_nullable_to_non_nullable
as String?,feeHeadId: freezed == feeHeadId ? _self.feeHeadId : feeHeadId // ignore: cast_nullable_to_non_nullable
as String?,feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,concessionAmount: null == concessionAmount ? _self.concessionAmount : concessionAmount // ignore: cast_nullable_to_non_nullable
as Decimal,paidAmount: null == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as Decimal,netDue: null == netDue ? _self.netDue : netDue // ignore: cast_nullable_to_non_nullable
as Decimal,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,suggestedFineAmount: null == suggestedFineAmount ? _self.suggestedFineAmount : suggestedFineAmount // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}


}


/// @nodoc
mixin _$AcctConcession {

 String? get name;@JsonKey(name: 'concession_type') String? get concessionType;/// PERCENTAGE / FIXED.
@JsonKey(name: 'calculation_type') String? get calculationType;@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal get value;
/// Create a copy of AcctConcession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcctConcessionCopyWith<AcctConcession> get copyWith => _$AcctConcessionCopyWithImpl<AcctConcession>(this as AcctConcession, _$identity);

  /// Serializes this AcctConcession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AcctConcession;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcctConcession&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.concessionType, _this.concessionType) || other.concessionType == _this.concessionType)&&(identical(other.calculationType, _this.calculationType) || other.calculationType == _this.calculationType)&&(identical(other.value, _this.value) || other.value == _this.value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AcctConcession;
  return Object.hash(runtimeType,_this.name,_this.concessionType,_this.calculationType,_this.value);
}

@override
String toString() {
  final _this = this as AcctConcession;
  return 'AcctConcession(name: ${_this.name}, concessionType: ${_this.concessionType}, calculationType: ${_this.calculationType}, value: ${_this.value})';
}


}

/// @nodoc
abstract mixin class $AcctConcessionCopyWith<$Res>  {
  factory $AcctConcessionCopyWith(AcctConcession value, $Res Function(AcctConcession) _then) = _$AcctConcessionCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'concession_type') String? concessionType,@JsonKey(name: 'calculation_type') String? calculationType,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal value
});




}
/// @nodoc
class _$AcctConcessionCopyWithImpl<$Res>
    implements $AcctConcessionCopyWith<$Res> {
  _$AcctConcessionCopyWithImpl(this._self, this._then);

  final AcctConcession _self;
  final $Res Function(AcctConcession) _then;

/// Create a copy of AcctConcession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? concessionType = freezed,Object? calculationType = freezed,Object? value = null,}) {
  return _then(AcctConcession(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,concessionType: freezed == concessionType ? _self.concessionType : concessionType // ignore: cast_nullable_to_non_nullable
as String?,calculationType: freezed == calculationType ? _self.calculationType : calculationType // ignore: cast_nullable_to_non_nullable
as String?,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

}


/// Adds pattern-matching-related methods to [AcctConcession].
extension AcctConcessionPatterns on AcctConcession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcctConcession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcctConcession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcctConcession value)  $default,){
final _that = this;
switch (_that) {
case _AcctConcession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcctConcession value)?  $default,){
final _that = this;
switch (_that) {
case _AcctConcession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'concession_type')  String? concessionType, @JsonKey(name: 'calculation_type')  String? calculationType, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcctConcession() when $default != null:
return $default(_that.name,_that.concessionType,_that.calculationType,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'concession_type')  String? concessionType, @JsonKey(name: 'calculation_type')  String? calculationType, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal value)  $default,) {final _that = this;
switch (_that) {
case _AcctConcession():
return $default(_that.name,_that.concessionType,_that.calculationType,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'concession_type')  String? concessionType, @JsonKey(name: 'calculation_type')  String? calculationType, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal value)?  $default,) {final _that = this;
switch (_that) {
case _AcctConcession() when $default != null:
return $default(_that.name,_that.concessionType,_that.calculationType,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcctConcession implements AcctConcession {
  const _AcctConcession({this.name, @JsonKey(name: 'concession_type') this.concessionType, @JsonKey(name: 'calculation_type') this.calculationType, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required this.value});
  factory _AcctConcession.fromJson(Map<String, dynamic> json) => _$AcctConcessionFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'concession_type') final  String? concessionType;
/// PERCENTAGE / FIXED.
@override@JsonKey(name: 'calculation_type') final  String? calculationType;
@override@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal value;

/// Create a copy of AcctConcession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcctConcessionCopyWith<_AcctConcession> get copyWith => __$AcctConcessionCopyWithImpl<_AcctConcession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcctConcessionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcctConcession&&(identical(other.name, name) || other.name == name)&&(identical(other.concessionType, concessionType) || other.concessionType == concessionType)&&(identical(other.calculationType, calculationType) || other.calculationType == calculationType)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,concessionType,calculationType,value);
}

@override
String toString() {
    return 'AcctConcession(name: $name, concessionType: $concessionType, calculationType: $calculationType, value: $value)';
}


}

/// @nodoc
abstract mixin class _$AcctConcessionCopyWith<$Res> implements $AcctConcessionCopyWith<$Res> {
  factory _$AcctConcessionCopyWith(_AcctConcession value, $Res Function(_AcctConcession) _then) = __$AcctConcessionCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'concession_type') String? concessionType,@JsonKey(name: 'calculation_type') String? calculationType,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal value
});




}
/// @nodoc
class __$AcctConcessionCopyWithImpl<$Res>
    implements _$AcctConcessionCopyWith<$Res> {
  __$AcctConcessionCopyWithImpl(this._self, this._then);

  final _AcctConcession _self;
  final $Res Function(_AcctConcession) _then;

/// Create a copy of AcctConcession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? concessionType = freezed,Object? calculationType = freezed,Object? value = null,}) {
  return _then(_AcctConcession(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,concessionType: freezed == concessionType ? _self.concessionType : concessionType // ignore: cast_nullable_to_non_nullable
as String?,calculationType: freezed == calculationType ? _self.calculationType : calculationType // ignore: cast_nullable_to_non_nullable
as String?,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}


}


/// @nodoc
mixin _$AcctScholarship {

@JsonKey(name: 'student_concession_id') String get studentConcessionId;@JsonKey(name: 'valid_from') DateTime? get validFrom;@JsonKey(name: 'valid_to') DateTime? get validTo; String? get remarks;@JsonKey(name: 'fee_concessions') AcctConcession? get concession;
/// Create a copy of AcctScholarship
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcctScholarshipCopyWith<AcctScholarship> get copyWith => _$AcctScholarshipCopyWithImpl<AcctScholarship>(this as AcctScholarship, _$identity);

  /// Serializes this AcctScholarship to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AcctScholarship;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcctScholarship&&(identical(other.studentConcessionId, _this.studentConcessionId) || other.studentConcessionId == _this.studentConcessionId)&&(identical(other.validFrom, _this.validFrom) || other.validFrom == _this.validFrom)&&(identical(other.validTo, _this.validTo) || other.validTo == _this.validTo)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.concession, _this.concession) || other.concession == _this.concession));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AcctScholarship;
  return Object.hash(runtimeType,_this.studentConcessionId,_this.validFrom,_this.validTo,_this.remarks,_this.concession);
}

@override
String toString() {
  final _this = this as AcctScholarship;
  return 'AcctScholarship(studentConcessionId: ${_this.studentConcessionId}, validFrom: ${_this.validFrom}, validTo: ${_this.validTo}, remarks: ${_this.remarks}, concession: ${_this.concession})';
}


}

/// @nodoc
abstract mixin class $AcctScholarshipCopyWith<$Res>  {
  factory $AcctScholarshipCopyWith(AcctScholarship value, $Res Function(AcctScholarship) _then) = _$AcctScholarshipCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_concession_id') String studentConcessionId,@JsonKey(name: 'valid_from') DateTime? validFrom,@JsonKey(name: 'valid_to') DateTime? validTo, String? remarks,@JsonKey(name: 'fee_concessions') AcctConcession? concession
});


$AcctConcessionCopyWith<$Res>? get concession;

}
/// @nodoc
class _$AcctScholarshipCopyWithImpl<$Res>
    implements $AcctScholarshipCopyWith<$Res> {
  _$AcctScholarshipCopyWithImpl(this._self, this._then);

  final AcctScholarship _self;
  final $Res Function(AcctScholarship) _then;

/// Create a copy of AcctScholarship
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentConcessionId = null,Object? validFrom = freezed,Object? validTo = freezed,Object? remarks = freezed,Object? concession = freezed,}) {
  return _then(AcctScholarship(
studentConcessionId: null == studentConcessionId ? _self.studentConcessionId : studentConcessionId // ignore: cast_nullable_to_non_nullable
as String,validFrom: freezed == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,validTo: freezed == validTo ? _self.validTo : validTo // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,concession: freezed == concession ? _self.concession : concession // ignore: cast_nullable_to_non_nullable
as AcctConcession?,
  ));
}
/// Create a copy of AcctScholarship
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcctConcessionCopyWith<$Res>? get concession {
    if (_self.concession == null) {
    return null;
  }

  return $AcctConcessionCopyWith<$Res>(_self.concession!, (value) {
    return _then(_self.copyWith(concession: value));
  });
}
}


/// Adds pattern-matching-related methods to [AcctScholarship].
extension AcctScholarshipPatterns on AcctScholarship {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcctScholarship value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcctScholarship() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcctScholarship value)  $default,){
final _that = this;
switch (_that) {
case _AcctScholarship():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcctScholarship value)?  $default,){
final _that = this;
switch (_that) {
case _AcctScholarship() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_concession_id')  String studentConcessionId, @JsonKey(name: 'valid_from')  DateTime? validFrom, @JsonKey(name: 'valid_to')  DateTime? validTo,  String? remarks, @JsonKey(name: 'fee_concessions')  AcctConcession? concession)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcctScholarship() when $default != null:
return $default(_that.studentConcessionId,_that.validFrom,_that.validTo,_that.remarks,_that.concession);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_concession_id')  String studentConcessionId, @JsonKey(name: 'valid_from')  DateTime? validFrom, @JsonKey(name: 'valid_to')  DateTime? validTo,  String? remarks, @JsonKey(name: 'fee_concessions')  AcctConcession? concession)  $default,) {final _that = this;
switch (_that) {
case _AcctScholarship():
return $default(_that.studentConcessionId,_that.validFrom,_that.validTo,_that.remarks,_that.concession);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_concession_id')  String studentConcessionId, @JsonKey(name: 'valid_from')  DateTime? validFrom, @JsonKey(name: 'valid_to')  DateTime? validTo,  String? remarks, @JsonKey(name: 'fee_concessions')  AcctConcession? concession)?  $default,) {final _that = this;
switch (_that) {
case _AcctScholarship() when $default != null:
return $default(_that.studentConcessionId,_that.validFrom,_that.validTo,_that.remarks,_that.concession);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcctScholarship implements AcctScholarship {
  const _AcctScholarship({@JsonKey(name: 'student_concession_id') required this.studentConcessionId, @JsonKey(name: 'valid_from') this.validFrom, @JsonKey(name: 'valid_to') this.validTo, this.remarks, @JsonKey(name: 'fee_concessions') this.concession});
  factory _AcctScholarship.fromJson(Map<String, dynamic> json) => _$AcctScholarshipFromJson(json);

@override@JsonKey(name: 'student_concession_id') final  String studentConcessionId;
@override@JsonKey(name: 'valid_from') final  DateTime? validFrom;
@override@JsonKey(name: 'valid_to') final  DateTime? validTo;
@override final  String? remarks;
@override@JsonKey(name: 'fee_concessions') final  AcctConcession? concession;

/// Create a copy of AcctScholarship
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcctScholarshipCopyWith<_AcctScholarship> get copyWith => __$AcctScholarshipCopyWithImpl<_AcctScholarship>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcctScholarshipToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcctScholarship&&(identical(other.studentConcessionId, studentConcessionId) || other.studentConcessionId == studentConcessionId)&&(identical(other.validFrom, validFrom) || other.validFrom == validFrom)&&(identical(other.validTo, validTo) || other.validTo == validTo)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.concession, concession) || other.concession == concession));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentConcessionId,validFrom,validTo,remarks,concession);
}

@override
String toString() {
    return 'AcctScholarship(studentConcessionId: $studentConcessionId, validFrom: $validFrom, validTo: $validTo, remarks: $remarks, concession: $concession)';
}


}

/// @nodoc
abstract mixin class _$AcctScholarshipCopyWith<$Res> implements $AcctScholarshipCopyWith<$Res> {
  factory _$AcctScholarshipCopyWith(_AcctScholarship value, $Res Function(_AcctScholarship) _then) = __$AcctScholarshipCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_concession_id') String studentConcessionId,@JsonKey(name: 'valid_from') DateTime? validFrom,@JsonKey(name: 'valid_to') DateTime? validTo, String? remarks,@JsonKey(name: 'fee_concessions') AcctConcession? concession
});


@override $AcctConcessionCopyWith<$Res>? get concession;

}
/// @nodoc
class __$AcctScholarshipCopyWithImpl<$Res>
    implements _$AcctScholarshipCopyWith<$Res> {
  __$AcctScholarshipCopyWithImpl(this._self, this._then);

  final _AcctScholarship _self;
  final $Res Function(_AcctScholarship) _then;

/// Create a copy of AcctScholarship
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentConcessionId = null,Object? validFrom = freezed,Object? validTo = freezed,Object? remarks = freezed,Object? concession = freezed,}) {
  return _then(_AcctScholarship(
studentConcessionId: null == studentConcessionId ? _self.studentConcessionId : studentConcessionId // ignore: cast_nullable_to_non_nullable
as String,validFrom: freezed == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,validTo: freezed == validTo ? _self.validTo : validTo // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,concession: freezed == concession ? _self.concession : concession // ignore: cast_nullable_to_non_nullable
as AcctConcession?,
  ));
}

/// Create a copy of AcctScholarship
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcctConcessionCopyWith<$Res>? get concession {
    if (_self.concession == null) {
    return null;
  }

  return $AcctConcessionCopyWith<$Res>(_self.concession!, (value) {
    return _then(_self.copyWith(concession: value));
  });
}
}


/// @nodoc
mixin _$AcctReceiptItem {

@JsonKey(name: 'receipt_item_id') String? get receiptItemId;@JsonKey(name: 'fee_head_name') String get feeHeadName;@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get amount;@JsonKey(name: 'discount_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get discountAmount;@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get fineAmount;@JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get netAmount; String? get remarks;
/// Create a copy of AcctReceiptItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcctReceiptItemCopyWith<AcctReceiptItem> get copyWith => _$AcctReceiptItemCopyWithImpl<AcctReceiptItem>(this as AcctReceiptItem, _$identity);

  /// Serializes this AcctReceiptItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AcctReceiptItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcctReceiptItem&&(identical(other.receiptItemId, _this.receiptItemId) || other.receiptItemId == _this.receiptItemId)&&(identical(other.feeHeadName, _this.feeHeadName) || other.feeHeadName == _this.feeHeadName)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.discountAmount, _this.discountAmount) || other.discountAmount == _this.discountAmount)&&(identical(other.fineAmount, _this.fineAmount) || other.fineAmount == _this.fineAmount)&&(identical(other.netAmount, _this.netAmount) || other.netAmount == _this.netAmount)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AcctReceiptItem;
  return Object.hash(runtimeType,_this.receiptItemId,_this.feeHeadName,_this.amount,_this.discountAmount,_this.fineAmount,_this.netAmount,_this.remarks);
}

@override
String toString() {
  final _this = this as AcctReceiptItem;
  return 'AcctReceiptItem(receiptItemId: ${_this.receiptItemId}, feeHeadName: ${_this.feeHeadName}, amount: ${_this.amount}, discountAmount: ${_this.discountAmount}, fineAmount: ${_this.fineAmount}, netAmount: ${_this.netAmount}, remarks: ${_this.remarks})';
}


}

/// @nodoc
abstract mixin class $AcctReceiptItemCopyWith<$Res>  {
  factory $AcctReceiptItemCopyWith(AcctReceiptItem value, $Res Function(AcctReceiptItem) _then) = _$AcctReceiptItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'receipt_item_id') String? receiptItemId,@JsonKey(name: 'fee_head_name') String feeHeadName,@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount,@JsonKey(name: 'discount_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal discountAmount,@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal fineAmount,@JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal netAmount, String? remarks
});




}
/// @nodoc
class _$AcctReceiptItemCopyWithImpl<$Res>
    implements $AcctReceiptItemCopyWith<$Res> {
  _$AcctReceiptItemCopyWithImpl(this._self, this._then);

  final AcctReceiptItem _self;
  final $Res Function(AcctReceiptItem) _then;

/// Create a copy of AcctReceiptItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiptItemId = freezed,Object? feeHeadName = null,Object? amount = null,Object? discountAmount = null,Object? fineAmount = null,Object? netAmount = null,Object? remarks = freezed,}) {
  return _then(AcctReceiptItem(
receiptItemId: freezed == receiptItemId ? _self.receiptItemId : receiptItemId // ignore: cast_nullable_to_non_nullable
as String?,feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as Decimal,fineAmount: null == fineAmount ? _self.fineAmount : fineAmount // ignore: cast_nullable_to_non_nullable
as Decimal,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as Decimal,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AcctReceiptItem].
extension AcctReceiptItemPatterns on AcctReceiptItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcctReceiptItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcctReceiptItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcctReceiptItem value)  $default,){
final _that = this;
switch (_that) {
case _AcctReceiptItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcctReceiptItem value)?  $default,){
final _that = this;
switch (_that) {
case _AcctReceiptItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'receipt_item_id')  String? receiptItemId, @JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'discount_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal discountAmount, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal fineAmount, @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netAmount,  String? remarks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcctReceiptItem() when $default != null:
return $default(_that.receiptItemId,_that.feeHeadName,_that.amount,_that.discountAmount,_that.fineAmount,_that.netAmount,_that.remarks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'receipt_item_id')  String? receiptItemId, @JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'discount_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal discountAmount, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal fineAmount, @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netAmount,  String? remarks)  $default,) {final _that = this;
switch (_that) {
case _AcctReceiptItem():
return $default(_that.receiptItemId,_that.feeHeadName,_that.amount,_that.discountAmount,_that.fineAmount,_that.netAmount,_that.remarks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'receipt_item_id')  String? receiptItemId, @JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'discount_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal discountAmount, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal fineAmount, @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netAmount,  String? remarks)?  $default,) {final _that = this;
switch (_that) {
case _AcctReceiptItem() when $default != null:
return $default(_that.receiptItemId,_that.feeHeadName,_that.amount,_that.discountAmount,_that.fineAmount,_that.netAmount,_that.remarks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcctReceiptItem implements AcctReceiptItem {
  const _AcctReceiptItem({@JsonKey(name: 'receipt_item_id') this.receiptItemId, @JsonKey(name: 'fee_head_name') this.feeHeadName = '', @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.amount, @JsonKey(name: 'discount_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.discountAmount, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.fineAmount, @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.netAmount, this.remarks});
  factory _AcctReceiptItem.fromJson(Map<String, dynamic> json) => _$AcctReceiptItemFromJson(json);

@override@JsonKey(name: 'receipt_item_id') final  String? receiptItemId;
@override@JsonKey(name: 'fee_head_name') final  String feeHeadName;
@override@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal amount;
@override@JsonKey(name: 'discount_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal discountAmount;
@override@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal fineAmount;
@override@JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal netAmount;
@override final  String? remarks;

/// Create a copy of AcctReceiptItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcctReceiptItemCopyWith<_AcctReceiptItem> get copyWith => __$AcctReceiptItemCopyWithImpl<_AcctReceiptItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcctReceiptItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcctReceiptItem&&(identical(other.receiptItemId, receiptItemId) || other.receiptItemId == receiptItemId)&&(identical(other.feeHeadName, feeHeadName) || other.feeHeadName == feeHeadName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.fineAmount, fineAmount) || other.fineAmount == fineAmount)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.remarks, remarks) || other.remarks == remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,receiptItemId,feeHeadName,amount,discountAmount,fineAmount,netAmount,remarks);
}

@override
String toString() {
    return 'AcctReceiptItem(receiptItemId: $receiptItemId, feeHeadName: $feeHeadName, amount: $amount, discountAmount: $discountAmount, fineAmount: $fineAmount, netAmount: $netAmount, remarks: $remarks)';
}


}

/// @nodoc
abstract mixin class _$AcctReceiptItemCopyWith<$Res> implements $AcctReceiptItemCopyWith<$Res> {
  factory _$AcctReceiptItemCopyWith(_AcctReceiptItem value, $Res Function(_AcctReceiptItem) _then) = __$AcctReceiptItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'receipt_item_id') String? receiptItemId,@JsonKey(name: 'fee_head_name') String feeHeadName,@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount,@JsonKey(name: 'discount_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal discountAmount,@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal fineAmount,@JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal netAmount, String? remarks
});




}
/// @nodoc
class __$AcctReceiptItemCopyWithImpl<$Res>
    implements _$AcctReceiptItemCopyWith<$Res> {
  __$AcctReceiptItemCopyWithImpl(this._self, this._then);

  final _AcctReceiptItem _self;
  final $Res Function(_AcctReceiptItem) _then;

/// Create a copy of AcctReceiptItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiptItemId = freezed,Object? feeHeadName = null,Object? amount = null,Object? discountAmount = null,Object? fineAmount = null,Object? netAmount = null,Object? remarks = freezed,}) {
  return _then(_AcctReceiptItem(
receiptItemId: freezed == receiptItemId ? _self.receiptItemId : receiptItemId // ignore: cast_nullable_to_non_nullable
as String?,feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as Decimal,fineAmount: null == fineAmount ? _self.fineAmount : fineAmount // ignore: cast_nullable_to_non_nullable
as Decimal,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as Decimal,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AcctReceipt {

@JsonKey(name: 'receipt_id') String get receiptId;@JsonKey(name: 'receipt_no') String get receiptNo;@JsonKey(name: 'student_id') String? get studentId;@JsonKey(name: 'receipt_date') DateTime? get receiptDate;@JsonKey(name: 'total_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalAmount;@JsonKey(name: 'discount_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get discountAmount;@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get fineAmount;@JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get netAmount;@JsonKey(name: 'payment_mode') String get paymentMode;/// PAID / CANCELLED / REFUNDED.
@JsonKey(name: 'receipt_status') String get receiptStatus; String? get remarks;@JsonKey(name: 'cancelled_at') DateTime? get cancelledAt;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'students') AcctStudent? get student;@JsonKey(name: 'classes', readValue: _readReceiptClass) String? get className;@JsonKey(name: 'student_fee_receipt_items') List<AcctReceiptItem> get items;
/// Create a copy of AcctReceipt
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcctReceiptCopyWith<AcctReceipt> get copyWith => _$AcctReceiptCopyWithImpl<AcctReceipt>(this as AcctReceipt, _$identity);

  /// Serializes this AcctReceipt to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AcctReceipt;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcctReceipt&&(identical(other.receiptId, _this.receiptId) || other.receiptId == _this.receiptId)&&(identical(other.receiptNo, _this.receiptNo) || other.receiptNo == _this.receiptNo)&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.receiptDate, _this.receiptDate) || other.receiptDate == _this.receiptDate)&&(identical(other.totalAmount, _this.totalAmount) || other.totalAmount == _this.totalAmount)&&(identical(other.discountAmount, _this.discountAmount) || other.discountAmount == _this.discountAmount)&&(identical(other.fineAmount, _this.fineAmount) || other.fineAmount == _this.fineAmount)&&(identical(other.netAmount, _this.netAmount) || other.netAmount == _this.netAmount)&&(identical(other.paymentMode, _this.paymentMode) || other.paymentMode == _this.paymentMode)&&(identical(other.receiptStatus, _this.receiptStatus) || other.receiptStatus == _this.receiptStatus)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.cancelledAt, _this.cancelledAt) || other.cancelledAt == _this.cancelledAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.student, _this.student) || other.student == _this.student)&&(identical(other.className, _this.className) || other.className == _this.className)&&const DeepCollectionEquality().equals(other.items, _this.items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AcctReceipt;
  return Object.hash(runtimeType,_this.receiptId,_this.receiptNo,_this.studentId,_this.receiptDate,_this.totalAmount,_this.discountAmount,_this.fineAmount,_this.netAmount,_this.paymentMode,_this.receiptStatus,_this.remarks,_this.cancelledAt,_this.createdAt,_this.student,_this.className,const DeepCollectionEquality().hash(_this.items));
}

@override
String toString() {
  final _this = this as AcctReceipt;
  return 'AcctReceipt(receiptId: ${_this.receiptId}, receiptNo: ${_this.receiptNo}, studentId: ${_this.studentId}, receiptDate: ${_this.receiptDate}, totalAmount: ${_this.totalAmount}, discountAmount: ${_this.discountAmount}, fineAmount: ${_this.fineAmount}, netAmount: ${_this.netAmount}, paymentMode: ${_this.paymentMode}, receiptStatus: ${_this.receiptStatus}, remarks: ${_this.remarks}, cancelledAt: ${_this.cancelledAt}, createdAt: ${_this.createdAt}, student: ${_this.student}, className: ${_this.className}, items: ${_this.items})';
}


}

/// @nodoc
abstract mixin class $AcctReceiptCopyWith<$Res>  {
  factory $AcctReceiptCopyWith(AcctReceipt value, $Res Function(AcctReceipt) _then) = _$AcctReceiptCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'receipt_id') String receiptId,@JsonKey(name: 'receipt_no') String receiptNo,@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'receipt_date') DateTime? receiptDate,@JsonKey(name: 'total_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalAmount,@JsonKey(name: 'discount_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal discountAmount,@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal fineAmount,@JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal netAmount,@JsonKey(name: 'payment_mode') String paymentMode,@JsonKey(name: 'receipt_status') String receiptStatus, String? remarks,@JsonKey(name: 'cancelled_at') DateTime? cancelledAt,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'students') AcctStudent? student,@JsonKey(name: 'classes', readValue: _readReceiptClass) String? className,@JsonKey(name: 'student_fee_receipt_items') List<AcctReceiptItem> items
});


$AcctStudentCopyWith<$Res>? get student;

}
/// @nodoc
class _$AcctReceiptCopyWithImpl<$Res>
    implements $AcctReceiptCopyWith<$Res> {
  _$AcctReceiptCopyWithImpl(this._self, this._then);

  final AcctReceipt _self;
  final $Res Function(AcctReceipt) _then;

/// Create a copy of AcctReceipt
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiptId = null,Object? receiptNo = null,Object? studentId = freezed,Object? receiptDate = freezed,Object? totalAmount = null,Object? discountAmount = null,Object? fineAmount = null,Object? netAmount = null,Object? paymentMode = null,Object? receiptStatus = null,Object? remarks = freezed,Object? cancelledAt = freezed,Object? createdAt = freezed,Object? student = freezed,Object? className = freezed,Object? items = null,}) {
  return _then(AcctReceipt(
receiptId: null == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String,receiptNo: null == receiptNo ? _self.receiptNo : receiptNo // ignore: cast_nullable_to_non_nullable
as String,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,receiptDate: freezed == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as DateTime?,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as Decimal,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as Decimal,fineAmount: null == fineAmount ? _self.fineAmount : fineAmount // ignore: cast_nullable_to_non_nullable
as Decimal,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as Decimal,paymentMode: null == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String,receiptStatus: null == receiptStatus ? _self.receiptStatus : receiptStatus // ignore: cast_nullable_to_non_nullable
as String,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,cancelledAt: freezed == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as AcctStudent?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<AcctReceiptItem>,
  ));
}
/// Create a copy of AcctReceipt
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcctStudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $AcctStudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// Adds pattern-matching-related methods to [AcctReceipt].
extension AcctReceiptPatterns on AcctReceipt {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcctReceipt value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcctReceipt() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcctReceipt value)  $default,){
final _that = this;
switch (_that) {
case _AcctReceipt():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcctReceipt value)?  $default,){
final _that = this;
switch (_that) {
case _AcctReceipt() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'receipt_id')  String receiptId, @JsonKey(name: 'receipt_no')  String receiptNo, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'receipt_date')  DateTime? receiptDate, @JsonKey(name: 'total_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalAmount, @JsonKey(name: 'discount_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal discountAmount, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal fineAmount, @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netAmount, @JsonKey(name: 'payment_mode')  String paymentMode, @JsonKey(name: 'receipt_status')  String receiptStatus,  String? remarks, @JsonKey(name: 'cancelled_at')  DateTime? cancelledAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'students')  AcctStudent? student, @JsonKey(name: 'classes', readValue: _readReceiptClass)  String? className, @JsonKey(name: 'student_fee_receipt_items')  List<AcctReceiptItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcctReceipt() when $default != null:
return $default(_that.receiptId,_that.receiptNo,_that.studentId,_that.receiptDate,_that.totalAmount,_that.discountAmount,_that.fineAmount,_that.netAmount,_that.paymentMode,_that.receiptStatus,_that.remarks,_that.cancelledAt,_that.createdAt,_that.student,_that.className,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'receipt_id')  String receiptId, @JsonKey(name: 'receipt_no')  String receiptNo, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'receipt_date')  DateTime? receiptDate, @JsonKey(name: 'total_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalAmount, @JsonKey(name: 'discount_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal discountAmount, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal fineAmount, @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netAmount, @JsonKey(name: 'payment_mode')  String paymentMode, @JsonKey(name: 'receipt_status')  String receiptStatus,  String? remarks, @JsonKey(name: 'cancelled_at')  DateTime? cancelledAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'students')  AcctStudent? student, @JsonKey(name: 'classes', readValue: _readReceiptClass)  String? className, @JsonKey(name: 'student_fee_receipt_items')  List<AcctReceiptItem> items)  $default,) {final _that = this;
switch (_that) {
case _AcctReceipt():
return $default(_that.receiptId,_that.receiptNo,_that.studentId,_that.receiptDate,_that.totalAmount,_that.discountAmount,_that.fineAmount,_that.netAmount,_that.paymentMode,_that.receiptStatus,_that.remarks,_that.cancelledAt,_that.createdAt,_that.student,_that.className,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'receipt_id')  String receiptId, @JsonKey(name: 'receipt_no')  String receiptNo, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'receipt_date')  DateTime? receiptDate, @JsonKey(name: 'total_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalAmount, @JsonKey(name: 'discount_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal discountAmount, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal fineAmount, @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netAmount, @JsonKey(name: 'payment_mode')  String paymentMode, @JsonKey(name: 'receipt_status')  String receiptStatus,  String? remarks, @JsonKey(name: 'cancelled_at')  DateTime? cancelledAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'students')  AcctStudent? student, @JsonKey(name: 'classes', readValue: _readReceiptClass)  String? className, @JsonKey(name: 'student_fee_receipt_items')  List<AcctReceiptItem> items)?  $default,) {final _that = this;
switch (_that) {
case _AcctReceipt() when $default != null:
return $default(_that.receiptId,_that.receiptNo,_that.studentId,_that.receiptDate,_that.totalAmount,_that.discountAmount,_that.fineAmount,_that.netAmount,_that.paymentMode,_that.receiptStatus,_that.remarks,_that.cancelledAt,_that.createdAt,_that.student,_that.className,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcctReceipt implements AcctReceipt {
  const _AcctReceipt({@JsonKey(name: 'receipt_id') required this.receiptId, @JsonKey(name: 'receipt_no') this.receiptNo = '', @JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'receipt_date') this.receiptDate, @JsonKey(name: 'total_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalAmount, @JsonKey(name: 'discount_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.discountAmount, @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.fineAmount, @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.netAmount, @JsonKey(name: 'payment_mode') this.paymentMode = '', @JsonKey(name: 'receipt_status') this.receiptStatus = 'PAID', this.remarks, @JsonKey(name: 'cancelled_at') this.cancelledAt, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'students') this.student, @JsonKey(name: 'classes', readValue: _readReceiptClass) this.className, @JsonKey(name: 'student_fee_receipt_items')  List<AcctReceiptItem> items = const []}): _items = items;
  factory _AcctReceipt.fromJson(Map<String, dynamic> json) => _$AcctReceiptFromJson(json);

@override@JsonKey(name: 'receipt_id') final  String receiptId;
@override@JsonKey(name: 'receipt_no') final  String receiptNo;
@override@JsonKey(name: 'student_id') final  String? studentId;
@override@JsonKey(name: 'receipt_date') final  DateTime? receiptDate;
@override@JsonKey(name: 'total_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalAmount;
@override@JsonKey(name: 'discount_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal discountAmount;
@override@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal fineAmount;
@override@JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal netAmount;
@override@JsonKey(name: 'payment_mode') final  String paymentMode;
/// PAID / CANCELLED / REFUNDED.
@override@JsonKey(name: 'receipt_status') final  String receiptStatus;
@override final  String? remarks;
@override@JsonKey(name: 'cancelled_at') final  DateTime? cancelledAt;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'students') final  AcctStudent? student;
@override@JsonKey(name: 'classes', readValue: _readReceiptClass) final  String? className;
 final  List<AcctReceiptItem> _items;
@override@JsonKey(name: 'student_fee_receipt_items') List<AcctReceiptItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of AcctReceipt
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcctReceiptCopyWith<_AcctReceipt> get copyWith => __$AcctReceiptCopyWithImpl<_AcctReceipt>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcctReceiptToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcctReceipt&&(identical(other.receiptId, receiptId) || other.receiptId == receiptId)&&(identical(other.receiptNo, receiptNo) || other.receiptNo == receiptNo)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.receiptDate, receiptDate) || other.receiptDate == receiptDate)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.fineAmount, fineAmount) || other.fineAmount == fineAmount)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.receiptStatus, receiptStatus) || other.receiptStatus == receiptStatus)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.cancelledAt, cancelledAt) || other.cancelledAt == cancelledAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.student, student) || other.student == student)&&(identical(other.className, className) || other.className == className)&&const DeepCollectionEquality().equals(other.items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,receiptId,receiptNo,studentId,receiptDate,totalAmount,discountAmount,fineAmount,netAmount,paymentMode,receiptStatus,remarks,cancelledAt,createdAt,student,className,const DeepCollectionEquality().hash(_items));
}

@override
String toString() {
    return 'AcctReceipt(receiptId: $receiptId, receiptNo: $receiptNo, studentId: $studentId, receiptDate: $receiptDate, totalAmount: $totalAmount, discountAmount: $discountAmount, fineAmount: $fineAmount, netAmount: $netAmount, paymentMode: $paymentMode, receiptStatus: $receiptStatus, remarks: $remarks, cancelledAt: $cancelledAt, createdAt: $createdAt, student: $student, className: $className, items: $items)';
}


}

/// @nodoc
abstract mixin class _$AcctReceiptCopyWith<$Res> implements $AcctReceiptCopyWith<$Res> {
  factory _$AcctReceiptCopyWith(_AcctReceipt value, $Res Function(_AcctReceipt) _then) = __$AcctReceiptCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'receipt_id') String receiptId,@JsonKey(name: 'receipt_no') String receiptNo,@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'receipt_date') DateTime? receiptDate,@JsonKey(name: 'total_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalAmount,@JsonKey(name: 'discount_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal discountAmount,@JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal fineAmount,@JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal netAmount,@JsonKey(name: 'payment_mode') String paymentMode,@JsonKey(name: 'receipt_status') String receiptStatus, String? remarks,@JsonKey(name: 'cancelled_at') DateTime? cancelledAt,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'students') AcctStudent? student,@JsonKey(name: 'classes', readValue: _readReceiptClass) String? className,@JsonKey(name: 'student_fee_receipt_items') List<AcctReceiptItem> items
});


@override $AcctStudentCopyWith<$Res>? get student;

}
/// @nodoc
class __$AcctReceiptCopyWithImpl<$Res>
    implements _$AcctReceiptCopyWith<$Res> {
  __$AcctReceiptCopyWithImpl(this._self, this._then);

  final _AcctReceipt _self;
  final $Res Function(_AcctReceipt) _then;

/// Create a copy of AcctReceipt
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiptId = null,Object? receiptNo = null,Object? studentId = freezed,Object? receiptDate = freezed,Object? totalAmount = null,Object? discountAmount = null,Object? fineAmount = null,Object? netAmount = null,Object? paymentMode = null,Object? receiptStatus = null,Object? remarks = freezed,Object? cancelledAt = freezed,Object? createdAt = freezed,Object? student = freezed,Object? className = freezed,Object? items = null,}) {
  return _then(_AcctReceipt(
receiptId: null == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String,receiptNo: null == receiptNo ? _self.receiptNo : receiptNo // ignore: cast_nullable_to_non_nullable
as String,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,receiptDate: freezed == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as DateTime?,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as Decimal,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as Decimal,fineAmount: null == fineAmount ? _self.fineAmount : fineAmount // ignore: cast_nullable_to_non_nullable
as Decimal,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as Decimal,paymentMode: null == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String,receiptStatus: null == receiptStatus ? _self.receiptStatus : receiptStatus // ignore: cast_nullable_to_non_nullable
as String,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,cancelledAt: freezed == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as AcctStudent?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<AcctReceiptItem>,
  ));
}

/// Create a copy of AcctReceipt
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcctStudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $AcctStudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}


/// @nodoc
mixin _$AcctFeeCategory {

@JsonKey(name: 'fee_category_id') String? get feeCategoryId;@JsonKey(name: 'category_name') String? get categoryName;
/// Create a copy of AcctFeeCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcctFeeCategoryCopyWith<AcctFeeCategory> get copyWith => _$AcctFeeCategoryCopyWithImpl<AcctFeeCategory>(this as AcctFeeCategory, _$identity);

  /// Serializes this AcctFeeCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AcctFeeCategory;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcctFeeCategory&&(identical(other.feeCategoryId, _this.feeCategoryId) || other.feeCategoryId == _this.feeCategoryId)&&(identical(other.categoryName, _this.categoryName) || other.categoryName == _this.categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AcctFeeCategory;
  return Object.hash(runtimeType,_this.feeCategoryId,_this.categoryName);
}

@override
String toString() {
  final _this = this as AcctFeeCategory;
  return 'AcctFeeCategory(feeCategoryId: ${_this.feeCategoryId}, categoryName: ${_this.categoryName})';
}


}

/// @nodoc
abstract mixin class $AcctFeeCategoryCopyWith<$Res>  {
  factory $AcctFeeCategoryCopyWith(AcctFeeCategory value, $Res Function(AcctFeeCategory) _then) = _$AcctFeeCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fee_category_id') String? feeCategoryId,@JsonKey(name: 'category_name') String? categoryName
});




}
/// @nodoc
class _$AcctFeeCategoryCopyWithImpl<$Res>
    implements $AcctFeeCategoryCopyWith<$Res> {
  _$AcctFeeCategoryCopyWithImpl(this._self, this._then);

  final AcctFeeCategory _self;
  final $Res Function(AcctFeeCategory) _then;

/// Create a copy of AcctFeeCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feeCategoryId = freezed,Object? categoryName = freezed,}) {
  return _then(AcctFeeCategory(
feeCategoryId: freezed == feeCategoryId ? _self.feeCategoryId : feeCategoryId // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AcctFeeCategory].
extension AcctFeeCategoryPatterns on AcctFeeCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcctFeeCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcctFeeCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcctFeeCategory value)  $default,){
final _that = this;
switch (_that) {
case _AcctFeeCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcctFeeCategory value)?  $default,){
final _that = this;
switch (_that) {
case _AcctFeeCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_category_id')  String? feeCategoryId, @JsonKey(name: 'category_name')  String? categoryName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcctFeeCategory() when $default != null:
return $default(_that.feeCategoryId,_that.categoryName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_category_id')  String? feeCategoryId, @JsonKey(name: 'category_name')  String? categoryName)  $default,) {final _that = this;
switch (_that) {
case _AcctFeeCategory():
return $default(_that.feeCategoryId,_that.categoryName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fee_category_id')  String? feeCategoryId, @JsonKey(name: 'category_name')  String? categoryName)?  $default,) {final _that = this;
switch (_that) {
case _AcctFeeCategory() when $default != null:
return $default(_that.feeCategoryId,_that.categoryName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcctFeeCategory implements AcctFeeCategory {
  const _AcctFeeCategory({@JsonKey(name: 'fee_category_id') this.feeCategoryId, @JsonKey(name: 'category_name') this.categoryName});
  factory _AcctFeeCategory.fromJson(Map<String, dynamic> json) => _$AcctFeeCategoryFromJson(json);

@override@JsonKey(name: 'fee_category_id') final  String? feeCategoryId;
@override@JsonKey(name: 'category_name') final  String? categoryName;

/// Create a copy of AcctFeeCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcctFeeCategoryCopyWith<_AcctFeeCategory> get copyWith => __$AcctFeeCategoryCopyWithImpl<_AcctFeeCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcctFeeCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcctFeeCategory&&(identical(other.feeCategoryId, feeCategoryId) || other.feeCategoryId == feeCategoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,feeCategoryId,categoryName);
}

@override
String toString() {
    return 'AcctFeeCategory(feeCategoryId: $feeCategoryId, categoryName: $categoryName)';
}


}

/// @nodoc
abstract mixin class _$AcctFeeCategoryCopyWith<$Res> implements $AcctFeeCategoryCopyWith<$Res> {
  factory _$AcctFeeCategoryCopyWith(_AcctFeeCategory value, $Res Function(_AcctFeeCategory) _then) = __$AcctFeeCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fee_category_id') String? feeCategoryId,@JsonKey(name: 'category_name') String? categoryName
});




}
/// @nodoc
class __$AcctFeeCategoryCopyWithImpl<$Res>
    implements _$AcctFeeCategoryCopyWith<$Res> {
  __$AcctFeeCategoryCopyWithImpl(this._self, this._then);

  final _AcctFeeCategory _self;
  final $Res Function(_AcctFeeCategory) _then;

/// Create a copy of AcctFeeCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feeCategoryId = freezed,Object? categoryName = freezed,}) {
  return _then(_AcctFeeCategory(
feeCategoryId: freezed == feeCategoryId ? _self.feeCategoryId : feeCategoryId // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FeeCollectionSummary {

 AcctStudent get student;@JsonKey(name: 'fee_category') AcctFeeCategory? get feeCategory; List<AcctScholarship> get scholarships;@JsonKey(name: 'previous_payments') List<AcctReceipt> get previousPayments;@JsonKey(name: 'pending_items') List<AcctPendingItem> get pendingItems;@JsonKey(name: 'total_due', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalDue;
/// Create a copy of FeeCollectionSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeCollectionSummaryCopyWith<FeeCollectionSummary> get copyWith => _$FeeCollectionSummaryCopyWithImpl<FeeCollectionSummary>(this as FeeCollectionSummary, _$identity);

  /// Serializes this FeeCollectionSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FeeCollectionSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeCollectionSummary&&(identical(other.student, _this.student) || other.student == _this.student)&&(identical(other.feeCategory, _this.feeCategory) || other.feeCategory == _this.feeCategory)&&const DeepCollectionEquality().equals(other.scholarships, _this.scholarships)&&const DeepCollectionEquality().equals(other.previousPayments, _this.previousPayments)&&const DeepCollectionEquality().equals(other.pendingItems, _this.pendingItems)&&(identical(other.totalDue, _this.totalDue) || other.totalDue == _this.totalDue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeeCollectionSummary;
  return Object.hash(runtimeType,_this.student,_this.feeCategory,const DeepCollectionEquality().hash(_this.scholarships),const DeepCollectionEquality().hash(_this.previousPayments),const DeepCollectionEquality().hash(_this.pendingItems),_this.totalDue);
}

@override
String toString() {
  final _this = this as FeeCollectionSummary;
  return 'FeeCollectionSummary(student: ${_this.student}, feeCategory: ${_this.feeCategory}, scholarships: ${_this.scholarships}, previousPayments: ${_this.previousPayments}, pendingItems: ${_this.pendingItems}, totalDue: ${_this.totalDue})';
}


}

/// @nodoc
abstract mixin class $FeeCollectionSummaryCopyWith<$Res>  {
  factory $FeeCollectionSummaryCopyWith(FeeCollectionSummary value, $Res Function(FeeCollectionSummary) _then) = _$FeeCollectionSummaryCopyWithImpl;
@useResult
$Res call({
 AcctStudent student,@JsonKey(name: 'fee_category') AcctFeeCategory? feeCategory, List<AcctScholarship> scholarships,@JsonKey(name: 'previous_payments') List<AcctReceipt> previousPayments,@JsonKey(name: 'pending_items') List<AcctPendingItem> pendingItems,@JsonKey(name: 'total_due', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDue
});


$AcctStudentCopyWith<$Res> get student;$AcctFeeCategoryCopyWith<$Res>? get feeCategory;

}
/// @nodoc
class _$FeeCollectionSummaryCopyWithImpl<$Res>
    implements $FeeCollectionSummaryCopyWith<$Res> {
  _$FeeCollectionSummaryCopyWithImpl(this._self, this._then);

  final FeeCollectionSummary _self;
  final $Res Function(FeeCollectionSummary) _then;

/// Create a copy of FeeCollectionSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? student = null,Object? feeCategory = freezed,Object? scholarships = null,Object? previousPayments = null,Object? pendingItems = null,Object? totalDue = null,}) {
  return _then(FeeCollectionSummary(
student: null == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as AcctStudent,feeCategory: freezed == feeCategory ? _self.feeCategory : feeCategory // ignore: cast_nullable_to_non_nullable
as AcctFeeCategory?,scholarships: null == scholarships ? _self.scholarships : scholarships // ignore: cast_nullable_to_non_nullable
as List<AcctScholarship>,previousPayments: null == previousPayments ? _self.previousPayments : previousPayments // ignore: cast_nullable_to_non_nullable
as List<AcctReceipt>,pendingItems: null == pendingItems ? _self.pendingItems : pendingItems // ignore: cast_nullable_to_non_nullable
as List<AcctPendingItem>,totalDue: null == totalDue ? _self.totalDue : totalDue // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}
/// Create a copy of FeeCollectionSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcctStudentCopyWith<$Res> get student {
  
  return $AcctStudentCopyWith<$Res>(_self.student, (value) {
    return _then(_self.copyWith(student: value));
  });
}/// Create a copy of FeeCollectionSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcctFeeCategoryCopyWith<$Res>? get feeCategory {
    if (_self.feeCategory == null) {
    return null;
  }

  return $AcctFeeCategoryCopyWith<$Res>(_self.feeCategory!, (value) {
    return _then(_self.copyWith(feeCategory: value));
  });
}
}


/// Adds pattern-matching-related methods to [FeeCollectionSummary].
extension FeeCollectionSummaryPatterns on FeeCollectionSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeeCollectionSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeeCollectionSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeeCollectionSummary value)  $default,){
final _that = this;
switch (_that) {
case _FeeCollectionSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeeCollectionSummary value)?  $default,){
final _that = this;
switch (_that) {
case _FeeCollectionSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AcctStudent student, @JsonKey(name: 'fee_category')  AcctFeeCategory? feeCategory,  List<AcctScholarship> scholarships, @JsonKey(name: 'previous_payments')  List<AcctReceipt> previousPayments, @JsonKey(name: 'pending_items')  List<AcctPendingItem> pendingItems, @JsonKey(name: 'total_due', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeCollectionSummary() when $default != null:
return $default(_that.student,_that.feeCategory,_that.scholarships,_that.previousPayments,_that.pendingItems,_that.totalDue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AcctStudent student, @JsonKey(name: 'fee_category')  AcctFeeCategory? feeCategory,  List<AcctScholarship> scholarships, @JsonKey(name: 'previous_payments')  List<AcctReceipt> previousPayments, @JsonKey(name: 'pending_items')  List<AcctPendingItem> pendingItems, @JsonKey(name: 'total_due', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDue)  $default,) {final _that = this;
switch (_that) {
case _FeeCollectionSummary():
return $default(_that.student,_that.feeCategory,_that.scholarships,_that.previousPayments,_that.pendingItems,_that.totalDue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AcctStudent student, @JsonKey(name: 'fee_category')  AcctFeeCategory? feeCategory,  List<AcctScholarship> scholarships, @JsonKey(name: 'previous_payments')  List<AcctReceipt> previousPayments, @JsonKey(name: 'pending_items')  List<AcctPendingItem> pendingItems, @JsonKey(name: 'total_due', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDue)?  $default,) {final _that = this;
switch (_that) {
case _FeeCollectionSummary() when $default != null:
return $default(_that.student,_that.feeCategory,_that.scholarships,_that.previousPayments,_that.pendingItems,_that.totalDue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeCollectionSummary implements FeeCollectionSummary {
  const _FeeCollectionSummary({required this.student, @JsonKey(name: 'fee_category') this.feeCategory,  List<AcctScholarship> scholarships = const [], @JsonKey(name: 'previous_payments')  List<AcctReceipt> previousPayments = const [], @JsonKey(name: 'pending_items')  List<AcctPendingItem> pendingItems = const [], @JsonKey(name: 'total_due', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalDue}): _scholarships = scholarships,_previousPayments = previousPayments,_pendingItems = pendingItems;
  factory _FeeCollectionSummary.fromJson(Map<String, dynamic> json) => _$FeeCollectionSummaryFromJson(json);

@override final  AcctStudent student;
@override@JsonKey(name: 'fee_category') final  AcctFeeCategory? feeCategory;
 final  List<AcctScholarship> _scholarships;
@override@JsonKey() List<AcctScholarship> get scholarships {
  if (_scholarships is EqualUnmodifiableListView) return _scholarships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scholarships);
}

 final  List<AcctReceipt> _previousPayments;
@override@JsonKey(name: 'previous_payments') List<AcctReceipt> get previousPayments {
  if (_previousPayments is EqualUnmodifiableListView) return _previousPayments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_previousPayments);
}

 final  List<AcctPendingItem> _pendingItems;
@override@JsonKey(name: 'pending_items') List<AcctPendingItem> get pendingItems {
  if (_pendingItems is EqualUnmodifiableListView) return _pendingItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pendingItems);
}

@override@JsonKey(name: 'total_due', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalDue;

/// Create a copy of FeeCollectionSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeCollectionSummaryCopyWith<_FeeCollectionSummary> get copyWith => __$FeeCollectionSummaryCopyWithImpl<_FeeCollectionSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeCollectionSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeCollectionSummary&&(identical(other.student, student) || other.student == student)&&(identical(other.feeCategory, feeCategory) || other.feeCategory == feeCategory)&&const DeepCollectionEquality().equals(other.scholarships, _scholarships)&&const DeepCollectionEquality().equals(other.previousPayments, _previousPayments)&&const DeepCollectionEquality().equals(other.pendingItems, _pendingItems)&&(identical(other.totalDue, totalDue) || other.totalDue == totalDue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,student,feeCategory,const DeepCollectionEquality().hash(_scholarships),const DeepCollectionEquality().hash(_previousPayments),const DeepCollectionEquality().hash(_pendingItems),totalDue);
}

@override
String toString() {
    return 'FeeCollectionSummary(student: $student, feeCategory: $feeCategory, scholarships: $scholarships, previousPayments: $previousPayments, pendingItems: $pendingItems, totalDue: $totalDue)';
}


}

/// @nodoc
abstract mixin class _$FeeCollectionSummaryCopyWith<$Res> implements $FeeCollectionSummaryCopyWith<$Res> {
  factory _$FeeCollectionSummaryCopyWith(_FeeCollectionSummary value, $Res Function(_FeeCollectionSummary) _then) = __$FeeCollectionSummaryCopyWithImpl;
@override @useResult
$Res call({
 AcctStudent student,@JsonKey(name: 'fee_category') AcctFeeCategory? feeCategory, List<AcctScholarship> scholarships,@JsonKey(name: 'previous_payments') List<AcctReceipt> previousPayments,@JsonKey(name: 'pending_items') List<AcctPendingItem> pendingItems,@JsonKey(name: 'total_due', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDue
});


@override $AcctStudentCopyWith<$Res> get student;@override $AcctFeeCategoryCopyWith<$Res>? get feeCategory;

}
/// @nodoc
class __$FeeCollectionSummaryCopyWithImpl<$Res>
    implements _$FeeCollectionSummaryCopyWith<$Res> {
  __$FeeCollectionSummaryCopyWithImpl(this._self, this._then);

  final _FeeCollectionSummary _self;
  final $Res Function(_FeeCollectionSummary) _then;

/// Create a copy of FeeCollectionSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? student = null,Object? feeCategory = freezed,Object? scholarships = null,Object? previousPayments = null,Object? pendingItems = null,Object? totalDue = null,}) {
  return _then(_FeeCollectionSummary(
student: null == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as AcctStudent,feeCategory: freezed == feeCategory ? _self.feeCategory : feeCategory // ignore: cast_nullable_to_non_nullable
as AcctFeeCategory?,scholarships: null == scholarships ? _self._scholarships : scholarships // ignore: cast_nullable_to_non_nullable
as List<AcctScholarship>,previousPayments: null == previousPayments ? _self._previousPayments : previousPayments // ignore: cast_nullable_to_non_nullable
as List<AcctReceipt>,pendingItems: null == pendingItems ? _self._pendingItems : pendingItems // ignore: cast_nullable_to_non_nullable
as List<AcctPendingItem>,totalDue: null == totalDue ? _self.totalDue : totalDue // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

/// Create a copy of FeeCollectionSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcctStudentCopyWith<$Res> get student {
  
  return $AcctStudentCopyWith<$Res>(_self.student, (value) {
    return _then(_self.copyWith(student: value));
  });
}/// Create a copy of FeeCollectionSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcctFeeCategoryCopyWith<$Res>? get feeCategory {
    if (_self.feeCategory == null) {
    return null;
  }

  return $AcctFeeCategoryCopyWith<$Res>(_self.feeCategory!, (value) {
    return _then(_self.copyWith(feeCategory: value));
  });
}
}


/// @nodoc
mixin _$AcctParentRef {

@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName;@JsonKey(name: 'mobile_no') String? get mobileNo; String? get email;
/// Create a copy of AcctParentRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcctParentRefCopyWith<AcctParentRef> get copyWith => _$AcctParentRefCopyWithImpl<AcctParentRef>(this as AcctParentRef, _$identity);

  /// Serializes this AcctParentRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AcctParentRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcctParentRef&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.mobileNo, _this.mobileNo) || other.mobileNo == _this.mobileNo)&&(identical(other.email, _this.email) || other.email == _this.email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AcctParentRef;
  return Object.hash(runtimeType,_this.firstName,_this.lastName,_this.mobileNo,_this.email);
}

@override
String toString() {
  final _this = this as AcctParentRef;
  return 'AcctParentRef(firstName: ${_this.firstName}, lastName: ${_this.lastName}, mobileNo: ${_this.mobileNo}, email: ${_this.email})';
}


}

/// @nodoc
abstract mixin class $AcctParentRefCopyWith<$Res>  {
  factory $AcctParentRefCopyWith(AcctParentRef value, $Res Function(AcctParentRef) _then) = _$AcctParentRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'mobile_no') String? mobileNo, String? email
});




}
/// @nodoc
class _$AcctParentRefCopyWithImpl<$Res>
    implements $AcctParentRefCopyWith<$Res> {
  _$AcctParentRefCopyWithImpl(this._self, this._then);

  final AcctParentRef _self;
  final $Res Function(AcctParentRef) _then;

/// Create a copy of AcctParentRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? mobileNo = freezed,Object? email = freezed,}) {
  return _then(AcctParentRef(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AcctParentRef].
extension AcctParentRefPatterns on AcctParentRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcctParentRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcctParentRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcctParentRef value)  $default,){
final _that = this;
switch (_that) {
case _AcctParentRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcctParentRef value)?  $default,){
final _that = this;
switch (_that) {
case _AcctParentRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcctParentRef() when $default != null:
return $default(_that.firstName,_that.lastName,_that.mobileNo,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email)  $default,) {final _that = this;
switch (_that) {
case _AcctParentRef():
return $default(_that.firstName,_that.lastName,_that.mobileNo,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email)?  $default,) {final _that = this;
switch (_that) {
case _AcctParentRef() when $default != null:
return $default(_that.firstName,_that.lastName,_that.mobileNo,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcctParentRef implements AcctParentRef {
  const _AcctParentRef({@JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, @JsonKey(name: 'mobile_no') this.mobileNo, this.email});
  factory _AcctParentRef.fromJson(Map<String, dynamic> json) => _$AcctParentRefFromJson(json);

@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override@JsonKey(name: 'mobile_no') final  String? mobileNo;
@override final  String? email;

/// Create a copy of AcctParentRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcctParentRefCopyWith<_AcctParentRef> get copyWith => __$AcctParentRefCopyWithImpl<_AcctParentRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcctParentRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcctParentRef&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,firstName,lastName,mobileNo,email);
}

@override
String toString() {
    return 'AcctParentRef(firstName: $firstName, lastName: $lastName, mobileNo: $mobileNo, email: $email)';
}


}

/// @nodoc
abstract mixin class _$AcctParentRefCopyWith<$Res> implements $AcctParentRefCopyWith<$Res> {
  factory _$AcctParentRefCopyWith(_AcctParentRef value, $Res Function(_AcctParentRef) _then) = __$AcctParentRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'mobile_no') String? mobileNo, String? email
});




}
/// @nodoc
class __$AcctParentRefCopyWithImpl<$Res>
    implements _$AcctParentRefCopyWith<$Res> {
  __$AcctParentRefCopyWithImpl(this._self, this._then);

  final _AcctParentRef _self;
  final $Res Function(_AcctParentRef) _then;

/// Create a copy of AcctParentRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? mobileNo = freezed,Object? email = freezed,}) {
  return _then(_AcctParentRef(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AcctOnlinePayment {

@JsonKey(name: 'payment_id') String get paymentId;@JsonKey(name: 'student_id') String? get studentId;@JsonKey(name: 'transaction_id') String? get transactionId;@JsonKey(name: 'gateway_name') String? get gatewayName;@JsonKey(name: 'payment_method') String? get paymentMethod;@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get amount; String? get currency;/// Pending / Success / Failed (title case, as stored).
@JsonKey(name: 'payment_status') String get paymentStatus;@JsonKey(name: 'payment_date') DateTime? get paymentDate;@JsonKey(name: 'receipt_id') String? get receiptId;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'items_snapshot', fromJson: _snapshotFromJson) List<AcctPendingItem> get items;@JsonKey(name: 'students') AcctStudent? get student;@JsonKey(name: 'parent_accounts', readValue: _readParent) AcctParentRef? get parent;
/// Create a copy of AcctOnlinePayment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcctOnlinePaymentCopyWith<AcctOnlinePayment> get copyWith => _$AcctOnlinePaymentCopyWithImpl<AcctOnlinePayment>(this as AcctOnlinePayment, _$identity);

  /// Serializes this AcctOnlinePayment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AcctOnlinePayment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcctOnlinePayment&&(identical(other.paymentId, _this.paymentId) || other.paymentId == _this.paymentId)&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.transactionId, _this.transactionId) || other.transactionId == _this.transactionId)&&(identical(other.gatewayName, _this.gatewayName) || other.gatewayName == _this.gatewayName)&&(identical(other.paymentMethod, _this.paymentMethod) || other.paymentMethod == _this.paymentMethod)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&(identical(other.paymentStatus, _this.paymentStatus) || other.paymentStatus == _this.paymentStatus)&&(identical(other.paymentDate, _this.paymentDate) || other.paymentDate == _this.paymentDate)&&(identical(other.receiptId, _this.receiptId) || other.receiptId == _this.receiptId)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.student, _this.student) || other.student == _this.student)&&(identical(other.parent, _this.parent) || other.parent == _this.parent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AcctOnlinePayment;
  return Object.hash(runtimeType,_this.paymentId,_this.studentId,_this.transactionId,_this.gatewayName,_this.paymentMethod,_this.amount,_this.currency,_this.paymentStatus,_this.paymentDate,_this.receiptId,_this.createdAt,const DeepCollectionEquality().hash(_this.items),_this.student,_this.parent);
}

@override
String toString() {
  final _this = this as AcctOnlinePayment;
  return 'AcctOnlinePayment(paymentId: ${_this.paymentId}, studentId: ${_this.studentId}, transactionId: ${_this.transactionId}, gatewayName: ${_this.gatewayName}, paymentMethod: ${_this.paymentMethod}, amount: ${_this.amount}, currency: ${_this.currency}, paymentStatus: ${_this.paymentStatus}, paymentDate: ${_this.paymentDate}, receiptId: ${_this.receiptId}, createdAt: ${_this.createdAt}, items: ${_this.items}, student: ${_this.student}, parent: ${_this.parent})';
}


}

/// @nodoc
abstract mixin class $AcctOnlinePaymentCopyWith<$Res>  {
  factory $AcctOnlinePaymentCopyWith(AcctOnlinePayment value, $Res Function(AcctOnlinePayment) _then) = _$AcctOnlinePaymentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'payment_id') String paymentId,@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'transaction_id') String? transactionId,@JsonKey(name: 'gateway_name') String? gatewayName,@JsonKey(name: 'payment_method') String? paymentMethod,@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount, String? currency,@JsonKey(name: 'payment_status') String paymentStatus,@JsonKey(name: 'payment_date') DateTime? paymentDate,@JsonKey(name: 'receipt_id') String? receiptId,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'items_snapshot', fromJson: _snapshotFromJson) List<AcctPendingItem> items,@JsonKey(name: 'students') AcctStudent? student,@JsonKey(name: 'parent_accounts', readValue: _readParent) AcctParentRef? parent
});


$AcctStudentCopyWith<$Res>? get student;$AcctParentRefCopyWith<$Res>? get parent;

}
/// @nodoc
class _$AcctOnlinePaymentCopyWithImpl<$Res>
    implements $AcctOnlinePaymentCopyWith<$Res> {
  _$AcctOnlinePaymentCopyWithImpl(this._self, this._then);

  final AcctOnlinePayment _self;
  final $Res Function(AcctOnlinePayment) _then;

/// Create a copy of AcctOnlinePayment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentId = null,Object? studentId = freezed,Object? transactionId = freezed,Object? gatewayName = freezed,Object? paymentMethod = freezed,Object? amount = null,Object? currency = freezed,Object? paymentStatus = null,Object? paymentDate = freezed,Object? receiptId = freezed,Object? createdAt = freezed,Object? items = null,Object? student = freezed,Object? parent = freezed,}) {
  return _then(AcctOnlinePayment(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,gatewayName: freezed == gatewayName ? _self.gatewayName : gatewayName // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,paymentDate: freezed == paymentDate ? _self.paymentDate : paymentDate // ignore: cast_nullable_to_non_nullable
as DateTime?,receiptId: freezed == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<AcctPendingItem>,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as AcctStudent?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as AcctParentRef?,
  ));
}
/// Create a copy of AcctOnlinePayment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcctStudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $AcctStudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}/// Create a copy of AcctOnlinePayment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcctParentRefCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $AcctParentRefCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}


/// Adds pattern-matching-related methods to [AcctOnlinePayment].
extension AcctOnlinePaymentPatterns on AcctOnlinePayment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcctOnlinePayment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcctOnlinePayment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcctOnlinePayment value)  $default,){
final _that = this;
switch (_that) {
case _AcctOnlinePayment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcctOnlinePayment value)?  $default,){
final _that = this;
switch (_that) {
case _AcctOnlinePayment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'payment_id')  String paymentId, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'transaction_id')  String? transactionId, @JsonKey(name: 'gateway_name')  String? gatewayName, @JsonKey(name: 'payment_method')  String? paymentMethod, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount,  String? currency, @JsonKey(name: 'payment_status')  String paymentStatus, @JsonKey(name: 'payment_date')  DateTime? paymentDate, @JsonKey(name: 'receipt_id')  String? receiptId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'items_snapshot', fromJson: _snapshotFromJson)  List<AcctPendingItem> items, @JsonKey(name: 'students')  AcctStudent? student, @JsonKey(name: 'parent_accounts', readValue: _readParent)  AcctParentRef? parent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcctOnlinePayment() when $default != null:
return $default(_that.paymentId,_that.studentId,_that.transactionId,_that.gatewayName,_that.paymentMethod,_that.amount,_that.currency,_that.paymentStatus,_that.paymentDate,_that.receiptId,_that.createdAt,_that.items,_that.student,_that.parent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'payment_id')  String paymentId, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'transaction_id')  String? transactionId, @JsonKey(name: 'gateway_name')  String? gatewayName, @JsonKey(name: 'payment_method')  String? paymentMethod, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount,  String? currency, @JsonKey(name: 'payment_status')  String paymentStatus, @JsonKey(name: 'payment_date')  DateTime? paymentDate, @JsonKey(name: 'receipt_id')  String? receiptId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'items_snapshot', fromJson: _snapshotFromJson)  List<AcctPendingItem> items, @JsonKey(name: 'students')  AcctStudent? student, @JsonKey(name: 'parent_accounts', readValue: _readParent)  AcctParentRef? parent)  $default,) {final _that = this;
switch (_that) {
case _AcctOnlinePayment():
return $default(_that.paymentId,_that.studentId,_that.transactionId,_that.gatewayName,_that.paymentMethod,_that.amount,_that.currency,_that.paymentStatus,_that.paymentDate,_that.receiptId,_that.createdAt,_that.items,_that.student,_that.parent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'payment_id')  String paymentId, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'transaction_id')  String? transactionId, @JsonKey(name: 'gateway_name')  String? gatewayName, @JsonKey(name: 'payment_method')  String? paymentMethod, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount,  String? currency, @JsonKey(name: 'payment_status')  String paymentStatus, @JsonKey(name: 'payment_date')  DateTime? paymentDate, @JsonKey(name: 'receipt_id')  String? receiptId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'items_snapshot', fromJson: _snapshotFromJson)  List<AcctPendingItem> items, @JsonKey(name: 'students')  AcctStudent? student, @JsonKey(name: 'parent_accounts', readValue: _readParent)  AcctParentRef? parent)?  $default,) {final _that = this;
switch (_that) {
case _AcctOnlinePayment() when $default != null:
return $default(_that.paymentId,_that.studentId,_that.transactionId,_that.gatewayName,_that.paymentMethod,_that.amount,_that.currency,_that.paymentStatus,_that.paymentDate,_that.receiptId,_that.createdAt,_that.items,_that.student,_that.parent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AcctOnlinePayment implements AcctOnlinePayment {
  const _AcctOnlinePayment({@JsonKey(name: 'payment_id') required this.paymentId, @JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'transaction_id') this.transactionId, @JsonKey(name: 'gateway_name') this.gatewayName, @JsonKey(name: 'payment_method') this.paymentMethod, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.amount, this.currency, @JsonKey(name: 'payment_status') this.paymentStatus = 'Pending', @JsonKey(name: 'payment_date') this.paymentDate, @JsonKey(name: 'receipt_id') this.receiptId, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'items_snapshot', fromJson: _snapshotFromJson)  List<AcctPendingItem> items = const [], @JsonKey(name: 'students') this.student, @JsonKey(name: 'parent_accounts', readValue: _readParent) this.parent}): _items = items;
  factory _AcctOnlinePayment.fromJson(Map<String, dynamic> json) => _$AcctOnlinePaymentFromJson(json);

@override@JsonKey(name: 'payment_id') final  String paymentId;
@override@JsonKey(name: 'student_id') final  String? studentId;
@override@JsonKey(name: 'transaction_id') final  String? transactionId;
@override@JsonKey(name: 'gateway_name') final  String? gatewayName;
@override@JsonKey(name: 'payment_method') final  String? paymentMethod;
@override@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal amount;
@override final  String? currency;
/// Pending / Success / Failed (title case, as stored).
@override@JsonKey(name: 'payment_status') final  String paymentStatus;
@override@JsonKey(name: 'payment_date') final  DateTime? paymentDate;
@override@JsonKey(name: 'receipt_id') final  String? receiptId;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
 final  List<AcctPendingItem> _items;
@override@JsonKey(name: 'items_snapshot', fromJson: _snapshotFromJson) List<AcctPendingItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey(name: 'students') final  AcctStudent? student;
@override@JsonKey(name: 'parent_accounts', readValue: _readParent) final  AcctParentRef? parent;

/// Create a copy of AcctOnlinePayment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcctOnlinePaymentCopyWith<_AcctOnlinePayment> get copyWith => __$AcctOnlinePaymentCopyWithImpl<_AcctOnlinePayment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcctOnlinePaymentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcctOnlinePayment&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.gatewayName, gatewayName) || other.gatewayName == gatewayName)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.paymentDate, paymentDate) || other.paymentDate == paymentDate)&&(identical(other.receiptId, receiptId) || other.receiptId == receiptId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.student, student) || other.student == student)&&(identical(other.parent, parent) || other.parent == parent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,paymentId,studentId,transactionId,gatewayName,paymentMethod,amount,currency,paymentStatus,paymentDate,receiptId,createdAt,const DeepCollectionEquality().hash(_items),student,parent);
}

@override
String toString() {
    return 'AcctOnlinePayment(paymentId: $paymentId, studentId: $studentId, transactionId: $transactionId, gatewayName: $gatewayName, paymentMethod: $paymentMethod, amount: $amount, currency: $currency, paymentStatus: $paymentStatus, paymentDate: $paymentDate, receiptId: $receiptId, createdAt: $createdAt, items: $items, student: $student, parent: $parent)';
}


}

/// @nodoc
abstract mixin class _$AcctOnlinePaymentCopyWith<$Res> implements $AcctOnlinePaymentCopyWith<$Res> {
  factory _$AcctOnlinePaymentCopyWith(_AcctOnlinePayment value, $Res Function(_AcctOnlinePayment) _then) = __$AcctOnlinePaymentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'payment_id') String paymentId,@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'transaction_id') String? transactionId,@JsonKey(name: 'gateway_name') String? gatewayName,@JsonKey(name: 'payment_method') String? paymentMethod,@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount, String? currency,@JsonKey(name: 'payment_status') String paymentStatus,@JsonKey(name: 'payment_date') DateTime? paymentDate,@JsonKey(name: 'receipt_id') String? receiptId,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'items_snapshot', fromJson: _snapshotFromJson) List<AcctPendingItem> items,@JsonKey(name: 'students') AcctStudent? student,@JsonKey(name: 'parent_accounts', readValue: _readParent) AcctParentRef? parent
});


@override $AcctStudentCopyWith<$Res>? get student;@override $AcctParentRefCopyWith<$Res>? get parent;

}
/// @nodoc
class __$AcctOnlinePaymentCopyWithImpl<$Res>
    implements _$AcctOnlinePaymentCopyWith<$Res> {
  __$AcctOnlinePaymentCopyWithImpl(this._self, this._then);

  final _AcctOnlinePayment _self;
  final $Res Function(_AcctOnlinePayment) _then;

/// Create a copy of AcctOnlinePayment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentId = null,Object? studentId = freezed,Object? transactionId = freezed,Object? gatewayName = freezed,Object? paymentMethod = freezed,Object? amount = null,Object? currency = freezed,Object? paymentStatus = null,Object? paymentDate = freezed,Object? receiptId = freezed,Object? createdAt = freezed,Object? items = null,Object? student = freezed,Object? parent = freezed,}) {
  return _then(_AcctOnlinePayment(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,gatewayName: freezed == gatewayName ? _self.gatewayName : gatewayName // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,paymentDate: freezed == paymentDate ? _self.paymentDate : paymentDate // ignore: cast_nullable_to_non_nullable
as DateTime?,receiptId: freezed == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<AcctPendingItem>,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as AcctStudent?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as AcctParentRef?,
  ));
}

/// Create a copy of AcctOnlinePayment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcctStudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $AcctStudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}/// Create a copy of AcctOnlinePayment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcctParentRefCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $AcctParentRefCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}


/// @nodoc
mixin _$FeeLateFeeSettings {

@JsonKey(name: 'rate_per_day', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get ratePerDay;@JsonKey(name: 'grace_period_days') int get gracePeriodDays;@JsonKey(name: 'max_fine_per_item', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson) Decimal? get maxFinePerItem;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of FeeLateFeeSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeLateFeeSettingsCopyWith<FeeLateFeeSettings> get copyWith => _$FeeLateFeeSettingsCopyWithImpl<FeeLateFeeSettings>(this as FeeLateFeeSettings, _$identity);

  /// Serializes this FeeLateFeeSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FeeLateFeeSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeLateFeeSettings&&(identical(other.ratePerDay, _this.ratePerDay) || other.ratePerDay == _this.ratePerDay)&&(identical(other.gracePeriodDays, _this.gracePeriodDays) || other.gracePeriodDays == _this.gracePeriodDays)&&(identical(other.maxFinePerItem, _this.maxFinePerItem) || other.maxFinePerItem == _this.maxFinePerItem)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeeLateFeeSettings;
  return Object.hash(runtimeType,_this.ratePerDay,_this.gracePeriodDays,_this.maxFinePerItem,_this.updatedAt);
}

@override
String toString() {
  final _this = this as FeeLateFeeSettings;
  return 'FeeLateFeeSettings(ratePerDay: ${_this.ratePerDay}, gracePeriodDays: ${_this.gracePeriodDays}, maxFinePerItem: ${_this.maxFinePerItem}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $FeeLateFeeSettingsCopyWith<$Res>  {
  factory $FeeLateFeeSettingsCopyWith(FeeLateFeeSettings value, $Res Function(FeeLateFeeSettings) _then) = _$FeeLateFeeSettingsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'rate_per_day', fromJson: decimalFromJson, toJson: decimalToJson) Decimal ratePerDay,@JsonKey(name: 'grace_period_days') int gracePeriodDays,@JsonKey(name: 'max_fine_per_item', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson) Decimal? maxFinePerItem,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$FeeLateFeeSettingsCopyWithImpl<$Res>
    implements $FeeLateFeeSettingsCopyWith<$Res> {
  _$FeeLateFeeSettingsCopyWithImpl(this._self, this._then);

  final FeeLateFeeSettings _self;
  final $Res Function(FeeLateFeeSettings) _then;

/// Create a copy of FeeLateFeeSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ratePerDay = null,Object? gracePeriodDays = null,Object? maxFinePerItem = freezed,Object? updatedAt = freezed,}) {
  return _then(FeeLateFeeSettings(
ratePerDay: null == ratePerDay ? _self.ratePerDay : ratePerDay // ignore: cast_nullable_to_non_nullable
as Decimal,gracePeriodDays: null == gracePeriodDays ? _self.gracePeriodDays : gracePeriodDays // ignore: cast_nullable_to_non_nullable
as int,maxFinePerItem: freezed == maxFinePerItem ? _self.maxFinePerItem : maxFinePerItem // ignore: cast_nullable_to_non_nullable
as Decimal?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [FeeLateFeeSettings].
extension FeeLateFeeSettingsPatterns on FeeLateFeeSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeeLateFeeSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeeLateFeeSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeeLateFeeSettings value)  $default,){
final _that = this;
switch (_that) {
case _FeeLateFeeSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeeLateFeeSettings value)?  $default,){
final _that = this;
switch (_that) {
case _FeeLateFeeSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'rate_per_day', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal ratePerDay, @JsonKey(name: 'grace_period_days')  int gracePeriodDays, @JsonKey(name: 'max_fine_per_item', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson)  Decimal? maxFinePerItem, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeLateFeeSettings() when $default != null:
return $default(_that.ratePerDay,_that.gracePeriodDays,_that.maxFinePerItem,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'rate_per_day', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal ratePerDay, @JsonKey(name: 'grace_period_days')  int gracePeriodDays, @JsonKey(name: 'max_fine_per_item', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson)  Decimal? maxFinePerItem, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _FeeLateFeeSettings():
return $default(_that.ratePerDay,_that.gracePeriodDays,_that.maxFinePerItem,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'rate_per_day', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal ratePerDay, @JsonKey(name: 'grace_period_days')  int gracePeriodDays, @JsonKey(name: 'max_fine_per_item', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson)  Decimal? maxFinePerItem, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _FeeLateFeeSettings() when $default != null:
return $default(_that.ratePerDay,_that.gracePeriodDays,_that.maxFinePerItem,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeLateFeeSettings implements FeeLateFeeSettings {
  const _FeeLateFeeSettings({@JsonKey(name: 'rate_per_day', fromJson: decimalFromJson, toJson: decimalToJson) required this.ratePerDay, @JsonKey(name: 'grace_period_days') this.gracePeriodDays = 0, @JsonKey(name: 'max_fine_per_item', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson) this.maxFinePerItem, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _FeeLateFeeSettings.fromJson(Map<String, dynamic> json) => _$FeeLateFeeSettingsFromJson(json);

@override@JsonKey(name: 'rate_per_day', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal ratePerDay;
@override@JsonKey(name: 'grace_period_days') final  int gracePeriodDays;
@override@JsonKey(name: 'max_fine_per_item', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson) final  Decimal? maxFinePerItem;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of FeeLateFeeSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeLateFeeSettingsCopyWith<_FeeLateFeeSettings> get copyWith => __$FeeLateFeeSettingsCopyWithImpl<_FeeLateFeeSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeLateFeeSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeLateFeeSettings&&(identical(other.ratePerDay, ratePerDay) || other.ratePerDay == ratePerDay)&&(identical(other.gracePeriodDays, gracePeriodDays) || other.gracePeriodDays == gracePeriodDays)&&(identical(other.maxFinePerItem, maxFinePerItem) || other.maxFinePerItem == maxFinePerItem)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,ratePerDay,gracePeriodDays,maxFinePerItem,updatedAt);
}

@override
String toString() {
    return 'FeeLateFeeSettings(ratePerDay: $ratePerDay, gracePeriodDays: $gracePeriodDays, maxFinePerItem: $maxFinePerItem, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$FeeLateFeeSettingsCopyWith<$Res> implements $FeeLateFeeSettingsCopyWith<$Res> {
  factory _$FeeLateFeeSettingsCopyWith(_FeeLateFeeSettings value, $Res Function(_FeeLateFeeSettings) _then) = __$FeeLateFeeSettingsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'rate_per_day', fromJson: decimalFromJson, toJson: decimalToJson) Decimal ratePerDay,@JsonKey(name: 'grace_period_days') int gracePeriodDays,@JsonKey(name: 'max_fine_per_item', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson) Decimal? maxFinePerItem,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$FeeLateFeeSettingsCopyWithImpl<$Res>
    implements _$FeeLateFeeSettingsCopyWith<$Res> {
  __$FeeLateFeeSettingsCopyWithImpl(this._self, this._then);

  final _FeeLateFeeSettings _self;
  final $Res Function(_FeeLateFeeSettings) _then;

/// Create a copy of FeeLateFeeSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ratePerDay = null,Object? gracePeriodDays = null,Object? maxFinePerItem = freezed,Object? updatedAt = freezed,}) {
  return _then(_FeeLateFeeSettings(
ratePerDay: null == ratePerDay ? _self.ratePerDay : ratePerDay // ignore: cast_nullable_to_non_nullable
as Decimal,gracePeriodDays: null == gracePeriodDays ? _self.gracePeriodDays : gracePeriodDays // ignore: cast_nullable_to_non_nullable
as int,maxFinePerItem: freezed == maxFinePerItem ? _self.maxFinePerItem : maxFinePerItem // ignore: cast_nullable_to_non_nullable
as Decimal?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
