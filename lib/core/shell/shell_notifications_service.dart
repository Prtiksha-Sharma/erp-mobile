import 'package:dio/dio.dart';

import '../api/dio_client.dart';
import '../api/api_result_extensions.dart';
import '../error/result.dart';
import '../models/app_notification.dart';

/// GET/POST/DELETE /notifications* — notifications.service.js. Generic and
/// cross-role (`authenticate` only, no role check), so this one service
/// backs every portal's NotificationBell instead of each role duplicating
/// the same five calls (ported from the former `PrincipalAccountService`).
class ShellNotificationsService {
  Dio get _dio => DioClient.instance.dio;

  Future<Result<NotificationInbox>> getMyNotifications() => guard(() async {
        final res = await _dio.get('/notifications');
        return NotificationInbox.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  Future<Result<void>> markRead(String notificationId) =>
      guard(() async => _dio.post('/notifications/$notificationId/read'));

  Future<Result<void>> markAllRead() => guard(() async => _dio.post('/notifications/read-all'));

  Future<Result<void>> remove(String notificationId) =>
      guard(() async => _dio.delete('/notifications/$notificationId'));

  Future<Result<void>> clearAll() => guard(() async => _dio.delete('/notifications'));
}
