// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_admin_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoleRef {

@JsonKey(name: 'role_id') String get roleId;@JsonKey(name: 'role_name') String get roleName;
/// Create a copy of RoleRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoleRefCopyWith<RoleRef> get copyWith => _$RoleRefCopyWithImpl<RoleRef>(this as RoleRef, _$identity);

  /// Serializes this RoleRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RoleRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoleRef&&(identical(other.roleId, _this.roleId) || other.roleId == _this.roleId)&&(identical(other.roleName, _this.roleName) || other.roleName == _this.roleName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RoleRef;
  return Object.hash(runtimeType,_this.roleId,_this.roleName);
}

@override
String toString() {
  final _this = this as RoleRef;
  return 'RoleRef(roleId: ${_this.roleId}, roleName: ${_this.roleName})';
}


}

/// @nodoc
abstract mixin class $RoleRefCopyWith<$Res>  {
  factory $RoleRefCopyWith(RoleRef value, $Res Function(RoleRef) _then) = _$RoleRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'role_id') String roleId,@JsonKey(name: 'role_name') String roleName
});




}
/// @nodoc
class _$RoleRefCopyWithImpl<$Res>
    implements $RoleRefCopyWith<$Res> {
  _$RoleRefCopyWithImpl(this._self, this._then);

  final RoleRef _self;
  final $Res Function(RoleRef) _then;

/// Create a copy of RoleRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roleId = null,Object? roleName = null,}) {
  return _then(RoleRef(
roleId: null == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as String,roleName: null == roleName ? _self.roleName : roleName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RoleRef].
extension RoleRefPatterns on RoleRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoleRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoleRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoleRef value)  $default,){
final _that = this;
switch (_that) {
case _RoleRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoleRef value)?  $default,){
final _that = this;
switch (_that) {
case _RoleRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'role_id')  String roleId, @JsonKey(name: 'role_name')  String roleName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoleRef() when $default != null:
return $default(_that.roleId,_that.roleName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'role_id')  String roleId, @JsonKey(name: 'role_name')  String roleName)  $default,) {final _that = this;
switch (_that) {
case _RoleRef():
return $default(_that.roleId,_that.roleName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'role_id')  String roleId, @JsonKey(name: 'role_name')  String roleName)?  $default,) {final _that = this;
switch (_that) {
case _RoleRef() when $default != null:
return $default(_that.roleId,_that.roleName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoleRef implements RoleRef {
  const _RoleRef({@JsonKey(name: 'role_id') required this.roleId, @JsonKey(name: 'role_name') required this.roleName});
  factory _RoleRef.fromJson(Map<String, dynamic> json) => _$RoleRefFromJson(json);

@override@JsonKey(name: 'role_id') final  String roleId;
@override@JsonKey(name: 'role_name') final  String roleName;

/// Create a copy of RoleRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoleRefCopyWith<_RoleRef> get copyWith => __$RoleRefCopyWithImpl<_RoleRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoleRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoleRef&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.roleName, roleName) || other.roleName == roleName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,roleId,roleName);
}

@override
String toString() {
    return 'RoleRef(roleId: $roleId, roleName: $roleName)';
}


}

/// @nodoc
abstract mixin class _$RoleRefCopyWith<$Res> implements $RoleRefCopyWith<$Res> {
  factory _$RoleRefCopyWith(_RoleRef value, $Res Function(_RoleRef) _then) = __$RoleRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'role_id') String roleId,@JsonKey(name: 'role_name') String roleName
});




}
/// @nodoc
class __$RoleRefCopyWithImpl<$Res>
    implements _$RoleRefCopyWith<$Res> {
  __$RoleRefCopyWithImpl(this._self, this._then);

  final _RoleRef _self;
  final $Res Function(_RoleRef) _then;

/// Create a copy of RoleRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roleId = null,Object? roleName = null,}) {
  return _then(_RoleRef(
roleId: null == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as String,roleName: null == roleName ? _self.roleName : roleName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PermissionModule {

 String get module; List<PermissionEntry> get permissions;
/// Create a copy of PermissionModule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionModuleCopyWith<PermissionModule> get copyWith => _$PermissionModuleCopyWithImpl<PermissionModule>(this as PermissionModule, _$identity);

  /// Serializes this PermissionModule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PermissionModule;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionModule&&(identical(other.module, _this.module) || other.module == _this.module)&&const DeepCollectionEquality().equals(other.permissions, _this.permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PermissionModule;
  return Object.hash(runtimeType,_this.module,const DeepCollectionEquality().hash(_this.permissions));
}

@override
String toString() {
  final _this = this as PermissionModule;
  return 'PermissionModule(module: ${_this.module}, permissions: ${_this.permissions})';
}


}

/// @nodoc
abstract mixin class $PermissionModuleCopyWith<$Res>  {
  factory $PermissionModuleCopyWith(PermissionModule value, $Res Function(PermissionModule) _then) = _$PermissionModuleCopyWithImpl;
@useResult
$Res call({
 String module, List<PermissionEntry> permissions
});




}
/// @nodoc
class _$PermissionModuleCopyWithImpl<$Res>
    implements $PermissionModuleCopyWith<$Res> {
  _$PermissionModuleCopyWithImpl(this._self, this._then);

  final PermissionModule _self;
  final $Res Function(PermissionModule) _then;

/// Create a copy of PermissionModule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? module = null,Object? permissions = null,}) {
  return _then(PermissionModule(
module: null == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as String,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<PermissionEntry>,
  ));
}

}


/// Adds pattern-matching-related methods to [PermissionModule].
extension PermissionModulePatterns on PermissionModule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PermissionModule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PermissionModule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PermissionModule value)  $default,){
final _that = this;
switch (_that) {
case _PermissionModule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PermissionModule value)?  $default,){
final _that = this;
switch (_that) {
case _PermissionModule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String module,  List<PermissionEntry> permissions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PermissionModule() when $default != null:
return $default(_that.module,_that.permissions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String module,  List<PermissionEntry> permissions)  $default,) {final _that = this;
switch (_that) {
case _PermissionModule():
return $default(_that.module,_that.permissions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String module,  List<PermissionEntry> permissions)?  $default,) {final _that = this;
switch (_that) {
case _PermissionModule() when $default != null:
return $default(_that.module,_that.permissions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PermissionModule implements PermissionModule {
  const _PermissionModule({required this.module,  List<PermissionEntry> permissions = const <PermissionEntry>[]}): _permissions = permissions;
  factory _PermissionModule.fromJson(Map<String, dynamic> json) => _$PermissionModuleFromJson(json);

@override final  String module;
 final  List<PermissionEntry> _permissions;
@override@JsonKey() List<PermissionEntry> get permissions {
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_permissions);
}


/// Create a copy of PermissionModule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PermissionModuleCopyWith<_PermissionModule> get copyWith => __$PermissionModuleCopyWithImpl<_PermissionModule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PermissionModuleToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PermissionModule&&(identical(other.module, module) || other.module == module)&&const DeepCollectionEquality().equals(other.permissions, _permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,module,const DeepCollectionEquality().hash(_permissions));
}

@override
String toString() {
    return 'PermissionModule(module: $module, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class _$PermissionModuleCopyWith<$Res> implements $PermissionModuleCopyWith<$Res> {
  factory _$PermissionModuleCopyWith(_PermissionModule value, $Res Function(_PermissionModule) _then) = __$PermissionModuleCopyWithImpl;
@override @useResult
$Res call({
 String module, List<PermissionEntry> permissions
});




}
/// @nodoc
class __$PermissionModuleCopyWithImpl<$Res>
    implements _$PermissionModuleCopyWith<$Res> {
  __$PermissionModuleCopyWithImpl(this._self, this._then);

  final _PermissionModule _self;
  final $Res Function(_PermissionModule) _then;

/// Create a copy of PermissionModule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? module = null,Object? permissions = null,}) {
  return _then(_PermissionModule(
module: null == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as String,permissions: null == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<PermissionEntry>,
  ));
}


}


/// @nodoc
mixin _$PermissionEntry {

@JsonKey(name: 'permission_key') String get permissionKey; String get label;
/// Create a copy of PermissionEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionEntryCopyWith<PermissionEntry> get copyWith => _$PermissionEntryCopyWithImpl<PermissionEntry>(this as PermissionEntry, _$identity);

  /// Serializes this PermissionEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PermissionEntry;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionEntry&&(identical(other.permissionKey, _this.permissionKey) || other.permissionKey == _this.permissionKey)&&(identical(other.label, _this.label) || other.label == _this.label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PermissionEntry;
  return Object.hash(runtimeType,_this.permissionKey,_this.label);
}

@override
String toString() {
  final _this = this as PermissionEntry;
  return 'PermissionEntry(permissionKey: ${_this.permissionKey}, label: ${_this.label})';
}


}

/// @nodoc
abstract mixin class $PermissionEntryCopyWith<$Res>  {
  factory $PermissionEntryCopyWith(PermissionEntry value, $Res Function(PermissionEntry) _then) = _$PermissionEntryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'permission_key') String permissionKey, String label
});




}
/// @nodoc
class _$PermissionEntryCopyWithImpl<$Res>
    implements $PermissionEntryCopyWith<$Res> {
  _$PermissionEntryCopyWithImpl(this._self, this._then);

  final PermissionEntry _self;
  final $Res Function(PermissionEntry) _then;

/// Create a copy of PermissionEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? permissionKey = null,Object? label = null,}) {
  return _then(PermissionEntry(
permissionKey: null == permissionKey ? _self.permissionKey : permissionKey // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PermissionEntry].
extension PermissionEntryPatterns on PermissionEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PermissionEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PermissionEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PermissionEntry value)  $default,){
final _that = this;
switch (_that) {
case _PermissionEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PermissionEntry value)?  $default,){
final _that = this;
switch (_that) {
case _PermissionEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'permission_key')  String permissionKey,  String label)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PermissionEntry() when $default != null:
return $default(_that.permissionKey,_that.label);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'permission_key')  String permissionKey,  String label)  $default,) {final _that = this;
switch (_that) {
case _PermissionEntry():
return $default(_that.permissionKey,_that.label);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'permission_key')  String permissionKey,  String label)?  $default,) {final _that = this;
switch (_that) {
case _PermissionEntry() when $default != null:
return $default(_that.permissionKey,_that.label);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PermissionEntry implements PermissionEntry {
  const _PermissionEntry({@JsonKey(name: 'permission_key') required this.permissionKey, required this.label});
  factory _PermissionEntry.fromJson(Map<String, dynamic> json) => _$PermissionEntryFromJson(json);

@override@JsonKey(name: 'permission_key') final  String permissionKey;
@override final  String label;

/// Create a copy of PermissionEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PermissionEntryCopyWith<_PermissionEntry> get copyWith => __$PermissionEntryCopyWithImpl<_PermissionEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PermissionEntryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PermissionEntry&&(identical(other.permissionKey, permissionKey) || other.permissionKey == permissionKey)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,permissionKey,label);
}

@override
String toString() {
    return 'PermissionEntry(permissionKey: $permissionKey, label: $label)';
}


}

/// @nodoc
abstract mixin class _$PermissionEntryCopyWith<$Res> implements $PermissionEntryCopyWith<$Res> {
  factory _$PermissionEntryCopyWith(_PermissionEntry value, $Res Function(_PermissionEntry) _then) = __$PermissionEntryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'permission_key') String permissionKey, String label
});




}
/// @nodoc
class __$PermissionEntryCopyWithImpl<$Res>
    implements _$PermissionEntryCopyWith<$Res> {
  __$PermissionEntryCopyWithImpl(this._self, this._then);

  final _PermissionEntry _self;
  final $Res Function(_PermissionEntry) _then;

/// Create a copy of PermissionEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? permissionKey = null,Object? label = null,}) {
  return _then(_PermissionEntry(
permissionKey: null == permissionKey ? _self.permissionKey : permissionKey // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RolePermissionGrants {

@JsonKey(name: 'role_id') String get roleId;@JsonKey(name: 'role_name') String? get roleName;@JsonKey(name: 'permission_keys') List<String> get permissionKeys;
/// Create a copy of RolePermissionGrants
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RolePermissionGrantsCopyWith<RolePermissionGrants> get copyWith => _$RolePermissionGrantsCopyWithImpl<RolePermissionGrants>(this as RolePermissionGrants, _$identity);

  /// Serializes this RolePermissionGrants to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RolePermissionGrants;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RolePermissionGrants&&(identical(other.roleId, _this.roleId) || other.roleId == _this.roleId)&&(identical(other.roleName, _this.roleName) || other.roleName == _this.roleName)&&const DeepCollectionEquality().equals(other.permissionKeys, _this.permissionKeys));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RolePermissionGrants;
  return Object.hash(runtimeType,_this.roleId,_this.roleName,const DeepCollectionEquality().hash(_this.permissionKeys));
}

@override
String toString() {
  final _this = this as RolePermissionGrants;
  return 'RolePermissionGrants(roleId: ${_this.roleId}, roleName: ${_this.roleName}, permissionKeys: ${_this.permissionKeys})';
}


}

/// @nodoc
abstract mixin class $RolePermissionGrantsCopyWith<$Res>  {
  factory $RolePermissionGrantsCopyWith(RolePermissionGrants value, $Res Function(RolePermissionGrants) _then) = _$RolePermissionGrantsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'role_id') String roleId,@JsonKey(name: 'role_name') String? roleName,@JsonKey(name: 'permission_keys') List<String> permissionKeys
});




}
/// @nodoc
class _$RolePermissionGrantsCopyWithImpl<$Res>
    implements $RolePermissionGrantsCopyWith<$Res> {
  _$RolePermissionGrantsCopyWithImpl(this._self, this._then);

  final RolePermissionGrants _self;
  final $Res Function(RolePermissionGrants) _then;

/// Create a copy of RolePermissionGrants
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roleId = null,Object? roleName = freezed,Object? permissionKeys = null,}) {
  return _then(RolePermissionGrants(
roleId: null == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as String,roleName: freezed == roleName ? _self.roleName : roleName // ignore: cast_nullable_to_non_nullable
as String?,permissionKeys: null == permissionKeys ? _self.permissionKeys : permissionKeys // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [RolePermissionGrants].
extension RolePermissionGrantsPatterns on RolePermissionGrants {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RolePermissionGrants value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RolePermissionGrants() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RolePermissionGrants value)  $default,){
final _that = this;
switch (_that) {
case _RolePermissionGrants():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RolePermissionGrants value)?  $default,){
final _that = this;
switch (_that) {
case _RolePermissionGrants() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'role_id')  String roleId, @JsonKey(name: 'role_name')  String? roleName, @JsonKey(name: 'permission_keys')  List<String> permissionKeys)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RolePermissionGrants() when $default != null:
return $default(_that.roleId,_that.roleName,_that.permissionKeys);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'role_id')  String roleId, @JsonKey(name: 'role_name')  String? roleName, @JsonKey(name: 'permission_keys')  List<String> permissionKeys)  $default,) {final _that = this;
switch (_that) {
case _RolePermissionGrants():
return $default(_that.roleId,_that.roleName,_that.permissionKeys);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'role_id')  String roleId, @JsonKey(name: 'role_name')  String? roleName, @JsonKey(name: 'permission_keys')  List<String> permissionKeys)?  $default,) {final _that = this;
switch (_that) {
case _RolePermissionGrants() when $default != null:
return $default(_that.roleId,_that.roleName,_that.permissionKeys);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RolePermissionGrants implements RolePermissionGrants {
  const _RolePermissionGrants({@JsonKey(name: 'role_id') required this.roleId, @JsonKey(name: 'role_name') this.roleName, @JsonKey(name: 'permission_keys')  List<String> permissionKeys = const <String>[]}): _permissionKeys = permissionKeys;
  factory _RolePermissionGrants.fromJson(Map<String, dynamic> json) => _$RolePermissionGrantsFromJson(json);

@override@JsonKey(name: 'role_id') final  String roleId;
@override@JsonKey(name: 'role_name') final  String? roleName;
 final  List<String> _permissionKeys;
@override@JsonKey(name: 'permission_keys') List<String> get permissionKeys {
  if (_permissionKeys is EqualUnmodifiableListView) return _permissionKeys;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_permissionKeys);
}


/// Create a copy of RolePermissionGrants
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RolePermissionGrantsCopyWith<_RolePermissionGrants> get copyWith => __$RolePermissionGrantsCopyWithImpl<_RolePermissionGrants>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RolePermissionGrantsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RolePermissionGrants&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.roleName, roleName) || other.roleName == roleName)&&const DeepCollectionEquality().equals(other.permissionKeys, _permissionKeys));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,roleId,roleName,const DeepCollectionEquality().hash(_permissionKeys));
}

