// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accounting_entries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JournalLine {

@JsonKey(name: 'line_id') String get lineId;@JsonKey(name: 'account_id') String? get accountId;@JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get debitAmount;@JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get creditAmount;@JsonKey(name: 'line_narration') String? get lineNarration;@JsonKey(name: 'chart_of_accounts') LedgerAccountRef? get account;
/// Create a copy of JournalLine
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JournalLineCopyWith<JournalLine> get copyWith => _$JournalLineCopyWithImpl<JournalLine>(this as JournalLine, _$identity);

  /// Serializes this JournalLine to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as JournalLine;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JournalLine&&(identical(other.lineId, _this.lineId) || other.lineId == _this.lineId)&&(identical(other.accountId, _this.accountId) || other.accountId == _this.accountId)&&(identical(other.debitAmount, _this.debitAmount) || other.debitAmount == _this.debitAmount)&&(identical(other.creditAmount, _this.creditAmount) || other.creditAmount == _this.creditAmount)&&(identical(other.lineNarration, _this.lineNarration) || other.lineNarration == _this.lineNarration)&&(identical(other.account, _this.account) || other.account == _this.account));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as JournalLine;
  return Object.hash(runtimeType,_this.lineId,_this.accountId,_this.debitAmount,_this.creditAmount,_this.lineNarration,_this.account);
}

@override
String toString() {
  final _this = this as JournalLine;
  return 'JournalLine(lineId: ${_this.lineId}, accountId: ${_this.accountId}, debitAmount: ${_this.debitAmount}, creditAmount: ${_this.creditAmount}, lineNarration: ${_this.lineNarration}, account: ${_this.account})';
}


}

/// @nodoc
abstract mixin class $JournalLineCopyWith<$Res>  {
  factory $JournalLineCopyWith(JournalLine value, $Res Function(JournalLine) _then) = _$JournalLineCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'line_id') String lineId,@JsonKey(name: 'account_id') String? accountId,@JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal debitAmount,@JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal creditAmount,@JsonKey(name: 'line_narration') String? lineNarration,@JsonKey(name: 'chart_of_accounts') LedgerAccountRef? account
});


$LedgerAccountRefCopyWith<$Res>? get account;

}
/// @nodoc
class _$JournalLineCopyWithImpl<$Res>
    implements $JournalLineCopyWith<$Res> {
  _$JournalLineCopyWithImpl(this._self, this._then);

  final JournalLine _self;
  final $Res Function(JournalLine) _then;

/// Create a copy of JournalLine
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lineId = null,Object? accountId = freezed,Object? debitAmount = null,Object? creditAmount = null,Object? lineNarration = freezed,Object? account = freezed,}) {
  return _then(JournalLine(
lineId: null == lineId ? _self.lineId : lineId // ignore: cast_nullable_to_non_nullable
as String,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,debitAmount: null == debitAmount ? _self.debitAmount : debitAmount // ignore: cast_nullable_to_non_nullable
as Decimal,creditAmount: null == creditAmount ? _self.creditAmount : creditAmount // ignore: cast_nullable_to_non_nullable
as Decimal,lineNarration: freezed == lineNarration ? _self.lineNarration : lineNarration // ignore: cast_nullable_to_non_nullable
as String?,account: freezed == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as LedgerAccountRef?,
  ));
}
/// Create a copy of JournalLine
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<$Res>? get account {
    if (_self.account == null) {
    return null;
  }

  return $LedgerAccountRefCopyWith<$Res>(_self.account!, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}


/// Adds pattern-matching-related methods to [JournalLine].
extension JournalLinePatterns on JournalLine {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JournalLine value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JournalLine() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JournalLine value)  $default,){
final _that = this;
switch (_that) {
case _JournalLine():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JournalLine value)?  $default,){
final _that = this;
switch (_that) {
case _JournalLine() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'line_id')  String lineId, @JsonKey(name: 'account_id')  String? accountId, @JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal debitAmount, @JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal creditAmount, @JsonKey(name: 'line_narration')  String? lineNarration, @JsonKey(name: 'chart_of_accounts')  LedgerAccountRef? account)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JournalLine() when $default != null:
return $default(_that.lineId,_that.accountId,_that.debitAmount,_that.creditAmount,_that.lineNarration,_that.account);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'line_id')  String lineId, @JsonKey(name: 'account_id')  String? accountId, @JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal debitAmount, @JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal creditAmount, @JsonKey(name: 'line_narration')  String? lineNarration, @JsonKey(name: 'chart_of_accounts')  LedgerAccountRef? account)  $default,) {final _that = this;
switch (_that) {
case _JournalLine():
return $default(_that.lineId,_that.accountId,_that.debitAmount,_that.creditAmount,_that.lineNarration,_that.account);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'line_id')  String lineId, @JsonKey(name: 'account_id')  String? accountId, @JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal debitAmount, @JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal creditAmount, @JsonKey(name: 'line_narration')  String? lineNarration, @JsonKey(name: 'chart_of_accounts')  LedgerAccountRef? account)?  $default,) {final _that = this;
switch (_that) {
case _JournalLine() when $default != null:
return $default(_that.lineId,_that.accountId,_that.debitAmount,_that.creditAmount,_that.lineNarration,_that.account);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JournalLine implements JournalLine {
  const _JournalLine({@JsonKey(name: 'line_id') required this.lineId, @JsonKey(name: 'account_id') this.accountId, @JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.debitAmount, @JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson) required this.creditAmount, @JsonKey(name: 'line_narration') this.lineNarration, @JsonKey(name: 'chart_of_accounts') this.account});
  factory _JournalLine.fromJson(Map<String, dynamic> json) => _$JournalLineFromJson(json);

@override@JsonKey(name: 'line_id') final  String lineId;
@override@JsonKey(name: 'account_id') final  String? accountId;
@override@JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal debitAmount;
@override@JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal creditAmount;
@override@JsonKey(name: 'line_narration') final  String? lineNarration;
@override@JsonKey(name: 'chart_of_accounts') final  LedgerAccountRef? account;

/// Create a copy of JournalLine
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JournalLineCopyWith<_JournalLine> get copyWith => __$JournalLineCopyWithImpl<_JournalLine>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JournalLineToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _JournalLine&&(identical(other.lineId, lineId) || other.lineId == lineId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.debitAmount, debitAmount) || other.debitAmount == debitAmount)&&(identical(other.creditAmount, creditAmount) || other.creditAmount == creditAmount)&&(identical(other.lineNarration, lineNarration) || other.lineNarration == lineNarration)&&(identical(other.account, account) || other.account == account));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,lineId,accountId,debitAmount,creditAmount,lineNarration,account);
}

@override
String toString() {
    return 'JournalLine(lineId: $lineId, accountId: $accountId, debitAmount: $debitAmount, creditAmount: $creditAmount, lineNarration: $lineNarration, account: $account)';
}


}

/// @nodoc
abstract mixin class _$JournalLineCopyWith<$Res> implements $JournalLineCopyWith<$Res> {
  factory _$JournalLineCopyWith(_JournalLine value, $Res Function(_JournalLine) _then) = __$JournalLineCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'line_id') String lineId,@JsonKey(name: 'account_id') String? accountId,@JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal debitAmount,@JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson) Decimal creditAmount,@JsonKey(name: 'line_narration') String? lineNarration,@JsonKey(name: 'chart_of_accounts') LedgerAccountRef? account
});


@override $LedgerAccountRefCopyWith<$Res>? get account;

}
/// @nodoc
class __$JournalLineCopyWithImpl<$Res>
    implements _$JournalLineCopyWith<$Res> {
  __$JournalLineCopyWithImpl(this._self, this._then);

  final _JournalLine _self;
  final $Res Function(_JournalLine) _then;

/// Create a copy of JournalLine
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lineId = null,Object? accountId = freezed,Object? debitAmount = null,Object? creditAmount = null,Object? lineNarration = freezed,Object? account = freezed,}) {
  return _then(_JournalLine(
lineId: null == lineId ? _self.lineId : lineId // ignore: cast_nullable_to_non_nullable
as String,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,debitAmount: null == debitAmount ? _self.debitAmount : debitAmount // ignore: cast_nullable_to_non_nullable
as Decimal,creditAmount: null == creditAmount ? _self.creditAmount : creditAmount // ignore: cast_nullable_to_non_nullable
as Decimal,lineNarration: freezed == lineNarration ? _self.lineNarration : lineNarration // ignore: cast_nullable_to_non_nullable
as String?,account: freezed == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as LedgerAccountRef?,
  ));
}

/// Create a copy of JournalLine
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<$Res>? get account {
    if (_self.account == null) {
    return null;
  }

  return $LedgerAccountRefCopyWith<$Res>(_self.account!, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}


/// @nodoc
mixin _$JournalEntry {

@JsonKey(name: 'entry_id') String get entryId;@JsonKey(name: 'entry_date') DateTime? get entryDate;@JsonKey(name: 'voucher_no') String get voucherNo; String? get narration;/// MANUAL / CONTRA / PAYMENT_VOUCHER / RECEIPT_VOUCHER /
/// DEBIT_CREDIT_NOTE / SYSTEM_FEE_RECEIPT.
@JsonKey(name: 'entry_type') String get entryType;/// DRAFT / POSTED / REVERSED.
 String get status;@JsonKey(name: 'reversal_of_entry_id') String? get reversalOfEntryId;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'journal_entry_lines') List<JournalLine> get lines;
/// Create a copy of JournalEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JournalEntryCopyWith<JournalEntry> get copyWith => _$JournalEntryCopyWithImpl<JournalEntry>(this as JournalEntry, _$identity);

  /// Serializes this JournalEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as JournalEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JournalEntry&&(identical(other.entryId, _this.entryId) || other.entryId == _this.entryId)&&(identical(other.entryDate, _this.entryDate) || other.entryDate == _this.entryDate)&&(identical(other.voucherNo, _this.voucherNo) || other.voucherNo == _this.voucherNo)&&(identical(other.narration, _this.narration) || other.narration == _this.narration)&&(identical(other.entryType, _this.entryType) || other.entryType == _this.entryType)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.reversalOfEntryId, _this.reversalOfEntryId) || other.reversalOfEntryId == _this.reversalOfEntryId)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&const DeepCollectionEquality().equals(other.lines, _this.lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as JournalEntry;
  return Object.hash(runtimeType,_this.entryId,_this.entryDate,_this.voucherNo,_this.narration,_this.entryType,_this.status,_this.reversalOfEntryId,_this.createdAt,const DeepCollectionEquality().hash(_this.lines));
}

@override
String toString() {
  final _this = this as JournalEntry;
  return 'JournalEntry(entryId: ${_this.entryId}, entryDate: ${_this.entryDate}, voucherNo: ${_this.voucherNo}, narration: ${_this.narration}, entryType: ${_this.entryType}, status: ${_this.status}, reversalOfEntryId: ${_this.reversalOfEntryId}, createdAt: ${_this.createdAt}, lines: ${_this.lines})';
}


}

/// @nodoc
abstract mixin class $JournalEntryCopyWith<$Res>  {
  factory $JournalEntryCopyWith(JournalEntry value, $Res Function(JournalEntry) _then) = _$JournalEntryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'entry_id') String entryId,@JsonKey(name: 'entry_date') DateTime? entryDate,@JsonKey(name: 'voucher_no') String voucherNo, String? narration,@JsonKey(name: 'entry_type') String entryType, String status,@JsonKey(name: 'reversal_of_entry_id') String? reversalOfEntryId,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'journal_entry_lines') List<JournalLine> lines
});




}
/// @nodoc
class _$JournalEntryCopyWithImpl<$Res>
    implements $JournalEntryCopyWith<$Res> {
  _$JournalEntryCopyWithImpl(this._self, this._then);

  final JournalEntry _self;
  final $Res Function(JournalEntry) _then;

/// Create a copy of JournalEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entryId = null,Object? entryDate = freezed,Object? voucherNo = null,Object? narration = freezed,Object? entryType = null,Object? status = null,Object? reversalOfEntryId = freezed,Object? createdAt = freezed,Object? lines = null,}) {
  return _then(JournalEntry(
entryId: null == entryId ? _self.entryId : entryId // ignore: cast_nullable_to_non_nullable
as String,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,voucherNo: null == voucherNo ? _self.voucherNo : voucherNo // ignore: cast_nullable_to_non_nullable
as String,narration: freezed == narration ? _self.narration : narration // ignore: cast_nullable_to_non_nullable
as String?,entryType: null == entryType ? _self.entryType : entryType // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,reversalOfEntryId: freezed == reversalOfEntryId ? _self.reversalOfEntryId : reversalOfEntryId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<JournalLine>,
  ));
}

}


