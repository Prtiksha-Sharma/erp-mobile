// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_fees.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeeSummary {

@JsonKey(name: 'total_paid')@DecimalConverter() Decimal get totalPaid;@JsonKey(name: 'receipt_count') int get receiptCount;
/// Create a copy of FeeSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeSummaryCopyWith<FeeSummary> get copyWith => _$FeeSummaryCopyWithImpl<FeeSummary>(this as FeeSummary, _$identity);

  /// Serializes this FeeSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FeeSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeSummary&&(identical(other.totalPaid, _this.totalPaid) || other.totalPaid == _this.totalPaid)&&(identical(other.receiptCount, _this.receiptCount) || other.receiptCount == _this.receiptCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeeSummary;
  return Object.hash(runtimeType,_this.totalPaid,_this.receiptCount);
}

@override
String toString() {
  final _this = this as FeeSummary;
  return 'FeeSummary(totalPaid: ${_this.totalPaid}, receiptCount: ${_this.receiptCount})';
}


}

/// @nodoc
abstract mixin class $FeeSummaryCopyWith<$Res>  {
  factory $FeeSummaryCopyWith(FeeSummary value, $Res Function(FeeSummary) _then) = _$FeeSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_paid')@DecimalConverter() Decimal totalPaid,@JsonKey(name: 'receipt_count') int receiptCount
});




}
/// @nodoc
class _$FeeSummaryCopyWithImpl<$Res>
    implements $FeeSummaryCopyWith<$Res> {
  _$FeeSummaryCopyWithImpl(this._self, this._then);

  final FeeSummary _self;
  final $Res Function(FeeSummary) _then;

/// Create a copy of FeeSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalPaid = null,Object? receiptCount = null,}) {
  return _then(FeeSummary(
totalPaid: null == totalPaid ? _self.totalPaid : totalPaid // ignore: cast_nullable_to_non_nullable
as Decimal,receiptCount: null == receiptCount ? _self.receiptCount : receiptCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FeeSummary].
extension FeeSummaryPatterns on FeeSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeeSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeeSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeeSummary value)  $default,){
final _that = this;
switch (_that) {
case _FeeSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeeSummary value)?  $default,){
final _that = this;
switch (_that) {
case _FeeSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_paid')@DecimalConverter()  Decimal totalPaid, @JsonKey(name: 'receipt_count')  int receiptCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeSummary() when $default != null:
return $default(_that.totalPaid,_that.receiptCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_paid')@DecimalConverter()  Decimal totalPaid, @JsonKey(name: 'receipt_count')  int receiptCount)  $default,) {final _that = this;
switch (_that) {
case _FeeSummary():
return $default(_that.totalPaid,_that.receiptCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_paid')@DecimalConverter()  Decimal totalPaid, @JsonKey(name: 'receipt_count')  int receiptCount)?  $default,) {final _that = this;
switch (_that) {
case _FeeSummary() when $default != null:
return $default(_that.totalPaid,_that.receiptCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeSummary implements FeeSummary {
  const _FeeSummary({@JsonKey(name: 'total_paid')@DecimalConverter() required this.totalPaid, @JsonKey(name: 'receipt_count') this.receiptCount = 0});
  factory _FeeSummary.fromJson(Map<String, dynamic> json) => _$FeeSummaryFromJson(json);

@override@JsonKey(name: 'total_paid')@DecimalConverter() final  Decimal totalPaid;
@override@JsonKey(name: 'receipt_count') final  int receiptCount;

/// Create a copy of FeeSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeSummaryCopyWith<_FeeSummary> get copyWith => __$FeeSummaryCopyWithImpl<_FeeSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeSummary&&(identical(other.totalPaid, totalPaid) || other.totalPaid == totalPaid)&&(identical(other.receiptCount, receiptCount) || other.receiptCount == receiptCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,totalPaid,receiptCount);
}

@override
String toString() {
    return 'FeeSummary(totalPaid: $totalPaid, receiptCount: $receiptCount)';
}


}

/// @nodoc
abstract mixin class _$FeeSummaryCopyWith<$Res> implements $FeeSummaryCopyWith<$Res> {
  factory _$FeeSummaryCopyWith(_FeeSummary value, $Res Function(_FeeSummary) _then) = __$FeeSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_paid')@DecimalConverter() Decimal totalPaid,@JsonKey(name: 'receipt_count') int receiptCount
});




}
/// @nodoc
class __$FeeSummaryCopyWithImpl<$Res>
    implements _$FeeSummaryCopyWith<$Res> {
  __$FeeSummaryCopyWithImpl(this._self, this._then);

  final _FeeSummary _self;
  final $Res Function(_FeeSummary) _then;

/// Create a copy of FeeSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalPaid = null,Object? receiptCount = null,}) {
  return _then(_FeeSummary(
totalPaid: null == totalPaid ? _self.totalPaid : totalPaid // ignore: cast_nullable_to_non_nullable
as Decimal,receiptCount: null == receiptCount ? _self.receiptCount : receiptCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$FeeReceipt {

@JsonKey(name: 'receipt_id') String get receiptId;@JsonKey(name: 'receipt_no') String get receiptNo;@JsonKey(name: 'receipt_date') DateTime? get receiptDate;@JsonKey(name: 'net_amount')@DecimalConverter() Decimal get netAmount;@JsonKey(name: 'payment_mode') String? get paymentMode;@JsonKey(name: 'receipt_status') String? get receiptStatus;@JsonKey(name: 'student_fee_receipt_items') List<FeeReceiptItem> get items;
/// Create a copy of FeeReceipt
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeReceiptCopyWith<FeeReceipt> get copyWith => _$FeeReceiptCopyWithImpl<FeeReceipt>(this as FeeReceipt, _$identity);

  /// Serializes this FeeReceipt to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FeeReceipt;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeReceipt&&(identical(other.receiptId, _this.receiptId) || other.receiptId == _this.receiptId)&&(identical(other.receiptNo, _this.receiptNo) || other.receiptNo == _this.receiptNo)&&(identical(other.receiptDate, _this.receiptDate) || other.receiptDate == _this.receiptDate)&&(identical(other.netAmount, _this.netAmount) || other.netAmount == _this.netAmount)&&(identical(other.paymentMode, _this.paymentMode) || other.paymentMode == _this.paymentMode)&&(identical(other.receiptStatus, _this.receiptStatus) || other.receiptStatus == _this.receiptStatus)&&const DeepCollectionEquality().equals(other.items, _this.items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeeReceipt;
  return Object.hash(runtimeType,_this.receiptId,_this.receiptNo,_this.receiptDate,_this.netAmount,_this.paymentMode,_this.receiptStatus,const DeepCollectionEquality().hash(_this.items));
}

@override
String toString() {
  final _this = this as FeeReceipt;
  return 'FeeReceipt(receiptId: ${_this.receiptId}, receiptNo: ${_this.receiptNo}, receiptDate: ${_this.receiptDate}, netAmount: ${_this.netAmount}, paymentMode: ${_this.paymentMode}, receiptStatus: ${_this.receiptStatus}, items: ${_this.items})';
}


}

/// @nodoc
abstract mixin class $FeeReceiptCopyWith<$Res>  {
  factory $FeeReceiptCopyWith(FeeReceipt value, $Res Function(FeeReceipt) _then) = _$FeeReceiptCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'receipt_id') String receiptId,@JsonKey(name: 'receipt_no') String receiptNo,@JsonKey(name: 'receipt_date') DateTime? receiptDate,@JsonKey(name: 'net_amount')@DecimalConverter() Decimal netAmount,@JsonKey(name: 'payment_mode') String? paymentMode,@JsonKey(name: 'receipt_status') String? receiptStatus,@JsonKey(name: 'student_fee_receipt_items') List<FeeReceiptItem> items
});




}
/// @nodoc
class _$FeeReceiptCopyWithImpl<$Res>
    implements $FeeReceiptCopyWith<$Res> {
  _$FeeReceiptCopyWithImpl(this._self, this._then);

  final FeeReceipt _self;
  final $Res Function(FeeReceipt) _then;

/// Create a copy of FeeReceipt
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiptId = null,Object? receiptNo = null,Object? receiptDate = freezed,Object? netAmount = null,Object? paymentMode = freezed,Object? receiptStatus = freezed,Object? items = null,}) {
  return _then(FeeReceipt(
receiptId: null == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String,receiptNo: null == receiptNo ? _self.receiptNo : receiptNo // ignore: cast_nullable_to_non_nullable
as String,receiptDate: freezed == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as DateTime?,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as Decimal,paymentMode: freezed == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String?,receiptStatus: freezed == receiptStatus ? _self.receiptStatus : receiptStatus // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<FeeReceiptItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [FeeReceipt].
extension FeeReceiptPatterns on FeeReceipt {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeeReceipt value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeeReceipt() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeeReceipt value)  $default,){
final _that = this;
switch (_that) {
case _FeeReceipt():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeeReceipt value)?  $default,){
final _that = this;
switch (_that) {
case _FeeReceipt() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'receipt_id')  String receiptId, @JsonKey(name: 'receipt_no')  String receiptNo, @JsonKey(name: 'receipt_date')  DateTime? receiptDate, @JsonKey(name: 'net_amount')@DecimalConverter()  Decimal netAmount, @JsonKey(name: 'payment_mode')  String? paymentMode, @JsonKey(name: 'receipt_status')  String? receiptStatus, @JsonKey(name: 'student_fee_receipt_items')  List<FeeReceiptItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeReceipt() when $default != null:
return $default(_that.receiptId,_that.receiptNo,_that.receiptDate,_that.netAmount,_that.paymentMode,_that.receiptStatus,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'receipt_id')  String receiptId, @JsonKey(name: 'receipt_no')  String receiptNo, @JsonKey(name: 'receipt_date')  DateTime? receiptDate, @JsonKey(name: 'net_amount')@DecimalConverter()  Decimal netAmount, @JsonKey(name: 'payment_mode')  String? paymentMode, @JsonKey(name: 'receipt_status')  String? receiptStatus, @JsonKey(name: 'student_fee_receipt_items')  List<FeeReceiptItem> items)  $default,) {final _that = this;
switch (_that) {
case _FeeReceipt():
return $default(_that.receiptId,_that.receiptNo,_that.receiptDate,_that.netAmount,_that.paymentMode,_that.receiptStatus,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'receipt_id')  String receiptId, @JsonKey(name: 'receipt_no')  String receiptNo, @JsonKey(name: 'receipt_date')  DateTime? receiptDate, @JsonKey(name: 'net_amount')@DecimalConverter()  Decimal netAmount, @JsonKey(name: 'payment_mode')  String? paymentMode, @JsonKey(name: 'receipt_status')  String? receiptStatus, @JsonKey(name: 'student_fee_receipt_items')  List<FeeReceiptItem> items)?  $default,) {final _that = this;
switch (_that) {
case _FeeReceipt() when $default != null:
return $default(_that.receiptId,_that.receiptNo,_that.receiptDate,_that.netAmount,_that.paymentMode,_that.receiptStatus,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeReceipt implements FeeReceipt {
  const _FeeReceipt({@JsonKey(name: 'receipt_id') required this.receiptId, @JsonKey(name: 'receipt_no') required this.receiptNo, @JsonKey(name: 'receipt_date') this.receiptDate, @JsonKey(name: 'net_amount')@DecimalConverter() required this.netAmount, @JsonKey(name: 'payment_mode') this.paymentMode, @JsonKey(name: 'receipt_status') this.receiptStatus, @JsonKey(name: 'student_fee_receipt_items')  List<FeeReceiptItem> items = const []}): _items = items;
  factory _FeeReceipt.fromJson(Map<String, dynamic> json) => _$FeeReceiptFromJson(json);

@override@JsonKey(name: 'receipt_id') final  String receiptId;
@override@JsonKey(name: 'receipt_no') final  String receiptNo;
@override@JsonKey(name: 'receipt_date') final  DateTime? receiptDate;
@override@JsonKey(name: 'net_amount')@DecimalConverter() final  Decimal netAmount;
@override@JsonKey(name: 'payment_mode') final  String? paymentMode;
@override@JsonKey(name: 'receipt_status') final  String? receiptStatus;
 final  List<FeeReceiptItem> _items;
@override@JsonKey(name: 'student_fee_receipt_items') List<FeeReceiptItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of FeeReceipt
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeReceiptCopyWith<_FeeReceipt> get copyWith => __$FeeReceiptCopyWithImpl<_FeeReceipt>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeReceiptToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeReceipt&&(identical(other.receiptId, receiptId) || other.receiptId == receiptId)&&(identical(other.receiptNo, receiptNo) || other.receiptNo == receiptNo)&&(identical(other.receiptDate, receiptDate) || other.receiptDate == receiptDate)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.receiptStatus, receiptStatus) || other.receiptStatus == receiptStatus)&&const DeepCollectionEquality().equals(other.items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,receiptId,receiptNo,receiptDate,netAmount,paymentMode,receiptStatus,const DeepCollectionEquality().hash(_items));
}

@override
String toString() {
    return 'FeeReceipt(receiptId: $receiptId, receiptNo: $receiptNo, receiptDate: $receiptDate, netAmount: $netAmount, paymentMode: $paymentMode, receiptStatus: $receiptStatus, items: $items)';
}


}

/// @nodoc
abstract mixin class _$FeeReceiptCopyWith<$Res> implements $FeeReceiptCopyWith<$Res> {
  factory _$FeeReceiptCopyWith(_FeeReceipt value, $Res Function(_FeeReceipt) _then) = __$FeeReceiptCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'receipt_id') String receiptId,@JsonKey(name: 'receipt_no') String receiptNo,@JsonKey(name: 'receipt_date') DateTime? receiptDate,@JsonKey(name: 'net_amount')@DecimalConverter() Decimal netAmount,@JsonKey(name: 'payment_mode') String? paymentMode,@JsonKey(name: 'receipt_status') String? receiptStatus,@JsonKey(name: 'student_fee_receipt_items') List<FeeReceiptItem> items
});




}
/// @nodoc
class __$FeeReceiptCopyWithImpl<$Res>
    implements _$FeeReceiptCopyWith<$Res> {
  __$FeeReceiptCopyWithImpl(this._self, this._then);

  final _FeeReceipt _self;
  final $Res Function(_FeeReceipt) _then;

/// Create a copy of FeeReceipt
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiptId = null,Object? receiptNo = null,Object? receiptDate = freezed,Object? netAmount = null,Object? paymentMode = freezed,Object? receiptStatus = freezed,Object? items = null,}) {
  return _then(_FeeReceipt(
receiptId: null == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String,receiptNo: null == receiptNo ? _self.receiptNo : receiptNo // ignore: cast_nullable_to_non_nullable
as String,receiptDate: freezed == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as DateTime?,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as Decimal,paymentMode: freezed == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String?,receiptStatus: freezed == receiptStatus ? _self.receiptStatus : receiptStatus // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<FeeReceiptItem>,
  ));
}


}


