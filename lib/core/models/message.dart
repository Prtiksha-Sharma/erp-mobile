import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

/// GET /parent/messages/teachers — verified by direct read of
/// parent/teachers.service.js#listAllTeachers. Deliberately institution-scoped
/// (a parent can message any teacher at the school), not child-scoped — so
/// the provider that fetches this is a plain FutureProvider, same convention
/// as Events/Grievances.
@freezed
abstract class TeacherContact with _$TeacherContact {
  const factory TeacherContact({
    @JsonKey(name: 'staff_id') required String staffId,
    @JsonKey(name: 'full_name') required String fullName,
    String? designation,
    String? department,
    @JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,
  }) = _TeacherContact;

  factory TeacherContact.fromJson(Map<String, dynamic> json) => _$TeacherContactFromJson(json);
}

/// The `staff_accounts` shape nested inside a thread (messages.service.js's
/// THREAD_LIST_INCLUDE) — a genuinely different field set than
/// TeacherContact above (carries user_id, not department), not the same
/// backend shape reused.
@freezed
abstract class ThreadStaffRef with _$ThreadStaffRef {
  const factory ThreadStaffRef({
    @JsonKey(name: 'staff_id') required String staffId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'full_name') required String fullName,
    String? designation,
    @JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,
  }) = _ThreadStaffRef;

  factory ThreadStaffRef.fromJson(Map<String, dynamic> json) => _$ThreadStaffRefFromJson(json);
}

enum SenderRole {
  @JsonValue('PARENT')
  parent,
  @JsonValue('TEACHER')
  teacher,
  unknown,
}

/// Matches the `messages` Prisma model (schema.prisma:3229) exactly —
/// verified by direct read, not live-captured (no messages exist yet on
/// this test account).
@freezed
abstract class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    @JsonKey(name: 'message_id') required String messageId,
    @JsonKey(name: 'thread_id') required String threadId,
    @JsonKey(name: 'sender_role', unknownEnumValue: SenderRole.unknown) required SenderRole senderRole,
    required String body,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
    @JsonKey(name: 'read_at') DateTime? readAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) => _$ChatMessageFromJson(json);
}

/// Matches both GET /parent/messages/threads (list — `messages` holds only
/// the single latest one, THREAD_LIST_INCLUDE's `take: 1`) and GET
/// /parent/messages/threads/:threadId (detail — `messages` holds the full
/// thread, oldest first) — same field name, different list contents; no
/// dual-shape handling needed since both always include it non-empty (a
/// thread is never created without at least one message).
@freezed
abstract class MessageThread with _$MessageThread {
  const factory MessageThread({
    @JsonKey(name: 'thread_id') required String threadId,
    @JsonKey(name: 'staff_id') required String staffId,
    required String status,
    @JsonKey(name: 'last_message_at') DateTime? lastMessageAt,
    @JsonKey(name: 'staff_accounts') required ThreadStaffRef staff,
    required List<ChatMessage> messages,
  }) = _MessageThread;

  factory MessageThread.fromJson(Map<String, dynamic> json) => _$MessageThreadFromJson(json);
}
