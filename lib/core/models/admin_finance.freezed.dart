// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_finance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminFeeDashboard {

@JsonKey(name: 'total_fee_collected')@DecimalConverter() Decimal get totalFeeCollected;@JsonKey(name: 'todays_collection')@DecimalConverter() Decimal get todaysCollection;@JsonKey(name: 'this_month_collection')@DecimalConverter() Decimal get thisMonthCollection;@JsonKey(name: 'pending_amount')@DecimalConverter() Decimal get pendingAmount;@JsonKey(name: 'students_with_pending_fees') int get studentsWithPendingFees;@JsonKey(name: 'active_scholarships') int get activeScholarships;
/// Create a copy of AdminFeeDashboard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminFeeDashboardCopyWith<AdminFeeDashboard> get copyWith => _$AdminFeeDashboardCopyWithImpl<AdminFeeDashboard>(this as AdminFeeDashboard, _$identity);

  /// Serializes this AdminFeeDashboard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminFeeDashboard;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminFeeDashboard&&(identical(other.totalFeeCollected, _this.totalFeeCollected) || other.totalFeeCollected == _this.totalFeeCollected)&&(identical(other.todaysCollection, _this.todaysCollection) || other.todaysCollection == _this.todaysCollection)&&(identical(other.thisMonthCollection, _this.thisMonthCollection) || other.thisMonthCollection == _this.thisMonthCollection)&&(identical(other.pendingAmount, _this.pendingAmount) || other.pendingAmount == _this.pendingAmount)&&(identical(other.studentsWithPendingFees, _this.studentsWithPendingFees) || other.studentsWithPendingFees == _this.studentsWithPendingFees)&&(identical(other.activeScholarships, _this.activeScholarships) || other.activeScholarships == _this.activeScholarships));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminFeeDashboard;
  return Object.hash(runtimeType,_this.totalFeeCollected,_this.todaysCollection,_this.thisMonthCollection,_this.pendingAmount,_this.studentsWithPendingFees,_this.activeScholarships);
}

@override
String toString() {
  final _this = this as AdminFeeDashboard;
  return 'AdminFeeDashboard(totalFeeCollected: ${_this.totalFeeCollected}, todaysCollection: ${_this.todaysCollection}, thisMonthCollection: ${_this.thisMonthCollection}, pendingAmount: ${_this.pendingAmount}, studentsWithPendingFees: ${_this.studentsWithPendingFees}, activeScholarships: ${_this.activeScholarships})';
}


}