/// Adds pattern-matching-related methods to [JournalEntry].
extension JournalEntryPatterns on JournalEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JournalEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JournalEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JournalEntry value)  $default,){
final _that = this;
switch (_that) {
case _JournalEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JournalEntry value)?  $default,){
final _that = this;
switch (_that) {
case _JournalEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'entry_id')  String entryId, @JsonKey(name: 'entry_date')  DateTime? entryDate, @JsonKey(name: 'voucher_no')  String voucherNo,  String? narration, @JsonKey(name: 'entry_type')  String entryType,  String status, @JsonKey(name: 'reversal_of_entry_id')  String? reversalOfEntryId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'journal_entry_lines')  List<JournalLine> lines)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JournalEntry() when $default != null:
return $default(_that.entryId,_that.entryDate,_that.voucherNo,_that.narration,_that.entryType,_that.status,_that.reversalOfEntryId,_that.createdAt,_that.lines);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'entry_id')  String entryId, @JsonKey(name: 'entry_date')  DateTime? entryDate, @JsonKey(name: 'voucher_no')  String voucherNo,  String? narration, @JsonKey(name: 'entry_type')  String entryType,  String status, @JsonKey(name: 'reversal_of_entry_id')  String? reversalOfEntryId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'journal_entry_lines')  List<JournalLine> lines)  $default,) {final _that = this;
switch (_that) {
case _JournalEntry():
return $default(_that.entryId,_that.entryDate,_that.voucherNo,_that.narration,_that.entryType,_that.status,_that.reversalOfEntryId,_that.createdAt,_that.lines);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'entry_id')  String entryId, @JsonKey(name: 'entry_date')  DateTime? entryDate, @JsonKey(name: 'voucher_no')  String voucherNo,  String? narration, @JsonKey(name: 'entry_type')  String entryType,  String status, @JsonKey(name: 'reversal_of_entry_id')  String? reversalOfEntryId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'journal_entry_lines')  List<JournalLine> lines)?  $default,) {final _that = this;
switch (_that) {
case _JournalEntry() when $default != null:
return $default(_that.entryId,_that.entryDate,_that.voucherNo,_that.narration,_that.entryType,_that.status,_that.reversalOfEntryId,_that.createdAt,_that.lines);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JournalEntry implements JournalEntry {
  const _JournalEntry({@JsonKey(name: 'entry_id') required this.entryId, @JsonKey(name: 'entry_date') this.entryDate, @JsonKey(name: 'voucher_no') this.voucherNo = '', this.narration, @JsonKey(name: 'entry_type') this.entryType = '', this.status = 'DRAFT', @JsonKey(name: 'reversal_of_entry_id') this.reversalOfEntryId, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'journal_entry_lines')  List<JournalLine> lines = const []}): _lines = lines;
  factory _JournalEntry.fromJson(Map<String, dynamic> json) => _$JournalEntryFromJson(json);

@override@JsonKey(name: 'entry_id') final  String entryId;
@override@JsonKey(name: 'entry_date') final  DateTime? entryDate;
@override@JsonKey(name: 'voucher_no') final  String voucherNo;
@override final  String? narration;
/// MANUAL / CONTRA / PAYMENT_VOUCHER / RECEIPT_VOUCHER /
/// DEBIT_CREDIT_NOTE / SYSTEM_FEE_RECEIPT.
@override@JsonKey(name: 'entry_type') final  String entryType;
/// DRAFT / POSTED / REVERSED.
@override@JsonKey() final  String status;
@override@JsonKey(name: 'reversal_of_entry_id') final  String? reversalOfEntryId;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
 final  List<JournalLine> _lines;
@override@JsonKey(name: 'journal_entry_lines') List<JournalLine> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}


/// Create a copy of JournalEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JournalEntryCopyWith<_JournalEntry> get copyWith => __$JournalEntryCopyWithImpl<_JournalEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JournalEntryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _JournalEntry&&(identical(other.entryId, entryId) || other.entryId == entryId)&&(identical(other.entryDate, entryDate) || other.entryDate == entryDate)&&(identical(other.voucherNo, voucherNo) || other.voucherNo == voucherNo)&&(identical(other.narration, narration) || other.narration == narration)&&(identical(other.entryType, entryType) || other.entryType == entryType)&&(identical(other.status, status) || other.status == status)&&(identical(other.reversalOfEntryId, reversalOfEntryId) || other.reversalOfEntryId == reversalOfEntryId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.lines, _lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,entryId,entryDate,voucherNo,narration,entryType,status,reversalOfEntryId,createdAt,const DeepCollectionEquality().hash(_lines));
}

@override
String toString() {
    return 'JournalEntry(entryId: $entryId, entryDate: $entryDate, voucherNo: $voucherNo, narration: $narration, entryType: $entryType, status: $status, reversalOfEntryId: $reversalOfEntryId, createdAt: $createdAt, lines: $lines)';
}


}

/// @nodoc
abstract mixin class _$JournalEntryCopyWith<$Res> implements $JournalEntryCopyWith<$Res> {
  factory _$JournalEntryCopyWith(_JournalEntry value, $Res Function(_JournalEntry) _then) = __$JournalEntryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'entry_id') String entryId,@JsonKey(name: 'entry_date') DateTime? entryDate,@JsonKey(name: 'voucher_no') String voucherNo, String? narration,@JsonKey(name: 'entry_type') String entryType, String status,@JsonKey(name: 'reversal_of_entry_id') String? reversalOfEntryId,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'journal_entry_lines') List<JournalLine> lines
});




}
/// @nodoc
class __$JournalEntryCopyWithImpl<$Res>
    implements _$JournalEntryCopyWith<$Res> {
  __$JournalEntryCopyWithImpl(this._self, this._then);

  final _JournalEntry _self;
  final $Res Function(_JournalEntry) _then;

/// Create a copy of JournalEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entryId = null,Object? entryDate = freezed,Object? voucherNo = null,Object? narration = freezed,Object? entryType = null,Object? status = null,Object? reversalOfEntryId = freezed,Object? createdAt = freezed,Object? lines = null,}) {
  return _then(_JournalEntry(
entryId: null == entryId ? _self.entryId : entryId // ignore: cast_nullable_to_non_nullable
as String,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,voucherNo: null == voucherNo ? _self.voucherNo : voucherNo // ignore: cast_nullable_to_non_nullable
as String,narration: freezed == narration ? _self.narration : narration // ignore: cast_nullable_to_non_nullable
as String?,entryType: null == entryType ? _self.entryType : entryType // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,reversalOfEntryId: freezed == reversalOfEntryId ? _self.reversalOfEntryId : reversalOfEntryId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<JournalLine>,
  ));
}


}


/// @nodoc
mixin _$PaymentVoucher {

@JsonKey(name: 'voucher_id') String get voucherId;@JsonKey(name: 'voucher_no') String get voucherNo;@JsonKey(name: 'entry_date') DateTime? get entryDate;@JsonKey(name: 'payee_type') String? get payeeType;@JsonKey(name: 'payee_name') String get payeeName;@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal get amount;@JsonKey(name: 'payment_mode') String? get paymentMode;@JsonKey(name: 'cheque_no') String? get chequeNo; String? get utr; String? get purpose;@JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) Decimal? get gstAmount;@JsonKey(name: 'tds_section') String? get tdsSection;@JsonKey(name: 'tds_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) Decimal? get tdsAmount;/// ACTIVE / CANCELLED.
 String get status;@JsonKey(name: 'cancelled_at') DateTime? get cancelledAt;@JsonKey(name: 'journal_entries') JournalEntry? get entry;@JsonKey(name: 'expense_account') LedgerAccountRef? get expenseAccount;@JsonKey(name: 'paid_from') LedgerAccountRef? get paidFrom;
/// Create a copy of PaymentVoucher
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentVoucherCopyWith<PaymentVoucher> get copyWith => _$PaymentVoucherCopyWithImpl<PaymentVoucher>(this as PaymentVoucher, _$identity);

  /// Serializes this PaymentVoucher to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PaymentVoucher;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentVoucher&&(identical(other.voucherId, _this.voucherId) || other.voucherId == _this.voucherId)&&(identical(other.voucherNo, _this.voucherNo) || other.voucherNo == _this.voucherNo)&&(identical(other.entryDate, _this.entryDate) || other.entryDate == _this.entryDate)&&(identical(other.payeeType, _this.payeeType) || other.payeeType == _this.payeeType)&&(identical(other.payeeName, _this.payeeName) || other.payeeName == _this.payeeName)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.paymentMode, _this.paymentMode) || other.paymentMode == _this.paymentMode)&&(identical(other.chequeNo, _this.chequeNo) || other.chequeNo == _this.chequeNo)&&(identical(other.utr, _this.utr) || other.utr == _this.utr)&&(identical(other.purpose, _this.purpose) || other.purpose == _this.purpose)&&(identical(other.gstAmount, _this.gstAmount) || other.gstAmount == _this.gstAmount)&&(identical(other.tdsSection, _this.tdsSection) || other.tdsSection == _this.tdsSection)&&(identical(other.tdsAmount, _this.tdsAmount) || other.tdsAmount == _this.tdsAmount)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.cancelledAt, _this.cancelledAt) || other.cancelledAt == _this.cancelledAt)&&(identical(other.entry, _this.entry) || other.entry == _this.entry)&&(identical(other.expenseAccount, _this.expenseAccount) || other.expenseAccount == _this.expenseAccount)&&(identical(other.paidFrom, _this.paidFrom) || other.paidFrom == _this.paidFrom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PaymentVoucher;
  return Object.hash(runtimeType,_this.voucherId,_this.voucherNo,_this.entryDate,_this.payeeType,_this.payeeName,_this.amount,_this.paymentMode,_this.chequeNo,_this.utr,_this.purpose,_this.gstAmount,_this.tdsSection,_this.tdsAmount,_this.status,_this.cancelledAt,_this.entry,_this.expenseAccount,_this.paidFrom);
}

@override
String toString() {
  final _this = this as PaymentVoucher;
  return 'PaymentVoucher(voucherId: ${_this.voucherId}, voucherNo: ${_this.voucherNo}, entryDate: ${_this.entryDate}, payeeType: ${_this.payeeType}, payeeName: ${_this.payeeName}, amount: ${_this.amount}, paymentMode: ${_this.paymentMode}, chequeNo: ${_this.chequeNo}, utr: ${_this.utr}, purpose: ${_this.purpose}, gstAmount: ${_this.gstAmount}, tdsSection: ${_this.tdsSection}, tdsAmount: ${_this.tdsAmount}, status: ${_this.status}, cancelledAt: ${_this.cancelledAt}, entry: ${_this.entry}, expenseAccount: ${_this.expenseAccount}, paidFrom: ${_this.paidFrom})';
}


}

/// @nodoc
abstract mixin class $PaymentVoucherCopyWith<$Res>  {
  factory $PaymentVoucherCopyWith(PaymentVoucher value, $Res Function(PaymentVoucher) _then) = _$PaymentVoucherCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'voucher_id') String voucherId,@JsonKey(name: 'voucher_no') String voucherNo,@JsonKey(name: 'entry_date') DateTime? entryDate,@JsonKey(name: 'payee_type') String? payeeType,@JsonKey(name: 'payee_name') String payeeName,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount,@JsonKey(name: 'payment_mode') String? paymentMode,@JsonKey(name: 'cheque_no') String? chequeNo, String? utr, String? purpose,@JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) Decimal? gstAmount,@JsonKey(name: 'tds_section') String? tdsSection,@JsonKey(name: 'tds_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) Decimal? tdsAmount, String status,@JsonKey(name: 'cancelled_at') DateTime? cancelledAt,@JsonKey(name: 'journal_entries') JournalEntry? entry,@JsonKey(name: 'expense_account') LedgerAccountRef? expenseAccount,@JsonKey(name: 'paid_from') LedgerAccountRef? paidFrom
});


