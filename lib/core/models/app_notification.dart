import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_notification.freezed.dart';
part 'app_notification.g.dart';

/// GET /notifications — notifications/notifications.service.js
/// #listMyNotifications: the caller's most recent raw `notifications` rows
/// (newest first, capped server-side) plus the total unread count. Generic
/// and cross-role (`authenticate` only, no role check) — it is the web
/// topbar's NotificationBell feed for every portal.
@freezed
abstract class NotificationInbox with _$NotificationInbox {
  const factory NotificationInbox({
    @Default(<AppNotification>[]) List<AppNotification> notifications,
    @JsonKey(name: 'unread_count') @Default(0) int unreadCount,
  }) = _NotificationInbox;

  factory NotificationInbox.fromJson(Map<String, dynamic> json) => _$NotificationInboxFromJson(json);
}

/// One `notifications` row (prisma `model notifications`). `link` is a web
/// route path (e.g. `/principal/dashboard`), or null.
@freezed
abstract class AppNotification with _$AppNotification {
  const factory AppNotification({
    @JsonKey(name: 'notification_id') required String notificationId,
    String? type,
    required String title,
    String? body,
    String? link,
    @JsonKey(name: 'is_read') @Default(false) bool isRead,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _AppNotification;

  factory AppNotification.fromJson(Map<String, dynamic> json) => _$AppNotificationFromJson(json);
}
