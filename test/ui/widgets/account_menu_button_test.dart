// Guards the behaviour change this widget exists for: the Driver and Parent
// app bars used to carry a bare `IconButton(Icons.logout)` that called
// `logout()` directly from `onPressed`, so a single mis-tap in the top-right
// corner ended the session. The account button must therefore never sign out
// on its first tap — it opens a menu, and "Sign Out" is a second, deliberate
// choice inside it.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/ui/widgets/account_menu_button.dart';

Widget _host() => const ProviderScope(
      child: MaterialApp(
        home: _HostScaffold(),
      ),
    );

class _HostScaffold extends StatelessWidget {
  const _HostScaffold();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Driver'),
        actions: const [AccountMenuButton()],
      ),
      body: const SizedBox.shrink(),
    );
  }
}

void main() {
  testWidgets('first tap opens a menu rather than signing out', (tester) async {
    await tester.pumpWidget(_host());

    // Closed state: no destructive action is reachable without opening it.
    expect(find.text('Sign Out'), findsNothing);

    await tester.tap(find.byType(AccountMenuButton));
    await tester.pumpAndSettle();

    expect(find.text('Sign Out'), findsOneWidget);
  });

  testWidgets('menu header falls back to "User" when no session is loaded',
      (tester) async {
    await tester.pumpWidget(_host());
    await tester.tap(find.byType(AccountMenuButton));
    await tester.pumpAndSettle();

    // authProvider's default state has a null user, so both the avatar
    // initial and the header fall back rather than rendering blank.
    expect(find.text('User'), findsOneWidget);
    expect(find.text('U'), findsOneWidget);
  });

  testWidgets('the old one-tap logout IconButton is gone from the bar',
      (tester) async {
    await tester.pumpWidget(_host());

    expect(
      find.widgetWithIcon(IconButton, Icons.logout),
      findsNothing,
      reason: 'a bare logout IconButton in the AppBar would sign out on one tap',
    );
  });
}
