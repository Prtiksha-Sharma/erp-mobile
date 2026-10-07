// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_finance_reports.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminFeeReceipt {

@JsonKey(name: 'receipt_id') String get receiptId;@JsonKey(name: 'receipt_no') String? get receiptNo;@JsonKey(name: 'receipt_date') DateTime? get receiptDate;@JsonKey(name: 'total_amount')@NullableDecimalConverter() Decimal? get totalAmount;@JsonKey(name: 'discount_amount')@NullableDecimalConverter() Decimal? get discountAmount;@JsonKey(name: 'fine_amount')@NullableDecimalConverter() Decimal? get fineAmount;@JsonKey(name: 'net_amount')@DecimalConverter() Decimal get netAmount;@JsonKey(name: 'payment_mode') String? get paymentMode;@JsonKey(name: 'receipt_status') String? get receiptStatus; String? get remarks;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;@JsonKey(name: 'students') StudentBrief? get student;@JsonKey(name: 'classes') ClassRef? get classRef;
/// Create a copy of AdminFeeReceipt
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminFeeReceiptCopyWith<AdminFeeReceipt> get copyWith => _$AdminFeeReceiptCopyWithImpl<AdminFeeReceipt>(this as AdminFeeReceipt, _$identity);

  /// Serializes this AdminFeeReceipt to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminFeeReceipt;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminFeeReceipt&&(identical(other.receiptId, _this.receiptId) || other.receiptId == _this.receiptId)&&(identical(other.receiptNo, _this.receiptNo) || other.receiptNo == _this.receiptNo)&&(identical(other.receiptDate, _this.receiptDate) || other.receiptDate == _this.receiptDate)&&(identical(other.totalAmount, _this.totalAmount) || other.totalAmount == _this.totalAmount)&&(identical(other.discountAmount, _this.discountAmount) || other.discountAmount == _this.discountAmount)&&(identical(other.fineAmount, _this.fineAmount) || other.fineAmount == _this.fineAmount)&&(identical(other.netAmount, _this.netAmount) || other.netAmount == _this.netAmount)&&(identical(other.paymentMode, _this.paymentMode) || other.paymentMode == _this.paymentMode)&&(identical(other.receiptStatus, _this.receiptStatus) || other.receiptStatus == _this.receiptStatus)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.student, _this.student) || other.student == _this.student)&&(identical(other.classRef, _this.classRef) || other.classRef == _this.classRef));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminFeeReceipt;
  return Object.hash(runtimeType,_this.receiptId,_this.receiptNo,_this.receiptDate,_this.totalAmount,_this.discountAmount,_this.fineAmount,_this.netAmount,_this.paymentMode,_this.receiptStatus,_this.remarks,_this.createdAt,_this.updatedAt,_this.student,_this.classRef);
}

@override
String toString() {
  final _this = this as AdminFeeReceipt;
  return 'AdminFeeReceipt(receiptId: ${_this.receiptId}, receiptNo: ${_this.receiptNo}, receiptDate: ${_this.receiptDate}, totalAmount: ${_this.totalAmount}, discountAmount: ${_this.discountAmount}, fineAmount: ${_this.fineAmount}, netAmount: ${_this.netAmount}, paymentMode: ${_this.paymentMode}, receiptStatus: ${_this.receiptStatus}, remarks: ${_this.remarks}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, student: ${_this.student}, classRef: ${_this.classRef})';
}


}

/// @nodoc
abstract mixin class $AdminFeeReceiptCopyWith<$Res>  {
  factory $AdminFeeReceiptCopyWith(AdminFeeReceipt value, $Res Function(AdminFeeReceipt) _then) = _$AdminFeeReceiptCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'receipt_id') String receiptId,@JsonKey(name: 'receipt_no') String? receiptNo,@JsonKey(name: 'receipt_date') DateTime? receiptDate,@JsonKey(name: 'total_amount')@NullableDecimalConverter() Decimal? totalAmount,@JsonKey(name: 'discount_amount')@NullableDecimalConverter() Decimal? discountAmount,@JsonKey(name: 'fine_amount')@NullableDecimalConverter() Decimal? fineAmount,@JsonKey(name: 'net_amount')@DecimalConverter() Decimal netAmount,@JsonKey(name: 'payment_mode') String? paymentMode,@JsonKey(name: 'receipt_status') String? receiptStatus, String? remarks,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'students') StudentBrief? student,@JsonKey(name: 'classes') ClassRef? classRef
});


$StudentBriefCopyWith<$Res>? get student;$ClassRefCopyWith<$Res>? get classRef;

}
/// @nodoc
class _$AdminFeeReceiptCopyWithImpl<$Res>
    implements $AdminFeeReceiptCopyWith<$Res> {
  _$AdminFeeReceiptCopyWithImpl(this._self, this._then);

  final AdminFeeReceipt _self;
  final $Res Function(AdminFeeReceipt) _then;

/// Create a copy of AdminFeeReceipt
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiptId = null,Object? receiptNo = freezed,Object? receiptDate = freezed,Object? totalAmount = freezed,Object? discountAmount = freezed,Object? fineAmount = freezed,Object? netAmount = null,Object? paymentMode = freezed,Object? receiptStatus = freezed,Object? remarks = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? student = freezed,Object? classRef = freezed,}) {
  return _then(AdminFeeReceipt(
receiptId: null == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String,receiptNo: freezed == receiptNo ? _self.receiptNo : receiptNo // ignore: cast_nullable_to_non_nullable
as String?,receiptDate: freezed == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as DateTime?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,discountAmount: freezed == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,fineAmount: freezed == fineAmount ? _self.fineAmount : fineAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as Decimal,paymentMode: freezed == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String?,receiptStatus: freezed == receiptStatus ? _self.receiptStatus : receiptStatus // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,
  ));
}
/// Create a copy of AdminFeeReceipt
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
}/// Create a copy of AdminFeeReceipt
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
}
}


/// Adds pattern-matching-related methods to [AdminFeeReceipt].
extension AdminFeeReceiptPatterns on AdminFeeReceipt {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminFeeReceipt value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminFeeReceipt() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminFeeReceipt value)  $default,){
final _that = this;
switch (_that) {
case _AdminFeeReceipt():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminFeeReceipt value)?  $default,){
final _that = this;
switch (_that) {
case _AdminFeeReceipt() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'receipt_id')  String receiptId, @JsonKey(name: 'receipt_no')  String? receiptNo, @JsonKey(name: 'receipt_date')  DateTime? receiptDate, @JsonKey(name: 'total_amount')@NullableDecimalConverter()  Decimal? totalAmount, @JsonKey(name: 'discount_amount')@NullableDecimalConverter()  Decimal? discountAmount, @JsonKey(name: 'fine_amount')@NullableDecimalConverter()  Decimal? fineAmount, @JsonKey(name: 'net_amount')@DecimalConverter()  Decimal netAmount, @JsonKey(name: 'payment_mode')  String? paymentMode, @JsonKey(name: 'receipt_status')  String? receiptStatus,  String? remarks, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'students')  StudentBrief? student, @JsonKey(name: 'classes')  ClassRef? classRef)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminFeeReceipt() when $default != null:
return $default(_that.receiptId,_that.receiptNo,_that.receiptDate,_that.totalAmount,_that.discountAmount,_that.fineAmount,_that.netAmount,_that.paymentMode,_that.receiptStatus,_that.remarks,_that.createdAt,_that.updatedAt,_that.student,_that.classRef);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'receipt_id')  String receiptId, @JsonKey(name: 'receipt_no')  String? receiptNo, @JsonKey(name: 'receipt_date')  DateTime? receiptDate, @JsonKey(name: 'total_amount')@NullableDecimalConverter()  Decimal? totalAmount, @JsonKey(name: 'discount_amount')@NullableDecimalConverter()  Decimal? discountAmount, @JsonKey(name: 'fine_amount')@NullableDecimalConverter()  Decimal? fineAmount, @JsonKey(name: 'net_amount')@DecimalConverter()  Decimal netAmount, @JsonKey(name: 'payment_mode')  String? paymentMode, @JsonKey(name: 'receipt_status')  String? receiptStatus,  String? remarks, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'students')  StudentBrief? student, @JsonKey(name: 'classes')  ClassRef? classRef)  $default,) {final _that = this;
switch (_that) {
case _AdminFeeReceipt():
return $default(_that.receiptId,_that.receiptNo,_that.receiptDate,_that.totalAmount,_that.discountAmount,_that.fineAmount,_that.netAmount,_that.paymentMode,_that.receiptStatus,_that.remarks,_that.createdAt,_that.updatedAt,_that.student,_that.classRef);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'receipt_id')  String receiptId, @JsonKey(name: 'receipt_no')  String? receiptNo, @JsonKey(name: 'receipt_date')  DateTime? receiptDate, @JsonKey(name: 'total_amount')@NullableDecimalConverter()  Decimal? totalAmount, @JsonKey(name: 'discount_amount')@NullableDecimalConverter()  Decimal? discountAmount, @JsonKey(name: 'fine_amount')@NullableDecimalConverter()  Decimal? fineAmount, @JsonKey(name: 'net_amount')@DecimalConverter()  Decimal netAmount, @JsonKey(name: 'payment_mode')  String? paymentMode, @JsonKey(name: 'receipt_status')  String? receiptStatus,  String? remarks, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'students')  StudentBrief? student, @JsonKey(name: 'classes')  ClassRef? classRef)?  $default,) {final _that = this;
switch (_that) {
case _AdminFeeReceipt() when $default != null:
return $default(_that.receiptId,_that.receiptNo,_that.receiptDate,_that.totalAmount,_that.discountAmount,_that.fineAmount,_that.netAmount,_that.paymentMode,_that.receiptStatus,_that.remarks,_that.createdAt,_that.updatedAt,_that.student,_that.classRef);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminFeeReceipt implements AdminFeeReceipt {
  const _AdminFeeReceipt({@JsonKey(name: 'receipt_id') required this.receiptId, @JsonKey(name: 'receipt_no') this.receiptNo, @JsonKey(name: 'receipt_date') this.receiptDate, @JsonKey(name: 'total_amount')@NullableDecimalConverter() this.totalAmount, @JsonKey(name: 'discount_amount')@NullableDecimalConverter() this.discountAmount, @JsonKey(name: 'fine_amount')@NullableDecimalConverter() this.fineAmount, @JsonKey(name: 'net_amount')@DecimalConverter() required this.netAmount, @JsonKey(name: 'payment_mode') this.paymentMode, @JsonKey(name: 'receipt_status') this.receiptStatus, this.remarks, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'students') this.student, @JsonKey(name: 'classes') this.classRef});
  factory _AdminFeeReceipt.fromJson(Map<String, dynamic> json) => _$AdminFeeReceiptFromJson(json);

@override@JsonKey(name: 'receipt_id') final  String receiptId;
@override@JsonKey(name: 'receipt_no') final  String? receiptNo;
@override@JsonKey(name: 'receipt_date') final  DateTime? receiptDate;
@override@JsonKey(name: 'total_amount')@NullableDecimalConverter() final  Decimal? totalAmount;
@override@JsonKey(name: 'discount_amount')@NullableDecimalConverter() final  Decimal? discountAmount;
@override@JsonKey(name: 'fine_amount')@NullableDecimalConverter() final  Decimal? fineAmount;
@override@JsonKey(name: 'net_amount')@DecimalConverter() final  Decimal netAmount;
@override@JsonKey(name: 'payment_mode') final  String? paymentMode;
@override@JsonKey(name: 'receipt_status') final  String? receiptStatus;
@override final  String? remarks;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
@override@JsonKey(name: 'students') final  StudentBrief? student;
@override@JsonKey(name: 'classes') final  ClassRef? classRef;

/// Create a copy of AdminFeeReceipt
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminFeeReceiptCopyWith<_AdminFeeReceipt> get copyWith => __$AdminFeeReceiptCopyWithImpl<_AdminFeeReceipt>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminFeeReceiptToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminFeeReceipt&&(identical(other.receiptId, receiptId) || other.receiptId == receiptId)&&(identical(other.receiptNo, receiptNo) || other.receiptNo == receiptNo)&&(identical(other.receiptDate, receiptDate) || other.receiptDate == receiptDate)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.fineAmount, fineAmount) || other.fineAmount == fineAmount)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.receiptStatus, receiptStatus) || other.receiptStatus == receiptStatus)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.student, student) || other.student == student)&&(identical(other.classRef, classRef) || other.classRef == classRef));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,receiptId,receiptNo,receiptDate,totalAmount,discountAmount,fineAmount,netAmount,paymentMode,receiptStatus,remarks,createdAt,updatedAt,student,classRef);
}