/// @nodoc
mixin _$FeeReceiptItem {

@JsonKey(name: 'receipt_item_id') String get receiptItemId;@JsonKey(name: 'fee_head_name') String get feeHeadName;@JsonKey(name: 'net_amount')@DecimalConverter() Decimal get netAmount;
/// Create a copy of FeeReceiptItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeReceiptItemCopyWith<FeeReceiptItem> get copyWith => _$FeeReceiptItemCopyWithImpl<FeeReceiptItem>(this as FeeReceiptItem, _$identity);

  /// Serializes this FeeReceiptItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FeeReceiptItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeReceiptItem&&(identical(other.receiptItemId, _this.receiptItemId) || other.receiptItemId == _this.receiptItemId)&&(identical(other.feeHeadName, _this.feeHeadName) || other.feeHeadName == _this.feeHeadName)&&(identical(other.netAmount, _this.netAmount) || other.netAmount == _this.netAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeeReceiptItem;
  return Object.hash(runtimeType,_this.receiptItemId,_this.feeHeadName,_this.netAmount);
}

@override
String toString() {
  final _this = this as FeeReceiptItem;
  return 'FeeReceiptItem(receiptItemId: ${_this.receiptItemId}, feeHeadName: ${_this.feeHeadName}, netAmount: ${_this.netAmount})';
}


}

