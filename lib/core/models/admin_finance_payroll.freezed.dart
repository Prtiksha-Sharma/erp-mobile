// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_finance_payroll.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PayrollSettings {

@JsonKey(name: 'pf_percentage')@NullableDecimalConverter() Decimal? get pfPercentage;@JsonKey(name: 'esi_percentage')@NullableDecimalConverter() Decimal? get esiPercentage;@JsonKey(name: 'pt_monthly_amount')@NullableDecimalConverter() Decimal? get ptMonthlyAmount;@JsonKey(name: 'paid_leave_days_per_month')@LooseNumConverter() num? get paidLeaveDaysPerMonth;
/// Create a copy of PayrollSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayrollSettingsCopyWith<PayrollSettings> get copyWith => _$PayrollSettingsCopyWithImpl<PayrollSettings>(this as PayrollSettings, _$identity);

  /// Serializes this PayrollSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PayrollSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayrollSettings&&(identical(other.pfPercentage, _this.pfPercentage) || other.pfPercentage == _this.pfPercentage)&&(identical(other.esiPercentage, _this.esiPercentage) || other.esiPercentage == _this.esiPercentage)&&(identical(other.ptMonthlyAmount, _this.ptMonthlyAmount) || other.ptMonthlyAmount == _this.ptMonthlyAmount)&&(identical(other.paidLeaveDaysPerMonth, _this.paidLeaveDaysPerMonth) || other.paidLeaveDaysPerMonth == _this.paidLeaveDaysPerMonth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PayrollSettings;
  return Object.hash(runtimeType,_this.pfPercentage,_this.esiPercentage,_this.ptMonthlyAmount,_this.paidLeaveDaysPerMonth);
}

@override
String toString() {
  final _this = this as PayrollSettings;
  return 'PayrollSettings(pfPercentage: ${_this.pfPercentage}, esiPercentage: ${_this.esiPercentage}, ptMonthlyAmount: ${_this.ptMonthlyAmount}, paidLeaveDaysPerMonth: ${_this.paidLeaveDaysPerMonth})';
}


}

