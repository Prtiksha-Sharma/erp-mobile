import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/app_notification.dart';

/// The calls behind the web Topbar's controls for a Principal: the
/// NotificationBell (notificationsService.js → `/notifications/*`, generic
/// to every logged-in user) and Change Password (authService
/// .changeMyPassword → `POST /auth/change-password` for every non-Student).
class PrincipalAccountService {
  Dio get _dio => DioClient.instance.dio;

  // ── Notifications ──────────────────────────────────────────────────────
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

  // ── Change password ────────────────────────────────────────────────────

  /// auth.service.js#changePassword: 400 if new_password < 8 chars, and a
  /// wrong current password is **401** "Current password is incorrect" —
  /// not a session expiry — so the request opts out of the global 401 logout
  /// (DioClient.skipSessionExpiry) and the 401 becomes a validation failure.
  Future<Result<void>> changePassword({required String oldPassword, required String newPassword}) async {
    final result = await guard(() async {
      await _dio.post(
        '/auth/change-password',
        data: {'old_password': oldPassword, 'new_password': newPassword},
        options: Options(extra: {DioClient.skipSessionExpiry: true}),
      );
    });
    if (result case Err(failure: UnauthorizedFailure())) {
      return const Err(Failure.validation('Current password is incorrect.'));
    }
    return result;
  }
}
