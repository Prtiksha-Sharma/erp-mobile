import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../storage/secure_storage.dart';

/// Comes from --dart-define-from-file=config/dev.json (or config/prod.json)
/// — see README.md.
///
/// The defaultValue matters: without one, String.fromEnvironment silently
/// resolves to an EMPTY STRING (not an error) whenever the flag is
/// forgotten — plain `flutter run` with no --dart-define-from-file would
/// then try to call "" + "/auth/login" and fail before the request ever
/// leaves the device, with no clear signal why. Confirmed live: this was
/// the exact cause of two separate "login just doesn't work" reports.
/// The default matches config/dev.json's own value, so plain `flutter run`
/// now behaves identically to the flagged command for local dev — while
/// `--dart-define-from-file=config/prod.json` still correctly overrides
/// this for a real build, since the default only applies when nothing was
/// explicitly provided.
const _apiBaseUrl = String.fromEnvironment(
  'API_BASE_URL',
  defaultValue: 'http://localhost:5000/api',
);

/// Mirrors apps/school/src/lib/axios.js on the web frontend: injects the
/// bearer token + X-School-ID on every request.
///
/// TODO(auth, Phase 0 backend work): the web app refreshes an expired
/// access token via an httpOnly, sameSite=strict cookie
/// (auth.service.js COOKIE_OPTS) — that mechanism doesn't translate to a
/// native client. Mobile needs a body-based refresh endpoint instead,
/// gated behind an `X-Client: mobile` header per our architecture notes.
/// Until that endpoint exists, a 401 is handled the SAFE way — clear the
/// session and let the caller surface Failure.unauthorized() — rather than
/// calling a refresh endpoint that doesn't exist yet. Once it does, this
/// becomes the same single-flight refresh-and-retry queue axios.js already
/// has (isRefreshing/failedQueue) to avoid firing N concurrent refresh
/// calls when several requests 401 at once.
class DioClient {
  DioClient._();
  static final DioClient instance = DioClient._();

  /// Set by whoever bootstraps the app (see core/auth) — called once on an
  /// unrecoverable 401 so the session can be cleared and the router can
  /// redirect to login. Kept as a callback rather than importing core/auth
  /// here directly, so core/api never depends on core/auth (wrong direction
  /// per the project's layer rule: app -> features -> shared/core -> lib).
  void Function()? onUnauthorized;

  /// Put `{DioClient.skipSessionExpiry: true}` in a request's
  /// `Options.extra` when that endpoint uses 401 for something other than
  /// "session expired" — e.g. POST /student/change-password answers a wrong
  /// current password with 401 "Current password is incorrect", which must
  /// not log the user out.
  static const skipSessionExpiry = 'skipSessionExpiry';

  late final Dio dio = _build();

  Dio _build() {
    final dio = Dio(
      BaseOptions(
        baseUrl: _apiBaseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await SecureStorage.instance.getAccessToken();
          final schoolId = await SecureStorage.instance.getSchoolId();
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          if (schoolId != null) {
            options.headers['X-School-ID'] = schoolId;
          }
          handler.next(options);
        },
        onError: (error, handler) async {
          if (error.response?.statusCode == 401 && error.requestOptions.extra[skipSessionExpiry] != true) {
            await SecureStorage.instance.clearAll();
            onUnauthorized?.call();
          }
          handler.next(error);
        },
      ),
    );

    // Debug-only, and deliberately NOT logging request bodies or headers —
    // a login request body has a plaintext password, and every other
    // request carries the bearer token in its headers (see Pillar 2 of the
    // enterprise plan: never log tokens, in debug or release). Method/path/
    // status/response body is enough to diagnose "why did this call fail"
    // without capturing anything sensitive. Never runs in a release build.
    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(
          requestBody: false,
          requestHeader: false,
          responseHeader: false,
          responseBody: true,
          error: true,
        ),
      );
    }

    return dio;
  }
}