/// @nodoc
abstract mixin class $AdminFeeDashboardCopyWith<$Res>  {
  factory $AdminFeeDashboardCopyWith(AdminFeeDashboard value, $Res Function(AdminFeeDashboard) _then) = _$AdminFeeDashboardCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_fee_collected')@DecimalConverter() Decimal totalFeeCollected,@JsonKey(name: 'todays_collection')@DecimalConverter() Decimal todaysCollection,@JsonKey(name: 'this_month_collection')@DecimalConverter() Decimal thisMonthCollection,@JsonKey(name: 'pending_amount')@DecimalConverter() Decimal pendingAmount,@JsonKey(name: 'students_with_pending_fees') int studentsWithPendingFees,@JsonKey(name: 'active_scholarships') int activeScholarships
});




}
/// @nodoc
class _$AdminFeeDashboardCopyWithImpl<$Res>
    implements $AdminFeeDashboardCopyWith<$Res> {
  _$AdminFeeDashboardCopyWithImpl(this._self, this._then);

  final AdminFeeDashboard _self;
  final $Res Function(AdminFeeDashboard) _then;

/// Create a copy of AdminFeeDashboard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalFeeCollected = null,Object? todaysCollection = null,Object? thisMonthCollection = null,Object? pendingAmount = null,Object? studentsWithPendingFees = null,Object? activeScholarships = null,}) {
  return _then(AdminFeeDashboard(
totalFeeCollected: null == totalFeeCollected ? _self.totalFeeCollected : totalFeeCollected // ignore: cast_nullable_to_non_nullable
as Decimal,todaysCollection: null == todaysCollection ? _self.todaysCollection : todaysCollection // ignore: cast_nullable_to_non_nullable
as Decimal,thisMonthCollection: null == thisMonthCollection ? _self.thisMonthCollection : thisMonthCollection // ignore: cast_nullable_to_non_nullable
as Decimal,pendingAmount: null == pendingAmount ? _self.pendingAmount : pendingAmount // ignore: cast_nullable_to_non_nullable
as Decimal,studentsWithPendingFees: null == studentsWithPendingFees ? _self.studentsWithPendingFees : studentsWithPendingFees // ignore: cast_nullable_to_non_nullable
as int,activeScholarships: null == activeScholarships ? _self.activeScholarships : activeScholarships // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminFeeDashboard].
extension AdminFeeDashboardPatterns on AdminFeeDashboard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminFeeDashboard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminFeeDashboard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminFeeDashboard value)  $default,){
final _that = this;
switch (_that) {
case _AdminFeeDashboard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminFeeDashboard value)?  $default,){
final _that = this;
switch (_that) {
case _AdminFeeDashboard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_fee_collected')@DecimalConverter()  Decimal totalFeeCollected, @JsonKey(name: 'todays_collection')@DecimalConverter()  Decimal todaysCollection, @JsonKey(name: 'this_month_collection')@DecimalConverter()  Decimal thisMonthCollection, @JsonKey(name: 'pending_amount')@DecimalConverter()  Decimal pendingAmount, @JsonKey(name: 'students_with_pending_fees')  int studentsWithPendingFees, @JsonKey(name: 'active_scholarships')  int activeScholarships)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminFeeDashboard() when $default != null:
return $default(_that.totalFeeCollected,_that.todaysCollection,_that.thisMonthCollection,_that.pendingAmount,_that.studentsWithPendingFees,_that.activeScholarships);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_fee_collected')@DecimalConverter()  Decimal totalFeeCollected, @JsonKey(name: 'todays_collection')@DecimalConverter()  Decimal todaysCollection, @JsonKey(name: 'this_month_collection')@DecimalConverter()  Decimal thisMonthCollection, @JsonKey(name: 'pending_amount')@DecimalConverter()  Decimal pendingAmount, @JsonKey(name: 'students_with_pending_fees')  int studentsWithPendingFees, @JsonKey(name: 'active_scholarships')  int activeScholarships)  $default,) {final _that = this;
switch (_that) {
case _AdminFeeDashboard():
return $default(_that.totalFeeCollected,_that.todaysCollection,_that.thisMonthCollection,_that.pendingAmount,_that.studentsWithPendingFees,_that.activeScholarships);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_fee_collected')@DecimalConverter()  Decimal totalFeeCollected, @JsonKey(name: 'todays_collection')@DecimalConverter()  Decimal todaysCollection, @JsonKey(name: 'this_month_collection')@DecimalConverter()  Decimal thisMonthCollection, @JsonKey(name: 'pending_amount')@DecimalConverter()  Decimal pendingAmount, @JsonKey(name: 'students_with_pending_fees')  int studentsWithPendingFees, @JsonKey(name: 'active_scholarships')  int activeScholarships)?  $default,) {final _that = this;
switch (_that) {
case _AdminFeeDashboard() when $default != null:
return $default(_that.totalFeeCollected,_that.todaysCollection,_that.thisMonthCollection,_that.pendingAmount,_that.studentsWithPendingFees,_that.activeScholarships);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminFeeDashboard implements AdminFeeDashboard {
  const _AdminFeeDashboard({@JsonKey(name: 'total_fee_collected')@DecimalConverter() required this.totalFeeCollected, @JsonKey(name: 'todays_collection')@DecimalConverter() required this.todaysCollection, @JsonKey(name: 'this_month_collection')@DecimalConverter() required this.thisMonthCollection, @JsonKey(name: 'pending_amount')@DecimalConverter() required this.pendingAmount, @JsonKey(name: 'students_with_pending_fees') this.studentsWithPendingFees = 0, @JsonKey(name: 'active_scholarships') this.activeScholarships = 0});
  factory _AdminFeeDashboard.fromJson(Map<String, dynamic> json) => _$AdminFeeDashboardFromJson(json);

@override@JsonKey(name: 'total_fee_collected')@DecimalConverter() final  Decimal totalFeeCollected;
@override@JsonKey(name: 'todays_collection')@DecimalConverter() final  Decimal todaysCollection;
@override@JsonKey(name: 'this_month_collection')@DecimalConverter() final  Decimal thisMonthCollection;
@override@JsonKey(name: 'pending_amount')@DecimalConverter() final  Decimal pendingAmount;
@override@JsonKey(name: 'students_with_pending_fees') final  int studentsWithPendingFees;
@override@JsonKey(name: 'active_scholarships') final  int activeScholarships;

/// Create a copy of AdminFeeDashboard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminFeeDashboardCopyWith<_AdminFeeDashboard> get copyWith => __$AdminFeeDashboardCopyWithImpl<_AdminFeeDashboard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminFeeDashboardToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminFeeDashboard&&(identical(other.totalFeeCollected, totalFeeCollected) || other.totalFeeCollected == totalFeeCollected)&&(identical(other.todaysCollection, todaysCollection) || other.todaysCollection == todaysCollection)&&(identical(other.thisMonthCollection, thisMonthCollection) || other.thisMonthCollection == thisMonthCollection)&&(identical(other.pendingAmount, pendingAmount) || other.pendingAmount == pendingAmount)&&(identical(other.studentsWithPendingFees, studentsWithPendingFees) || other.studentsWithPendingFees == studentsWithPendingFees)&&(identical(other.activeScholarships, activeScholarships) || other.activeScholarships == activeScholarships));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,totalFeeCollected,todaysCollection,thisMonthCollection,pendingAmount,studentsWithPendingFees,activeScholarships);
}

@override
String toString() {
    return 'AdminFeeDashboard(totalFeeCollected: $totalFeeCollected, todaysCollection: $todaysCollection, thisMonthCollection: $thisMonthCollection, pendingAmount: $pendingAmount, studentsWithPendingFees: $studentsWithPendingFees, activeScholarships: $activeScholarships)';
}


}

/// @nodoc
abstract mixin class _$AdminFeeDashboardCopyWith<$Res> implements $AdminFeeDashboardCopyWith<$Res> {
  factory _$AdminFeeDashboardCopyWith(_AdminFeeDashboard value, $Res Function(_AdminFeeDashboard) _then) = __$AdminFeeDashboardCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_fee_collected')@DecimalConverter() Decimal totalFeeCollected,@JsonKey(name: 'todays_collection')@DecimalConverter() Decimal todaysCollection,@JsonKey(name: 'this_month_collection')@DecimalConverter() Decimal thisMonthCollection,@JsonKey(name: 'pending_amount')@DecimalConverter() Decimal pendingAmount,@JsonKey(name: 'students_with_pending_fees') int studentsWithPendingFees,@JsonKey(name: 'active_scholarships') int activeScholarships
});




}
/// @nodoc
class __$AdminFeeDashboardCopyWithImpl<$Res>
    implements _$AdminFeeDashboardCopyWith<$Res> {
  __$AdminFeeDashboardCopyWithImpl(this._self, this._then);

  final _AdminFeeDashboard _self;
  final $Res Function(_AdminFeeDashboard) _then;

/// Create a copy of AdminFeeDashboard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalFeeCollected = null,Object? todaysCollection = null,Object? thisMonthCollection = null,Object? pendingAmount = null,Object? studentsWithPendingFees = null,Object? activeScholarships = null,}) {
  return _then(_AdminFeeDashboard(
totalFeeCollected: null == totalFeeCollected ? _self.totalFeeCollected : totalFeeCollected // ignore: cast_nullable_to_non_nullable
as Decimal,todaysCollection: null == todaysCollection ? _self.todaysCollection : todaysCollection // ignore: cast_nullable_to_non_nullable
as Decimal,thisMonthCollection: null == thisMonthCollection ? _self.thisMonthCollection : thisMonthCollection // ignore: cast_nullable_to_non_nullable
as Decimal,pendingAmount: null == pendingAmount ? _self.pendingAmount : pendingAmount // ignore: cast_nullable_to_non_nullable
as Decimal,studentsWithPendingFees: null == studentsWithPendingFees ? _self.studentsWithPendingFees : studentsWithPendingFees // ignore: cast_nullable_to_non_nullable
as int,activeScholarships: null == activeScholarships ? _self.activeScholarships : activeScholarships // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$AdminFeeCategory {

@JsonKey(name: 'fee_category_id') String get feeCategoryId;@JsonKey(name: 'category_name') String get categoryName;@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of AdminFeeCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminFeeCategoryCopyWith<AdminFeeCategory> get copyWith => _$AdminFeeCategoryCopyWithImpl<AdminFeeCategory>(this as AdminFeeCategory, _$identity);

  /// Serializes this AdminFeeCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminFeeCategory;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminFeeCategory&&(identical(other.feeCategoryId, _this.feeCategoryId) || other.feeCategoryId == _this.feeCategoryId)&&(identical(other.categoryName, _this.categoryName) || other.categoryName == _this.categoryName)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminFeeCategory;
  return Object.hash(runtimeType,_this.feeCategoryId,_this.categoryName,_this.isActive);
}

@override
String toString() {
  final _this = this as AdminFeeCategory;
  return 'AdminFeeCategory(feeCategoryId: ${_this.feeCategoryId}, categoryName: ${_this.categoryName}, isActive: ${_this.isActive})';
}


}

/// @nodoc
abstract mixin class $AdminFeeCategoryCopyWith<$Res>  {
  factory $AdminFeeCategoryCopyWith(AdminFeeCategory value, $Res Function(AdminFeeCategory) _then) = _$AdminFeeCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fee_category_id') String feeCategoryId,@JsonKey(name: 'category_name') String categoryName,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class _$AdminFeeCategoryCopyWithImpl<$Res>
    implements $AdminFeeCategoryCopyWith<$Res> {
  _$AdminFeeCategoryCopyWithImpl(this._self, this._then);

  final AdminFeeCategory _self;
  final $Res Function(AdminFeeCategory) _then;

/// Create a copy of AdminFeeCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feeCategoryId = null,Object? categoryName = null,Object? isActive = null,}) {
  return _then(AdminFeeCategory(
feeCategoryId: null == feeCategoryId ? _self.feeCategoryId : feeCategoryId // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminFeeCategory].
extension AdminFeeCategoryPatterns on AdminFeeCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminFeeCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminFeeCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminFeeCategory value)  $default,){
final _that = this;
switch (_that) {
case _AdminFeeCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminFeeCategory value)?  $default,){
final _that = this;
switch (_that) {
case _AdminFeeCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_category_id')  String feeCategoryId, @JsonKey(name: 'category_name')  String categoryName, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminFeeCategory() when $default != null:
return $default(_that.feeCategoryId,_that.categoryName,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_category_id')  String feeCategoryId, @JsonKey(name: 'category_name')  String categoryName, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _AdminFeeCategory():
return $default(_that.feeCategoryId,_that.categoryName,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fee_category_id')  String feeCategoryId, @JsonKey(name: 'category_name')  String categoryName, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _AdminFeeCategory() when $default != null:
return $default(_that.feeCategoryId,_that.categoryName,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminFeeCategory implements AdminFeeCategory {
  const _AdminFeeCategory({@JsonKey(name: 'fee_category_id') required this.feeCategoryId, @JsonKey(name: 'category_name') required this.categoryName, @JsonKey(name: 'is_active') this.isActive = true});
  factory _AdminFeeCategory.fromJson(Map<String, dynamic> json) => _$AdminFeeCategoryFromJson(json);

@override@JsonKey(name: 'fee_category_id') final  String feeCategoryId;
@override@JsonKey(name: 'category_name') final  String categoryName;
@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of AdminFeeCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminFeeCategoryCopyWith<_AdminFeeCategory> get copyWith => __$AdminFeeCategoryCopyWithImpl<_AdminFeeCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminFeeCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminFeeCategory&&(identical(other.feeCategoryId, feeCategoryId) || other.feeCategoryId == feeCategoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,feeCategoryId,categoryName,isActive);
}

@override
String toString() {
    return 'AdminFeeCategory(feeCategoryId: $feeCategoryId, categoryName: $categoryName, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$AdminFeeCategoryCopyWith<$Res> implements $AdminFeeCategoryCopyWith<$Res> {
  factory _$AdminFeeCategoryCopyWith(_AdminFeeCategory value, $Res Function(_AdminFeeCategory) _then) = __$AdminFeeCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fee_category_id') String feeCategoryId,@JsonKey(name: 'category_name') String categoryName,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class __$AdminFeeCategoryCopyWithImpl<$Res>
    implements _$AdminFeeCategoryCopyWith<$Res> {
  __$AdminFeeCategoryCopyWithImpl(this._self, this._then);

  final _AdminFeeCategory _self;
  final $Res Function(_AdminFeeCategory) _then;

/// Create a copy of AdminFeeCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feeCategoryId = null,Object? categoryName = null,Object? isActive = null,}) {
  return _then(_AdminFeeCategory(
feeCategoryId: null == feeCategoryId ? _self.feeCategoryId : feeCategoryId // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$AdminFeeHead {

@JsonKey(name: 'fee_head_id') String get feeHeadId;@JsonKey(name: 'fee_head_name') String get feeHeadName;@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of AdminFeeHead
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminFeeHeadCopyWith<AdminFeeHead> get copyWith => _$AdminFeeHeadCopyWithImpl<AdminFeeHead>(this as AdminFeeHead, _$identity);

  /// Serializes this AdminFeeHead to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminFeeHead;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminFeeHead&&(identical(other.feeHeadId, _this.feeHeadId) || other.feeHeadId == _this.feeHeadId)&&(identical(other.feeHeadName, _this.feeHeadName) || other.feeHeadName == _this.feeHeadName)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminFeeHead;
  return Object.hash(runtimeType,_this.feeHeadId,_this.feeHeadName,_this.isActive);
}

@override
String toString() {
  final _this = this as AdminFeeHead;
  return 'AdminFeeHead(feeHeadId: ${_this.feeHeadId}, feeHeadName: ${_this.feeHeadName}, isActive: ${_this.isActive})';
}


}

/// @nodoc
abstract mixin class $AdminFeeHeadCopyWith<$Res>  {
  factory $AdminFeeHeadCopyWith(AdminFeeHead value, $Res Function(AdminFeeHead) _then) = _$AdminFeeHeadCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fee_head_id') String feeHeadId,@JsonKey(name: 'fee_head_name') String feeHeadName,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class _$AdminFeeHeadCopyWithImpl<$Res>
    implements $AdminFeeHeadCopyWith<$Res> {
  _$AdminFeeHeadCopyWithImpl(this._self, this._then);

  final AdminFeeHead _self;
  final $Res Function(AdminFeeHead) _then;

/// Create a copy of AdminFeeHead
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feeHeadId = null,Object? feeHeadName = null,Object? isActive = null,}) {
  return _then(AdminFeeHead(
feeHeadId: null == feeHeadId ? _self.feeHeadId : feeHeadId // ignore: cast_nullable_to_non_nullable
as String,feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminFeeHead].
extension AdminFeeHeadPatterns on AdminFeeHead {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminFeeHead value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminFeeHead() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminFeeHead value)  $default,){
final _that = this;
switch (_that) {
case _AdminFeeHead():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminFeeHead value)?  $default,){
final _that = this;
switch (_that) {
case _AdminFeeHead() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_head_id')  String feeHeadId, @JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminFeeHead() when $default != null:
return $default(_that.feeHeadId,_that.feeHeadName,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_head_id')  String feeHeadId, @JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _AdminFeeHead():
return $default(_that.feeHeadId,_that.feeHeadName,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fee_head_id')  String feeHeadId, @JsonKey(name: 'fee_head_name')  String feeHeadName, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _AdminFeeHead() when $default != null:
return $default(_that.feeHeadId,_that.feeHeadName,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminFeeHead implements AdminFeeHead {
  const _AdminFeeHead({@JsonKey(name: 'fee_head_id') required this.feeHeadId, @JsonKey(name: 'fee_head_name') required this.feeHeadName, @JsonKey(name: 'is_active') this.isActive = true});
  factory _AdminFeeHead.fromJson(Map<String, dynamic> json) => _$AdminFeeHeadFromJson(json);

@override@JsonKey(name: 'fee_head_id') final  String feeHeadId;
@override@JsonKey(name: 'fee_head_name') final  String feeHeadName;
@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of AdminFeeHead
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminFeeHeadCopyWith<_AdminFeeHead> get copyWith => __$AdminFeeHeadCopyWithImpl<_AdminFeeHead>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminFeeHeadToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminFeeHead&&(identical(other.feeHeadId, feeHeadId) || other.feeHeadId == feeHeadId)&&(identical(other.feeHeadName, feeHeadName) || other.feeHeadName == feeHeadName)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,feeHeadId,feeHeadName,isActive);
}

@override
String toString() {
    return 'AdminFeeHead(feeHeadId: $feeHeadId, feeHeadName: $feeHeadName, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$AdminFeeHeadCopyWith<$Res> implements $AdminFeeHeadCopyWith<$Res> {
  factory _$AdminFeeHeadCopyWith(_AdminFeeHead value, $Res Function(_AdminFeeHead) _then) = __$AdminFeeHeadCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fee_head_id') String feeHeadId,@JsonKey(name: 'fee_head_name') String feeHeadName,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class __$AdminFeeHeadCopyWithImpl<$Res>
    implements _$AdminFeeHeadCopyWith<$Res> {
  __$AdminFeeHeadCopyWithImpl(this._self, this._then);

  final _AdminFeeHead _self;
  final $Res Function(_AdminFeeHead) _then;

/// Create a copy of AdminFeeHead
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feeHeadId = null,Object? feeHeadName = null,Object? isActive = null,}) {
  return _then(_AdminFeeHead(
feeHeadId: null == feeHeadId ? _self.feeHeadId : feeHeadId // ignore: cast_nullable_to_non_nullable
as String,feeHeadName: null == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$FeeHeadRef {

@JsonKey(name: 'fee_head_id') String? get feeHeadId;@JsonKey(name: 'fee_head_name') String? get feeHeadName;
/// Create a copy of FeeHeadRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeHeadRefCopyWith<FeeHeadRef> get copyWith => _$FeeHeadRefCopyWithImpl<FeeHeadRef>(this as FeeHeadRef, _$identity);

  /// Serializes this FeeHeadRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FeeHeadRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeHeadRef&&(identical(other.feeHeadId, _this.feeHeadId) || other.feeHeadId == _this.feeHeadId)&&(identical(other.feeHeadName, _this.feeHeadName) || other.feeHeadName == _this.feeHeadName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeeHeadRef;
  return Object.hash(runtimeType,_this.feeHeadId,_this.feeHeadName);
}

@override
String toString() {
  final _this = this as FeeHeadRef;
  return 'FeeHeadRef(feeHeadId: ${_this.feeHeadId}, feeHeadName: ${_this.feeHeadName})';
}


}

/// @nodoc
abstract mixin class $FeeHeadRefCopyWith<$Res>  {
  factory $FeeHeadRefCopyWith(FeeHeadRef value, $Res Function(FeeHeadRef) _then) = _$FeeHeadRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fee_head_id') String? feeHeadId,@JsonKey(name: 'fee_head_name') String? feeHeadName
});




}
/// @nodoc
class _$FeeHeadRefCopyWithImpl<$Res>
    implements $FeeHeadRefCopyWith<$Res> {
  _$FeeHeadRefCopyWithImpl(this._self, this._then);

  final FeeHeadRef _self;
  final $Res Function(FeeHeadRef) _then;

/// Create a copy of FeeHeadRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feeHeadId = freezed,Object? feeHeadName = freezed,}) {
  return _then(FeeHeadRef(
feeHeadId: freezed == feeHeadId ? _self.feeHeadId : feeHeadId // ignore: cast_nullable_to_non_nullable
as String?,feeHeadName: freezed == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FeeHeadRef].
extension FeeHeadRefPatterns on FeeHeadRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeeHeadRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeeHeadRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeeHeadRef value)  $default,){
final _that = this;
switch (_that) {
case _FeeHeadRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeeHeadRef value)?  $default,){
final _that = this;
switch (_that) {
case _FeeHeadRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_head_id')  String? feeHeadId, @JsonKey(name: 'fee_head_name')  String? feeHeadName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeHeadRef() when $default != null:
return $default(_that.feeHeadId,_that.feeHeadName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_head_id')  String? feeHeadId, @JsonKey(name: 'fee_head_name')  String? feeHeadName)  $default,) {final _that = this;
switch (_that) {
case _FeeHeadRef():
return $default(_that.feeHeadId,_that.feeHeadName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fee_head_id')  String? feeHeadId, @JsonKey(name: 'fee_head_name')  String? feeHeadName)?  $default,) {final _that = this;
switch (_that) {
case _FeeHeadRef() when $default != null:
return $default(_that.feeHeadId,_that.feeHeadName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeHeadRef implements FeeHeadRef {
  const _FeeHeadRef({@JsonKey(name: 'fee_head_id') this.feeHeadId, @JsonKey(name: 'fee_head_name') this.feeHeadName});
  factory _FeeHeadRef.fromJson(Map<String, dynamic> json) => _$FeeHeadRefFromJson(json);

@override@JsonKey(name: 'fee_head_id') final  String? feeHeadId;
@override@JsonKey(name: 'fee_head_name') final  String? feeHeadName;

/// Create a copy of FeeHeadRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeHeadRefCopyWith<_FeeHeadRef> get copyWith => __$FeeHeadRefCopyWithImpl<_FeeHeadRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeHeadRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeHeadRef&&(identical(other.feeHeadId, feeHeadId) || other.feeHeadId == feeHeadId)&&(identical(other.feeHeadName, feeHeadName) || other.feeHeadName == feeHeadName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,feeHeadId,feeHeadName);
}

@override
String toString() {
    return 'FeeHeadRef(feeHeadId: $feeHeadId, feeHeadName: $feeHeadName)';
}


}

/// @nodoc
abstract mixin class _$FeeHeadRefCopyWith<$Res> implements $FeeHeadRefCopyWith<$Res> {
  factory _$FeeHeadRefCopyWith(_FeeHeadRef value, $Res Function(_FeeHeadRef) _then) = __$FeeHeadRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fee_head_id') String? feeHeadId,@JsonKey(name: 'fee_head_name') String? feeHeadName
});




}
/// @nodoc
class __$FeeHeadRefCopyWithImpl<$Res>
    implements _$FeeHeadRefCopyWith<$Res> {
  __$FeeHeadRefCopyWithImpl(this._self, this._then);

  final _FeeHeadRef _self;
  final $Res Function(_FeeHeadRef) _then;

/// Create a copy of FeeHeadRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feeHeadId = freezed,Object? feeHeadName = freezed,}) {
  return _then(_FeeHeadRef(
feeHeadId: freezed == feeHeadId ? _self.feeHeadId : feeHeadId // ignore: cast_nullable_to_non_nullable
as String?,feeHeadName: freezed == feeHeadName ? _self.feeHeadName : feeHeadName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FeeCategoryRef {

@JsonKey(name: 'fee_category_id') String? get feeCategoryId;@JsonKey(name: 'category_name') String? get categoryName;
/// Create a copy of FeeCategoryRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeCategoryRefCopyWith<FeeCategoryRef> get copyWith => _$FeeCategoryRefCopyWithImpl<FeeCategoryRef>(this as FeeCategoryRef, _$identity);

  /// Serializes this FeeCategoryRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FeeCategoryRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeCategoryRef&&(identical(other.feeCategoryId, _this.feeCategoryId) || other.feeCategoryId == _this.feeCategoryId)&&(identical(other.categoryName, _this.categoryName) || other.categoryName == _this.categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeeCategoryRef;
  return Object.hash(runtimeType,_this.feeCategoryId,_this.categoryName);
}

@override
String toString() {
  final _this = this as FeeCategoryRef;
  return 'FeeCategoryRef(feeCategoryId: ${_this.feeCategoryId}, categoryName: ${_this.categoryName})';
}


}

/// @nodoc
abstract mixin class $FeeCategoryRefCopyWith<$Res>  {
  factory $FeeCategoryRefCopyWith(FeeCategoryRef value, $Res Function(FeeCategoryRef) _then) = _$FeeCategoryRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fee_category_id') String? feeCategoryId,@JsonKey(name: 'category_name') String? categoryName
});




}
/// @nodoc
class _$FeeCategoryRefCopyWithImpl<$Res>
    implements $FeeCategoryRefCopyWith<$Res> {
  _$FeeCategoryRefCopyWithImpl(this._self, this._then);

  final FeeCategoryRef _self;
  final $Res Function(FeeCategoryRef) _then;

/// Create a copy of FeeCategoryRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feeCategoryId = freezed,Object? categoryName = freezed,}) {
  return _then(FeeCategoryRef(
feeCategoryId: freezed == feeCategoryId ? _self.feeCategoryId : feeCategoryId // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FeeCategoryRef].
extension FeeCategoryRefPatterns on FeeCategoryRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeeCategoryRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeeCategoryRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeeCategoryRef value)  $default,){
final _that = this;
switch (_that) {
case _FeeCategoryRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeeCategoryRef value)?  $default,){
final _that = this;
switch (_that) {
case _FeeCategoryRef() when $default != null:
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
case _FeeCategoryRef() when $default != null:
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
case _FeeCategoryRef():
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
case _FeeCategoryRef() when $default != null:
return $default(_that.feeCategoryId,_that.categoryName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeCategoryRef implements FeeCategoryRef {
  const _FeeCategoryRef({@JsonKey(name: 'fee_category_id') this.feeCategoryId, @JsonKey(name: 'category_name') this.categoryName});
  factory _FeeCategoryRef.fromJson(Map<String, dynamic> json) => _$FeeCategoryRefFromJson(json);

@override@JsonKey(name: 'fee_category_id') final  String? feeCategoryId;
@override@JsonKey(name: 'category_name') final  String? categoryName;

/// Create a copy of FeeCategoryRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeCategoryRefCopyWith<_FeeCategoryRef> get copyWith => __$FeeCategoryRefCopyWithImpl<_FeeCategoryRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeCategoryRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeCategoryRef&&(identical(other.feeCategoryId, feeCategoryId) || other.feeCategoryId == feeCategoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,feeCategoryId,categoryName);
}

@override
String toString() {
    return 'FeeCategoryRef(feeCategoryId: $feeCategoryId, categoryName: $categoryName)';
}


}

/// @nodoc
abstract mixin class _$FeeCategoryRefCopyWith<$Res> implements $FeeCategoryRefCopyWith<$Res> {
  factory _$FeeCategoryRefCopyWith(_FeeCategoryRef value, $Res Function(_FeeCategoryRef) _then) = __$FeeCategoryRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fee_category_id') String? feeCategoryId,@JsonKey(name: 'category_name') String? categoryName
});




}
/// @nodoc
class __$FeeCategoryRefCopyWithImpl<$Res>
    implements _$FeeCategoryRefCopyWith<$Res> {
  __$FeeCategoryRefCopyWithImpl(this._self, this._then);

  final _FeeCategoryRef _self;
  final $Res Function(_FeeCategoryRef) _then;

/// Create a copy of FeeCategoryRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feeCategoryId = freezed,Object? categoryName = freezed,}) {
  return _then(_FeeCategoryRef(
feeCategoryId: freezed == feeCategoryId ? _self.feeCategoryId : feeCategoryId // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdminFeeStructure {

@JsonKey(name: 'fee_structure_id') String get feeStructureId;@JsonKey(name: 'class_id') String? get classId;@JsonKey(name: 'session_id') String? get sessionId;@JsonKey(name: 'fee_head_id') String? get feeHeadId;@JsonKey(name: 'fee_category_id') String? get feeCategoryId;@DecimalConverter() Decimal get amount;@JsonKey(name: 'due_date') DateTime? get dueDate;@JsonKey(name: 'classes') ClassRef? get classRef;@JsonKey(name: 'academic_sessions') SessionRef? get session;@JsonKey(name: 'fee_heads') FeeHeadRef? get feeHead;@JsonKey(name: 'fee_categories') FeeCategoryRef? get feeCategory;
/// Create a copy of AdminFeeStructure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminFeeStructureCopyWith<AdminFeeStructure> get copyWith => _$AdminFeeStructureCopyWithImpl<AdminFeeStructure>(this as AdminFeeStructure, _$identity);

  /// Serializes this AdminFeeStructure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminFeeStructure;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminFeeStructure&&(identical(other.feeStructureId, _this.feeStructureId) || other.feeStructureId == _this.feeStructureId)&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.feeHeadId, _this.feeHeadId) || other.feeHeadId == _this.feeHeadId)&&(identical(other.feeCategoryId, _this.feeCategoryId) || other.feeCategoryId == _this.feeCategoryId)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.classRef, _this.classRef) || other.classRef == _this.classRef)&&(identical(other.session, _this.session) || other.session == _this.session)&&(identical(other.feeHead, _this.feeHead) || other.feeHead == _this.feeHead)&&(identical(other.feeCategory, _this.feeCategory) || other.feeCategory == _this.feeCategory));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminFeeStructure;
  return Object.hash(runtimeType,_this.feeStructureId,_this.classId,_this.sessionId,_this.feeHeadId,_this.feeCategoryId,_this.amount,_this.dueDate,_this.classRef,_this.session,_this.feeHead,_this.feeCategory);
}

@override
String toString() {
  final _this = this as AdminFeeStructure;
  return 'AdminFeeStructure(feeStructureId: ${_this.feeStructureId}, classId: ${_this.classId}, sessionId: ${_this.sessionId}, feeHeadId: ${_this.feeHeadId}, feeCategoryId: ${_this.feeCategoryId}, amount: ${_this.amount}, dueDate: ${_this.dueDate}, classRef: ${_this.classRef}, session: ${_this.session}, feeHead: ${_this.feeHead}, feeCategory: ${_this.feeCategory})';
}


}

/// @nodoc
abstract mixin class $AdminFeeStructureCopyWith<$Res>  {
  factory $AdminFeeStructureCopyWith(AdminFeeStructure value, $Res Function(AdminFeeStructure) _then) = _$AdminFeeStructureCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fee_structure_id') String feeStructureId,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'fee_head_id') String? feeHeadId,@JsonKey(name: 'fee_category_id') String? feeCategoryId,@DecimalConverter() Decimal amount,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'academic_sessions') SessionRef? session,@JsonKey(name: 'fee_heads') FeeHeadRef? feeHead,@JsonKey(name: 'fee_categories') FeeCategoryRef? feeCategory
});


$ClassRefCopyWith<$Res>? get classRef;$SessionRefCopyWith<$Res>? get session;$FeeHeadRefCopyWith<$Res>? get feeHead;$FeeCategoryRefCopyWith<$Res>? get feeCategory;

}
/// @nodoc
class _$AdminFeeStructureCopyWithImpl<$Res>
    implements $AdminFeeStructureCopyWith<$Res> {
  _$AdminFeeStructureCopyWithImpl(this._self, this._then);

  final AdminFeeStructure _self;
  final $Res Function(AdminFeeStructure) _then;

/// Create a copy of AdminFeeStructure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feeStructureId = null,Object? classId = freezed,Object? sessionId = freezed,Object? feeHeadId = freezed,Object? feeCategoryId = freezed,Object? amount = null,Object? dueDate = freezed,Object? classRef = freezed,Object? session = freezed,Object? feeHead = freezed,Object? feeCategory = freezed,}) {
  return _then(AdminFeeStructure(
feeStructureId: null == feeStructureId ? _self.feeStructureId : feeStructureId // ignore: cast_nullable_to_non_nullable
as String,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,feeHeadId: freezed == feeHeadId ? _self.feeHeadId : feeHeadId // ignore: cast_nullable_to_non_nullable
as String?,feeCategoryId: freezed == feeCategoryId ? _self.feeCategoryId : feeCategoryId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,feeHead: freezed == feeHead ? _self.feeHead : feeHead // ignore: cast_nullable_to_non_nullable
as FeeHeadRef?,feeCategory: freezed == feeCategory ? _self.feeCategory : feeCategory // ignore: cast_nullable_to_non_nullable
as FeeCategoryRef?,
  ));
}
/// Create a copy of AdminFeeStructure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get classRef {
    if (_self.classRef == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.classRef!, (value) {
    return _then(_self.copyWith(classRef: value));
  });
}/// Create a copy of AdminFeeStructure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionRefCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $SessionRefCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}/// Create a copy of AdminFeeStructure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeeHeadRefCopyWith<$Res>? get feeHead {
    if (_self.feeHead == null) {
    return null;
  }

  return $FeeHeadRefCopyWith<$Res>(_self.feeHead!, (value) {
    return _then(_self.copyWith(feeHead: value));
  });
}/// Create a copy of AdminFeeStructure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeeCategoryRefCopyWith<$Res>? get feeCategory {
    if (_self.feeCategory == null) {
    return null;
  }

  return $FeeCategoryRefCopyWith<$Res>(_self.feeCategory!, (value) {
    return _then(_self.copyWith(feeCategory: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminFeeStructure].
extension AdminFeeStructurePatterns on AdminFeeStructure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminFeeStructure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminFeeStructure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminFeeStructure value)  $default,){
final _that = this;
switch (_that) {
case _AdminFeeStructure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminFeeStructure value)?  $default,){
final _that = this;
switch (_that) {
case _AdminFeeStructure() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_structure_id')  String feeStructureId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'fee_head_id')  String? feeHeadId, @JsonKey(name: 'fee_category_id')  String? feeCategoryId, @DecimalConverter()  Decimal amount, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'academic_sessions')  SessionRef? session, @JsonKey(name: 'fee_heads')  FeeHeadRef? feeHead, @JsonKey(name: 'fee_categories')  FeeCategoryRef? feeCategory)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminFeeStructure() when $default != null:
return $default(_that.feeStructureId,_that.classId,_that.sessionId,_that.feeHeadId,_that.feeCategoryId,_that.amount,_that.dueDate,_that.classRef,_that.session,_that.feeHead,_that.feeCategory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fee_structure_id')  String feeStructureId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'fee_head_id')  String? feeHeadId, @JsonKey(name: 'fee_category_id')  String? feeCategoryId, @DecimalConverter()  Decimal amount, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'academic_sessions')  SessionRef? session, @JsonKey(name: 'fee_heads')  FeeHeadRef? feeHead, @JsonKey(name: 'fee_categories')  FeeCategoryRef? feeCategory)  $default,) {final _that = this;
switch (_that) {
case _AdminFeeStructure():
return $default(_that.feeStructureId,_that.classId,_that.sessionId,_that.feeHeadId,_that.feeCategoryId,_that.amount,_that.dueDate,_that.classRef,_that.session,_that.feeHead,_that.feeCategory);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fee_structure_id')  String feeStructureId, @JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'fee_head_id')  String? feeHeadId, @JsonKey(name: 'fee_category_id')  String? feeCategoryId, @DecimalConverter()  Decimal amount, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'classes')  ClassRef? classRef, @JsonKey(name: 'academic_sessions')  SessionRef? session, @JsonKey(name: 'fee_heads')  FeeHeadRef? feeHead, @JsonKey(name: 'fee_categories')  FeeCategoryRef? feeCategory)?  $default,) {final _that = this;
switch (_that) {
case _AdminFeeStructure() when $default != null:
return $default(_that.feeStructureId,_that.classId,_that.sessionId,_that.feeHeadId,_that.feeCategoryId,_that.amount,_that.dueDate,_that.classRef,_that.session,_that.feeHead,_that.feeCategory);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminFeeStructure implements AdminFeeStructure {
  const _AdminFeeStructure({@JsonKey(name: 'fee_structure_id') required this.feeStructureId, @JsonKey(name: 'class_id') this.classId, @JsonKey(name: 'session_id') this.sessionId, @JsonKey(name: 'fee_head_id') this.feeHeadId, @JsonKey(name: 'fee_category_id') this.feeCategoryId, @DecimalConverter() required this.amount, @JsonKey(name: 'due_date') this.dueDate, @JsonKey(name: 'classes') this.classRef, @JsonKey(name: 'academic_sessions') this.session, @JsonKey(name: 'fee_heads') this.feeHead, @JsonKey(name: 'fee_categories') this.feeCategory});
  factory _AdminFeeStructure.fromJson(Map<String, dynamic> json) => _$AdminFeeStructureFromJson(json);

@override@JsonKey(name: 'fee_structure_id') final  String feeStructureId;
@override@JsonKey(name: 'class_id') final  String? classId;
@override@JsonKey(name: 'session_id') final  String? sessionId;
@override@JsonKey(name: 'fee_head_id') final  String? feeHeadId;
@override@JsonKey(name: 'fee_category_id') final  String? feeCategoryId;
@override@DecimalConverter() final  Decimal amount;
@override@JsonKey(name: 'due_date') final  DateTime? dueDate;
@override@JsonKey(name: 'classes') final  ClassRef? classRef;
@override@JsonKey(name: 'academic_sessions') final  SessionRef? session;
@override@JsonKey(name: 'fee_heads') final  FeeHeadRef? feeHead;
@override@JsonKey(name: 'fee_categories') final  FeeCategoryRef? feeCategory;

/// Create a copy of AdminFeeStructure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminFeeStructureCopyWith<_AdminFeeStructure> get copyWith => __$AdminFeeStructureCopyWithImpl<_AdminFeeStructure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminFeeStructureToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminFeeStructure&&(identical(other.feeStructureId, feeStructureId) || other.feeStructureId == feeStructureId)&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.feeHeadId, feeHeadId) || other.feeHeadId == feeHeadId)&&(identical(other.feeCategoryId, feeCategoryId) || other.feeCategoryId == feeCategoryId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.classRef, classRef) || other.classRef == classRef)&&(identical(other.session, session) || other.session == session)&&(identical(other.feeHead, feeHead) || other.feeHead == feeHead)&&(identical(other.feeCategory, feeCategory) || other.feeCategory == feeCategory));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,feeStructureId,classId,sessionId,feeHeadId,feeCategoryId,amount,dueDate,classRef,session,feeHead,feeCategory);
}

@override
String toString() {
    return 'AdminFeeStructure(feeStructureId: $feeStructureId, classId: $classId, sessionId: $sessionId, feeHeadId: $feeHeadId, feeCategoryId: $feeCategoryId, amount: $amount, dueDate: $dueDate, classRef: $classRef, session: $session, feeHead: $feeHead, feeCategory: $feeCategory)';
}


}

/// @nodoc
abstract mixin class _$AdminFeeStructureCopyWith<$Res> implements $AdminFeeStructureCopyWith<$Res> {
  factory _$AdminFeeStructureCopyWith(_AdminFeeStructure value, $Res Function(_AdminFeeStructure) _then) = __$AdminFeeStructureCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fee_structure_id') String feeStructureId,@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'fee_head_id') String? feeHeadId,@JsonKey(name: 'fee_category_id') String? feeCategoryId,@DecimalConverter() Decimal amount,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'classes') ClassRef? classRef,@JsonKey(name: 'academic_sessions') SessionRef? session,@JsonKey(name: 'fee_heads') FeeHeadRef? feeHead,@JsonKey(name: 'fee_categories') FeeCategoryRef? feeCategory
});


@override $ClassRefCopyWith<$Res>? get classRef;@override $SessionRefCopyWith<$Res>? get session;@override $FeeHeadRefCopyWith<$Res>? get feeHead;@override $FeeCategoryRefCopyWith<$Res>? get feeCategory;

}
/// @nodoc
class __$AdminFeeStructureCopyWithImpl<$Res>
    implements _$AdminFeeStructureCopyWith<$Res> {
  __$AdminFeeStructureCopyWithImpl(this._self, this._then);

  final _AdminFeeStructure _self;
  final $Res Function(_AdminFeeStructure) _then;

/// Create a copy of AdminFeeStructure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feeStructureId = null,Object? classId = freezed,Object? sessionId = freezed,Object? feeHeadId = freezed,Object? feeCategoryId = freezed,Object? amount = null,Object? dueDate = freezed,Object? classRef = freezed,Object? session = freezed,Object? feeHead = freezed,Object? feeCategory = freezed,}) {
  return _then(_AdminFeeStructure(
feeStructureId: null == feeStructureId ? _self.feeStructureId : feeStructureId // ignore: cast_nullable_to_non_nullable
as String,classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,feeHeadId: freezed == feeHeadId ? _self.feeHeadId : feeHeadId // ignore: cast_nullable_to_non_nullable
as String?,feeCategoryId: freezed == feeCategoryId ? _self.feeCategoryId : feeCategoryId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,feeHead: freezed == feeHead ? _self.feeHead : feeHead // ignore: cast_nullable_to_non_nullable
as FeeHeadRef?,feeCategory: freezed == feeCategory ? _self.feeCategory : feeCategory // ignore: cast_nullable_to_non_nullable
as FeeCategoryRef?,
  ));
}

/// Create a copy of AdminFeeStructure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClassRefCopyWith<$Res>? get classRef {
    if (_self.classRef == null) {
    return null;
  }

  return $ClassRefCopyWith<$Res>(_self.classRef!, (value) {
    return _then(_self.copyWith(classRef: value));
  });
}/// Create a copy of AdminFeeStructure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionRefCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $SessionRefCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}/// Create a copy of AdminFeeStructure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeeHeadRefCopyWith<$Res>? get feeHead {
    if (_self.feeHead == null) {
    return null;
  }

  return $FeeHeadRefCopyWith<$Res>(_self.feeHead!, (value) {
    return _then(_self.copyWith(feeHead: value));
  });
}/// Create a copy of AdminFeeStructure
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeeCategoryRefCopyWith<$Res>? get feeCategory {
    if (_self.feeCategory == null) {
    return null;
  }

  return $FeeCategoryRefCopyWith<$Res>(_self.feeCategory!, (value) {
    return _then(_self.copyWith(feeCategory: value));
  });
}
}


/// @nodoc
mixin _$AdminFeeConcession {

@JsonKey(name: 'concession_id') String get concessionId; String get name;@JsonKey(name: 'concession_type') String get concessionType;@JsonKey(name: 'calculation_type') String get calculationType;@DecimalConverter() Decimal get value;@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of AdminFeeConcession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminFeeConcessionCopyWith<AdminFeeConcession> get copyWith => _$AdminFeeConcessionCopyWithImpl<AdminFeeConcession>(this as AdminFeeConcession, _$identity);

  /// Serializes this AdminFeeConcession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminFeeConcession;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminFeeConcession&&(identical(other.concessionId, _this.concessionId) || other.concessionId == _this.concessionId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.concessionType, _this.concessionType) || other.concessionType == _this.concessionType)&&(identical(other.calculationType, _this.calculationType) || other.calculationType == _this.calculationType)&&(identical(other.value, _this.value) || other.value == _this.value)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminFeeConcession;
  return Object.hash(runtimeType,_this.concessionId,_this.name,_this.concessionType,_this.calculationType,_this.value,_this.isActive);
}

@override
String toString() {
  final _this = this as AdminFeeConcession;
  return 'AdminFeeConcession(concessionId: ${_this.concessionId}, name: ${_this.name}, concessionType: ${_this.concessionType}, calculationType: ${_this.calculationType}, value: ${_this.value}, isActive: ${_this.isActive})';
}


}

/// @nodoc
abstract mixin class $AdminFeeConcessionCopyWith<$Res>  {
  factory $AdminFeeConcessionCopyWith(AdminFeeConcession value, $Res Function(AdminFeeConcession) _then) = _$AdminFeeConcessionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'concession_id') String concessionId, String name,@JsonKey(name: 'concession_type') String concessionType,@JsonKey(name: 'calculation_type') String calculationType,@DecimalConverter() Decimal value,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class _$AdminFeeConcessionCopyWithImpl<$Res>
    implements $AdminFeeConcessionCopyWith<$Res> {
  _$AdminFeeConcessionCopyWithImpl(this._self, this._then);

  final AdminFeeConcession _self;
  final $Res Function(AdminFeeConcession) _then;

/// Create a copy of AdminFeeConcession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? concessionId = null,Object? name = null,Object? concessionType = null,Object? calculationType = null,Object? value = null,Object? isActive = null,}) {
  return _then(AdminFeeConcession(
concessionId: null == concessionId ? _self.concessionId : concessionId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,concessionType: null == concessionType ? _self.concessionType : concessionType // ignore: cast_nullable_to_non_nullable
as String,calculationType: null == calculationType ? _self.calculationType : calculationType // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Decimal,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminFeeConcession].
extension AdminFeeConcessionPatterns on AdminFeeConcession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminFeeConcession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminFeeConcession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminFeeConcession value)  $default,){
final _that = this;
switch (_that) {
case _AdminFeeConcession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminFeeConcession value)?  $default,){
final _that = this;
switch (_that) {
case _AdminFeeConcession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'concession_id')  String concessionId,  String name, @JsonKey(name: 'concession_type')  String concessionType, @JsonKey(name: 'calculation_type')  String calculationType, @DecimalConverter()  Decimal value, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminFeeConcession() when $default != null:
return $default(_that.concessionId,_that.name,_that.concessionType,_that.calculationType,_that.value,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'concession_id')  String concessionId,  String name, @JsonKey(name: 'concession_type')  String concessionType, @JsonKey(name: 'calculation_type')  String calculationType, @DecimalConverter()  Decimal value, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _AdminFeeConcession():
return $default(_that.concessionId,_that.name,_that.concessionType,_that.calculationType,_that.value,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'concession_id')  String concessionId,  String name, @JsonKey(name: 'concession_type')  String concessionType, @JsonKey(name: 'calculation_type')  String calculationType, @DecimalConverter()  Decimal value, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _AdminFeeConcession() when $default != null:
return $default(_that.concessionId,_that.name,_that.concessionType,_that.calculationType,_that.value,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminFeeConcession implements AdminFeeConcession {
  const _AdminFeeConcession({@JsonKey(name: 'concession_id') required this.concessionId, required this.name, @JsonKey(name: 'concession_type') this.concessionType = 'SCHOLARSHIP', @JsonKey(name: 'calculation_type') this.calculationType = 'PERCENTAGE', @DecimalConverter() required this.value, @JsonKey(name: 'is_active') this.isActive = true});
  factory _AdminFeeConcession.fromJson(Map<String, dynamic> json) => _$AdminFeeConcessionFromJson(json);

@override@JsonKey(name: 'concession_id') final  String concessionId;
@override final  String name;
@override@JsonKey(name: 'concession_type') final  String concessionType;
@override@JsonKey(name: 'calculation_type') final  String calculationType;
@override@DecimalConverter() final  Decimal value;
@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of AdminFeeConcession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminFeeConcessionCopyWith<_AdminFeeConcession> get copyWith => __$AdminFeeConcessionCopyWithImpl<_AdminFeeConcession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminFeeConcessionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminFeeConcession&&(identical(other.concessionId, concessionId) || other.concessionId == concessionId)&&(identical(other.name, name) || other.name == name)&&(identical(other.concessionType, concessionType) || other.concessionType == concessionType)&&(identical(other.calculationType, calculationType) || other.calculationType == calculationType)&&(identical(other.value, value) || other.value == value)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,concessionId,name,concessionType,calculationType,value,isActive);
}

@override
String toString() {
    return 'AdminFeeConcession(concessionId: $concessionId, name: $name, concessionType: $concessionType, calculationType: $calculationType, value: $value, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$AdminFeeConcessionCopyWith<$Res> implements $AdminFeeConcessionCopyWith<$Res> {
  factory _$AdminFeeConcessionCopyWith(_AdminFeeConcession value, $Res Function(_AdminFeeConcession) _then) = __$AdminFeeConcessionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'concession_id') String concessionId, String name,@JsonKey(name: 'concession_type') String concessionType,@JsonKey(name: 'calculation_type') String calculationType,@DecimalConverter() Decimal value,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class __$AdminFeeConcessionCopyWithImpl<$Res>
    implements _$AdminFeeConcessionCopyWith<$Res> {
  __$AdminFeeConcessionCopyWithImpl(this._self, this._then);

  final _AdminFeeConcession _self;
  final $Res Function(_AdminFeeConcession) _then;

/// Create a copy of AdminFeeConcession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? concessionId = null,Object? name = null,Object? concessionType = null,Object? calculationType = null,Object? value = null,Object? isActive = null,}) {
  return _then(_AdminFeeConcession(
concessionId: null == concessionId ? _self.concessionId : concessionId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,concessionType: null == concessionType ? _self.concessionType : concessionType // ignore: cast_nullable_to_non_nullable
as String,calculationType: null == calculationType ? _self.calculationType : calculationType // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Decimal,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$FinanceRouteRef {

@JsonKey(name: 'route_id') String? get routeId;@JsonKey(name: 'route_name') String? get routeName;
/// Create a copy of FinanceRouteRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinanceRouteRefCopyWith<FinanceRouteRef> get copyWith => _$FinanceRouteRefCopyWithImpl<FinanceRouteRef>(this as FinanceRouteRef, _$identity);

  /// Serializes this FinanceRouteRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FinanceRouteRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinanceRouteRef&&(identical(other.routeId, _this.routeId) || other.routeId == _this.routeId)&&(identical(other.routeName, _this.routeName) || other.routeName == _this.routeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FinanceRouteRef;
  return Object.hash(runtimeType,_this.routeId,_this.routeName);
}

@override
String toString() {
  final _this = this as FinanceRouteRef;
  return 'FinanceRouteRef(routeId: ${_this.routeId}, routeName: ${_this.routeName})';
}


}

/// @nodoc
abstract mixin class $FinanceRouteRefCopyWith<$Res>  {
  factory $FinanceRouteRefCopyWith(FinanceRouteRef value, $Res Function(FinanceRouteRef) _then) = _$FinanceRouteRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'route_id') String? routeId,@JsonKey(name: 'route_name') String? routeName
});




}
/// @nodoc
class _$FinanceRouteRefCopyWithImpl<$Res>
    implements $FinanceRouteRefCopyWith<$Res> {
  _$FinanceRouteRefCopyWithImpl(this._self, this._then);

  final FinanceRouteRef _self;
  final $Res Function(FinanceRouteRef) _then;

/// Create a copy of FinanceRouteRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routeId = freezed,Object? routeName = freezed,}) {
  return _then(FinanceRouteRef(
routeId: freezed == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String?,routeName: freezed == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FinanceRouteRef].
extension FinanceRouteRefPatterns on FinanceRouteRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinanceRouteRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinanceRouteRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinanceRouteRef value)  $default,){
final _that = this;
switch (_that) {
case _FinanceRouteRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinanceRouteRef value)?  $default,){
final _that = this;
switch (_that) {
case _FinanceRouteRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'route_id')  String? routeId, @JsonKey(name: 'route_name')  String? routeName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinanceRouteRef() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'route_id')  String? routeId, @JsonKey(name: 'route_name')  String? routeName)  $default,) {final _that = this;
switch (_that) {
case _FinanceRouteRef():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'route_id')  String? routeId, @JsonKey(name: 'route_name')  String? routeName)?  $default,) {final _that = this;
switch (_that) {
case _FinanceRouteRef() when $default != null:
return $default(_that.routeId,_that.routeName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinanceRouteRef implements FinanceRouteRef {
  const _FinanceRouteRef({@JsonKey(name: 'route_id') this.routeId, @JsonKey(name: 'route_name') this.routeName});
  factory _FinanceRouteRef.fromJson(Map<String, dynamic> json) => _$FinanceRouteRefFromJson(json);

@override@JsonKey(name: 'route_id') final  String? routeId;
@override@JsonKey(name: 'route_name') final  String? routeName;

/// Create a copy of FinanceRouteRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinanceRouteRefCopyWith<_FinanceRouteRef> get copyWith => __$FinanceRouteRefCopyWithImpl<_FinanceRouteRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinanceRouteRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinanceRouteRef&&(identical(other.routeId, routeId) || other.routeId == routeId)&&(identical(other.routeName, routeName) || other.routeName == routeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,routeId,routeName);
}

@override
String toString() {
    return 'FinanceRouteRef(routeId: $routeId, routeName: $routeName)';
}


}

/// @nodoc
abstract mixin class _$FinanceRouteRefCopyWith<$Res> implements $FinanceRouteRefCopyWith<$Res> {
  factory _$FinanceRouteRefCopyWith(_FinanceRouteRef value, $Res Function(_FinanceRouteRef) _then) = __$FinanceRouteRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'route_id') String? routeId,@JsonKey(name: 'route_name') String? routeName
});




}
/// @nodoc
class __$FinanceRouteRefCopyWithImpl<$Res>
    implements _$FinanceRouteRefCopyWith<$Res> {
  __$FinanceRouteRefCopyWithImpl(this._self, this._then);

  final _FinanceRouteRef _self;
  final $Res Function(_FinanceRouteRef) _then;

/// Create a copy of FinanceRouteRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routeId = freezed,Object? routeName = freezed,}) {
  return _then(_FinanceRouteRef(
routeId: freezed == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String?,routeName: freezed == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FinanceRouteStop {

@JsonKey(name: 'stop_id') String get stopId;@JsonKey(name: 'stop_name') String get stopName;@JsonKey(name: 'stop_order') int? get stopOrder;
/// Create a copy of FinanceRouteStop
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinanceRouteStopCopyWith<FinanceRouteStop> get copyWith => _$FinanceRouteStopCopyWithImpl<FinanceRouteStop>(this as FinanceRouteStop, _$identity);

  /// Serializes this FinanceRouteStop to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FinanceRouteStop;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinanceRouteStop&&(identical(other.stopId, _this.stopId) || other.stopId == _this.stopId)&&(identical(other.stopName, _this.stopName) || other.stopName == _this.stopName)&&(identical(other.stopOrder, _this.stopOrder) || other.stopOrder == _this.stopOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FinanceRouteStop;
  return Object.hash(runtimeType,_this.stopId,_this.stopName,_this.stopOrder);
}

@override
String toString() {
  final _this = this as FinanceRouteStop;
  return 'FinanceRouteStop(stopId: ${_this.stopId}, stopName: ${_this.stopName}, stopOrder: ${_this.stopOrder})';
}


}

/// @nodoc
abstract mixin class $FinanceRouteStopCopyWith<$Res>  {
  factory $FinanceRouteStopCopyWith(FinanceRouteStop value, $Res Function(FinanceRouteStop) _then) = _$FinanceRouteStopCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'stop_id') String stopId,@JsonKey(name: 'stop_name') String stopName,@JsonKey(name: 'stop_order') int? stopOrder
});




}
/// @nodoc
class _$FinanceRouteStopCopyWithImpl<$Res>
    implements $FinanceRouteStopCopyWith<$Res> {
  _$FinanceRouteStopCopyWithImpl(this._self, this._then);

  final FinanceRouteStop _self;
  final $Res Function(FinanceRouteStop) _then;

/// Create a copy of FinanceRouteStop
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stopId = null,Object? stopName = null,Object? stopOrder = freezed,}) {
  return _then(FinanceRouteStop(
stopId: null == stopId ? _self.stopId : stopId // ignore: cast_nullable_to_non_nullable
as String,stopName: null == stopName ? _self.stopName : stopName // ignore: cast_nullable_to_non_nullable
as String,stopOrder: freezed == stopOrder ? _self.stopOrder : stopOrder // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [FinanceRouteStop].
extension FinanceRouteStopPatterns on FinanceRouteStop {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinanceRouteStop value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinanceRouteStop() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinanceRouteStop value)  $default,){
final _that = this;
switch (_that) {
case _FinanceRouteStop():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinanceRouteStop value)?  $default,){
final _that = this;
switch (_that) {
case _FinanceRouteStop() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'stop_id')  String stopId, @JsonKey(name: 'stop_name')  String stopName, @JsonKey(name: 'stop_order')  int? stopOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinanceRouteStop() when $default != null:
return $default(_that.stopId,_that.stopName,_that.stopOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'stop_id')  String stopId, @JsonKey(name: 'stop_name')  String stopName, @JsonKey(name: 'stop_order')  int? stopOrder)  $default,) {final _that = this;
switch (_that) {
case _FinanceRouteStop():
return $default(_that.stopId,_that.stopName,_that.stopOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'stop_id')  String stopId, @JsonKey(name: 'stop_name')  String stopName, @JsonKey(name: 'stop_order')  int? stopOrder)?  $default,) {final _that = this;
switch (_that) {
case _FinanceRouteStop() when $default != null:
return $default(_that.stopId,_that.stopName,_that.stopOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinanceRouteStop implements FinanceRouteStop {
  const _FinanceRouteStop({@JsonKey(name: 'stop_id') required this.stopId, @JsonKey(name: 'stop_name') required this.stopName, @JsonKey(name: 'stop_order') this.stopOrder});
  factory _FinanceRouteStop.fromJson(Map<String, dynamic> json) => _$FinanceRouteStopFromJson(json);

@override@JsonKey(name: 'stop_id') final  String stopId;
@override@JsonKey(name: 'stop_name') final  String stopName;
@override@JsonKey(name: 'stop_order') final  int? stopOrder;

/// Create a copy of FinanceRouteStop
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinanceRouteStopCopyWith<_FinanceRouteStop> get copyWith => __$FinanceRouteStopCopyWithImpl<_FinanceRouteStop>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinanceRouteStopToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinanceRouteStop&&(identical(other.stopId, stopId) || other.stopId == stopId)&&(identical(other.stopName, stopName) || other.stopName == stopName)&&(identical(other.stopOrder, stopOrder) || other.stopOrder == stopOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,stopId,stopName,stopOrder);
}

@override
String toString() {
    return 'FinanceRouteStop(stopId: $stopId, stopName: $stopName, stopOrder: $stopOrder)';
}


}

/// @nodoc
abstract mixin class _$FinanceRouteStopCopyWith<$Res> implements $FinanceRouteStopCopyWith<$Res> {
  factory _$FinanceRouteStopCopyWith(_FinanceRouteStop value, $Res Function(_FinanceRouteStop) _then) = __$FinanceRouteStopCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'stop_id') String stopId,@JsonKey(name: 'stop_name') String stopName,@JsonKey(name: 'stop_order') int? stopOrder
});




}
/// @nodoc
class __$FinanceRouteStopCopyWithImpl<$Res>
    implements _$FinanceRouteStopCopyWith<$Res> {
  __$FinanceRouteStopCopyWithImpl(this._self, this._then);

  final _FinanceRouteStop _self;
  final $Res Function(_FinanceRouteStop) _then;

/// Create a copy of FinanceRouteStop
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stopId = null,Object? stopName = null,Object? stopOrder = freezed,}) {
  return _then(_FinanceRouteStop(
stopId: null == stopId ? _self.stopId : stopId // ignore: cast_nullable_to_non_nullable
as String,stopName: null == stopName ? _self.stopName : stopName // ignore: cast_nullable_to_non_nullable
as String,stopOrder: freezed == stopOrder ? _self.stopOrder : stopOrder // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$AdminTransportFeeRate {

@JsonKey(name: 'rate_id') String get rateId;@JsonKey(name: 'route_id') String? get routeId;@JsonKey(name: 'stop_id') String? get stopId;@JsonKey(name: 'session_id') String? get sessionId;@JsonKey(name: 'fee_head_id') String? get feeHeadId;@DecimalConverter() Decimal get amount;@JsonKey(name: 'routes') FinanceRouteRef? get route;@JsonKey(name: 'route_stops') FinanceRouteStop? get stop;@JsonKey(name: 'academic_sessions') SessionRef? get session;@JsonKey(name: 'fee_heads') FeeHeadRef? get feeHead;
/// Create a copy of AdminTransportFeeRate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminTransportFeeRateCopyWith<AdminTransportFeeRate> get copyWith => _$AdminTransportFeeRateCopyWithImpl<AdminTransportFeeRate>(this as AdminTransportFeeRate, _$identity);

  /// Serializes this AdminTransportFeeRate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminTransportFeeRate;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminTransportFeeRate&&(identical(other.rateId, _this.rateId) || other.rateId == _this.rateId)&&(identical(other.routeId, _this.routeId) || other.routeId == _this.routeId)&&(identical(other.stopId, _this.stopId) || other.stopId == _this.stopId)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.feeHeadId, _this.feeHeadId) || other.feeHeadId == _this.feeHeadId)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.route, _this.route) || other.route == _this.route)&&(identical(other.stop, _this.stop) || other.stop == _this.stop)&&(identical(other.session, _this.session) || other.session == _this.session)&&(identical(other.feeHead, _this.feeHead) || other.feeHead == _this.feeHead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminTransportFeeRate;
  return Object.hash(runtimeType,_this.rateId,_this.routeId,_this.stopId,_this.sessionId,_this.feeHeadId,_this.amount,_this.route,_this.stop,_this.session,_this.feeHead);
}

@override
String toString() {
  final _this = this as AdminTransportFeeRate;
  return 'AdminTransportFeeRate(rateId: ${_this.rateId}, routeId: ${_this.routeId}, stopId: ${_this.stopId}, sessionId: ${_this.sessionId}, feeHeadId: ${_this.feeHeadId}, amount: ${_this.amount}, route: ${_this.route}, stop: ${_this.stop}, session: ${_this.session}, feeHead: ${_this.feeHead})';
}


}

/// @nodoc
abstract mixin class $AdminTransportFeeRateCopyWith<$Res>  {
  factory $AdminTransportFeeRateCopyWith(AdminTransportFeeRate value, $Res Function(AdminTransportFeeRate) _then) = _$AdminTransportFeeRateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'rate_id') String rateId,@JsonKey(name: 'route_id') String? routeId,@JsonKey(name: 'stop_id') String? stopId,@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'fee_head_id') String? feeHeadId,@DecimalConverter() Decimal amount,@JsonKey(name: 'routes') FinanceRouteRef? route,@JsonKey(name: 'route_stops') FinanceRouteStop? stop,@JsonKey(name: 'academic_sessions') SessionRef? session,@JsonKey(name: 'fee_heads') FeeHeadRef? feeHead
});


$FinanceRouteRefCopyWith<$Res>? get route;$FinanceRouteStopCopyWith<$Res>? get stop;$SessionRefCopyWith<$Res>? get session;$FeeHeadRefCopyWith<$Res>? get feeHead;

}
/// @nodoc
class _$AdminTransportFeeRateCopyWithImpl<$Res>
    implements $AdminTransportFeeRateCopyWith<$Res> {
  _$AdminTransportFeeRateCopyWithImpl(this._self, this._then);

  final AdminTransportFeeRate _self;
  final $Res Function(AdminTransportFeeRate) _then;

/// Create a copy of AdminTransportFeeRate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rateId = null,Object? routeId = freezed,Object? stopId = freezed,Object? sessionId = freezed,Object? feeHeadId = freezed,Object? amount = null,Object? route = freezed,Object? stop = freezed,Object? session = freezed,Object? feeHead = freezed,}) {
  return _then(AdminTransportFeeRate(
rateId: null == rateId ? _self.rateId : rateId // ignore: cast_nullable_to_non_nullable
as String,routeId: freezed == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String?,stopId: freezed == stopId ? _self.stopId : stopId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,feeHeadId: freezed == feeHeadId ? _self.feeHeadId : feeHeadId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as FinanceRouteRef?,stop: freezed == stop ? _self.stop : stop // ignore: cast_nullable_to_non_nullable
as FinanceRouteStop?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,feeHead: freezed == feeHead ? _self.feeHead : feeHead // ignore: cast_nullable_to_non_nullable
as FeeHeadRef?,
  ));
}
/// Create a copy of AdminTransportFeeRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceRouteRefCopyWith<$Res>? get route {
    if (_self.route == null) {
    return null;
  }

  return $FinanceRouteRefCopyWith<$Res>(_self.route!, (value) {
    return _then(_self.copyWith(route: value));
  });
}/// Create a copy of AdminTransportFeeRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceRouteStopCopyWith<$Res>? get stop {
    if (_self.stop == null) {
    return null;
  }

  return $FinanceRouteStopCopyWith<$Res>(_self.stop!, (value) {
    return _then(_self.copyWith(stop: value));
  });
}/// Create a copy of AdminTransportFeeRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionRefCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $SessionRefCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}/// Create a copy of AdminTransportFeeRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeeHeadRefCopyWith<$Res>? get feeHead {
    if (_self.feeHead == null) {
    return null;
  }

  return $FeeHeadRefCopyWith<$Res>(_self.feeHead!, (value) {
    return _then(_self.copyWith(feeHead: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminTransportFeeRate].
extension AdminTransportFeeRatePatterns on AdminTransportFeeRate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminTransportFeeRate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminTransportFeeRate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminTransportFeeRate value)  $default,){
final _that = this;
switch (_that) {
case _AdminTransportFeeRate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminTransportFeeRate value)?  $default,){
final _that = this;
switch (_that) {
case _AdminTransportFeeRate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'rate_id')  String rateId, @JsonKey(name: 'route_id')  String? routeId, @JsonKey(name: 'stop_id')  String? stopId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'fee_head_id')  String? feeHeadId, @DecimalConverter()  Decimal amount, @JsonKey(name: 'routes')  FinanceRouteRef? route, @JsonKey(name: 'route_stops')  FinanceRouteStop? stop, @JsonKey(name: 'academic_sessions')  SessionRef? session, @JsonKey(name: 'fee_heads')  FeeHeadRef? feeHead)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminTransportFeeRate() when $default != null:
return $default(_that.rateId,_that.routeId,_that.stopId,_that.sessionId,_that.feeHeadId,_that.amount,_that.route,_that.stop,_that.session,_that.feeHead);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'rate_id')  String rateId, @JsonKey(name: 'route_id')  String? routeId, @JsonKey(name: 'stop_id')  String? stopId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'fee_head_id')  String? feeHeadId, @DecimalConverter()  Decimal amount, @JsonKey(name: 'routes')  FinanceRouteRef? route, @JsonKey(name: 'route_stops')  FinanceRouteStop? stop, @JsonKey(name: 'academic_sessions')  SessionRef? session, @JsonKey(name: 'fee_heads')  FeeHeadRef? feeHead)  $default,) {final _that = this;
switch (_that) {
case _AdminTransportFeeRate():
return $default(_that.rateId,_that.routeId,_that.stopId,_that.sessionId,_that.feeHeadId,_that.amount,_that.route,_that.stop,_that.session,_that.feeHead);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'rate_id')  String rateId, @JsonKey(name: 'route_id')  String? routeId, @JsonKey(name: 'stop_id')  String? stopId, @JsonKey(name: 'session_id')  String? sessionId, @JsonKey(name: 'fee_head_id')  String? feeHeadId, @DecimalConverter()  Decimal amount, @JsonKey(name: 'routes')  FinanceRouteRef? route, @JsonKey(name: 'route_stops')  FinanceRouteStop? stop, @JsonKey(name: 'academic_sessions')  SessionRef? session, @JsonKey(name: 'fee_heads')  FeeHeadRef? feeHead)?  $default,) {final _that = this;
switch (_that) {
case _AdminTransportFeeRate() when $default != null:
return $default(_that.rateId,_that.routeId,_that.stopId,_that.sessionId,_that.feeHeadId,_that.amount,_that.route,_that.stop,_that.session,_that.feeHead);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminTransportFeeRate implements AdminTransportFeeRate {
  const _AdminTransportFeeRate({@JsonKey(name: 'rate_id') required this.rateId, @JsonKey(name: 'route_id') this.routeId, @JsonKey(name: 'stop_id') this.stopId, @JsonKey(name: 'session_id') this.sessionId, @JsonKey(name: 'fee_head_id') this.feeHeadId, @DecimalConverter() required this.amount, @JsonKey(name: 'routes') this.route, @JsonKey(name: 'route_stops') this.stop, @JsonKey(name: 'academic_sessions') this.session, @JsonKey(name: 'fee_heads') this.feeHead});
  factory _AdminTransportFeeRate.fromJson(Map<String, dynamic> json) => _$AdminTransportFeeRateFromJson(json);

@override@JsonKey(name: 'rate_id') final  String rateId;
@override@JsonKey(name: 'route_id') final  String? routeId;
@override@JsonKey(name: 'stop_id') final  String? stopId;
@override@JsonKey(name: 'session_id') final  String? sessionId;
@override@JsonKey(name: 'fee_head_id') final  String? feeHeadId;
@override@DecimalConverter() final  Decimal amount;
@override@JsonKey(name: 'routes') final  FinanceRouteRef? route;
@override@JsonKey(name: 'route_stops') final  FinanceRouteStop? stop;
@override@JsonKey(name: 'academic_sessions') final  SessionRef? session;
@override@JsonKey(name: 'fee_heads') final  FeeHeadRef? feeHead;

/// Create a copy of AdminTransportFeeRate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminTransportFeeRateCopyWith<_AdminTransportFeeRate> get copyWith => __$AdminTransportFeeRateCopyWithImpl<_AdminTransportFeeRate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminTransportFeeRateToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminTransportFeeRate&&(identical(other.rateId, rateId) || other.rateId == rateId)&&(identical(other.routeId, routeId) || other.routeId == routeId)&&(identical(other.stopId, stopId) || other.stopId == stopId)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.feeHeadId, feeHeadId) || other.feeHeadId == feeHeadId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.route, route) || other.route == route)&&(identical(other.stop, stop) || other.stop == stop)&&(identical(other.session, session) || other.session == session)&&(identical(other.feeHead, feeHead) || other.feeHead == feeHead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,rateId,routeId,stopId,sessionId,feeHeadId,amount,route,stop,session,feeHead);
}

@override
String toString() {
    return 'AdminTransportFeeRate(rateId: $rateId, routeId: $routeId, stopId: $stopId, sessionId: $sessionId, feeHeadId: $feeHeadId, amount: $amount, route: $route, stop: $stop, session: $session, feeHead: $feeHead)';
}


}

/// @nodoc
abstract mixin class _$AdminTransportFeeRateCopyWith<$Res> implements $AdminTransportFeeRateCopyWith<$Res> {
  factory _$AdminTransportFeeRateCopyWith(_AdminTransportFeeRate value, $Res Function(_AdminTransportFeeRate) _then) = __$AdminTransportFeeRateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'rate_id') String rateId,@JsonKey(name: 'route_id') String? routeId,@JsonKey(name: 'stop_id') String? stopId,@JsonKey(name: 'session_id') String? sessionId,@JsonKey(name: 'fee_head_id') String? feeHeadId,@DecimalConverter() Decimal amount,@JsonKey(name: 'routes') FinanceRouteRef? route,@JsonKey(name: 'route_stops') FinanceRouteStop? stop,@JsonKey(name: 'academic_sessions') SessionRef? session,@JsonKey(name: 'fee_heads') FeeHeadRef? feeHead
});