/// @nodoc
abstract mixin class $PayrollSettingsCopyWith<$Res>  {
  factory $PayrollSettingsCopyWith(PayrollSettings value, $Res Function(PayrollSettings) _then) = _$PayrollSettingsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'pf_percentage')@NullableDecimalConverter() Decimal? pfPercentage,@JsonKey(name: 'esi_percentage')@NullableDecimalConverter() Decimal? esiPercentage,@JsonKey(name: 'pt_monthly_amount')@NullableDecimalConverter() Decimal? ptMonthlyAmount,@JsonKey(name: 'paid_leave_days_per_month')@LooseNumConverter() num? paidLeaveDaysPerMonth
});




}
/// @nodoc
class _$PayrollSettingsCopyWithImpl<$Res>
    implements $PayrollSettingsCopyWith<$Res> {
  _$PayrollSettingsCopyWithImpl(this._self, this._then);

  final PayrollSettings _self;
  final $Res Function(PayrollSettings) _then;

/// Create a copy of PayrollSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pfPercentage = freezed,Object? esiPercentage = freezed,Object? ptMonthlyAmount = freezed,Object? paidLeaveDaysPerMonth = freezed,}) {
  return _then(PayrollSettings(
pfPercentage: freezed == pfPercentage ? _self.pfPercentage : pfPercentage // ignore: cast_nullable_to_non_nullable
as Decimal?,esiPercentage: freezed == esiPercentage ? _self.esiPercentage : esiPercentage // ignore: cast_nullable_to_non_nullable
as Decimal?,ptMonthlyAmount: freezed == ptMonthlyAmount ? _self.ptMonthlyAmount : ptMonthlyAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,paidLeaveDaysPerMonth: freezed == paidLeaveDaysPerMonth ? _self.paidLeaveDaysPerMonth : paidLeaveDaysPerMonth // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [PayrollSettings].
extension PayrollSettingsPatterns on PayrollSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayrollSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayrollSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayrollSettings value)  $default,){
final _that = this;
switch (_that) {
case _PayrollSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayrollSettings value)?  $default,){
final _that = this;
switch (_that) {
case _PayrollSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'pf_percentage')@NullableDecimalConverter()  Decimal? pfPercentage, @JsonKey(name: 'esi_percentage')@NullableDecimalConverter()  Decimal? esiPercentage, @JsonKey(name: 'pt_monthly_amount')@NullableDecimalConverter()  Decimal? ptMonthlyAmount, @JsonKey(name: 'paid_leave_days_per_month')@LooseNumConverter()  num? paidLeaveDaysPerMonth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayrollSettings() when $default != null:
return $default(_that.pfPercentage,_that.esiPercentage,_that.ptMonthlyAmount,_that.paidLeaveDaysPerMonth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'pf_percentage')@NullableDecimalConverter()  Decimal? pfPercentage, @JsonKey(name: 'esi_percentage')@NullableDecimalConverter()  Decimal? esiPercentage, @JsonKey(name: 'pt_monthly_amount')@NullableDecimalConverter()  Decimal? ptMonthlyAmount, @JsonKey(name: 'paid_leave_days_per_month')@LooseNumConverter()  num? paidLeaveDaysPerMonth)  $default,) {final _that = this;
switch (_that) {
case _PayrollSettings():
return $default(_that.pfPercentage,_that.esiPercentage,_that.ptMonthlyAmount,_that.paidLeaveDaysPerMonth);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'pf_percentage')@NullableDecimalConverter()  Decimal? pfPercentage, @JsonKey(name: 'esi_percentage')@NullableDecimalConverter()  Decimal? esiPercentage, @JsonKey(name: 'pt_monthly_amount')@NullableDecimalConverter()  Decimal? ptMonthlyAmount, @JsonKey(name: 'paid_leave_days_per_month')@LooseNumConverter()  num? paidLeaveDaysPerMonth)?  $default,) {final _that = this;
switch (_that) {
case _PayrollSettings() when $default != null:
return $default(_that.pfPercentage,_that.esiPercentage,_that.ptMonthlyAmount,_that.paidLeaveDaysPerMonth);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PayrollSettings implements PayrollSettings {
  const _PayrollSettings({@JsonKey(name: 'pf_percentage')@NullableDecimalConverter() this.pfPercentage, @JsonKey(name: 'esi_percentage')@NullableDecimalConverter() this.esiPercentage, @JsonKey(name: 'pt_monthly_amount')@NullableDecimalConverter() this.ptMonthlyAmount, @JsonKey(name: 'paid_leave_days_per_month')@LooseNumConverter() this.paidLeaveDaysPerMonth});
  factory _PayrollSettings.fromJson(Map<String, dynamic> json) => _$PayrollSettingsFromJson(json);

@override@JsonKey(name: 'pf_percentage')@NullableDecimalConverter() final  Decimal? pfPercentage;
@override@JsonKey(name: 'esi_percentage')@NullableDecimalConverter() final  Decimal? esiPercentage;
@override@JsonKey(name: 'pt_monthly_amount')@NullableDecimalConverter() final  Decimal? ptMonthlyAmount;
@override@JsonKey(name: 'paid_leave_days_per_month')@LooseNumConverter() final  num? paidLeaveDaysPerMonth;

/// Create a copy of PayrollSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayrollSettingsCopyWith<_PayrollSettings> get copyWith => __$PayrollSettingsCopyWithImpl<_PayrollSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PayrollSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayrollSettings&&(identical(other.pfPercentage, pfPercentage) || other.pfPercentage == pfPercentage)&&(identical(other.esiPercentage, esiPercentage) || other.esiPercentage == esiPercentage)&&(identical(other.ptMonthlyAmount, ptMonthlyAmount) || other.ptMonthlyAmount == ptMonthlyAmount)&&(identical(other.paidLeaveDaysPerMonth, paidLeaveDaysPerMonth) || other.paidLeaveDaysPerMonth == paidLeaveDaysPerMonth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,pfPercentage,esiPercentage,ptMonthlyAmount,paidLeaveDaysPerMonth);
}

@override
String toString() {
    return 'PayrollSettings(pfPercentage: $pfPercentage, esiPercentage: $esiPercentage, ptMonthlyAmount: $ptMonthlyAmount, paidLeaveDaysPerMonth: $paidLeaveDaysPerMonth)';
}


}

/// @nodoc
abstract mixin class _$PayrollSettingsCopyWith<$Res> implements $PayrollSettingsCopyWith<$Res> {
  factory _$PayrollSettingsCopyWith(_PayrollSettings value, $Res Function(_PayrollSettings) _then) = __$PayrollSettingsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'pf_percentage')@NullableDecimalConverter() Decimal? pfPercentage,@JsonKey(name: 'esi_percentage')@NullableDecimalConverter() Decimal? esiPercentage,@JsonKey(name: 'pt_monthly_amount')@NullableDecimalConverter() Decimal? ptMonthlyAmount,@JsonKey(name: 'paid_leave_days_per_month')@LooseNumConverter() num? paidLeaveDaysPerMonth
});




}
/// @nodoc
class __$PayrollSettingsCopyWithImpl<$Res>
    implements _$PayrollSettingsCopyWith<$Res> {
  __$PayrollSettingsCopyWithImpl(this._self, this._then);

  final _PayrollSettings _self;
  final $Res Function(_PayrollSettings) _then;

/// Create a copy of PayrollSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pfPercentage = freezed,Object? esiPercentage = freezed,Object? ptMonthlyAmount = freezed,Object? paidLeaveDaysPerMonth = freezed,}) {
  return _then(_PayrollSettings(
pfPercentage: freezed == pfPercentage ? _self.pfPercentage : pfPercentage // ignore: cast_nullable_to_non_nullable
as Decimal?,esiPercentage: freezed == esiPercentage ? _self.esiPercentage : esiPercentage // ignore: cast_nullable_to_non_nullable
as Decimal?,ptMonthlyAmount: freezed == ptMonthlyAmount ? _self.ptMonthlyAmount : ptMonthlyAmount // ignore: cast_nullable_to_non_nullable
as Decimal?,paidLeaveDaysPerMonth: freezed == paidLeaveDaysPerMonth ? _self.paidLeaveDaysPerMonth : paidLeaveDaysPerMonth // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}


/// @nodoc
mixin _$PayrollTemplateCount {

 int get assignments;
/// Create a copy of PayrollTemplateCount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayrollTemplateCountCopyWith<PayrollTemplateCount> get copyWith => _$PayrollTemplateCountCopyWithImpl<PayrollTemplateCount>(this as PayrollTemplateCount, _$identity);

  /// Serializes this PayrollTemplateCount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PayrollTemplateCount;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayrollTemplateCount&&(identical(other.assignments, _this.assignments) || other.assignments == _this.assignments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PayrollTemplateCount;
  return Object.hash(runtimeType,_this.assignments);
}

@override
String toString() {
  final _this = this as PayrollTemplateCount;
  return 'PayrollTemplateCount(assignments: ${_this.assignments})';
}


}

/// @nodoc
abstract mixin class $PayrollTemplateCountCopyWith<$Res>  {
  factory $PayrollTemplateCountCopyWith(PayrollTemplateCount value, $Res Function(PayrollTemplateCount) _then) = _$PayrollTemplateCountCopyWithImpl;
@useResult
$Res call({
 int assignments
});




}
/// @nodoc
class _$PayrollTemplateCountCopyWithImpl<$Res>
    implements $PayrollTemplateCountCopyWith<$Res> {
  _$PayrollTemplateCountCopyWithImpl(this._self, this._then);

  final PayrollTemplateCount _self;
  final $Res Function(PayrollTemplateCount) _then;

/// Create a copy of PayrollTemplateCount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assignments = null,}) {
  return _then(PayrollTemplateCount(
assignments: null == assignments ? _self.assignments : assignments // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PayrollTemplateCount].
extension PayrollTemplateCountPatterns on PayrollTemplateCount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayrollTemplateCount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayrollTemplateCount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayrollTemplateCount value)  $default,){
final _that = this;
switch (_that) {
case _PayrollTemplateCount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayrollTemplateCount value)?  $default,){
final _that = this;
switch (_that) {
case _PayrollTemplateCount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int assignments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayrollTemplateCount() when $default != null:
return $default(_that.assignments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int assignments)  $default,) {final _that = this;
switch (_that) {
case _PayrollTemplateCount():
return $default(_that.assignments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int assignments)?  $default,) {final _that = this;
switch (_that) {
case _PayrollTemplateCount() when $default != null:
return $default(_that.assignments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PayrollTemplateCount implements PayrollTemplateCount {
  const _PayrollTemplateCount({this.assignments = 0});
  factory _PayrollTemplateCount.fromJson(Map<String, dynamic> json) => _$PayrollTemplateCountFromJson(json);

@override@JsonKey() final  int assignments;

/// Create a copy of PayrollTemplateCount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayrollTemplateCountCopyWith<_PayrollTemplateCount> get copyWith => __$PayrollTemplateCountCopyWithImpl<_PayrollTemplateCount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PayrollTemplateCountToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayrollTemplateCount&&(identical(other.assignments, assignments) || other.assignments == assignments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,assignments);
}

@override
String toString() {
    return 'PayrollTemplateCount(assignments: $assignments)';
}


}

/// @nodoc
abstract mixin class _$PayrollTemplateCountCopyWith<$Res> implements $PayrollTemplateCountCopyWith<$Res> {
  factory _$PayrollTemplateCountCopyWith(_PayrollTemplateCount value, $Res Function(_PayrollTemplateCount) _then) = __$PayrollTemplateCountCopyWithImpl;
@override @useResult
$Res call({
 int assignments
});




}
/// @nodoc
class __$PayrollTemplateCountCopyWithImpl<$Res>
    implements _$PayrollTemplateCountCopyWith<$Res> {
  __$PayrollTemplateCountCopyWithImpl(this._self, this._then);

  final _PayrollTemplateCount _self;
  final $Res Function(_PayrollTemplateCount) _then;

/// Create a copy of PayrollTemplateCount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assignments = null,}) {
  return _then(_PayrollTemplateCount(
assignments: null == assignments ? _self.assignments : assignments // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PayrollSalaryTemplate {

@JsonKey(name: 'template_id') String get templateId;@JsonKey(name: 'template_name') String get templateName; String? get description; List<SalaryComponent> get components;@JsonKey(name: '_count') PayrollTemplateCount? get count;
/// Create a copy of PayrollSalaryTemplate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayrollSalaryTemplateCopyWith<PayrollSalaryTemplate> get copyWith => _$PayrollSalaryTemplateCopyWithImpl<PayrollSalaryTemplate>(this as PayrollSalaryTemplate, _$identity);

  /// Serializes this PayrollSalaryTemplate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PayrollSalaryTemplate;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayrollSalaryTemplate&&(identical(other.templateId, _this.templateId) || other.templateId == _this.templateId)&&(identical(other.templateName, _this.templateName) || other.templateName == _this.templateName)&&(identical(other.description, _this.description) || other.description == _this.description)&&const DeepCollectionEquality().equals(other.components, _this.components)&&(identical(other.count, _this.count) || other.count == _this.count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PayrollSalaryTemplate;
  return Object.hash(runtimeType,_this.templateId,_this.templateName,_this.description,const DeepCollectionEquality().hash(_this.components),_this.count);
}

@override
String toString() {
  final _this = this as PayrollSalaryTemplate;
  return 'PayrollSalaryTemplate(templateId: ${_this.templateId}, templateName: ${_this.templateName}, description: ${_this.description}, components: ${_this.components}, count: ${_this.count})';
}


}

/// @nodoc
abstract mixin class $PayrollSalaryTemplateCopyWith<$Res>  {
  factory $PayrollSalaryTemplateCopyWith(PayrollSalaryTemplate value, $Res Function(PayrollSalaryTemplate) _then) = _$PayrollSalaryTemplateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'template_id') String templateId,@JsonKey(name: 'template_name') String templateName, String? description, List<SalaryComponent> components,@JsonKey(name: '_count') PayrollTemplateCount? count
});


$PayrollTemplateCountCopyWith<$Res>? get count;

}
/// @nodoc
class _$PayrollSalaryTemplateCopyWithImpl<$Res>
    implements $PayrollSalaryTemplateCopyWith<$Res> {
  _$PayrollSalaryTemplateCopyWithImpl(this._self, this._then);

  final PayrollSalaryTemplate _self;
  final $Res Function(PayrollSalaryTemplate) _then;

/// Create a copy of PayrollSalaryTemplate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? templateId = null,Object? templateName = null,Object? description = freezed,Object? components = null,Object? count = freezed,}) {
  return _then(PayrollSalaryTemplate(
templateId: null == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String,templateName: null == templateName ? _self.templateName : templateName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,components: null == components ? _self.components : components // ignore: cast_nullable_to_non_nullable
as List<SalaryComponent>,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as PayrollTemplateCount?,
  ));
}
/// Create a copy of PayrollSalaryTemplate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PayrollTemplateCountCopyWith<$Res>? get count {
    if (_self.count == null) {
    return null;
  }

  return $PayrollTemplateCountCopyWith<$Res>(_self.count!, (value) {
    return _then(_self.copyWith(count: value));
  });
}
}


/// Adds pattern-matching-related methods to [PayrollSalaryTemplate].
extension PayrollSalaryTemplatePatterns on PayrollSalaryTemplate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayrollSalaryTemplate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayrollSalaryTemplate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayrollSalaryTemplate value)  $default,){
final _that = this;
switch (_that) {
case _PayrollSalaryTemplate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayrollSalaryTemplate value)?  $default,){
final _that = this;
switch (_that) {
case _PayrollSalaryTemplate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'template_id')  String templateId, @JsonKey(name: 'template_name')  String templateName,  String? description,  List<SalaryComponent> components, @JsonKey(name: '_count')  PayrollTemplateCount? count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayrollSalaryTemplate() when $default != null:
return $default(_that.templateId,_that.templateName,_that.description,_that.components,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'template_id')  String templateId, @JsonKey(name: 'template_name')  String templateName,  String? description,  List<SalaryComponent> components, @JsonKey(name: '_count')  PayrollTemplateCount? count)  $default,) {final _that = this;
switch (_that) {
case _PayrollSalaryTemplate():
return $default(_that.templateId,_that.templateName,_that.description,_that.components,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'template_id')  String templateId, @JsonKey(name: 'template_name')  String templateName,  String? description,  List<SalaryComponent> components, @JsonKey(name: '_count')  PayrollTemplateCount? count)?  $default,) {final _that = this;
switch (_that) {
case _PayrollSalaryTemplate() when $default != null:
return $default(_that.templateId,_that.templateName,_that.description,_that.components,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PayrollSalaryTemplate implements PayrollSalaryTemplate {
  const _PayrollSalaryTemplate({@JsonKey(name: 'template_id') required this.templateId, @JsonKey(name: 'template_name') required this.templateName, this.description,  List<SalaryComponent> components = const <SalaryComponent>[], @JsonKey(name: '_count') this.count}): _components = components;
  factory _PayrollSalaryTemplate.fromJson(Map<String, dynamic> json) => _$PayrollSalaryTemplateFromJson(json);

@override@JsonKey(name: 'template_id') final  String templateId;
@override@JsonKey(name: 'template_name') final  String templateName;
@override final  String? description;
 final  List<SalaryComponent> _components;
@override@JsonKey() List<SalaryComponent> get components {
  if (_components is EqualUnmodifiableListView) return _components;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_components);
}

@override@JsonKey(name: '_count') final  PayrollTemplateCount? count;

/// Create a copy of PayrollSalaryTemplate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayrollSalaryTemplateCopyWith<_PayrollSalaryTemplate> get copyWith => __$PayrollSalaryTemplateCopyWithImpl<_PayrollSalaryTemplate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PayrollSalaryTemplateToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayrollSalaryTemplate&&(identical(other.templateId, templateId) || other.templateId == templateId)&&(identical(other.templateName, templateName) || other.templateName == templateName)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.components, _components)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,templateId,templateName,description,const DeepCollectionEquality().hash(_components),count);
}

@override
String toString() {
    return 'PayrollSalaryTemplate(templateId: $templateId, templateName: $templateName, description: $description, components: $components, count: $count)';
}


}

/// @nodoc
abstract mixin class _$PayrollSalaryTemplateCopyWith<$Res> implements $PayrollSalaryTemplateCopyWith<$Res> {
  factory _$PayrollSalaryTemplateCopyWith(_PayrollSalaryTemplate value, $Res Function(_PayrollSalaryTemplate) _then) = __$PayrollSalaryTemplateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'template_id') String templateId,@JsonKey(name: 'template_name') String templateName, String? description, List<SalaryComponent> components,@JsonKey(name: '_count') PayrollTemplateCount? count
});


