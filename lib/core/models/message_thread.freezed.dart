// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_thread.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageThread {

@JsonKey(name: 'thread_id') String get threadId; String? get subject; String? get status;@JsonKey(name: 'last_message_at') DateTime? get lastMessageAt;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'students') StudentBrief? get student;@JsonKey(name: 'parent_accounts') ThreadParentAccount? get parentAccount; List<ChatMessage> get messages;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageThread&&(identical(other.threadId, _this.threadId) || other.threadId == _this.threadId)&&(identical(other.subject, _this.subject) || other.subject == _this.subject)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.lastMessageAt, _this.lastMessageAt) || other.lastMessageAt == _this.lastMessageAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.student, _this.student) || other.student == _this.student)&&(identical(other.parentAccount, _this.parentAccount) || other.parentAccount == _this.parentAccount)&&const DeepCollectionEquality().equals(other.messages, _this.messages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MessageThread;
  return Object.hash(runtimeType,_this.threadId,_this.subject,_this.status,_this.lastMessageAt,_this.createdAt,_this.student,_this.parentAccount,const DeepCollectionEquality().hash(_this.messages));
}

@override
String toString() {
  final _this = this as MessageThread;
  return 'MessageThread(threadId: ${_this.threadId}, subject: ${_this.subject}, status: ${_this.status}, lastMessageAt: ${_this.lastMessageAt}, createdAt: ${_this.createdAt}, student: ${_this.student}, parentAccount: ${_this.parentAccount}, messages: ${_this.messages})';
}


}

/// @nodoc
abstract mixin class $MessageThreadCopyWith<$Res>  {
  factory $MessageThreadCopyWith(MessageThread value, $Res Function(MessageThread) _then) = _$MessageThreadCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'thread_id') String threadId, String? subject, String? status,@JsonKey(name: 'last_message_at') DateTime? lastMessageAt,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'students') StudentBrief? student,@JsonKey(name: 'parent_accounts') ThreadParentAccount? parentAccount, List<ChatMessage> messages
});