@override
String toString() {
    return 'AdminFeeReceipt(receiptId: $receiptId, receiptNo: $receiptNo, receiptDate: $receiptDate, totalAmount: $totalAmount, discountAmount: $discountAmount, fineAmount: $fineAmount, netAmount: $netAmount, paymentMode: $paymentMode, receiptStatus: $receiptStatus, remarks: $remarks, createdAt: $createdAt, updatedAt: $updatedAt, student: $student, classRef: $classRef)';
}


}

/// @nodoc
abstract mixin class _$AdminFeeReceiptCopyWith<$Res> implements $AdminFeeReceiptCopyWith<$Res> {
  factory _$AdminFeeReceiptCopyWith(_AdminFeeReceipt value, $Res Function(_AdminFeeReceipt) _then) = __$AdminFeeReceiptCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'receipt_id') String receiptId,@JsonKey(name: 'receipt_no') String? receiptNo,@JsonKey(name: 'receipt_date') DateTime? receiptDate,@JsonKey(name: 'total_amount')@NullableDecimalConverter() Decimal? totalAmount,@JsonKey(name: 'discount_amount')@NullableDecimalConverter() Decimal? discountAmount,@JsonKey(name: 'fine_amount')@NullableDecimalConverter() Decimal? fineAmount,@JsonKey(name: 'net_amount')@DecimalConverter() Decimal netAmount,@JsonKey(name: 'payment_mode') String? paymentMode,@JsonKey(name: 'receipt_status') String? receiptStatus, String? remarks,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'students') StudentBrief? student,@JsonKey(name: 'classes') ClassRef? classRef
});


@override $StudentBriefCopyWith<$Res>? get student;@override $ClassRefCopyWith<$Res>? get classRef;

}
/// @nodoc
class __$AdminFeeReceiptCopyWithImpl<$Res>
    implements _$AdminFeeReceiptCopyWith<$Res> {
  __$AdminFeeReceiptCopyWithImpl(this._self, this._then);

  final _AdminFeeReceipt _self;
  final $Res Function(_AdminFeeReceipt) _then;

/// Create a copy of AdminFeeReceipt
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiptId = null,Object? receiptNo = freezed,Object? receiptDate = freezed,Object? totalAmount = freezed,Object? discountAmount = freezed,Object? fineAmount = freezed,Object? netAmount = null,Object? paymentMode = freezed,Object? receiptStatus = freezed,Object? remarks = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? student = freezed,Object? classRef = freezed,}) {
  return _then(_AdminFeeReceipt(
receiptId: null == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String,receiptNo: freezed == receiptNo ? _self.receiptNo : receiptNo // ignore: cast_nullable_to_non_nullable
as String?,receiptDate: freezed == receiptDate ? _self.receiptDate : receiptDate // ignore: cast_nullable_to_non_nullable
as DateTime?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,discountAmount: freezed == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,fineAmount: freezed == fineAmount ? _self.fineAmount : fineAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as Decimal,paymentMode: freezed == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String?,receiptStatus: freezed == receiptStatus ? _self.receiptStatus : receiptStatus // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,classRef: freezed == classRef ? _self.classRef : classRef // ignore: cast_nullable_to_non_nullable
as ClassRef?,
  ));
}

/// Create a copy of AdminFeeReceipt
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
}/// Create a copy of AdminFeeReceipt
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
}
}


/// @nodoc
mixin _$FeeCollectionReport {

@DecimalConverter() Decimal get total;@JsonKey(name: 'receipt_count') int get receiptCount; List<AdminFeeReceipt> get receipts;
/// Create a copy of FeeCollectionReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeCollectionReportCopyWith<FeeCollectionReport> get copyWith => _$FeeCollectionReportCopyWithImpl<FeeCollectionReport>(this as FeeCollectionReport, _$identity);

  /// Serializes this FeeCollectionReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FeeCollectionReport;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeCollectionReport&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.receiptCount, _this.receiptCount) || other.receiptCount == _this.receiptCount)&&const DeepCollectionEquality().equals(other.receipts, _this.receipts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeeCollectionReport;
  return Object.hash(runtimeType,_this.total,_this.receiptCount,const DeepCollectionEquality().hash(_this.receipts));
}

@override
String toString() {
  final _this = this as FeeCollectionReport;
  return 'FeeCollectionReport(total: ${_this.total}, receiptCount: ${_this.receiptCount}, receipts: ${_this.receipts})';
}


}

/// @nodoc
abstract mixin class $FeeCollectionReportCopyWith<$Res>  {
  factory $FeeCollectionReportCopyWith(FeeCollectionReport value, $Res Function(FeeCollectionReport) _then) = _$FeeCollectionReportCopyWithImpl;
@useResult
$Res call({
@DecimalConverter() Decimal total,@JsonKey(name: 'receipt_count') int receiptCount, List<AdminFeeReceipt> receipts
});




}
/// @nodoc
class _$FeeCollectionReportCopyWithImpl<$Res>
    implements $FeeCollectionReportCopyWith<$Res> {
  _$FeeCollectionReportCopyWithImpl(this._self, this._then);

  final FeeCollectionReport _self;
  final $Res Function(FeeCollectionReport) _then;

/// Create a copy of FeeCollectionReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? receiptCount = null,Object? receipts = null,}) {
  return _then(FeeCollectionReport(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as Decimal,receiptCount: null == receiptCount ? _self.receiptCount : receiptCount // ignore: cast_nullable_to_non_nullable
as int,receipts: null == receipts ? _self.receipts : receipts // ignore: cast_nullable_to_non_nullable
as List<AdminFeeReceipt>,
  ));
}

}


/// Adds pattern-matching-related methods to [FeeCollectionReport].
extension FeeCollectionReportPatterns on FeeCollectionReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeeCollectionReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeeCollectionReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeeCollectionReport value)  $default,){
final _that = this;
switch (_that) {
case _FeeCollectionReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeeCollectionReport value)?  $default,){
final _that = this;
switch (_that) {
case _FeeCollectionReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@DecimalConverter()  Decimal total, @JsonKey(name: 'receipt_count')  int receiptCount,  List<AdminFeeReceipt> receipts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeCollectionReport() when $default != null:
return $default(_that.total,_that.receiptCount,_that.receipts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@DecimalConverter()  Decimal total, @JsonKey(name: 'receipt_count')  int receiptCount,  List<AdminFeeReceipt> receipts)  $default,) {final _that = this;
switch (_that) {
case _FeeCollectionReport():
return $default(_that.total,_that.receiptCount,_that.receipts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@DecimalConverter()  Decimal total, @JsonKey(name: 'receipt_count')  int receiptCount,  List<AdminFeeReceipt> receipts)?  $default,) {final _that = this;
switch (_that) {
case _FeeCollectionReport() when $default != null:
return $default(_that.total,_that.receiptCount,_that.receipts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeCollectionReport implements FeeCollectionReport {
  const _FeeCollectionReport({@DecimalConverter() required this.total, @JsonKey(name: 'receipt_count') this.receiptCount = 0,  List<AdminFeeReceipt> receipts = const <AdminFeeReceipt>[]}): _receipts = receipts;
  factory _FeeCollectionReport.fromJson(Map<String, dynamic> json) => _$FeeCollectionReportFromJson(json);

@override@DecimalConverter() final  Decimal total;
@override@JsonKey(name: 'receipt_count') final  int receiptCount;
 final  List<AdminFeeReceipt> _receipts;
@override@JsonKey() List<AdminFeeReceipt> get receipts {
  if (_receipts is EqualUnmodifiableListView) return _receipts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_receipts);
}


/// Create a copy of FeeCollectionReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeCollectionReportCopyWith<_FeeCollectionReport> get copyWith => __$FeeCollectionReportCopyWithImpl<_FeeCollectionReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeCollectionReportToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeCollectionReport&&(identical(other.total, total) || other.total == total)&&(identical(other.receiptCount, receiptCount) || other.receiptCount == receiptCount)&&const DeepCollectionEquality().equals(other.receipts, _receipts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,receiptCount,const DeepCollectionEquality().hash(_receipts));
}

@override
String toString() {
    return 'FeeCollectionReport(total: $total, receiptCount: $receiptCount, receipts: $receipts)';
}


}

/// @nodoc
abstract mixin class _$FeeCollectionReportCopyWith<$Res> implements $FeeCollectionReportCopyWith<$Res> {
  factory _$FeeCollectionReportCopyWith(_FeeCollectionReport value, $Res Function(_FeeCollectionReport) _then) = __$FeeCollectionReportCopyWithImpl;
@override @useResult
$Res call({
@DecimalConverter() Decimal total,@JsonKey(name: 'receipt_count') int receiptCount, List<AdminFeeReceipt> receipts
});




}
/// @nodoc
class __$FeeCollectionReportCopyWithImpl<$Res>
    implements _$FeeCollectionReportCopyWith<$Res> {
  __$FeeCollectionReportCopyWithImpl(this._self, this._then);

  final _FeeCollectionReport _self;
  final $Res Function(_FeeCollectionReport) _then;

/// Create a copy of FeeCollectionReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? receiptCount = null,Object? receipts = null,}) {
  return _then(_FeeCollectionReport(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as Decimal,receiptCount: null == receiptCount ? _self.receiptCount : receiptCount // ignore: cast_nullable_to_non_nullable
as int,receipts: null == receipts ? _self._receipts : receipts // ignore: cast_nullable_to_non_nullable
as List<AdminFeeReceipt>,
  ));
}


}


/// @nodoc
mixin _$FeeRefundReport {

@JsonKey(name: 'total_refunded')@DecimalConverter() Decimal get totalRefunded;@JsonKey(name: 'receipt_count') int get receiptCount; List<AdminFeeReceipt> get receipts;
/// Create a copy of FeeRefundReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeRefundReportCopyWith<FeeRefundReport> get copyWith => _$FeeRefundReportCopyWithImpl<FeeRefundReport>(this as FeeRefundReport, _$identity);

  /// Serializes this FeeRefundReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FeeRefundReport;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeRefundReport&&(identical(other.totalRefunded, _this.totalRefunded) || other.totalRefunded == _this.totalRefunded)&&(identical(other.receiptCount, _this.receiptCount) || other.receiptCount == _this.receiptCount)&&const DeepCollectionEquality().equals(other.receipts, _this.receipts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeeRefundReport;
  return Object.hash(runtimeType,_this.totalRefunded,_this.receiptCount,const DeepCollectionEquality().hash(_this.receipts));
}

@override
String toString() {
  final _this = this as FeeRefundReport;
  return 'FeeRefundReport(totalRefunded: ${_this.totalRefunded}, receiptCount: ${_this.receiptCount}, receipts: ${_this.receipts})';
}


}

/// @nodoc
abstract mixin class $FeeRefundReportCopyWith<$Res>  {
  factory $FeeRefundReportCopyWith(FeeRefundReport value, $Res Function(FeeRefundReport) _then) = _$FeeRefundReportCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_refunded')@DecimalConverter() Decimal totalRefunded,@JsonKey(name: 'receipt_count') int receiptCount, List<AdminFeeReceipt> receipts
});




}
/// @nodoc
class _$FeeRefundReportCopyWithImpl<$Res>
    implements $FeeRefundReportCopyWith<$Res> {
  _$FeeRefundReportCopyWithImpl(this._self, this._then);

  final FeeRefundReport _self;
  final $Res Function(FeeRefundReport) _then;

/// Create a copy of FeeRefundReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalRefunded = null,Object? receiptCount = null,Object? receipts = null,}) {
  return _then(FeeRefundReport(
totalRefunded: null == totalRefunded ? _self.totalRefunded : totalRefunded // ignore: cast_nullable_to_non_nullable
as Decimal,receiptCount: null == receiptCount ? _self.receiptCount : receiptCount // ignore: cast_nullable_to_non_nullable
as int,receipts: null == receipts ? _self.receipts : receipts // ignore: cast_nullable_to_non_nullable
as List<AdminFeeReceipt>,
  ));
}

}