$JournalEntryCopyWith<$Res>? get entry;$LedgerAccountRefCopyWith<$Res>? get expenseAccount;$LedgerAccountRefCopyWith<$Res>? get paidFrom;

}
/// @nodoc
class _$PaymentVoucherCopyWithImpl<$Res>
    implements $PaymentVoucherCopyWith<$Res> {
  _$PaymentVoucherCopyWithImpl(this._self, this._then);

  final PaymentVoucher _self;
  final $Res Function(PaymentVoucher) _then;

/// Create a copy of PaymentVoucher
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? voucherId = null,Object? voucherNo = null,Object? entryDate = freezed,Object? payeeType = freezed,Object? payeeName = null,Object? amount = null,Object? paymentMode = freezed,Object? chequeNo = freezed,Object? utr = freezed,Object? purpose = freezed,Object? gstAmount = freezed,Object? tdsSection = freezed,Object? tdsAmount = freezed,Object? status = null,Object? cancelledAt = freezed,Object? entry = freezed,Object? expenseAccount = freezed,Object? paidFrom = freezed,}) {
  return _then(PaymentVoucher(
voucherId: null == voucherId ? _self.voucherId : voucherId // ignore: cast_nullable_to_non_nullable
as String,voucherNo: null == voucherNo ? _self.voucherNo : voucherNo // ignore: cast_nullable_to_non_nullable
as String,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,payeeType: freezed == payeeType ? _self.payeeType : payeeType // ignore: cast_nullable_to_non_nullable
as String?,payeeName: null == payeeName ? _self.payeeName : payeeName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,paymentMode: freezed == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String?,chequeNo: freezed == chequeNo ? _self.chequeNo : chequeNo // ignore: cast_nullable_to_non_nullable
as String?,utr: freezed == utr ? _self.utr : utr // ignore: cast_nullable_to_non_nullable
as String?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String?,gstAmount: freezed == gstAmount ? _self.gstAmount : gstAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,tdsSection: freezed == tdsSection ? _self.tdsSection : tdsSection // ignore: cast_nullable_to_non_nullable
as String?,tdsAmount: freezed == tdsAmount ? _self.tdsAmount : tdsAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,cancelledAt: freezed == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,entry: freezed == entry ? _self.entry : entry // ignore: cast_nullable_to_non_nullable
as JournalEntry?,expenseAccount: freezed == expenseAccount ? _self.expenseAccount : expenseAccount // ignore: cast_nullable_to_non_nullable
as LedgerAccountRef?,paidFrom: freezed == paidFrom ? _self.paidFrom : paidFrom // ignore: cast_nullable_to_non_nullable
as LedgerAccountRef?,
  ));
}
/// Create a copy of PaymentVoucher
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JournalEntryCopyWith<$Res>? get entry {
    if (_self.entry == null) {
    return null;
  }

  return $JournalEntryCopyWith<$Res>(_self.entry!, (value) {
    return _then(_self.copyWith(entry: value));
  });
}/// Create a copy of PaymentVoucher
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<$Res>? get expenseAccount {
    if (_self.expenseAccount == null) {
    return null;
  }

  return $LedgerAccountRefCopyWith<$Res>(_self.expenseAccount!, (value) {
    return _then(_self.copyWith(expenseAccount: value));
  });
}/// Create a copy of PaymentVoucher
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<$Res>? get paidFrom {
    if (_self.paidFrom == null) {
    return null;
  }

  return $LedgerAccountRefCopyWith<$Res>(_self.paidFrom!, (value) {
    return _then(_self.copyWith(paidFrom: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentVoucher].
extension PaymentVoucherPatterns on PaymentVoucher {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentVoucher value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentVoucher() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentVoucher value)  $default,){
final _that = this;
switch (_that) {
case _PaymentVoucher():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentVoucher value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentVoucher() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'voucher_id')  String voucherId, @JsonKey(name: 'voucher_no')  String voucherNo, @JsonKey(name: 'entry_date')  DateTime? entryDate, @JsonKey(name: 'payee_type')  String? payeeType, @JsonKey(name: 'payee_name')  String payeeName, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'payment_mode')  String? paymentMode, @JsonKey(name: 'cheque_no')  String? chequeNo,  String? utr,  String? purpose, @JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson)  Decimal? gstAmount, @JsonKey(name: 'tds_section')  String? tdsSection, @JsonKey(name: 'tds_amount', fromJson: _optDecimal, toJson: _optDecimalToJson)  Decimal? tdsAmount,  String status, @JsonKey(name: 'cancelled_at')  DateTime? cancelledAt, @JsonKey(name: 'journal_entries')  JournalEntry? entry, @JsonKey(name: 'expense_account')  LedgerAccountRef? expenseAccount, @JsonKey(name: 'paid_from')  LedgerAccountRef? paidFrom)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentVoucher() when $default != null:
return $default(_that.voucherId,_that.voucherNo,_that.entryDate,_that.payeeType,_that.payeeName,_that.amount,_that.paymentMode,_that.chequeNo,_that.utr,_that.purpose,_that.gstAmount,_that.tdsSection,_that.tdsAmount,_that.status,_that.cancelledAt,_that.entry,_that.expenseAccount,_that.paidFrom);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'voucher_id')  String voucherId, @JsonKey(name: 'voucher_no')  String voucherNo, @JsonKey(name: 'entry_date')  DateTime? entryDate, @JsonKey(name: 'payee_type')  String? payeeType, @JsonKey(name: 'payee_name')  String payeeName, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'payment_mode')  String? paymentMode, @JsonKey(name: 'cheque_no')  String? chequeNo,  String? utr,  String? purpose, @JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson)  Decimal? gstAmount, @JsonKey(name: 'tds_section')  String? tdsSection, @JsonKey(name: 'tds_amount', fromJson: _optDecimal, toJson: _optDecimalToJson)  Decimal? tdsAmount,  String status, @JsonKey(name: 'cancelled_at')  DateTime? cancelledAt, @JsonKey(name: 'journal_entries')  JournalEntry? entry, @JsonKey(name: 'expense_account')  LedgerAccountRef? expenseAccount, @JsonKey(name: 'paid_from')  LedgerAccountRef? paidFrom)  $default,) {final _that = this;
switch (_that) {
case _PaymentVoucher():
return $default(_that.voucherId,_that.voucherNo,_that.entryDate,_that.payeeType,_that.payeeName,_that.amount,_that.paymentMode,_that.chequeNo,_that.utr,_that.purpose,_that.gstAmount,_that.tdsSection,_that.tdsAmount,_that.status,_that.cancelledAt,_that.entry,_that.expenseAccount,_that.paidFrom);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'voucher_id')  String voucherId, @JsonKey(name: 'voucher_no')  String voucherNo, @JsonKey(name: 'entry_date')  DateTime? entryDate, @JsonKey(name: 'payee_type')  String? payeeType, @JsonKey(name: 'payee_name')  String payeeName, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'payment_mode')  String? paymentMode, @JsonKey(name: 'cheque_no')  String? chequeNo,  String? utr,  String? purpose, @JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson)  Decimal? gstAmount, @JsonKey(name: 'tds_section')  String? tdsSection, @JsonKey(name: 'tds_amount', fromJson: _optDecimal, toJson: _optDecimalToJson)  Decimal? tdsAmount,  String status, @JsonKey(name: 'cancelled_at')  DateTime? cancelledAt, @JsonKey(name: 'journal_entries')  JournalEntry? entry, @JsonKey(name: 'expense_account')  LedgerAccountRef? expenseAccount, @JsonKey(name: 'paid_from')  LedgerAccountRef? paidFrom)?  $default,) {final _that = this;
switch (_that) {
case _PaymentVoucher() when $default != null:
return $default(_that.voucherId,_that.voucherNo,_that.entryDate,_that.payeeType,_that.payeeName,_that.amount,_that.paymentMode,_that.chequeNo,_that.utr,_that.purpose,_that.gstAmount,_that.tdsSection,_that.tdsAmount,_that.status,_that.cancelledAt,_that.entry,_that.expenseAccount,_that.paidFrom);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentVoucher implements PaymentVoucher {
  const _PaymentVoucher({@JsonKey(name: 'voucher_id') required this.voucherId, @JsonKey(name: 'voucher_no') this.voucherNo = '', @JsonKey(name: 'entry_date') this.entryDate, @JsonKey(name: 'payee_type') this.payeeType, @JsonKey(name: 'payee_name') this.payeeName = '', @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required this.amount, @JsonKey(name: 'payment_mode') this.paymentMode, @JsonKey(name: 'cheque_no') this.chequeNo, this.utr, this.purpose, @JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) this.gstAmount, @JsonKey(name: 'tds_section') this.tdsSection, @JsonKey(name: 'tds_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) this.tdsAmount, this.status = 'ACTIVE', @JsonKey(name: 'cancelled_at') this.cancelledAt, @JsonKey(name: 'journal_entries') this.entry, @JsonKey(name: 'expense_account') this.expenseAccount, @JsonKey(name: 'paid_from') this.paidFrom});
  factory _PaymentVoucher.fromJson(Map<String, dynamic> json) => _$PaymentVoucherFromJson(json);

@override@JsonKey(name: 'voucher_id') final  String voucherId;
@override@JsonKey(name: 'voucher_no') final  String voucherNo;
@override@JsonKey(name: 'entry_date') final  DateTime? entryDate;
@override@JsonKey(name: 'payee_type') final  String? payeeType;
@override@JsonKey(name: 'payee_name') final  String payeeName;
@override@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal amount;
@override@JsonKey(name: 'payment_mode') final  String? paymentMode;
@override@JsonKey(name: 'cheque_no') final  String? chequeNo;
@override final  String? utr;
@override final  String? purpose;
@override@JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) final  Decimal? gstAmount;
@override@JsonKey(name: 'tds_section') final  String? tdsSection;
@override@JsonKey(name: 'tds_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) final  Decimal? tdsAmount;
/// ACTIVE / CANCELLED.
@override@JsonKey() final  String status;
@override@JsonKey(name: 'cancelled_at') final  DateTime? cancelledAt;
@override@JsonKey(name: 'journal_entries') final  JournalEntry? entry;
@override@JsonKey(name: 'expense_account') final  LedgerAccountRef? expenseAccount;
@override@JsonKey(name: 'paid_from') final  LedgerAccountRef? paidFrom;

/// Create a copy of PaymentVoucher
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentVoucherCopyWith<_PaymentVoucher> get copyWith => __$PaymentVoucherCopyWithImpl<_PaymentVoucher>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentVoucherToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentVoucher&&(identical(other.voucherId, voucherId) || other.voucherId == voucherId)&&(identical(other.voucherNo, voucherNo) || other.voucherNo == voucherNo)&&(identical(other.entryDate, entryDate) || other.entryDate == entryDate)&&(identical(other.payeeType, payeeType) || other.payeeType == payeeType)&&(identical(other.payeeName, payeeName) || other.payeeName == payeeName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.chequeNo, chequeNo) || other.chequeNo == chequeNo)&&(identical(other.utr, utr) || other.utr == utr)&&(identical(other.purpose, purpose) || other.purpose == purpose)&&(identical(other.gstAmount, gstAmount) || other.gstAmount == gstAmount)&&(identical(other.tdsSection, tdsSection) || other.tdsSection == tdsSection)&&(identical(other.tdsAmount, tdsAmount) || other.tdsAmount == tdsAmount)&&(identical(other.status, status) || other.status == status)&&(identical(other.cancelledAt, cancelledAt) || other.cancelledAt == cancelledAt)&&(identical(other.entry, entry) || other.entry == entry)&&(identical(other.expenseAccount, expenseAccount) || other.expenseAccount == expenseAccount)&&(identical(other.paidFrom, paidFrom) || other.paidFrom == paidFrom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,voucherId,voucherNo,entryDate,payeeType,payeeName,amount,paymentMode,chequeNo,utr,purpose,gstAmount,tdsSection,tdsAmount,status,cancelledAt,entry,expenseAccount,paidFrom);
}

@override
String toString() {
    return 'PaymentVoucher(voucherId: $voucherId, voucherNo: $voucherNo, entryDate: $entryDate, payeeType: $payeeType, payeeName: $payeeName, amount: $amount, paymentMode: $paymentMode, chequeNo: $chequeNo, utr: $utr, purpose: $purpose, gstAmount: $gstAmount, tdsSection: $tdsSection, tdsAmount: $tdsAmount, status: $status, cancelledAt: $cancelledAt, entry: $entry, expenseAccount: $expenseAccount, paidFrom: $paidFrom)';
}


}

/// @nodoc
abstract mixin class _$PaymentVoucherCopyWith<$Res> implements $PaymentVoucherCopyWith<$Res> {
  factory _$PaymentVoucherCopyWith(_PaymentVoucher value, $Res Function(_PaymentVoucher) _then) = __$PaymentVoucherCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'voucher_id') String voucherId,@JsonKey(name: 'voucher_no') String voucherNo,@JsonKey(name: 'entry_date') DateTime? entryDate,@JsonKey(name: 'payee_type') String? payeeType,@JsonKey(name: 'payee_name') String payeeName,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount,@JsonKey(name: 'payment_mode') String? paymentMode,@JsonKey(name: 'cheque_no') String? chequeNo, String? utr, String? purpose,@JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) Decimal? gstAmount,@JsonKey(name: 'tds_section') String? tdsSection,@JsonKey(name: 'tds_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) Decimal? tdsAmount, String status,@JsonKey(name: 'cancelled_at') DateTime? cancelledAt,@JsonKey(name: 'journal_entries') JournalEntry? entry,@JsonKey(name: 'expense_account') LedgerAccountRef? expenseAccount,@JsonKey(name: 'paid_from') LedgerAccountRef? paidFrom
});


@override $JournalEntryCopyWith<$Res>? get entry;@override $LedgerAccountRefCopyWith<$Res>? get expenseAccount;@override $LedgerAccountRefCopyWith<$Res>? get paidFrom;

}
/// @nodoc
class __$PaymentVoucherCopyWithImpl<$Res>
    implements _$PaymentVoucherCopyWith<$Res> {
  __$PaymentVoucherCopyWithImpl(this._self, this._then);

  final _PaymentVoucher _self;
  final $Res Function(_PaymentVoucher) _then;

/// Create a copy of PaymentVoucher
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? voucherId = null,Object? voucherNo = null,Object? entryDate = freezed,Object? payeeType = freezed,Object? payeeName = null,Object? amount = null,Object? paymentMode = freezed,Object? chequeNo = freezed,Object? utr = freezed,Object? purpose = freezed,Object? gstAmount = freezed,Object? tdsSection = freezed,Object? tdsAmount = freezed,Object? status = null,Object? cancelledAt = freezed,Object? entry = freezed,Object? expenseAccount = freezed,Object? paidFrom = freezed,}) {
  return _then(_PaymentVoucher(
voucherId: null == voucherId ? _self.voucherId : voucherId // ignore: cast_nullable_to_non_nullable
as String,voucherNo: null == voucherNo ? _self.voucherNo : voucherNo // ignore: cast_nullable_to_non_nullable
as String,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,payeeType: freezed == payeeType ? _self.payeeType : payeeType // ignore: cast_nullable_to_non_nullable
as String?,payeeName: null == payeeName ? _self.payeeName : payeeName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,paymentMode: freezed == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String?,chequeNo: freezed == chequeNo ? _self.chequeNo : chequeNo // ignore: cast_nullable_to_non_nullable
as String?,utr: freezed == utr ? _self.utr : utr // ignore: cast_nullable_to_non_nullable
as String?,purpose: freezed == purpose ? _self.purpose : purpose // ignore: cast_nullable_to_non_nullable
as String?,gstAmount: freezed == gstAmount ? _self.gstAmount : gstAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,tdsSection: freezed == tdsSection ? _self.tdsSection : tdsSection // ignore: cast_nullable_to_non_nullable
as String?,tdsAmount: freezed == tdsAmount ? _self.tdsAmount : tdsAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,cancelledAt: freezed == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,entry: freezed == entry ? _self.entry : entry // ignore: cast_nullable_to_non_nullable
as JournalEntry?,expenseAccount: freezed == expenseAccount ? _self.expenseAccount : expenseAccount // ignore: cast_nullable_to_non_nullable
as LedgerAccountRef?,paidFrom: freezed == paidFrom ? _self.paidFrom : paidFrom // ignore: cast_nullable_to_non_nullable
as LedgerAccountRef?,
  ));
}

/// Create a copy of PaymentVoucher
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JournalEntryCopyWith<$Res>? get entry {
    if (_self.entry == null) {
    return null;
  }

  return $JournalEntryCopyWith<$Res>(_self.entry!, (value) {
    return _then(_self.copyWith(entry: value));
  });
}/// Create a copy of PaymentVoucher
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<$Res>? get expenseAccount {
    if (_self.expenseAccount == null) {
    return null;
  }

  return $LedgerAccountRefCopyWith<$Res>(_self.expenseAccount!, (value) {
    return _then(_self.copyWith(expenseAccount: value));
  });
}/// Create a copy of PaymentVoucher
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<$Res>? get paidFrom {
    if (_self.paidFrom == null) {
    return null;
  }

  return $LedgerAccountRefCopyWith<$Res>(_self.paidFrom!, (value) {
    return _then(_self.copyWith(paidFrom: value));
  });
}
}


/// @nodoc
mixin _$ReceiptVoucher {

@JsonKey(name: 'voucher_id') String get voucherId;@JsonKey(name: 'voucher_no') String get voucherNo;@JsonKey(name: 'entry_date') DateTime? get entryDate;@JsonKey(name: 'payer_type') String? get payerType;@JsonKey(name: 'payer_name') String get payerName;@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal get amount;@JsonKey(name: 'payment_mode') String? get paymentMode;@JsonKey(name: 'cheque_no') String? get chequeNo; String? get utr;@JsonKey(name: 'source_description') String? get sourceDescription;@JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) Decimal? get gstAmount;@JsonKey(name: 'journal_entries') JournalEntry? get entry;@JsonKey(name: 'received_in') LedgerAccountRef? get receivedIn;@JsonKey(name: 'income_account') LedgerAccountRef? get incomeAccount;
/// Create a copy of ReceiptVoucher
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReceiptVoucherCopyWith<ReceiptVoucher> get copyWith => _$ReceiptVoucherCopyWithImpl<ReceiptVoucher>(this as ReceiptVoucher, _$identity);

  /// Serializes this ReceiptVoucher to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReceiptVoucher;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReceiptVoucher&&(identical(other.voucherId, _this.voucherId) || other.voucherId == _this.voucherId)&&(identical(other.voucherNo, _this.voucherNo) || other.voucherNo == _this.voucherNo)&&(identical(other.entryDate, _this.entryDate) || other.entryDate == _this.entryDate)&&(identical(other.payerType, _this.payerType) || other.payerType == _this.payerType)&&(identical(other.payerName, _this.payerName) || other.payerName == _this.payerName)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.paymentMode, _this.paymentMode) || other.paymentMode == _this.paymentMode)&&(identical(other.chequeNo, _this.chequeNo) || other.chequeNo == _this.chequeNo)&&(identical(other.utr, _this.utr) || other.utr == _this.utr)&&(identical(other.sourceDescription, _this.sourceDescription) || other.sourceDescription == _this.sourceDescription)&&(identical(other.gstAmount, _this.gstAmount) || other.gstAmount == _this.gstAmount)&&(identical(other.entry, _this.entry) || other.entry == _this.entry)&&(identical(other.receivedIn, _this.receivedIn) || other.receivedIn == _this.receivedIn)&&(identical(other.incomeAccount, _this.incomeAccount) || other.incomeAccount == _this.incomeAccount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReceiptVoucher;
  return Object.hash(runtimeType,_this.voucherId,_this.voucherNo,_this.entryDate,_this.payerType,_this.payerName,_this.amount,_this.paymentMode,_this.chequeNo,_this.utr,_this.sourceDescription,_this.gstAmount,_this.entry,_this.receivedIn,_this.incomeAccount);
}