$StudentBriefCopyWith<$Res>? get student;$ThreadParentAccountCopyWith<$Res>? get parentAccount;

}
/// @nodoc
class _$MessageThreadCopyWithImpl<$Res>
    implements $MessageThreadCopyWith<$Res> {
  _$MessageThreadCopyWithImpl(this._self, this._then);

  final MessageThread _self;
  final $Res Function(MessageThread) _then;

/// Create a copy of MessageThread
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? threadId = null,Object? subject = freezed,Object? status = freezed,Object? lastMessageAt = freezed,Object? createdAt = freezed,Object? student = freezed,Object? parentAccount = freezed,Object? messages = null,}) {
  return _then(MessageThread(
threadId: null == threadId ? _self.threadId : threadId // ignore: cast_nullable_to_non_nullable
as String,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,parentAccount: freezed == parentAccount ? _self.parentAccount : parentAccount // ignore: cast_nullable_to_non_nullable
as ThreadParentAccount?,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,
  ));
}
/// Create a copy of MessageThread
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
}/// Create a copy of MessageThread
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThreadParentAccountCopyWith<$Res>? get parentAccount {
    if (_self.parentAccount == null) {
    return null;
  }

  return $ThreadParentAccountCopyWith<$Res>(_self.parentAccount!, (value) {
    return _then(_self.copyWith(parentAccount: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'thread_id')  String threadId,  String? subject,  String? status, @JsonKey(name: 'last_message_at')  DateTime? lastMessageAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'students')  StudentBrief? student, @JsonKey(name: 'parent_accounts')  ThreadParentAccount? parentAccount,  List<ChatMessage> messages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageThread() when $default != null:
return $default(_that.threadId,_that.subject,_that.status,_that.lastMessageAt,_that.createdAt,_that.student,_that.parentAccount,_that.messages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'thread_id')  String threadId,  String? subject,  String? status, @JsonKey(name: 'last_message_at')  DateTime? lastMessageAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'students')  StudentBrief? student, @JsonKey(name: 'parent_accounts')  ThreadParentAccount? parentAccount,  List<ChatMessage> messages)  $default,) {final _that = this;
switch (_that) {
case _MessageThread():
return $default(_that.threadId,_that.subject,_that.status,_that.lastMessageAt,_that.createdAt,_that.student,_that.parentAccount,_that.messages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'thread_id')  String threadId,  String? subject,  String? status, @JsonKey(name: 'last_message_at')  DateTime? lastMessageAt, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'students')  StudentBrief? student, @JsonKey(name: 'parent_accounts')  ThreadParentAccount? parentAccount,  List<ChatMessage> messages)?  $default,) {final _that = this;
switch (_that) {
case _MessageThread() when $default != null:
return $default(_that.threadId,_that.subject,_that.status,_that.lastMessageAt,_that.createdAt,_that.student,_that.parentAccount,_that.messages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageThread implements MessageThread {
  const _MessageThread({@JsonKey(name: 'thread_id') required this.threadId, this.subject, this.status, @JsonKey(name: 'last_message_at') this.lastMessageAt, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'students') this.student, @JsonKey(name: 'parent_accounts') this.parentAccount,  List<ChatMessage> messages = const <ChatMessage>[]}): _messages = messages;
  factory _MessageThread.fromJson(Map<String, dynamic> json) => _$MessageThreadFromJson(json);

@override@JsonKey(name: 'thread_id') final  String threadId;
@override final  String? subject;
@override final  String? status;
@override@JsonKey(name: 'last_message_at') final  DateTime? lastMessageAt;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'students') final  StudentBrief? student;
@override@JsonKey(name: 'parent_accounts') final  ThreadParentAccount? parentAccount;
 final  List<ChatMessage> _messages;
@override@JsonKey() List<ChatMessage> get messages {
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
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageThread&&(identical(other.threadId, threadId) || other.threadId == threadId)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.status, status) || other.status == status)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.student, student) || other.student == student)&&(identical(other.parentAccount, parentAccount) || other.parentAccount == parentAccount)&&const DeepCollectionEquality().equals(other.messages, _messages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,threadId,subject,status,lastMessageAt,createdAt,student,parentAccount,const DeepCollectionEquality().hash(_messages));
}

@override
String toString() {
    return 'MessageThread(threadId: $threadId, subject: $subject, status: $status, lastMessageAt: $lastMessageAt, createdAt: $createdAt, student: $student, parentAccount: $parentAccount, messages: $messages)';
}


}

/// @nodoc
abstract mixin class _$MessageThreadCopyWith<$Res> implements $MessageThreadCopyWith<$Res> {
  factory _$MessageThreadCopyWith(_MessageThread value, $Res Function(_MessageThread) _then) = __$MessageThreadCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'thread_id') String threadId, String? subject, String? status,@JsonKey(name: 'last_message_at') DateTime? lastMessageAt,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'students') StudentBrief? student,@JsonKey(name: 'parent_accounts') ThreadParentAccount? parentAccount, List<ChatMessage> messages
});


@override $StudentBriefCopyWith<$Res>? get student;@override $ThreadParentAccountCopyWith<$Res>? get parentAccount;

}
/// @nodoc
class __$MessageThreadCopyWithImpl<$Res>
    implements _$MessageThreadCopyWith<$Res> {
  __$MessageThreadCopyWithImpl(this._self, this._then);

  final _MessageThread _self;
  final $Res Function(_MessageThread) _then;

/// Create a copy of MessageThread
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? threadId = null,Object? subject = freezed,Object? status = freezed,Object? lastMessageAt = freezed,Object? createdAt = freezed,Object? student = freezed,Object? parentAccount = freezed,Object? messages = null,}) {
  return _then(_MessageThread(
threadId: null == threadId ? _self.threadId : threadId // ignore: cast_nullable_to_non_nullable
as String,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentBrief?,parentAccount: freezed == parentAccount ? _self.parentAccount : parentAccount // ignore: cast_nullable_to_non_nullable
as ThreadParentAccount?,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,
  ));
}

