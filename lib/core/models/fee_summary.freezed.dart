// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fee_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeeCategory {

@JsonKey(name: 'fee_category_id') String get feeCategoryId;@JsonKey(name: 'category_name') String get categoryName;
/// Create a copy of FeeCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeCategoryCopyWith<FeeCategory> get copyWith => _$FeeCategoryCopyWithImpl<FeeCategory>(this as FeeCategory, _$identity);

  /// Serializes this FeeCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FeeCategory;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeCategory&&(identical(other.feeCategoryId, _this.feeCategoryId) || other.feeCategoryId == _this.feeCategoryId)&&(identical(other.categoryName, _this.categoryName) || other.categoryName == _this.categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeeCategory;
  return Object.hash(runtimeType,_this.feeCategoryId,_this.categoryName);
}

@override
String toString() {
  final _this = this as FeeCategory;
  return 'FeeCategory(feeCategoryId: ${_this.feeCategoryId}, categoryName: ${_this.categoryName})';
}


}

/// @nodoc
abstract mixin class $FeeCategoryCopyWith<$Res>  {
  factory $FeeCategoryCopyWith(FeeCategory value, $Res Function(FeeCategory) _then) = _$FeeCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fee_category_id') String feeCategoryId,@JsonKey(name: 'category_name') String categoryName
});




}
/// @nodoc
class _$FeeCategoryCopyWithImpl<$Res>
    implements $FeeCategoryCopyWith<$Res> {
  _$FeeCategoryCopyWithImpl(this._self, this._then);

  final FeeCategory _self;
  final $Res Function(FeeCategory) _then;

/// Create a copy of FeeCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feeCategoryId = null,Object? categoryName = null,}) {
  return _then(FeeCategory(
feeCategoryId: null == feeCategoryId ? _self.feeCategoryId : feeCategoryId // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FeeCategory].
extension FeeCategoryPatterns on FeeCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeeCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeeCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeeCategory value)  $default,){
final _that = this;
switch (_that) {
case _FeeCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeeCategory value)?  $default,){
final _that = this;
switch (_that) {
case _FeeCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_category_id')  String feeCategoryId, @JsonKey(name: 'category_name')  String categoryName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeCategory() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_category_id')  String feeCategoryId, @JsonKey(name: 'category_name')  String categoryName)  $default,) {final _that = this;
switch (_that) {
case _FeeCategory():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fee_category_id')  String feeCategoryId, @JsonKey(name: 'category_name')  String categoryName)?  $default,) {final _that = this;
switch (_that) {
case _FeeCategory() when $default != null:
return $default(_that.feeCategoryId,_that.categoryName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeCategory implements FeeCategory {
  const _FeeCategory({@JsonKey(name: 'fee_category_id') required this.feeCategoryId, @JsonKey(name: 'category_name') required this.categoryName});
  factory _FeeCategory.fromJson(Map<String, dynamic> json) => _$FeeCategoryFromJson(json);

@override@JsonKey(name: 'fee_category_id') final  String feeCategoryId;
@override@JsonKey(name: 'category_name') final  String categoryName;

/// Create a copy of FeeCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeCategoryCopyWith<_FeeCategory> get copyWith => __$FeeCategoryCopyWithImpl<_FeeCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeCategory&&(identical(other.feeCategoryId, feeCategoryId) || other.feeCategoryId == feeCategoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,feeCategoryId,categoryName);
}

@override
String toString() {
    return 'FeeCategory(feeCategoryId: $feeCategoryId, categoryName: $categoryName)';
}


}

/// @nodoc
abstract mixin class _$FeeCategoryCopyWith<$Res> implements $FeeCategoryCopyWith<$Res> {
  factory _$FeeCategoryCopyWith(_FeeCategory value, $Res Function(_FeeCategory) _then) = __$FeeCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fee_category_id') String feeCategoryId,@JsonKey(name: 'category_name') String categoryName
});




}
/// @nodoc
class __$FeeCategoryCopyWithImpl<$Res>
    implements _$FeeCategoryCopyWith<$Res> {
  __$FeeCategoryCopyWithImpl(this._self, this._then);

  final _FeeCategory _self;
  final $Res Function(_FeeCategory) _then;

/// Create a copy of FeeCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feeCategoryId = null,Object? categoryName = null,}) {
  return _then(_FeeCategory(
feeCategoryId: null == feeCategoryId ? _self.feeCategoryId : feeCategoryId // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PendingFeeItem {

@JsonKey(name: 'fee_structure_id') String? get feeStructureId;@JsonKey(name: 'fee_head_id') String get feeHeadId;@JsonKey(name: 'fee_head_name') String get feeHeadName;@JsonKey(name: 'due_date') DateTime? get dueDate;@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get amount;@JsonKey(name: 'net_due', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get netDue;@JsonKey(name: 'suggested_fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get suggestedFineAmount;@JsonKey(name: 'status', unknownEnumValue: PendingItemStatus.unknown) PendingItemStatus get status;
/// Create a copy of PendingFeeItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendingFeeItemCopyWith<PendingFeeItem> get copyWith => _$PendingFeeItemCopyWithImpl<PendingFeeItem>(this as PendingFeeItem, _$identity);

  /// Serializes this PendingFeeItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PendingFeeItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingFeeItem&&(identical(other.feeStructureId, _this.feeStructureId) || other.feeStructureId == _this.feeStructureId)&&(identical(other.feeHeadId, _this.feeHeadId) || other.feeHeadId == _this.feeHeadId)&&(identical(other.feeHeadName, _this.feeHeadName) || other.feeHeadName == _this.feeHeadName)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.netDue, _this.netDue) || other.netDue == _this.netDue)&&(identical(other.suggestedFineAmount, _this.suggestedFineAmount) || other.suggestedFineAmount == _this.suggestedFineAmount)&&(identical(other.status, _this.status) || other.status == _this.status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PendingFeeItem;
  return Object.hash(runtimeType,_this.feeStructureId,_this.feeHeadId,_this.feeHeadName,_this.dueDate,_this.amount,_this.netDue,_this.suggestedFineAmount,_this.status);
}

@override
String toString() {
  final _this = this as PendingFeeItem;
  return 'PendingFeeItem(feeStructureId: ${_this.feeStructureId}, feeHeadId: ${_this.feeHeadId}, feeHeadName: ${_this.feeHeadName}, dueDate: ${_this.dueDate}, amount: ${_this.amount}, netDue: ${_this.netDue}, suggestedFineAmount: ${_this.suggestedFineAmount}, status: ${_this.status})';
}


}

/// @nodoc
abstract mixin class $PendingFeeItemCopyWith<$Res>  {
  factory $PendingFeeItemCopyWith(PendingFeeItem value, $Res Function(PendingFeeItem) _then) = _$PendingFeeItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fee_structure_id') String? feeStructureId,@JsonKey(name: 'fee_head_id') String feeHeadId,@JsonKey(name: 'fee_head_name') String feeHeadName,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount,@JsonKey(name: 'net_due', fromJson: decimalFromJson, toJson: decimalToJson) Decimal netDue,@JsonKey(name: 'suggested_fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal suggestedFineAmount,@JsonKey(name: 'status', unknownEnumValue: PendingItemStatus.unknown) PendingItemStatus status
});




}
/// @nodoc
class _$PendingFeeItemCopyWithImpl<$Res>
    implements $PendingFeeItemCopyWith<$Res> {
  _$PendingFeeItemCopyWithImpl(this._self, this._then);

  final PendingFeeItem _self;
  final $Res Function(PendingFeeItem) _then;

/// Create a copy of PendingFeeItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feeStructureId = freezed,Object? feeHeadId = null,Object? feeHeadName = null,Object? dueDate = freezed,Object? amount = null,Object? netDue = null,Object? suggestedFineAmount = null,Object? status = null,}) {
  return _then(PendingFeeItem(
feeStructureId: freezed == feeStructureId ? _self.feeStructureId : feeStructureId // ignore: cast_nullable_to_non_nullable
as String?,feeHeadId: null == feeHeadId ? _self.feeHeadId : feeHeadId // ignore: cast_nullable_to_non_nullable
as String,feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,netDue: null == netDue ? _self.netDue : netDue // ignore: cast_nullable_to_non_nullable
as Decimal,suggestedFineAmount: null == suggestedFineAmount ? _self.suggestedFineAmount : suggestedFineAmount // ignore: cast_nullable_to_non_nullable
as Decimal,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PendingItemStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [PendingFeeItem].
extension PendingFeeItemPatterns on PendingFeeItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PendingFeeItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PendingFeeItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PendingFeeItem value)  $default,){
final _that = this;
switch (_that) {
case _PendingFeeItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PendingFeeItem value)?  $default,){
final _that = this;
switch (_that) {
case _PendingFeeItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_structure_id')  String? feeStructureId, @JsonKey(name: 'fee_head_id')  String feeHeadId, @JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'net_due', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netDue, @JsonKey(name: 'suggested_fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal suggestedFineAmount, @JsonKey(name: 'status', unknownEnumValue: PendingItemStatus.unknown)  PendingItemStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PendingFeeItem() when $default != null:
return $default(_that.feeStructureId,_that.feeHeadId,_that.feeHeadName,_that.dueDate,_that.amount,_that.netDue,_that.suggestedFineAmount,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_structure_id')  String? feeStructureId, @JsonKey(name: 'fee_head_id')  String feeHeadId, @JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'net_due', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netDue, @JsonKey(name: 'suggested_fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal suggestedFineAmount, @JsonKey(name: 'status', unknownEnumValue: PendingItemStatus.unknown)  PendingItemStatus status)  $default,) {final _that = this;
switch (_that) {
case _PendingFeeItem():
return $default(_that.feeStructureId,_that.feeHeadId,_that.feeHeadName,_that.dueDate,_that.amount,_that.netDue,_that.suggestedFineAmount,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fee_structure_id')  String? feeStructureId, @JsonKey(name: 'fee_head_id')  String feeHeadId, @JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'net_due', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netDue, @JsonKey(name: 'suggested_fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal suggestedFineAmount, @JsonKey(name: 'status', unknownEnumValue: PendingItemStatus.unknown)  PendingItemStatus status)?  $default,) {final _that = this;
switch (_that) {
case _PendingFeeItem() when $default != null:
return $default(_that.feeStructureId,_that.feeHeadId,_that.feeHeadName,_that.dueDate,_that.amount,_that.netDue,_that.suggestedFineAmount,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PendingFeeItem implements PendingFeeItem {
  const _PendingFeeItem({@JsonKey(name: 'fee_structure_id') this.feeStructureId, @JsonKey(name: 'fee_head_id') required this.feeHeadId, @JsonKey(name: 'fee_head_name') required this.feeHeadName, @JsonKey(name: 'due_date') this.dueDate, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.amount, @JsonKey(name: 'net_due', fromJson: decimalFromJson, toJson: decimalToJson) required this.netDue, @JsonKey(name: 'suggested_fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.suggestedFineAmount, @JsonKey(name: 'status', unknownEnumValue: PendingItemStatus.unknown) required this.status});
  factory _PendingFeeItem.fromJson(Map<String, dynamic> json) => _$PendingFeeItemFromJson(json);

@override@JsonKey(name: 'fee_structure_id') final  String? feeStructureId;
@override@JsonKey(name: 'fee_head_id') final  String feeHeadId;
@override@JsonKey(name: 'fee_head_name') final  String feeHeadName;
@override@JsonKey(name: 'due_date') final  DateTime? dueDate;
@override@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal amount;
@override@JsonKey(name: 'net_due', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal netDue;
@override@JsonKey(name: 'suggested_fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal suggestedFineAmount;
@override@JsonKey(name: 'status', unknownEnumValue: PendingItemStatus.unknown) final  PendingItemStatus status;

/// Create a copy of PendingFeeItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PendingFeeItemCopyWith<_PendingFeeItem> get copyWith => __$PendingFeeItemCopyWithImpl<_PendingFeeItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PendingFeeItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PendingFeeItem&&(identical(other.feeStructureId, feeStructureId) || other.feeStructureId == feeStructureId)&&(identical(other.feeHeadId, feeHeadId) || other.feeHeadId == feeHeadId)&&(identical(other.feeHeadName, feeHeadName) || other.feeHeadName == feeHeadName)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.netDue, netDue) || other.netDue == netDue)&&(identical(other.suggestedFineAmount, suggestedFineAmount) || other.suggestedFineAmount == suggestedFineAmount)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,feeStructureId,feeHeadId,feeHeadName,dueDate,amount,netDue,suggestedFineAmount,status);
}

@override
String toString() {
    return 'PendingFeeItem(feeStructureId: $feeStructureId, feeHeadId: $feeHeadId, feeHeadName: $feeHeadName, dueDate: $dueDate, amount: $amount, netDue: $netDue, suggestedFineAmount: $suggestedFineAmount, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PendingFeeItemCopyWith<$Res> implements $PendingFeeItemCopyWith<$Res> {
  factory _$PendingFeeItemCopyWith(_PendingFeeItem value, $Res Function(_PendingFeeItem) _then) = __$PendingFeeItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fee_structure_id') String? feeStructureId,@JsonKey(name: 'fee_head_id') String feeHeadId,@JsonKey(name: 'fee_head_name') String feeHeadName,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount,@JsonKey(name: 'net_due', fromJson: decimalFromJson, toJson: decimalToJson) Decimal netDue,@JsonKey(name: 'suggested_fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal suggestedFineAmount,@JsonKey(name: 'status', unknownEnumValue: PendingItemStatus.unknown) PendingItemStatus status
});




}
/// @nodoc
class __$PendingFeeItemCopyWithImpl<$Res>
    implements _$PendingFeeItemCopyWith<$Res> {
  __$PendingFeeItemCopyWithImpl(this._self, this._then);

  final _PendingFeeItem _self;
  final $Res Function(_PendingFeeItem) _then;

/// Create a copy of PendingFeeItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feeStructureId = freezed,Object? feeHeadId = null,Object? feeHeadName = null,Object? dueDate = freezed,Object? amount = null,Object? netDue = null,Object? suggestedFineAmount = null,Object? status = null,}) {
  return _then(_PendingFeeItem(
feeStructureId: freezed == feeStructureId ? _self.feeStructureId : feeStructureId // ignore: cast_nullable_to_non_nullable
as String?,feeHeadId: null == feeHeadId ? _self.feeHeadId : feeHeadId // ignore: cast_nullable_to_non_nullable
as String,feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,netDue: null == netDue ? _self.netDue : netDue // ignore: cast_nullable_to_non_nullable
as Decimal,suggestedFineAmount: null == suggestedFineAmount ? _self.suggestedFineAmount : suggestedFineAmount // ignore: cast_nullable_to_non_nullable
as Decimal,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PendingItemStatus,
  ));
}


}


/// @nodoc
mixin _$FeeReceiptItem {

@JsonKey(name: 'fee_head_name') String get feeHeadName;@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get amount;@JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get netAmount; String? get remarks;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeReceiptItem&&(identical(other.feeHeadName, _this.feeHeadName) || other.feeHeadName == _this.feeHeadName)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.netAmount, _this.netAmount) || other.netAmount == _this.netAmount)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeeReceiptItem;
  return Object.hash(runtimeType,_this.feeHeadName,_this.amount,_this.netAmount,_this.remarks);
}

@override
String toString() {
  final _this = this as FeeReceiptItem;
  return 'FeeReceiptItem(feeHeadName: ${_this.feeHeadName}, amount: ${_this.amount}, netAmount: ${_this.netAmount}, remarks: ${_this.remarks})';
}


}

/// @nodoc
abstract mixin class $FeeReceiptItemCopyWith<$Res>  {
  factory $FeeReceiptItemCopyWith(FeeReceiptItem value, $Res Function(FeeReceiptItem) _then) = _$FeeReceiptItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fee_head_name') String feeHeadName,@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount,@JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal netAmount, String? remarks
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
@pragma('vm:prefer-inline') @override $Res call({Object? feeHeadName = null,Object? amount = null,Object? netAmount = null,Object? remarks = freezed,}) {
  return _then(FeeReceiptItem(
feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as Decimal,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netAmount,  String? remarks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeReceiptItem() when $default != null:
return $default(_that.feeHeadName,_that.amount,_that.netAmount,_that.remarks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netAmount,  String? remarks)  $default,) {final _that = this;
switch (_that) {
case _FeeReceiptItem():
return $default(_that.feeHeadName,_that.amount,_that.netAmount,_that.remarks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netAmount,  String? remarks)?  $default,) {final _that = this;
switch (_that) {
case _FeeReceiptItem() when $default != null:
return $default(_that.feeHeadName,_that.amount,_that.netAmount,_that.remarks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeReceiptItem implements FeeReceiptItem {
  const _FeeReceiptItem({@JsonKey(name: 'fee_head_name') required this.feeHeadName, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.amount, @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.netAmount, this.remarks});
  factory _FeeReceiptItem.fromJson(Map<String, dynamic> json) => _$FeeReceiptItemFromJson(json);

@override@JsonKey(name: 'fee_head_name') final  String feeHeadName;
@override@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal amount;
@override@JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal netAmount;
@override final  String? remarks;

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
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeReceiptItem&&(identical(other.feeHeadName, feeHeadName) || other.feeHeadName == feeHeadName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.remarks, remarks) || other.remarks == remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,feeHeadName,amount,netAmount,remarks);
}

@override
String toString() {
    return 'FeeReceiptItem(feeHeadName: $feeHeadName, amount: $amount, netAmount: $netAmount, remarks: $remarks)';
}


}

/// @nodoc
abstract mixin class _$FeeReceiptItemCopyWith<$Res> implements $FeeReceiptItemCopyWith<$Res> {
  factory _$FeeReceiptItemCopyWith(_FeeReceiptItem value, $Res Function(_FeeReceiptItem) _then) = __$FeeReceiptItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fee_head_name') String feeHeadName,@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount,@JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal netAmount, String? remarks
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
@override @pragma('vm:prefer-inline') $Res call({Object? feeHeadName = null,Object? amount = null,Object? netAmount = null,Object? remarks = freezed,}) {
  return _then(_FeeReceiptItem(
feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as Decimal,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FeeReceipt {

@JsonKey(name: 'receipt_id') String get receiptId;@JsonKey(name: 'receipt_no') String get receiptNo;@JsonKey(name: 'receipt_date') DateTime get receiptDate;@JsonKey(name: 'total_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalAmount;@JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get netAmount;@JsonKey(name: 'payment_mode') String? get paymentMode;@JsonKey(name: 'receipt_status') String? get receiptStatus; String? get remarks;@JsonKey(name: 'student_fee_receipt_items') List<FeeReceiptItem> get items;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeReceipt&&(identical(other.receiptId, _this.receiptId) || other.receiptId == _this.receiptId)&&(identical(other.receiptNo, _this.receiptNo) || other.receiptNo == _this.receiptNo)&&(identical(other.receiptDate, _this.receiptDate) || other.receiptDate == _this.receiptDate)&&(identical(other.totalAmount, _this.totalAmount) || other.totalAmount == _this.totalAmount)&&(identical(other.netAmount, _this.netAmount) || other.netAmount == _this.netAmount)&&(identical(other.paymentMode, _this.paymentMode) || other.paymentMode == _this.paymentMode)&&(identical(other.receiptStatus, _this.receiptStatus) || other.receiptStatus == _this.receiptStatus)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&const DeepCollectionEquality().equals(other.items, _this.items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeeReceipt;
  return Object.hash(runtimeType,_this.receiptId,_this.receiptNo,_this.receiptDate,_this.totalAmount,_this.netAmount,_this.paymentMode,_this.receiptStatus,_this.remarks,const DeepCollectionEquality().hash(_this.items));
}

@override
String toString() {
  final _this = this as FeeReceipt;
  return 'FeeReceipt(receiptId: ${_this.receiptId}, receiptNo: ${_this.receiptNo}, receiptDate: ${_this.receiptDate}, totalAmount: ${_this.totalAmount}, netAmount: ${_this.netAmount}, paymentMode: ${_this.paymentMode}, receiptStatus: ${_this.receiptStatus}, remarks: ${_this.remarks}, items: ${_this.items})';
}


}

/// @nodoc
abstract mixin class $FeeReceiptCopyWith<$Res>  {
  factory $FeeReceiptCopyWith(FeeReceipt value, $Res Function(FeeReceipt) _then) = _$FeeReceiptCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'receipt_id') String receiptId,@JsonKey(name: 'receipt_no') String receiptNo,@JsonKey(name: 'receipt_date') DateTime receiptDate,@JsonKey(name: 'total_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalAmount,@JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal netAmount,@JsonKey(name: 'payment_mode') String? paymentMode,@JsonKey(name: 'receipt_status') String? receiptStatus, String? remarks,@JsonKey(name: 'student_fee_receipt_items') List<FeeReceiptItem> items
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
@pragma('vm:prefer-inline') @override $Res call({Object? receiptId = null,Object? receiptNo = null,Object? receiptDate = null,Object? totalAmount = null,Object? netAmount = null,Object? paymentMode = freezed,Object? receiptStatus = freezed,Object? remarks = freezed,Object? items = null,}) {
  return _then(FeeReceipt(
receiptId: null == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String,receiptNo: null == receiptNo ? _self.receiptNo : receiptNo // ignore: cast_nullable_to_non_nullable
as String,receiptDate: null == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as DateTime,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as Decimal,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as Decimal,paymentMode: freezed == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String?,receiptStatus: freezed == receiptStatus ? _self.receiptStatus : receiptStatus // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'receipt_id')  String receiptId, @JsonKey(name: 'receipt_no')  String receiptNo, @JsonKey(name: 'receipt_date')  DateTime receiptDate, @JsonKey(name: 'total_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalAmount, @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netAmount, @JsonKey(name: 'payment_mode')  String? paymentMode, @JsonKey(name: 'receipt_status')  String? receiptStatus,  String? remarks, @JsonKey(name: 'student_fee_receipt_items')  List<FeeReceiptItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeReceipt() when $default != null:
return $default(_that.receiptId,_that.receiptNo,_that.receiptDate,_that.totalAmount,_that.netAmount,_that.paymentMode,_that.receiptStatus,_that.remarks,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'receipt_id')  String receiptId, @JsonKey(name: 'receipt_no')  String receiptNo, @JsonKey(name: 'receipt_date')  DateTime receiptDate, @JsonKey(name: 'total_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalAmount, @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netAmount, @JsonKey(name: 'payment_mode')  String? paymentMode, @JsonKey(name: 'receipt_status')  String? receiptStatus,  String? remarks, @JsonKey(name: 'student_fee_receipt_items')  List<FeeReceiptItem> items)  $default,) {final _that = this;
switch (_that) {
case _FeeReceipt():
return $default(_that.receiptId,_that.receiptNo,_that.receiptDate,_that.totalAmount,_that.netAmount,_that.paymentMode,_that.receiptStatus,_that.remarks,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'receipt_id')  String receiptId, @JsonKey(name: 'receipt_no')  String receiptNo, @JsonKey(name: 'receipt_date')  DateTime receiptDate, @JsonKey(name: 'total_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalAmount, @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal netAmount, @JsonKey(name: 'payment_mode')  String? paymentMode, @JsonKey(name: 'receipt_status')  String? receiptStatus,  String? remarks, @JsonKey(name: 'student_fee_receipt_items')  List<FeeReceiptItem> items)?  $default,) {final _that = this;
switch (_that) {
case _FeeReceipt() when $default != null:
return $default(_that.receiptId,_that.receiptNo,_that.receiptDate,_that.totalAmount,_that.netAmount,_that.paymentMode,_that.receiptStatus,_that.remarks,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeReceipt implements FeeReceipt {
  const _FeeReceipt({@JsonKey(name: 'receipt_id') required this.receiptId, @JsonKey(name: 'receipt_no') required this.receiptNo, @JsonKey(name: 'receipt_date') required this.receiptDate, @JsonKey(name: 'total_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalAmount, @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.netAmount, @JsonKey(name: 'payment_mode') this.paymentMode, @JsonKey(name: 'receipt_status') this.receiptStatus, this.remarks, @JsonKey(name: 'student_fee_receipt_items') required  List<FeeReceiptItem> items}): _items = items;
  factory _FeeReceipt.fromJson(Map<String, dynamic> json) => _$FeeReceiptFromJson(json);

@override@JsonKey(name: 'receipt_id') final  String receiptId;
@override@JsonKey(name: 'receipt_no') final  String receiptNo;
@override@JsonKey(name: 'receipt_date') final  DateTime receiptDate;
@override@JsonKey(name: 'total_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalAmount;
@override@JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal netAmount;
@override@JsonKey(name: 'payment_mode') final  String? paymentMode;
@override@JsonKey(name: 'receipt_status') final  String? receiptStatus;
@override final  String? remarks;
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
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeReceipt&&(identical(other.receiptId, receiptId) || other.receiptId == receiptId)&&(identical(other.receiptNo, receiptNo) || other.receiptNo == receiptNo)&&(identical(other.receiptDate, receiptDate) || other.receiptDate == receiptDate)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.receiptStatus, receiptStatus) || other.receiptStatus == receiptStatus)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other.items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,receiptId,receiptNo,receiptDate,totalAmount,netAmount,paymentMode,receiptStatus,remarks,const DeepCollectionEquality().hash(_items));
}

@override
String toString() {
    return 'FeeReceipt(receiptId: $receiptId, receiptNo: $receiptNo, receiptDate: $receiptDate, totalAmount: $totalAmount, netAmount: $netAmount, paymentMode: $paymentMode, receiptStatus: $receiptStatus, remarks: $remarks, items: $items)';
}


}

/// @nodoc
abstract mixin class _$FeeReceiptCopyWith<$Res> implements $FeeReceiptCopyWith<$Res> {
  factory _$FeeReceiptCopyWith(_FeeReceipt value, $Res Function(_FeeReceipt) _then) = __$FeeReceiptCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'receipt_id') String receiptId,@JsonKey(name: 'receipt_no') String receiptNo,@JsonKey(name: 'receipt_date') DateTime receiptDate,@JsonKey(name: 'total_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalAmount,@JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal netAmount,@JsonKey(name: 'payment_mode') String? paymentMode,@JsonKey(name: 'receipt_status') String? receiptStatus, String? remarks,@JsonKey(name: 'student_fee_receipt_items') List<FeeReceiptItem> items
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
@override @pragma('vm:prefer-inline') $Res call({Object? receiptId = null,Object? receiptNo = null,Object? receiptDate = null,Object? totalAmount = null,Object? netAmount = null,Object? paymentMode = freezed,Object? receiptStatus = freezed,Object? remarks = freezed,Object? items = null,}) {
  return _then(_FeeReceipt(
receiptId: null == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String,receiptNo: null == receiptNo ? _self.receiptNo : receiptNo // ignore: cast_nullable_to_non_nullable
as String,receiptDate: null == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as DateTime,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as Decimal,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as Decimal,paymentMode: freezed == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String?,receiptStatus: freezed == receiptStatus ? _self.receiptStatus : receiptStatus // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<FeeReceiptItem>,
  ));
}


}


/// @nodoc
mixin _$FeeInstallment {

@JsonKey(name: 'installment_id') String get installmentId;@JsonKey(name: 'period_index') int get periodIndex;@JsonKey(name: 'period_label') String get periodLabel;@JsonKey(name: 'due_date') DateTime get dueDate;@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get amount;@JsonKey(name: 'paid_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get paidAmount;@JsonKey(name: 'balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get balance;@JsonKey(name: 'status', unknownEnumValue: InstallmentStatus.unknown) InstallmentStatus get status;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeInstallment&&(identical(other.installmentId, _this.installmentId) || other.installmentId == _this.installmentId)&&(identical(other.periodIndex, _this.periodIndex) || other.periodIndex == _this.periodIndex)&&(identical(other.periodLabel, _this.periodLabel) || other.periodLabel == _this.periodLabel)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.paidAmount, _this.paidAmount) || other.paidAmount == _this.paidAmount)&&(identical(other.balance, _this.balance) || other.balance == _this.balance)&&(identical(other.status, _this.status) || other.status == _this.status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeeInstallment;
  return Object.hash(runtimeType,_this.installmentId,_this.periodIndex,_this.periodLabel,_this.dueDate,_this.amount,_this.paidAmount,_this.balance,_this.status);
}

@override
String toString() {
  final _this = this as FeeInstallment;
  return 'FeeInstallment(installmentId: ${_this.installmentId}, periodIndex: ${_this.periodIndex}, periodLabel: ${_this.periodLabel}, dueDate: ${_this.dueDate}, amount: ${_this.amount}, paidAmount: ${_this.paidAmount}, balance: ${_this.balance}, status: ${_this.status})';
}


}

/// @nodoc
abstract mixin class $FeeInstallmentCopyWith<$Res>  {
  factory $FeeInstallmentCopyWith(FeeInstallment value, $Res Function(FeeInstallment) _then) = _$FeeInstallmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'installment_id') String installmentId,@JsonKey(name: 'period_index') int periodIndex,@JsonKey(name: 'period_label') String periodLabel,@JsonKey(name: 'due_date') DateTime dueDate,@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount,@JsonKey(name: 'paid_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal paidAmount,@JsonKey(name: 'balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal balance,@JsonKey(name: 'status', unknownEnumValue: InstallmentStatus.unknown) InstallmentStatus status
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
@pragma('vm:prefer-inline') @override $Res call({Object? installmentId = null,Object? periodIndex = null,Object? periodLabel = null,Object? dueDate = null,Object? amount = null,Object? paidAmount = null,Object? balance = null,Object? status = null,}) {
  return _then(FeeInstallment(
installmentId: null == installmentId ? _self.installmentId : installmentId // ignore: cast_nullable_to_non_nullable
as String,periodIndex: null == periodIndex ? _self.periodIndex : periodIndex // ignore: cast_nullable_to_non_nullable
as int,periodLabel: null == periodLabel ? _self.periodLabel : periodLabel // ignore: cast_nullable_to_non_nullable
as String,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,paidAmount: null == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as Decimal,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as Decimal,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InstallmentStatus,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'installment_id')  String installmentId, @JsonKey(name: 'period_index')  int periodIndex, @JsonKey(name: 'period_label')  String periodLabel, @JsonKey(name: 'due_date')  DateTime dueDate, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'paid_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal paidAmount, @JsonKey(name: 'balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal balance, @JsonKey(name: 'status', unknownEnumValue: InstallmentStatus.unknown)  InstallmentStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeInstallment() when $default != null:
return $default(_that.installmentId,_that.periodIndex,_that.periodLabel,_that.dueDate,_that.amount,_that.paidAmount,_that.balance,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'installment_id')  String installmentId, @JsonKey(name: 'period_index')  int periodIndex, @JsonKey(name: 'period_label')  String periodLabel, @JsonKey(name: 'due_date')  DateTime dueDate, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'paid_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal paidAmount, @JsonKey(name: 'balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal balance, @JsonKey(name: 'status', unknownEnumValue: InstallmentStatus.unknown)  InstallmentStatus status)  $default,) {final _that = this;
switch (_that) {
case _FeeInstallment():
return $default(_that.installmentId,_that.periodIndex,_that.periodLabel,_that.dueDate,_that.amount,_that.paidAmount,_that.balance,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'installment_id')  String installmentId, @JsonKey(name: 'period_index')  int periodIndex, @JsonKey(name: 'period_label')  String periodLabel, @JsonKey(name: 'due_date')  DateTime dueDate, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'paid_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal paidAmount, @JsonKey(name: 'balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal balance, @JsonKey(name: 'status', unknownEnumValue: InstallmentStatus.unknown)  InstallmentStatus status)?  $default,) {final _that = this;
switch (_that) {
case _FeeInstallment() when $default != null:
return $default(_that.installmentId,_that.periodIndex,_that.periodLabel,_that.dueDate,_that.amount,_that.paidAmount,_that.balance,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeInstallment implements FeeInstallment {
  const _FeeInstallment({@JsonKey(name: 'installment_id') required this.installmentId, @JsonKey(name: 'period_index') required this.periodIndex, @JsonKey(name: 'period_label') required this.periodLabel, @JsonKey(name: 'due_date') required this.dueDate, @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.amount, @JsonKey(name: 'paid_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.paidAmount, @JsonKey(name: 'balance', fromJson: decimalFromJson, toJson: decimalToJson) required this.balance, @JsonKey(name: 'status', unknownEnumValue: InstallmentStatus.unknown) required this.status});
  factory _FeeInstallment.fromJson(Map<String, dynamic> json) => _$FeeInstallmentFromJson(json);

@override@JsonKey(name: 'installment_id') final  String installmentId;
@override@JsonKey(name: 'period_index') final  int periodIndex;
@override@JsonKey(name: 'period_label') final  String periodLabel;
@override@JsonKey(name: 'due_date') final  DateTime dueDate;
@override@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal amount;
@override@JsonKey(name: 'paid_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal paidAmount;
@override@JsonKey(name: 'balance', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal balance;
@override@JsonKey(name: 'status', unknownEnumValue: InstallmentStatus.unknown) final  InstallmentStatus status;

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
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeInstallment&&(identical(other.installmentId, installmentId) || other.installmentId == installmentId)&&(identical(other.periodIndex, periodIndex) || other.periodIndex == periodIndex)&&(identical(other.periodLabel, periodLabel) || other.periodLabel == periodLabel)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,installmentId,periodIndex,periodLabel,dueDate,amount,paidAmount,balance,status);
}

@override
String toString() {
    return 'FeeInstallment(installmentId: $installmentId, periodIndex: $periodIndex, periodLabel: $periodLabel, dueDate: $dueDate, amount: $amount, paidAmount: $paidAmount, balance: $balance, status: $status)';
}


}

/// @nodoc
abstract mixin class _$FeeInstallmentCopyWith<$Res> implements $FeeInstallmentCopyWith<$Res> {
  factory _$FeeInstallmentCopyWith(_FeeInstallment value, $Res Function(_FeeInstallment) _then) = __$FeeInstallmentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'installment_id') String installmentId,@JsonKey(name: 'period_index') int periodIndex,@JsonKey(name: 'period_label') String periodLabel,@JsonKey(name: 'due_date') DateTime dueDate,@JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount,@JsonKey(name: 'paid_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal paidAmount,@JsonKey(name: 'balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal balance,@JsonKey(name: 'status', unknownEnumValue: InstallmentStatus.unknown) InstallmentStatus status
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
@override @pragma('vm:prefer-inline') $Res call({Object? installmentId = null,Object? periodIndex = null,Object? periodLabel = null,Object? dueDate = null,Object? amount = null,Object? paidAmount = null,Object? balance = null,Object? status = null,}) {
  return _then(_FeeInstallment(
installmentId: null == installmentId ? _self.installmentId : installmentId // ignore: cast_nullable_to_non_nullable
as String,periodIndex: null == periodIndex ? _self.periodIndex : periodIndex // ignore: cast_nullable_to_non_nullable
as int,periodLabel: null == periodLabel ? _self.periodLabel : periodLabel // ignore: cast_nullable_to_non_nullable
as String,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,paidAmount: null == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as Decimal,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as Decimal,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InstallmentStatus,
  ));
}


}


/// @nodoc
mixin _$FeePlanRef {

@JsonKey(name: 'plan_id') String get planId;@JsonKey(name: 'frequency') String get frequency;
/// Create a copy of FeePlanRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeePlanRefCopyWith<FeePlanRef> get copyWith => _$FeePlanRefCopyWithImpl<FeePlanRef>(this as FeePlanRef, _$identity);

  /// Serializes this FeePlanRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FeePlanRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeePlanRef&&(identical(other.planId, _this.planId) || other.planId == _this.planId)&&(identical(other.frequency, _this.frequency) || other.frequency == _this.frequency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeePlanRef;
  return Object.hash(runtimeType,_this.planId,_this.frequency);
}

@override
String toString() {
  final _this = this as FeePlanRef;
  return 'FeePlanRef(planId: ${_this.planId}, frequency: ${_this.frequency})';
}


}

/// @nodoc
abstract mixin class $FeePlanRefCopyWith<$Res>  {
  factory $FeePlanRefCopyWith(FeePlanRef value, $Res Function(FeePlanRef) _then) = _$FeePlanRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'plan_id') String planId,@JsonKey(name: 'frequency') String frequency
});




}
/// @nodoc
class _$FeePlanRefCopyWithImpl<$Res>
    implements $FeePlanRefCopyWith<$Res> {
  _$FeePlanRefCopyWithImpl(this._self, this._then);

  final FeePlanRef _self;
  final $Res Function(FeePlanRef) _then;

/// Create a copy of FeePlanRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? planId = null,Object? frequency = null,}) {
  return _then(FeePlanRef(
planId: null == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as String,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FeePlanRef].
extension FeePlanRefPatterns on FeePlanRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeePlanRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeePlanRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeePlanRef value)  $default,){
final _that = this;
switch (_that) {
case _FeePlanRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeePlanRef value)?  $default,){
final _that = this;
switch (_that) {
case _FeePlanRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'plan_id')  String planId, @JsonKey(name: 'frequency')  String frequency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeePlanRef() when $default != null:
return $default(_that.planId,_that.frequency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'plan_id')  String planId, @JsonKey(name: 'frequency')  String frequency)  $default,) {final _that = this;
switch (_that) {
case _FeePlanRef():
return $default(_that.planId,_that.frequency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'plan_id')  String planId, @JsonKey(name: 'frequency')  String frequency)?  $default,) {final _that = this;
switch (_that) {
case _FeePlanRef() when $default != null:
return $default(_that.planId,_that.frequency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeePlanRef implements FeePlanRef {
  const _FeePlanRef({@JsonKey(name: 'plan_id') required this.planId, @JsonKey(name: 'frequency') required this.frequency});
  factory _FeePlanRef.fromJson(Map<String, dynamic> json) => _$FeePlanRefFromJson(json);

@override@JsonKey(name: 'plan_id') final  String planId;
@override@JsonKey(name: 'frequency') final  String frequency;

/// Create a copy of FeePlanRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeePlanRefCopyWith<_FeePlanRef> get copyWith => __$FeePlanRefCopyWithImpl<_FeePlanRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeePlanRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeePlanRef&&(identical(other.planId, planId) || other.planId == planId)&&(identical(other.frequency, frequency) || other.frequency == frequency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,planId,frequency);
}

@override
String toString() {
    return 'FeePlanRef(planId: $planId, frequency: $frequency)';
}


}

/// @nodoc
abstract mixin class _$FeePlanRefCopyWith<$Res> implements $FeePlanRefCopyWith<$Res> {
  factory _$FeePlanRefCopyWith(_FeePlanRef value, $Res Function(_FeePlanRef) _then) = __$FeePlanRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'plan_id') String planId,@JsonKey(name: 'frequency') String frequency
});




}
/// @nodoc
class __$FeePlanRefCopyWithImpl<$Res>
    implements _$FeePlanRefCopyWith<$Res> {
  __$FeePlanRefCopyWithImpl(this._self, this._then);

  final _FeePlanRef _self;
  final $Res Function(_FeePlanRef) _then;

/// Create a copy of FeePlanRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? planId = null,Object? frequency = null,}) {
  return _then(_FeePlanRef(
planId: null == planId ? _self.planId : planId // ignore: cast_nullable_to_non_nullable
as String,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FeePlanEntry {

 FeePlanRef get plan;@JsonKey(name: 'fee_head_name') String get feeHeadName; List<FeeInstallment> get installments;
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
 FeePlanRef plan,@JsonKey(name: 'fee_head_name') String feeHeadName, List<FeeInstallment> installments
});


$FeePlanRefCopyWith<$Res> get plan;

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
as FeePlanRef,feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,installments: null == installments ? _self.installments : installments // ignore: cast_nullable_to_non_nullable
as List<FeeInstallment>,
  ));
}
/// Create a copy of FeePlanEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeePlanRefCopyWith<$Res> get plan {
  
  return $FeePlanRefCopyWith<$Res>(_self.plan, (value) {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FeePlanRef plan, @JsonKey(name: 'fee_head_name')  String feeHeadName,  List<FeeInstallment> installments)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FeePlanRef plan, @JsonKey(name: 'fee_head_name')  String feeHeadName,  List<FeeInstallment> installments)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FeePlanRef plan, @JsonKey(name: 'fee_head_name')  String feeHeadName,  List<FeeInstallment> installments)?  $default,) {final _that = this;
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
  const _FeePlanEntry({required this.plan, @JsonKey(name: 'fee_head_name') required this.feeHeadName, required  List<FeeInstallment> installments}): _installments = installments;
  factory _FeePlanEntry.fromJson(Map<String, dynamic> json) => _$FeePlanEntryFromJson(json);

@override final  FeePlanRef plan;
@override@JsonKey(name: 'fee_head_name') final  String feeHeadName;
 final  List<FeeInstallment> _installments;
@override List<FeeInstallment> get installments {
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
 FeePlanRef plan,@JsonKey(name: 'fee_head_name') String feeHeadName, List<FeeInstallment> installments
});


@override $FeePlanRefCopyWith<$Res> get plan;

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
as FeePlanRef,feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,installments: null == installments ? _self._installments : installments // ignore: cast_nullable_to_non_nullable
as List<FeeInstallment>,
  ));
}

/// Create a copy of FeePlanEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeePlanRefCopyWith<$Res> get plan {
  
  return $FeePlanRefCopyWith<$Res>(_self.plan, (value) {
    return _then(_self.copyWith(plan: value));
  });
}
}


/// @nodoc
mixin _$ConcessionInfo {

 String get name;@JsonKey(name: 'concession_type') String? get concessionType;@JsonKey(name: 'calculation_type') String? get calculationType;@JsonKey(name: 'value', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get value;
/// Create a copy of ConcessionInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConcessionInfoCopyWith<ConcessionInfo> get copyWith => _$ConcessionInfoCopyWithImpl<ConcessionInfo>(this as ConcessionInfo, _$identity);

  /// Serializes this ConcessionInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ConcessionInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConcessionInfo&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.concessionType, _this.concessionType) || other.concessionType == _this.concessionType)&&(identical(other.calculationType, _this.calculationType) || other.calculationType == _this.calculationType)&&(identical(other.value, _this.value) || other.value == _this.value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ConcessionInfo;
  return Object.hash(runtimeType,_this.name,_this.concessionType,_this.calculationType,_this.value);
}

@override
String toString() {
  final _this = this as ConcessionInfo;
  return 'ConcessionInfo(name: ${_this.name}, concessionType: ${_this.concessionType}, calculationType: ${_this.calculationType}, value: ${_this.value})';
}


}

/// @nodoc
abstract mixin class $ConcessionInfoCopyWith<$Res>  {
  factory $ConcessionInfoCopyWith(ConcessionInfo value, $Res Function(ConcessionInfo) _then) = _$ConcessionInfoCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(name: 'concession_type') String? concessionType,@JsonKey(name: 'calculation_type') String? calculationType,@JsonKey(name: 'value', fromJson: decimalFromJson, toJson: decimalToJson) Decimal value
});




}
/// @nodoc
class _$ConcessionInfoCopyWithImpl<$Res>
    implements $ConcessionInfoCopyWith<$Res> {
  _$ConcessionInfoCopyWithImpl(this._self, this._then);

  final ConcessionInfo _self;
  final $Res Function(ConcessionInfo) _then;

/// Create a copy of ConcessionInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? concessionType = freezed,Object? calculationType = freezed,Object? value = null,}) {
  return _then(ConcessionInfo(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,concessionType: freezed == concessionType ? _self.concessionType : concessionType // ignore: cast_nullable_to_non_nullable
as String?,calculationType: freezed == calculationType ? _self.calculationType : calculationType // ignore: cast_nullable_to_non_nullable
as String?,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

}


/// Adds pattern-matching-related methods to [ConcessionInfo].
extension ConcessionInfoPatterns on ConcessionInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConcessionInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConcessionInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConcessionInfo value)  $default,){
final _that = this;
switch (_that) {
case _ConcessionInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConcessionInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ConcessionInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'concession_type')  String? concessionType, @JsonKey(name: 'calculation_type')  String? calculationType, @JsonKey(name: 'value', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConcessionInfo() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'concession_type')  String? concessionType, @JsonKey(name: 'calculation_type')  String? calculationType, @JsonKey(name: 'value', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal value)  $default,) {final _that = this;
switch (_that) {
case _ConcessionInfo():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(name: 'concession_type')  String? concessionType, @JsonKey(name: 'calculation_type')  String? calculationType, @JsonKey(name: 'value', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal value)?  $default,) {final _that = this;
switch (_that) {
case _ConcessionInfo() when $default != null:
return $default(_that.name,_that.concessionType,_that.calculationType,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConcessionInfo implements ConcessionInfo {
  const _ConcessionInfo({required this.name, @JsonKey(name: 'concession_type') this.concessionType, @JsonKey(name: 'calculation_type') this.calculationType, @JsonKey(name: 'value', fromJson: decimalFromJson, toJson: decimalToJson) required this.value});
  factory _ConcessionInfo.fromJson(Map<String, dynamic> json) => _$ConcessionInfoFromJson(json);

@override final  String name;
@override@JsonKey(name: 'concession_type') final  String? concessionType;
@override@JsonKey(name: 'calculation_type') final  String? calculationType;
@override@JsonKey(name: 'value', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal value;

/// Create a copy of ConcessionInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConcessionInfoCopyWith<_ConcessionInfo> get copyWith => __$ConcessionInfoCopyWithImpl<_ConcessionInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConcessionInfoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConcessionInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.concessionType, concessionType) || other.concessionType == concessionType)&&(identical(other.calculationType, calculationType) || other.calculationType == calculationType)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,concessionType,calculationType,value);
}

@override
String toString() {
    return 'ConcessionInfo(name: $name, concessionType: $concessionType, calculationType: $calculationType, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ConcessionInfoCopyWith<$Res> implements $ConcessionInfoCopyWith<$Res> {
  factory _$ConcessionInfoCopyWith(_ConcessionInfo value, $Res Function(_ConcessionInfo) _then) = __$ConcessionInfoCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(name: 'concession_type') String? concessionType,@JsonKey(name: 'calculation_type') String? calculationType,@JsonKey(name: 'value', fromJson: decimalFromJson, toJson: decimalToJson) Decimal value
});




}
/// @nodoc
class __$ConcessionInfoCopyWithImpl<$Res>
    implements _$ConcessionInfoCopyWith<$Res> {
  __$ConcessionInfoCopyWithImpl(this._self, this._then);

  final _ConcessionInfo _self;
  final $Res Function(_ConcessionInfo) _then;

/// Create a copy of ConcessionInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? concessionType = freezed,Object? calculationType = freezed,Object? value = null,}) {
  return _then(_ConcessionInfo(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,concessionType: freezed == concessionType ? _self.concessionType : concessionType // ignore: cast_nullable_to_non_nullable
as String?,calculationType: freezed == calculationType ? _self.calculationType : calculationType // ignore: cast_nullable_to_non_nullable
as String?,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}


}


/// @nodoc
mixin _$Scholarship {

@JsonKey(name: 'fee_concessions') ConcessionInfo get feeConcessions;
/// Create a copy of Scholarship
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScholarshipCopyWith<Scholarship> get copyWith => _$ScholarshipCopyWithImpl<Scholarship>(this as Scholarship, _$identity);

  /// Serializes this Scholarship to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Scholarship;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Scholarship&&(identical(other.feeConcessions, _this.feeConcessions) || other.feeConcessions == _this.feeConcessions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Scholarship;
  return Object.hash(runtimeType,_this.feeConcessions);
}

@override
String toString() {
  final _this = this as Scholarship;
  return 'Scholarship(feeConcessions: ${_this.feeConcessions})';
}


}

/// @nodoc
abstract mixin class $ScholarshipCopyWith<$Res>  {
  factory $ScholarshipCopyWith(Scholarship value, $Res Function(Scholarship) _then) = _$ScholarshipCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fee_concessions') ConcessionInfo feeConcessions
});


$ConcessionInfoCopyWith<$Res> get feeConcessions;

}
/// @nodoc
class _$ScholarshipCopyWithImpl<$Res>
    implements $ScholarshipCopyWith<$Res> {
  _$ScholarshipCopyWithImpl(this._self, this._then);

  final Scholarship _self;
  final $Res Function(Scholarship) _then;

/// Create a copy of Scholarship
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feeConcessions = null,}) {
  return _then(Scholarship(
feeConcessions: null == feeConcessions ? _self.feeConcessions : feeConcessions // ignore: cast_nullable_to_non_nullable
as ConcessionInfo,
  ));
}
/// Create a copy of Scholarship
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConcessionInfoCopyWith<$Res> get feeConcessions {
  
  return $ConcessionInfoCopyWith<$Res>(_self.feeConcessions, (value) {
    return _then(_self.copyWith(feeConcessions: value));
  });
}
}


/// Adds pattern-matching-related methods to [Scholarship].
extension ScholarshipPatterns on Scholarship {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Scholarship value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Scholarship() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Scholarship value)  $default,){
final _that = this;
switch (_that) {
case _Scholarship():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Scholarship value)?  $default,){
final _that = this;
switch (_that) {
case _Scholarship() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_concessions')  ConcessionInfo feeConcessions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Scholarship() when $default != null:
return $default(_that.feeConcessions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_concessions')  ConcessionInfo feeConcessions)  $default,) {final _that = this;
switch (_that) {
case _Scholarship():
return $default(_that.feeConcessions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fee_concessions')  ConcessionInfo feeConcessions)?  $default,) {final _that = this;
switch (_that) {
case _Scholarship() when $default != null:
return $default(_that.feeConcessions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Scholarship implements Scholarship {
  const _Scholarship({@JsonKey(name: 'fee_concessions') required this.feeConcessions});
  factory _Scholarship.fromJson(Map<String, dynamic> json) => _$ScholarshipFromJson(json);

@override@JsonKey(name: 'fee_concessions') final  ConcessionInfo feeConcessions;

/// Create a copy of Scholarship
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScholarshipCopyWith<_Scholarship> get copyWith => __$ScholarshipCopyWithImpl<_Scholarship>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScholarshipToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Scholarship&&(identical(other.feeConcessions, feeConcessions) || other.feeConcessions == feeConcessions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,feeConcessions);
}

@override
String toString() {
    return 'Scholarship(feeConcessions: $feeConcessions)';
}


}

/// @nodoc
abstract mixin class _$ScholarshipCopyWith<$Res> implements $ScholarshipCopyWith<$Res> {
  factory _$ScholarshipCopyWith(_Scholarship value, $Res Function(_Scholarship) _then) = __$ScholarshipCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fee_concessions') ConcessionInfo feeConcessions
});


@override $ConcessionInfoCopyWith<$Res> get feeConcessions;

}
/// @nodoc
class __$ScholarshipCopyWithImpl<$Res>
    implements _$ScholarshipCopyWith<$Res> {
  __$ScholarshipCopyWithImpl(this._self, this._then);

  final _Scholarship _self;
  final $Res Function(_Scholarship) _then;

/// Create a copy of Scholarship
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feeConcessions = null,}) {
  return _then(_Scholarship(
feeConcessions: null == feeConcessions ? _self.feeConcessions : feeConcessions // ignore: cast_nullable_to_non_nullable
as ConcessionInfo,
  ));
}

/// Create a copy of Scholarship
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConcessionInfoCopyWith<$Res> get feeConcessions {
  
  return $ConcessionInfoCopyWith<$Res>(_self.feeConcessions, (value) {
    return _then(_self.copyWith(feeConcessions: value));
  });
}
}


/// @nodoc
mixin _$FeeSummary {

@JsonKey(name: 'fee_category') FeeCategory? get feeCategory; List<Scholarship> get scholarships;@JsonKey(name: 'previous_payments') List<FeeReceipt> get previousPayments;@JsonKey(name: 'pending_items') List<PendingFeeItem> get pendingItems;@JsonKey(name: 'total_due', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalDue;@JsonKey(name: 'fee_plans') List<FeePlanEntry> get feePlans;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeSummary&&(identical(other.feeCategory, _this.feeCategory) || other.feeCategory == _this.feeCategory)&&const DeepCollectionEquality().equals(other.scholarships, _this.scholarships)&&const DeepCollectionEquality().equals(other.previousPayments, _this.previousPayments)&&const DeepCollectionEquality().equals(other.pendingItems, _this.pendingItems)&&(identical(other.totalDue, _this.totalDue) || other.totalDue == _this.totalDue)&&const DeepCollectionEquality().equals(other.feePlans, _this.feePlans));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeeSummary;
  return Object.hash(runtimeType,_this.feeCategory,const DeepCollectionEquality().hash(_this.scholarships),const DeepCollectionEquality().hash(_this.previousPayments),const DeepCollectionEquality().hash(_this.pendingItems),_this.totalDue,const DeepCollectionEquality().hash(_this.feePlans));
}

@override
String toString() {
  final _this = this as FeeSummary;
  return 'FeeSummary(feeCategory: ${_this.feeCategory}, scholarships: ${_this.scholarships}, previousPayments: ${_this.previousPayments}, pendingItems: ${_this.pendingItems}, totalDue: ${_this.totalDue}, feePlans: ${_this.feePlans})';
}


}

/// @nodoc
abstract mixin class $FeeSummaryCopyWith<$Res>  {
  factory $FeeSummaryCopyWith(FeeSummary value, $Res Function(FeeSummary) _then) = _$FeeSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fee_category') FeeCategory? feeCategory, List<Scholarship> scholarships,@JsonKey(name: 'previous_payments') List<FeeReceipt> previousPayments,@JsonKey(name: 'pending_items') List<PendingFeeItem> pendingItems,@JsonKey(name: 'total_due', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDue,@JsonKey(name: 'fee_plans') List<FeePlanEntry> feePlans
});


$FeeCategoryCopyWith<$Res>? get feeCategory;

}
/// @nodoc
class _$FeeSummaryCopyWithImpl<$Res>
    implements $FeeSummaryCopyWith<$Res> {
  _$FeeSummaryCopyWithImpl(this._self, this._then);

  final FeeSummary _self;
  final $Res Function(FeeSummary) _then;

/// Create a copy of FeeSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feeCategory = freezed,Object? scholarships = null,Object? previousPayments = null,Object? pendingItems = null,Object? totalDue = null,Object? feePlans = null,}) {
  return _then(FeeSummary(
feeCategory: freezed == feeCategory ? _self.feeCategory : feeCategory // ignore: cast_nullable_to_non_nullable
as FeeCategory?,scholarships: null == scholarships ? _self.scholarships : scholarships // ignore: cast_nullable_to_non_nullable
as List<Scholarship>,previousPayments: null == previousPayments ? _self.previousPayments : previousPayments // ignore: cast_nullable_to_non_nullable
as List<FeeReceipt>,pendingItems: null == pendingItems ? _self.pendingItems : pendingItems // ignore: cast_nullable_to_non_nullable
as List<PendingFeeItem>,totalDue: null == totalDue ? _self.totalDue : totalDue // ignore: cast_nullable_to_non_nullable
as Decimal,feePlans: null == feePlans ? _self.feePlans : feePlans // ignore: cast_nullable_to_non_nullable
as List<FeePlanEntry>,
  ));
}
/// Create a copy of FeeSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeeCategoryCopyWith<$Res>? get feeCategory {
    if (_self.feeCategory == null) {
    return null;
  }

  return $FeeCategoryCopyWith<$Res>(_self.feeCategory!, (value) {
    return _then(_self.copyWith(feeCategory: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_category')  FeeCategory? feeCategory,  List<Scholarship> scholarships, @JsonKey(name: 'previous_payments')  List<FeeReceipt> previousPayments, @JsonKey(name: 'pending_items')  List<PendingFeeItem> pendingItems, @JsonKey(name: 'total_due', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDue, @JsonKey(name: 'fee_plans')  List<FeePlanEntry> feePlans)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeSummary() when $default != null:
return $default(_that.feeCategory,_that.scholarships,_that.previousPayments,_that.pendingItems,_that.totalDue,_that.feePlans);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_category')  FeeCategory? feeCategory,  List<Scholarship> scholarships, @JsonKey(name: 'previous_payments')  List<FeeReceipt> previousPayments, @JsonKey(name: 'pending_items')  List<PendingFeeItem> pendingItems, @JsonKey(name: 'total_due', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDue, @JsonKey(name: 'fee_plans')  List<FeePlanEntry> feePlans)  $default,) {final _that = this;
switch (_that) {
case _FeeSummary():
return $default(_that.feeCategory,_that.scholarships,_that.previousPayments,_that.pendingItems,_that.totalDue,_that.feePlans);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fee_category')  FeeCategory? feeCategory,  List<Scholarship> scholarships, @JsonKey(name: 'previous_payments')  List<FeeReceipt> previousPayments, @JsonKey(name: 'pending_items')  List<PendingFeeItem> pendingItems, @JsonKey(name: 'total_due', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDue, @JsonKey(name: 'fee_plans')  List<FeePlanEntry> feePlans)?  $default,) {final _that = this;
switch (_that) {
case _FeeSummary() when $default != null:
return $default(_that.feeCategory,_that.scholarships,_that.previousPayments,_that.pendingItems,_that.totalDue,_that.feePlans);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeSummary implements FeeSummary {
  const _FeeSummary({@JsonKey(name: 'fee_category') this.feeCategory, required  List<Scholarship> scholarships, @JsonKey(name: 'previous_payments') required  List<FeeReceipt> previousPayments, @JsonKey(name: 'pending_items') required  List<PendingFeeItem> pendingItems, @JsonKey(name: 'total_due', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalDue, @JsonKey(name: 'fee_plans') required  List<FeePlanEntry> feePlans}): _scholarships = scholarships,_previousPayments = previousPayments,_pendingItems = pendingItems,_feePlans = feePlans;
  factory _FeeSummary.fromJson(Map<String, dynamic> json) => _$FeeSummaryFromJson(json);

@override@JsonKey(name: 'fee_category') final  FeeCategory? feeCategory;
 final  List<Scholarship> _scholarships;
@override List<Scholarship> get scholarships {
  if (_scholarships is EqualUnmodifiableListView) return _scholarships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scholarships);
}

 final  List<FeeReceipt> _previousPayments;
@override@JsonKey(name: 'previous_payments') List<FeeReceipt> get previousPayments {
  if (_previousPayments is EqualUnmodifiableListView) return _previousPayments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_previousPayments);
}

 final  List<PendingFeeItem> _pendingItems;
@override@JsonKey(name: 'pending_items') List<PendingFeeItem> get pendingItems {
  if (_pendingItems is EqualUnmodifiableListView) return _pendingItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pendingItems);
}

@override@JsonKey(name: 'total_due', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalDue;
 final  List<FeePlanEntry> _feePlans;
@override@JsonKey(name: 'fee_plans') List<FeePlanEntry> get feePlans {
  if (_feePlans is EqualUnmodifiableListView) return _feePlans;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_feePlans);
}


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
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeSummary&&(identical(other.feeCategory, feeCategory) || other.feeCategory == feeCategory)&&const DeepCollectionEquality().equals(other.scholarships, _scholarships)&&const DeepCollectionEquality().equals(other.previousPayments, _previousPayments)&&const DeepCollectionEquality().equals(other.pendingItems, _pendingItems)&&(identical(other.totalDue, totalDue) || other.totalDue == totalDue)&&const DeepCollectionEquality().equals(other.feePlans, _feePlans));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,feeCategory,const DeepCollectionEquality().hash(_scholarships),const DeepCollectionEquality().hash(_previousPayments),const DeepCollectionEquality().hash(_pendingItems),totalDue,const DeepCollectionEquality().hash(_feePlans));
}

@override
String toString() {
    return 'FeeSummary(feeCategory: $feeCategory, scholarships: $scholarships, previousPayments: $previousPayments, pendingItems: $pendingItems, totalDue: $totalDue, feePlans: $feePlans)';
}


}

/// @nodoc
abstract mixin class _$FeeSummaryCopyWith<$Res> implements $FeeSummaryCopyWith<$Res> {
  factory _$FeeSummaryCopyWith(_FeeSummary value, $Res Function(_FeeSummary) _then) = __$FeeSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fee_category') FeeCategory? feeCategory, List<Scholarship> scholarships,@JsonKey(name: 'previous_payments') List<FeeReceipt> previousPayments,@JsonKey(name: 'pending_items') List<PendingFeeItem> pendingItems,@JsonKey(name: 'total_due', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDue,@JsonKey(name: 'fee_plans') List<FeePlanEntry> feePlans
});


@override $FeeCategoryCopyWith<$Res>? get feeCategory;

}
/// @nodoc
class __$FeeSummaryCopyWithImpl<$Res>
    implements _$FeeSummaryCopyWith<$Res> {
  __$FeeSummaryCopyWithImpl(this._self, this._then);

  final _FeeSummary _self;
  final $Res Function(_FeeSummary) _then;

/// Create a copy of FeeSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feeCategory = freezed,Object? scholarships = null,Object? previousPayments = null,Object? pendingItems = null,Object? totalDue = null,Object? feePlans = null,}) {
  return _then(_FeeSummary(
feeCategory: freezed == feeCategory ? _self.feeCategory : feeCategory // ignore: cast_nullable_to_non_nullable
as FeeCategory?,scholarships: null == scholarships ? _self._scholarships : scholarships // ignore: cast_nullable_to_non_nullable
as List<Scholarship>,previousPayments: null == previousPayments ? _self._previousPayments : previousPayments // ignore: cast_nullable_to_non_nullable
as List<FeeReceipt>,pendingItems: null == pendingItems ? _self._pendingItems : pendingItems // ignore: cast_nullable_to_non_nullable
as List<PendingFeeItem>,totalDue: null == totalDue ? _self.totalDue : totalDue // ignore: cast_nullable_to_non_nullable
as Decimal,feePlans: null == feePlans ? _self._feePlans : feePlans // ignore: cast_nullable_to_non_nullable
as List<FeePlanEntry>,
  ));
}

/// Create a copy of FeeSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeeCategoryCopyWith<$Res>? get feeCategory {
    if (_self.feeCategory == null) {
    return null;
  }

  return $FeeCategoryCopyWith<$Res>(_self.feeCategory!, (value) {
    return _then(_self.copyWith(feeCategory: value));
  });
}
}

// dart format on