@override $FinanceRouteRefCopyWith<$Res>? get route;@override $FinanceRouteStopCopyWith<$Res>? get stop;@override $SessionRefCopyWith<$Res>? get session;@override $FeeHeadRefCopyWith<$Res>? get feeHead;

}
/// @nodoc
class __$AdminTransportFeeRateCopyWithImpl<$Res>
    implements _$AdminTransportFeeRateCopyWith<$Res> {
  __$AdminTransportFeeRateCopyWithImpl(this._self, this._then);

  final _AdminTransportFeeRate _self;
  final $Res Function(_AdminTransportFeeRate) _then;

/// Create a copy of AdminTransportFeeRate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rateId = null,Object? routeId = freezed,Object? stopId = freezed,Object? sessionId = freezed,Object? feeHeadId = freezed,Object? amount = null,Object? route = freezed,Object? stop = freezed,Object? session = freezed,Object? feeHead = freezed,}) {
  return _then(_AdminTransportFeeRate(
rateId: null == rateId ? _self.rateId : rateId // ignore: cast_nullable_to_non_nullable
as String,routeId: freezed == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String?,stopId: freezed == stopId ? _self.stopId : stopId // ignore: cast_nullable_to_non_nullable
as String?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,feeHeadId: freezed == feeHeadId ? _self.feeHeadId : feeHeadId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as FinanceRouteRef?,stop: freezed == stop ? _self.stop : stop // ignore: cast_nullable_to_non_nullable
as FinanceRouteStop?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as SessionRef?,feeHead: freezed == feeHead ? _self.feeHead : feeHead // ignore: cast_nullable_to_non_nullable
as FeeHeadRef?,
  ));
}