@override $PayrollTemplateCountCopyWith<$Res>? get count;

}
/// @nodoc
class __$PayrollSalaryTemplateCopyWithImpl<$Res>
    implements _$PayrollSalaryTemplateCopyWith<$Res> {
  __$PayrollSalaryTemplateCopyWithImpl(this._self, this._then);

  final _PayrollSalaryTemplate _self;
  final $Res Function(_PayrollSalaryTemplate) _then;

/// Create a copy of PayrollSalaryTemplate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? templateId = null,Object? templateName = null,Object? description = freezed,Object? components = null,Object? count = freezed,}) {
  return _then(_PayrollSalaryTemplate(
templateId: null == templateId ? _self.templateId : templateId // ignore: cast_nullable_to_non_nullable
as String,templateName: null == templateName ? _self.templateName : templateName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,components: null == components ? _self._components : components // ignore: cast_nullable_to_non_nullable
as List<SalaryComponent>,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as PayrollTemplateCount?,
  ));
}

/// Create a copy of PayrollSalaryTemplate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PayrollTemplateCountCopyWith<$Res>? get count {
    if (_self.count == null) {
    return null;
  }

  return $PayrollTemplateCountCopyWith<$Res>(_self.count!, (value) {
    return _then(_self.copyWith(count: value));
  });
}
}


