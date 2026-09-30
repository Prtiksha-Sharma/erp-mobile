// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TeacherContact {

@JsonKey(name: 'staff_id') String get staffId;@JsonKey(name: 'full_name') String get fullName; String? get designation; String? get department;@JsonKey(name: 'profile_photo_url') String? get profilePhotoUrl;
/// Create a copy of TeacherContact
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeacherContactCopyWith<TeacherContact> get copyWith => _$TeacherContactCopyWithImpl<TeacherContact>(this as TeacherContact, _$identity);

  /// Serializes this TeacherContact to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TeacherContact;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeacherContact&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.designation, _this.designation) || other.designation == _this.designation)&&(identical(other.department, _this.department) || other.department == _this.department)&&(identical(other.profilePhotoUrl, _this.profilePhotoUrl) || other.profilePhotoUrl == _this.profilePhotoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TeacherContact;
  return Object.hash(runtimeType,_this.staffId,_this.fullName,_this.designation,_this.department,_this.profilePhotoUrl);
}

@override
String toString() {
  final _this = this as TeacherContact;
  return 'TeacherContact(staffId: ${_this.staffId}, fullName: ${_this.fullName}, designation: ${_this.designation}, department: ${_this.department}, profilePhotoUrl: ${_this.profilePhotoUrl})';
}


}