@override
String toString() {
    return 'RolePermissionGrants(roleId: $roleId, roleName: $roleName, permissionKeys: $permissionKeys)';
}


}

/// @nodoc
abstract mixin class _$RolePermissionGrantsCopyWith<$Res> implements $RolePermissionGrantsCopyWith<$Res> {
  factory _$RolePermissionGrantsCopyWith(_RolePermissionGrants value, $Res Function(_RolePermissionGrants) _then) = __$RolePermissionGrantsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'role_id') String roleId,@JsonKey(name: 'role_name') String? roleName,@JsonKey(name: 'permission_keys') List<String> permissionKeys
});




}
/// @nodoc
class __$RolePermissionGrantsCopyWithImpl<$Res>
    implements _$RolePermissionGrantsCopyWith<$Res> {
  __$RolePermissionGrantsCopyWithImpl(this._self, this._then);

  final _RolePermissionGrants _self;
  final $Res Function(_RolePermissionGrants) _then;

/// Create a copy of RolePermissionGrants
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roleId = null,Object? roleName = freezed,Object? permissionKeys = null,}) {
  return _then(_RolePermissionGrants(
roleId: null == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as String,roleName: freezed == roleName ? _self.roleName : roleName // ignore: cast_nullable_to_non_nullable
as String?,permissionKeys: null == permissionKeys ? _self._permissionKeys : permissionKeys // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$SchoolBranch {

@JsonKey(name: 'branch_id') String get branchId;@JsonKey(name: 'branch_name') String get branchName;@JsonKey(name: 'branch_code') String? get branchCode; String? get address;
/// Create a copy of SchoolBranch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchoolBranchCopyWith<SchoolBranch> get copyWith => _$SchoolBranchCopyWithImpl<SchoolBranch>(this as SchoolBranch, _$identity);

  /// Serializes this SchoolBranch to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SchoolBranch;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchoolBranch&&(identical(other.branchId, _this.branchId) || other.branchId == _this.branchId)&&(identical(other.branchName, _this.branchName) || other.branchName == _this.branchName)&&(identical(other.branchCode, _this.branchCode) || other.branchCode == _this.branchCode)&&(identical(other.address, _this.address) || other.address == _this.address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SchoolBranch;
  return Object.hash(runtimeType,_this.branchId,_this.branchName,_this.branchCode,_this.address);
}

@override
String toString() {
  final _this = this as SchoolBranch;
  return 'SchoolBranch(branchId: ${_this.branchId}, branchName: ${_this.branchName}, branchCode: ${_this.branchCode}, address: ${_this.address})';
}


}

/// @nodoc
abstract mixin class $SchoolBranchCopyWith<$Res>  {
  factory $SchoolBranchCopyWith(SchoolBranch value, $Res Function(SchoolBranch) _then) = _$SchoolBranchCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'branch_id') String branchId,@JsonKey(name: 'branch_name') String branchName,@JsonKey(name: 'branch_code') String? branchCode, String? address
});




}
/// @nodoc
class _$SchoolBranchCopyWithImpl<$Res>
    implements $SchoolBranchCopyWith<$Res> {
  _$SchoolBranchCopyWithImpl(this._self, this._then);

  final SchoolBranch _self;
  final $Res Function(SchoolBranch) _then;

/// Create a copy of SchoolBranch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branchId = null,Object? branchName = null,Object? branchCode = freezed,Object? address = freezed,}) {
  return _then(SchoolBranch(
branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,branchName: null == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String,branchCode: freezed == branchCode ? _self.branchCode : branchCode // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SchoolBranch].
extension SchoolBranchPatterns on SchoolBranch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SchoolBranch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SchoolBranch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SchoolBranch value)  $default,){
final _that = this;
switch (_that) {
case _SchoolBranch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SchoolBranch value)?  $default,){
final _that = this;
switch (_that) {
case _SchoolBranch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'branch_id')  String branchId, @JsonKey(name: 'branch_name')  String branchName, @JsonKey(name: 'branch_code')  String? branchCode,  String? address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SchoolBranch() when $default != null:
return $default(_that.branchId,_that.branchName,_that.branchCode,_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'branch_id')  String branchId, @JsonKey(name: 'branch_name')  String branchName, @JsonKey(name: 'branch_code')  String? branchCode,  String? address)  $default,) {final _that = this;
switch (_that) {
case _SchoolBranch():
return $default(_that.branchId,_that.branchName,_that.branchCode,_that.address);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'branch_id')  String branchId, @JsonKey(name: 'branch_name')  String branchName, @JsonKey(name: 'branch_code')  String? branchCode,  String? address)?  $default,) {final _that = this;
switch (_that) {
case _SchoolBranch() when $default != null:
return $default(_that.branchId,_that.branchName,_that.branchCode,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SchoolBranch implements SchoolBranch {
  const _SchoolBranch({@JsonKey(name: 'branch_id') required this.branchId, @JsonKey(name: 'branch_name') required this.branchName, @JsonKey(name: 'branch_code') this.branchCode, this.address});
  factory _SchoolBranch.fromJson(Map<String, dynamic> json) => _$SchoolBranchFromJson(json);

@override@JsonKey(name: 'branch_id') final  String branchId;
@override@JsonKey(name: 'branch_name') final  String branchName;
@override@JsonKey(name: 'branch_code') final  String? branchCode;
@override final  String? address;

/// Create a copy of SchoolBranch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchoolBranchCopyWith<_SchoolBranch> get copyWith => __$SchoolBranchCopyWithImpl<_SchoolBranch>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SchoolBranchToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SchoolBranch&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.branchCode, branchCode) || other.branchCode == branchCode)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,branchId,branchName,branchCode,address);
}

@override
String toString() {
    return 'SchoolBranch(branchId: $branchId, branchName: $branchName, branchCode: $branchCode, address: $address)';
}


}

/// @nodoc
abstract mixin class _$SchoolBranchCopyWith<$Res> implements $SchoolBranchCopyWith<$Res> {
  factory _$SchoolBranchCopyWith(_SchoolBranch value, $Res Function(_SchoolBranch) _then) = __$SchoolBranchCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'branch_id') String branchId,@JsonKey(name: 'branch_name') String branchName,@JsonKey(name: 'branch_code') String? branchCode, String? address
});




}
/// @nodoc
class __$SchoolBranchCopyWithImpl<$Res>
    implements _$SchoolBranchCopyWith<$Res> {
  __$SchoolBranchCopyWithImpl(this._self, this._then);

  final _SchoolBranch _self;
  final $Res Function(_SchoolBranch) _then;

/// Create a copy of SchoolBranch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branchId = null,Object? branchName = null,Object? branchCode = freezed,Object? address = freezed,}) {
  return _then(_SchoolBranch(
branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,branchName: null == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String,branchCode: freezed == branchCode ? _self.branchCode : branchCode // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SchoolSubscription {

@JsonKey(name: 'subscription_status') String? get subscriptionStatus;@JsonKey(name: 'subscription_start_date') DateTime? get subscriptionStartDate;@JsonKey(name: 'subscription_end_date') DateTime? get subscriptionEndDate;@JsonKey(name: 'subscription_plan') SubscriptionPlan? get subscriptionPlan;
/// Create a copy of SchoolSubscription
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchoolSubscriptionCopyWith<SchoolSubscription> get copyWith => _$SchoolSubscriptionCopyWithImpl<SchoolSubscription>(this as SchoolSubscription, _$identity);

  /// Serializes this SchoolSubscription to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SchoolSubscription;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchoolSubscription&&(identical(other.subscriptionStatus, _this.subscriptionStatus) || other.subscriptionStatus == _this.subscriptionStatus)&&(identical(other.subscriptionStartDate, _this.subscriptionStartDate) || other.subscriptionStartDate == _this.subscriptionStartDate)&&(identical(other.subscriptionEndDate, _this.subscriptionEndDate) || other.subscriptionEndDate == _this.subscriptionEndDate)&&(identical(other.subscriptionPlan, _this.subscriptionPlan) || other.subscriptionPlan == _this.subscriptionPlan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SchoolSubscription;
  return Object.hash(runtimeType,_this.subscriptionStatus,_this.subscriptionStartDate,_this.subscriptionEndDate,_this.subscriptionPlan);
}

@override
String toString() {
  final _this = this as SchoolSubscription;
  return 'SchoolSubscription(subscriptionStatus: ${_this.subscriptionStatus}, subscriptionStartDate: ${_this.subscriptionStartDate}, subscriptionEndDate: ${_this.subscriptionEndDate}, subscriptionPlan: ${_this.subscriptionPlan})';
}


}

/// @nodoc
abstract mixin class $SchoolSubscriptionCopyWith<$Res>  {
  factory $SchoolSubscriptionCopyWith(SchoolSubscription value, $Res Function(SchoolSubscription) _then) = _$SchoolSubscriptionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'subscription_status') String? subscriptionStatus,@JsonKey(name: 'subscription_start_date') DateTime? subscriptionStartDate,@JsonKey(name: 'subscription_end_date') DateTime? subscriptionEndDate,@JsonKey(name: 'subscription_plan') SubscriptionPlan? subscriptionPlan
});