@override
String toString() {
  final _this = this as ReceiptVoucher;
  return 'ReceiptVoucher(voucherId: ${_this.voucherId}, voucherNo: ${_this.voucherNo}, entryDate: ${_this.entryDate}, payerType: ${_this.payerType}, payerName: ${_this.payerName}, amount: ${_this.amount}, paymentMode: ${_this.paymentMode}, chequeNo: ${_this.chequeNo}, utr: ${_this.utr}, sourceDescription: ${_this.sourceDescription}, gstAmount: ${_this.gstAmount}, entry: ${_this.entry}, receivedIn: ${_this.receivedIn}, incomeAccount: ${_this.incomeAccount})';
}


}

/// @nodoc
abstract mixin class $ReceiptVoucherCopyWith<$Res>  {
  factory $ReceiptVoucherCopyWith(ReceiptVoucher value, $Res Function(ReceiptVoucher) _then) = _$ReceiptVoucherCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'voucher_id') String voucherId,@JsonKey(name: 'voucher_no') String voucherNo,@JsonKey(name: 'entry_date') DateTime? entryDate,@JsonKey(name: 'payer_type') String? payerType,@JsonKey(name: 'payer_name') String payerName,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount,@JsonKey(name: 'payment_mode') String? paymentMode,@JsonKey(name: 'cheque_no') String? chequeNo, String? utr,@JsonKey(name: 'source_description') String? sourceDescription,@JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) Decimal? gstAmount,@JsonKey(name: 'journal_entries') JournalEntry? entry,@JsonKey(name: 'received_in') LedgerAccountRef? receivedIn,@JsonKey(name: 'income_account') LedgerAccountRef? incomeAccount
});


$JournalEntryCopyWith<$Res>? get entry;$LedgerAccountRefCopyWith<$Res>? get receivedIn;$LedgerAccountRefCopyWith<$Res>? get incomeAccount;

}
/// @nodoc
class _$ReceiptVoucherCopyWithImpl<$Res>
    implements $ReceiptVoucherCopyWith<$Res> {
  _$ReceiptVoucherCopyWithImpl(this._self, this._then);

  final ReceiptVoucher _self;
  final $Res Function(ReceiptVoucher) _then;

/// Create a copy of ReceiptVoucher
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? voucherId = null,Object? voucherNo = null,Object? entryDate = freezed,Object? payerType = freezed,Object? payerName = null,Object? amount = null,Object? paymentMode = freezed,Object? chequeNo = freezed,Object? utr = freezed,Object? sourceDescription = freezed,Object? gstAmount = freezed,Object? entry = freezed,Object? receivedIn = freezed,Object? incomeAccount = freezed,}) {
  return _then(ReceiptVoucher(
voucherId: null == voucherId ? _self.voucherId : voucherId // ignore: cast_nullable_to_non_nullable
as String,voucherNo: null == voucherNo ? _self.voucherNo : voucherNo // ignore: cast_nullable_to_non_nullable
as String,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,payerType: freezed == payerType ? _self.payerType : payerType // ignore: cast_nullable_to_non_nullable
as String?,payerName: null == payerName ? _self.payerName : payerName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,paymentMode: freezed == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String?,chequeNo: freezed == chequeNo ? _self.chequeNo : chequeNo // ignore: cast_nullable_to_non_nullable
as String?,utr: freezed == utr ? _self.utr : utr // ignore: cast_nullable_to_non_nullable
as String?,sourceDescription: freezed == sourceDescription ? _self.sourceDescription : sourceDescription // ignore: cast_nullable_to_non_nullable
as String?,gstAmount: freezed == gstAmount ? _self.gstAmount : gstAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,entry: freezed == entry ? _self.entry : entry // ignore: cast_nullable_to_non_nullable
as JournalEntry?,receivedIn: freezed == receivedIn ? _self.receivedIn : receivedIn // ignore: cast_nullable_to_non_nullable
as LedgerAccountRef?,incomeAccount: freezed == incomeAccount ? _self.incomeAccount : incomeAccount // ignore: cast_nullable_to_non_nullable
as LedgerAccountRef?,
  ));
}
/// Create a copy of ReceiptVoucher
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JournalEntryCopyWith<$Res>? get entry {
    if (_self.entry == null) {
    return null;
  }

  return $JournalEntryCopyWith<$Res>(_self.entry!, (value) {
    return _then(_self.copyWith(entry: value));
  });
}/// Create a copy of ReceiptVoucher
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<$Res>? get receivedIn {
    if (_self.receivedIn == null) {
    return null;
  }

  return $LedgerAccountRefCopyWith<$Res>(_self.receivedIn!, (value) {
    return _then(_self.copyWith(receivedIn: value));
  });
}/// Create a copy of ReceiptVoucher
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<$Res>? get incomeAccount {
    if (_self.incomeAccount == null) {
    return null;
  }

  return $LedgerAccountRefCopyWith<$Res>(_self.incomeAccount!, (value) {
    return _then(_self.copyWith(incomeAccount: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReceiptVoucher].
extension ReceiptVoucherPatterns on ReceiptVoucher {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReceiptVoucher value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReceiptVoucher() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReceiptVoucher value)  $default,){
final _that = this;
switch (_that) {
case _ReceiptVoucher():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReceiptVoucher value)?  $default,){
final _that = this;
switch (_that) {
case _ReceiptVoucher() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'voucher_id')  String voucherId, @JsonKey(name: 'voucher_no')  String voucherNo, @JsonKey(name: 'entry_date')  DateTime? entryDate, @JsonKey(name: 'payer_type')  String? payerType, @JsonKey(name: 'payer_name')  String payerName, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'payment_mode')  String? paymentMode, @JsonKey(name: 'cheque_no')  String? chequeNo,  String? utr, @JsonKey(name: 'source_description')  String? sourceDescription, @JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson)  Decimal? gstAmount, @JsonKey(name: 'journal_entries')  JournalEntry? entry, @JsonKey(name: 'received_in')  LedgerAccountRef? receivedIn, @JsonKey(name: 'income_account')  LedgerAccountRef? incomeAccount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReceiptVoucher() when $default != null:
return $default(_that.voucherId,_that.voucherNo,_that.entryDate,_that.payerType,_that.payerName,_that.amount,_that.paymentMode,_that.chequeNo,_that.utr,_that.sourceDescription,_that.gstAmount,_that.entry,_that.receivedIn,_that.incomeAccount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'voucher_id')  String voucherId, @JsonKey(name: 'voucher_no')  String voucherNo, @JsonKey(name: 'entry_date')  DateTime? entryDate, @JsonKey(name: 'payer_type')  String? payerType, @JsonKey(name: 'payer_name')  String payerName, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'payment_mode')  String? paymentMode, @JsonKey(name: 'cheque_no')  String? chequeNo,  String? utr, @JsonKey(name: 'source_description')  String? sourceDescription, @JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson)  Decimal? gstAmount, @JsonKey(name: 'journal_entries')  JournalEntry? entry, @JsonKey(name: 'received_in')  LedgerAccountRef? receivedIn, @JsonKey(name: 'income_account')  LedgerAccountRef? incomeAccount)  $default,) {final _that = this;
switch (_that) {
case _ReceiptVoucher():
return $default(_that.voucherId,_that.voucherNo,_that.entryDate,_that.payerType,_that.payerName,_that.amount,_that.paymentMode,_that.chequeNo,_that.utr,_that.sourceDescription,_that.gstAmount,_that.entry,_that.receivedIn,_that.incomeAccount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'voucher_id')  String voucherId, @JsonKey(name: 'voucher_no')  String voucherNo, @JsonKey(name: 'entry_date')  DateTime? entryDate, @JsonKey(name: 'payer_type')  String? payerType, @JsonKey(name: 'payer_name')  String payerName, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount, @JsonKey(name: 'payment_mode')  String? paymentMode, @JsonKey(name: 'cheque_no')  String? chequeNo,  String? utr, @JsonKey(name: 'source_description')  String? sourceDescription, @JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson)  Decimal? gstAmount, @JsonKey(name: 'journal_entries')  JournalEntry? entry, @JsonKey(name: 'received_in')  LedgerAccountRef? receivedIn, @JsonKey(name: 'income_account')  LedgerAccountRef? incomeAccount)?  $default,) {final _that = this;
switch (_that) {
case _ReceiptVoucher() when $default != null:
return $default(_that.voucherId,_that.voucherNo,_that.entryDate,_that.payerType,_that.payerName,_that.amount,_that.paymentMode,_that.chequeNo,_that.utr,_that.sourceDescription,_that.gstAmount,_that.entry,_that.receivedIn,_that.incomeAccount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReceiptVoucher implements ReceiptVoucher {
  const _ReceiptVoucher({@JsonKey(name: 'voucher_id') required this.voucherId, @JsonKey(name: 'voucher_no') this.voucherNo = '', @JsonKey(name: 'entry_date') this.entryDate, @JsonKey(name: 'payer_type') this.payerType, @JsonKey(name: 'payer_name') this.payerName = '', @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required this.amount, @JsonKey(name: 'payment_mode') this.paymentMode, @JsonKey(name: 'cheque_no') this.chequeNo, this.utr, @JsonKey(name: 'source_description') this.sourceDescription, @JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) this.gstAmount, @JsonKey(name: 'journal_entries') this.entry, @JsonKey(name: 'received_in') this.receivedIn, @JsonKey(name: 'income_account') this.incomeAccount});
  factory _ReceiptVoucher.fromJson(Map<String, dynamic> json) => _$ReceiptVoucherFromJson(json);

@override@JsonKey(name: 'voucher_id') final  String voucherId;
@override@JsonKey(name: 'voucher_no') final  String voucherNo;
@override@JsonKey(name: 'entry_date') final  DateTime? entryDate;
@override@JsonKey(name: 'payer_type') final  String? payerType;
@override@JsonKey(name: 'payer_name') final  String payerName;
@override@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal amount;
@override@JsonKey(name: 'payment_mode') final  String? paymentMode;
@override@JsonKey(name: 'cheque_no') final  String? chequeNo;
@override final  String? utr;
@override@JsonKey(name: 'source_description') final  String? sourceDescription;
@override@JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) final  Decimal? gstAmount;
@override@JsonKey(name: 'journal_entries') final  JournalEntry? entry;
@override@JsonKey(name: 'received_in') final  LedgerAccountRef? receivedIn;
@override@JsonKey(name: 'income_account') final  LedgerAccountRef? incomeAccount;

/// Create a copy of ReceiptVoucher
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReceiptVoucherCopyWith<_ReceiptVoucher> get copyWith => __$ReceiptVoucherCopyWithImpl<_ReceiptVoucher>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReceiptVoucherToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceiptVoucher&&(identical(other.voucherId, voucherId) || other.voucherId == voucherId)&&(identical(other.voucherNo, voucherNo) || other.voucherNo == voucherNo)&&(identical(other.entryDate, entryDate) || other.entryDate == entryDate)&&(identical(other.payerType, payerType) || other.payerType == payerType)&&(identical(other.payerName, payerName) || other.payerName == payerName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode)&&(identical(other.chequeNo, chequeNo) || other.chequeNo == chequeNo)&&(identical(other.utr, utr) || other.utr == utr)&&(identical(other.sourceDescription, sourceDescription) || other.sourceDescription == sourceDescription)&&(identical(other.gstAmount, gstAmount) || other.gstAmount == gstAmount)&&(identical(other.entry, entry) || other.entry == entry)&&(identical(other.receivedIn, receivedIn) || other.receivedIn == receivedIn)&&(identical(other.incomeAccount, incomeAccount) || other.incomeAccount == incomeAccount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,voucherId,voucherNo,entryDate,payerType,payerName,amount,paymentMode,chequeNo,utr,sourceDescription,gstAmount,entry,receivedIn,incomeAccount);
}

@override
String toString() {
    return 'ReceiptVoucher(voucherId: $voucherId, voucherNo: $voucherNo, entryDate: $entryDate, payerType: $payerType, payerName: $payerName, amount: $amount, paymentMode: $paymentMode, chequeNo: $chequeNo, utr: $utr, sourceDescription: $sourceDescription, gstAmount: $gstAmount, entry: $entry, receivedIn: $receivedIn, incomeAccount: $incomeAccount)';
}


}

/// @nodoc
abstract mixin class _$ReceiptVoucherCopyWith<$Res> implements $ReceiptVoucherCopyWith<$Res> {
  factory _$ReceiptVoucherCopyWith(_ReceiptVoucher value, $Res Function(_ReceiptVoucher) _then) = __$ReceiptVoucherCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'voucher_id') String voucherId,@JsonKey(name: 'voucher_no') String voucherNo,@JsonKey(name: 'entry_date') DateTime? entryDate,@JsonKey(name: 'payer_type') String? payerType,@JsonKey(name: 'payer_name') String payerName,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount,@JsonKey(name: 'payment_mode') String? paymentMode,@JsonKey(name: 'cheque_no') String? chequeNo, String? utr,@JsonKey(name: 'source_description') String? sourceDescription,@JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) Decimal? gstAmount,@JsonKey(name: 'journal_entries') JournalEntry? entry,@JsonKey(name: 'received_in') LedgerAccountRef? receivedIn,@JsonKey(name: 'income_account') LedgerAccountRef? incomeAccount
});