/// Adds pattern-matching-related methods to [FeeRefundReport].
extension FeeRefundReportPatterns on FeeRefundReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeeRefundReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeeRefundReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeeRefundReport value)  $default,){
final _that = this;
switch (_that) {
case _FeeRefundReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeeRefundReport value)?  $default,){
final _that = this;
switch (_that) {
case _FeeRefundReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_refunded')@DecimalConverter()  Decimal totalRefunded, @JsonKey(name: 'receipt_count')  int receiptCount,  List<AdminFeeReceipt> receipts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeRefundReport() when $default != null:
return $default(_that.totalRefunded,_that.receiptCount,_that.receipts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_refunded')@DecimalConverter()  Decimal totalRefunded, @JsonKey(name: 'receipt_count')  int receiptCount,  List<AdminFeeReceipt> receipts)  $default,) {final _that = this;
switch (_that) {
case _FeeRefundReport():
return $default(_that.totalRefunded,_that.receiptCount,_that.receipts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_refunded')@DecimalConverter()  Decimal totalRefunded, @JsonKey(name: 'receipt_count')  int receiptCount,  List<AdminFeeReceipt> receipts)?  $default,) {final _that = this;
switch (_that) {
case _FeeRefundReport() when $default != null:
return $default(_that.totalRefunded,_that.receiptCount,_that.receipts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeRefundReport implements FeeRefundReport {
  const _FeeRefundReport({@JsonKey(name: 'total_refunded')@DecimalConverter() required this.totalRefunded, @JsonKey(name: 'receipt_count') this.receiptCount = 0,  List<AdminFeeReceipt> receipts = const <AdminFeeReceipt>[]}): _receipts = receipts;
  factory _FeeRefundReport.fromJson(Map<String, dynamic> json) => _$FeeRefundReportFromJson(json);

@override@JsonKey(name: 'total_refunded')@DecimalConverter() final  Decimal totalRefunded;
@override@JsonKey(name: 'receipt_count') final  int receiptCount;
 final  List<AdminFeeReceipt> _receipts;
@override@JsonKey() List<AdminFeeReceipt> get receipts {
  if (_receipts is EqualUnmodifiableListView) return _receipts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_receipts);
}


/// Create a copy of FeeRefundReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeRefundReportCopyWith<_FeeRefundReport> get copyWith => __$FeeRefundReportCopyWithImpl<_FeeRefundReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeRefundReportToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeRefundReport&&(identical(other.totalRefunded, totalRefunded) || other.totalRefunded == totalRefunded)&&(identical(other.receiptCount, receiptCount) || other.receiptCount == receiptCount)&&const DeepCollectionEquality().equals(other.receipts, _receipts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,totalRefunded,receiptCount,const DeepCollectionEquality().hash(_receipts));
}

@override
String toString() {
    return 'FeeRefundReport(totalRefunded: $totalRefunded, receiptCount: $receiptCount, receipts: $receipts)';
}


}

/// @nodoc
abstract mixin class _$FeeRefundReportCopyWith<$Res> implements $FeeRefundReportCopyWith<$Res> {
  factory _$FeeRefundReportCopyWith(_FeeRefundReport value, $Res Function(_FeeRefundReport) _then) = __$FeeRefundReportCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_refunded')@DecimalConverter() Decimal totalRefunded,@JsonKey(name: 'receipt_count') int receiptCount, List<AdminFeeReceipt> receipts
});




}
/// @nodoc
class __$FeeRefundReportCopyWithImpl<$Res>
    implements _$FeeRefundReportCopyWith<$Res> {
  __$FeeRefundReportCopyWithImpl(this._self, this._then);

  final _FeeRefundReport _self;
  final $Res Function(_FeeRefundReport) _then;

/// Create a copy of FeeRefundReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalRefunded = null,Object? receiptCount = null,Object? receipts = null,}) {
  return _then(_FeeRefundReport(
totalRefunded: null == totalRefunded ? _self.totalRefunded : totalRefunded // ignore: cast_nullable_to_non_nullable
as Decimal,receiptCount: null == receiptCount ? _self.receiptCount : receiptCount // ignore: cast_nullable_to_non_nullable
as int,receipts: null == receipts ? _self._receipts : receipts // ignore: cast_nullable_to_non_nullable
as List<AdminFeeReceipt>,
  ));
}


}


/// @nodoc
mixin _$ClassWiseCollectionRow {

@JsonKey(name: 'class_id') String? get classId;@JsonKey(name: 'class_name') String? get className;@DecimalConverter() Decimal get total;@JsonKey(name: 'receipt_count') int get receiptCount;
/// Create a copy of ClassWiseCollectionRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassWiseCollectionRowCopyWith<ClassWiseCollectionRow> get copyWith => _$ClassWiseCollectionRowCopyWithImpl<ClassWiseCollectionRow>(this as ClassWiseCollectionRow, _$identity);

  /// Serializes this ClassWiseCollectionRow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassWiseCollectionRow;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassWiseCollectionRow&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.receiptCount, _this.receiptCount) || other.receiptCount == _this.receiptCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassWiseCollectionRow;
  return Object.hash(runtimeType,_this.classId,_this.className,_this.total,_this.receiptCount);
}

@override
String toString() {
  final _this = this as ClassWiseCollectionRow;
  return 'ClassWiseCollectionRow(classId: ${_this.classId}, className: ${_this.className}, total: ${_this.total}, receiptCount: ${_this.receiptCount})';
}


}

/// @nodoc
abstract mixin class $ClassWiseCollectionRowCopyWith<$Res>  {
  factory $ClassWiseCollectionRowCopyWith(ClassWiseCollectionRow value, $Res Function(ClassWiseCollectionRow) _then) = _$ClassWiseCollectionRowCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'class_name') String? className,@DecimalConverter() Decimal total,@JsonKey(name: 'receipt_count') int receiptCount
});




}
/// @nodoc
class _$ClassWiseCollectionRowCopyWithImpl<$Res>
    implements $ClassWiseCollectionRowCopyWith<$Res> {
  _$ClassWiseCollectionRowCopyWithImpl(this._self, this._then);

  final ClassWiseCollectionRow _self;
  final $Res Function(ClassWiseCollectionRow) _then;

/// Create a copy of ClassWiseCollectionRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classId = freezed,Object? className = freezed,Object? total = null,Object? receiptCount = null,}) {
  return _then(ClassWiseCollectionRow(
classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as Decimal,receiptCount: null == receiptCount ? _self.receiptCount : receiptCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassWiseCollectionRow].
extension ClassWiseCollectionRowPatterns on ClassWiseCollectionRow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassWiseCollectionRow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassWiseCollectionRow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassWiseCollectionRow value)  $default,){
final _that = this;
switch (_that) {
case _ClassWiseCollectionRow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassWiseCollectionRow value)?  $default,){
final _that = this;
switch (_that) {
case _ClassWiseCollectionRow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'class_name')  String? className, @DecimalConverter()  Decimal total, @JsonKey(name: 'receipt_count')  int receiptCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassWiseCollectionRow() when $default != null:
return $default(_that.classId,_that.className,_that.total,_that.receiptCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'class_name')  String? className, @DecimalConverter()  Decimal total, @JsonKey(name: 'receipt_count')  int receiptCount)  $default,) {final _that = this;
switch (_that) {
case _ClassWiseCollectionRow():
return $default(_that.classId,_that.className,_that.total,_that.receiptCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'class_name')  String? className, @DecimalConverter()  Decimal total, @JsonKey(name: 'receipt_count')  int receiptCount)?  $default,) {final _that = this;
switch (_that) {
case _ClassWiseCollectionRow() when $default != null:
return $default(_that.classId,_that.className,_that.total,_that.receiptCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassWiseCollectionRow implements ClassWiseCollectionRow {
  const _ClassWiseCollectionRow({@JsonKey(name: 'class_id') this.classId, @JsonKey(name: 'class_name') this.className, @DecimalConverter() required this.total, @JsonKey(name: 'receipt_count') this.receiptCount = 0});
  factory _ClassWiseCollectionRow.fromJson(Map<String, dynamic> json) => _$ClassWiseCollectionRowFromJson(json);

@override@JsonKey(name: 'class_id') final  String? classId;
@override@JsonKey(name: 'class_name') final  String? className;
@override@DecimalConverter() final  Decimal total;
@override@JsonKey(name: 'receipt_count') final  int receiptCount;

/// Create a copy of ClassWiseCollectionRow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassWiseCollectionRowCopyWith<_ClassWiseCollectionRow> get copyWith => __$ClassWiseCollectionRowCopyWithImpl<_ClassWiseCollectionRow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassWiseCollectionRowToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassWiseCollectionRow&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.className, className) || other.className == className)&&(identical(other.total, total) || other.total == total)&&(identical(other.receiptCount, receiptCount) || other.receiptCount == receiptCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,classId,className,total,receiptCount);
}

@override
String toString() {
    return 'ClassWiseCollectionRow(classId: $classId, className: $className, total: $total, receiptCount: $receiptCount)';
}


}

/// @nodoc
abstract mixin class _$ClassWiseCollectionRowCopyWith<$Res> implements $ClassWiseCollectionRowCopyWith<$Res> {
  factory _$ClassWiseCollectionRowCopyWith(_ClassWiseCollectionRow value, $Res Function(_ClassWiseCollectionRow) _then) = __$ClassWiseCollectionRowCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'class_name') String? className,@DecimalConverter() Decimal total,@JsonKey(name: 'receipt_count') int receiptCount
});




}
/// @nodoc
class __$ClassWiseCollectionRowCopyWithImpl<$Res>
    implements _$ClassWiseCollectionRowCopyWith<$Res> {
  __$ClassWiseCollectionRowCopyWithImpl(this._self, this._then);

  final _ClassWiseCollectionRow _self;
  final $Res Function(_ClassWiseCollectionRow) _then;

/// Create a copy of ClassWiseCollectionRow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classId = freezed,Object? className = freezed,Object? total = null,Object? receiptCount = null,}) {
  return _then(_ClassWiseCollectionRow(
classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as Decimal,receiptCount: null == receiptCount ? _self.receiptCount : receiptCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$OutstandingFeeReport {

@JsonKey(name: 'total_pending')@DecimalConverter() Decimal get totalPending;@JsonKey(name: 'students_with_pending') int get studentsWithPending; List<OutstandingStudent> get students;
/// Create a copy of OutstandingFeeReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OutstandingFeeReportCopyWith<OutstandingFeeReport> get copyWith => _$OutstandingFeeReportCopyWithImpl<OutstandingFeeReport>(this as OutstandingFeeReport, _$identity);

  /// Serializes this OutstandingFeeReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OutstandingFeeReport;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OutstandingFeeReport&&(identical(other.totalPending, _this.totalPending) || other.totalPending == _this.totalPending)&&(identical(other.studentsWithPending, _this.studentsWithPending) || other.studentsWithPending == _this.studentsWithPending)&&const DeepCollectionEquality().equals(other.students, _this.students));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OutstandingFeeReport;
  return Object.hash(runtimeType,_this.totalPending,_this.studentsWithPending,const DeepCollectionEquality().hash(_this.students));
}

@override
String toString() {
  final _this = this as OutstandingFeeReport;
  return 'OutstandingFeeReport(totalPending: ${_this.totalPending}, studentsWithPending: ${_this.studentsWithPending}, students: ${_this.students})';
}


}

/// @nodoc
abstract mixin class $OutstandingFeeReportCopyWith<$Res>  {
  factory $OutstandingFeeReportCopyWith(OutstandingFeeReport value, $Res Function(OutstandingFeeReport) _then) = _$OutstandingFeeReportCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_pending')@DecimalConverter() Decimal totalPending,@JsonKey(name: 'students_with_pending') int studentsWithPending, List<OutstandingStudent> students
});




}
/// @nodoc
class _$OutstandingFeeReportCopyWithImpl<$Res>
    implements $OutstandingFeeReportCopyWith<$Res> {
  _$OutstandingFeeReportCopyWithImpl(this._self, this._then);

  final OutstandingFeeReport _self;
  final $Res Function(OutstandingFeeReport) _then;

/// Create a copy of OutstandingFeeReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalPending = null,Object? studentsWithPending = null,Object? students = null,}) {
  return _then(OutstandingFeeReport(
totalPending: null == totalPending ? _self.totalPending : totalPending // ignore: cast_nullable_to_non_nullable
as Decimal,studentsWithPending: null == studentsWithPending ? _self.studentsWithPending : studentsWithPending // ignore: cast_nullable_to_non_nullable
as int,students: null == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as List<OutstandingStudent>,
  ));
}

}