/// @nodoc
mixin _$PayslipStaffRef {

@JsonKey(name: 'full_name') String? get fullName;@JsonKey(name: 'employee_code') String? get employeeCode; String? get designation;
/// Create a copy of PayslipStaffRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayslipStaffRefCopyWith<PayslipStaffRef> get copyWith => _$PayslipStaffRefCopyWithImpl<PayslipStaffRef>(this as PayslipStaffRef, _$identity);

  /// Serializes this PayslipStaffRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PayslipStaffRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayslipStaffRef&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.designation, _this.designation) || other.designation == _this.designation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PayslipStaffRef;
  return Object.hash(runtimeType,_this.fullName,_this.employeeCode,_this.designation);
}

@override
String toString() {
  final _this = this as PayslipStaffRef;
  return 'PayslipStaffRef(fullName: ${_this.fullName}, employeeCode: ${_this.employeeCode}, designation: ${_this.designation})';
}


}

/// @nodoc
abstract mixin class $PayslipStaffRefCopyWith<$Res>  {
  factory $PayslipStaffRefCopyWith(PayslipStaffRef value, $Res Function(PayslipStaffRef) _then) = _$PayslipStaffRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'employee_code') String? employeeCode, String? designation
});




}
/// @nodoc
class _$PayslipStaffRefCopyWithImpl<$Res>
    implements $PayslipStaffRefCopyWith<$Res> {
  _$PayslipStaffRefCopyWithImpl(this._self, this._then);

  final PayslipStaffRef _self;
  final $Res Function(PayslipStaffRef) _then;

/// Create a copy of PayslipStaffRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = freezed,Object? employeeCode = freezed,Object? designation = freezed,}) {
  return _then(PayslipStaffRef(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PayslipStaffRef].
extension PayslipStaffRefPatterns on PayslipStaffRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayslipStaffRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayslipStaffRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayslipStaffRef value)  $default,){
final _that = this;
switch (_that) {
case _PayslipStaffRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayslipStaffRef value)?  $default,){
final _that = this;
switch (_that) {
case _PayslipStaffRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? designation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayslipStaffRef() when $default != null:
return $default(_that.fullName,_that.employeeCode,_that.designation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? designation)  $default,) {final _that = this;
switch (_that) {
case _PayslipStaffRef():
return $default(_that.fullName,_that.employeeCode,_that.designation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? designation)?  $default,) {final _that = this;
switch (_that) {
case _PayslipStaffRef() when $default != null:
return $default(_that.fullName,_that.employeeCode,_that.designation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PayslipStaffRef implements PayslipStaffRef {
  const _PayslipStaffRef({@JsonKey(name: 'full_name') this.fullName, @JsonKey(name: 'employee_code') this.employeeCode, this.designation});
  factory _PayslipStaffRef.fromJson(Map<String, dynamic> json) => _$PayslipStaffRefFromJson(json);

@override@JsonKey(name: 'full_name') final  String? fullName;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override final  String? designation;

/// Create a copy of PayslipStaffRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayslipStaffRefCopyWith<_PayslipStaffRef> get copyWith => __$PayslipStaffRefCopyWithImpl<_PayslipStaffRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PayslipStaffRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayslipStaffRef&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.designation, designation) || other.designation == designation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,fullName,employeeCode,designation);
}

@override
String toString() {
    return 'PayslipStaffRef(fullName: $fullName, employeeCode: $employeeCode, designation: $designation)';
}


}

/// @nodoc
abstract mixin class _$PayslipStaffRefCopyWith<$Res> implements $PayslipStaffRefCopyWith<$Res> {
  factory _$PayslipStaffRefCopyWith(_PayslipStaffRef value, $Res Function(_PayslipStaffRef) _then) = __$PayslipStaffRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'employee_code') String? employeeCode, String? designation
});




}
/// @nodoc
class __$PayslipStaffRefCopyWithImpl<$Res>
    implements _$PayslipStaffRefCopyWith<$Res> {
  __$PayslipStaffRefCopyWithImpl(this._self, this._then);

  final _PayslipStaffRef _self;
  final $Res Function(_PayslipStaffRef) _then;

/// Create a copy of PayslipStaffRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = freezed,Object? employeeCode = freezed,Object? designation = freezed,}) {
  return _then(_PayslipStaffRef(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Payslip {

@JsonKey(name: 'payslip_id') String get payslipId;@JsonKey(name: 'staff_id') String? get staffId;@JsonKey(name: 'payroll_month') int? get payrollMonth;@JsonKey(name: 'payroll_year') int? get payrollYear;@JsonKey(name: 'gross_earnings')@DecimalConverter() Decimal get grossEarnings;@JsonKey(name: 'total_deductions')@DecimalConverter() Decimal get totalDeductions;@JsonKey(name: 'net_pay')@DecimalConverter() Decimal get netPay; String get status;@JsonKey(name: 'staff_accounts') PayslipStaffRef? get staff;@JsonKey(name: 'full_name') String? get fullName;@JsonKey(name: 'employee_code') String? get employeeCode;
/// Create a copy of Payslip
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayslipCopyWith<Payslip> get copyWith => _$PayslipCopyWithImpl<Payslip>(this as Payslip, _$identity);

  /// Serializes this Payslip to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Payslip;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payslip&&(identical(other.payslipId, _this.payslipId) || other.payslipId == _this.payslipId)&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.payrollMonth, _this.payrollMonth) || other.payrollMonth == _this.payrollMonth)&&(identical(other.payrollYear, _this.payrollYear) || other.payrollYear == _this.payrollYear)&&(identical(other.grossEarnings, _this.grossEarnings) || other.grossEarnings == _this.grossEarnings)&&(identical(other.totalDeductions, _this.totalDeductions) || other.totalDeductions == _this.totalDeductions)&&(identical(other.netPay, _this.netPay) || other.netPay == _this.netPay)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.staff, _this.staff) || other.staff == _this.staff)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Payslip;
  return Object.hash(runtimeType,_this.payslipId,_this.staffId,_this.payrollMonth,_this.payrollYear,_this.grossEarnings,_this.totalDeductions,_this.netPay,_this.status,_this.staff,_this.fullName,_this.employeeCode);
}

@override
String toString() {
  final _this = this as Payslip;
  return 'Payslip(payslipId: ${_this.payslipId}, staffId: ${_this.staffId}, payrollMonth: ${_this.payrollMonth}, payrollYear: ${_this.payrollYear}, grossEarnings: ${_this.grossEarnings}, totalDeductions: ${_this.totalDeductions}, netPay: ${_this.netPay}, status: ${_this.status}, staff: ${_this.staff}, fullName: ${_this.fullName}, employeeCode: ${_this.employeeCode})';
}


}

/// @nodoc
abstract mixin class $PayslipCopyWith<$Res>  {
  factory $PayslipCopyWith(Payslip value, $Res Function(Payslip) _then) = _$PayslipCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'payslip_id') String payslipId,@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'payroll_month') int? payrollMonth,@JsonKey(name: 'payroll_year') int? payrollYear,@JsonKey(name: 'gross_earnings')@DecimalConverter() Decimal grossEarnings,@JsonKey(name: 'total_deductions')@DecimalConverter() Decimal totalDeductions,@JsonKey(name: 'net_pay')@DecimalConverter() Decimal netPay, String status,@JsonKey(name: 'staff_accounts') PayslipStaffRef? staff,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'employee_code') String? employeeCode
});