/// Create a copy of AdminTransportFeeRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceRouteRefCopyWith<$Res>? get route {
    if (_self.route == null) {
    return null;
  }

  return $FinanceRouteRefCopyWith<$Res>(_self.route!, (value) {
    return _then(_self.copyWith(route: value));
  });
}/// Create a copy of AdminTransportFeeRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinanceRouteStopCopyWith<$Res>? get stop {
    if (_self.stop == null) {
    return null;
  }

  return $FinanceRouteStopCopyWith<$Res>(_self.stop!, (value) {
    return _then(_self.copyWith(stop: value));
  });
}/// Create a copy of AdminTransportFeeRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionRefCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $SessionRefCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}/// Create a copy of AdminTransportFeeRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeeHeadRefCopyWith<$Res>? get feeHead {
    if (_self.feeHead == null) {
    return null;
  }

  return $FeeHeadRefCopyWith<$Res>(_self.feeHead!, (value) {
    return _then(_self.copyWith(feeHead: value));
  });
}
}


/// @nodoc
mixin _$FinanceRouteOption {

@JsonKey(name: 'route_id') String get routeId;@JsonKey(name: 'route_name') String get routeName;@JsonKey(name: 'route_stops') List<FinanceRouteStop> get stops;
/// Create a copy of FinanceRouteOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinanceRouteOptionCopyWith<FinanceRouteOption> get copyWith => _$FinanceRouteOptionCopyWithImpl<FinanceRouteOption>(this as FinanceRouteOption, _$identity);

  /// Serializes this FinanceRouteOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FinanceRouteOption;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinanceRouteOption&&(identical(other.routeId, _this.routeId) || other.routeId == _this.routeId)&&(identical(other.routeName, _this.routeName) || other.routeName == _this.routeName)&&const DeepCollectionEquality().equals(other.stops, _this.stops));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FinanceRouteOption;
  return Object.hash(runtimeType,_this.routeId,_this.routeName,const DeepCollectionEquality().hash(_this.stops));
}