$SubscriptionPlanCopyWith<$Res>? get subscriptionPlan;

}
/// @nodoc
class _$SchoolSubscriptionCopyWithImpl<$Res>
    implements $SchoolSubscriptionCopyWith<$Res> {
  _$SchoolSubscriptionCopyWithImpl(this._self, this._then);

  final SchoolSubscription _self;
  final $Res Function(SchoolSubscription) _then;

/// Create a copy of SchoolSubscription
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subscriptionStatus = freezed,Object? subscriptionStartDate = freezed,Object? subscriptionEndDate = freezed,Object? subscriptionPlan = freezed,}) {
  return _then(SchoolSubscription(
subscriptionStatus: freezed == subscriptionStatus ? _self.subscriptionStatus : subscriptionStatus // ignore: cast_nullable_to_non_nullable
as String?,subscriptionStartDate: freezed == subscriptionStartDate ? _self.subscriptionStartDate : subscriptionStartDate // ignore: cast_nullable_to_non_nullable
as DateTime?,subscriptionEndDate: freezed == subscriptionEndDate ? _self.subscriptionEndDate : subscriptionEndDate // ignore: cast_nullable_to_non_nullable
as DateTime?,subscriptionPlan: freezed == subscriptionPlan ? _self.subscriptionPlan : subscriptionPlan // ignore: cast_nullable_to_non_nullable
as SubscriptionPlan?,
  ));
}
/// Create a copy of SchoolSubscription
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionPlanCopyWith<$Res>? get subscriptionPlan {
    if (_self.subscriptionPlan == null) {
    return null;
  }

  return $SubscriptionPlanCopyWith<$Res>(_self.subscriptionPlan!, (value) {
    return _then(_self.copyWith(subscriptionPlan: value));
  });
}
}


