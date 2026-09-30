// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubjectRef {

@JsonKey(name: 'subject_id') String? get subjectId;@JsonKey(name: 'subject_name') String get subjectName;
/// Create a copy of SubjectRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectRefCopyWith<SubjectRef> get copyWith => _$SubjectRefCopyWithImpl<SubjectRef>(this as SubjectRef, _$identity);

  /// Serializes this SubjectRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SubjectRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubjectRef&&(identical(other.subjectId, _this.subjectId) || other.subjectId == _this.subjectId)&&(identical(other.subjectName, _this.subjectName) || other.subjectName == _this.subjectName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SubjectRef;
  return Object.hash(runtimeType,_this.subjectId,_this.subjectName);
}

@override
String toString() {
  final _this = this as SubjectRef;
  return 'SubjectRef(subjectId: ${_this.subjectId}, subjectName: ${_this.subjectName})';
}


}

/// @nodoc
abstract mixin class $SubjectRefCopyWith<$Res>  {
  factory $SubjectRefCopyWith(SubjectRef value, $Res Function(SubjectRef) _then) = _$SubjectRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'subject_id') String? subjectId,@JsonKey(name: 'subject_name') String subjectName
});




}
/// @nodoc
class _$SubjectRefCopyWithImpl<$Res>
    implements $SubjectRefCopyWith<$Res> {
  _$SubjectRefCopyWithImpl(this._self, this._then);

  final SubjectRef _self;
  final $Res Function(SubjectRef) _then;

/// Create a copy of SubjectRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subjectId = freezed,Object? subjectName = null,}) {
  return _then(SubjectRef(
subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String?,subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubjectRef].
extension SubjectRefPatterns on SubjectRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubjectRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubjectRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubjectRef value)  $default,){
final _that = this;
switch (_that) {
case _SubjectRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubjectRef value)?  $default,){
final _that = this;
switch (_that) {
case _SubjectRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'subject_name')  String subjectName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubjectRef() when $default != null:
return $default(_that.subjectId,_that.subjectName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'subject_name')  String subjectName)  $default,) {final _that = this;
switch (_that) {
case _SubjectRef():
return $default(_that.subjectId,_that.subjectName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'subject_id')  String? subjectId, @JsonKey(name: 'subject_name')  String subjectName)?  $default,) {final _that = this;
switch (_that) {
case _SubjectRef() when $default != null:
return $default(_that.subjectId,_that.subjectName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubjectRef implements SubjectRef {
  const _SubjectRef({@JsonKey(name: 'subject_id') this.subjectId, @JsonKey(name: 'subject_name') required this.subjectName});
  factory _SubjectRef.fromJson(Map<String, dynamic> json) => _$SubjectRefFromJson(json);

@override@JsonKey(name: 'subject_id') final  String? subjectId;
@override@JsonKey(name: 'subject_name') final  String subjectName;

/// Create a copy of SubjectRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubjectRefCopyWith<_SubjectRef> get copyWith => __$SubjectRefCopyWithImpl<_SubjectRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubjectRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubjectRef&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,subjectId,subjectName);
}

@override
String toString() {
    return 'SubjectRef(subjectId: $subjectId, subjectName: $subjectName)';
}


}

/// @nodoc
abstract mixin class _$SubjectRefCopyWith<$Res> implements $SubjectRefCopyWith<$Res> {
  factory _$SubjectRefCopyWith(_SubjectRef value, $Res Function(_SubjectRef) _then) = __$SubjectRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'subject_id') String? subjectId,@JsonKey(name: 'subject_name') String subjectName
});




}
/// @nodoc
class __$SubjectRefCopyWithImpl<$Res>
    implements _$SubjectRefCopyWith<$Res> {
  __$SubjectRefCopyWithImpl(this._self, this._then);

  final _SubjectRef _self;
  final $Res Function(_SubjectRef) _then;

/// Create a copy of SubjectRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subjectId = freezed,Object? subjectName = null,}) {
  return _then(_SubjectRef(
subjectId: freezed == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String?,subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
