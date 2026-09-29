// Smoke test — confirms the app boots through MaterialApp.router without
// throwing, and an unauthenticated user lands on the login screen (the
// router's redirect default). Replace/extend with real widget tests as
// each screen lands — see the enterprise plan's per-screen Definition of
// Done (unit test for the service/provider, widget test for the screen).

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/main.dart';

void main() {
  testWidgets('Unauthenticated user boots straight to the login screen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ProviderScope(child: MyApp()));
    await tester.pumpAndSettle();

    expect(find.text('EduSoft Mobile'), findsOneWidget);
    expect(find.text('Log in'), findsOneWidget);
    expect(find.text('Username or email'), findsOneWidget);
  });
}