/// @nodoc
abstract mixin class $TeacherContactCopyWith<$Res>  {
  factory $TeacherContactCopyWith(TeacherContact value, $Res Function(TeacherContact) _then) = _$TeacherContactCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'full_name') String fullName, String? designation, String? department,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl
});




}
/// @nodoc
class _$TeacherContactCopyWithImpl<$Res>
    implements $TeacherContactCopyWith<$Res> {
  _$TeacherContactCopyWithImpl(this._self, this._then);

  final TeacherContact _self;
  final $Res Function(TeacherContact) _then;

/// Create a copy of TeacherContact
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = null,Object? fullName = null,Object? designation = freezed,Object? department = freezed,Object? profilePhotoUrl = freezed,}) {
  return _then(TeacherContact(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TeacherContact].
extension TeacherContactPatterns on TeacherContact {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeacherContact value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeacherContact() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeacherContact value)  $default,){
final _that = this;
switch (_that) {
case _TeacherContact():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeacherContact value)?  $default,){
final _that = this;
switch (_that) {
case _TeacherContact() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String fullName,  String? designation,  String? department, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeacherContact() when $default != null:
return $default(_that.staffId,_that.fullName,_that.designation,_that.department,_that.profilePhotoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String fullName,  String? designation,  String? department, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl)  $default,) {final _that = this;
switch (_that) {
case _TeacherContact():
return $default(_that.staffId,_that.fullName,_that.designation,_that.department,_that.profilePhotoUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'full_name')  String fullName,  String? designation,  String? department, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl)?  $default,) {final _that = this;
switch (_that) {
case _TeacherContact() when $default != null:
return $default(_that.staffId,_that.fullName,_that.designation,_that.department,_that.profilePhotoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeacherContact implements TeacherContact {
  const _TeacherContact({@JsonKey(name: 'staff_id') required this.staffId, @JsonKey(name: 'full_name') required this.fullName, this.designation, this.department, @JsonKey(name: 'profile_photo_url') this.profilePhotoUrl});
  factory _TeacherContact.fromJson(Map<String, dynamic> json) => _$TeacherContactFromJson(json);

@override@JsonKey(name: 'staff_id') final  String staffId;
@override@JsonKey(name: 'full_name') final  String fullName;
@override final  String? designation;
@override final  String? department;
@override@JsonKey(name: 'profile_photo_url') final  String? profilePhotoUrl;

/// Create a copy of TeacherContact
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeacherContactCopyWith<_TeacherContact> get copyWith => __$TeacherContactCopyWithImpl<_TeacherContact>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeacherContactToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeacherContact&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.department, department) || other.department == department)&&(identical(other.profilePhotoUrl, profilePhotoUrl) || other.profilePhotoUrl == profilePhotoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,fullName,designation,department,profilePhotoUrl);
}

@override
String toString() {
    return 'TeacherContact(staffId: $staffId, fullName: $fullName, designation: $designation, department: $department, profilePhotoUrl: $profilePhotoUrl)';
}


}

/// @nodoc
abstract mixin class _$TeacherContactCopyWith<$Res> implements $TeacherContactCopyWith<$Res> {
  factory _$TeacherContactCopyWith(_TeacherContact value, $Res Function(_TeacherContact) _then) = __$TeacherContactCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'full_name') String fullName, String? designation, String? department,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl
});




}
/// @nodoc
class __$TeacherContactCopyWithImpl<$Res>
    implements _$TeacherContactCopyWith<$Res> {
  __$TeacherContactCopyWithImpl(this._self, this._then);

  final _TeacherContact _self;
  final $Res Function(_TeacherContact) _then;

/// Create a copy of TeacherContact
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = null,Object? fullName = null,Object? designation = freezed,Object? department = freezed,Object? profilePhotoUrl = freezed,}) {
  return _then(_TeacherContact(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ThreadStaffRef {

@JsonKey(name: 'staff_id') String get staffId;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'full_name') String get fullName; String? get designation;@JsonKey(name: 'profile_photo_url') String? get profilePhotoUrl;
/// Create a copy of ThreadStaffRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThreadStaffRefCopyWith<ThreadStaffRef> get copyWith => _$ThreadStaffRefCopyWithImpl<ThreadStaffRef>(this as ThreadStaffRef, _$identity);

  /// Serializes this ThreadStaffRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ThreadStaffRef;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThreadStaffRef&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.designation, _this.designation) || other.designation == _this.designation)&&(identical(other.profilePhotoUrl, _this.profilePhotoUrl) || other.profilePhotoUrl == _this.profilePhotoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ThreadStaffRef;
  return Object.hash(runtimeType,_this.staffId,_this.userId,_this.fullName,_this.designation,_this.profilePhotoUrl);
}

@override
String toString() {
  final _this = this as ThreadStaffRef;
  return 'ThreadStaffRef(staffId: ${_this.staffId}, userId: ${_this.userId}, fullName: ${_this.fullName}, designation: ${_this.designation}, profilePhotoUrl: ${_this.profilePhotoUrl})';
}


}

/// @nodoc
abstract mixin class $ThreadStaffRefCopyWith<$Res>  {
  factory $ThreadStaffRefCopyWith(ThreadStaffRef value, $Res Function(ThreadStaffRef) _then) = _$ThreadStaffRefCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'full_name') String fullName, String? designation,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl
});




}
/// @nodoc
class _$ThreadStaffRefCopyWithImpl<$Res>
    implements $ThreadStaffRefCopyWith<$Res> {
  _$ThreadStaffRefCopyWithImpl(this._self, this._then);

  final ThreadStaffRef _self;
  final $Res Function(ThreadStaffRef) _then;

/// Create a copy of ThreadStaffRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffId = null,Object? userId = null,Object? fullName = null,Object? designation = freezed,Object? profilePhotoUrl = freezed,}) {
  return _then(ThreadStaffRef(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ThreadStaffRef].
extension ThreadStaffRefPatterns on ThreadStaffRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThreadStaffRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThreadStaffRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThreadStaffRef value)  $default,){
final _that = this;
switch (_that) {
case _ThreadStaffRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThreadStaffRef value)?  $default,){
final _that = this;
switch (_that) {
case _ThreadStaffRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'full_name')  String fullName,  String? designation, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThreadStaffRef() when $default != null:
return $default(_that.staffId,_that.userId,_that.fullName,_that.designation,_that.profilePhotoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'full_name')  String fullName,  String? designation, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl)  $default,) {final _that = this;
switch (_that) {
case _ThreadStaffRef():
return $default(_that.staffId,_that.userId,_that.fullName,_that.designation,_that.profilePhotoUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'staff_id')  String staffId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'full_name')  String fullName,  String? designation, @JsonKey(name: 'profile_photo_url')  String? profilePhotoUrl)?  $default,) {final _that = this;
switch (_that) {
case _ThreadStaffRef() when $default != null:
return $default(_that.staffId,_that.userId,_that.fullName,_that.designation,_that.profilePhotoUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ThreadStaffRef implements ThreadStaffRef {
  const _ThreadStaffRef({@JsonKey(name: 'staff_id') required this.staffId, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'full_name') required this.fullName, this.designation, @JsonKey(name: 'profile_photo_url') this.profilePhotoUrl});
  factory _ThreadStaffRef.fromJson(Map<String, dynamic> json) => _$ThreadStaffRefFromJson(json);

@override@JsonKey(name: 'staff_id') final  String staffId;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'full_name') final  String fullName;
@override final  String? designation;
@override@JsonKey(name: 'profile_photo_url') final  String? profilePhotoUrl;

/// Create a copy of ThreadStaffRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThreadStaffRefCopyWith<_ThreadStaffRef> get copyWith => __$ThreadStaffRefCopyWithImpl<_ThreadStaffRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ThreadStaffRefToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThreadStaffRef&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.profilePhotoUrl, profilePhotoUrl) || other.profilePhotoUrl == profilePhotoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,staffId,userId,fullName,designation,profilePhotoUrl);
}

@override
String toString() {
    return 'ThreadStaffRef(staffId: $staffId, userId: $userId, fullName: $fullName, designation: $designation, profilePhotoUrl: $profilePhotoUrl)';
}


}