/// Adds pattern-matching-related methods to [SchoolSubscription].
extension SchoolSubscriptionPatterns on SchoolSubscription {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SchoolSubscription value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SchoolSubscription() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SchoolSubscription value)  $default,){
final _that = this;
switch (_that) {
case _SchoolSubscription():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SchoolSubscription value)?  $default,){
final _that = this;
switch (_that) {
case _SchoolSubscription() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'subscription_status')  String? subscriptionStatus, @JsonKey(name: 'subscription_start_date')  DateTime? subscriptionStartDate, @JsonKey(name: 'subscription_end_date')  DateTime? subscriptionEndDate, @JsonKey(name: 'subscription_plan')  SubscriptionPlan? subscriptionPlan)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SchoolSubscription() when $default != null:
return $default(_that.subscriptionStatus,_that.subscriptionStartDate,_that.subscriptionEndDate,_that.subscriptionPlan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'subscription_status')  String? subscriptionStatus, @JsonKey(name: 'subscription_start_date')  DateTime? subscriptionStartDate, @JsonKey(name: 'subscription_end_date')  DateTime? subscriptionEndDate, @JsonKey(name: 'subscription_plan')  SubscriptionPlan? subscriptionPlan)  $default,) {final _that = this;
switch (_that) {
case _SchoolSubscription():
return $default(_that.subscriptionStatus,_that.subscriptionStartDate,_that.subscriptionEndDate,_that.subscriptionPlan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'subscription_status')  String? subscriptionStatus, @JsonKey(name: 'subscription_start_date')  DateTime? subscriptionStartDate, @JsonKey(name: 'subscription_end_date')  DateTime? subscriptionEndDate, @JsonKey(name: 'subscription_plan')  SubscriptionPlan? subscriptionPlan)?  $default,) {final _that = this;
switch (_that) {
case _SchoolSubscription() when $default != null:
return $default(_that.subscriptionStatus,_that.subscriptionStartDate,_that.subscriptionEndDate,_that.subscriptionPlan);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SchoolSubscription implements SchoolSubscription {
  const _SchoolSubscription({@JsonKey(name: 'subscription_status') this.subscriptionStatus, @JsonKey(name: 'subscription_start_date') this.subscriptionStartDate, @JsonKey(name: 'subscription_end_date') this.subscriptionEndDate, @JsonKey(name: 'subscription_plan') this.subscriptionPlan});
  factory _SchoolSubscription.fromJson(Map<String, dynamic> json) => _$SchoolSubscriptionFromJson(json);

@override@JsonKey(name: 'subscription_status') final  String? subscriptionStatus;
@override@JsonKey(name: 'subscription_start_date') final  DateTime? subscriptionStartDate;
@override@JsonKey(name: 'subscription_end_date') final  DateTime? subscriptionEndDate;
@override@JsonKey(name: 'subscription_plan') final  SubscriptionPlan? subscriptionPlan;

/// Create a copy of SchoolSubscription
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchoolSubscriptionCopyWith<_SchoolSubscription> get copyWith => __$SchoolSubscriptionCopyWithImpl<_SchoolSubscription>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SchoolSubscriptionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SchoolSubscription&&(identical(other.subscriptionStatus, subscriptionStatus) || other.subscriptionStatus == subscriptionStatus)&&(identical(other.subscriptionStartDate, subscriptionStartDate) || other.subscriptionStartDate == subscriptionStartDate)&&(identical(other.subscriptionEndDate, subscriptionEndDate) || other.subscriptionEndDate == subscriptionEndDate)&&(identical(other.subscriptionPlan, subscriptionPlan) || other.subscriptionPlan == subscriptionPlan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,subscriptionStatus,subscriptionStartDate,subscriptionEndDate,subscriptionPlan);
}

@override
String toString() {
    return 'SchoolSubscription(subscriptionStatus: $subscriptionStatus, subscriptionStartDate: $subscriptionStartDate, subscriptionEndDate: $subscriptionEndDate, subscriptionPlan: $subscriptionPlan)';
}


}

/// @nodoc
abstract mixin class _$SchoolSubscriptionCopyWith<$Res> implements $SchoolSubscriptionCopyWith<$Res> {
  factory _$SchoolSubscriptionCopyWith(_SchoolSubscription value, $Res Function(_SchoolSubscription) _then) = __$SchoolSubscriptionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'subscription_status') String? subscriptionStatus,@JsonKey(name: 'subscription_start_date') DateTime? subscriptionStartDate,@JsonKey(name: 'subscription_end_date') DateTime? subscriptionEndDate,@JsonKey(name: 'subscription_plan') SubscriptionPlan? subscriptionPlan
});