/// @nodoc
abstract mixin class $FeeReceiptItemCopyWith<$Res>  {
  factory $FeeReceiptItemCopyWith(FeeReceiptItem value, $Res Function(FeeReceiptItem) _then) = _$FeeReceiptItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'receipt_item_id') String receiptItemId,@JsonKey(name: 'fee_head_name') String feeHeadName,@JsonKey(name: 'net_amount')@DecimalConverter() Decimal netAmount
});




}
/// @nodoc
class _$FeeReceiptItemCopyWithImpl<$Res>
    implements $FeeReceiptItemCopyWith<$Res> {
  _$FeeReceiptItemCopyWithImpl(this._self, this._then);

  final FeeReceiptItem _self;
  final $Res Function(FeeReceiptItem) _then;

/// Create a copy of FeeReceiptItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiptItemId = null,Object? feeHeadName = null,Object? netAmount = null,}) {
  return _then(FeeReceiptItem(
receiptItemId: null == receiptItemId ? _self.receiptItemId : receiptItemId // ignore: cast_nullable_to_non_nullable
as String,feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

}


/// Adds pattern-matching-related methods to [FeeReceiptItem].
extension FeeReceiptItemPatterns on FeeReceiptItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeeReceiptItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeeReceiptItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeeReceiptItem value)  $default,){
final _that = this;
switch (_that) {
case _FeeReceiptItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeeReceiptItem value)?  $default,){
final _that = this;
switch (_that) {
case _FeeReceiptItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'receipt_item_id')  String receiptItemId, @JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'net_amount')@DecimalConverter()  Decimal netAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeReceiptItem() when $default != null:
return $default(_that.receiptItemId,_that.feeHeadName,_that.netAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'receipt_item_id')  String receiptItemId, @JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'net_amount')@DecimalConverter()  Decimal netAmount)  $default,) {final _that = this;
switch (_that) {
case _FeeReceiptItem():
return $default(_that.receiptItemId,_that.feeHeadName,_that.netAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'receipt_item_id')  String receiptItemId, @JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'net_amount')@DecimalConverter()  Decimal netAmount)?  $default,) {final _that = this;
switch (_that) {
case _FeeReceiptItem() when $default != null:
return $default(_that.receiptItemId,_that.feeHeadName,_that.netAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeReceiptItem implements FeeReceiptItem {
  const _FeeReceiptItem({@JsonKey(name: 'receipt_item_id') required this.receiptItemId, @JsonKey(name: 'fee_head_name') required this.feeHeadName, @JsonKey(name: 'net_amount')@DecimalConverter() required this.netAmount});
  factory _FeeReceiptItem.fromJson(Map<String, dynamic> json) => _$FeeReceiptItemFromJson(json);

@override@JsonKey(name: 'receipt_item_id') final  String receiptItemId;
@override@JsonKey(name: 'fee_head_name') final  String feeHeadName;
@override@JsonKey(name: 'net_amount')@DecimalConverter() final  Decimal netAmount;

/// Create a copy of FeeReceiptItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeReceiptItemCopyWith<_FeeReceiptItem> get copyWith => __$FeeReceiptItemCopyWithImpl<_FeeReceiptItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeReceiptItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeReceiptItem&&(identical(other.receiptItemId, receiptItemId) || other.receiptItemId == receiptItemId)&&(identical(other.feeHeadName, feeHeadName) || other.feeHeadName == feeHeadName)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,receiptItemId,feeHeadName,netAmount);
}

@override
String toString() {
    return 'FeeReceiptItem(receiptItemId: $receiptItemId, feeHeadName: $feeHeadName, netAmount: $netAmount)';
}


}

/// @nodoc
abstract mixin class _$FeeReceiptItemCopyWith<$Res> implements $FeeReceiptItemCopyWith<$Res> {
  factory _$FeeReceiptItemCopyWith(_FeeReceiptItem value, $Res Function(_FeeReceiptItem) _then) = __$FeeReceiptItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'receipt_item_id') String receiptItemId,@JsonKey(name: 'fee_head_name') String feeHeadName,@JsonKey(name: 'net_amount')@DecimalConverter() Decimal netAmount
});




}
/// @nodoc
class __$FeeReceiptItemCopyWithImpl<$Res>
    implements _$FeeReceiptItemCopyWith<$Res> {
  __$FeeReceiptItemCopyWithImpl(this._self, this._then);

  final _FeeReceiptItem _self;
  final $Res Function(_FeeReceiptItem) _then;

/// Create a copy of FeeReceiptItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiptItemId = null,Object? feeHeadName = null,Object? netAmount = null,}) {
  return _then(_FeeReceiptItem(
receiptItemId: null == receiptItemId ? _self.receiptItemId : receiptItemId // ignore: cast_nullable_to_non_nullable
as String,feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}


}


/// @nodoc
mixin _$PendingDues {

 List<PendingDueItem> get items;@JsonKey(name: 'total_due')@DecimalConverter() Decimal get totalDue;
/// Create a copy of PendingDues
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendingDuesCopyWith<PendingDues> get copyWith => _$PendingDuesCopyWithImpl<PendingDues>(this as PendingDues, _$identity);

  /// Serializes this PendingDues to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PendingDues;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingDues&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.totalDue, _this.totalDue) || other.totalDue == _this.totalDue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PendingDues;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.totalDue);
}

@override
String toString() {
  final _this = this as PendingDues;
  return 'PendingDues(items: ${_this.items}, totalDue: ${_this.totalDue})';
}


}