@override $JournalEntryCopyWith<$Res>? get entry;@override $LedgerAccountRefCopyWith<$Res>? get receivedIn;@override $LedgerAccountRefCopyWith<$Res>? get incomeAccount;

}
/// @nodoc
class __$ReceiptVoucherCopyWithImpl<$Res>
    implements _$ReceiptVoucherCopyWith<$Res> {
  __$ReceiptVoucherCopyWithImpl(this._self, this._then);

  final _ReceiptVoucher _self;
  final $Res Function(_ReceiptVoucher) _then;

/// Create a copy of ReceiptVoucher
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? voucherId = null,Object? voucherNo = null,Object? entryDate = freezed,Object? payerType = freezed,Object? payerName = null,Object? amount = null,Object? paymentMode = freezed,Object? chequeNo = freezed,Object? utr = freezed,Object? sourceDescription = freezed,Object? gstAmount = freezed,Object? entry = freezed,Object? receivedIn = freezed,Object? incomeAccount = freezed,}) {
  return _then(_ReceiptVoucher(
voucherId: null == voucherId ? _self.voucherId : voucherId // ignore: cast_nullable_to_non_nullable
as String,voucherNo: null == voucherNo ? _self.voucherNo : voucherNo // ignore: cast_nullable_to_non_nullable
as String,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,payerType: freezed == payerType ? _self.payerType : payerType // ignore: cast_nullable_to_non_nullable
as String?,payerName: null == payerName ? _self.payerName : payerName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,paymentMode: freezed == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String?,chequeNo: freezed == chequeNo ? _self.chequeNo : chequeNo // ignore: cast_nullable_to_non_nullable
as String?,utr: freezed == utr ? _self.utr : utr // ignore: cast_nullable_to_non_nullable
as String?,sourceDescription: freezed == sourceDescription ? _self.sourceDescription : sourceDescription // ignore: cast_nullable_to_non_nullable
as String?,gstAmount: freezed == gstAmount ? _self.gstAmount : gstAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,entry: freezed == entry ? _self.entry : entry // ignore: cast_nullable_to_non_nullable
as JournalEntry?,receivedIn: freezed == receivedIn ? _self.receivedIn : receivedIn // ignore: cast_nullable_to_non_nullable
as LedgerAccountRef?,incomeAccount: freezed == incomeAccount ? _self.incomeAccount : incomeAccount // ignore: cast_nullable_to_non_nullable
as LedgerAccountRef?,
  ));
}

/// Create a copy of ReceiptVoucher
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JournalEntryCopyWith<$Res>? get entry {
    if (_self.entry == null) {
    return null;
  }

  return $JournalEntryCopyWith<$Res>(_self.entry!, (value) {
    return _then(_self.copyWith(entry: value));
  });
}/// Create a copy of ReceiptVoucher
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<$Res>? get receivedIn {
    if (_self.receivedIn == null) {
    return null;
  }

  return $LedgerAccountRefCopyWith<$Res>(_self.receivedIn!, (value) {
    return _then(_self.copyWith(receivedIn: value));
  });
}/// Create a copy of ReceiptVoucher
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<$Res>? get incomeAccount {
    if (_self.incomeAccount == null) {
    return null;
  }

  return $LedgerAccountRefCopyWith<$Res>(_self.incomeAccount!, (value) {
    return _then(_self.copyWith(incomeAccount: value));
  });
}
}


/// @nodoc
mixin _$DebitCreditNote {

@JsonKey(name: 'note_id') String get noteId;@JsonKey(name: 'note_no') String get noteNo;/// DEBIT / CREDIT.
@JsonKey(name: 'note_type') String get noteType;@JsonKey(name: 'entry_date') DateTime? get entryDate;@JsonKey(name: 'party_type') String? get partyType;@JsonKey(name: 'party_name') String get partyName;@JsonKey(name: 'party_reference') String? get partyReference;@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal get amount; String? get reason;@JsonKey(name: 'related_receipt_id') String? get relatedReceiptId;@JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) Decimal? get gstAmount;@JsonKey(name: 'journal_entries') JournalEntry? get entry;@JsonKey(name: 'debit_account') LedgerAccountRef? get debitAccount;@JsonKey(name: 'credit_account') LedgerAccountRef? get creditAccount;
/// Create a copy of DebitCreditNote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DebitCreditNoteCopyWith<DebitCreditNote> get copyWith => _$DebitCreditNoteCopyWithImpl<DebitCreditNote>(this as DebitCreditNote, _$identity);

  /// Serializes this DebitCreditNote to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DebitCreditNote;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DebitCreditNote&&(identical(other.noteId, _this.noteId) || other.noteId == _this.noteId)&&(identical(other.noteNo, _this.noteNo) || other.noteNo == _this.noteNo)&&(identical(other.noteType, _this.noteType) || other.noteType == _this.noteType)&&(identical(other.entryDate, _this.entryDate) || other.entryDate == _this.entryDate)&&(identical(other.partyType, _this.partyType) || other.partyType == _this.partyType)&&(identical(other.partyName, _this.partyName) || other.partyName == _this.partyName)&&(identical(other.partyReference, _this.partyReference) || other.partyReference == _this.partyReference)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.relatedReceiptId, _this.relatedReceiptId) || other.relatedReceiptId == _this.relatedReceiptId)&&(identical(other.gstAmount, _this.gstAmount) || other.gstAmount == _this.gstAmount)&&(identical(other.entry, _this.entry) || other.entry == _this.entry)&&(identical(other.debitAccount, _this.debitAccount) || other.debitAccount == _this.debitAccount)&&(identical(other.creditAccount, _this.creditAccount) || other.creditAccount == _this.creditAccount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DebitCreditNote;
  return Object.hash(runtimeType,_this.noteId,_this.noteNo,_this.noteType,_this.entryDate,_this.partyType,_this.partyName,_this.partyReference,_this.amount,_this.reason,_this.relatedReceiptId,_this.gstAmount,_this.entry,_this.debitAccount,_this.creditAccount);
}

@override
String toString() {
  final _this = this as DebitCreditNote;
  return 'DebitCreditNote(noteId: ${_this.noteId}, noteNo: ${_this.noteNo}, noteType: ${_this.noteType}, entryDate: ${_this.entryDate}, partyType: ${_this.partyType}, partyName: ${_this.partyName}, partyReference: ${_this.partyReference}, amount: ${_this.amount}, reason: ${_this.reason}, relatedReceiptId: ${_this.relatedReceiptId}, gstAmount: ${_this.gstAmount}, entry: ${_this.entry}, debitAccount: ${_this.debitAccount}, creditAccount: ${_this.creditAccount})';
}


}

/// @nodoc
abstract mixin class $DebitCreditNoteCopyWith<$Res>  {
  factory $DebitCreditNoteCopyWith(DebitCreditNote value, $Res Function(DebitCreditNote) _then) = _$DebitCreditNoteCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'note_id') String noteId,@JsonKey(name: 'note_no') String noteNo,@JsonKey(name: 'note_type') String noteType,@JsonKey(name: 'entry_date') DateTime? entryDate,@JsonKey(name: 'party_type') String? partyType,@JsonKey(name: 'party_name') String partyName,@JsonKey(name: 'party_reference') String? partyReference,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount, String? reason,@JsonKey(name: 'related_receipt_id') String? relatedReceiptId,@JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) Decimal? gstAmount,@JsonKey(name: 'journal_entries') JournalEntry? entry,@JsonKey(name: 'debit_account') LedgerAccountRef? debitAccount,@JsonKey(name: 'credit_account') LedgerAccountRef? creditAccount
});


$JournalEntryCopyWith<$Res>? get entry;$LedgerAccountRefCopyWith<$Res>? get debitAccount;$LedgerAccountRefCopyWith<$Res>? get creditAccount;

}
/// @nodoc
class _$DebitCreditNoteCopyWithImpl<$Res>
    implements $DebitCreditNoteCopyWith<$Res> {
  _$DebitCreditNoteCopyWithImpl(this._self, this._then);

  final DebitCreditNote _self;
  final $Res Function(DebitCreditNote) _then;

/// Create a copy of DebitCreditNote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? noteId = null,Object? noteNo = null,Object? noteType = null,Object? entryDate = freezed,Object? partyType = freezed,Object? partyName = null,Object? partyReference = freezed,Object? amount = null,Object? reason = freezed,Object? relatedReceiptId = freezed,Object? gstAmount = freezed,Object? entry = freezed,Object? debitAccount = freezed,Object? creditAccount = freezed,}) {
  return _then(DebitCreditNote(
noteId: null == noteId ? _self.noteId : noteId // ignore: cast_nullable_to_non_nullable
as String,noteNo: null == noteNo ? _self.noteNo : noteNo // ignore: cast_nullable_to_non_nullable
as String,noteType: null == noteType ? _self.noteType : noteType // ignore: cast_nullable_to_non_nullable
as String,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,partyType: freezed == partyType ? _self.partyType : partyType // ignore: cast_nullable_to_non_nullable
as String?,partyName: null == partyName ? _self.partyName : partyName // ignore: cast_nullable_to_non_nullable
as String,partyReference: freezed == partyReference ? _self.partyReference : partyReference // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,relatedReceiptId: freezed == relatedReceiptId ? _self.relatedReceiptId : relatedReceiptId // ignore: cast_nullable_to_non_nullable
as String?,gstAmount: freezed == gstAmount ? _self.gstAmount : gstAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,entry: freezed == entry ? _self.entry : entry // ignore: cast_nullable_to_non_nullable
as JournalEntry?,debitAccount: freezed == debitAccount ? _self.debitAccount : debitAccount // ignore: cast_nullable_to_non_nullable
as LedgerAccountRef?,creditAccount: freezed == creditAccount ? _self.creditAccount : creditAccount // ignore: cast_nullable_to_non_nullable
as LedgerAccountRef?,
  ));
}
/// Create a copy of DebitCreditNote
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JournalEntryCopyWith<$Res>? get entry {
    if (_self.entry == null) {
    return null;
  }

  return $JournalEntryCopyWith<$Res>(_self.entry!, (value) {
    return _then(_self.copyWith(entry: value));
  });
}/// Create a copy of DebitCreditNote
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<$Res>? get debitAccount {
    if (_self.debitAccount == null) {
    return null;
  }

  return $LedgerAccountRefCopyWith<$Res>(_self.debitAccount!, (value) {
    return _then(_self.copyWith(debitAccount: value));
  });
}/// Create a copy of DebitCreditNote
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<$Res>? get creditAccount {
    if (_self.creditAccount == null) {
    return null;
  }

  return $LedgerAccountRefCopyWith<$Res>(_self.creditAccount!, (value) {
    return _then(_self.copyWith(creditAccount: value));
  });
}
}


/// Adds pattern-matching-related methods to [DebitCreditNote].
extension DebitCreditNotePatterns on DebitCreditNote {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DebitCreditNote value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DebitCreditNote() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DebitCreditNote value)  $default,){
final _that = this;
switch (_that) {
case _DebitCreditNote():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DebitCreditNote value)?  $default,){
final _that = this;
switch (_that) {
case _DebitCreditNote() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'note_id')  String noteId, @JsonKey(name: 'note_no')  String noteNo, @JsonKey(name: 'note_type')  String noteType, @JsonKey(name: 'entry_date')  DateTime? entryDate, @JsonKey(name: 'party_type')  String? partyType, @JsonKey(name: 'party_name')  String partyName, @JsonKey(name: 'party_reference')  String? partyReference, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount,  String? reason, @JsonKey(name: 'related_receipt_id')  String? relatedReceiptId, @JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson)  Decimal? gstAmount, @JsonKey(name: 'journal_entries')  JournalEntry? entry, @JsonKey(name: 'debit_account')  LedgerAccountRef? debitAccount, @JsonKey(name: 'credit_account')  LedgerAccountRef? creditAccount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DebitCreditNote() when $default != null:
return $default(_that.noteId,_that.noteNo,_that.noteType,_that.entryDate,_that.partyType,_that.partyName,_that.partyReference,_that.amount,_that.reason,_that.relatedReceiptId,_that.gstAmount,_that.entry,_that.debitAccount,_that.creditAccount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'note_id')  String noteId, @JsonKey(name: 'note_no')  String noteNo, @JsonKey(name: 'note_type')  String noteType, @JsonKey(name: 'entry_date')  DateTime? entryDate, @JsonKey(name: 'party_type')  String? partyType, @JsonKey(name: 'party_name')  String partyName, @JsonKey(name: 'party_reference')  String? partyReference, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount,  String? reason, @JsonKey(name: 'related_receipt_id')  String? relatedReceiptId, @JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson)  Decimal? gstAmount, @JsonKey(name: 'journal_entries')  JournalEntry? entry, @JsonKey(name: 'debit_account')  LedgerAccountRef? debitAccount, @JsonKey(name: 'credit_account')  LedgerAccountRef? creditAccount)  $default,) {final _that = this;
switch (_that) {
case _DebitCreditNote():
return $default(_that.noteId,_that.noteNo,_that.noteType,_that.entryDate,_that.partyType,_that.partyName,_that.partyReference,_that.amount,_that.reason,_that.relatedReceiptId,_that.gstAmount,_that.entry,_that.debitAccount,_that.creditAccount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'note_id')  String noteId, @JsonKey(name: 'note_no')  String noteNo, @JsonKey(name: 'note_type')  String noteType, @JsonKey(name: 'entry_date')  DateTime? entryDate, @JsonKey(name: 'party_type')  String? partyType, @JsonKey(name: 'party_name')  String partyName, @JsonKey(name: 'party_reference')  String? partyReference, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal amount,  String? reason, @JsonKey(name: 'related_receipt_id')  String? relatedReceiptId, @JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson)  Decimal? gstAmount, @JsonKey(name: 'journal_entries')  JournalEntry? entry, @JsonKey(name: 'debit_account')  LedgerAccountRef? debitAccount, @JsonKey(name: 'credit_account')  LedgerAccountRef? creditAccount)?  $default,) {final _that = this;
switch (_that) {
case _DebitCreditNote() when $default != null:
return $default(_that.noteId,_that.noteNo,_that.noteType,_that.entryDate,_that.partyType,_that.partyName,_that.partyReference,_that.amount,_that.reason,_that.relatedReceiptId,_that.gstAmount,_that.entry,_that.debitAccount,_that.creditAccount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DebitCreditNote implements DebitCreditNote {
  const _DebitCreditNote({@JsonKey(name: 'note_id') required this.noteId, @JsonKey(name: 'note_no') this.noteNo = '', @JsonKey(name: 'note_type') this.noteType = 'DEBIT', @JsonKey(name: 'entry_date') this.entryDate, @JsonKey(name: 'party_type') this.partyType, @JsonKey(name: 'party_name') this.partyName = '', @JsonKey(name: 'party_reference') this.partyReference, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required this.amount, this.reason, @JsonKey(name: 'related_receipt_id') this.relatedReceiptId, @JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) this.gstAmount, @JsonKey(name: 'journal_entries') this.entry, @JsonKey(name: 'debit_account') this.debitAccount, @JsonKey(name: 'credit_account') this.creditAccount});
  factory _DebitCreditNote.fromJson(Map<String, dynamic> json) => _$DebitCreditNoteFromJson(json);

@override@JsonKey(name: 'note_id') final  String noteId;
@override@JsonKey(name: 'note_no') final  String noteNo;
/// DEBIT / CREDIT.
@override@JsonKey(name: 'note_type') final  String noteType;
@override@JsonKey(name: 'entry_date') final  DateTime? entryDate;
@override@JsonKey(name: 'party_type') final  String? partyType;
@override@JsonKey(name: 'party_name') final  String partyName;
@override@JsonKey(name: 'party_reference') final  String? partyReference;
@override@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal amount;
@override final  String? reason;
@override@JsonKey(name: 'related_receipt_id') final  String? relatedReceiptId;
@override@JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) final  Decimal? gstAmount;
@override@JsonKey(name: 'journal_entries') final  JournalEntry? entry;
@override@JsonKey(name: 'debit_account') final  LedgerAccountRef? debitAccount;
@override@JsonKey(name: 'credit_account') final  LedgerAccountRef? creditAccount;

/// Create a copy of DebitCreditNote
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DebitCreditNoteCopyWith<_DebitCreditNote> get copyWith => __$DebitCreditNoteCopyWithImpl<_DebitCreditNote>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DebitCreditNoteToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DebitCreditNote&&(identical(other.noteId, noteId) || other.noteId == noteId)&&(identical(other.noteNo, noteNo) || other.noteNo == noteNo)&&(identical(other.noteType, noteType) || other.noteType == noteType)&&(identical(other.entryDate, entryDate) || other.entryDate == entryDate)&&(identical(other.partyType, partyType) || other.partyType == partyType)&&(identical(other.partyName, partyName) || other.partyName == partyName)&&(identical(other.partyReference, partyReference) || other.partyReference == partyReference)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.relatedReceiptId, relatedReceiptId) || other.relatedReceiptId == relatedReceiptId)&&(identical(other.gstAmount, gstAmount) || other.gstAmount == gstAmount)&&(identical(other.entry, entry) || other.entry == entry)&&(identical(other.debitAccount, debitAccount) || other.debitAccount == debitAccount)&&(identical(other.creditAccount, creditAccount) || other.creditAccount == creditAccount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,noteId,noteNo,noteType,entryDate,partyType,partyName,partyReference,amount,reason,relatedReceiptId,gstAmount,entry,debitAccount,creditAccount);
}

