// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TeacherContact _$TeacherContactFromJson(Map<String, dynamic> json) =>
    _TeacherContact(
      staffId: json['staff_id'] as String,
      fullName: json['full_name'] as String,
      designation: json['designation'] as String?,
      department: json['department'] as String?,
      profilePhotoUrl: json['profile_photo_url'] as String?,
    );

Map<String, dynamic> _$TeacherContactToJson(_TeacherContact instance) =>
    <String, dynamic>{
      'staff_id': instance.staffId,
      'full_name': instance.fullName,
      'designation': instance.designation,
      'department': instance.department,
      'profile_photo_url': instance.profilePhotoUrl,
    };

_ThreadStaffRef _$ThreadStaffRefFromJson(Map<String, dynamic> json) =>
    _ThreadStaffRef(
      staffId: json['staff_id'] as String,
      userId: json['user_id'] as String,
      fullName: json['full_name'] as String,
      designation: json['designation'] as String?,
      profilePhotoUrl: json['profile_photo_url'] as String?,
    );

Map<String, dynamic> _$ThreadStaffRefToJson(_ThreadStaffRef instance) =>
    <String, dynamic>{
      'staff_id': instance.staffId,
      'user_id': instance.userId,
      'full_name': instance.fullName,
      'designation': instance.designation,
      'profile_photo_url': instance.profilePhotoUrl,
    };

_ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) => _ChatMessage(
  messageId: json['message_id'] as String,
  threadId: json['thread_id'] as String,
  senderRole: $enumDecode(
    _$SenderRoleEnumMap,
    json['sender_role'],
    unknownValue: SenderRole.unknown,
  ),
  body: json['body'] as String,
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
      'sender_role': _$SenderRoleEnumMap[instance.senderRole]!,
      'body': instance.body,
      'attachment_url': instance.attachmentUrl,
      'read_at': instance.readAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
    };

const _$SenderRoleEnumMap = {
  SenderRole.parent: 'PARENT',
  SenderRole.teacher: 'TEACHER',
  SenderRole.unknown: 'unknown',
};

_MessageThread _$MessageThreadFromJson(Map<String, dynamic> json) =>
    _MessageThread(
      threadId: json['thread_id'] as String,
      staffId: json['staff_id'] as String,
      status: json['status'] as String,
      lastMessageAt: json['last_message_at'] == null
          ? null
          : DateTime.parse(json['last_message_at'] as String),
      staff: ThreadStaffRef.fromJson(
        json['staff_accounts'] as Map<String, dynamic>,
      ),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MessageThreadToJson(_MessageThread instance) =>
    <String, dynamic>{
      'thread_id': instance.threadId,
      'staff_id': instance.staffId,
      'status': instance.status,
      'last_message_at': instance.lastMessageAt?.toIso8601String(),
      'staff_accounts': instance.staff,
      'messages': instance.messages,
    };