@override $SubscriptionPlanCopyWith<$Res>? get subscriptionPlan;

}
/// @nodoc
class __$SchoolSubscriptionCopyWithImpl<$Res>
    implements _$SchoolSubscriptionCopyWith<$Res> {
  __$SchoolSubscriptionCopyWithImpl(this._self, this._then);

  final _SchoolSubscription _self;
  final $Res Function(_SchoolSubscription) _then;

/// Create a copy of SchoolSubscription
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subscriptionStatus = freezed,Object? subscriptionStartDate = freezed,Object? subscriptionEndDate = freezed,Object? subscriptionPlan = freezed,}) {
  return _then(_SchoolSubscription(
subscriptionStatus: freezed == subscriptionStatus ? _self.subscriptionStatus : subscriptionStatus // ignore: cast_nullable_to_non_nullable
as String?,subscriptionStartDate: freezed == subscriptionStartDate ? _self.subscriptionStartDate : subscriptionStartDate // ignore: cast_nullable_to_non_nullable
as DateTime?,subscriptionEndDate: freezed == subscriptionEndDate ? _self.subscriptionEndDate : subscriptionEndDate // ignore: cast_nullable_to_non_nullable
as DateTime?,subscriptionPlan: freezed == subscriptionPlan ? _self.subscriptionPlan : subscriptionPlan // ignore: cast_nullable_to_non_nullable
as SubscriptionPlan?,
  ));
}