@override
String toString() {
  final _this = this as FinanceRouteOption;
  return 'FinanceRouteOption(routeId: ${_this.routeId}, routeName: ${_this.routeName}, stops: ${_this.stops})';
}


}

/// @nodoc
abstract mixin class $FinanceRouteOptionCopyWith<$Res>  {
  factory $FinanceRouteOptionCopyWith(FinanceRouteOption value, $Res Function(FinanceRouteOption) _then) = _$FinanceRouteOptionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'route_id') String routeId,@JsonKey(name: 'route_name') String routeName,@JsonKey(name: 'route_stops') List<FinanceRouteStop> stops
});




}
/// @nodoc
class _$FinanceRouteOptionCopyWithImpl<$Res>
    implements $FinanceRouteOptionCopyWith<$Res> {
  _$FinanceRouteOptionCopyWithImpl(this._self, this._then);

  final FinanceRouteOption _self;
  final $Res Function(FinanceRouteOption) _then;

/// Create a copy of FinanceRouteOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routeId = null,Object? routeName = null,Object? stops = null,}) {
  return _then(FinanceRouteOption(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,routeName: null == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String,stops: null == stops ? _self.stops : stops // ignore: cast_nullable_to_non_nullable
as List<FinanceRouteStop>,
  ));
}

}


