import 'package:flutter/foundation.dart';

import '../roles/app_role.dart';

/// go_router's `redirect` callback has no BuildContext-based access to
/// Riverpod state, so this tiny ChangeNotifier is router-plumbing ONLY —
/// AuthNotifier (auth_provider.dart) is the real source of truth and writes
/// here after every state change. Widgets should read auth state via
/// `ref.watch(authProvider)` as normal, never via this class directly.
class AuthSessionListenable extends ChangeNotifier {
  AuthSessionListenable._();
  static final AuthSessionListenable instance = AuthSessionListenable._();

  bool isAuthenticated = false;
  AppRole? activeRole;

  void update({required bool isAuthenticated, AppRole? activeRole}) {
    this.isAuthenticated = isAuthenticated;
    this.activeRole = activeRole;
    notifyListeners();
  }
}