/// Adds pattern-matching-related methods to [OutstandingFeeReport].
extension OutstandingFeeReportPatterns on OutstandingFeeReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OutstandingFeeReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OutstandingFeeReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OutstandingFeeReport value)  $default,){
final _that = this;
switch (_that) {
case _OutstandingFeeReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OutstandingFeeReport value)?  $default,){
final _that = this;
switch (_that) {
case _OutstandingFeeReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_pending')@DecimalConverter()  Decimal totalPending, @JsonKey(name: 'students_with_pending')  int studentsWithPending,  List<OutstandingStudent> students)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OutstandingFeeReport() when $default != null:
return $default(_that.totalPending,_that.studentsWithPending,_that.students);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_pending')@DecimalConverter()  Decimal totalPending, @JsonKey(name: 'students_with_pending')  int studentsWithPending,  List<OutstandingStudent> students)  $default,) {final _that = this;
switch (_that) {
case _OutstandingFeeReport():
return $default(_that.totalPending,_that.studentsWithPending,_that.students);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_pending')@DecimalConverter()  Decimal totalPending, @JsonKey(name: 'students_with_pending')  int studentsWithPending,  List<OutstandingStudent> students)?  $default,) {final _that = this;
switch (_that) {
case _OutstandingFeeReport() when $default != null:
return $default(_that.totalPending,_that.studentsWithPending,_that.students);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OutstandingFeeReport implements OutstandingFeeReport {
  const _OutstandingFeeReport({@JsonKey(name: 'total_pending')@DecimalConverter() required this.totalPending, @JsonKey(name: 'students_with_pending') this.studentsWithPending = 0,  List<OutstandingStudent> students = const <OutstandingStudent>[]}): _students = students;
  factory _OutstandingFeeReport.fromJson(Map<String, dynamic> json) => _$OutstandingFeeReportFromJson(json);

@override@JsonKey(name: 'total_pending')@DecimalConverter() final  Decimal totalPending;
@override@JsonKey(name: 'students_with_pending') final  int studentsWithPending;
 final  List<OutstandingStudent> _students;
@override@JsonKey() List<OutstandingStudent> get students {
  if (_students is EqualUnmodifiableListView) return _students;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_students);
}


/// Create a copy of OutstandingFeeReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OutstandingFeeReportCopyWith<_OutstandingFeeReport> get copyWith => __$OutstandingFeeReportCopyWithImpl<_OutstandingFeeReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OutstandingFeeReportToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OutstandingFeeReport&&(identical(other.totalPending, totalPending) || other.totalPending == totalPending)&&(identical(other.studentsWithPending, studentsWithPending) || other.studentsWithPending == studentsWithPending)&&const DeepCollectionEquality().equals(other.students, _students));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,totalPending,studentsWithPending,const DeepCollectionEquality().hash(_students));
}

@override
String toString() {
    return 'OutstandingFeeReport(totalPending: $totalPending, studentsWithPending: $studentsWithPending, students: $students)';
}


}

/// @nodoc
abstract mixin class _$OutstandingFeeReportCopyWith<$Res> implements $OutstandingFeeReportCopyWith<$Res> {
  factory _$OutstandingFeeReportCopyWith(_OutstandingFeeReport value, $Res Function(_OutstandingFeeReport) _then) = __$OutstandingFeeReportCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_pending')@DecimalConverter() Decimal totalPending,@JsonKey(name: 'students_with_pending') int studentsWithPending, List<OutstandingStudent> students
});




}
/// @nodoc
class __$OutstandingFeeReportCopyWithImpl<$Res>
    implements _$OutstandingFeeReportCopyWith<$Res> {
  __$OutstandingFeeReportCopyWithImpl(this._self, this._then);

  final _OutstandingFeeReport _self;
  final $Res Function(_OutstandingFeeReport) _then;

/// Create a copy of OutstandingFeeReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalPending = null,Object? studentsWithPending = null,Object? students = null,}) {
  return _then(_OutstandingFeeReport(
totalPending: null == totalPending ? _self.totalPending : totalPending // ignore: cast_nullable_to_non_nullable
as Decimal,studentsWithPending: null == studentsWithPending ? _self.studentsWithPending : studentsWithPending // ignore: cast_nullable_to_non_nullable
as int,students: null == students ? _self._students : students // ignore: cast_nullable_to_non_nullable
as List<OutstandingStudent>,
  ));
}


}


/// @nodoc
mixin _$OutstandingStudent {

@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'admission_no') String? get admissionNo;@JsonKey(name: 'total_due')@DecimalConverter() Decimal get totalDue;
/// Create a copy of OutstandingStudent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OutstandingStudentCopyWith<OutstandingStudent> get copyWith => _$OutstandingStudentCopyWithImpl<OutstandingStudent>(this as OutstandingStudent, _$identity);

  /// Serializes this OutstandingStudent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OutstandingStudent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OutstandingStudent&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.totalDue, _this.totalDue) || other.totalDue == _this.totalDue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OutstandingStudent;
  return Object.hash(runtimeType,_this.studentId,_this.admissionNo,_this.totalDue);
}

@override
String toString() {
  final _this = this as OutstandingStudent;
  return 'OutstandingStudent(studentId: ${_this.studentId}, admissionNo: ${_this.admissionNo}, totalDue: ${_this.totalDue})';
}


}