@override
String toString() {
    return 'DebitCreditNote(noteId: $noteId, noteNo: $noteNo, noteType: $noteType, entryDate: $entryDate, partyType: $partyType, partyName: $partyName, partyReference: $partyReference, amount: $amount, reason: $reason, relatedReceiptId: $relatedReceiptId, gstAmount: $gstAmount, entry: $entry, debitAccount: $debitAccount, creditAccount: $creditAccount)';
}


}

/// @nodoc
abstract mixin class _$DebitCreditNoteCopyWith<$Res> implements $DebitCreditNoteCopyWith<$Res> {
  factory _$DebitCreditNoteCopyWith(_DebitCreditNote value, $Res Function(_DebitCreditNote) _then) = __$DebitCreditNoteCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'note_id') String noteId,@JsonKey(name: 'note_no') String noteNo,@JsonKey(name: 'note_type') String noteType,@JsonKey(name: 'entry_date') DateTime? entryDate,@JsonKey(name: 'party_type') String? partyType,@JsonKey(name: 'party_name') String partyName,@JsonKey(name: 'party_reference') String? partyReference,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal amount, String? reason,@JsonKey(name: 'related_receipt_id') String? relatedReceiptId,@JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) Decimal? gstAmount,@JsonKey(name: 'journal_entries') JournalEntry? entry,@JsonKey(name: 'debit_account') LedgerAccountRef? debitAccount,@JsonKey(name: 'credit_account') LedgerAccountRef? creditAccount
});


@override $JournalEntryCopyWith<$Res>? get entry;@override $LedgerAccountRefCopyWith<$Res>? get debitAccount;@override $LedgerAccountRefCopyWith<$Res>? get creditAccount;

}
/// @nodoc
class __$DebitCreditNoteCopyWithImpl<$Res>
    implements _$DebitCreditNoteCopyWith<$Res> {
  __$DebitCreditNoteCopyWithImpl(this._self, this._then);

  final _DebitCreditNote _self;
  final $Res Function(_DebitCreditNote) _then;

/// Create a copy of DebitCreditNote
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? noteId = null,Object? noteNo = null,Object? noteType = null,Object? entryDate = freezed,Object? partyType = freezed,Object? partyName = null,Object? partyReference = freezed,Object? amount = null,Object? reason = freezed,Object? relatedReceiptId = freezed,Object? gstAmount = freezed,Object? entry = freezed,Object? debitAccount = freezed,Object? creditAccount = freezed,}) {
  return _then(_DebitCreditNote(
noteId: null == noteId ? _self.noteId : noteId // ignore: cast_nullable_to_non_nullable
as String,noteNo: null == noteNo ? _self.noteNo : noteNo // ignore: cast_nullable_to_non_nullable
as String,noteType: null == noteType ? _self.noteType : noteType // ignore: cast_nullable_to_non_nullable
as String,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,partyType: freezed == partyType ? _self.partyType : partyType // ignore: cast_nullable_to_non_nullable
as String?,partyName: null == partyName ? _self.partyName : partyName // ignore: cast_nullable_to_non_nullable
as String,partyReference: freezed == partyReference ? _self.partyReference : partyReference // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,relatedReceiptId: freezed == relatedReceiptId ? _self.relatedReceiptId : relatedReceiptId // ignore: cast_nullable_to_non_nullable
as String?,gstAmount: freezed == gstAmount ? _self.gstAmount : gstAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,entry: freezed == entry ? _self.entry : entry // ignore: cast_nullable_to_non_nullable
as JournalEntry?,debitAccount: freezed == debitAccount ? _self.debitAccount : debitAccount // ignore: cast_nullable_to_non_nullable
as LedgerAccountRef?,creditAccount: freezed == creditAccount ? _self.creditAccount : creditAccount // ignore: cast_nullable_to_non_nullable
as LedgerAccountRef?,
  ));
}

/// Create a copy of DebitCreditNote
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JournalEntryCopyWith<$Res>? get entry {
    if (_self.entry == null) {
    return null;
  }

  return $JournalEntryCopyWith<$Res>(_self.entry!, (value) {
    return _then(_self.copyWith(entry: value));
  });
}/// Create a copy of DebitCreditNote
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<$Res>? get debitAccount {
    if (_self.debitAccount == null) {
    return null;
  }

  return $LedgerAccountRefCopyWith<$Res>(_self.debitAccount!, (value) {
    return _then(_self.copyWith(debitAccount: value));
  });
}/// Create a copy of DebitCreditNote
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<$Res>? get creditAccount {
    if (_self.creditAccount == null) {
    return null;
  }

  return $LedgerAccountRefCopyWith<$Res>(_self.creditAccount!, (value) {
    return _then(_self.copyWith(creditAccount: value));
  });
}
}


/// @nodoc
mixin _$BankReconciliationSummary {

@JsonKey(name: 'reconciliation_id') String get reconciliationId; LedgerAccountRef? get account;@JsonKey(name: 'as_of_date') DateTime? get asOfDate;@JsonKey(name: 'bank_statement_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get bankStatementBalance;/// OPEN / RECONCILED.
 String get status; String? get notes;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of BankReconciliationSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankReconciliationSummaryCopyWith<BankReconciliationSummary> get copyWith => _$BankReconciliationSummaryCopyWithImpl<BankReconciliationSummary>(this as BankReconciliationSummary, _$identity);

  /// Serializes this BankReconciliationSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BankReconciliationSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankReconciliationSummary&&(identical(other.reconciliationId, _this.reconciliationId) || other.reconciliationId == _this.reconciliationId)&&(identical(other.account, _this.account) || other.account == _this.account)&&(identical(other.asOfDate, _this.asOfDate) || other.asOfDate == _this.asOfDate)&&(identical(other.bankStatementBalance, _this.bankStatementBalance) || other.bankStatementBalance == _this.bankStatementBalance)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BankReconciliationSummary;
  return Object.hash(runtimeType,_this.reconciliationId,_this.account,_this.asOfDate,_this.bankStatementBalance,_this.status,_this.notes,_this.createdAt);
}

@override
String toString() {
  final _this = this as BankReconciliationSummary;
  return 'BankReconciliationSummary(reconciliationId: ${_this.reconciliationId}, account: ${_this.account}, asOfDate: ${_this.asOfDate}, bankStatementBalance: ${_this.bankStatementBalance}, status: ${_this.status}, notes: ${_this.notes}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $BankReconciliationSummaryCopyWith<$Res>  {
  factory $BankReconciliationSummaryCopyWith(BankReconciliationSummary value, $Res Function(BankReconciliationSummary) _then) = _$BankReconciliationSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'reconciliation_id') String reconciliationId, LedgerAccountRef? account,@JsonKey(name: 'as_of_date') DateTime? asOfDate,@JsonKey(name: 'bank_statement_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal bankStatementBalance, String status, String? notes,@JsonKey(name: 'created_at') DateTime? createdAt
});


