// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'academic_refs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassRef {

@JsonKey(name: 'class_id') String? get classId;@JsonKey(name: 'class_name') String? get className;
/// Create a copy of ClassRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassRefCopyWith<ClassRef> get copyWith => _$ClassRefCopyWithImpl<ClassRef>(this as ClassRef, _$identity);

  /// Serializes this ClassRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ClassRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClassRef&&(identical(other.classId, _this.classId) || other.classId == _this.classId)&&(identical(other.className, _this.className) || other.className == _this.className));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ClassRef;
  return Object.hash(runtimeType,_this.classId,_this.className);
}

@override
String toString() {
  final _this = this as ClassRef;
  return 'ClassRef(classId: ${_this.classId}, className: ${_this.className})';
}


}

/// @nodoc
abstract mixin class $ClassRefCopyWith<$Res>  {
  factory $ClassRefCopyWith(ClassRef value, $Res Function(ClassRef) _then) = _$ClassRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'class_name') String? className
});




}
/// @nodoc
class _$ClassRefCopyWithImpl<$Res>
    implements $ClassRefCopyWith<$Res> {
  _$ClassRefCopyWithImpl(this._self, this._then);

  final ClassRef _self;
  final $Res Function(ClassRef) _then;

/// Create a copy of ClassRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? classId = freezed,Object? className = freezed,}) {
  return _then(ClassRef(
classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClassRef].
extension ClassRefPatterns on ClassRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClassRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClassRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClassRef value)  $default,){
final _that = this;
switch (_that) {
case _ClassRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClassRef value)?  $default,){
final _that = this;
switch (_that) {
case _ClassRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'class_name')  String? className)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClassRef() when $default != null:
return $default(_that.classId,_that.className);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'class_name')  String? className)  $default,) {final _that = this;
switch (_that) {
case _ClassRef():
return $default(_that.classId,_that.className);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'class_id')  String? classId, @JsonKey(name: 'class_name')  String? className)?  $default,) {final _that = this;
switch (_that) {
case _ClassRef() when $default != null:
return $default(_that.classId,_that.className);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClassRef implements ClassRef {
  const _ClassRef({@JsonKey(name: 'class_id') this.classId, @JsonKey(name: 'class_name') this.className});
  factory _ClassRef.fromJson(Map<String, dynamic> json) => _$ClassRefFromJson(json);

@override@JsonKey(name: 'class_id') final  String? classId;
@override@JsonKey(name: 'class_name') final  String? className;

/// Create a copy of ClassRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassRefCopyWith<_ClassRef> get copyWith => __$ClassRefCopyWithImpl<_ClassRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClassRef&&(identical(other.classId, classId) || other.classId == classId)&&(identical(other.className, className) || other.className == className));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,classId,className);
}

@override
String toString() {
    return 'ClassRef(classId: $classId, className: $className)';
}


}

/// @nodoc
abstract mixin class _$ClassRefCopyWith<$Res> implements $ClassRefCopyWith<$Res> {
  factory _$ClassRefCopyWith(_ClassRef value, $Res Function(_ClassRef) _then) = __$ClassRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'class_id') String? classId,@JsonKey(name: 'class_name') String? className
});




}
/// @nodoc
class __$ClassRefCopyWithImpl<$Res>
    implements _$ClassRefCopyWith<$Res> {
  __$ClassRefCopyWithImpl(this._self, this._then);

  final _ClassRef _self;
  final $Res Function(_ClassRef) _then;

/// Create a copy of ClassRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? classId = freezed,Object? className = freezed,}) {
  return _then(_ClassRef(
classId: freezed == classId ? _self.classId : classId // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SectionRef {

@JsonKey(name: 'section_id') String? get sectionId;@JsonKey(name: 'section_name') String? get sectionName;
/// Create a copy of SectionRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionRefCopyWith<SectionRef> get copyWith => _$SectionRefCopyWithImpl<SectionRef>(this as SectionRef, _$identity);

  /// Serializes this SectionRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SectionRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionRef&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId)&&(identical(other.sectionName, _this.sectionName) || other.sectionName == _this.sectionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SectionRef;
  return Object.hash(runtimeType,_this.sectionId,_this.sectionName);
}

@override
String toString() {
  final _this = this as SectionRef;
  return 'SectionRef(sectionId: ${_this.sectionId}, sectionName: ${_this.sectionName})';
}


}

/// @nodoc
abstract mixin class $SectionRefCopyWith<$Res>  {
  factory $SectionRefCopyWith(SectionRef value, $Res Function(SectionRef) _then) = _$SectionRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'section_name') String? sectionName
});




}
/// @nodoc
class _$SectionRefCopyWithImpl<$Res>
    implements $SectionRefCopyWith<$Res> {
  _$SectionRefCopyWithImpl(this._self, this._then);

  final SectionRef _self;
  final $Res Function(SectionRef) _then;

/// Create a copy of SectionRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sectionId = freezed,Object? sectionName = freezed,}) {
  return _then(SectionRef(
sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SectionRef].
extension SectionRefPatterns on SectionRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SectionRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SectionRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SectionRef value)  $default,){
final _that = this;
switch (_that) {
case _SectionRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SectionRef value)?  $default,){
final _that = this;
switch (_that) {
case _SectionRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'section_name')  String? sectionName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SectionRef() when $default != null:
return $default(_that.sectionId,_that.sectionName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'section_name')  String? sectionName)  $default,) {final _that = this;
switch (_that) {
case _SectionRef():
return $default(_that.sectionId,_that.sectionName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'section_id')  String? sectionId, @JsonKey(name: 'section_name')  String? sectionName)?  $default,) {final _that = this;
switch (_that) {
case _SectionRef() when $default != null:
return $default(_that.sectionId,_that.sectionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SectionRef implements SectionRef {
  const _SectionRef({@JsonKey(name: 'section_id') this.sectionId, @JsonKey(name: 'section_name') this.sectionName});
  factory _SectionRef.fromJson(Map<String, dynamic> json) => _$SectionRefFromJson(json);

@override@JsonKey(name: 'section_id') final  String? sectionId;
@override@JsonKey(name: 'section_name') final  String? sectionName;

/// Create a copy of SectionRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionRefCopyWith<_SectionRef> get copyWith => __$SectionRefCopyWithImpl<_SectionRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SectionRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SectionRef&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sectionId,sectionName);
}

@override
String toString() {
    return 'SectionRef(sectionId: $sectionId, sectionName: $sectionName)';
}


}

/// @nodoc
abstract mixin class _$SectionRefCopyWith<$Res> implements $SectionRefCopyWith<$Res> {
  factory _$SectionRefCopyWith(_SectionRef value, $Res Function(_SectionRef) _then) = __$SectionRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'section_id') String? sectionId,@JsonKey(name: 'section_name') String? sectionName
});




}
/// @nodoc
class __$SectionRefCopyWithImpl<$Res>
    implements _$SectionRefCopyWith<$Res> {
  __$SectionRefCopyWithImpl(this._self, this._then);

  final _SectionRef _self;
  final $Res Function(_SectionRef) _then;

/// Create a copy of SectionRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sectionId = freezed,Object? sectionName = freezed,}) {
  return _then(_SectionRef(
sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SessionRef {

@JsonKey(name: 'session_name') String? get sessionName;
/// Create a copy of SessionRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionRefCopyWith<SessionRef> get copyWith => _$SessionRefCopyWithImpl<SessionRef>(this as SessionRef, _$identity);

  /// Serializes this SessionRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SessionRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionRef&&(identical(other.sessionName, _this.sessionName) || other.sessionName == _this.sessionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SessionRef;
  return Object.hash(runtimeType,_this.sessionName);
}

@override
String toString() {
  final _this = this as SessionRef;
  return 'SessionRef(sessionName: ${_this.sessionName})';
}


}

/// @nodoc
abstract mixin class $SessionRefCopyWith<$Res>  {
  factory $SessionRefCopyWith(SessionRef value, $Res Function(SessionRef) _then) = _$SessionRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'session_name') String? sessionName
});




}
/// @nodoc
class _$SessionRefCopyWithImpl<$Res>
    implements $SessionRefCopyWith<$Res> {
  _$SessionRefCopyWithImpl(this._self, this._then);

  final SessionRef _self;
  final $Res Function(SessionRef) _then;

/// Create a copy of SessionRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionName = freezed,}) {
  return _then(SessionRef(
sessionName: freezed == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionRef].
extension SessionRefPatterns on SessionRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionRef value)  $default,){
final _that = this;
switch (_that) {
case _SessionRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionRef value)?  $default,){
final _that = this;
switch (_that) {
case _SessionRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_name')  String? sessionName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionRef() when $default != null:
return $default(_that.sessionName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_name')  String? sessionName)  $default,) {final _that = this;
switch (_that) {
case _SessionRef():
return $default(_that.sessionName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'session_name')  String? sessionName)?  $default,) {final _that = this;
switch (_that) {
case _SessionRef() when $default != null:
return $default(_that.sessionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionRef implements SessionRef {
  const _SessionRef({@JsonKey(name: 'session_name') this.sessionName});
  factory _SessionRef.fromJson(Map<String, dynamic> json) => _$SessionRefFromJson(json);

@override@JsonKey(name: 'session_name') final  String? sessionName;

/// Create a copy of SessionRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionRefCopyWith<_SessionRef> get copyWith => __$SessionRefCopyWithImpl<_SessionRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionRef&&(identical(other.sessionName, sessionName) || other.sessionName == sessionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sessionName);
}

@override
String toString() {
    return 'SessionRef(sessionName: $sessionName)';
}


}

/// @nodoc
abstract mixin class _$SessionRefCopyWith<$Res> implements $SessionRefCopyWith<$Res> {
  factory _$SessionRefCopyWith(_SessionRef value, $Res Function(_SessionRef) _then) = __$SessionRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'session_name') String? sessionName
});




}
/// @nodoc
class __$SessionRefCopyWithImpl<$Res>
    implements _$SessionRefCopyWith<$Res> {
  __$SessionRefCopyWithImpl(this._self, this._then);

  final _SessionRef _self;
  final $Res Function(_SessionRef) _then;

/// Create a copy of SessionRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionName = freezed,}) {
  return _then(_SessionRef(
sessionName: freezed == sessionName ? _self.sessionName : sessionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$InstitutionRef {

@JsonKey(name: 'institution_name') String? get institutionName;
/// Create a copy of InstitutionRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InstitutionRefCopyWith<InstitutionRef> get copyWith => _$InstitutionRefCopyWithImpl<InstitutionRef>(this as InstitutionRef, _$identity);

  /// Serializes this InstitutionRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as InstitutionRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InstitutionRef&&(identical(other.institutionName, _this.institutionName) || other.institutionName == _this.institutionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as InstitutionRef;
  return Object.hash(runtimeType,_this.institutionName);
}

@override
String toString() {
  final _this = this as InstitutionRef;
  return 'InstitutionRef(institutionName: ${_this.institutionName})';
}


}

/// @nodoc
abstract mixin class $InstitutionRefCopyWith<$Res>  {
  factory $InstitutionRefCopyWith(InstitutionRef value, $Res Function(InstitutionRef) _then) = _$InstitutionRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'institution_name') String? institutionName
});




}
/// @nodoc
class _$InstitutionRefCopyWithImpl<$Res>
    implements $InstitutionRefCopyWith<$Res> {
  _$InstitutionRefCopyWithImpl(this._self, this._then);

  final InstitutionRef _self;
  final $Res Function(InstitutionRef) _then;

/// Create a copy of InstitutionRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? institutionName = freezed,}) {
  return _then(InstitutionRef(
institutionName: freezed == institutionName ? _self.institutionName : institutionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InstitutionRef].
extension InstitutionRefPatterns on InstitutionRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InstitutionRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InstitutionRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InstitutionRef value)  $default,){
final _that = this;
switch (_that) {
case _InstitutionRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InstitutionRef value)?  $default,){
final _that = this;
switch (_that) {
case _InstitutionRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'institution_name')  String? institutionName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InstitutionRef() when $default != null:
return $default(_that.institutionName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'institution_name')  String? institutionName)  $default,) {final _that = this;
switch (_that) {
case _InstitutionRef():
return $default(_that.institutionName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'institution_name')  String? institutionName)?  $default,) {final _that = this;
switch (_that) {
case _InstitutionRef() when $default != null:
return $default(_that.institutionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InstitutionRef implements InstitutionRef {
  const _InstitutionRef({@JsonKey(name: 'institution_name') this.institutionName});
  factory _InstitutionRef.fromJson(Map<String, dynamic> json) => _$InstitutionRefFromJson(json);

@override@JsonKey(name: 'institution_name') final  String? institutionName;

/// Create a copy of InstitutionRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InstitutionRefCopyWith<_InstitutionRef> get copyWith => __$InstitutionRefCopyWithImpl<_InstitutionRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InstitutionRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InstitutionRef&&(identical(other.institutionName, institutionName) || other.institutionName == institutionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,institutionName);
}

@override
String toString() {
    return 'InstitutionRef(institutionName: $institutionName)';
}


}

/// @nodoc
abstract mixin class _$InstitutionRefCopyWith<$Res> implements $InstitutionRefCopyWith<$Res> {
  factory _$InstitutionRefCopyWith(_InstitutionRef value, $Res Function(_InstitutionRef) _then) = __$InstitutionRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'institution_name') String? institutionName
});




}
/// @nodoc
class __$InstitutionRefCopyWithImpl<$Res>
    implements _$InstitutionRefCopyWith<$Res> {
  __$InstitutionRefCopyWithImpl(this._self, this._then);

  final _InstitutionRef _self;
  final $Res Function(_InstitutionRef) _then;

/// Create a copy of InstitutionRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? institutionName = freezed,}) {
  return _then(_InstitutionRef(
institutionName: freezed == institutionName ? _self.institutionName : institutionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
