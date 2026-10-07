// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_campus_parents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParentAccount {

@JsonKey(name: 'parent_account_id') String get parentAccountId;@JsonKey(name: 'user_id') String? get userId; String? get username;@JsonKey(name: 'account_status') String? get accountStatus;@JsonKey(name: 'locked_until') DateTime? get lockedUntil;@JsonKey(name: 'failed_login_attempts') int? get failedLoginAttempts;@JsonKey(name: 'last_active_at') DateTime? get lastActiveAt; String? get name;@JsonKey(name: 'relation_type') String? get relationType;@JsonKey(name: 'mobile_no') String? get mobileNo; String? get email;@JsonKey(name: 'photo_url') String? get photoUrl;@JsonKey(name: 'created_at') DateTime? get createdAt; List<ParentLinkedChild> get children;@JsonKey(name: 'children_count') int get childrenCount;
/// Create a copy of ParentAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParentAccountCopyWith<ParentAccount> get copyWith => _$ParentAccountCopyWithImpl<ParentAccount>(this as ParentAccount, _$identity);

  /// Serializes this ParentAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ParentAccount;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParentAccount&&(identical(other.parentAccountId, _this.parentAccountId) || other.parentAccountId == _this.parentAccountId)&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.username, _this.username) || other.username == _this.username)&&(identical(other.accountStatus, _this.accountStatus) || other.accountStatus == _this.accountStatus)&&(identical(other.lockedUntil, _this.lockedUntil) || other.lockedUntil == _this.lockedUntil)&&(identical(other.failedLoginAttempts, _this.failedLoginAttempts) || other.failedLoginAttempts == _this.failedLoginAttempts)&&(identical(other.lastActiveAt, _this.lastActiveAt) || other.lastActiveAt == _this.lastActiveAt)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.relationType, _this.relationType) || other.relationType == _this.relationType)&&(identical(other.mobileNo, _this.mobileNo) || other.mobileNo == _this.mobileNo)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.photoUrl, _this.photoUrl) || other.photoUrl == _this.photoUrl)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&const DeepCollectionEquality().equals(other.children, _this.children)&&(identical(other.childrenCount, _this.childrenCount) || other.childrenCount == _this.childrenCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ParentAccount;
  return Object.hash(runtimeType,_this.parentAccountId,_this.userId,_this.username,_this.accountStatus,_this.lockedUntil,_this.failedLoginAttempts,_this.lastActiveAt,_this.name,_this.relationType,_this.mobileNo,_this.email,_this.photoUrl,_this.createdAt,const DeepCollectionEquality().hash(_this.children),_this.childrenCount);
}

@override
String toString() {
  final _this = this as ParentAccount;
  return 'ParentAccount(parentAccountId: ${_this.parentAccountId}, userId: ${_this.userId}, username: ${_this.username}, accountStatus: ${_this.accountStatus}, lockedUntil: ${_this.lockedUntil}, failedLoginAttempts: ${_this.failedLoginAttempts}, lastActiveAt: ${_this.lastActiveAt}, name: ${_this.name}, relationType: ${_this.relationType}, mobileNo: ${_this.mobileNo}, email: ${_this.email}, photoUrl: ${_this.photoUrl}, createdAt: ${_this.createdAt}, children: ${_this.children}, childrenCount: ${_this.childrenCount})';
}


}

