// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationInbox _$NotificationInboxFromJson(Map<String, dynamic> json) =>
    _NotificationInbox(
      notifications:
          (json['notifications'] as List<dynamic>?)
              ?.map((e) => AppNotification.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AppNotification>[],
      unreadCount: (json['unread_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$NotificationInboxToJson(_NotificationInbox instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
      'unread_count': instance.unreadCount,
    };

_AppNotification _$AppNotificationFromJson(Map<String, dynamic> json) =>
    _AppNotification(
      notificationId: json['notification_id'] as String,
      type: json['type'] as String?,
      title: json['title'] as String,
      body: json['body'] as String?,
      link: json['link'] as String?,
      isRead: json['is_read'] as bool? ?? false,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$AppNotificationToJson(_AppNotification instance) =>
    <String, dynamic>{
      'notification_id': instance.notificationId,
      'type': instance.type,
      'title': instance.title,
      'body': instance.body,
      'link': instance.link,
      'is_read': instance.isRead,
      'created_at': instance.createdAt?.toIso8601String(),
    };