/// @nodoc
abstract mixin class $OutstandingStudentCopyWith<$Res>  {
  factory $OutstandingStudentCopyWith(OutstandingStudent value, $Res Function(OutstandingStudent) _then) = _$OutstandingStudentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'total_due')@DecimalConverter() Decimal totalDue
});




}
/// @nodoc
class _$OutstandingStudentCopyWithImpl<$Res>
    implements $OutstandingStudentCopyWith<$Res> {
  _$OutstandingStudentCopyWithImpl(this._self, this._then);

  final OutstandingStudent _self;
  final $Res Function(OutstandingStudent) _then;

/// Create a copy of OutstandingStudent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? totalDue = null,}) {
  return _then(OutstandingStudent(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,totalDue: null == totalDue ? _self.totalDue : totalDue // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

}


/// Adds pattern-matching-related methods to [OutstandingStudent].
extension OutstandingStudentPatterns on OutstandingStudent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OutstandingStudent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OutstandingStudent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OutstandingStudent value)  $default,){
final _that = this;
switch (_that) {
case _OutstandingStudent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OutstandingStudent value)?  $default,){
final _that = this;
switch (_that) {
case _OutstandingStudent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'total_due')@DecimalConverter()  Decimal totalDue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OutstandingStudent() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.totalDue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'total_due')@DecimalConverter()  Decimal totalDue)  $default,) {final _that = this;
switch (_that) {
case _OutstandingStudent():
return $default(_that.studentId,_that.admissionNo,_that.totalDue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'total_due')@DecimalConverter()  Decimal totalDue)?  $default,) {final _that = this;
switch (_that) {
case _OutstandingStudent() when $default != null:
return $default(_that.studentId,_that.admissionNo,_that.totalDue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OutstandingStudent implements OutstandingStudent {
  const _OutstandingStudent({@JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'admission_no') this.admissionNo, @JsonKey(name: 'total_due')@DecimalConverter() required this.totalDue});
  factory _OutstandingStudent.fromJson(Map<String, dynamic> json) => _$OutstandingStudentFromJson(json);

@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override@JsonKey(name: 'total_due')@DecimalConverter() final  Decimal totalDue;

/// Create a copy of OutstandingStudent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OutstandingStudentCopyWith<_OutstandingStudent> get copyWith => __$OutstandingStudentCopyWithImpl<_OutstandingStudent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OutstandingStudentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OutstandingStudent&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.totalDue, totalDue) || other.totalDue == totalDue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentId,admissionNo,totalDue);
}

@override
String toString() {
    return 'OutstandingStudent(studentId: $studentId, admissionNo: $admissionNo, totalDue: $totalDue)';
}


}

/// @nodoc
abstract mixin class _$OutstandingStudentCopyWith<$Res> implements $OutstandingStudentCopyWith<$Res> {
  factory _$OutstandingStudentCopyWith(_OutstandingStudent value, $Res Function(_OutstandingStudent) _then) = __$OutstandingStudentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'total_due')@DecimalConverter() Decimal totalDue
});




}
/// @nodoc
class __$OutstandingStudentCopyWithImpl<$Res>
    implements _$OutstandingStudentCopyWith<$Res> {
  __$OutstandingStudentCopyWithImpl(this._self, this._then);

  final _OutstandingStudent _self;
  final $Res Function(_OutstandingStudent) _then;

/// Create a copy of OutstandingStudent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? admissionNo = freezed,Object? totalDue = null,}) {
  return _then(_OutstandingStudent(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,totalDue: null == totalDue ? _self.totalDue : totalDue // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}


}


/// @nodoc
mixin _$ScholarshipConcessionRef {

@JsonKey(name: 'concession_id') String? get concessionId; String? get name;@JsonKey(name: 'concession_type') String? get concessionType;@JsonKey(name: 'calculation_type') String? get calculationType;@NullableDecimalConverter() Decimal? get value;
/// Create a copy of ScholarshipConcessionRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScholarshipConcessionRefCopyWith<ScholarshipConcessionRef> get copyWith => _$ScholarshipConcessionRefCopyWithImpl<ScholarshipConcessionRef>(this as ScholarshipConcessionRef, _$identity);

  /// Serializes this ScholarshipConcessionRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ScholarshipConcessionRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScholarshipConcessionRef&&(identical(other.concessionId, _this.concessionId) || other.concessionId == _this.concessionId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.concessionType, _this.concessionType) || other.concessionType == _this.concessionType)&&(identical(other.calculationType, _this.calculationType) || other.calculationType == _this.calculationType)&&(identical(other.value, _this.value) || other.value == _this.value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ScholarshipConcessionRef;
  return Object.hash(runtimeType,_this.concessionId,_this.name,_this.concessionType,_this.calculationType,_this.value);
}

@override
String toString() {
  final _this = this as ScholarshipConcessionRef;
  return 'ScholarshipConcessionRef(concessionId: ${_this.concessionId}, name: ${_this.name}, concessionType: ${_this.concessionType}, calculationType: ${_this.calculationType}, value: ${_this.value})';
}


}

/// @nodoc
abstract mixin class $ScholarshipConcessionRefCopyWith<$Res>  {
  factory $ScholarshipConcessionRefCopyWith(ScholarshipConcessionRef value, $Res Function(ScholarshipConcessionRef) _then) = _$ScholarshipConcessionRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'concession_id') String? concessionId, String? name,@JsonKey(name: 'concession_type') String? concessionType,@JsonKey(name: 'calculation_type') String? calculationType,@NullableDecimalConverter() Decimal? value
});




}
/// @nodoc
class _$ScholarshipConcessionRefCopyWithImpl<$Res>
    implements $ScholarshipConcessionRefCopyWith<$Res> {
  _$ScholarshipConcessionRefCopyWithImpl(this._self, this._then);

  final ScholarshipConcessionRef _self;
  final $Res Function(ScholarshipConcessionRef) _then;

/// Create a copy of ScholarshipConcessionRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? concessionId = freezed,Object? name = freezed,Object? concessionType = freezed,Object? calculationType = freezed,Object? value = freezed,}) {
  return _then(ScholarshipConcessionRef(
concessionId: freezed == concessionId ? _self.concessionId : concessionId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,concessionType: freezed == concessionType ? _self.concessionType : concessionType // ignore: cast_nullable_to_non_nullable
as String?,calculationType: freezed == calculationType ? _self.calculationType : calculationType // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Decimal?,
  ));
}

}


/// Adds pattern-matching-related methods to [ScholarshipConcessionRef].
extension ScholarshipConcessionRefPatterns on ScholarshipConcessionRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScholarshipConcessionRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScholarshipConcessionRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScholarshipConcessionRef value)  $default,){
final _that = this;
switch (_that) {
case _ScholarshipConcessionRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScholarshipConcessionRef value)?  $default,){
final _that = this;
switch (_that) {
case _ScholarshipConcessionRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'concession_id')  String? concessionId,  String? name, @JsonKey(name: 'concession_type')  String? concessionType, @JsonKey(name: 'calculation_type')  String? calculationType, @NullableDecimalConverter()  Decimal? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScholarshipConcessionRef() when $default != null:
return $default(_that.concessionId,_that.name,_that.concessionType,_that.calculationType,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'concession_id')  String? concessionId,  String? name, @JsonKey(name: 'concession_type')  String? concessionType, @JsonKey(name: 'calculation_type')  String? calculationType, @NullableDecimalConverter()  Decimal? value)  $default,) {final _that = this;
switch (_that) {
case _ScholarshipConcessionRef():
return $default(_that.concessionId,_that.name,_that.concessionType,_that.calculationType,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'concession_id')  String? concessionId,  String? name, @JsonKey(name: 'concession_type')  String? concessionType, @JsonKey(name: 'calculation_type')  String? calculationType, @NullableDecimalConverter()  Decimal? value)?  $default,) {final _that = this;
switch (_that) {
case _ScholarshipConcessionRef() when $default != null:
return $default(_that.concessionId,_that.name,_that.concessionType,_that.calculationType,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScholarshipConcessionRef implements ScholarshipConcessionRef {
  const _ScholarshipConcessionRef({@JsonKey(name: 'concession_id') this.concessionId, this.name, @JsonKey(name: 'concession_type') this.concessionType, @JsonKey(name: 'calculation_type') this.calculationType, @NullableDecimalConverter() this.value});
  factory _ScholarshipConcessionRef.fromJson(Map<String, dynamic> json) => _$ScholarshipConcessionRefFromJson(json);

@override@JsonKey(name: 'concession_id') final  String? concessionId;
@override final  String? name;
@override@JsonKey(name: 'concession_type') final  String? concessionType;
@override@JsonKey(name: 'calculation_type') final  String? calculationType;
@override@NullableDecimalConverter() final  Decimal? value;

/// Create a copy of ScholarshipConcessionRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScholarshipConcessionRefCopyWith<_ScholarshipConcessionRef> get copyWith => __$ScholarshipConcessionRefCopyWithImpl<_ScholarshipConcessionRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScholarshipConcessionRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScholarshipConcessionRef&&(identical(other.concessionId, concessionId) || other.concessionId == concessionId)&&(identical(other.name, name) || other.name == name)&&(identical(other.concessionType, concessionType) || other.concessionType == concessionType)&&(identical(other.calculationType, calculationType) || other.calculationType == calculationType)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,concessionId,name,concessionType,calculationType,value);
}

@override
String toString() {
    return 'ScholarshipConcessionRef(concessionId: $concessionId, name: $name, concessionType: $concessionType, calculationType: $calculationType, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ScholarshipConcessionRefCopyWith<$Res> implements $ScholarshipConcessionRefCopyWith<$Res> {
  factory _$ScholarshipConcessionRefCopyWith(_ScholarshipConcessionRef value, $Res Function(_ScholarshipConcessionRef) _then) = __$ScholarshipConcessionRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'concession_id') String? concessionId, String? name,@JsonKey(name: 'concession_type') String? concessionType,@JsonKey(name: 'calculation_type') String? calculationType,@NullableDecimalConverter() Decimal? value
});




}
/// @nodoc
class __$ScholarshipConcessionRefCopyWithImpl<$Res>
    implements _$ScholarshipConcessionRefCopyWith<$Res> {
  __$ScholarshipConcessionRefCopyWithImpl(this._self, this._then);

  final _ScholarshipConcessionRef _self;
  final $Res Function(_ScholarshipConcessionRef) _then;

/// Create a copy of ScholarshipConcessionRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? concessionId = freezed,Object? name = freezed,Object? concessionType = freezed,Object? calculationType = freezed,Object? value = freezed,}) {
  return _then(_ScholarshipConcessionRef(
concessionId: freezed == concessionId ? _self.concessionId : concessionId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,concessionType: freezed == concessionType ? _self.concessionType : concessionType // ignore: cast_nullable_to_non_nullable
as String?,calculationType: freezed == calculationType ? _self.calculationType : calculationType // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Decimal?,
  ));
}


}


