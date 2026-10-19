import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers.dart';

void main() {
  testWidgets('uses Material 3', (tester) async {
    await pumpApp(tester);
    final context = tester.element(find.byType(Scaffold).first);
    expect(Theme.of(context).useMaterial3, isTrue);
  });

  testWidgets('bottom navigation switches between the four tabs', (
    tester,
  ) async {
    await pumpApp(tester, onboardingComplete: true);

    expect(find.byType(NavigationBar), findsOneWidget);
    for (final tab in ['Habits', 'Progress', 'Settings', 'Today']) {
      await tester.tap(
        find.descendant(
          of: find.byType(NavigationBar),
          matching: find.text(tab),
        ),
      );
      await tester.pumpAndSettle();
      expect(
        find.descendant(of: find.byType(AppBar), matching: find.text(tab)),
        findsOneWidget,
      );
    }
  });

  testWidgets('shows Vietnamese text when the locale is vi', (tester) async {
    await pumpApp(tester, locale: const Locale('vi'), onboardingComplete: true);

    expect(
      find.descendant(of: find.byType(AppBar), matching: find.text('Hôm nay')),
      findsOneWidget,
    );
    expect(
      find.text('Thêm một thói quen để bắt đầu. Nhỏ thôi cũng được.'),
      findsOneWidget,
    );
  });

  testWidgets('no layout overflow with large text in Vietnamese', (
    tester,
  ) async {
    tester.platformDispatcher.textScaleFactorTestValue = 2.0;
    addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);

    await pumpApp(tester, locale: const Locale('vi'));
    await tester.tap(find.text('Bỏ qua'));
    await tester.pumpAndSettle();
    for (final tab in ['Thói quen', 'Tiến bộ', 'Cài đặt', 'Hôm nay']) {
      await tester.tap(find.text(tab).last);
      await tester.pumpAndSettle();
    }
    expect(tester.takeException(), isNull);
  });
}