$LedgerAccountRefCopyWith<$Res>? get account;

}
/// @nodoc
class _$BankReconciliationSummaryCopyWithImpl<$Res>
    implements $BankReconciliationSummaryCopyWith<$Res> {
  _$BankReconciliationSummaryCopyWithImpl(this._self, this._then);

  final BankReconciliationSummary _self;
  final $Res Function(BankReconciliationSummary) _then;

/// Create a copy of BankReconciliationSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reconciliationId = null,Object? account = freezed,Object? asOfDate = freezed,Object? bankStatementBalance = null,Object? status = null,Object? notes = freezed,Object? createdAt = freezed,}) {
  return _then(BankReconciliationSummary(
reconciliationId: null == reconciliationId ? _self.reconciliationId : reconciliationId // ignore: cast_nullable_to_non_nullable
as String,account: freezed == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as LedgerAccountRef?,asOfDate: freezed == asOfDate ? _self.asOfDate : asOfDate // ignore: cast_nullable_to_non_nullable
as DateTime?,bankStatementBalance: null == bankStatementBalance ? _self.bankStatementBalance : bankStatementBalance // ignore: cast_nullable_to_non_nullable
as Decimal,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of BankReconciliationSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<$Res>? get account {
    if (_self.account == null) {
    return null;
  }

  return $LedgerAccountRefCopyWith<$Res>(_self.account!, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}


/// Adds pattern-matching-related methods to [BankReconciliationSummary].
extension BankReconciliationSummaryPatterns on BankReconciliationSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankReconciliationSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankReconciliationSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankReconciliationSummary value)  $default,){
final _that = this;
switch (_that) {
case _BankReconciliationSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankReconciliationSummary value)?  $default,){
final _that = this;
switch (_that) {
case _BankReconciliationSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'reconciliation_id')  String reconciliationId,  LedgerAccountRef? account, @JsonKey(name: 'as_of_date')  DateTime? asOfDate, @JsonKey(name: 'bank_statement_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal bankStatementBalance,  String status,  String? notes, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankReconciliationSummary() when $default != null:
return $default(_that.reconciliationId,_that.account,_that.asOfDate,_that.bankStatementBalance,_that.status,_that.notes,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'reconciliation_id')  String reconciliationId,  LedgerAccountRef? account, @JsonKey(name: 'as_of_date')  DateTime? asOfDate, @JsonKey(name: 'bank_statement_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal bankStatementBalance,  String status,  String? notes, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _BankReconciliationSummary():
return $default(_that.reconciliationId,_that.account,_that.asOfDate,_that.bankStatementBalance,_that.status,_that.notes,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'reconciliation_id')  String reconciliationId,  LedgerAccountRef? account, @JsonKey(name: 'as_of_date')  DateTime? asOfDate, @JsonKey(name: 'bank_statement_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal bankStatementBalance,  String status,  String? notes, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _BankReconciliationSummary() when $default != null:
return $default(_that.reconciliationId,_that.account,_that.asOfDate,_that.bankStatementBalance,_that.status,_that.notes,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BankReconciliationSummary implements BankReconciliationSummary {
  const _BankReconciliationSummary({@JsonKey(name: 'reconciliation_id') required this.reconciliationId, this.account, @JsonKey(name: 'as_of_date') this.asOfDate, @JsonKey(name: 'bank_statement_balance', fromJson: decimalFromJson, toJson: decimalToJson) required this.bankStatementBalance, this.status = 'OPEN', this.notes, @JsonKey(name: 'created_at') this.createdAt});
  factory _BankReconciliationSummary.fromJson(Map<String, dynamic> json) => _$BankReconciliationSummaryFromJson(json);

@override@JsonKey(name: 'reconciliation_id') final  String reconciliationId;
@override final  LedgerAccountRef? account;
@override@JsonKey(name: 'as_of_date') final  DateTime? asOfDate;
@override@JsonKey(name: 'bank_statement_balance', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal bankStatementBalance;
/// OPEN / RECONCILED.
@override@JsonKey() final  String status;
@override final  String? notes;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of BankReconciliationSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankReconciliationSummaryCopyWith<_BankReconciliationSummary> get copyWith => __$BankReconciliationSummaryCopyWithImpl<_BankReconciliationSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BankReconciliationSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankReconciliationSummary&&(identical(other.reconciliationId, reconciliationId) || other.reconciliationId == reconciliationId)&&(identical(other.account, account) || other.account == account)&&(identical(other.asOfDate, asOfDate) || other.asOfDate == asOfDate)&&(identical(other.bankStatementBalance, bankStatementBalance) || other.bankStatementBalance == bankStatementBalance)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,reconciliationId,account,asOfDate,bankStatementBalance,status,notes,createdAt);
}

@override
String toString() {
    return 'BankReconciliationSummary(reconciliationId: $reconciliationId, account: $account, asOfDate: $asOfDate, bankStatementBalance: $bankStatementBalance, status: $status, notes: $notes, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BankReconciliationSummaryCopyWith<$Res> implements $BankReconciliationSummaryCopyWith<$Res> {
  factory _$BankReconciliationSummaryCopyWith(_BankReconciliationSummary value, $Res Function(_BankReconciliationSummary) _then) = __$BankReconciliationSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'reconciliation_id') String reconciliationId, LedgerAccountRef? account,@JsonKey(name: 'as_of_date') DateTime? asOfDate,@JsonKey(name: 'bank_statement_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal bankStatementBalance, String status, String? notes,@JsonKey(name: 'created_at') DateTime? createdAt
});


@override $LedgerAccountRefCopyWith<$Res>? get account;

}
/// @nodoc
class __$BankReconciliationSummaryCopyWithImpl<$Res>
    implements _$BankReconciliationSummaryCopyWith<$Res> {
  __$BankReconciliationSummaryCopyWithImpl(this._self, this._then);

  final _BankReconciliationSummary _self;
  final $Res Function(_BankReconciliationSummary) _then;

/// Create a copy of BankReconciliationSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reconciliationId = null,Object? account = freezed,Object? asOfDate = freezed,Object? bankStatementBalance = null,Object? status = null,Object? notes = freezed,Object? createdAt = freezed,}) {
  return _then(_BankReconciliationSummary(
reconciliationId: null == reconciliationId ? _self.reconciliationId : reconciliationId // ignore: cast_nullable_to_non_nullable
as String,account: freezed == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as LedgerAccountRef?,asOfDate: freezed == asOfDate ? _self.asOfDate : asOfDate // ignore: cast_nullable_to_non_nullable
as DateTime?,bankStatementBalance: null == bankStatementBalance ? _self.bankStatementBalance : bankStatementBalance // ignore: cast_nullable_to_non_nullable
as Decimal,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of BankReconciliationSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LedgerAccountRefCopyWith<$Res>? get account {
    if (_self.account == null) {
    return null;
  }

  return $LedgerAccountRefCopyWith<$Res>(_self.account!, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}


/// @nodoc
mixin _$ReconClearedBlock {

 List<BookLine> get lines;@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalDebit;@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get totalCredit;
/// Create a copy of ReconClearedBlock
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReconClearedBlockCopyWith<ReconClearedBlock> get copyWith => _$ReconClearedBlockCopyWithImpl<ReconClearedBlock>(this as ReconClearedBlock, _$identity);

  /// Serializes this ReconClearedBlock to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReconClearedBlock;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReconClearedBlock&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&(identical(other.totalDebit, _this.totalDebit) || other.totalDebit == _this.totalDebit)&&(identical(other.totalCredit, _this.totalCredit) || other.totalCredit == _this.totalCredit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReconClearedBlock;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.lines),_this.totalDebit,_this.totalCredit);
}

@override
String toString() {
  final _this = this as ReconClearedBlock;
  return 'ReconClearedBlock(lines: ${_this.lines}, totalDebit: ${_this.totalDebit}, totalCredit: ${_this.totalCredit})';
}


}

/// @nodoc
abstract mixin class $ReconClearedBlockCopyWith<$Res>  {
  factory $ReconClearedBlockCopyWith(ReconClearedBlock value, $Res Function(ReconClearedBlock) _then) = _$ReconClearedBlockCopyWithImpl;
@useResult
$Res call({
 List<BookLine> lines,@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDebit,@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalCredit
});




}
/// @nodoc
class _$ReconClearedBlockCopyWithImpl<$Res>
    implements $ReconClearedBlockCopyWith<$Res> {
  _$ReconClearedBlockCopyWithImpl(this._self, this._then);

  final ReconClearedBlock _self;
  final $Res Function(ReconClearedBlock) _then;

/// Create a copy of ReconClearedBlock
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lines = null,Object? totalDebit = null,Object? totalCredit = null,}) {
  return _then(ReconClearedBlock(
lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<BookLine>,totalDebit: null == totalDebit ? _self.totalDebit : totalDebit // ignore: cast_nullable_to_non_nullable
as Decimal,totalCredit: null == totalCredit ? _self.totalCredit : totalCredit // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

}


/// Adds pattern-matching-related methods to [ReconClearedBlock].
extension ReconClearedBlockPatterns on ReconClearedBlock {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReconClearedBlock value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReconClearedBlock() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReconClearedBlock value)  $default,){
final _that = this;
switch (_that) {
case _ReconClearedBlock():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReconClearedBlock value)?  $default,){
final _that = this;
switch (_that) {
case _ReconClearedBlock() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BookLine> lines, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReconClearedBlock() when $default != null:
return $default(_that.lines,_that.totalDebit,_that.totalCredit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BookLine> lines, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit)  $default,) {final _that = this;
switch (_that) {
case _ReconClearedBlock():
return $default(_that.lines,_that.totalDebit,_that.totalCredit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BookLine> lines, @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal totalCredit)?  $default,) {final _that = this;
switch (_that) {
case _ReconClearedBlock() when $default != null:
return $default(_that.lines,_that.totalDebit,_that.totalCredit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReconClearedBlock implements ReconClearedBlock {
  const _ReconClearedBlock({ List<BookLine> lines = const [], @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalDebit, @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) required this.totalCredit}): _lines = lines;
  factory _ReconClearedBlock.fromJson(Map<String, dynamic> json) => _$ReconClearedBlockFromJson(json);

 final  List<BookLine> _lines;
@override@JsonKey() List<BookLine> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalDebit;
@override@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal totalCredit;

/// Create a copy of ReconClearedBlock
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReconClearedBlockCopyWith<_ReconClearedBlock> get copyWith => __$ReconClearedBlockCopyWithImpl<_ReconClearedBlock>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReconClearedBlockToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReconClearedBlock&&const DeepCollectionEquality().equals(other.lines, _lines)&&(identical(other.totalDebit, totalDebit) || other.totalDebit == totalDebit)&&(identical(other.totalCredit, totalCredit) || other.totalCredit == totalCredit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_lines),totalDebit,totalCredit);
}

@override
String toString() {
    return 'ReconClearedBlock(lines: $lines, totalDebit: $totalDebit, totalCredit: $totalCredit)';
}


}

/// @nodoc
abstract mixin class _$ReconClearedBlockCopyWith<$Res> implements $ReconClearedBlockCopyWith<$Res> {
  factory _$ReconClearedBlockCopyWith(_ReconClearedBlock value, $Res Function(_ReconClearedBlock) _then) = __$ReconClearedBlockCopyWithImpl;
@override @useResult
$Res call({
 List<BookLine> lines,@JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalDebit,@JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal totalCredit
});




}
/// @nodoc
class __$ReconClearedBlockCopyWithImpl<$Res>
    implements _$ReconClearedBlockCopyWith<$Res> {
  __$ReconClearedBlockCopyWithImpl(this._self, this._then);

  final _ReconClearedBlock _self;
  final $Res Function(_ReconClearedBlock) _then;

/// Create a copy of ReconClearedBlock
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lines = null,Object? totalDebit = null,Object? totalCredit = null,}) {
  return _then(_ReconClearedBlock(
lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<BookLine>,totalDebit: null == totalDebit ? _self.totalDebit : totalDebit // ignore: cast_nullable_to_non_nullable
as Decimal,totalCredit: null == totalCredit ? _self.totalCredit : totalCredit // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}


}


/// @nodoc
mixin _$ReconOutstandingBlock {

 List<BookLine> get lines;/// Book debits (money in) not yet on the bank statement.
@JsonKey(name: 'deposits_in_transit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get depositsInTransit;/// Book credits (money out) not yet on the bank statement.
@JsonKey(name: 'outstanding_payments', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get outstandingPayments;
/// Create a copy of ReconOutstandingBlock
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReconOutstandingBlockCopyWith<ReconOutstandingBlock> get copyWith => _$ReconOutstandingBlockCopyWithImpl<ReconOutstandingBlock>(this as ReconOutstandingBlock, _$identity);

  /// Serializes this ReconOutstandingBlock to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReconOutstandingBlock;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReconOutstandingBlock&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&(identical(other.depositsInTransit, _this.depositsInTransit) || other.depositsInTransit == _this.depositsInTransit)&&(identical(other.outstandingPayments, _this.outstandingPayments) || other.outstandingPayments == _this.outstandingPayments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReconOutstandingBlock;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.lines),_this.depositsInTransit,_this.outstandingPayments);
}

@override
String toString() {
  final _this = this as ReconOutstandingBlock;
  return 'ReconOutstandingBlock(lines: ${_this.lines}, depositsInTransit: ${_this.depositsInTransit}, outstandingPayments: ${_this.outstandingPayments})';
}


}

/// @nodoc
abstract mixin class $ReconOutstandingBlockCopyWith<$Res>  {
  factory $ReconOutstandingBlockCopyWith(ReconOutstandingBlock value, $Res Function(ReconOutstandingBlock) _then) = _$ReconOutstandingBlockCopyWithImpl;
@useResult
$Res call({
 List<BookLine> lines,@JsonKey(name: 'deposits_in_transit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal depositsInTransit,@JsonKey(name: 'outstanding_payments', fromJson: decimalFromJson, toJson: decimalToJson) Decimal outstandingPayments
});




}
/// @nodoc
class _$ReconOutstandingBlockCopyWithImpl<$Res>
    implements $ReconOutstandingBlockCopyWith<$Res> {
  _$ReconOutstandingBlockCopyWithImpl(this._self, this._then);

  final ReconOutstandingBlock _self;
  final $Res Function(ReconOutstandingBlock) _then;

/// Create a copy of ReconOutstandingBlock
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lines = null,Object? depositsInTransit = null,Object? outstandingPayments = null,}) {
  return _then(ReconOutstandingBlock(
lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<BookLine>,depositsInTransit: null == depositsInTransit ? _self.depositsInTransit : depositsInTransit // ignore: cast_nullable_to_non_nullable
as Decimal,outstandingPayments: null == outstandingPayments ? _self.outstandingPayments : outstandingPayments // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}

}


/// Adds pattern-matching-related methods to [ReconOutstandingBlock].
extension ReconOutstandingBlockPatterns on ReconOutstandingBlock {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReconOutstandingBlock value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReconOutstandingBlock() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReconOutstandingBlock value)  $default,){
final _that = this;
switch (_that) {
case _ReconOutstandingBlock():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReconOutstandingBlock value)?  $default,){
final _that = this;
switch (_that) {
case _ReconOutstandingBlock() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BookLine> lines, @JsonKey(name: 'deposits_in_transit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal depositsInTransit, @JsonKey(name: 'outstanding_payments', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal outstandingPayments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReconOutstandingBlock() when $default != null:
return $default(_that.lines,_that.depositsInTransit,_that.outstandingPayments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BookLine> lines, @JsonKey(name: 'deposits_in_transit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal depositsInTransit, @JsonKey(name: 'outstanding_payments', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal outstandingPayments)  $default,) {final _that = this;
switch (_that) {
case _ReconOutstandingBlock():
return $default(_that.lines,_that.depositsInTransit,_that.outstandingPayments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BookLine> lines, @JsonKey(name: 'deposits_in_transit', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal depositsInTransit, @JsonKey(name: 'outstanding_payments', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal outstandingPayments)?  $default,) {final _that = this;
switch (_that) {
case _ReconOutstandingBlock() when $default != null:
return $default(_that.lines,_that.depositsInTransit,_that.outstandingPayments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReconOutstandingBlock implements ReconOutstandingBlock {
  const _ReconOutstandingBlock({ List<BookLine> lines = const [], @JsonKey(name: 'deposits_in_transit', fromJson: decimalFromJson, toJson: decimalToJson) required this.depositsInTransit, @JsonKey(name: 'outstanding_payments', fromJson: decimalFromJson, toJson: decimalToJson) required this.outstandingPayments}): _lines = lines;
  factory _ReconOutstandingBlock.fromJson(Map<String, dynamic> json) => _$ReconOutstandingBlockFromJson(json);

 final  List<BookLine> _lines;
@override@JsonKey() List<BookLine> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

/// Book debits (money in) not yet on the bank statement.
@override@JsonKey(name: 'deposits_in_transit', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal depositsInTransit;
/// Book credits (money out) not yet on the bank statement.
@override@JsonKey(name: 'outstanding_payments', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal outstandingPayments;

/// Create a copy of ReconOutstandingBlock
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReconOutstandingBlockCopyWith<_ReconOutstandingBlock> get copyWith => __$ReconOutstandingBlockCopyWithImpl<_ReconOutstandingBlock>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReconOutstandingBlockToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReconOutstandingBlock&&const DeepCollectionEquality().equals(other.lines, _lines)&&(identical(other.depositsInTransit, depositsInTransit) || other.depositsInTransit == depositsInTransit)&&(identical(other.outstandingPayments, outstandingPayments) || other.outstandingPayments == outstandingPayments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_lines),depositsInTransit,outstandingPayments);
}

@override
String toString() {
    return 'ReconOutstandingBlock(lines: $lines, depositsInTransit: $depositsInTransit, outstandingPayments: $outstandingPayments)';
}


}

/// @nodoc
abstract mixin class _$ReconOutstandingBlockCopyWith<$Res> implements $ReconOutstandingBlockCopyWith<$Res> {
  factory _$ReconOutstandingBlockCopyWith(_ReconOutstandingBlock value, $Res Function(_ReconOutstandingBlock) _then) = __$ReconOutstandingBlockCopyWithImpl;
@override @useResult
$Res call({
 List<BookLine> lines,@JsonKey(name: 'deposits_in_transit', fromJson: decimalFromJson, toJson: decimalToJson) Decimal depositsInTransit,@JsonKey(name: 'outstanding_payments', fromJson: decimalFromJson, toJson: decimalToJson) Decimal outstandingPayments
});




}
/// @nodoc
class __$ReconOutstandingBlockCopyWithImpl<$Res>
    implements _$ReconOutstandingBlockCopyWith<$Res> {
  __$ReconOutstandingBlockCopyWithImpl(this._self, this._then);

  final _ReconOutstandingBlock _self;
  final $Res Function(_ReconOutstandingBlock) _then;

/// Create a copy of ReconOutstandingBlock
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lines = null,Object? depositsInTransit = null,Object? outstandingPayments = null,}) {
  return _then(_ReconOutstandingBlock(
lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<BookLine>,depositsInTransit: null == depositsInTransit ? _self.depositsInTransit : depositsInTransit // ignore: cast_nullable_to_non_nullable
as Decimal,outstandingPayments: null == outstandingPayments ? _self.outstandingPayments : outstandingPayments // ignore: cast_nullable_to_non_nullable
as Decimal,
  ));
}


}


/// @nodoc
mixin _$BankReconciliation {

@JsonKey(name: 'reconciliation_id') String get reconciliationId;@JsonKey(name: 'account_id') String? get accountId;@JsonKey(name: 'as_of_date') DateTime? get asOfDate;@JsonKey(name: 'bank_statement_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get bankStatementBalance; String get status; String? get notes;@JsonKey(name: 'book_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get bookBalance; ReconClearedBlock? get cleared; ReconOutstandingBlock? get outstanding;@JsonKey(name: 'adjusted_bank_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal get adjustedBankBalance;@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal get difference;@JsonKey(name: 'is_balanced') bool get isBalanced;
/// Create a copy of BankReconciliation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankReconciliationCopyWith<BankReconciliation> get copyWith => _$BankReconciliationCopyWithImpl<BankReconciliation>(this as BankReconciliation, _$identity);

  /// Serializes this BankReconciliation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BankReconciliation;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankReconciliation&&(identical(other.reconciliationId, _this.reconciliationId) || other.reconciliationId == _this.reconciliationId)&&(identical(other.accountId, _this.accountId) || other.accountId == _this.accountId)&&(identical(other.asOfDate, _this.asOfDate) || other.asOfDate == _this.asOfDate)&&(identical(other.bankStatementBalance, _this.bankStatementBalance) || other.bankStatementBalance == _this.bankStatementBalance)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.notes, _this.notes) || other.notes == _this.notes)&&(identical(other.bookBalance, _this.bookBalance) || other.bookBalance == _this.bookBalance)&&(identical(other.cleared, _this.cleared) || other.cleared == _this.cleared)&&(identical(other.outstanding, _this.outstanding) || other.outstanding == _this.outstanding)&&(identical(other.adjustedBankBalance, _this.adjustedBankBalance) || other.adjustedBankBalance == _this.adjustedBankBalance)&&(identical(other.difference, _this.difference) || other.difference == _this.difference)&&(identical(other.isBalanced, _this.isBalanced) || other.isBalanced == _this.isBalanced));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BankReconciliation;
  return Object.hash(runtimeType,_this.reconciliationId,_this.accountId,_this.asOfDate,_this.bankStatementBalance,_this.status,_this.notes,_this.bookBalance,_this.cleared,_this.outstanding,_this.adjustedBankBalance,_this.difference,_this.isBalanced);
}

@override
String toString() {
  final _this = this as BankReconciliation;
  return 'BankReconciliation(reconciliationId: ${_this.reconciliationId}, accountId: ${_this.accountId}, asOfDate: ${_this.asOfDate}, bankStatementBalance: ${_this.bankStatementBalance}, status: ${_this.status}, notes: ${_this.notes}, bookBalance: ${_this.bookBalance}, cleared: ${_this.cleared}, outstanding: ${_this.outstanding}, adjustedBankBalance: ${_this.adjustedBankBalance}, difference: ${_this.difference}, isBalanced: ${_this.isBalanced})';
}


}

/// @nodoc
abstract mixin class $BankReconciliationCopyWith<$Res>  {
  factory $BankReconciliationCopyWith(BankReconciliation value, $Res Function(BankReconciliation) _then) = _$BankReconciliationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'reconciliation_id') String reconciliationId,@JsonKey(name: 'account_id') String? accountId,@JsonKey(name: 'as_of_date') DateTime? asOfDate,@JsonKey(name: 'bank_statement_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal bankStatementBalance, String status, String? notes,@JsonKey(name: 'book_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal bookBalance, ReconClearedBlock? cleared, ReconOutstandingBlock? outstanding,@JsonKey(name: 'adjusted_bank_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal adjustedBankBalance,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal difference,@JsonKey(name: 'is_balanced') bool isBalanced
});


$ReconClearedBlockCopyWith<$Res>? get cleared;$ReconOutstandingBlockCopyWith<$Res>? get outstanding;

}
/// @nodoc
class _$BankReconciliationCopyWithImpl<$Res>
    implements $BankReconciliationCopyWith<$Res> {
  _$BankReconciliationCopyWithImpl(this._self, this._then);

  final BankReconciliation _self;
  final $Res Function(BankReconciliation) _then;

/// Create a copy of BankReconciliation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reconciliationId = null,Object? accountId = freezed,Object? asOfDate = freezed,Object? bankStatementBalance = null,Object? status = null,Object? notes = freezed,Object? bookBalance = null,Object? cleared = freezed,Object? outstanding = freezed,Object? adjustedBankBalance = null,Object? difference = null,Object? isBalanced = null,}) {
  return _then(BankReconciliation(
reconciliationId: null == reconciliationId ? _self.reconciliationId : reconciliationId // ignore: cast_nullable_to_non_nullable
as String,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,asOfDate: freezed == asOfDate ? _self.asOfDate : asOfDate // ignore: cast_nullable_to_non_nullable
as DateTime?,bankStatementBalance: null == bankStatementBalance ? _self.bankStatementBalance : bankStatementBalance // ignore: cast_nullable_to_non_nullable
as Decimal,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,bookBalance: null == bookBalance ? _self.bookBalance : bookBalance // ignore: cast_nullable_to_non_nullable
as Decimal,cleared: freezed == cleared ? _self.cleared : cleared // ignore: cast_nullable_to_non_nullable
as ReconClearedBlock?,outstanding: freezed == outstanding ? _self.outstanding : outstanding // ignore: cast_nullable_to_non_nullable
as ReconOutstandingBlock?,adjustedBankBalance: null == adjustedBankBalance ? _self.adjustedBankBalance : adjustedBankBalance // ignore: cast_nullable_to_non_nullable
as Decimal,difference: null == difference ? _self.difference : difference // ignore: cast_nullable_to_non_nullable
as Decimal,isBalanced: null == isBalanced ? _self.isBalanced : isBalanced // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of BankReconciliation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReconClearedBlockCopyWith<$Res>? get cleared {
    if (_self.cleared == null) {
    return null;
  }

  return $ReconClearedBlockCopyWith<$Res>(_self.cleared!, (value) {
    return _then(_self.copyWith(cleared: value));
  });
}/// Create a copy of BankReconciliation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReconOutstandingBlockCopyWith<$Res>? get outstanding {
    if (_self.outstanding == null) {
    return null;
  }

  return $ReconOutstandingBlockCopyWith<$Res>(_self.outstanding!, (value) {
    return _then(_self.copyWith(outstanding: value));
  });
}
}


/// Adds pattern-matching-related methods to [BankReconciliation].
extension BankReconciliationPatterns on BankReconciliation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankReconciliation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankReconciliation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankReconciliation value)  $default,){
final _that = this;
switch (_that) {
case _BankReconciliation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankReconciliation value)?  $default,){
final _that = this;
switch (_that) {
case _BankReconciliation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'reconciliation_id')  String reconciliationId, @JsonKey(name: 'account_id')  String? accountId, @JsonKey(name: 'as_of_date')  DateTime? asOfDate, @JsonKey(name: 'bank_statement_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal bankStatementBalance,  String status,  String? notes, @JsonKey(name: 'book_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal bookBalance,  ReconClearedBlock? cleared,  ReconOutstandingBlock? outstanding, @JsonKey(name: 'adjusted_bank_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal adjustedBankBalance, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal difference, @JsonKey(name: 'is_balanced')  bool isBalanced)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankReconciliation() when $default != null:
return $default(_that.reconciliationId,_that.accountId,_that.asOfDate,_that.bankStatementBalance,_that.status,_that.notes,_that.bookBalance,_that.cleared,_that.outstanding,_that.adjustedBankBalance,_that.difference,_that.isBalanced);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'reconciliation_id')  String reconciliationId, @JsonKey(name: 'account_id')  String? accountId, @JsonKey(name: 'as_of_date')  DateTime? asOfDate, @JsonKey(name: 'bank_statement_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal bankStatementBalance,  String status,  String? notes, @JsonKey(name: 'book_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal bookBalance,  ReconClearedBlock? cleared,  ReconOutstandingBlock? outstanding, @JsonKey(name: 'adjusted_bank_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal adjustedBankBalance, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal difference, @JsonKey(name: 'is_balanced')  bool isBalanced)  $default,) {final _that = this;
switch (_that) {
case _BankReconciliation():
return $default(_that.reconciliationId,_that.accountId,_that.asOfDate,_that.bankStatementBalance,_that.status,_that.notes,_that.bookBalance,_that.cleared,_that.outstanding,_that.adjustedBankBalance,_that.difference,_that.isBalanced);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'reconciliation_id')  String reconciliationId, @JsonKey(name: 'account_id')  String? accountId, @JsonKey(name: 'as_of_date')  DateTime? asOfDate, @JsonKey(name: 'bank_statement_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal bankStatementBalance,  String status,  String? notes, @JsonKey(name: 'book_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal bookBalance,  ReconClearedBlock? cleared,  ReconOutstandingBlock? outstanding, @JsonKey(name: 'adjusted_bank_balance', fromJson: decimalFromJson, toJson: decimalToJson)  Decimal adjustedBankBalance, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson)  Decimal difference, @JsonKey(name: 'is_balanced')  bool isBalanced)?  $default,) {final _that = this;
switch (_that) {
case _BankReconciliation() when $default != null:
return $default(_that.reconciliationId,_that.accountId,_that.asOfDate,_that.bankStatementBalance,_that.status,_that.notes,_that.bookBalance,_that.cleared,_that.outstanding,_that.adjustedBankBalance,_that.difference,_that.isBalanced);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BankReconciliation implements BankReconciliation {
  const _BankReconciliation({@JsonKey(name: 'reconciliation_id') required this.reconciliationId, @JsonKey(name: 'account_id') this.accountId, @JsonKey(name: 'as_of_date') this.asOfDate, @JsonKey(name: 'bank_statement_balance', fromJson: decimalFromJson, toJson: decimalToJson) required this.bankStatementBalance, this.status = 'OPEN', this.notes, @JsonKey(name: 'book_balance', fromJson: decimalFromJson, toJson: decimalToJson) required this.bookBalance, this.cleared, this.outstanding, @JsonKey(name: 'adjusted_bank_balance', fromJson: decimalFromJson, toJson: decimalToJson) required this.adjustedBankBalance, @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required this.difference, @JsonKey(name: 'is_balanced') this.isBalanced = false});
  factory _BankReconciliation.fromJson(Map<String, dynamic> json) => _$BankReconciliationFromJson(json);

@override@JsonKey(name: 'reconciliation_id') final  String reconciliationId;
@override@JsonKey(name: 'account_id') final  String? accountId;
@override@JsonKey(name: 'as_of_date') final  DateTime? asOfDate;
@override@JsonKey(name: 'bank_statement_balance', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal bankStatementBalance;
@override@JsonKey() final  String status;
@override final  String? notes;
@override@JsonKey(name: 'book_balance', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal bookBalance;
@override final  ReconClearedBlock? cleared;
@override final  ReconOutstandingBlock? outstanding;
@override@JsonKey(name: 'adjusted_bank_balance', fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal adjustedBankBalance;
@override@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) final  Decimal difference;
@override@JsonKey(name: 'is_balanced') final  bool isBalanced;

/// Create a copy of BankReconciliation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankReconciliationCopyWith<_BankReconciliation> get copyWith => __$BankReconciliationCopyWithImpl<_BankReconciliation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BankReconciliationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankReconciliation&&(identical(other.reconciliationId, reconciliationId) || other.reconciliationId == reconciliationId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.asOfDate, asOfDate) || other.asOfDate == asOfDate)&&(identical(other.bankStatementBalance, bankStatementBalance) || other.bankStatementBalance == bankStatementBalance)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.bookBalance, bookBalance) || other.bookBalance == bookBalance)&&(identical(other.cleared, cleared) || other.cleared == cleared)&&(identical(other.outstanding, outstanding) || other.outstanding == outstanding)&&(identical(other.adjustedBankBalance, adjustedBankBalance) || other.adjustedBankBalance == adjustedBankBalance)&&(identical(other.difference, difference) || other.difference == difference)&&(identical(other.isBalanced, isBalanced) || other.isBalanced == isBalanced));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,reconciliationId,accountId,asOfDate,bankStatementBalance,status,notes,bookBalance,cleared,outstanding,adjustedBankBalance,difference,isBalanced);
}

@override
String toString() {
    return 'BankReconciliation(reconciliationId: $reconciliationId, accountId: $accountId, asOfDate: $asOfDate, bankStatementBalance: $bankStatementBalance, status: $status, notes: $notes, bookBalance: $bookBalance, cleared: $cleared, outstanding: $outstanding, adjustedBankBalance: $adjustedBankBalance, difference: $difference, isBalanced: $isBalanced)';
}


}

/// @nodoc
abstract mixin class _$BankReconciliationCopyWith<$Res> implements $BankReconciliationCopyWith<$Res> {
  factory _$BankReconciliationCopyWith(_BankReconciliation value, $Res Function(_BankReconciliation) _then) = __$BankReconciliationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'reconciliation_id') String reconciliationId,@JsonKey(name: 'account_id') String? accountId,@JsonKey(name: 'as_of_date') DateTime? asOfDate,@JsonKey(name: 'bank_statement_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal bankStatementBalance, String status, String? notes,@JsonKey(name: 'book_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal bookBalance, ReconClearedBlock? cleared, ReconOutstandingBlock? outstanding,@JsonKey(name: 'adjusted_bank_balance', fromJson: decimalFromJson, toJson: decimalToJson) Decimal adjustedBankBalance,@JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) Decimal difference,@JsonKey(name: 'is_balanced') bool isBalanced
});


@override $ReconClearedBlockCopyWith<$Res>? get cleared;@override $ReconOutstandingBlockCopyWith<$Res>? get outstanding;

}
/// @nodoc
class __$BankReconciliationCopyWithImpl<$Res>
    implements _$BankReconciliationCopyWith<$Res> {
  __$BankReconciliationCopyWithImpl(this._self, this._then);

  final _BankReconciliation _self;
  final $Res Function(_BankReconciliation) _then;

/// Create a copy of BankReconciliation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reconciliationId = null,Object? accountId = freezed,Object? asOfDate = freezed,Object? bankStatementBalance = null,Object? status = null,Object? notes = freezed,Object? bookBalance = null,Object? cleared = freezed,Object? outstanding = freezed,Object? adjustedBankBalance = null,Object? difference = null,Object? isBalanced = null,}) {
  return _then(_BankReconciliation(
reconciliationId: null == reconciliationId ? _self.reconciliationId : reconciliationId // ignore: cast_nullable_to_non_nullable
as String,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,asOfDate: freezed == asOfDate ? _self.asOfDate : asOfDate // ignore: cast_nullable_to_non_nullable
as DateTime?,bankStatementBalance: null == bankStatementBalance ? _self.bankStatementBalance : bankStatementBalance // ignore: cast_nullable_to_non_nullable
as Decimal,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,bookBalance: null == bookBalance ? _self.bookBalance : bookBalance // ignore: cast_nullable_to_non_nullable
as Decimal,cleared: freezed == cleared ? _self.cleared : cleared // ignore: cast_nullable_to_non_nullable
as ReconClearedBlock?,outstanding: freezed == outstanding ? _self.outstanding : outstanding // ignore: cast_nullable_to_non_nullable
as ReconOutstandingBlock?,adjustedBankBalance: null == adjustedBankBalance ? _self.adjustedBankBalance : adjustedBankBalance // ignore: cast_nullable_to_non_nullable
as Decimal,difference: null == difference ? _self.difference : difference // ignore: cast_nullable_to_non_nullable
as Decimal,isBalanced: null == isBalanced ? _self.isBalanced : isBalanced // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of BankReconciliation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReconClearedBlockCopyWith<$Res>? get cleared {
    if (_self.cleared == null) {
    return null;
  }

  return $ReconClearedBlockCopyWith<$Res>(_self.cleared!, (value) {
    return _then(_self.copyWith(cleared: value));
  });
}/// Create a copy of BankReconciliation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReconOutstandingBlockCopyWith<$Res>? get outstanding {
    if (_self.outstanding == null) {
    return null;
  }

  return $ReconOutstandingBlockCopyWith<$Res>(_self.outstanding!, (value) {
    return _then(_self.copyWith(outstanding: value));
  });
}
}

// dart format on