/// @nodoc
mixin _$ScholarshipAssignment {

@JsonKey(name: 'student_concession_id') String get studentConcessionId;@JsonKey(name: 'valid_from') DateTime? get validFrom;@JsonKey(name: 'valid_to') DateTime? get validTo; String? get remarks; String get status;@JsonKey(name: 'students') StudentBrief? get student;@JsonKey(name: 'fee_concessions') ScholarshipConcessionRef? get concession;
/// Create a copy of ScholarshipAssignment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScholarshipAssignmentCopyWith<ScholarshipAssignment> get copyWith => _$ScholarshipAssignmentCopyWithImpl<ScholarshipAssignment>(this as ScholarshipAssignment, _$identity);

  /// Serializes this ScholarshipAssignment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ScholarshipAssignment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScholarshipAssignment&&(identical(other.studentConcessionId, _this.studentConcessionId) || other.studentConcessionId == _this.studentConcessionId)&&(identical(other.validFrom, _this.validFrom) || other.validFrom == _this.validFrom)&&(identical(other.validTo, _this.validTo) || other.validTo == _this.validTo)&&(identical(other.remarks, _this.remarks) || other.remarks == _this.remarks)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.student, _this.student) || other.student == _this.student)&&(identical(other.concession, _this.concession) || other.concession == _this.concession));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ScholarshipAssignment;
  return Object.hash(runtimeType,_this.studentConcessionId,_this.validFrom,_this.validTo,_this.remarks,_this.status,_this.student,_this.concession);
}

@override
String toString() {
  final _this = this as ScholarshipAssignment;
  return 'ScholarshipAssignment(studentConcessionId: ${_this.studentConcessionId}, validFrom: ${_this.validFrom}, validTo: ${_this.validTo}, remarks: ${_this.remarks}, status: ${_this.status}, student: ${_this.student}, concession: ${_this.concession})';
}


}

/// @nodoc
abstract mixin class $ScholarshipAssignmentCopyWith<$Res>  {
  factory $ScholarshipAssignmentCopyWith(ScholarshipAssignment value, $Res Function(ScholarshipAssignment) _then) = _$ScholarshipAssignmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'student_concession_id') String studentConcessionId,@JsonKey(name: 'valid_from') DateTime? validFrom,@JsonKey(name: 'valid_to') DateTime? validTo, String? remarks, String status,@JsonKey(name: 'students') StudentBrief? student,@JsonKey(name: 'fee_concessions') ScholarshipConcessionRef? concession
});


$StudentBriefCopyWith<$Res>? get student;$ScholarshipConcessionRefCopyWith<$Res>? get concession;

}
/// @nodoc
class _$ScholarshipAssignmentCopyWithImpl<$Res>
    implements $ScholarshipAssignmentCopyWith<$Res> {
  _$ScholarshipAssignmentCopyWithImpl(this._self, this._then);

  final ScholarshipAssignment _self;
  final $Res Function(ScholarshipAssignment) _then;

/// Create a copy of ScholarshipAssignment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentConcessionId = null,Object? validFrom = freezed,Object? validTo = freezed,Object? remarks = freezed,Object? status = null,Object? student = freezed,Object? concession = freezed,}) {
  return _then(ScholarshipAssignment(
studentConcessionId: null == studentConcessionId ? _self.studentConcessionId : studentConcessionId // ignore: cast_nullable_to_non_nullable
as String,validFrom: freezed == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,validTo: freezed == validTo ? _self.validTo : validTo // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,concession: freezed == concession ? _self.concession : concession // ignore: cast_nullable_to_non_nullable
as ScholarshipConcessionRef?,
  ));
}
/// Create a copy of ScholarshipAssignment
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
}/// Create a copy of ScholarshipAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScholarshipConcessionRefCopyWith<$Res>? get concession {
    if (_self.concession == null) {
    return null;
  }

  return $ScholarshipConcessionRefCopyWith<$Res>(_self.concession!, (value) {
    return _then(_self.copyWith(concession: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScholarshipAssignment].
extension ScholarshipAssignmentPatterns on ScholarshipAssignment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScholarshipAssignment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScholarshipAssignment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScholarshipAssignment value)  $default,){
final _that = this;
switch (_that) {
case _ScholarshipAssignment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScholarshipAssignment value)?  $default,){
final _that = this;
switch (_that) {
case _ScholarshipAssignment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_concession_id')  String studentConcessionId, @JsonKey(name: 'valid_from')  DateTime? validFrom, @JsonKey(name: 'valid_to')  DateTime? validTo,  String? remarks,  String status, @JsonKey(name: 'students')  StudentBrief? student, @JsonKey(name: 'fee_concessions')  ScholarshipConcessionRef? concession)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScholarshipAssignment() when $default != null:
return $default(_that.studentConcessionId,_that.validFrom,_that.validTo,_that.remarks,_that.status,_that.student,_that.concession);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'student_concession_id')  String studentConcessionId, @JsonKey(name: 'valid_from')  DateTime? validFrom, @JsonKey(name: 'valid_to')  DateTime? validTo,  String? remarks,  String status, @JsonKey(name: 'students')  StudentBrief? student, @JsonKey(name: 'fee_concessions')  ScholarshipConcessionRef? concession)  $default,) {final _that = this;
switch (_that) {
case _ScholarshipAssignment():
return $default(_that.studentConcessionId,_that.validFrom,_that.validTo,_that.remarks,_that.status,_that.student,_that.concession);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'student_concession_id')  String studentConcessionId, @JsonKey(name: 'valid_from')  DateTime? validFrom, @JsonKey(name: 'valid_to')  DateTime? validTo,  String? remarks,  String status, @JsonKey(name: 'students')  StudentBrief? student, @JsonKey(name: 'fee_concessions')  ScholarshipConcessionRef? concession)?  $default,) {final _that = this;
switch (_that) {
case _ScholarshipAssignment() when $default != null:
return $default(_that.studentConcessionId,_that.validFrom,_that.validTo,_that.remarks,_that.status,_that.student,_that.concession);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScholarshipAssignment implements ScholarshipAssignment {
  const _ScholarshipAssignment({@JsonKey(name: 'student_concession_id') required this.studentConcessionId, @JsonKey(name: 'valid_from') this.validFrom, @JsonKey(name: 'valid_to') this.validTo, this.remarks, this.status = 'ACTIVE', @JsonKey(name: 'students') this.student, @JsonKey(name: 'fee_concessions') this.concession});
  factory _ScholarshipAssignment.fromJson(Map<String, dynamic> json) => _$ScholarshipAssignmentFromJson(json);

@override@JsonKey(name: 'student_concession_id') final  String studentConcessionId;
@override@JsonKey(name: 'valid_from') final  DateTime? validFrom;
@override@JsonKey(name: 'valid_to') final  DateTime? validTo;
@override final  String? remarks;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'students') final  StudentBrief? student;
@override@JsonKey(name: 'fee_concessions') final  ScholarshipConcessionRef? concession;

/// Create a copy of ScholarshipAssignment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScholarshipAssignmentCopyWith<_ScholarshipAssignment> get copyWith => __$ScholarshipAssignmentCopyWithImpl<_ScholarshipAssignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScholarshipAssignmentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScholarshipAssignment&&(identical(other.studentConcessionId, studentConcessionId) || other.studentConcessionId == studentConcessionId)&&(identical(other.validFrom, validFrom) || other.validFrom == validFrom)&&(identical(other.validTo, validTo) || other.validTo == validTo)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&(identical(other.status, status) || other.status == status)&&(identical(other.student, student) || other.student == student)&&(identical(other.concession, concession) || other.concession == concession));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,studentConcessionId,validFrom,validTo,remarks,status,student,concession);
}

@override
String toString() {
    return 'ScholarshipAssignment(studentConcessionId: $studentConcessionId, validFrom: $validFrom, validTo: $validTo, remarks: $remarks, status: $status, student: $student, concession: $concession)';
}


}

/// @nodoc
abstract mixin class _$ScholarshipAssignmentCopyWith<$Res> implements $ScholarshipAssignmentCopyWith<$Res> {
  factory _$ScholarshipAssignmentCopyWith(_ScholarshipAssignment value, $Res Function(_ScholarshipAssignment) _then) = __$ScholarshipAssignmentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'student_concession_id') String studentConcessionId,@JsonKey(name: 'valid_from') DateTime? validFrom,@JsonKey(name: 'valid_to') DateTime? validTo, String? remarks, String status,@JsonKey(name: 'students') StudentBrief? student,@JsonKey(name: 'fee_concessions') ScholarshipConcessionRef? concession
});


@override $StudentBriefCopyWith<$Res>? get student;@override $ScholarshipConcessionRefCopyWith<$Res>? get concession;

}
/// @nodoc
class __$ScholarshipAssignmentCopyWithImpl<$Res>
    implements _$ScholarshipAssignmentCopyWith<$Res> {
  __$ScholarshipAssignmentCopyWithImpl(this._self, this._then);

  final _ScholarshipAssignment _self;
  final $Res Function(_ScholarshipAssignment) _then;

/// Create a copy of ScholarshipAssignment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentConcessionId = null,Object? validFrom = freezed,Object? validTo = freezed,Object? remarks = freezed,Object? status = null,Object? student = freezed,Object? concession = freezed,}) {
  return _then(_ScholarshipAssignment(
studentConcessionId: null == studentConcessionId ? _self.studentConcessionId : studentConcessionId // ignore: cast_nullable_to_non_nullable
as String,validFrom: freezed == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as DateTime?,validTo: freezed == validTo ? _self.validTo : validTo // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,concession: freezed == concession ? _self.concession : concession // ignore: cast_nullable_to_non_nullable
as ScholarshipConcessionRef?,
  ));
}

/// Create a copy of ScholarshipAssignment
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
}/// Create a copy of ScholarshipAssignment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScholarshipConcessionRefCopyWith<$Res>? get concession {
    if (_self.concession == null) {
    return null;
  }

  return $ScholarshipConcessionRefCopyWith<$Res>(_self.concession!, (value) {
    return _then(_self.copyWith(concession: value));
  });
}
}


/// @nodoc
mixin _$OnlinePaymentParent {

@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName;@JsonKey(name: 'mobile_no') String? get mobileNo; String? get email;
/// Create a copy of OnlinePaymentParent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnlinePaymentParentCopyWith<OnlinePaymentParent> get copyWith => _$OnlinePaymentParentCopyWithImpl<OnlinePaymentParent>(this as OnlinePaymentParent, _$identity);

  /// Serializes this OnlinePaymentParent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OnlinePaymentParent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnlinePaymentParent&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.mobileNo, _this.mobileNo) || other.mobileNo == _this.mobileNo)&&(identical(other.email, _this.email) || other.email == _this.email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OnlinePaymentParent;
  return Object.hash(runtimeType,_this.firstName,_this.lastName,_this.mobileNo,_this.email);
}

@override
String toString() {
  final _this = this as OnlinePaymentParent;
  return 'OnlinePaymentParent(firstName: ${_this.firstName}, lastName: ${_this.lastName}, mobileNo: ${_this.mobileNo}, email: ${_this.email})';
}


}