/// Adds pattern-matching-related methods to [FinanceRouteOption].
extension FinanceRouteOptionPatterns on FinanceRouteOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinanceRouteOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinanceRouteOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinanceRouteOption value)  $default,){
final _that = this;
switch (_that) {
case _FinanceRouteOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinanceRouteOption value)?  $default,){
final _that = this;
switch (_that) {
case _FinanceRouteOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'route_id')  String routeId, @JsonKey(name: 'route_name')  String routeName, @JsonKey(name: 'route_stops')  List<FinanceRouteStop> stops)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinanceRouteOption() when $default != null:
return $default(_that.routeId,_that.routeName,_that.stops);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'route_id')  String routeId, @JsonKey(name: 'route_name')  String routeName, @JsonKey(name: 'route_stops')  List<FinanceRouteStop> stops)  $default,) {final _that = this;
switch (_that) {
case _FinanceRouteOption():
return $default(_that.routeId,_that.routeName,_that.stops);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'route_id')  String routeId, @JsonKey(name: 'route_name')  String routeName, @JsonKey(name: 'route_stops')  List<FinanceRouteStop> stops)?  $default,) {final _that = this;
switch (_that) {
case _FinanceRouteOption() when $default != null:
return $default(_that.routeId,_that.routeName,_that.stops);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinanceRouteOption implements FinanceRouteOption {
  const _FinanceRouteOption({@JsonKey(name: 'route_id') required this.routeId, @JsonKey(name: 'route_name') required this.routeName, @JsonKey(name: 'route_stops')  List<FinanceRouteStop> stops = const <FinanceRouteStop>[]}): _stops = stops;
  factory _FinanceRouteOption.fromJson(Map<String, dynamic> json) => _$FinanceRouteOptionFromJson(json);

@override@JsonKey(name: 'route_id') final  String routeId;
@override@JsonKey(name: 'route_name') final  String routeName;
 final  List<FinanceRouteStop> _stops;
@override@JsonKey(name: 'route_stops') List<FinanceRouteStop> get stops {
  if (_stops is EqualUnmodifiableListView) return _stops;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stops);
}


/// Create a copy of FinanceRouteOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinanceRouteOptionCopyWith<_FinanceRouteOption> get copyWith => __$FinanceRouteOptionCopyWithImpl<_FinanceRouteOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinanceRouteOptionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinanceRouteOption&&(identical(other.routeId, routeId) || other.routeId == routeId)&&(identical(other.routeName, routeName) || other.routeName == routeName)&&const DeepCollectionEquality().equals(other.stops, _stops));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,routeId,routeName,const DeepCollectionEquality().hash(_stops));
}

@override
String toString() {
    return 'FinanceRouteOption(routeId: $routeId, routeName: $routeName, stops: $stops)';
}


}

