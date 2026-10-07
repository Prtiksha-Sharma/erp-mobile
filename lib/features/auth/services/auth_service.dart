import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';

part 'auth_service.freezed.dart';
part 'auth_service.g.dart';

/// POST /auth/login response.user shape — camelCase, unlike almost
/// everything else in this API (see edusoft_backend CLAUDE.md's
/// "snake_case vs camelCase" note: /auth/login and /auth/verify-otp are the
/// documented exceptions). schoolId is deliberately NOT required for login
/// — verified against auth.service.js#assertMatchesRequestedSchool, which
/// only checks it if present. Every Parent-scoped route afterward derives
/// institution_id from the JWT via resolveParent(), not from X-School-ID,
/// so we don't need a tenant-lookup step to test the Parent role.
@freezed
abstract class LoginUser with _$LoginUser {
  const factory LoginUser({
    required String userId,
    required String username,
    String? email,
    String? mobileNo,
    String? fullName,
    required List<String> roles,
  }) = _LoginUser;

  factory LoginUser.fromJson(Map<String, dynamic> json) => _$LoginUserFromJson(json);
}

@freezed
abstract class LoginResult with _$LoginResult {
  const factory LoginResult({
    required String accessToken,
    required LoginUser user,
  }) = _LoginResult;

  factory LoginResult.fromJson(Map<String, dynamic> json) => _$LoginResultFromJson(json);
}

/// Shown when /auth/login answers 401 (auth.service.js: "Invalid credentials").
/// Deliberately doesn't say which of the two was wrong.
const loginInvalidCredentialsMessage =
    'Incorrect username or password. Please check your details and try again.';

/// On the login call a 401 means wrong credentials, not an expired session,
/// so it becomes a user-facing validation failure. Everything else (lockout
/// 423, network, server errors) passes through unchanged.
Result<T> mapLoginFailure<T>(Result<T> result) {
  if (result case Err(failure: UnauthorizedFailure())) {
    return const Err(Failure.validation(loginInvalidCredentialsMessage));
  }
  return result;
}

class AuthService {
  Future<Result<LoginResult>> login(String username, String password) async {
    final result = await guard(() async {
      final res = await DioClient.instance.dio.post(
        '/auth/login',
        data: {'username': username, 'password': password},
        // A 401 here is "wrong password", not an expired session: skip the
        // global 401 logout, which would also wipe the error state.
        options: Options(extra: {DioClient.skipSessionExpiry: true}),
      );
      return LoginResult.fromJson(res.data['data'] as Map<String, dynamic>);
    });
    return mapLoginFailure(result);
  }

  Future<Result<void>> logout() => guard(() async {
        await DioClient.instance.dio.post('/auth/logout');
      });
}