/// @nodoc
abstract mixin class $PendingDuesCopyWith<$Res>  {
  factory $PendingDuesCopyWith(PendingDues value, $Res Function(PendingDues) _then) = _$PendingDuesCopyWithImpl;
@useResult
$Res call({
 List<PendingDueItem> items,@JsonKey(name: 'total_due')@DecimalConverter() Decimal totalDue
});




}
/// @nodoc
class _$PendingDuesCopyWithImpl<$Res>
    implements $PendingDuesCopyWith<$Res> {
  _$PendingDuesCopyWithImpl(this._self, this._then);

  final PendingDues _self;
  final $Res Function(PendingDues) _then;

/// Create a copy of PendingDues
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? totalDue = null,}) {
  return _then(PendingDues(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<PendingDueItem>,totalDue: null == totalDue ? _self.totalDue : totalDue // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

}


/// Adds pattern-matching-related methods to [PendingDues].
extension PendingDuesPatterns on PendingDues {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PendingDues value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PendingDues() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PendingDues value)  $default,){
final _that = this;
switch (_that) {
case _PendingDues():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PendingDues value)?  $default,){
final _that = this;
switch (_that) {
case _PendingDues() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PendingDueItem> items, @JsonKey(name: 'total_due')@DecimalConverter()  Decimal totalDue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PendingDues() when $default != null:
return $default(_that.items,_that.totalDue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PendingDueItem> items, @JsonKey(name: 'total_due')@DecimalConverter()  Decimal totalDue)  $default,) {final _that = this;
switch (_that) {
case _PendingDues():
return $default(_that.items,_that.totalDue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PendingDueItem> items, @JsonKey(name: 'total_due')@DecimalConverter()  Decimal totalDue)?  $default,) {final _that = this;
switch (_that) {
case _PendingDues() when $default != null:
return $default(_that.items,_that.totalDue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PendingDues implements PendingDues {
  const _PendingDues({ List<PendingDueItem> items = const [], @JsonKey(name: 'total_due')@DecimalConverter() required this.totalDue}): _items = items;
  factory _PendingDues.fromJson(Map<String, dynamic> json) => _$PendingDuesFromJson(json);

 final  List<PendingDueItem> _items;
@override@JsonKey() List<PendingDueItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey(name: 'total_due')@DecimalConverter() final  Decimal totalDue;

/// Create a copy of PendingDues
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PendingDuesCopyWith<_PendingDues> get copyWith => __$PendingDuesCopyWithImpl<_PendingDues>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PendingDuesToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PendingDues&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.totalDue, totalDue) || other.totalDue == totalDue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),totalDue);
}

@override
String toString() {
    return 'PendingDues(items: $items, totalDue: $totalDue)';
}


}

/// @nodoc
abstract mixin class _$PendingDuesCopyWith<$Res> implements $PendingDuesCopyWith<$Res> {
  factory _$PendingDuesCopyWith(_PendingDues value, $Res Function(_PendingDues) _then) = __$PendingDuesCopyWithImpl;
@override @useResult
$Res call({
 List<PendingDueItem> items,@JsonKey(name: 'total_due')@DecimalConverter() Decimal totalDue
});




}
/// @nodoc
class __$PendingDuesCopyWithImpl<$Res>
    implements _$PendingDuesCopyWith<$Res> {
  __$PendingDuesCopyWithImpl(this._self, this._then);

  final _PendingDues _self;
  final $Res Function(_PendingDues) _then;

/// Create a copy of PendingDues
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? totalDue = null,}) {
  return _then(_PendingDues(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<PendingDueItem>,totalDue: null == totalDue ? _self.totalDue : totalDue // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}


}


/// @nodoc
mixin _$PendingDueItem {

@JsonKey(name: 'fee_structure_id') String? get feeStructureId;@JsonKey(name: 'fee_head_id') String get feeHeadId;@JsonKey(name: 'fee_head_name') String get feeHeadName;@JsonKey(name: 'due_date') DateTime? get dueDate;@DecimalConverter() Decimal get amount;@JsonKey(name: 'net_due')@DecimalConverter() Decimal get netDue; String get status;
/// Create a copy of PendingDueItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendingDueItemCopyWith<PendingDueItem> get copyWith => _$PendingDueItemCopyWithImpl<PendingDueItem>(this as PendingDueItem, _$identity);

  /// Serializes this PendingDueItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PendingDueItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingDueItem&&(identical(other.feeStructureId, _this.feeStructureId) || other.feeStructureId == _this.feeStructureId)&&(identical(other.feeHeadId, _this.feeHeadId) || other.feeHeadId == _this.feeHeadId)&&(identical(other.feeHeadName, _this.feeHeadName) || other.feeHeadName == _this.feeHeadName)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.netDue, _this.netDue) || other.netDue == _this.netDue)&&(identical(other.status, _this.status) || other.status == _this.status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PendingDueItem;
  return Object.hash(runtimeType,_this.feeStructureId,_this.feeHeadId,_this.feeHeadName,_this.dueDate,_this.amount,_this.netDue,_this.status);
}

@override
String toString() {
  final _this = this as PendingDueItem;
  return 'PendingDueItem(feeStructureId: ${_this.feeStructureId}, feeHeadId: ${_this.feeHeadId}, feeHeadName: ${_this.feeHeadName}, dueDate: ${_this.dueDate}, amount: ${_this.amount}, netDue: ${_this.netDue}, status: ${_this.status})';
}


}

/// @nodoc
abstract mixin class $PendingDueItemCopyWith<$Res>  {
  factory $PendingDueItemCopyWith(PendingDueItem value, $Res Function(PendingDueItem) _then) = _$PendingDueItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fee_structure_id') String? feeStructureId,@JsonKey(name: 'fee_head_id') String feeHeadId,@JsonKey(name: 'fee_head_name') String feeHeadName,@JsonKey(name: 'due_date') DateTime? dueDate,@DecimalConverter() Decimal amount,@JsonKey(name: 'net_due')@DecimalConverter() Decimal netDue, String status
});




}
/// @nodoc
class _$PendingDueItemCopyWithImpl<$Res>
    implements $PendingDueItemCopyWith<$Res> {
  _$PendingDueItemCopyWithImpl(this._self, this._then);

  final PendingDueItem _self;
  final $Res Function(PendingDueItem) _then;

/// Create a copy of PendingDueItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feeStructureId = freezed,Object? feeHeadId = null,Object? feeHeadName = null,Object? dueDate = freezed,Object? amount = null,Object? netDue = null,Object? status = null,}) {
  return _then(PendingDueItem(
feeStructureId: freezed == feeStructureId ? _self.feeStructureId : feeStructureId // ignore: cast_nullable_to_non_nullable
as String?,feeHeadId: null == feeHeadId ? _self.feeHeadId : feeHeadId // ignore: cast_nullable_to_non_nullable
as String,feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,netDue: null == netDue ? _self.netDue : netDue // ignore: cast_nullable_to_non_nullable
as Decimal,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PendingDueItem].
extension PendingDueItemPatterns on PendingDueItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PendingDueItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PendingDueItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PendingDueItem value)  $default,){
final _that = this;
switch (_that) {
case _PendingDueItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PendingDueItem value)?  $default,){
final _that = this;
switch (_that) {
case _PendingDueItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_structure_id')  String? feeStructureId, @JsonKey(name: 'fee_head_id')  String feeHeadId, @JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'due_date')  DateTime? dueDate, @DecimalConverter()  Decimal amount, @JsonKey(name: 'net_due')@DecimalConverter()  Decimal netDue,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PendingDueItem() when $default != null:
return $default(_that.feeStructureId,_that.feeHeadId,_that.feeHeadName,_that.dueDate,_that.amount,_that.netDue,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_structure_id')  String? feeStructureId, @JsonKey(name: 'fee_head_id')  String feeHeadId, @JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'due_date')  DateTime? dueDate, @DecimalConverter()  Decimal amount, @JsonKey(name: 'net_due')@DecimalConverter()  Decimal netDue,  String status)  $default,) {final _that = this;
switch (_that) {
case _PendingDueItem():
return $default(_that.feeStructureId,_that.feeHeadId,_that.feeHeadName,_that.dueDate,_that.amount,_that.netDue,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fee_structure_id')  String? feeStructureId, @JsonKey(name: 'fee_head_id')  String feeHeadId, @JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'due_date')  DateTime? dueDate, @DecimalConverter()  Decimal amount, @JsonKey(name: 'net_due')@DecimalConverter()  Decimal netDue,  String status)?  $default,) {final _that = this;
switch (_that) {
case _PendingDueItem() when $default != null:
return $default(_that.feeStructureId,_that.feeHeadId,_that.feeHeadName,_that.dueDate,_that.amount,_that.netDue,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PendingDueItem implements PendingDueItem {
  const _PendingDueItem({@JsonKey(name: 'fee_structure_id') this.feeStructureId, @JsonKey(name: 'fee_head_id') required this.feeHeadId, @JsonKey(name: 'fee_head_name') required this.feeHeadName, @JsonKey(name: 'due_date') this.dueDate, @DecimalConverter() required this.amount, @JsonKey(name: 'net_due')@DecimalConverter() required this.netDue, required this.status});
  factory _PendingDueItem.fromJson(Map<String, dynamic> json) => _$PendingDueItemFromJson(json);

@override@JsonKey(name: 'fee_structure_id') final  String? feeStructureId;
@override@JsonKey(name: 'fee_head_id') final  String feeHeadId;
@override@JsonKey(name: 'fee_head_name') final  String feeHeadName;
@override@JsonKey(name: 'due_date') final  DateTime? dueDate;
@override@DecimalConverter() final  Decimal amount;
@override@JsonKey(name: 'net_due')@DecimalConverter() final  Decimal netDue;
@override final  String status;

/// Create a copy of PendingDueItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PendingDueItemCopyWith<_PendingDueItem> get copyWith => __$PendingDueItemCopyWithImpl<_PendingDueItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PendingDueItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PendingDueItem&&(identical(other.feeStructureId, feeStructureId) || other.feeStructureId == feeStructureId)&&(identical(other.feeHeadId, feeHeadId) || other.feeHeadId == feeHeadId)&&(identical(other.feeHeadName, feeHeadName) || other.feeHeadName == feeHeadName)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.netDue, netDue) || other.netDue == netDue)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,feeStructureId,feeHeadId,feeHeadName,dueDate,amount,netDue,status);
}

@override
String toString() {
    return 'PendingDueItem(feeStructureId: $feeStructureId, feeHeadId: $feeHeadId, feeHeadName: $feeHeadName, dueDate: $dueDate, amount: $amount, netDue: $netDue, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PendingDueItemCopyWith<$Res> implements $PendingDueItemCopyWith<$Res> {
  factory _$PendingDueItemCopyWith(_PendingDueItem value, $Res Function(_PendingDueItem) _then) = __$PendingDueItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fee_structure_id') String? feeStructureId,@JsonKey(name: 'fee_head_id') String feeHeadId,@JsonKey(name: 'fee_head_name') String feeHeadName,@JsonKey(name: 'due_date') DateTime? dueDate,@DecimalConverter() Decimal amount,@JsonKey(name: 'net_due')@DecimalConverter() Decimal netDue, String status
});




}
/// @nodoc
class __$PendingDueItemCopyWithImpl<$Res>
    implements _$PendingDueItemCopyWith<$Res> {
  __$PendingDueItemCopyWithImpl(this._self, this._then);

  final _PendingDueItem _self;
  final $Res Function(_PendingDueItem) _then;

/// Create a copy of PendingDueItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feeStructureId = freezed,Object? feeHeadId = null,Object? feeHeadName = null,Object? dueDate = freezed,Object? amount = null,Object? netDue = null,Object? status = null,}) {
  return _then(_PendingDueItem(
feeStructureId: freezed == feeStructureId ? _self.feeStructureId : feeStructureId // ignore: cast_nullable_to_non_nullable
as String?,feeHeadId: null == feeHeadId ? _self.feeHeadId : feeHeadId // ignore: cast_nullable_to_non_nullable
as String,feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,netDue: null == netDue ? _self.netDue : netDue // ignore: cast_nullable_to_non_nullable
as Decimal,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FeePlanEntry {

 FeePlan get plan;@JsonKey(name: 'fee_head_name') String get feeHeadName; List<FeeInstallment> get installments;
/// Create a copy of FeePlanEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeePlanEntryCopyWith<FeePlanEntry> get copyWith => _$FeePlanEntryCopyWithImpl<FeePlanEntry>(this as FeePlanEntry, _$identity);

  /// Serializes this FeePlanEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FeePlanEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeePlanEntry&&(identical(other.plan, _this.plan) || other.plan == _this.plan)&&(identical(other.feeHeadName, _this.feeHeadName) || other.feeHeadName == _this.feeHeadName)&&const DeepCollectionEquality().equals(other.installments, _this.installments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeePlanEntry;
  return Object.hash(runtimeType,_this.plan,_this.feeHeadName,const DeepCollectionEquality().hash(_this.installments));
}

@override
String toString() {
  final _this = this as FeePlanEntry;
  return 'FeePlanEntry(plan: ${_this.plan}, feeHeadName: ${_this.feeHeadName}, installments: ${_this.installments})';
}


}

/// @nodoc
abstract mixin class $FeePlanEntryCopyWith<$Res>  {
  factory $FeePlanEntryCopyWith(FeePlanEntry value, $Res Function(FeePlanEntry) _then) = _$FeePlanEntryCopyWithImpl;
@useResult
$Res call({
 FeePlan plan,@JsonKey(name: 'fee_head_name') String feeHeadName, List<FeeInstallment> installments
});


$FeePlanCopyWith<$Res> get plan;

}
/// @nodoc
class _$FeePlanEntryCopyWithImpl<$Res>
    implements $FeePlanEntryCopyWith<$Res> {
  _$FeePlanEntryCopyWithImpl(this._self, this._then);

  final FeePlanEntry _self;
  final $Res Function(FeePlanEntry) _then;

/// Create a copy of FeePlanEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? plan = null,Object? feeHeadName = null,Object? installments = null,}) {
  return _then(FeePlanEntry(
plan: null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as FeePlan,feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,installments: null == installments ? _self.installments : installments // ignore: cast_nullable_to_non_nullable
as List<FeeInstallment>,
  ));
}
/// Create a copy of FeePlanEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeePlanCopyWith<$Res> get plan {
  
  return $FeePlanCopyWith<$Res>(_self.plan, (value) {
    return _then(_self.copyWith(plan: value));
  });
}
}


/// Adds pattern-matching-related methods to [FeePlanEntry].
extension FeePlanEntryPatterns on FeePlanEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeePlanEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeePlanEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeePlanEntry value)  $default,){
final _that = this;
switch (_that) {
case _FeePlanEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeePlanEntry value)?  $default,){
final _that = this;
switch (_that) {
case _FeePlanEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FeePlan plan, @JsonKey(name: 'fee_head_name')  String feeHeadName,  List<FeeInstallment> installments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeePlanEntry() when $default != null:
return $default(_that.plan,_that.feeHeadName,_that.installments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FeePlan plan, @JsonKey(name: 'fee_head_name')  String feeHeadName,  List<FeeInstallment> installments)  $default,) {final _that = this;
switch (_that) {
case _FeePlanEntry():
return $default(_that.plan,_that.feeHeadName,_that.installments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FeePlan plan, @JsonKey(name: 'fee_head_name')  String feeHeadName,  List<FeeInstallment> installments)?  $default,) {final _that = this;
switch (_that) {
case _FeePlanEntry() when $default != null:
return $default(_that.plan,_that.feeHeadName,_that.installments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeePlanEntry implements FeePlanEntry {
  const _FeePlanEntry({required this.plan, @JsonKey(name: 'fee_head_name') required this.feeHeadName,  List<FeeInstallment> installments = const []}): _installments = installments;
  factory _FeePlanEntry.fromJson(Map<String, dynamic> json) => _$FeePlanEntryFromJson(json);

@override final  FeePlan plan;
@override@JsonKey(name: 'fee_head_name') final  String feeHeadName;
 final  List<FeeInstallment> _installments;
@override@JsonKey() List<FeeInstallment> get installments {
  if (_installments is EqualUnmodifiableListView) return _installments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_installments);
}


/// Create a copy of FeePlanEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeePlanEntryCopyWith<_FeePlanEntry> get copyWith => __$FeePlanEntryCopyWithImpl<_FeePlanEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeePlanEntryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeePlanEntry&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.feeHeadName, feeHeadName) || other.feeHeadName == feeHeadName)&&const DeepCollectionEquality().equals(other.installments, _installments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,plan,feeHeadName,const DeepCollectionEquality().hash(_installments));
}

@override
String toString() {
    return 'FeePlanEntry(plan: $plan, feeHeadName: $feeHeadName, installments: $installments)';
}


}

/// @nodoc
abstract mixin class _$FeePlanEntryCopyWith<$Res> implements $FeePlanEntryCopyWith<$Res> {
  factory _$FeePlanEntryCopyWith(_FeePlanEntry value, $Res Function(_FeePlanEntry) _then) = __$FeePlanEntryCopyWithImpl;
@override @useResult
$Res call({
 FeePlan plan,@JsonKey(name: 'fee_head_name') String feeHeadName, List<FeeInstallment> installments
});


@override $FeePlanCopyWith<$Res> get plan;

}
/// @nodoc
class __$FeePlanEntryCopyWithImpl<$Res>
    implements _$FeePlanEntryCopyWith<$Res> {
  __$FeePlanEntryCopyWithImpl(this._self, this._then);

  final _FeePlanEntry _self;
  final $Res Function(_FeePlanEntry) _then;

/// Create a copy of FeePlanEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? plan = null,Object? feeHeadName = null,Object? installments = null,}) {
  return _then(_FeePlanEntry(
plan: null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as FeePlan,feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,installments: null == installments ? _self._installments : installments // ignore: cast_nullable_to_non_nullable
as List<FeeInstallment>,
  ));
}

/// Create a copy of FeePlanEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeePlanCopyWith<$Res> get plan {
  
  return $FeePlanCopyWith<$Res>(_self.plan, (value) {
    return _then(_self.copyWith(plan: value));
  });
}
}


/// @nodoc
mixin _$FeePlan {

@JsonKey(name: 'plan_id') String get planId;@JsonKey(name: 'fee_head_id') String get feeHeadId; String get frequency;
/// Create a copy of FeePlan
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeePlanCopyWith<FeePlan> get copyWith => _$FeePlanCopyWithImpl<FeePlan>(this as FeePlan, _$identity);

  /// Serializes this FeePlan to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FeePlan;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeePlan&&(identical(other.planId, _this.planId) || other.planId == _this.planId)&&(identical(other.feeHeadId, _this.feeHeadId) || other.feeHeadId == _this.feeHeadId)&&(identical(other.frequency, _this.frequency) || other.frequency == _this.frequency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeePlan;
  return Object.hash(runtimeType,_this.planId,_this.feeHeadId,_this.frequency);
}

@override
String toString() {
  final _this = this as FeePlan;
  return 'FeePlan(planId: ${_this.planId}, feeHeadId: ${_this.feeHeadId}, frequency: ${_this.frequency})';
}


}

/// @nodoc
abstract mixin class $FeePlanCopyWith<$Res>  {
  factory $FeePlanCopyWith(FeePlan value, $Res Function(FeePlan) _then) = _$FeePlanCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'plan_id') String planId,@JsonKey(name: 'fee_head_id') String feeHeadId, String frequency
});




}
/// @nodoc
class _$FeePlanCopyWithImpl<$Res>
    implements $FeePlanCopyWith<$Res> {
  _$FeePlanCopyWithImpl(this._self, this._then);

  final FeePlan _self;
  final $Res Function(FeePlan) _then;

/// Create a copy of FeePlan
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? planId = null,Object? feeHeadId = null,Object? frequency = null,}) {
  return _then(FeePlan(
planId: null == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as String,feeHeadId: null == feeHeadId ? _self.feeHeadId : feeHeadId // ignore: cast_nullable_to_non_nullable
as String,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FeePlan].
extension FeePlanPatterns on FeePlan {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeePlan value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeePlan() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeePlan value)  $default,){
final _that = this;
switch (_that) {
case _FeePlan():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeePlan value)?  $default,){
final _that = this;
switch (_that) {
case _FeePlan() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'plan_id')  String planId, @JsonKey(name: 'fee_head_id')  String feeHeadId,  String frequency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeePlan() when $default != null:
return $default(_that.planId,_that.feeHeadId,_that.frequency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'plan_id')  String planId, @JsonKey(name: 'fee_head_id')  String feeHeadId,  String frequency)  $default,) {final _that = this;
switch (_that) {
case _FeePlan():
return $default(_that.planId,_that.feeHeadId,_that.frequency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'plan_id')  String planId, @JsonKey(name: 'fee_head_id')  String feeHeadId,  String frequency)?  $default,) {final _that = this;
switch (_that) {
case _FeePlan() when $default != null:
return $default(_that.planId,_that.feeHeadId,_that.frequency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeePlan implements FeePlan {
  const _FeePlan({@JsonKey(name: 'plan_id') required this.planId, @JsonKey(name: 'fee_head_id') required this.feeHeadId, required this.frequency});
  factory _FeePlan.fromJson(Map<String, dynamic> json) => _$FeePlanFromJson(json);

@override@JsonKey(name: 'plan_id') final  String planId;
@override@JsonKey(name: 'fee_head_id') final  String feeHeadId;
@override final  String frequency;

/// Create a copy of FeePlan
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeePlanCopyWith<_FeePlan> get copyWith => __$FeePlanCopyWithImpl<_FeePlan>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeePlanToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeePlan&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.feeHeadId, feeHeadId) || other.feeHeadId == feeHeadId)&&(identical(other.frequency, frequency) || other.frequency == frequency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,planId,feeHeadId,frequency);
}

@override
String toString() {
    return 'FeePlan(planId: $planId, feeHeadId: $feeHeadId, frequency: $frequency)';
}


}