/// Create a copy of MessageThread
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
}/// Create a copy of MessageThread
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThreadParentAccountCopyWith<$Res>? get parentAccount {
    if (_self.parentAccount == null) {
    return null;
  }

  return $ThreadParentAccountCopyWith<$Res>(_self.parentAccount!, (value) {
    return _then(_self.copyWith(parentAccount: value));
  });
}
}


/// @nodoc
mixin _$ThreadParentAccount {

@JsonKey(name: 'user_id') String? get userId;@JsonKey(name: 'parents') ThreadParentName? get parent;
/// Create a copy of ThreadParentAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThreadParentAccountCopyWith<ThreadParentAccount> get copyWith => _$ThreadParentAccountCopyWithImpl<ThreadParentAccount>(this as ThreadParentAccount, _$identity);

  /// Serializes this ThreadParentAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ThreadParentAccount;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThreadParentAccount&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.parent, _this.parent) || other.parent == _this.parent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ThreadParentAccount;
  return Object.hash(runtimeType,_this.userId,_this.parent);
}

@override
String toString() {
  final _this = this as ThreadParentAccount;
  return 'ThreadParentAccount(userId: ${_this.userId}, parent: ${_this.parent})';
}


}

/// @nodoc
abstract mixin class $ThreadParentAccountCopyWith<$Res>  {
  factory $ThreadParentAccountCopyWith(ThreadParentAccount value, $Res Function(ThreadParentAccount) _then) = _$ThreadParentAccountCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'parents') ThreadParentName? parent
});


$ThreadParentNameCopyWith<$Res>? get parent;

}
/// @nodoc
class _$ThreadParentAccountCopyWithImpl<$Res>
    implements $ThreadParentAccountCopyWith<$Res> {
  _$ThreadParentAccountCopyWithImpl(this._self, this._then);

  final ThreadParentAccount _self;
  final $Res Function(ThreadParentAccount) _then;

/// Create a copy of ThreadParentAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = freezed,Object? parent = freezed,}) {
  return _then(ThreadParentAccount(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as ThreadParentName?,
  ));
}
/// Create a copy of ThreadParentAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThreadParentNameCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $ThreadParentNameCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}


/// Adds pattern-matching-related methods to [ThreadParentAccount].
extension ThreadParentAccountPatterns on ThreadParentAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThreadParentAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThreadParentAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThreadParentAccount value)  $default,){
final _that = this;
switch (_that) {
case _ThreadParentAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThreadParentAccount value)?  $default,){
final _that = this;
switch (_that) {
case _ThreadParentAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'parents')  ThreadParentName? parent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThreadParentAccount() when $default != null:
return $default(_that.userId,_that.parent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'parents')  ThreadParentName? parent)  $default,) {final _that = this;
switch (_that) {
case _ThreadParentAccount():
return $default(_that.userId,_that.parent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String? userId, @JsonKey(name: 'parents')  ThreadParentName? parent)?  $default,) {final _that = this;
switch (_that) {
case _ThreadParentAccount() when $default != null:
return $default(_that.userId,_that.parent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ThreadParentAccount implements ThreadParentAccount {
  const _ThreadParentAccount({@JsonKey(name: 'user_id') this.userId, @JsonKey(name: 'parents') this.parent});
  factory _ThreadParentAccount.fromJson(Map<String, dynamic> json) => _$ThreadParentAccountFromJson(json);

@override@JsonKey(name: 'user_id') final  String? userId;
@override@JsonKey(name: 'parents') final  ThreadParentName? parent;

/// Create a copy of ThreadParentAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThreadParentAccountCopyWith<_ThreadParentAccount> get copyWith => __$ThreadParentAccountCopyWithImpl<_ThreadParentAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ThreadParentAccountToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThreadParentAccount&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.parent, parent) || other.parent == parent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,userId,parent);
}

@override
String toString() {
    return 'ThreadParentAccount(userId: $userId, parent: $parent)';
}


}

/// @nodoc
abstract mixin class _$ThreadParentAccountCopyWith<$Res> implements $ThreadParentAccountCopyWith<$Res> {
  factory _$ThreadParentAccountCopyWith(_ThreadParentAccount value, $Res Function(_ThreadParentAccount) _then) = __$ThreadParentAccountCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String? userId,@JsonKey(name: 'parents') ThreadParentName? parent
});


@override $ThreadParentNameCopyWith<$Res>? get parent;

}
/// @nodoc
class __$ThreadParentAccountCopyWithImpl<$Res>
    implements _$ThreadParentAccountCopyWith<$Res> {
  __$ThreadParentAccountCopyWithImpl(this._self, this._then);

  final _ThreadParentAccount _self;
  final $Res Function(_ThreadParentAccount) _then;

/// Create a copy of ThreadParentAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = freezed,Object? parent = freezed,}) {
  return _then(_ThreadParentAccount(
userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as ThreadParentName?,
  ));
}

/// Create a copy of ThreadParentAccount
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThreadParentNameCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $ThreadParentNameCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}