/// Create a copy of SchoolSubscription
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionPlanCopyWith<$Res>? get subscriptionPlan {
    if (_self.subscriptionPlan == null) {
    return null;
  }

  return $SubscriptionPlanCopyWith<$Res>(_self.subscriptionPlan!, (value) {
    return _then(_self.copyWith(subscriptionPlan: value));
  });
}
}


/// @nodoc
mixin _$SubscriptionPlan {

@JsonKey(name: 'plan_name') String get planName;@DecimalConverter() Decimal get price;@JsonKey(name: 'max_students') int? get maxStudents;@JsonKey(name: 'max_teachers') int? get maxTeachers;@JsonKey(name: 'max_branches') int? get maxBranches;@JsonKey(name: 'max_storage_gb') int? get maxStorageGb;
/// Create a copy of SubscriptionPlan
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionPlanCopyWith<SubscriptionPlan> get copyWith => _$SubscriptionPlanCopyWithImpl<SubscriptionPlan>(this as SubscriptionPlan, _$identity);

  /// Serializes this SubscriptionPlan to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SubscriptionPlan;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionPlan&&(identical(other.planName, _this.planName) || other.planName == _this.planName)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.maxStudents, _this.maxStudents) || other.maxStudents == _this.maxStudents)&&(identical(other.maxTeachers, _this.maxTeachers) || other.maxTeachers == _this.maxTeachers)&&(identical(other.maxBranches, _this.maxBranches) || other.maxBranches == _this.maxBranches)&&(identical(other.maxStorageGb, _this.maxStorageGb) || other.maxStorageGb == _this.maxStorageGb));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SubscriptionPlan;
  return Object.hash(runtimeType,_this.planName,_this.price,_this.maxStudents,_this.maxTeachers,_this.maxBranches,_this.maxStorageGb);
}

