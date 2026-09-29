import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Wraps flutter_secure_storage (Keychain on iOS / Keystore on Android) for
/// the values that must never sit in plain SharedPreferences: the access
/// token, the mobile refresh token, and the active school's institutionId.
///
/// Mirrors lib/storage.js on the web frontend (apps/school), which does the
/// same job with localStorage — same keys/shape, different backing store.
class SecureStorage {
  SecureStorage._();
  static final SecureStorage instance = SecureStorage._();

  final _storage = const FlutterSecureStorage();

  static const _kAccessToken = 'access_token';
  static const _kRefreshToken = 'refresh_token';
  static const _kSchoolId = 'school_id';

  Future<void> setAccessToken(String token) =>
      _storage.write(key: _kAccessToken, value: token);
  Future<String?> getAccessToken() => _storage.read(key: _kAccessToken);

  /// NOTE: the web app gets its refresh token from an httpOnly, sameSite
  /// cookie the backend sets (see auth.service.js COOKIE_OPTS) — that
  /// approach doesn't translate to a native client. Mobile needs a
  /// body-based refresh token instead (Phase 0 backend work, see README).
  /// This method is where that token will be stored once that endpoint exists.
  Future<void> setRefreshToken(String token) =>
      _storage.write(key: _kRefreshToken, value: token);
  Future<String?> getRefreshToken() => _storage.read(key: _kRefreshToken);

  Future<void> setSchoolId(String id) =>
      _storage.write(key: _kSchoolId, value: id);
  Future<String?> getSchoolId() => _storage.read(key: _kSchoolId);

  /// Mirrors storage.clearAll() on the web app — call on logout and on
  /// refresh failure.
  Future<void> clearAll() => _storage.deleteAll();
}