/// @nodoc
abstract mixin class _$ThreadStaffRefCopyWith<$Res> implements $ThreadStaffRefCopyWith<$Res> {
  factory _$ThreadStaffRefCopyWith(_ThreadStaffRef value, $Res Function(_ThreadStaffRef) _then) = __$ThreadStaffRefCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'staff_id') String staffId,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'full_name') String fullName, String? designation,@JsonKey(name: 'profile_photo_url') String? profilePhotoUrl
});




}
/// @nodoc
class __$ThreadStaffRefCopyWithImpl<$Res>
    implements _$ThreadStaffRefCopyWith<$Res> {
  __$ThreadStaffRefCopyWithImpl(this._self, this._then);

  final _ThreadStaffRef _self;
  final $Res Function(_ThreadStaffRef) _then;

/// Create a copy of ThreadStaffRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? staffId = null,Object? userId = null,Object? fullName = null,Object? designation = freezed,Object? profilePhotoUrl = freezed,}) {
  return _then(_ThreadStaffRef(
staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,designation: freezed == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String?,profilePhotoUrl: freezed == profilePhotoUrl ? _self.profilePhotoUrl : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ChatMessage {

@JsonKey(name: 'message_id') String get messageId;@JsonKey(name: 'thread_id') String get threadId;@JsonKey(name: 'sender_role', unknownEnumValue: SenderRole.unknown) SenderRole get senderRole; String get body;@JsonKey(name: 'attachment_url') String? get attachmentUrl;@JsonKey(name: 'read_at') DateTime? get readAt;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageCopyWith<ChatMessage> get copyWith => _$ChatMessageCopyWithImpl<ChatMessage>(this as ChatMessage, _$identity);

  /// Serializes this ChatMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ChatMessage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessage&&(identical(other.messageId, _this.messageId) || other.messageId == _this.messageId)&&(identical(other.threadId, _this.threadId) || other.threadId == _this.threadId)&&(identical(other.senderRole, _this.senderRole) || other.senderRole == _this.senderRole)&&(identical(other.body, _this.body) || other.body == _this.body)&&(identical(other.attachmentUrl, _this.attachmentUrl) || other.attachmentUrl == _this.attachmentUrl)&&(identical(other.readAt, _this.readAt) || other.readAt == _this.readAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ChatMessage;
  return Object.hash(runtimeType,_this.messageId,_this.threadId,_this.senderRole,_this.body,_this.attachmentUrl,_this.readAt,_this.createdAt);
}

@override
String toString() {
  final _this = this as ChatMessage;
  return 'ChatMessage(messageId: ${_this.messageId}, threadId: ${_this.threadId}, senderRole: ${_this.senderRole}, body: ${_this.body}, attachmentUrl: ${_this.attachmentUrl}, readAt: ${_this.readAt}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $ChatMessageCopyWith<$Res>  {
  factory $ChatMessageCopyWith(ChatMessage value, $Res Function(ChatMessage) _then) = _$ChatMessageCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'message_id') String messageId,@JsonKey(name: 'thread_id') String threadId,@JsonKey(name: 'sender_role', unknownEnumValue: SenderRole.unknown) SenderRole senderRole, String body,@JsonKey(name: 'attachment_url') String? attachmentUrl,@JsonKey(name: 'read_at') DateTime? readAt,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$ChatMessageCopyWithImpl<$Res>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._self, this._then);

  final ChatMessage _self;
  final $Res Function(ChatMessage) _then;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messageId = null,Object? threadId = null,Object? senderRole = null,Object? body = null,Object? attachmentUrl = freezed,Object? readAt = freezed,Object? createdAt = freezed,}) {
  return _then(ChatMessage(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,threadId: null == threadId ? _self.threadId : threadId // ignore: cast_nullable_to_non_nullable
as String,senderRole: null == senderRole ? _self.senderRole : senderRole // ignore: cast_nullable_to_non_nullable
as SenderRole,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatMessage].
extension ChatMessagePatterns on ChatMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessage value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessage value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'thread_id')  String threadId, @JsonKey(name: 'sender_role', unknownEnumValue: SenderRole.unknown)  SenderRole senderRole,  String body, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'read_at')  DateTime? readAt, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
return $default(_that.messageId,_that.threadId,_that.senderRole,_that.body,_that.attachmentUrl,_that.readAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'thread_id')  String threadId, @JsonKey(name: 'sender_role', unknownEnumValue: SenderRole.unknown)  SenderRole senderRole,  String body, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'read_at')  DateTime? readAt, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _ChatMessage():
return $default(_that.messageId,_that.threadId,_that.senderRole,_that.body,_that.attachmentUrl,_that.readAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'thread_id')  String threadId, @JsonKey(name: 'sender_role', unknownEnumValue: SenderRole.unknown)  SenderRole senderRole,  String body, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'read_at')  DateTime? readAt, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
return $default(_that.messageId,_that.threadId,_that.senderRole,_that.body,_that.attachmentUrl,_that.readAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessage implements ChatMessage {
  const _ChatMessage({@JsonKey(name: 'message_id') required this.messageId, @JsonKey(name: 'thread_id') required this.threadId, @JsonKey(name: 'sender_role', unknownEnumValue: SenderRole.unknown) required this.senderRole, required this.body, @JsonKey(name: 'attachment_url') this.attachmentUrl, @JsonKey(name: 'read_at') this.readAt, @JsonKey(name: 'created_at') this.createdAt});
  factory _ChatMessage.fromJson(Map<String, dynamic> json) => _$ChatMessageFromJson(json);

@override@JsonKey(name: 'message_id') final  String messageId;
@override@JsonKey(name: 'thread_id') final  String threadId;
@override@JsonKey(name: 'sender_role', unknownEnumValue: SenderRole.unknown) final  SenderRole senderRole;
@override final  String body;
@override@JsonKey(name: 'attachment_url') final  String? attachmentUrl;
@override@JsonKey(name: 'read_at') final  DateTime? readAt;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageCopyWith<_ChatMessage> get copyWith => __$ChatMessageCopyWithImpl<_ChatMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessage&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.threadId, threadId) || other.threadId == threadId)&&(identical(other.senderRole, senderRole) || other.senderRole == senderRole)&&(identical(other.body, body) || other.body == body)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,messageId,threadId,senderRole,body,attachmentUrl,readAt,createdAt);
}

