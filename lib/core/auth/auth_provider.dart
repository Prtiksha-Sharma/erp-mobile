import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/auth/services/auth_service.dart';
import '../api/dio_client.dart';
import '../error/failure.dart';
import '../error/result.dart';
import '../roles/app_role.dart';
import '../storage/secure_storage.dart';
import 'auth_session_listenable.dart';

/// Session persistence across app restarts is deliberately NOT built in
/// this first slice — every cold start requires a fresh login. Adding it
/// (store + restore the user JSON via SecureStorage) is a small, isolated
/// follow-up once this base flow is proven working end to end; skipping it
/// now keeps this first checkpoint smaller and lower-risk.
class AuthState {
  const AuthState({this.user, this.activeRole, this.isLoading = false, this.error});

  final LoginUser? user;
  final AppRole? activeRole;
  final bool isLoading;
  final Failure? error;

  bool get isAuthenticated => user != null && activeRole != null;

  AuthState copyWith({LoginUser? user, AppRole? activeRole, bool? isLoading, Failure? error}) {
    return AuthState(
      user: user ?? this.user,
      activeRole: activeRole ?? this.activeRole,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}

class AuthNotifier extends Notifier<AuthState> {
  final _authService = AuthService();

  @override
  AuthState build() {
    // DioClient's 401 handler has no Riverpod `ref` (core/api must not
    // depend on core/auth — see dio_client.dart's own comment), so it
    // reaches us via this one callback instead.
    DioClient.instance.onUnauthorized = () => Future.microtask(logout);
    return const AuthState();
  }

  Future<void> login(String username, String password) async {
    state = state.copyWith(isLoading: true, error: null);
    final result = await _authService.login(username, password);

    switch (result) {
      case Ok(:final value):
        final activeRole = _resolveActiveRole(value.user.roles);
        if (activeRole == null) {
          state = AuthState(
            error: const Failure.validation("This account's role isn't supported on mobile yet."),
          );
          return;
        }
        await SecureStorage.instance.setAccessToken(value.accessToken);
        state = AuthState(user: value.user, activeRole: activeRole);
        AuthSessionListenable.instance.update(isAuthenticated: true, activeRole: activeRole);
      case Err(:final failure):
        state = state.copyWith(isLoading: false, error: failure);
    }
  }

  Future<void> logout() async {
    await SecureStorage.instance.clearAll();
    state = const AuthState();
    AuthSessionListenable.instance.update(isAuthenticated: false, activeRole: null);
  }

  /// First backend role that maps to a supported mobile AppRole wins. A
  /// real multi-role switcher (see role-wise planning notes on Teacher +
  /// Class Teacher / Teacher-who-is-also-Parent) is deferred — flagged
  /// here, not silently skipped.
  AppRole? _resolveActiveRole(List<String> roles) {
    for (final r in roles) {
      final mapped = AppRole.fromBackendName(r);
      if (mapped != null) return mapped;
    }
    return null;
  }
}

final authProvider = NotifierProvider<AuthNotifier, AuthState>(AuthNotifier.new);