/// @nodoc
abstract mixin class $ParentAccountCopyWith<$Res>  {
  factory $ParentAccountCopyWith(ParentAccount value, $Res Function(ParentAccount) _then) = _$ParentAccountCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'parent_account_id') String parentAccountId,@JsonKey(name: 'user_id') String? userId, String? username,@JsonKey(name: 'account_status') String? accountStatus,@JsonKey(name: 'locked_until') DateTime? lockedUntil,@JsonKey(name: 'failed_login_attempts') int? failedLoginAttempts,@JsonKey(name: 'last_active_at') DateTime? lastActiveAt, String? name,@JsonKey(name: 'relation_type') String? relationType,@JsonKey(name: 'mobile_no') String? mobileNo, String? email,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'created_at') DateTime? createdAt, List<ParentLinkedChild> children,@JsonKey(name: 'children_count') int childrenCount
});




}
/// @nodoc
class _$ParentAccountCopyWithImpl<$Res>
    implements $ParentAccountCopyWith<$Res> {
  _$ParentAccountCopyWithImpl(this._self, this._then);

  final ParentAccount _self;
  final $Res Function(ParentAccount) _then;

/// Create a copy of ParentAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parentAccountId = null,Object? userId = freezed,Object? username = freezed,Object? accountStatus = freezed,Object? lockedUntil = freezed,Object? failedLoginAttempts = freezed,Object? lastActiveAt = freezed,Object? name = freezed,Object? relationType = freezed,Object? mobileNo = freezed,Object? email = freezed,Object? photoUrl = freezed,Object? createdAt = freezed,Object? children = null,Object? childrenCount = null,}) {
  return _then(ParentAccount(
parentAccountId: null == parentAccountId ? _self.parentAccountId : parentAccountId // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String?,lockedUntil: freezed == lockedUntil ? _self.lockedUntil : lockedUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,failedLoginAttempts: freezed == failedLoginAttempts ? _self.failedLoginAttempts : failedLoginAttempts // ignore: cast_nullable_to_non_nullable
as int?,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,relationType: freezed == relationType ? _self.relationType : relationType // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<ParentLinkedChild>,childrenCount: null == childrenCount ? _self.childrenCount : childrenCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ParentAccount].
extension ParentAccountPatterns on ParentAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParentAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParentAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParentAccount value)  $default,){
final _that = this;
switch (_that) {
case _ParentAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParentAccount value)?  $default,){
final _that = this;
switch (_that) {
case _ParentAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_account_id')  String parentAccountId, @JsonKey(name: 'user_id')  String? userId,  String? username, @JsonKey(name: 'account_status')  String? accountStatus, @JsonKey(name: 'locked_until')  DateTime? lockedUntil, @JsonKey(name: 'failed_login_attempts')  int? failedLoginAttempts, @JsonKey(name: 'last_active_at')  DateTime? lastActiveAt,  String? name, @JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'created_at')  DateTime? createdAt,  List<ParentLinkedChild> children, @JsonKey(name: 'children_count')  int childrenCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParentAccount() when $default != null:
return $default(_that.parentAccountId,_that.userId,_that.username,_that.accountStatus,_that.lockedUntil,_that.failedLoginAttempts,_that.lastActiveAt,_that.name,_that.relationType,_that.mobileNo,_that.email,_that.photoUrl,_that.createdAt,_that.children,_that.childrenCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_account_id')  String parentAccountId, @JsonKey(name: 'user_id')  String? userId,  String? username, @JsonKey(name: 'account_status')  String? accountStatus, @JsonKey(name: 'locked_until')  DateTime? lockedUntil, @JsonKey(name: 'failed_login_attempts')  int? failedLoginAttempts, @JsonKey(name: 'last_active_at')  DateTime? lastActiveAt,  String? name, @JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'created_at')  DateTime? createdAt,  List<ParentLinkedChild> children, @JsonKey(name: 'children_count')  int childrenCount)  $default,) {final _that = this;
switch (_that) {
case _ParentAccount():
return $default(_that.parentAccountId,_that.userId,_that.username,_that.accountStatus,_that.lockedUntil,_that.failedLoginAttempts,_that.lastActiveAt,_that.name,_that.relationType,_that.mobileNo,_that.email,_that.photoUrl,_that.createdAt,_that.children,_that.childrenCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'parent_account_id')  String parentAccountId, @JsonKey(name: 'user_id')  String? userId,  String? username, @JsonKey(name: 'account_status')  String? accountStatus, @JsonKey(name: 'locked_until')  DateTime? lockedUntil, @JsonKey(name: 'failed_login_attempts')  int? failedLoginAttempts, @JsonKey(name: 'last_active_at')  DateTime? lastActiveAt,  String? name, @JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'mobile_no')  String? mobileNo,  String? email, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'created_at')  DateTime? createdAt,  List<ParentLinkedChild> children, @JsonKey(name: 'children_count')  int childrenCount)?  $default,) {final _that = this;
switch (_that) {
case _ParentAccount() when $default != null:
return $default(_that.parentAccountId,_that.userId,_that.username,_that.accountStatus,_that.lockedUntil,_that.failedLoginAttempts,_that.lastActiveAt,_that.name,_that.relationType,_that.mobileNo,_that.email,_that.photoUrl,_that.createdAt,_that.children,_that.childrenCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParentAccount implements ParentAccount {
  const _ParentAccount({@JsonKey(name: 'parent_account_id') required this.parentAccountId, @JsonKey(name: 'user_id') this.userId, this.username, @JsonKey(name: 'account_status') this.accountStatus, @JsonKey(name: 'locked_until') this.lockedUntil, @JsonKey(name: 'failed_login_attempts') this.failedLoginAttempts, @JsonKey(name: 'last_active_at') this.lastActiveAt, this.name, @JsonKey(name: 'relation_type') this.relationType, @JsonKey(name: 'mobile_no') this.mobileNo, this.email, @JsonKey(name: 'photo_url') this.photoUrl, @JsonKey(name: 'created_at') this.createdAt,  List<ParentLinkedChild> children = const <ParentLinkedChild>[], @JsonKey(name: 'children_count') this.childrenCount = 0}): _children = children;
  factory _ParentAccount.fromJson(Map<String, dynamic> json) => _$ParentAccountFromJson(json);

@override@JsonKey(name: 'parent_account_id') final  String parentAccountId;
@override@JsonKey(name: 'user_id') final  String? userId;
@override final  String? username;
@override@JsonKey(name: 'account_status') final  String? accountStatus;
@override@JsonKey(name: 'locked_until') final  DateTime? lockedUntil;
@override@JsonKey(name: 'failed_login_attempts') final  int? failedLoginAttempts;
@override@JsonKey(name: 'last_active_at') final  DateTime? lastActiveAt;
@override final  String? name;
@override@JsonKey(name: 'relation_type') final  String? relationType;
@override@JsonKey(name: 'mobile_no') final  String? mobileNo;
@override final  String? email;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
 final  List<ParentLinkedChild> _children;
@override@JsonKey() List<ParentLinkedChild> get children {
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_children);
}

@override@JsonKey(name: 'children_count') final  int childrenCount;

/// Create a copy of ParentAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParentAccountCopyWith<_ParentAccount> get copyWith => __$ParentAccountCopyWithImpl<_ParentAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParentAccountToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParentAccount&&(identical(other.parentAccountId, parentAccountId) || other.parentAccountId == parentAccountId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.accountStatus, accountStatus) || other.accountStatus == accountStatus)&&(identical(other.lockedUntil, lockedUntil) || other.lockedUntil == lockedUntil)&&(identical(other.failedLoginAttempts, failedLoginAttempts) || other.failedLoginAttempts == failedLoginAttempts)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.relationType, relationType) || other.relationType == relationType)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.email, email) || other.email == email)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.children, _children)&&(identical(other.childrenCount, childrenCount) || other.childrenCount == childrenCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,parentAccountId,userId,username,accountStatus,lockedUntil,failedLoginAttempts,lastActiveAt,name,relationType,mobileNo,email,photoUrl,createdAt,const DeepCollectionEquality().hash(_children),childrenCount);
}

@override
String toString() {
    return 'ParentAccount(parentAccountId: $parentAccountId, userId: $userId, username: $username, accountStatus: $accountStatus, lockedUntil: $lockedUntil, failedLoginAttempts: $failedLoginAttempts, lastActiveAt: $lastActiveAt, name: $name, relationType: $relationType, mobileNo: $mobileNo, email: $email, photoUrl: $photoUrl, createdAt: $createdAt, children: $children, childrenCount: $childrenCount)';
}


}

/// @nodoc
abstract mixin class _$ParentAccountCopyWith<$Res> implements $ParentAccountCopyWith<$Res> {
  factory _$ParentAccountCopyWith(_ParentAccount value, $Res Function(_ParentAccount) _then) = __$ParentAccountCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'parent_account_id') String parentAccountId,@JsonKey(name: 'user_id') String? userId, String? username,@JsonKey(name: 'account_status') String? accountStatus,@JsonKey(name: 'locked_until') DateTime? lockedUntil,@JsonKey(name: 'failed_login_attempts') int? failedLoginAttempts,@JsonKey(name: 'last_active_at') DateTime? lastActiveAt, String? name,@JsonKey(name: 'relation_type') String? relationType,@JsonKey(name: 'mobile_no') String? mobileNo, String? email,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'created_at') DateTime? createdAt, List<ParentLinkedChild> children,@JsonKey(name: 'children_count') int childrenCount
});




}
/// @nodoc
class __$ParentAccountCopyWithImpl<$Res>
    implements _$ParentAccountCopyWith<$Res> {
  __$ParentAccountCopyWithImpl(this._self, this._then);

  final _ParentAccount _self;
  final $Res Function(_ParentAccount) _then;

/// Create a copy of ParentAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parentAccountId = null,Object? userId = freezed,Object? username = freezed,Object? accountStatus = freezed,Object? lockedUntil = freezed,Object? failedLoginAttempts = freezed,Object? lastActiveAt = freezed,Object? name = freezed,Object? relationType = freezed,Object? mobileNo = freezed,Object? email = freezed,Object? photoUrl = freezed,Object? createdAt = freezed,Object? children = null,Object? childrenCount = null,}) {
  return _then(_ParentAccount(
parentAccountId: null == parentAccountId ? _self.parentAccountId : parentAccountId // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,accountStatus: freezed == accountStatus ? _self.accountStatus : accountStatus // ignore: cast_nullable_to_non_nullable
as String?,lockedUntil: freezed == lockedUntil ? _self.lockedUntil : lockedUntil // ignore: cast_nullable_to_non_nullable
as DateTime?,failedLoginAttempts: freezed == failedLoginAttempts ? _self.failedLoginAttempts : failedLoginAttempts // ignore: cast_nullable_to_non_nullable
as int?,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,relationType: freezed == relationType ? _self.relationType : relationType // ignore: cast_nullable_to_non_nullable
as String?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<ParentLinkedChild>,childrenCount: null == childrenCount ? _self.childrenCount : childrenCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ParentLinkedChild {

@JsonKey(name: 'parent_child_id') String get parentChildId;@JsonKey(name: 'student_id') String get studentId;@JsonKey(name: 'relation_type') String? get relationType;@JsonKey(name: 'admission_no') String? get admissionNo;@JsonKey(name: 'student_status') String? get studentStatus;@JsonKey(name: 'student_name') String? get studentName;@JsonKey(name: 'class_name') String? get className;@JsonKey(name: 'section_name') String? get sectionName;
/// Create a copy of ParentLinkedChild
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParentLinkedChildCopyWith<ParentLinkedChild> get copyWith => _$ParentLinkedChildCopyWithImpl<ParentLinkedChild>(this as ParentLinkedChild, _$identity);

  /// Serializes this ParentLinkedChild to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ParentLinkedChild;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParentLinkedChild&&(identical(other.parentChildId, _this.parentChildId) || other.parentChildId == _this.parentChildId)&&(identical(other.studentId, _this.studentId) || other.studentId == _this.studentId)&&(identical(other.relationType, _this.relationType) || other.relationType == _this.relationType)&&(identical(other.admissionNo, _this.admissionNo) || other.admissionNo == _this.admissionNo)&&(identical(other.studentStatus, _this.studentStatus) || other.studentStatus == _this.studentStatus)&&(identical(other.studentName, _this.studentName) || other.studentName == _this.studentName)&&(identical(other.className, _this.className) || other.className == _this.className)&&(identical(other.sectionName, _this.sectionName) || other.sectionName == _this.sectionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ParentLinkedChild;
  return Object.hash(runtimeType,_this.parentChildId,_this.studentId,_this.relationType,_this.admissionNo,_this.studentStatus,_this.studentName,_this.className,_this.sectionName);
}

@override
String toString() {
  final _this = this as ParentLinkedChild;
  return 'ParentLinkedChild(parentChildId: ${_this.parentChildId}, studentId: ${_this.studentId}, relationType: ${_this.relationType}, admissionNo: ${_this.admissionNo}, studentStatus: ${_this.studentStatus}, studentName: ${_this.studentName}, className: ${_this.className}, sectionName: ${_this.sectionName})';
}


}

/// @nodoc
abstract mixin class $ParentLinkedChildCopyWith<$Res>  {
  factory $ParentLinkedChildCopyWith(ParentLinkedChild value, $Res Function(ParentLinkedChild) _then) = _$ParentLinkedChildCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'parent_child_id') String parentChildId,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'relation_type') String? relationType,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'student_status') String? studentStatus,@JsonKey(name: 'student_name') String? studentName,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName
});




}
/// @nodoc
class _$ParentLinkedChildCopyWithImpl<$Res>
    implements $ParentLinkedChildCopyWith<$Res> {
  _$ParentLinkedChildCopyWithImpl(this._self, this._then);

  final ParentLinkedChild _self;
  final $Res Function(ParentLinkedChild) _then;

/// Create a copy of ParentLinkedChild
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parentChildId = null,Object? studentId = null,Object? relationType = freezed,Object? admissionNo = freezed,Object? studentStatus = freezed,Object? studentName = freezed,Object? className = freezed,Object? sectionName = freezed,}) {
  return _then(ParentLinkedChild(
parentChildId: null == parentChildId ? _self.parentChildId : parentChildId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,relationType: freezed == relationType ? _self.relationType : relationType // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,studentStatus: freezed == studentStatus ? _self.studentStatus : studentStatus // ignore: cast_nullable_to_non_nullable
as String?,studentName: freezed == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ParentLinkedChild].
extension ParentLinkedChildPatterns on ParentLinkedChild {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParentLinkedChild value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParentLinkedChild() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParentLinkedChild value)  $default,){
final _that = this;
switch (_that) {
case _ParentLinkedChild():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParentLinkedChild value)?  $default,){
final _that = this;
switch (_that) {
case _ParentLinkedChild() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_child_id')  String parentChildId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'student_status')  String? studentStatus, @JsonKey(name: 'student_name')  String? studentName, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParentLinkedChild() when $default != null:
return $default(_that.parentChildId,_that.studentId,_that.relationType,_that.admissionNo,_that.studentStatus,_that.studentName,_that.className,_that.sectionName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent_child_id')  String parentChildId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'student_status')  String? studentStatus, @JsonKey(name: 'student_name')  String? studentName, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName)  $default,) {final _that = this;
switch (_that) {
case _ParentLinkedChild():
return $default(_that.parentChildId,_that.studentId,_that.relationType,_that.admissionNo,_that.studentStatus,_that.studentName,_that.className,_that.sectionName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'parent_child_id')  String parentChildId, @JsonKey(name: 'student_id')  String studentId, @JsonKey(name: 'relation_type')  String? relationType, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'student_status')  String? studentStatus, @JsonKey(name: 'student_name')  String? studentName, @JsonKey(name: 'class_name')  String? className, @JsonKey(name: 'section_name')  String? sectionName)?  $default,) {final _that = this;
switch (_that) {
case _ParentLinkedChild() when $default != null:
return $default(_that.parentChildId,_that.studentId,_that.relationType,_that.admissionNo,_that.studentStatus,_that.studentName,_that.className,_that.sectionName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParentLinkedChild implements ParentLinkedChild {
  const _ParentLinkedChild({@JsonKey(name: 'parent_child_id') required this.parentChildId, @JsonKey(name: 'student_id') required this.studentId, @JsonKey(name: 'relation_type') this.relationType, @JsonKey(name: 'admission_no') this.admissionNo, @JsonKey(name: 'student_status') this.studentStatus, @JsonKey(name: 'student_name') this.studentName, @JsonKey(name: 'class_name') this.className, @JsonKey(name: 'section_name') this.sectionName});
  factory _ParentLinkedChild.fromJson(Map<String, dynamic> json) => _$ParentLinkedChildFromJson(json);

@override@JsonKey(name: 'parent_child_id') final  String parentChildId;
@override@JsonKey(name: 'student_id') final  String studentId;
@override@JsonKey(name: 'relation_type') final  String? relationType;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override@JsonKey(name: 'student_status') final  String? studentStatus;
@override@JsonKey(name: 'student_name') final  String? studentName;
@override@JsonKey(name: 'class_name') final  String? className;
@override@JsonKey(name: 'section_name') final  String? sectionName;

/// Create a copy of ParentLinkedChild
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParentLinkedChildCopyWith<_ParentLinkedChild> get copyWith => __$ParentLinkedChildCopyWithImpl<_ParentLinkedChild>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParentLinkedChildToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParentLinkedChild&&(identical(other.parentChildId, parentChildId) || other.parentChildId == parentChildId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.relationType, relationType) || other.relationType == relationType)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.studentStatus, studentStatus) || other.studentStatus == studentStatus)&&(identical(other.studentName, studentName) || other.studentName == studentName)&&(identical(other.className, className) || other.className == className)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,parentChildId,studentId,relationType,admissionNo,studentStatus,studentName,className,sectionName);
}

@override
String toString() {
    return 'ParentLinkedChild(parentChildId: $parentChildId, studentId: $studentId, relationType: $relationType, admissionNo: $admissionNo, studentStatus: $studentStatus, studentName: $studentName, className: $className, sectionName: $sectionName)';
}


}