@override
String toString() {
    return 'ChatMessage(messageId: $messageId, threadId: $threadId, senderRole: $senderRole, body: $body, attachmentUrl: $attachmentUrl, readAt: $readAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageCopyWith<$Res> implements $ChatMessageCopyWith<$Res> {
  factory _$ChatMessageCopyWith(_ChatMessage value, $Res Function(_ChatMessage) _then) = __$ChatMessageCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'message_id') String messageId,@JsonKey(name: 'thread_id') String threadId,@JsonKey(name: 'sender_role', unknownEnumValue: SenderRole.unknown) SenderRole senderRole, String body,@JsonKey(name: 'attachment_url') String? attachmentUrl,@JsonKey(name: 'read_at') DateTime? readAt,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$ChatMessageCopyWithImpl<$Res>
    implements _$ChatMessageCopyWith<$Res> {
  __$ChatMessageCopyWithImpl(this._self, this._then);

  final _ChatMessage _self;
  final $Res Function(_ChatMessage) _then;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messageId = null,Object? threadId = null,Object? senderRole = null,Object? body = null,Object? attachmentUrl = freezed,Object? readAt = freezed,Object? createdAt = freezed,}) {
  return _then(_ChatMessage(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,threadId: null == threadId ? _self.threadId : threadId // ignore: cast_nullable_to_non_nullable
as String,senderRole: null == senderRole ? _self.senderRole : senderRole // ignore: cast_nullable_to_non_nullable
as SenderRole,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$MessageThread {

@JsonKey(name: 'thread_id') String get threadId;@JsonKey(name: 'staff_id') String get staffId; String get status;@JsonKey(name: 'last_message_at') DateTime? get lastMessageAt;@JsonKey(name: 'staff_accounts') ThreadStaffRef get staff; List<ChatMessage> get messages;
/// Create a copy of MessageThread
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageThreadCopyWith<MessageThread> get copyWith => _$MessageThreadCopyWithImpl<MessageThread>(this as MessageThread, _$identity);

  /// Serializes this MessageThread to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MessageThread;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageThread&&(identical(other.threadId, _this.threadId) || other.threadId == _this.threadId)&&(identical(other.staffId, _this.staffId) || other.staffId == _this.staffId)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.lastMessageAt, _this.lastMessageAt) || other.lastMessageAt == _this.lastMessageAt)&&(identical(other.staff, _this.staff) || other.staff == _this.staff)&&const DeepCollectionEquality().equals(other.messages, _this.messages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MessageThread;
  return Object.hash(runtimeType,_this.threadId,_this.staffId,_this.status,_this.lastMessageAt,_this.staff,const DeepCollectionEquality().hash(_this.messages));
}

@override
String toString() {
  final _this = this as MessageThread;
  return 'MessageThread(threadId: ${_this.threadId}, staffId: ${_this.staffId}, status: ${_this.status}, lastMessageAt: ${_this.lastMessageAt}, staff: ${_this.staff}, messages: ${_this.messages})';
}


}

/// @nodoc
abstract mixin class $MessageThreadCopyWith<$Res>  {
  factory $MessageThreadCopyWith(MessageThread value, $Res Function(MessageThread) _then) = _$MessageThreadCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'thread_id') String threadId,@JsonKey(name: 'staff_id') String staffId, String status,@JsonKey(name: 'last_message_at') DateTime? lastMessageAt,@JsonKey(name: 'staff_accounts') ThreadStaffRef staff, List<ChatMessage> messages
});