@override
String toString() {
  final _this = this as SubscriptionPlan;
  return 'SubscriptionPlan(planName: ${_this.planName}, price: ${_this.price}, maxStudents: ${_this.maxStudents}, maxTeachers: ${_this.maxTeachers}, maxBranches: ${_this.maxBranches}, maxStorageGb: ${_this.maxStorageGb})';
}


}

/// @nodoc
abstract mixin class $SubscriptionPlanCopyWith<$Res>  {
  factory $SubscriptionPlanCopyWith(SubscriptionPlan value, $Res Function(SubscriptionPlan) _then) = _$SubscriptionPlanCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'plan_name') String planName,@DecimalConverter() Decimal price,@JsonKey(name: 'max_students') int? maxStudents,@JsonKey(name: 'max_teachers') int? maxTeachers,@JsonKey(name: 'max_branches') int? maxBranches,@JsonKey(name: 'max_storage_gb') int? maxStorageGb
});




}
/// @nodoc
class _$SubscriptionPlanCopyWithImpl<$Res>
    implements $SubscriptionPlanCopyWith<$Res> {
  _$SubscriptionPlanCopyWithImpl(this._self, this._then);

  final SubscriptionPlan _self;
  final $Res Function(SubscriptionPlan) _then;

/// Create a copy of SubscriptionPlan
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? planName = null,Object? price = null,Object? maxStudents = freezed,Object? maxTeachers = freezed,Object? maxBranches = freezed,Object? maxStorageGb = freezed,}) {
  return _then(SubscriptionPlan(
planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Decimal,maxStudents: freezed == maxStudents ? _self.maxStudents : maxStudents // ignore: cast_nullable_to_non_nullable
as int?,maxTeachers: freezed == maxTeachers ? _self.maxTeachers : maxTeachers // ignore: cast_nullable_to_non_nullable
as int?,maxBranches: freezed == maxBranches ? _self.maxBranches : maxBranches // ignore: cast_nullable_to_non_nullable
as int?,maxStorageGb: freezed == maxStorageGb ? _self.maxStorageGb : maxStorageGb // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionPlan].
extension SubscriptionPlanPatterns on SubscriptionPlan {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionPlan value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionPlan() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionPlan value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionPlan():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionPlan value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionPlan() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'plan_name')  String planName, @DecimalConverter()  Decimal price, @JsonKey(name: 'max_students')  int? maxStudents, @JsonKey(name: 'max_teachers')  int? maxTeachers, @JsonKey(name: 'max_branches')  int? maxBranches, @JsonKey(name: 'max_storage_gb')  int? maxStorageGb)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionPlan() when $default != null:
return $default(_that.planName,_that.price,_that.maxStudents,_that.maxTeachers,_that.maxBranches,_that.maxStorageGb);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'plan_name')  String planName, @DecimalConverter()  Decimal price, @JsonKey(name: 'max_students')  int? maxStudents, @JsonKey(name: 'max_teachers')  int? maxTeachers, @JsonKey(name: 'max_branches')  int? maxBranches, @JsonKey(name: 'max_storage_gb')  int? maxStorageGb)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionPlan():
return $default(_that.planName,_that.price,_that.maxStudents,_that.maxTeachers,_that.maxBranches,_that.maxStorageGb);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'plan_name')  String planName, @DecimalConverter()  Decimal price, @JsonKey(name: 'max_students')  int? maxStudents, @JsonKey(name: 'max_teachers')  int? maxTeachers, @JsonKey(name: 'max_branches')  int? maxBranches, @JsonKey(name: 'max_storage_gb')  int? maxStorageGb)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionPlan() when $default != null:
return $default(_that.planName,_that.price,_that.maxStudents,_that.maxTeachers,_that.maxBranches,_that.maxStorageGb);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionPlan implements SubscriptionPlan {
  const _SubscriptionPlan({@JsonKey(name: 'plan_name') required this.planName, @DecimalConverter() required this.price, @JsonKey(name: 'max_students') this.maxStudents, @JsonKey(name: 'max_teachers') this.maxTeachers, @JsonKey(name: 'max_branches') this.maxBranches, @JsonKey(name: 'max_storage_gb') this.maxStorageGb});
  factory _SubscriptionPlan.fromJson(Map<String, dynamic> json) => _$SubscriptionPlanFromJson(json);

@override@JsonKey(name: 'plan_name') final  String planName;
@override@DecimalConverter() final  Decimal price;
@override@JsonKey(name: 'max_students') final  int? maxStudents;
@override@JsonKey(name: 'max_teachers') final  int? maxTeachers;
@override@JsonKey(name: 'max_branches') final  int? maxBranches;
@override@JsonKey(name: 'max_storage_gb') final  int? maxStorageGb;

/// Create a copy of SubscriptionPlan
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionPlanCopyWith<_SubscriptionPlan> get copyWith => __$SubscriptionPlanCopyWithImpl<_SubscriptionPlan>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionPlanToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionPlan&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.price, price) || other.price == price)&&(identical(other.maxStudents, maxStudents) || other.maxStudents == maxStudents)&&(identical(other.maxTeachers, maxTeachers) || other.maxTeachers == maxTeachers)&&(identical(other.maxBranches, maxBranches) || other.maxBranches == maxBranches)&&(identical(other.maxStorageGb, maxStorageGb) || other.maxStorageGb == maxStorageGb));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,planName,price,maxStudents,maxTeachers,maxBranches,maxStorageGb);
}

