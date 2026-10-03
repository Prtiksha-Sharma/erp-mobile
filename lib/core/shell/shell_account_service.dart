import 'package:dio/dio.dart';

import '../api/dio_client.dart';
import '../api/api_result_extensions.dart';
import '../error/failure.dart';
import '../error/result.dart';

/// POST /auth/change-password — the endpoint the web uses for every
/// non-Student role. Student has its own `/student/change-password` and
/// keeps calling it through `StudentAccountService`, not this class.
class ShellAccountService {
  Future<Result<void>> changePassword({required String oldPassword, required String newPassword}) async {
    final result = await guard(() async {
      await DioClient.instance.dio.post(
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