/// @nodoc
abstract mixin class _$FinanceRouteOptionCopyWith<$Res> implements $FinanceRouteOptionCopyWith<$Res> {
  factory _$FinanceRouteOptionCopyWith(_FinanceRouteOption value, $Res Function(_FinanceRouteOption) _then) = __$FinanceRouteOptionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'route_id') String routeId,@JsonKey(name: 'route_name') String routeName,@JsonKey(name: 'route_stops') List<FinanceRouteStop> stops
});




}
/// @nodoc
class __$FinanceRouteOptionCopyWithImpl<$Res>
    implements _$FinanceRouteOptionCopyWith<$Res> {
  __$FinanceRouteOptionCopyWithImpl(this._self, this._then);

  final _FinanceRouteOption _self;
  final $Res Function(_FinanceRouteOption) _then;

/// Create a copy of FinanceRouteOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routeId = null,Object? routeName = null,Object? stops = null,}) {
  return _then(_FinanceRouteOption(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,routeName: null == routeName ? _self.routeName : routeName // ignore: cast_nullable_to_non_nullable
as String,stops: null == stops ? _self._stops : stops // ignore: cast_nullable_to_non_nullable
as List<FinanceRouteStop>,
  ));
}


}


/// @nodoc
mixin _$FinanceActiveSession {

@JsonKey(name: 'session_id') String get sessionId;@JsonKey(name: 'session_name') String? get sessionName;
/// Create a copy of FinanceActiveSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinanceActiveSessionCopyWith<FinanceActiveSession> get copyWith => _$FinanceActiveSessionCopyWithImpl<FinanceActiveSession>(this as FinanceActiveSession, _$identity);

  /// Serializes this FinanceActiveSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FinanceActiveSession;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinanceActiveSession&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.sessionName, _this.sessionName) || other.sessionName == _this.sessionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FinanceActiveSession;
  return Object.hash(runtimeType,_this.sessionId,_this.sessionName);
}

