import 'package:edusoft_mobile/core/auth/auth_provider.dart';
import 'package:edusoft_mobile/core/error/failure.dart';
import 'package:edusoft_mobile/core/error/result.dart';
import 'package:edusoft_mobile/features/auth/screens/login_screen.dart';
import 'package:edusoft_mobile/features/auth/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

class _FailingAuth extends AuthNotifier {
  @override
  AuthState build() => const AuthState(
        error: Failure.validation(loginInvalidCredentialsMessage),
      );

  @override
  Future<void> login(String username, String password) async {}
}

void main() {
  group('mapLoginFailure', () {
    test('401 becomes an incorrect-credentials validation failure', () {
      final r = mapLoginFailure<int>(const Err(Failure.unauthorized()));
      expect(r, isA<Err<int>>());
      expect((r as Err<int>).failure.userMessage, loginInvalidCredentialsMessage);
    });

    test('other failures and successes pass through unchanged', () {
      final locked = mapLoginFailure<int>(
        const Err(Failure.validation('Too many failed attempts.')),
      );
      expect((locked as Err<int>).failure.userMessage, 'Too many failed attempts.');
      final net = mapLoginFailure<int>(const Err(Failure.network()));
      expect((net as Err<int>).failure, isA<NetworkFailure>());
      expect((mapLoginFailure<int>(const Ok(1)) as Ok<int>).value, 1);
    });
  });

  testWidgets('shows the error banner and hides it when the user types',
      (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [authProvider.overrideWith(_FailingAuth.new)],
        child: const MaterialApp(home: LoginScreen()),
      ),
    );
    await tester.pump();

    expect(find.text('Sign in failed'), findsOneWidget);
    expect(find.text(loginInvalidCredentialsMessage), findsOneWidget);

    await tester.enterText(find.byType(TextFormField).first, 'a');
    await tester.pumpAndSettle();
    expect(find.text('Sign in failed'), findsNothing);
  });
}