@override
String toString() {
    return 'SubscriptionPlan(planName: $planName, price: $price, maxStudents: $maxStudents, maxTeachers: $maxTeachers, maxBranches: $maxBranches, maxStorageGb: $maxStorageGb)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionPlanCopyWith<$Res> implements $SubscriptionPlanCopyWith<$Res> {
  factory _$SubscriptionPlanCopyWith(_SubscriptionPlan value, $Res Function(_SubscriptionPlan) _then) = __$SubscriptionPlanCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'plan_name') String planName,@DecimalConverter() Decimal price,@JsonKey(name: 'max_students') int? maxStudents,@JsonKey(name: 'max_teachers') int? maxTeachers,@JsonKey(name: 'max_branches') int? maxBranches,@JsonKey(name: 'max_storage_gb') int? maxStorageGb
});




}
/// @nodoc
class __$SubscriptionPlanCopyWithImpl<$Res>
    implements _$SubscriptionPlanCopyWith<$Res> {
  __$SubscriptionPlanCopyWithImpl(this._self, this._then);

  final _SubscriptionPlan _self;
  final $Res Function(_SubscriptionPlan) _then;

/// Create a copy of SubscriptionPlan
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? planName = null,Object? price = null,Object? maxStudents = freezed,Object? maxTeachers = freezed,Object? maxBranches = freezed,Object? maxStorageGb = freezed,}) {
  return _then(_SubscriptionPlan(
planName: null == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Decimal,maxStudents: freezed == maxStudents ? _self.maxStudents : maxStudents // ignore: cast_nullable_to_non_nullable
as int?,maxTeachers: freezed == maxTeachers ? _self.maxTeachers : maxTeachers // ignore: cast_nullable_to_non_nullable
as int?,maxBranches: freezed == maxBranches ? _self.maxBranches : maxBranches // ignore: cast_nullable_to_non_nullable
as int?,maxStorageGb: freezed == maxStorageGb ? _self.maxStorageGb : maxStorageGb // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$SchoolLogo {

@JsonKey(name: 'institution_name') String? get institutionName;@JsonKey(name: 'logo_url') String? get logoUrl;
/// Create a copy of SchoolLogo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SchoolLogoCopyWith<SchoolLogo> get copyWith => _$SchoolLogoCopyWithImpl<SchoolLogo>(this as SchoolLogo, _$identity);

  /// Serializes this SchoolLogo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SchoolLogo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SchoolLogo&&(identical(other.institutionName, _this.institutionName) || other.institutionName == _this.institutionName)&&(identical(other.logoUrl, _this.logoUrl) || other.logoUrl == _this.logoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SchoolLogo;
  return Object.hash(runtimeType,_this.institutionName,_this.logoUrl);
}

@override
String toString() {
  final _this = this as SchoolLogo;
  return 'SchoolLogo(institutionName: ${_this.institutionName}, logoUrl: ${_this.logoUrl})';
}


}

/// @nodoc
abstract mixin class $SchoolLogoCopyWith<$Res>  {
  factory $SchoolLogoCopyWith(SchoolLogo value, $Res Function(SchoolLogo) _then) = _$SchoolLogoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'institution_name') String? institutionName,@JsonKey(name: 'logo_url') String? logoUrl
});




}
/// @nodoc
class _$SchoolLogoCopyWithImpl<$Res>
    implements $SchoolLogoCopyWith<$Res> {
  _$SchoolLogoCopyWithImpl(this._self, this._then);

  final SchoolLogo _self;
  final $Res Function(SchoolLogo) _then;

/// Create a copy of SchoolLogo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? institutionName = freezed,Object? logoUrl = freezed,}) {
  return _then(SchoolLogo(
institutionName: freezed == institutionName ? _self.institutionName : institutionName // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SchoolLogo].
extension SchoolLogoPatterns on SchoolLogo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SchoolLogo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SchoolLogo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SchoolLogo value)  $default,){
final _that = this;
switch (_that) {
case _SchoolLogo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SchoolLogo value)?  $default,){
final _that = this;
switch (_that) {
case _SchoolLogo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'institution_name')  String? institutionName, @JsonKey(name: 'logo_url')  String? logoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SchoolLogo() when $default != null:
return $default(_that.institutionName,_that.logoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'institution_name')  String? institutionName, @JsonKey(name: 'logo_url')  String? logoUrl)  $default,) {final _that = this;
switch (_that) {
case _SchoolLogo():
return $default(_that.institutionName,_that.logoUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'institution_name')  String? institutionName, @JsonKey(name: 'logo_url')  String? logoUrl)?  $default,) {final _that = this;
switch (_that) {
case _SchoolLogo() when $default != null:
return $default(_that.institutionName,_that.logoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SchoolLogo implements SchoolLogo {
  const _SchoolLogo({@JsonKey(name: 'institution_name') this.institutionName, @JsonKey(name: 'logo_url') this.logoUrl});
  factory _SchoolLogo.fromJson(Map<String, dynamic> json) => _$SchoolLogoFromJson(json);

@override@JsonKey(name: 'institution_name') final  String? institutionName;
@override@JsonKey(name: 'logo_url') final  String? logoUrl;

/// Create a copy of SchoolLogo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SchoolLogoCopyWith<_SchoolLogo> get copyWith => __$SchoolLogoCopyWithImpl<_SchoolLogo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SchoolLogoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SchoolLogo&&(identical(other.institutionName, institutionName) || other.institutionName == institutionName)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,institutionName,logoUrl);
}

@override
String toString() {
    return 'SchoolLogo(institutionName: $institutionName, logoUrl: $logoUrl)';
}


}

/// @nodoc
abstract mixin class _$SchoolLogoCopyWith<$Res> implements $SchoolLogoCopyWith<$Res> {
  factory _$SchoolLogoCopyWith(_SchoolLogo value, $Res Function(_SchoolLogo) _then) = __$SchoolLogoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'institution_name') String? institutionName,@JsonKey(name: 'logo_url') String? logoUrl
});




}
/// @nodoc
class __$SchoolLogoCopyWithImpl<$Res>
    implements _$SchoolLogoCopyWith<$Res> {
  __$SchoolLogoCopyWithImpl(this._self, this._then);

  final _SchoolLogo _self;
  final $Res Function(_SchoolLogo) _then;

/// Create a copy of SchoolLogo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? institutionName = freezed,Object? logoUrl = freezed,}) {
  return _then(_SchoolLogo(
institutionName: freezed == institutionName ? _self.institutionName : institutionName // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