/// @nodoc
mixin _$ThreadParentName {

@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName;
/// Create a copy of ThreadParentName
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThreadParentNameCopyWith<ThreadParentName> get copyWith => _$ThreadParentNameCopyWithImpl<ThreadParentName>(this as ThreadParentName, _$identity);

  /// Serializes this ThreadParentName to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ThreadParentName;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThreadParentName&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ThreadParentName;
  return Object.hash(runtimeType,_this.firstName,_this.lastName);
}

@override
String toString() {
  final _this = this as ThreadParentName;
  return 'ThreadParentName(firstName: ${_this.firstName}, lastName: ${_this.lastName})';
}


}

/// @nodoc
abstract mixin class $ThreadParentNameCopyWith<$Res>  {
  factory $ThreadParentNameCopyWith(ThreadParentName value, $Res Function(ThreadParentName) _then) = _$ThreadParentNameCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName
});




}
/// @nodoc
class _$ThreadParentNameCopyWithImpl<$Res>
    implements $ThreadParentNameCopyWith<$Res> {
  _$ThreadParentNameCopyWithImpl(this._self, this._then);

  final ThreadParentName _self;
  final $Res Function(ThreadParentName) _then;

/// Create a copy of ThreadParentName
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? lastName = freezed,}) {
  return _then(ThreadParentName(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ThreadParentName].
extension ThreadParentNamePatterns on ThreadParentName {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThreadParentName value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThreadParentName() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThreadParentName value)  $default,){
final _that = this;
switch (_that) {
case _ThreadParentName():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThreadParentName value)?  $default,){
final _that = this;
switch (_that) {
case _ThreadParentName() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThreadParentName() when $default != null:
return $default(_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName)  $default,) {final _that = this;
switch (_that) {
case _ThreadParentName():
return $default(_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName)?  $default,) {final _that = this;
switch (_that) {
case _ThreadParentName() when $default != null:
return $default(_that.firstName,_that.lastName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ThreadParentName implements ThreadParentName {
  const _ThreadParentName({@JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName});
  factory _ThreadParentName.fromJson(Map<String, dynamic> json) => _$ThreadParentNameFromJson(json);

@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;

/// Create a copy of ThreadParentName
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThreadParentNameCopyWith<_ThreadParentName> get copyWith => __$ThreadParentNameCopyWithImpl<_ThreadParentName>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ThreadParentNameToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThreadParentName&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,firstName,lastName);
}

@override
String toString() {
    return 'ThreadParentName(firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class _$ThreadParentNameCopyWith<$Res> implements $ThreadParentNameCopyWith<$Res> {
  factory _$ThreadParentNameCopyWith(_ThreadParentName value, $Res Function(_ThreadParentName) _then) = __$ThreadParentNameCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName
});




}
/// @nodoc
class __$ThreadParentNameCopyWithImpl<$Res>
    implements _$ThreadParentNameCopyWith<$Res> {
  __$ThreadParentNameCopyWithImpl(this._self, this._then);

  final _ThreadParentName _self;
  final $Res Function(_ThreadParentName) _then;

/// Create a copy of ThreadParentName
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? lastName = freezed,}) {
  return _then(_ThreadParentName(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ChatMessage {

@JsonKey(name: 'message_id') String get messageId;@JsonKey(name: 'thread_id') String? get threadId;@JsonKey(name: 'sender_user_id') String? get senderUserId;@JsonKey(name: 'sender_role') String get senderRole; String get body;@JsonKey(name: 'attachment_url') String? get attachmentUrl;@JsonKey(name: 'read_at') DateTime? get readAt;@JsonKey(name: 'created_at') DateTime? get createdAt;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessage&&(identical(other.messageId, _this.messageId) || other.messageId == _this.messageId)&&(identical(other.threadId, _this.threadId) || other.threadId == _this.threadId)&&(identical(other.senderUserId, _this.senderUserId) || other.senderUserId == _this.senderUserId)&&(identical(other.senderRole, _this.senderRole) || other.senderRole == _this.senderRole)&&(identical(other.body, _this.body) || other.body == _this.body)&&(identical(other.attachmentUrl, _this.attachmentUrl) || other.attachmentUrl == _this.attachmentUrl)&&(identical(other.readAt, _this.readAt) || other.readAt == _this.readAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ChatMessage;
  return Object.hash(runtimeType,_this.messageId,_this.threadId,_this.senderUserId,_this.senderRole,_this.body,_this.attachmentUrl,_this.readAt,_this.createdAt);
}

@override
String toString() {
  final _this = this as ChatMessage;
  return 'ChatMessage(messageId: ${_this.messageId}, threadId: ${_this.threadId}, senderUserId: ${_this.senderUserId}, senderRole: ${_this.senderRole}, body: ${_this.body}, attachmentUrl: ${_this.attachmentUrl}, readAt: ${_this.readAt}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $ChatMessageCopyWith<$Res>  {
  factory $ChatMessageCopyWith(ChatMessage value, $Res Function(ChatMessage) _then) = _$ChatMessageCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'message_id') String messageId,@JsonKey(name: 'thread_id') String? threadId,@JsonKey(name: 'sender_user_id') String? senderUserId,@JsonKey(name: 'sender_role') String senderRole, String body,@JsonKey(name: 'attachment_url') String? attachmentUrl,@JsonKey(name: 'read_at') DateTime? readAt,@JsonKey(name: 'created_at') DateTime? createdAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? messageId = null,Object? threadId = freezed,Object? senderUserId = freezed,Object? senderRole = null,Object? body = null,Object? attachmentUrl = freezed,Object? readAt = freezed,Object? createdAt = freezed,}) {
  return _then(ChatMessage(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,threadId: freezed == threadId ? _self.threadId : threadId // ignore: cast_nullable_to_non_nullable
as String?,senderUserId: freezed == senderUserId ? _self.senderUserId : senderUserId // ignore: cast_nullable_to_non_nullable
as String?,senderRole: null == senderRole ? _self.senderRole : senderRole // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'thread_id')  String? threadId, @JsonKey(name: 'sender_user_id')  String? senderUserId, @JsonKey(name: 'sender_role')  String senderRole,  String body, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'read_at')  DateTime? readAt, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
return $default(_that.messageId,_that.threadId,_that.senderUserId,_that.senderRole,_that.body,_that.attachmentUrl,_that.readAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'thread_id')  String? threadId, @JsonKey(name: 'sender_user_id')  String? senderUserId, @JsonKey(name: 'sender_role')  String senderRole,  String body, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'read_at')  DateTime? readAt, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _ChatMessage():
return $default(_that.messageId,_that.threadId,_that.senderUserId,_that.senderRole,_that.body,_that.attachmentUrl,_that.readAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'thread_id')  String? threadId, @JsonKey(name: 'sender_user_id')  String? senderUserId, @JsonKey(name: 'sender_role')  String senderRole,  String body, @JsonKey(name: 'attachment_url')  String? attachmentUrl, @JsonKey(name: 'read_at')  DateTime? readAt, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
return $default(_that.messageId,_that.threadId,_that.senderUserId,_that.senderRole,_that.body,_that.attachmentUrl,_that.readAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessage implements ChatMessage {
  const _ChatMessage({@JsonKey(name: 'message_id') required this.messageId, @JsonKey(name: 'thread_id') this.threadId, @JsonKey(name: 'sender_user_id') this.senderUserId, @JsonKey(name: 'sender_role') required this.senderRole, this.body = '', @JsonKey(name: 'attachment_url') this.attachmentUrl, @JsonKey(name: 'read_at') this.readAt, @JsonKey(name: 'created_at') this.createdAt});
  factory _ChatMessage.fromJson(Map<String, dynamic> json) => _$ChatMessageFromJson(json);

@override@JsonKey(name: 'message_id') final  String messageId;
@override@JsonKey(name: 'thread_id') final  String? threadId;
@override@JsonKey(name: 'sender_user_id') final  String? senderUserId;
@override@JsonKey(name: 'sender_role') final  String senderRole;
@override@JsonKey() final  String body;
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
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessage&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.threadId, threadId) || other.threadId == threadId)&&(identical(other.senderUserId, senderUserId) || other.senderUserId == senderUserId)&&(identical(other.senderRole, senderRole) || other.senderRole == senderRole)&&(identical(other.body, body) || other.body == body)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,messageId,threadId,senderUserId,senderRole,body,attachmentUrl,readAt,createdAt);
}

@override
String toString() {
    return 'ChatMessage(messageId: $messageId, threadId: $threadId, senderUserId: $senderUserId, senderRole: $senderRole, body: $body, attachmentUrl: $attachmentUrl, readAt: $readAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageCopyWith<$Res> implements $ChatMessageCopyWith<$Res> {
  factory _$ChatMessageCopyWith(_ChatMessage value, $Res Function(_ChatMessage) _then) = __$ChatMessageCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'message_id') String messageId,@JsonKey(name: 'thread_id') String? threadId,@JsonKey(name: 'sender_user_id') String? senderUserId,@JsonKey(name: 'sender_role') String senderRole, String body,@JsonKey(name: 'attachment_url') String? attachmentUrl,@JsonKey(name: 'read_at') DateTime? readAt,@JsonKey(name: 'created_at') DateTime? createdAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? messageId = null,Object? threadId = freezed,Object? senderUserId = freezed,Object? senderRole = null,Object? body = null,Object? attachmentUrl = freezed,Object? readAt = freezed,Object? createdAt = freezed,}) {
  return _then(_ChatMessage(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,threadId: freezed == threadId ? _self.threadId : threadId // ignore: cast_nullable_to_non_nullable
as String?,senderUserId: freezed == senderUserId ? _self.senderUserId : senderUserId // ignore: cast_nullable_to_non_nullable
as String?,senderRole: null == senderRole ? _self.senderRole : senderRole // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,attachmentUrl: freezed == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String?,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$ParentPresence {

@JsonKey(name: 'isOnline') bool get isOnline;@JsonKey(name: 'lastActiveAt') DateTime? get lastActiveAt;
/// Create a copy of ParentPresence
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParentPresenceCopyWith<ParentPresence> get copyWith => _$ParentPresenceCopyWithImpl<ParentPresence>(this as ParentPresence, _$identity);

  /// Serializes this ParentPresence to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ParentPresence;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParentPresence&&(identical(other.isOnline, _this.isOnline) || other.isOnline == _this.isOnline)&&(identical(other.lastActiveAt, _this.lastActiveAt) || other.lastActiveAt == _this.lastActiveAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ParentPresence;
  return Object.hash(runtimeType,_this.isOnline,_this.lastActiveAt);
}

@override
String toString() {
  final _this = this as ParentPresence;
  return 'ParentPresence(isOnline: ${_this.isOnline}, lastActiveAt: ${_this.lastActiveAt})';
}


}

/// @nodoc
abstract mixin class $ParentPresenceCopyWith<$Res>  {
  factory $ParentPresenceCopyWith(ParentPresence value, $Res Function(ParentPresence) _then) = _$ParentPresenceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'isOnline') bool isOnline,@JsonKey(name: 'lastActiveAt') DateTime? lastActiveAt
});




}
/// @nodoc
class _$ParentPresenceCopyWithImpl<$Res>
    implements $ParentPresenceCopyWith<$Res> {
  _$ParentPresenceCopyWithImpl(this._self, this._then);

  final ParentPresence _self;
  final $Res Function(ParentPresence) _then;

/// Create a copy of ParentPresence
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isOnline = null,Object? lastActiveAt = freezed,}) {
  return _then(ParentPresence(
isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ParentPresence].
extension ParentPresencePatterns on ParentPresence {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParentPresence value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParentPresence() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParentPresence value)  $default,){
final _that = this;
switch (_that) {
case _ParentPresence():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParentPresence value)?  $default,){
final _that = this;
switch (_that) {
case _ParentPresence() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'isOnline')  bool isOnline, @JsonKey(name: 'lastActiveAt')  DateTime? lastActiveAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParentPresence() when $default != null:
return $default(_that.isOnline,_that.lastActiveAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'isOnline')  bool isOnline, @JsonKey(name: 'lastActiveAt')  DateTime? lastActiveAt)  $default,) {final _that = this;
switch (_that) {
case _ParentPresence():
return $default(_that.isOnline,_that.lastActiveAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'isOnline')  bool isOnline, @JsonKey(name: 'lastActiveAt')  DateTime? lastActiveAt)?  $default,) {final _that = this;
switch (_that) {
case _ParentPresence() when $default != null:
return $default(_that.isOnline,_that.lastActiveAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParentPresence implements ParentPresence {
  const _ParentPresence({@JsonKey(name: 'isOnline') this.isOnline = false, @JsonKey(name: 'lastActiveAt') this.lastActiveAt});
  factory _ParentPresence.fromJson(Map<String, dynamic> json) => _$ParentPresenceFromJson(json);

@override@JsonKey(name: 'isOnline') final  bool isOnline;
@override@JsonKey(name: 'lastActiveAt') final  DateTime? lastActiveAt;

/// Create a copy of ParentPresence
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParentPresenceCopyWith<_ParentPresence> get copyWith => __$ParentPresenceCopyWithImpl<_ParentPresence>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParentPresenceToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParentPresence&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,isOnline,lastActiveAt);
}

@override
String toString() {
    return 'ParentPresence(isOnline: $isOnline, lastActiveAt: $lastActiveAt)';
}


}

/// @nodoc
abstract mixin class _$ParentPresenceCopyWith<$Res> implements $ParentPresenceCopyWith<$Res> {
  factory _$ParentPresenceCopyWith(_ParentPresence value, $Res Function(_ParentPresence) _then) = __$ParentPresenceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'isOnline') bool isOnline,@JsonKey(name: 'lastActiveAt') DateTime? lastActiveAt
});




}
/// @nodoc
class __$ParentPresenceCopyWithImpl<$Res>
    implements _$ParentPresenceCopyWith<$Res> {
  __$ParentPresenceCopyWithImpl(this._self, this._then);

  final _ParentPresence _self;
  final $Res Function(_ParentPresence) _then;

/// Create a copy of ParentPresence
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isOnline = null,Object? lastActiveAt = freezed,}) {
  return _then(_ParentPresence(
isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