$PayslipStaffRefCopyWith<$Res>? get staff;

}
/// @nodoc
class _$PayslipCopyWithImpl<$Res>
    implements $PayslipCopyWith<$Res> {
  _$PayslipCopyWithImpl(this._self, this._then);

  final Payslip _self;
  final $Res Function(Payslip) _then;

/// Create a copy of Payslip
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? payslipId = null,Object? staffId = freezed,Object? payrollMonth = freezed,Object? payrollYear = freezed,Object? grossEarnings = null,Object? totalDeductions = null,Object? netPay = null,Object? status = null,Object? staff = freezed,Object? fullName = freezed,Object? employeeCode = freezed,}) {
  return _then(Payslip(
payslipId: null == payslipId ? _self.payslipId : payslipId // ignore: cast_nullable_to_non_nullable
as String,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,payrollMonth: freezed == payrollMonth ? _self.payrollMonth : payrollMonth // ignore: cast_nullable_to_non_nullable
as int?,payrollYear: freezed == payrollYear ? _self.payrollYear : payrollYear // ignore: cast_nullable_to_non_nullable
as int?,grossEarnings: null == grossEarnings ? _self.grossEarnings : grossEarnings // ignore: cast_nullable_to_non_nullable
as Decimal,totalDeductions: null == totalDeductions ? _self.totalDeductions : totalDeductions // ignore: cast_nullable_to_non_nullable
as Decimal,netPay: null == netPay ? _self.netPay : netPay // ignore: cast_nullable_to_non_nullable
as Decimal,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,staff: freezed == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as PayslipStaffRef?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Payslip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PayslipStaffRefCopyWith<$Res>? get staff {
    if (_self.staff == null) {
    return null;
  }

  return $PayslipStaffRefCopyWith<$Res>(_self.staff!, (value) {
    return _then(_self.copyWith(staff: value));
  });
}
}


/// Adds pattern-matching-related methods to [Payslip].
extension PayslipPatterns on Payslip {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Payslip value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Payslip() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Payslip value)  $default,){
final _that = this;
switch (_that) {
case _Payslip():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Payslip value)?  $default,){
final _that = this;
switch (_that) {
case _Payslip() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'payslip_id')  String payslipId, @JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'payroll_month')  int? payrollMonth, @JsonKey(name: 'payroll_year')  int? payrollYear, @JsonKey(name: 'gross_earnings')@DecimalConverter()  Decimal grossEarnings, @JsonKey(name: 'total_deductions')@DecimalConverter()  Decimal totalDeductions, @JsonKey(name: 'net_pay')@DecimalConverter()  Decimal netPay,  String status, @JsonKey(name: 'staff_accounts')  PayslipStaffRef? staff, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Payslip() when $default != null:
return $default(_that.payslipId,_that.staffId,_that.payrollMonth,_that.payrollYear,_that.grossEarnings,_that.totalDeductions,_that.netPay,_that.status,_that.staff,_that.fullName,_that.employeeCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'payslip_id')  String payslipId, @JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'payroll_month')  int? payrollMonth, @JsonKey(name: 'payroll_year')  int? payrollYear, @JsonKey(name: 'gross_earnings')@DecimalConverter()  Decimal grossEarnings, @JsonKey(name: 'total_deductions')@DecimalConverter()  Decimal totalDeductions, @JsonKey(name: 'net_pay')@DecimalConverter()  Decimal netPay,  String status, @JsonKey(name: 'staff_accounts')  PayslipStaffRef? staff, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode)  $default,) {final _that = this;
switch (_that) {
case _Payslip():
return $default(_that.payslipId,_that.staffId,_that.payrollMonth,_that.payrollYear,_that.grossEarnings,_that.totalDeductions,_that.netPay,_that.status,_that.staff,_that.fullName,_that.employeeCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'payslip_id')  String payslipId, @JsonKey(name: 'staff_id')  String? staffId, @JsonKey(name: 'payroll_month')  int? payrollMonth, @JsonKey(name: 'payroll_year')  int? payrollYear, @JsonKey(name: 'gross_earnings')@DecimalConverter()  Decimal grossEarnings, @JsonKey(name: 'total_deductions')@DecimalConverter()  Decimal totalDeductions, @JsonKey(name: 'net_pay')@DecimalConverter()  Decimal netPay,  String status, @JsonKey(name: 'staff_accounts')  PayslipStaffRef? staff, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode)?  $default,) {final _that = this;
switch (_that) {
case _Payslip() when $default != null:
return $default(_that.payslipId,_that.staffId,_that.payrollMonth,_that.payrollYear,_that.grossEarnings,_that.totalDeductions,_that.netPay,_that.status,_that.staff,_that.fullName,_that.employeeCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Payslip implements Payslip {
  const _Payslip({@JsonKey(name: 'payslip_id') required this.payslipId, @JsonKey(name: 'staff_id') this.staffId, @JsonKey(name: 'payroll_month') this.payrollMonth, @JsonKey(name: 'payroll_year') this.payrollYear, @JsonKey(name: 'gross_earnings')@DecimalConverter() required this.grossEarnings, @JsonKey(name: 'total_deductions')@DecimalConverter() required this.totalDeductions, @JsonKey(name: 'net_pay')@DecimalConverter() required this.netPay, this.status = 'GENERATED', @JsonKey(name: 'staff_accounts') this.staff, @JsonKey(name: 'full_name') this.fullName, @JsonKey(name: 'employee_code') this.employeeCode});
  factory _Payslip.fromJson(Map<String, dynamic> json) => _$PayslipFromJson(json);

@override@JsonKey(name: 'payslip_id') final  String payslipId;
@override@JsonKey(name: 'staff_id') final  String? staffId;
@override@JsonKey(name: 'payroll_month') final  int? payrollMonth;
@override@JsonKey(name: 'payroll_year') final  int? payrollYear;
@override@JsonKey(name: 'gross_earnings')@DecimalConverter() final  Decimal grossEarnings;
@override@JsonKey(name: 'total_deductions')@DecimalConverter() final  Decimal totalDeductions;
@override@JsonKey(name: 'net_pay')@DecimalConverter() final  Decimal netPay;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'staff_accounts') final  PayslipStaffRef? staff;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;

/// Create a copy of Payslip
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayslipCopyWith<_Payslip> get copyWith => __$PayslipCopyWithImpl<_Payslip>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PayslipToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Payslip&&(identical(other.payslipId, payslipId) || other.payslipId == payslipId)&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.payrollMonth, payrollMonth) || other.payrollMonth == payrollMonth)&&(identical(other.payrollYear, payrollYear) || other.payrollYear == payrollYear)&&(identical(other.grossEarnings, grossEarnings) || other.grossEarnings == grossEarnings)&&(identical(other.totalDeductions, totalDeductions) || other.totalDeductions == totalDeductions)&&(identical(other.netPay, netPay) || other.netPay == netPay)&&(identical(other.status, status) || other.status == status)&&(identical(other.staff, staff) || other.staff == staff)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,payslipId,staffId,payrollMonth,payrollYear,grossEarnings,totalDeductions,netPay,status,staff,fullName,employeeCode);
}