/// @nodoc
abstract mixin class _$ParentLinkedChildCopyWith<$Res> implements $ParentLinkedChildCopyWith<$Res> {
  factory _$ParentLinkedChildCopyWith(_ParentLinkedChild value, $Res Function(_ParentLinkedChild) _then) = __$ParentLinkedChildCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'parent_child_id') String parentChildId,@JsonKey(name: 'student_id') String studentId,@JsonKey(name: 'relation_type') String? relationType,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'student_status') String? studentStatus,@JsonKey(name: 'student_name') String? studentName,@JsonKey(name: 'class_name') String? className,@JsonKey(name: 'section_name') String? sectionName
});




}
/// @nodoc
class __$ParentLinkedChildCopyWithImpl<$Res>
    implements _$ParentLinkedChildCopyWith<$Res> {
  __$ParentLinkedChildCopyWithImpl(this._self, this._then);

  final _ParentLinkedChild _self;
  final $Res Function(_ParentLinkedChild) _then;

/// Create a copy of ParentLinkedChild
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parentChildId = null,Object? studentId = null,Object? relationType = freezed,Object? admissionNo = freezed,Object? studentStatus = freezed,Object? studentName = freezed,Object? className = freezed,Object? sectionName = freezed,}) {
  return _then(_ParentLinkedChild(
parentChildId: null == parentChildId ? _self.parentChildId : parentChildId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,relationType: freezed == relationType ? _self.relationType : relationType // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,studentStatus: freezed == studentStatus ? _self.studentStatus : studentStatus // ignore: cast_nullable_to_non_nullable
as String?,studentName: freezed == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ParentAccountPage {

 int get total; int get page; int get limit; List<ParentAccount> get data;
/// Create a copy of ParentAccountPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParentAccountPageCopyWith<ParentAccountPage> get copyWith => _$ParentAccountPageCopyWithImpl<ParentAccountPage>(this as ParentAccountPage, _$identity);

  /// Serializes this ParentAccountPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ParentAccountPage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParentAccountPage&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.limit, _this.limit) || other.limit == _this.limit)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ParentAccountPage;
  return Object.hash(runtimeType,_this.total,_this.page,_this.limit,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as ParentAccountPage;
  return 'ParentAccountPage(total: ${_this.total}, page: ${_this.page}, limit: ${_this.limit}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $ParentAccountPageCopyWith<$Res>  {
  factory $ParentAccountPageCopyWith(ParentAccountPage value, $Res Function(ParentAccountPage) _then) = _$ParentAccountPageCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, List<ParentAccount> data
});




}
/// @nodoc
class _$ParentAccountPageCopyWithImpl<$Res>
    implements $ParentAccountPageCopyWith<$Res> {
  _$ParentAccountPageCopyWithImpl(this._self, this._then);

  final ParentAccountPage _self;
  final $Res Function(ParentAccountPage) _then;

/// Create a copy of ParentAccountPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(ParentAccountPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ParentAccount>,
  ));
}

}