$ThreadStaffRefCopyWith<$Res> get staff;

}
/// @nodoc
class _$MessageThreadCopyWithImpl<$Res>
    implements $MessageThreadCopyWith<$Res> {
  _$MessageThreadCopyWithImpl(this._self, this._then);

  final MessageThread _self;
  final $Res Function(MessageThread) _then;

/// Create a copy of MessageThread
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? threadId = null,Object? staffId = null,Object? status = null,Object? lastMessageAt = freezed,Object? staff = null,Object? messages = null,}) {
  return _then(MessageThread(
threadId: null == threadId ? _self.threadId : threadId // ignore: cast_nullable_to_non_nullable
as String,staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as DateTime?,staff: null == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as ThreadStaffRef,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,
  ));
}
/// Create a copy of MessageThread
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThreadStaffRefCopyWith<$Res> get staff {
  
  return $ThreadStaffRefCopyWith<$Res>(_self.staff, (value) {
    return _then(_self.copyWith(staff: value));
  });
}
}


/// Adds pattern-matching-related methods to [MessageThread].
extension MessageThreadPatterns on MessageThread {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageThread value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageThread() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageThread value)  $default,){
final _that = this;
switch (_that) {
case _MessageThread():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageThread value)?  $default,){
final _that = this;
switch (_that) {
case _MessageThread() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'thread_id')  String threadId, @JsonKey(name: 'staff_id')  String staffId,  String status, @JsonKey(name: 'last_message_at')  DateTime? lastMessageAt, @JsonKey(name: 'staff_accounts')  ThreadStaffRef staff,  List<ChatMessage> messages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageThread() when $default != null:
return $default(_that.threadId,_that.staffId,_that.status,_that.lastMessageAt,_that.staff,_that.messages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'thread_id')  String threadId, @JsonKey(name: 'staff_id')  String staffId,  String status, @JsonKey(name: 'last_message_at')  DateTime? lastMessageAt, @JsonKey(name: 'staff_accounts')  ThreadStaffRef staff,  List<ChatMessage> messages)  $default,) {final _that = this;
switch (_that) {
case _MessageThread():
return $default(_that.threadId,_that.staffId,_that.status,_that.lastMessageAt,_that.staff,_that.messages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'thread_id')  String threadId, @JsonKey(name: 'staff_id')  String staffId,  String status, @JsonKey(name: 'last_message_at')  DateTime? lastMessageAt, @JsonKey(name: 'staff_accounts')  ThreadStaffRef staff,  List<ChatMessage> messages)?  $default,) {final _that = this;
switch (_that) {
case _MessageThread() when $default != null:
return $default(_that.threadId,_that.staffId,_that.status,_that.lastMessageAt,_that.staff,_that.messages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageThread implements MessageThread {
  const _MessageThread({@JsonKey(name: 'thread_id') required this.threadId, @JsonKey(name: 'staff_id') required this.staffId, required this.status, @JsonKey(name: 'last_message_at') this.lastMessageAt, @JsonKey(name: 'staff_accounts') required this.staff, required  List<ChatMessage> messages}): _messages = messages;
  factory _MessageThread.fromJson(Map<String, dynamic> json) => _$MessageThreadFromJson(json);

@override@JsonKey(name: 'thread_id') final  String threadId;
@override@JsonKey(name: 'staff_id') final  String staffId;
@override final  String status;
@override@JsonKey(name: 'last_message_at') final  DateTime? lastMessageAt;
@override@JsonKey(name: 'staff_accounts') final  ThreadStaffRef staff;
 final  List<ChatMessage> _messages;
@override List<ChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of MessageThread
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageThreadCopyWith<_MessageThread> get copyWith => __$MessageThreadCopyWithImpl<_MessageThread>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageThreadToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageThread&&(identical(other.threadId, threadId) || other.threadId == threadId)&&(identical(other.staffId, staffId) || other.staffId == staffId)&&(identical(other.status, status) || other.status == status)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.staff, staff) || other.staff == staff)&&const DeepCollectionEquality().equals(other.messages, _messages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,threadId,staffId,status,lastMessageAt,staff,const DeepCollectionEquality().hash(_messages));
}

@override
String toString() {
    return 'MessageThread(threadId: $threadId, staffId: $staffId, status: $status, lastMessageAt: $lastMessageAt, staff: $staff, messages: $messages)';
}


}

