import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/result.dart';
import '../../../core/models/child.dart';
import '../services/children_service.dart';

/// GET /parent/children, re-fetched whenever auth state changes (login,
/// logout). Throws the Failure object on error — Riverpod's AsyncValue.error
/// captures it as-is; UI reads it back via `error is Failure` and
/// `.userMessage` (see failure.dart).
final childrenListProvider = FutureProvider<List<Child>>((ref) async {
  final auth = ref.watch(authProvider);
  if (!auth.isAuthenticated) return [];

  final result = await ChildrenService().listMyChildren();
  return switch (result) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
});

/// The parent's currently selected child — every child-scoped screen reads
/// this, never a raw studentId passed around ad hoc. Nothing selects a
/// default here; ParentHomeScreen does that once the list loads (see its
/// own ref.listen), keeping this notifier free of cross-provider reads.
class ActiveChildNotifier extends Notifier<Child?> {
  @override
  Child? build() => null;

  void select(Child child) => state = child;
}

final activeChildProvider = NotifierProvider<ActiveChildNotifier, Child?>(ActiveChildNotifier.new);