/// Adds pattern-matching-related methods to [ParentAccountPage].
extension ParentAccountPagePatterns on ParentAccountPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParentAccountPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParentAccountPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParentAccountPage value)  $default,){
final _that = this;
switch (_that) {
case _ParentAccountPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParentAccountPage value)?  $default,){
final _that = this;
switch (_that) {
case _ParentAccountPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<ParentAccount> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParentAccountPage() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<ParentAccount> data)  $default,) {final _that = this;
switch (_that) {
case _ParentAccountPage():
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int limit,  List<ParentAccount> data)?  $default,) {final _that = this;
switch (_that) {
case _ParentAccountPage() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParentAccountPage implements ParentAccountPage {
  const _ParentAccountPage({this.total = 0, this.page = 1, this.limit = 20,  List<ParentAccount> data = const <ParentAccount>[]}): _data = data;
  factory _ParentAccountPage.fromJson(Map<String, dynamic> json) => _$ParentAccountPageFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
 final  List<ParentAccount> _data;
@override@JsonKey() List<ParentAccount> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ParentAccountPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParentAccountPageCopyWith<_ParentAccountPage> get copyWith => __$ParentAccountPageCopyWithImpl<_ParentAccountPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParentAccountPageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParentAccountPage&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,page,limit,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'ParentAccountPage(total: $total, page: $page, limit: $limit, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ParentAccountPageCopyWith<$Res> implements $ParentAccountPageCopyWith<$Res> {
  factory _$ParentAccountPageCopyWith(_ParentAccountPage value, $Res Function(_ParentAccountPage) _then) = __$ParentAccountPageCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, List<ParentAccount> data
});




}
/// @nodoc
class __$ParentAccountPageCopyWithImpl<$Res>
    implements _$ParentAccountPageCopyWith<$Res> {
  __$ParentAccountPageCopyWithImpl(this._self, this._then);

  final _ParentAccountPage _self;
  final $Res Function(_ParentAccountPage) _then;

/// Create a copy of ParentAccountPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,}) {
  return _then(_ParentAccountPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ParentAccount>,
  ));
}


}


