import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';

/// POST /student/change-password — body keys match the backend contract
/// exactly (student/account.service.js#changePassword; same keys the web's
/// authService.changeMyPassword sends).
///
/// A wrong current password comes back as **401** "Current password is
/// incorrect" — not a session expiry — so the request opts out of the
/// global 401 logout (DioClient.skipSessionExpiry) and the 401 is turned
/// back into a validation failure the form can show.
class StudentAccountService {
  Future<Result<void>> changePassword({required String oldPassword, required String newPassword}) async {
    final result = await guard(() async {
      await DioClient.instance.dio.post(
        '/student/change-password',
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