/// @nodoc
abstract mixin class _$FeePlanCopyWith<$Res> implements $FeePlanCopyWith<$Res> {
  factory _$FeePlanCopyWith(_FeePlan value, $Res Function(_FeePlan) _then) = __$FeePlanCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'plan_id') String planId,@JsonKey(name: 'fee_head_id') String feeHeadId, String frequency
});




}
/// @nodoc
class __$FeePlanCopyWithImpl<$Res>
    implements _$FeePlanCopyWith<$Res> {
  __$FeePlanCopyWithImpl(this._self, this._then);

  final _FeePlan _self;
  final $Res Function(_FeePlan) _then;

/// Create a copy of FeePlan
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? planId = null,Object? feeHeadId = null,Object? frequency = null,}) {
  return _then(_FeePlan(
planId: null == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as String,feeHeadId: null == feeHeadId ? _self.feeHeadId : feeHeadId // ignore: cast_nullable_to_non_nullable
as String,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FeeInstallment {

@JsonKey(name: 'installment_id') String get installmentId;@JsonKey(name: 'period_label') String get periodLabel;@JsonKey(name: 'due_date') DateTime? get dueDate;@DecimalConverter() Decimal get amount;@DecimalConverter() Decimal get balance; String get status;
/// Create a copy of FeeInstallment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeInstallmentCopyWith<FeeInstallment> get copyWith => _$FeeInstallmentCopyWithImpl<FeeInstallment>(this as FeeInstallment, _$identity);

  /// Serializes this FeeInstallment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FeeInstallment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeInstallment&&(identical(other.installmentId, _this.installmentId) || other.installmentId == _this.installmentId)&&(identical(other.periodLabel, _this.periodLabel) || other.periodLabel == _this.periodLabel)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.balance, _this.balance) || other.balance == _this.balance)&&(identical(other.status, _this.status) || other.status == _this.status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeeInstallment;
  return Object.hash(runtimeType,_this.installmentId,_this.periodLabel,_this.dueDate,_this.amount,_this.balance,_this.status);
}

@override
String toString() {
  final _this = this as FeeInstallment;
  return 'FeeInstallment(installmentId: ${_this.installmentId}, periodLabel: ${_this.periodLabel}, dueDate: ${_this.dueDate}, amount: ${_this.amount}, balance: ${_this.balance}, status: ${_this.status})';
}


}

/// @nodoc
abstract mixin class $FeeInstallmentCopyWith<$Res>  {
  factory $FeeInstallmentCopyWith(FeeInstallment value, $Res Function(FeeInstallment) _then) = _$FeeInstallmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'installment_id') String installmentId,@JsonKey(name: 'period_label') String periodLabel,@JsonKey(name: 'due_date') DateTime? dueDate,@DecimalConverter() Decimal amount,@DecimalConverter() Decimal balance, String status
});




}
/// @nodoc
class _$FeeInstallmentCopyWithImpl<$Res>
    implements $FeeInstallmentCopyWith<$Res> {
  _$FeeInstallmentCopyWithImpl(this._self, this._then);

  final FeeInstallment _self;
  final $Res Function(FeeInstallment) _then;

/// Create a copy of FeeInstallment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? installmentId = null,Object? periodLabel = null,Object? dueDate = freezed,Object? amount = null,Object? balance = null,Object? status = null,}) {
  return _then(FeeInstallment(
installmentId: null == installmentId ? _self.installmentId : installmentId // ignore: cast_nullable_to_non_nullable
as String,periodLabel: null == periodLabel ? _self.periodLabel : periodLabel // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as Decimal,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FeeInstallment].
extension FeeInstallmentPatterns on FeeInstallment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeeInstallment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeeInstallment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeeInstallment value)  $default,){
final _that = this;
switch (_that) {
case _FeeInstallment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeeInstallment value)?  $default,){
final _that = this;
switch (_that) {
case _FeeInstallment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'installment_id')  String installmentId, @JsonKey(name: 'period_label')  String periodLabel, @JsonKey(name: 'due_date')  DateTime? dueDate, @DecimalConverter()  Decimal amount, @DecimalConverter()  Decimal balance,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeInstallment() when $default != null:
return $default(_that.installmentId,_that.periodLabel,_that.dueDate,_that.amount,_that.balance,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'installment_id')  String installmentId, @JsonKey(name: 'period_label')  String periodLabel, @JsonKey(name: 'due_date')  DateTime? dueDate, @DecimalConverter()  Decimal amount, @DecimalConverter()  Decimal balance,  String status)  $default,) {final _that = this;
switch (_that) {
case _FeeInstallment():
return $default(_that.installmentId,_that.periodLabel,_that.dueDate,_that.amount,_that.balance,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'installment_id')  String installmentId, @JsonKey(name: 'period_label')  String periodLabel, @JsonKey(name: 'due_date')  DateTime? dueDate, @DecimalConverter()  Decimal amount, @DecimalConverter()  Decimal balance,  String status)?  $default,) {final _that = this;
switch (_that) {
case _FeeInstallment() when $default != null:
return $default(_that.installmentId,_that.periodLabel,_that.dueDate,_that.amount,_that.balance,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeInstallment implements FeeInstallment {
  const _FeeInstallment({@JsonKey(name: 'installment_id') required this.installmentId, @JsonKey(name: 'period_label') required this.periodLabel, @JsonKey(name: 'due_date') this.dueDate, @DecimalConverter() required this.amount, @DecimalConverter() required this.balance, required this.status});
  factory _FeeInstallment.fromJson(Map<String, dynamic> json) => _$FeeInstallmentFromJson(json);

@override@JsonKey(name: 'installment_id') final  String installmentId;
@override@JsonKey(name: 'period_label') final  String periodLabel;
@override@JsonKey(name: 'due_date') final  DateTime? dueDate;
@override@DecimalConverter() final  Decimal amount;
@override@DecimalConverter() final  Decimal balance;
@override final  String status;

/// Create a copy of FeeInstallment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeInstallmentCopyWith<_FeeInstallment> get copyWith => __$FeeInstallmentCopyWithImpl<_FeeInstallment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeInstallmentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeInstallment&&(identical(other.installmentId, installmentId) || other.installmentId == installmentId)&&(identical(other.periodLabel, periodLabel) || other.periodLabel == periodLabel)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,installmentId,periodLabel,dueDate,amount,balance,status);
}

@override
String toString() {
    return 'FeeInstallment(installmentId: $installmentId, periodLabel: $periodLabel, dueDate: $dueDate, amount: $amount, balance: $balance, status: $status)';
}


}

/// @nodoc
abstract mixin class _$FeeInstallmentCopyWith<$Res> implements $FeeInstallmentCopyWith<$Res> {
  factory _$FeeInstallmentCopyWith(_FeeInstallment value, $Res Function(_FeeInstallment) _then) = __$FeeInstallmentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'installment_id') String installmentId,@JsonKey(name: 'period_label') String periodLabel,@JsonKey(name: 'due_date') DateTime? dueDate,@DecimalConverter() Decimal amount,@DecimalConverter() Decimal balance, String status
});




}
/// @nodoc
class __$FeeInstallmentCopyWithImpl<$Res>
    implements _$FeeInstallmentCopyWith<$Res> {
  __$FeeInstallmentCopyWithImpl(this._self, this._then);

  final _FeeInstallment _self;
  final $Res Function(_FeeInstallment) _then;

/// Create a copy of FeeInstallment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? installmentId = null,Object? periodLabel = null,Object? dueDate = freezed,Object? amount = null,Object? balance = null,Object? status = null,}) {
  return _then(_FeeInstallment(
installmentId: null == installmentId ? _self.installmentId : installmentId // ignore: cast_nullable_to_non_nullable
as String,periodLabel: null == periodLabel ? _self.periodLabel : periodLabel // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as Decimal,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
