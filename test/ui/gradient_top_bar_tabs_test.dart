import 'package:edusoft_mobile/ui/widgets/app_shell/app_gradient_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('tabs under the gradient bar use white labels and a white indicator', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppGradientTopBar(
              title: 'My Timetable',
              notificationBell: const SizedBox.shrink(),
              accountMenu: const SizedBox.shrink(),
              bottom: const TabBar(tabs: [Tab(text: 'Tuesday'), Tab(text: 'Wednesday')]),
            ),
            body: const TabBarView(children: [SizedBox(), SizedBox()]),
          ),
        ),
      ),
    );
    final tabBar = tester.widget<TabBar>(find.byType(TabBar));
    final context = tester.element(find.byType(TabBar));
    final theme = Theme.of(context).tabBarTheme;
    expect(theme.labelColor, Colors.white);
    expect(theme.indicatorColor, Colors.white);
    expect(theme.unselectedLabelColor, Colors.white.withValues(alpha: 0.72));
    expect(tabBar.tabs.length, 2);

    final selected = tester.widget<DefaultTextStyle>(
      find.ancestor(of: find.text('Tuesday'), matching: find.byType(DefaultTextStyle)).first,
    );
    expect(selected.style.color, Colors.white);
  });
}