@override
String toString() {
    return 'Payslip(payslipId: $payslipId, staffId: $staffId, payrollMonth: $payrollMonth, payrollYear: $payrollYear, grossEarnings: $grossEarnings, totalDeductions: $totalDeductions, netPay: $netPay, status: $status, staff: $staff, fullName: $fullName, employeeCode: $employeeCode)';
}


}

/// @nodoc
abstract mixin class _$PayslipCopyWith<$Res> implements $PayslipCopyWith<$Res> {
  factory _$PayslipCopyWith(_Payslip value, $Res Function(_Payslip) _then) = __$PayslipCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'payslip_id') String payslipId,@JsonKey(name: 'staff_id') String? staffId,@JsonKey(name: 'payroll_month') int? payrollMonth,@JsonKey(name: 'payroll_year') int? payrollYear,@JsonKey(name: 'gross_earnings')@DecimalConverter() Decimal grossEarnings,@JsonKey(name: 'total_deductions')@DecimalConverter() Decimal totalDeductions,@JsonKey(name: 'net_pay')@DecimalConverter() Decimal netPay, String status,@JsonKey(name: 'staff_accounts') PayslipStaffRef? staff,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'employee_code') String? employeeCode
});


@override $PayslipStaffRefCopyWith<$Res>? get staff;

}
/// @nodoc
class __$PayslipCopyWithImpl<$Res>
    implements _$PayslipCopyWith<$Res> {
  __$PayslipCopyWithImpl(this._self, this._then);

  final _Payslip _self;
  final $Res Function(_Payslip) _then;

/// Create a copy of Payslip
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? payslipId = null,Object? staffId = freezed,Object? payrollMonth = freezed,Object? payrollYear = freezed,Object? grossEarnings = null,Object? totalDeductions = null,Object? netPay = null,Object? status = null,Object? staff = freezed,Object? fullName = freezed,Object? employeeCode = freezed,}) {
  return _then(_Payslip(
payslipId: null == payslipId ? _self.payslipId : payslipId // ignore: cast_nullable_to_non_nullable
as String,staffId: freezed == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String?,payrollMonth: freezed == payrollMonth ? _self.payrollMonth : payrollMonth // ignore: cast_nullable_to_non_nullable
as int?,payrollYear: freezed == payrollYear ? _self.payrollYear : payrollYear // ignore: cast_nullable_to_non_nullable
as int?,grossEarnings: null == grossEarnings ? _self.grossEarnings : grossEarnings // ignore: cast_nullable_to_non_nullable
as Decimal,totalDeductions: null == totalDeductions ? _self.totalDeductions : totalDeductions // ignore: cast_nullable_to_non_nullable
as Decimal,netPay: null == netPay ? _self.netPay : netPay // ignore: cast_nullable_to_non_nullable
as Decimal,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,staff: freezed == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as PayslipStaffRef?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Payslip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PayslipStaffRefCopyWith<$Res>? get staff {
    if (_self.staff == null) {
    return null;
  }

  return $PayslipStaffRefCopyWith<$Res>(_self.staff!, (value) {
    return _then(_self.copyWith(staff: value));
  });
}
}


/// @nodoc
mixin _$PayslipSkip {

@JsonKey(name: 'staff_id') String get staffId;@JsonKey(name: 'full_name') String? get fullName;@JsonKey(name: 'employee_code') String? get employeeCode; String? get reason;
/// Create a copy of PayslipSkip
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayslipSkipCopyWith<PayslipSkip> get copyWith => _$PayslipSkipCopyWithImpl<PayslipSkip>(this as PayslipSkip, _$identity);

  /// Serializes this PayslipSkip to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PayslipSkip;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayslipSkip&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.employeeCode, _this.employeeCode) || other.employeeCode == _this.employeeCode)&&(identical(other.reason, _this.reason) || other.reason == _this.reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PayslipSkip;
  return Object.hash(runtimeType,_this.staffId,_this.fullName,_this.employeeCode,_this.reason);
}

@override
String toString() {
  final _this = this as PayslipSkip;
  return 'PayslipSkip(staffId: ${_this.staffId}, fullName: ${_this.fullName}, employeeCode: ${_this.employeeCode}, reason: ${_this.reason})';
}


}

/// @nodoc
abstract mixin class $PayslipSkipCopyWith<$Res>  {
  factory $PayslipSkipCopyWith(PayslipSkip value, $Res Function(PayslipSkip) _then) = _$PayslipSkipCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'employee_code') String? employeeCode, String? reason
});




}
/// @nodoc
class _$PayslipSkipCopyWithImpl<$Res>
    implements $PayslipSkipCopyWith<$Res> {
  _$PayslipSkipCopyWithImpl(this._self, this._then);

  final PayslipSkip _self;
  final $Res Function(PayslipSkip) _then;

/// Create a copy of PayslipSkip
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = null,Object? fullName = freezed,Object? employeeCode = freezed,Object? reason = freezed,}) {
  return _then(PayslipSkip(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PayslipSkip].
extension PayslipSkipPatterns on PayslipSkip {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayslipSkip value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayslipSkip() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayslipSkip value)  $default,){
final _that = this;
switch (_that) {
case _PayslipSkip():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayslipSkip value)?  $default,){
final _that = this;
switch (_that) {
case _PayslipSkip() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayslipSkip() when $default != null:
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? reason)  $default,) {final _that = this;
switch (_that) {
case _PayslipSkip():
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'employee_code')  String? employeeCode,  String? reason)?  $default,) {final _that = this;
switch (_that) {
case _PayslipSkip() when $default != null:
return $default(_that.staffId,_that.fullName,_that.employeeCode,_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PayslipSkip implements PayslipSkip {
  const _PayslipSkip({@JsonKey(name: 'staff_id') required this.staffId, @JsonKey(name: 'full_name') this.fullName, @JsonKey(name: 'employee_code') this.employeeCode, this.reason});
  factory _PayslipSkip.fromJson(Map<String, dynamic> json) => _$PayslipSkipFromJson(json);

@override@JsonKey(name: 'staff_id') final  String staffId;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override@JsonKey(name: 'employee_code') final  String? employeeCode;
@override final  String? reason;

/// Create a copy of PayslipSkip
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayslipSkipCopyWith<_PayslipSkip> get copyWith => __$PayslipSkipCopyWithImpl<_PayslipSkip>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PayslipSkipToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayslipSkip&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,fullName,employeeCode,reason);
}

@override
String toString() {
    return 'PayslipSkip(staffId: $staffId, fullName: $fullName, employeeCode: $employeeCode, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$PayslipSkipCopyWith<$Res> implements $PayslipSkipCopyWith<$Res> {
  factory _$PayslipSkipCopyWith(_PayslipSkip value, $Res Function(_PayslipSkip) _then) = __$PayslipSkipCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'employee_code') String? employeeCode, String? reason
});




}
/// @nodoc
class __$PayslipSkipCopyWithImpl<$Res>
    implements _$PayslipSkipCopyWith<$Res> {
  __$PayslipSkipCopyWithImpl(this._self, this._then);

  final _PayslipSkip _self;
  final $Res Function(_PayslipSkip) _then;

/// Create a copy of PayslipSkip
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = null,Object? fullName = freezed,Object? employeeCode = freezed,Object? reason = freezed,}) {
  return _then(_PayslipSkip(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,employeeCode: freezed == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PayslipGenerationResult {

 List<Payslip> get generated; List<PayslipSkip> get skipped;@JsonKey(name: 'total_active_employees') int get totalActiveEmployees;
/// Create a copy of PayslipGenerationResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayslipGenerationResultCopyWith<PayslipGenerationResult> get copyWith => _$PayslipGenerationResultCopyWithImpl<PayslipGenerationResult>(this as PayslipGenerationResult, _$identity);

  /// Serializes this PayslipGenerationResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PayslipGenerationResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayslipGenerationResult&&const DeepCollectionEquality().equals(other.generated, _this.generated)&&const DeepCollectionEquality().equals(other.skipped, _this.skipped)&&(identical(other.totalActiveEmployees, _this.totalActiveEmployees) || other.totalActiveEmployees == _this.totalActiveEmployees));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PayslipGenerationResult;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.generated),const DeepCollectionEquality().hash(_this.skipped),_this.totalActiveEmployees);
}

@override
String toString() {
  final _this = this as PayslipGenerationResult;
  return 'PayslipGenerationResult(generated: ${_this.generated}, skipped: ${_this.skipped}, totalActiveEmployees: ${_this.totalActiveEmployees})';
}


}

/// @nodoc
abstract mixin class $PayslipGenerationResultCopyWith<$Res>  {
  factory $PayslipGenerationResultCopyWith(PayslipGenerationResult value, $Res Function(PayslipGenerationResult) _then) = _$PayslipGenerationResultCopyWithImpl;
@useResult
$Res call({
 List<Payslip> generated, List<PayslipSkip> skipped,@JsonKey(name: 'total_active_employees') int totalActiveEmployees
});




}
/// @nodoc
class _$PayslipGenerationResultCopyWithImpl<$Res>
    implements $PayslipGenerationResultCopyWith<$Res> {
  _$PayslipGenerationResultCopyWithImpl(this._self, this._then);

  final PayslipGenerationResult _self;
  final $Res Function(PayslipGenerationResult) _then;

/// Create a copy of PayslipGenerationResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? generated = null,Object? skipped = null,Object? totalActiveEmployees = null,}) {
  return _then(PayslipGenerationResult(
generated: null == generated ? _self.generated : generated // ignore: cast_nullable_to_non_nullable
as List<Payslip>,skipped: null == skipped ? _self.skipped : skipped // ignore: cast_nullable_to_non_nullable
as List<PayslipSkip>,totalActiveEmployees: null == totalActiveEmployees ? _self.totalActiveEmployees : totalActiveEmployees // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PayslipGenerationResult].
extension PayslipGenerationResultPatterns on PayslipGenerationResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayslipGenerationResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayslipGenerationResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayslipGenerationResult value)  $default,){
final _that = this;
switch (_that) {
case _PayslipGenerationResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayslipGenerationResult value)?  $default,){
final _that = this;
switch (_that) {
case _PayslipGenerationResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Payslip> generated,  List<PayslipSkip> skipped, @JsonKey(name: 'total_active_employees')  int totalActiveEmployees)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayslipGenerationResult() when $default != null:
return $default(_that.generated,_that.skipped,_that.totalActiveEmployees);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Payslip> generated,  List<PayslipSkip> skipped, @JsonKey(name: 'total_active_employees')  int totalActiveEmployees)  $default,) {final _that = this;
switch (_that) {
case _PayslipGenerationResult():
return $default(_that.generated,_that.skipped,_that.totalActiveEmployees);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Payslip> generated,  List<PayslipSkip> skipped, @JsonKey(name: 'total_active_employees')  int totalActiveEmployees)?  $default,) {final _that = this;
switch (_that) {
case _PayslipGenerationResult() when $default != null:
return $default(_that.generated,_that.skipped,_that.totalActiveEmployees);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PayslipGenerationResult implements PayslipGenerationResult {
  const _PayslipGenerationResult({ List<Payslip> generated = const <Payslip>[],  List<PayslipSkip> skipped = const <PayslipSkip>[], @JsonKey(name: 'total_active_employees') this.totalActiveEmployees = 0}): _generated = generated,_skipped = skipped;
  factory _PayslipGenerationResult.fromJson(Map<String, dynamic> json) => _$PayslipGenerationResultFromJson(json);

 final  List<Payslip> _generated;
@override@JsonKey() List<Payslip> get generated {
  if (_generated is EqualUnmodifiableListView) return _generated;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_generated);
}

 final  List<PayslipSkip> _skipped;
@override@JsonKey() List<PayslipSkip> get skipped {
  if (_skipped is EqualUnmodifiableListView) return _skipped;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skipped);
}

@override@JsonKey(name: 'total_active_employees') final  int totalActiveEmployees;

/// Create a copy of PayslipGenerationResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayslipGenerationResultCopyWith<_PayslipGenerationResult> get copyWith => __$PayslipGenerationResultCopyWithImpl<_PayslipGenerationResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PayslipGenerationResultToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayslipGenerationResult&&const DeepCollectionEquality().equals(other.generated, _generated)&&const DeepCollectionEquality().equals(other.skipped, _skipped)&&(identical(other.totalActiveEmployees, totalActiveEmployees) || other.totalActiveEmployees == totalActiveEmployees));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_generated),const DeepCollectionEquality().hash(_skipped),totalActiveEmployees);
}

@override
String toString() {
    return 'PayslipGenerationResult(generated: $generated, skipped: $skipped, totalActiveEmployees: $totalActiveEmployees)';
}


}

/// @nodoc
abstract mixin class _$PayslipGenerationResultCopyWith<$Res> implements $PayslipGenerationResultCopyWith<$Res> {
  factory _$PayslipGenerationResultCopyWith(_PayslipGenerationResult value, $Res Function(_PayslipGenerationResult) _then) = __$PayslipGenerationResultCopyWithImpl;
@override @useResult
$Res call({
 List<Payslip> generated, List<PayslipSkip> skipped,@JsonKey(name: 'total_active_employees') int totalActiveEmployees
});




}
/// @nodoc
class __$PayslipGenerationResultCopyWithImpl<$Res>
    implements _$PayslipGenerationResultCopyWith<$Res> {
  __$PayslipGenerationResultCopyWithImpl(this._self, this._then);

  final _PayslipGenerationResult _self;
  final $Res Function(_PayslipGenerationResult) _then;

/// Create a copy of PayslipGenerationResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? generated = null,Object? skipped = null,Object? totalActiveEmployees = null,}) {
  return _then(_PayslipGenerationResult(
generated: null == generated ? _self._generated : generated // ignore: cast_nullable_to_non_nullable
as List<Payslip>,skipped: null == skipped ? _self._skipped : skipped // ignore: cast_nullable_to_non_nullable
as List<PayslipSkip>,totalActiveEmployees: null == totalActiveEmployees ? _self.totalActiveEmployees : totalActiveEmployees // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