/// @nodoc
abstract mixin class _$MessageThreadCopyWith<$Res> implements $MessageThreadCopyWith<$Res> {
  factory _$MessageThreadCopyWith(_MessageThread value, $Res Function(_MessageThread) _then) = __$MessageThreadCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'thread_id') String threadId,@JsonKey(name: 'staff_id') String staffId, String status,@JsonKey(name: 'last_message_at') DateTime? lastMessageAt,@JsonKey(name: 'staff_accounts') ThreadStaffRef staff, List<ChatMessage> messages
});


@override $ThreadStaffRefCopyWith<$Res> get staff;

}
/// @nodoc
class __$MessageThreadCopyWithImpl<$Res>
    implements _$MessageThreadCopyWith<$Res> {
  __$MessageThreadCopyWithImpl(this._self, this._then);

  final _MessageThread _self;
  final $Res Function(_MessageThread) _then;

/// Create a copy of MessageThread
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? threadId = null,Object? staffId = null,Object? status = null,Object? lastMessageAt = freezed,Object? staff = null,Object? messages = null,}) {
  return _then(_MessageThread(
threadId: null == threadId ? _self.threadId : threadId // ignore: cast_nullable_to_non_nullable
as String,staffId: null == staffId ? _self.staffId : staffId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as DateTime?,staff: null == staff ? _self.staff : staff // ignore: cast_nullable_to_non_nullable
as ThreadStaffRef,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,
  ));
}

/// Create a copy of MessageThread
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThreadStaffRefCopyWith<$Res> get staff {
  
  return $ThreadStaffRefCopyWith<$Res>(_self.staff, (value) {
    return _then(_self.copyWith(staff: value));
  });
}
}

// dart format on