@override
String toString() {
  final _this = this as FinanceActiveSession;
  return 'FinanceActiveSession(sessionId: ${_this.sessionId}, sessionName: ${_this.sessionName})';
}


}

/// @nodoc
abstract mixin class $FinanceActiveSessionCopyWith<$Res>  {
  factory $FinanceActiveSessionCopyWith(FinanceActiveSession value, $Res Function(FinanceActiveSession) _then) = _$FinanceActiveSessionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'session_name') String? sessionName
});




}
/// @nodoc
class _$FinanceActiveSessionCopyWithImpl<$Res>
    implements $FinanceActiveSessionCopyWith<$Res> {
  _$FinanceActiveSessionCopyWithImpl(this._self, this._then);

  final FinanceActiveSession _self;
  final $Res Function(FinanceActiveSession) _then;

/// Create a copy of FinanceActiveSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,Object? sessionName = freezed,}) {
  return _then(FinanceActiveSession(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,sessionName: freezed == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FinanceActiveSession].
extension FinanceActiveSessionPatterns on FinanceActiveSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinanceActiveSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinanceActiveSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinanceActiveSession value)  $default,){
final _that = this;
switch (_that) {
case _FinanceActiveSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinanceActiveSession value)?  $default,){
final _that = this;
switch (_that) {
case _FinanceActiveSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'session_name')  String? sessionName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinanceActiveSession() when $default != null:
return $default(_that.sessionId,_that.sessionName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'session_name')  String? sessionName)  $default,) {final _that = this;
switch (_that) {
case _FinanceActiveSession():
return $default(_that.sessionId,_that.sessionName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'session_name')  String? sessionName)?  $default,) {final _that = this;
switch (_that) {
case _FinanceActiveSession() when $default != null:
return $default(_that.sessionId,_that.sessionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinanceActiveSession implements FinanceActiveSession {
  const _FinanceActiveSession({@JsonKey(name: 'session_id') required this.sessionId, @JsonKey(name: 'session_name') this.sessionName});
  factory _FinanceActiveSession.fromJson(Map<String, dynamic> json) => _$FinanceActiveSessionFromJson(json);

@override@JsonKey(name: 'session_id') final  String sessionId;
@override@JsonKey(name: 'session_name') final  String? sessionName;

/// Create a copy of FinanceActiveSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinanceActiveSessionCopyWith<_FinanceActiveSession> get copyWith => __$FinanceActiveSessionCopyWithImpl<_FinanceActiveSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinanceActiveSessionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinanceActiveSession&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.sessionName, sessionName) || other.sessionName == sessionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sessionId,sessionName);
}

@override
String toString() {
    return 'FinanceActiveSession(sessionId: $sessionId, sessionName: $sessionName)';
}


}

/// @nodoc
abstract mixin class _$FinanceActiveSessionCopyWith<$Res> implements $FinanceActiveSessionCopyWith<$Res> {
  factory _$FinanceActiveSessionCopyWith(_FinanceActiveSession value, $Res Function(_FinanceActiveSession) _then) = __$FinanceActiveSessionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'session_name') String? sessionName
});




}
/// @nodoc
class __$FinanceActiveSessionCopyWithImpl<$Res>
    implements _$FinanceActiveSessionCopyWith<$Res> {
  __$FinanceActiveSessionCopyWithImpl(this._self, this._then);

  final _FinanceActiveSession _self;
  final $Res Function(_FinanceActiveSession) _then;

/// Create a copy of FinanceActiveSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,Object? sessionName = freezed,}) {
  return _then(_FinanceActiveSession(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,sessionName: freezed == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
