// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_lookups.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminClassOption {

@JsonKey(name: 'class_id') String get classId;@JsonKey(name: 'class_name') String get className;@JsonKey(name: 'display_order') int? get displayOrder;@JsonKey(name: 'registration_fee')@NullableDecimalConverter() Decimal? get registrationFee; List<SectionRef> get sections;
/// Create a copy of AdminClassOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminClassOptionCopyWith<AdminClassOption> get copyWith => _$AdminClassOptionCopyWithImpl<AdminClassOption>(this as AdminClassOption, _$identity);

  /// Serializes this AdminClassOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminClassOption;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminClassOption&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.displayOrder, _this.displayOrder) || other.displayOrder == _this.displayOrder)&&(identical(other.registrationFee, _this.registrationFee) || other.registrationFee == _this.registrationFee)&&const DeepCollectionEquality().equals(other.sections, _this.sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminClassOption;
  return Object.hash(runtimeType,_this.classId,_this.className,_this.displayOrder,_this.registrationFee,const DeepCollectionEquality().hash(_this.sections));
}

@override
String toString() {
  final _this = this as AdminClassOption;
  return 'AdminClassOption(classId: ${_this.classId}, className: ${_this.className}, displayOrder: ${_this.displayOrder}, registrationFee: ${_this.registrationFee}, sections: ${_this.sections})';
}


}

/// @nodoc
abstract mixin class $AdminClassOptionCopyWith<$Res>  {
  factory $AdminClassOptionCopyWith(AdminClassOption value, $Res Function(AdminClassOption) _then) = _$AdminClassOptionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'class_id') String classId,@JsonKey(name: 'class_name') String className,@JsonKey(name: 'display_order') int? displayOrder,@JsonKey(name: 'registration_fee')@NullableDecimalConverter() Decimal? registrationFee, List<SectionRef> sections
});




}
/// @nodoc
class _$AdminClassOptionCopyWithImpl<$Res>
    implements $AdminClassOptionCopyWith<$Res> {
  _$AdminClassOptionCopyWithImpl(this._self, this._then);

  final AdminClassOption _self;
  final $Res Function(AdminClassOption) _then;

/// Create a copy of AdminClassOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classId = null,Object? className = null,Object? displayOrder = freezed,Object? registrationFee = freezed,Object? sections = null,}) {
  return _then(AdminClassOption(
classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String,className: null == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String,displayOrder: freezed == displayOrder ? _self.displayOrder : displayOrder // ignore: cast_nullable_to_non_nullable
as int?,registrationFee: freezed == registrationFee ? _self.registrationFee : registrationFee // ignore: cast_nullable_to_non_nullable
as Decimal?,sections: null == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<SectionRef>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminClassOption].
extension AdminClassOptionPatterns on AdminClassOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminClassOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminClassOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminClassOption value)  $default,){
final _that = this;
switch (_that) {
case _AdminClassOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminClassOption value)?  $default,){
final _that = this;
switch (_that) {
case _AdminClassOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_id')  String classId, @JsonKey(name: 'class_name')  String className, @JsonKey(name: 'display_order')  int? displayOrder, @JsonKey(name: 'registration_fee')@NullableDecimalConverter()  Decimal? registrationFee,  List<SectionRef> sections)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminClassOption() when $default != null:
return $default(_that.classId,_that.className,_that.displayOrder,_that.registrationFee,_that.sections);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_id')  String classId, @JsonKey(name: 'class_name')  String className, @JsonKey(name: 'display_order')  int? displayOrder, @JsonKey(name: 'registration_fee')@NullableDecimalConverter()  Decimal? registrationFee,  List<SectionRef> sections)  $default,) {final _that = this;
switch (_that) {
case _AdminClassOption():
return $default(_that.classId,_that.className,_that.displayOrder,_that.registrationFee,_that.sections);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'class_id')  String classId, @JsonKey(name: 'class_name')  String className, @JsonKey(name: 'display_order')  int? displayOrder, @JsonKey(name: 'registration_fee')@NullableDecimalConverter()  Decimal? registrationFee,  List<SectionRef> sections)?  $default,) {final _that = this;
switch (_that) {
case _AdminClassOption() when $default != null:
return $default(_that.classId,_that.className,_that.displayOrder,_that.registrationFee,_that.sections);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminClassOption implements AdminClassOption {
  const _AdminClassOption({@JsonKey(name: 'class_id') required this.classId, @JsonKey(name: 'class_name') required this.className, @JsonKey(name: 'display_order') this.displayOrder, @JsonKey(name: 'registration_fee')@NullableDecimalConverter() this.registrationFee,  List<SectionRef> sections = const <SectionRef>[]}): _sections = sections;
  factory _AdminClassOption.fromJson(Map<String, dynamic> json) => _$AdminClassOptionFromJson(json);

@override@JsonKey(name: 'class_id') final  String classId;
@override@JsonKey(name: 'class_name') final  String className;
@override@JsonKey(name: 'display_order') final  int? displayOrder;
@override@JsonKey(name: 'registration_fee')@NullableDecimalConverter() final  Decimal? registrationFee;
 final  List<SectionRef> _sections;
@override@JsonKey() List<SectionRef> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}


/// Create a copy of AdminClassOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminClassOptionCopyWith<_AdminClassOption> get copyWith => __$AdminClassOptionCopyWithImpl<_AdminClassOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminClassOptionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminClassOption&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.className, className) || other.className == className)&&(identical(other.displayOrder, displayOrder) || other.displayOrder == displayOrder)&&(identical(other.registrationFee, registrationFee) || other.registrationFee == registrationFee)&&const DeepCollectionEquality().equals(other.sections, _sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,classId,className,displayOrder,registrationFee,const DeepCollectionEquality().hash(_sections));
}

@override
String toString() {
    return 'AdminClassOption(classId: $classId, className: $className, displayOrder: $displayOrder, registrationFee: $registrationFee, sections: $sections)';
}


}

/// @nodoc
abstract mixin class _$AdminClassOptionCopyWith<$Res> implements $AdminClassOptionCopyWith<$Res> {
  factory _$AdminClassOptionCopyWith(_AdminClassOption value, $Res Function(_AdminClassOption) _then) = __$AdminClassOptionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'class_id') String classId,@JsonKey(name: 'class_name') String className,@JsonKey(name: 'display_order') int? displayOrder,@JsonKey(name: 'registration_fee')@NullableDecimalConverter() Decimal? registrationFee, List<SectionRef> sections
});




}
/// @nodoc
class __$AdminClassOptionCopyWithImpl<$Res>
    implements _$AdminClassOptionCopyWith<$Res> {
  __$AdminClassOptionCopyWithImpl(this._self, this._then);

  final _AdminClassOption _self;
  final $Res Function(_AdminClassOption) _then;

/// Create a copy of AdminClassOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classId = null,Object? className = null,Object? displayOrder = freezed,Object? registrationFee = freezed,Object? sections = null,}) {
  return _then(_AdminClassOption(
classId: null == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String,className: null == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String,displayOrder: freezed == displayOrder ? _self.displayOrder : displayOrder // ignore: cast_nullable_to_non_nullable
as int?,registrationFee: freezed == registrationFee ? _self.registrationFee : registrationFee // ignore: cast_nullable_to_non_nullable
as Decimal?,sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<SectionRef>,
  ));
}


}

// dart format on
