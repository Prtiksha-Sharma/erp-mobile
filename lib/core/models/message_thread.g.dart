// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_thread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageThread _$MessageThreadFromJson(Map<String, dynamic> json) =>
    _MessageThread(
      threadId: json['thread_id'] as String,
      subject: json['subject'] as String?,
      status: json['status'] as String?,
      lastMessageAt: json['last_message_at'] == null
          ? null
          : DateTime.parse(json['last_message_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      student: json['students'] == null
          ? null
          : StudentBrief.fromJson(json['students'] as Map<String, dynamic>),
      parentAccount: json['parent_accounts'] == null
          ? null
          : ThreadParentAccount.fromJson(
              json['parent_accounts'] as Map<String, dynamic>,
            ),
      messages:
          (json['messages'] as List<dynamic>?)
              ?.map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ChatMessage>[],
    );

Map<String, dynamic> _$MessageThreadToJson(_MessageThread instance) =>
    <String, dynamic>{
      'thread_id': instance.threadId,
      'subject': instance.subject,
      'status': instance.status,
      'last_message_at': instance.lastMessageAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'students': instance.student,
      'parent_accounts': instance.parentAccount,
      'messages': instance.messages,
    };

_ThreadParentAccount _$ThreadParentAccountFromJson(Map<String, dynamic> json) =>
    _ThreadParentAccount(
      userId: json['user_id'] as String?,
      parent: json['parents'] == null
          ? null
          : ThreadParentName.fromJson(json['parents'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ThreadParentAccountToJson(
  _ThreadParentAccount instance,
) => <String, dynamic>{'user_id': instance.userId, 'parents': instance.parent};

_ThreadParentName _$ThreadParentNameFromJson(Map<String, dynamic> json) =>
    _ThreadParentName(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
    );

Map<String, dynamic> _$ThreadParentNameToJson(_ThreadParentName instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };

_ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) => _ChatMessage(
  messageId: json['message_id'] as String,
  threadId: json['thread_id'] as String?,
  senderUserId: json['sender_user_id'] as String?,
  senderRole: json['sender_role'] as String,
  body: json['body'] as String? ?? '',
  attachmentUrl: json['attachment_url'] as String?,
  readAt: json['read_at'] == null
      ? null
      : DateTime.parse(json['read_at'] as String),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$ChatMessageToJson(_ChatMessage instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'thread_id': instance.threadId,
      'sender_user_id': instance.senderUserId,
      'sender_role': instance.senderRole,
      'body': instance.body,
      'attachment_url': instance.attachmentUrl,
      'read_at': instance.readAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
    };

_ParentPresence _$ParentPresenceFromJson(Map<String, dynamic> json) =>
    _ParentPresence(
      isOnline: json['isOnline'] as bool? ?? false,
      lastActiveAt: json['lastActiveAt'] == null
          ? null
          : DateTime.parse(json['lastActiveAt'] as String),
    );

Map<String, dynamic> _$ParentPresenceToJson(_ParentPresence instance) =>
    <String, dynamic>{
      'isOnline': instance.isOnline,
      'lastActiveAt': instance.lastActiveAt?.toIso8601String(),
    };
