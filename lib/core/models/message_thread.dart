import 'package:freezed_annotation/freezed_annotation.dart';

import 'student_brief.dart';

part 'message_thread.freezed.dart';
part 'message_thread.g.dart';

/// GET /teacher/messages/threads (list: `messages` holds only the latest
/// message) and GET /teacher/messages/threads/:id (detail: every message,
/// oldest first) — teacher/messages.service.js THREAD_LIST_INCLUDE /
/// getThread. `parent_accounts.parents` is a nullable 1:1 relation.
@freezed
abstract class MessageThread with _$MessageThread {
  const factory MessageThread({
    @JsonKey(name: 'thread_id') required String threadId,
    String? subject,
    String? status,
    @JsonKey(name: 'last_message_at') DateTime? lastMessageAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'students') StudentBrief? student,
    @JsonKey(name: 'parent_accounts') ThreadParentAccount? parentAccount,
    @Default(<ChatMessage>[]) List<ChatMessage> messages,
  }) = _MessageThread;

  factory MessageThread.fromJson(Map<String, dynamic> json) => _$MessageThreadFromJson(json);
}

@freezed
abstract class ThreadParentAccount with _$ThreadParentAccount {
  const factory ThreadParentAccount({
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'parents') ThreadParentName? parent,
  }) = _ThreadParentAccount;

  factory ThreadParentAccount.fromJson(Map<String, dynamic> json) => _$ThreadParentAccountFromJson(json);
}

@freezed
abstract class ThreadParentName with _$ThreadParentName {
  const factory ThreadParentName({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
  }) = _ThreadParentName;

  factory ThreadParentName.fromJson(Map<String, dynamic> json) => _$ThreadParentNameFromJson(json);
}

/// A `communication.messages` row, as returned inside a thread and by
/// POST …/threads/:id/messages. `sender_role` is PARENT | TEACHER.
@freezed
abstract class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    @JsonKey(name: 'message_id') required String messageId,
    @JsonKey(name: 'thread_id') String? threadId,
    @JsonKey(name: 'sender_user_id') String? senderUserId,
    @JsonKey(name: 'sender_role') required String senderRole,
    @Default('') String body,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
    @JsonKey(name: 'read_at') DateTime? readAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) => _$ChatMessageFromJson(json);
}

/// GET /teacher/messages/presence/:userId — messages.service.js
/// #getParentPresence. One of the few camelCase payloads in this API.
@freezed
abstract class ParentPresence with _$ParentPresence {
  const factory ParentPresence({
    @JsonKey(name: 'isOnline') @Default(false) bool isOnline,
    @JsonKey(name: 'lastActiveAt') DateTime? lastActiveAt,
  }) = _ParentPresence;

  factory ParentPresence.fromJson(Map<String, dynamic> json) => _$ParentPresenceFromJson(json);
}

extension MessageThreadLabels on MessageThread {
  /// web messages/utils/threadLabels.js#parentName.
  String get parentName {
    final p = parentAccount?.parent;
    final name = [p?.firstName, p?.lastName].whereType<String>().where((s) => s.trim().isNotEmpty).join(' ');
    return name.isEmpty ? 'Parent' : name;
  }

  /// web threadLabels.js#studentLabel.
  String get studentLabel => student?.displayName ?? '—';
}

/// Cloudinary keeps the original extension on the URL; there is no
/// attachment-type column (web: shared/utils/chatGrouping.js).
bool isImageAttachment(String? url) => url != null && RegExp(r'\.(jpe?g|png|gif|webp)$', caseSensitive: false).hasMatch(url);

String attachmentFileName(String? url) {
  if (url == null) return 'Attachment';
  final last = url.split('/').last;
  return last.isEmpty ? 'Attachment' : last;
}