/// @nodoc
abstract mixin class $OnlinePaymentParentCopyWith<$Res>  {
  factory $OnlinePaymentParentCopyWith(OnlinePaymentParent value, $Res Function(OnlinePaymentParent) _then) = _$OnlinePaymentParentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'mobile_no') String? mobileNo, String? email
});




}
/// @nodoc
class _$OnlinePaymentParentCopyWithImpl<$Res>
    implements $OnlinePaymentParentCopyWith<$Res> {
  _$OnlinePaymentParentCopyWithImpl(this._self, this._then);

  final OnlinePaymentParent _self;
  final $Res Function(OnlinePaymentParent) _then;

/// Create a copy of OnlinePaymentParent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? mobileNo = freezed,Object? email = freezed,}) {
  return _then(OnlinePaymentParent(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OnlinePaymentParent].
extension OnlinePaymentParentPatterns on OnlinePaymentParent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnlinePaymentParent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnlinePaymentParent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnlinePaymentParent value)  $default,){
final _that = this;
switch (_that) {
case _OnlinePaymentParent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnlinePaymentParent value)?  $default,){
final _that = this;
switch (_that) {
case _OnlinePaymentParent() when $default != null:
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
case _OnlinePaymentParent() when $default != null:
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
case _OnlinePaymentParent():
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
case _OnlinePaymentParent() when $default != null:
return $default(_that.firstName,_that.lastName,_that.mobileNo,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OnlinePaymentParent implements OnlinePaymentParent {
  const _OnlinePaymentParent({@JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, @JsonKey(name: 'mobile_no') this.mobileNo, this.email});
  factory _OnlinePaymentParent.fromJson(Map<String, dynamic> json) => _$OnlinePaymentParentFromJson(json);

@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override@JsonKey(name: 'mobile_no') final  String? mobileNo;
@override final  String? email;

/// Create a copy of OnlinePaymentParent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnlinePaymentParentCopyWith<_OnlinePaymentParent> get copyWith => __$OnlinePaymentParentCopyWithImpl<_OnlinePaymentParent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OnlinePaymentParentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnlinePaymentParent&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,firstName,lastName,mobileNo,email);
}

@override
String toString() {
    return 'OnlinePaymentParent(firstName: $firstName, lastName: $lastName, mobileNo: $mobileNo, email: $email)';
}


}

/// @nodoc
abstract mixin class _$OnlinePaymentParentCopyWith<$Res> implements $OnlinePaymentParentCopyWith<$Res> {
  factory _$OnlinePaymentParentCopyWith(_OnlinePaymentParent value, $Res Function(_OnlinePaymentParent) _then) = __$OnlinePaymentParentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'mobile_no') String? mobileNo, String? email
});




}
/// @nodoc
class __$OnlinePaymentParentCopyWithImpl<$Res>
    implements _$OnlinePaymentParentCopyWith<$Res> {
  __$OnlinePaymentParentCopyWithImpl(this._self, this._then);

  final _OnlinePaymentParent _self;
  final $Res Function(_OnlinePaymentParent) _then;

/// Create a copy of OnlinePaymentParent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? mobileNo = freezed,Object? email = freezed,}) {
  return _then(_OnlinePaymentParent(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$OnlinePaymentParentAccount {

@JsonKey(name: 'parent_account_id') String? get parentAccountId;@JsonKey(name: 'parents') OnlinePaymentParent? get parent;
/// Create a copy of OnlinePaymentParentAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnlinePaymentParentAccountCopyWith<OnlinePaymentParentAccount> get copyWith => _$OnlinePaymentParentAccountCopyWithImpl<OnlinePaymentParentAccount>(this as OnlinePaymentParentAccount, _$identity);

  /// Serializes this OnlinePaymentParentAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OnlinePaymentParentAccount;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnlinePaymentParentAccount&&(identical(other.parentAccountId, _this.parentAccountId) || other.parentAccountId == _this.parentAccountId)&&(identical(other.parent, _this.parent) || other.parent == _this.parent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OnlinePaymentParentAccount;
  return Object.hash(runtimeType,_this.parentAccountId,_this.parent);
}

@override
String toString() {
  final _this = this as OnlinePaymentParentAccount;
  return 'OnlinePaymentParentAccount(parentAccountId: ${_this.parentAccountId}, parent: ${_this.parent})';
}


}

/// @nodoc
abstract mixin class $OnlinePaymentParentAccountCopyWith<$Res>  {
  factory $OnlinePaymentParentAccountCopyWith(OnlinePaymentParentAccount value, $Res Function(OnlinePaymentParentAccount) _then) = _$OnlinePaymentParentAccountCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'parent_account_id') String? parentAccountId,@JsonKey(name: 'parents') OnlinePaymentParent? parent
});


$OnlinePaymentParentCopyWith<$Res>? get parent;

}
/// @nodoc
class _$OnlinePaymentParentAccountCopyWithImpl<$Res>
    implements $OnlinePaymentParentAccountCopyWith<$Res> {
  _$OnlinePaymentParentAccountCopyWithImpl(this._self, this._then);

  final OnlinePaymentParentAccount _self;
  final $Res Function(OnlinePaymentParentAccount) _then;

/// Create a copy of OnlinePaymentParentAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parentAccountId = freezed,Object? parent = freezed,}) {
  return _then(OnlinePaymentParentAccount(
parentAccountId: freezed == parentAccountId ? _self.parentAccountId : parentAccountId // ignore: cast_nullable_to_non_nullable
as String?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as OnlinePaymentParent?,
  ));
}
/// Create a copy of OnlinePaymentParentAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnlinePaymentParentCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $OnlinePaymentParentCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}


/// Adds pattern-matching-related methods to [OnlinePaymentParentAccount].
extension OnlinePaymentParentAccountPatterns on OnlinePaymentParentAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnlinePaymentParentAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnlinePaymentParentAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnlinePaymentParentAccount value)  $default,){
final _that = this;
switch (_that) {
case _OnlinePaymentParentAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnlinePaymentParentAccount value)?  $default,){
final _that = this;
switch (_that) {
case _OnlinePaymentParentAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_account_id')  String? parentAccountId, @JsonKey(name: 'parents')  OnlinePaymentParent? parent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnlinePaymentParentAccount() when $default != null:
return $default(_that.parentAccountId,_that.parent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_account_id')  String? parentAccountId, @JsonKey(name: 'parents')  OnlinePaymentParent? parent)  $default,) {final _that = this;
switch (_that) {
case _OnlinePaymentParentAccount():
return $default(_that.parentAccountId,_that.parent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'parent_account_id')  String? parentAccountId, @JsonKey(name: 'parents')  OnlinePaymentParent? parent)?  $default,) {final _that = this;
switch (_that) {
case _OnlinePaymentParentAccount() when $default != null:
return $default(_that.parentAccountId,_that.parent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OnlinePaymentParentAccount implements OnlinePaymentParentAccount {
  const _OnlinePaymentParentAccount({@JsonKey(name: 'parent_account_id') this.parentAccountId, @JsonKey(name: 'parents') this.parent});
  factory _OnlinePaymentParentAccount.fromJson(Map<String, dynamic> json) => _$OnlinePaymentParentAccountFromJson(json);

@override@JsonKey(name: 'parent_account_id') final  String? parentAccountId;
@override@JsonKey(name: 'parents') final  OnlinePaymentParent? parent;

/// Create a copy of OnlinePaymentParentAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnlinePaymentParentAccountCopyWith<_OnlinePaymentParentAccount> get copyWith => __$OnlinePaymentParentAccountCopyWithImpl<_OnlinePaymentParentAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OnlinePaymentParentAccountToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnlinePaymentParentAccount&&(identical(other.parentAccountId, parentAccountId) || other.parentAccountId == parentAccountId)&&(identical(other.parent, parent) || other.parent == parent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,parentAccountId,parent);
}

@override
String toString() {
    return 'OnlinePaymentParentAccount(parentAccountId: $parentAccountId, parent: $parent)';
}


}

/// @nodoc
abstract mixin class _$OnlinePaymentParentAccountCopyWith<$Res> implements $OnlinePaymentParentAccountCopyWith<$Res> {
  factory _$OnlinePaymentParentAccountCopyWith(_OnlinePaymentParentAccount value, $Res Function(_OnlinePaymentParentAccount) _then) = __$OnlinePaymentParentAccountCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'parent_account_id') String? parentAccountId,@JsonKey(name: 'parents') OnlinePaymentParent? parent
});


@override $OnlinePaymentParentCopyWith<$Res>? get parent;

}
/// @nodoc
class __$OnlinePaymentParentAccountCopyWithImpl<$Res>
    implements _$OnlinePaymentParentAccountCopyWith<$Res> {
  __$OnlinePaymentParentAccountCopyWithImpl(this._self, this._then);

  final _OnlinePaymentParentAccount _self;
  final $Res Function(_OnlinePaymentParentAccount) _then;

/// Create a copy of OnlinePaymentParentAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parentAccountId = freezed,Object? parent = freezed,}) {
  return _then(_OnlinePaymentParentAccount(
parentAccountId: freezed == parentAccountId ? _self.parentAccountId : parentAccountId // ignore: cast_nullable_to_non_nullable
as String?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as OnlinePaymentParent?,
  ));
}

/// Create a copy of OnlinePaymentParentAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnlinePaymentParentCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $OnlinePaymentParentCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}


/// @nodoc
mixin _$AdminOnlinePayment {

@JsonKey(name: 'payment_id') String get paymentId;@JsonKey(name: 'transaction_id') String? get transactionId;@JsonKey(name: 'gateway_name') String? get gatewayName;@JsonKey(name: 'payment_method') String? get paymentMethod;@DecimalConverter() Decimal get amount;@JsonKey(name: 'payment_status') String? get paymentStatus;@JsonKey(name: 'payment_date') DateTime? get paymentDate;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'students') StudentBrief? get student;@JsonKey(name: 'parent_accounts') OnlinePaymentParentAccount? get parentAccount;
/// Create a copy of AdminOnlinePayment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminOnlinePaymentCopyWith<AdminOnlinePayment> get copyWith => _$AdminOnlinePaymentCopyWithImpl<AdminOnlinePayment>(this as AdminOnlinePayment, _$identity);

  /// Serializes this AdminOnlinePayment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminOnlinePayment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminOnlinePayment&&(identical(other.paymentId, _this.paymentId) || other.paymentId == _this.paymentId)&&(identical(other.transactionId, _this.transactionId) || other.transactionId == _this.transactionId)&&(identical(other.gatewayName, _this.gatewayName) || other.gatewayName == _this.gatewayName)&&(identical(other.paymentMethod, _this.paymentMethod) || other.paymentMethod == _this.paymentMethod)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.paymentStatus, _this.paymentStatus) || other.paymentStatus == _this.paymentStatus)&&(identical(other.paymentDate, _this.paymentDate) || other.paymentDate == _this.paymentDate)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.student, _this.student) || other.student == _this.student)&&(identical(other.parentAccount, _this.parentAccount) || other.parentAccount == _this.parentAccount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminOnlinePayment;
  return Object.hash(runtimeType,_this.paymentId,_this.transactionId,_this.gatewayName,_this.paymentMethod,_this.amount,_this.paymentStatus,_this.paymentDate,_this.createdAt,_this.student,_this.parentAccount);
}