/// @nodoc
mixin _$ParentLoginResult {

@JsonKey(name: 'user_id') String? get userId; String? get username; String? get password;@JsonKey(name: 'linked_existing') bool get linkedExisting;
/// Create a copy of ParentLoginResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParentLoginResultCopyWith<ParentLoginResult> get copyWith => _$ParentLoginResultCopyWithImpl<ParentLoginResult>(this as ParentLoginResult, _$identity);

  /// Serializes this ParentLoginResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ParentLoginResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParentLoginResult&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.username, _this.username) || other.username == _this.username)&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.linkedExisting, _this.linkedExisting) || other.linkedExisting == _this.linkedExisting));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ParentLoginResult;
  return Object.hash(runtimeType,_this.userId,_this.username,_this.password,_this.linkedExisting);
}

@override
String toString() {
  final _this = this as ParentLoginResult;
  return 'ParentLoginResult(userId: ${_this.userId}, username: ${_this.username}, password: ${_this.password}, linkedExisting: ${_this.linkedExisting})';
}


}

/// @nodoc
abstract mixin class $ParentLoginResultCopyWith<$Res>  {
  factory $ParentLoginResultCopyWith(ParentLoginResult value, $Res Function(ParentLoginResult) _then) = _$ParentLoginResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String? userId, String? username, String? password,@JsonKey(name: 'linked_existing') bool linkedExisting
});




}
/// @nodoc
class _$ParentLoginResultCopyWithImpl<$Res>
    implements $ParentLoginResultCopyWith<$Res> {
  _$ParentLoginResultCopyWithImpl(this._self, this._then);

  final ParentLoginResult _self;
  final $Res Function(ParentLoginResult) _then;

/// Create a copy of ParentLoginResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? username = freezed,Object? password = freezed,Object? linkedExisting = null,}) {
  return _then(ParentLoginResult(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,linkedExisting: null == linkedExisting ? _self.linkedExisting : linkedExisting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ParentLoginResult].
extension ParentLoginResultPatterns on ParentLoginResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParentLoginResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParentLoginResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParentLoginResult value)  $default,){
final _that = this;
switch (_that) {
case _ParentLoginResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParentLoginResult value)?  $default,){
final _that = this;
switch (_that) {
case _ParentLoginResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String? userId,  String? username,  String? password, @JsonKey(name: 'linked_existing')  bool linkedExisting)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParentLoginResult() when $default != null:
return $default(_that.userId,_that.username,_that.password,_that.linkedExisting);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String? userId,  String? username,  String? password, @JsonKey(name: 'linked_existing')  bool linkedExisting)  $default,) {final _that = this;
switch (_that) {
case _ParentLoginResult():
return $default(_that.userId,_that.username,_that.password,_that.linkedExisting);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String? userId,  String? username,  String? password, @JsonKey(name: 'linked_existing')  bool linkedExisting)?  $default,) {final _that = this;
switch (_that) {
case _ParentLoginResult() when $default != null:
return $default(_that.userId,_that.username,_that.password,_that.linkedExisting);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParentLoginResult implements ParentLoginResult {
  const _ParentLoginResult({@JsonKey(name: 'user_id') this.userId, this.username, this.password, @JsonKey(name: 'linked_existing') this.linkedExisting = false});
  factory _ParentLoginResult.fromJson(Map<String, dynamic> json) => _$ParentLoginResultFromJson(json);

@override@JsonKey(name: 'user_id') final  String? userId;
@override final  String? username;
@override final  String? password;
@override@JsonKey(name: 'linked_existing') final  bool linkedExisting;

/// Create a copy of ParentLoginResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParentLoginResultCopyWith<_ParentLoginResult> get copyWith => __$ParentLoginResultCopyWithImpl<_ParentLoginResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParentLoginResultToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParentLoginResult&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.linkedExisting, linkedExisting) || other.linkedExisting == linkedExisting));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,userId,username,password,linkedExisting);
}

@override
String toString() {
    return 'ParentLoginResult(userId: $userId, username: $username, password: $password, linkedExisting: $linkedExisting)';
}


}

/// @nodoc
abstract mixin class _$ParentLoginResultCopyWith<$Res> implements $ParentLoginResultCopyWith<$Res> {
  factory _$ParentLoginResultCopyWith(_ParentLoginResult value, $Res Function(_ParentLoginResult) _then) = __$ParentLoginResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String? userId, String? username, String? password,@JsonKey(name: 'linked_existing') bool linkedExisting
});




}
/// @nodoc
class __$ParentLoginResultCopyWithImpl<$Res>
    implements _$ParentLoginResultCopyWith<$Res> {
  __$ParentLoginResultCopyWithImpl(this._self, this._then);

  final _ParentLoginResult _self;
  final $Res Function(_ParentLoginResult) _then;

/// Create a copy of ParentLoginResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? username = freezed,Object? password = freezed,Object? linkedExisting = null,}) {
  return _then(_ParentLoginResult(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,linkedExisting: null == linkedExisting ? _self.linkedExisting : linkedExisting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