@override
String toString() {
  final _this = this as AdminOnlinePayment;
  return 'AdminOnlinePayment(paymentId: ${_this.paymentId}, transactionId: ${_this.transactionId}, gatewayName: ${_this.gatewayName}, paymentMethod: ${_this.paymentMethod}, amount: ${_this.amount}, paymentStatus: ${_this.paymentStatus}, paymentDate: ${_this.paymentDate}, createdAt: ${_this.createdAt}, student: ${_this.student}, parentAccount: ${_this.parentAccount})';
}


}

/// @nodoc
abstract mixin class $AdminOnlinePaymentCopyWith<$Res>  {
  factory $AdminOnlinePaymentCopyWith(AdminOnlinePayment value, $Res Function(AdminOnlinePayment) _then) = _$AdminOnlinePaymentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'payment_id') String paymentId,@JsonKey(name: 'transaction_id') String? transactionId,@JsonKey(name: 'gateway_name') String? gatewayName,@JsonKey(name: 'payment_method') String? paymentMethod,@DecimalConverter() Decimal amount,@JsonKey(name: 'payment_status') String? paymentStatus,@JsonKey(name: 'payment_date') DateTime? paymentDate,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'students') StudentBrief? student,@JsonKey(name: 'parent_accounts') OnlinePaymentParentAccount? parentAccount
});


$StudentBriefCopyWith<$Res>? get student;$OnlinePaymentParentAccountCopyWith<$Res>? get parentAccount;

}
/// @nodoc
class _$AdminOnlinePaymentCopyWithImpl<$Res>
    implements $AdminOnlinePaymentCopyWith<$Res> {
  _$AdminOnlinePaymentCopyWithImpl(this._self, this._then);

  final AdminOnlinePayment _self;
  final $Res Function(AdminOnlinePayment) _then;

/// Create a copy of AdminOnlinePayment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentId = null,Object? transactionId = freezed,Object? gatewayName = freezed,Object? paymentMethod = freezed,Object? amount = null,Object? paymentStatus = freezed,Object? paymentDate = freezed,Object? createdAt = freezed,Object? student = freezed,Object? parentAccount = freezed,}) {
  return _then(AdminOnlinePayment(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,gatewayName: freezed == gatewayName ? _self.gatewayName : gatewayName // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,paymentDate: freezed == paymentDate ? _self.paymentDate : paymentDate // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,parentAccount: freezed == parentAccount ? _self.parentAccount : parentAccount // ignore: cast_nullable_to_non_nullable
as OnlinePaymentParentAccount?,
  ));
}
/// Create a copy of AdminOnlinePayment
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
}/// Create a copy of AdminOnlinePayment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnlinePaymentParentAccountCopyWith<$Res>? get parentAccount {
    if (_self.parentAccount == null) {
    return null;
  }

  return $OnlinePaymentParentAccountCopyWith<$Res>(_self.parentAccount!, (value) {
    return _then(_self.copyWith(parentAccount: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminOnlinePayment].
extension AdminOnlinePaymentPatterns on AdminOnlinePayment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminOnlinePayment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminOnlinePayment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminOnlinePayment value)  $default,){
final _that = this;
switch (_that) {
case _AdminOnlinePayment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminOnlinePayment value)?  $default,){
final _that = this;
switch (_that) {
case _AdminOnlinePayment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'payment_id')  String paymentId, @JsonKey(name: 'transaction_id')  String? transactionId, @JsonKey(name: 'gateway_name')  String? gatewayName, @JsonKey(name: 'payment_method')  String? paymentMethod, @DecimalConverter()  Decimal amount, @JsonKey(name: 'payment_status')  String? paymentStatus, @JsonKey(name: 'payment_date')  DateTime? paymentDate, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'students')  StudentBrief? student, @JsonKey(name: 'parent_accounts')  OnlinePaymentParentAccount? parentAccount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminOnlinePayment() when $default != null:
return $default(_that.paymentId,_that.transactionId,_that.gatewayName,_that.paymentMethod,_that.amount,_that.paymentStatus,_that.paymentDate,_that.createdAt,_that.student,_that.parentAccount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'payment_id')  String paymentId, @JsonKey(name: 'transaction_id')  String? transactionId, @JsonKey(name: 'gateway_name')  String? gatewayName, @JsonKey(name: 'payment_method')  String? paymentMethod, @DecimalConverter()  Decimal amount, @JsonKey(name: 'payment_status')  String? paymentStatus, @JsonKey(name: 'payment_date')  DateTime? paymentDate, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'students')  StudentBrief? student, @JsonKey(name: 'parent_accounts')  OnlinePaymentParentAccount? parentAccount)  $default,) {final _that = this;
switch (_that) {
case _AdminOnlinePayment():
return $default(_that.paymentId,_that.transactionId,_that.gatewayName,_that.paymentMethod,_that.amount,_that.paymentStatus,_that.paymentDate,_that.createdAt,_that.student,_that.parentAccount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'payment_id')  String paymentId, @JsonKey(name: 'transaction_id')  String? transactionId, @JsonKey(name: 'gateway_name')  String? gatewayName, @JsonKey(name: 'payment_method')  String? paymentMethod, @DecimalConverter()  Decimal amount, @JsonKey(name: 'payment_status')  String? paymentStatus, @JsonKey(name: 'payment_date')  DateTime? paymentDate, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'students')  StudentBrief? student, @JsonKey(name: 'parent_accounts')  OnlinePaymentParentAccount? parentAccount)?  $default,) {final _that = this;
switch (_that) {
case _AdminOnlinePayment() when $default != null:
return $default(_that.paymentId,_that.transactionId,_that.gatewayName,_that.paymentMethod,_that.amount,_that.paymentStatus,_that.paymentDate,_that.createdAt,_that.student,_that.parentAccount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminOnlinePayment implements AdminOnlinePayment {
  const _AdminOnlinePayment({@JsonKey(name: 'payment_id') required this.paymentId, @JsonKey(name: 'transaction_id') this.transactionId, @JsonKey(name: 'gateway_name') this.gatewayName, @JsonKey(name: 'payment_method') this.paymentMethod, @DecimalConverter() required this.amount, @JsonKey(name: 'payment_status') this.paymentStatus, @JsonKey(name: 'payment_date') this.paymentDate, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'students') this.student, @JsonKey(name: 'parent_accounts') this.parentAccount});
  factory _AdminOnlinePayment.fromJson(Map<String, dynamic> json) => _$AdminOnlinePaymentFromJson(json);

@override@JsonKey(name: 'payment_id') final  String paymentId;
@override@JsonKey(name: 'transaction_id') final  String? transactionId;
@override@JsonKey(name: 'gateway_name') final  String? gatewayName;
@override@JsonKey(name: 'payment_method') final  String? paymentMethod;
@override@DecimalConverter() final  Decimal amount;
@override@JsonKey(name: 'payment_status') final  String? paymentStatus;
@override@JsonKey(name: 'payment_date') final  DateTime? paymentDate;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'students') final  StudentBrief? student;
@override@JsonKey(name: 'parent_accounts') final  OnlinePaymentParentAccount? parentAccount;

/// Create a copy of AdminOnlinePayment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminOnlinePaymentCopyWith<_AdminOnlinePayment> get copyWith => __$AdminOnlinePaymentCopyWithImpl<_AdminOnlinePayment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminOnlinePaymentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminOnlinePayment&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.gatewayName, gatewayName) || other.gatewayName == gatewayName)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.paymentDate, paymentDate) || other.paymentDate == paymentDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.student, student) || other.student == student)&&(identical(other.parentAccount, parentAccount) || other.parentAccount == parentAccount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,paymentId,transactionId,gatewayName,paymentMethod,amount,paymentStatus,paymentDate,createdAt,student,parentAccount);
}

@override
String toString() {
    return 'AdminOnlinePayment(paymentId: $paymentId, transactionId: $transactionId, gatewayName: $gatewayName, paymentMethod: $paymentMethod, amount: $amount, paymentStatus: $paymentStatus, paymentDate: $paymentDate, createdAt: $createdAt, student: $student, parentAccount: $parentAccount)';
}


}

/// @nodoc
abstract mixin class _$AdminOnlinePaymentCopyWith<$Res> implements $AdminOnlinePaymentCopyWith<$Res> {
  factory _$AdminOnlinePaymentCopyWith(_AdminOnlinePayment value, $Res Function(_AdminOnlinePayment) _then) = __$AdminOnlinePaymentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'payment_id') String paymentId,@JsonKey(name: 'transaction_id') String? transactionId,@JsonKey(name: 'gateway_name') String? gatewayName,@JsonKey(name: 'payment_method') String? paymentMethod,@DecimalConverter() Decimal amount,@JsonKey(name: 'payment_status') String? paymentStatus,@JsonKey(name: 'payment_date') DateTime? paymentDate,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'students') StudentBrief? student,@JsonKey(name: 'parent_accounts') OnlinePaymentParentAccount? parentAccount
});


@override $StudentBriefCopyWith<$Res>? get student;@override $OnlinePaymentParentAccountCopyWith<$Res>? get parentAccount;

}
/// @nodoc
class __$AdminOnlinePaymentCopyWithImpl<$Res>
    implements _$AdminOnlinePaymentCopyWith<$Res> {
  __$AdminOnlinePaymentCopyWithImpl(this._self, this._then);

  final _AdminOnlinePayment _self;
  final $Res Function(_AdminOnlinePayment) _then;

/// Create a copy of AdminOnlinePayment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentId = null,Object? transactionId = freezed,Object? gatewayName = freezed,Object? paymentMethod = freezed,Object? amount = null,Object? paymentStatus = freezed,Object? paymentDate = freezed,Object? createdAt = freezed,Object? student = freezed,Object? parentAccount = freezed,}) {
  return _then(_AdminOnlinePayment(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,gatewayName: freezed == gatewayName ? _self.gatewayName : gatewayName // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String?,paymentDate: freezed == paymentDate ? _self.paymentDate : paymentDate // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,parentAccount: freezed == parentAccount ? _self.parentAccount : parentAccount // ignore: cast_nullable_to_non_nullable
as OnlinePaymentParentAccount?,
  ));
}

/// Create a copy of AdminOnlinePayment
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
}/// Create a copy of AdminOnlinePayment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnlinePaymentParentAccountCopyWith<$Res>? get parentAccount {
    if (_self.parentAccount == null) {
    return null;
  }

  return $OnlinePaymentParentAccountCopyWith<$Res>(_self.parentAccount!, (value) {
    return _then(_self.copyWith(parentAccount: value));
  });
}
}

// dart format on
