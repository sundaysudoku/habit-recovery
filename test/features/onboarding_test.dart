import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers.dart';

void main() {
  testWidgets('first launch shows onboarding, finishing it opens Today', (
    tester,
  ) async {
    final prefs = await pumpApp(tester);

    expect(find.text('Build habits gently'), findsOneWidget);
    expect(find.byType(NavigationBar), findsNothing);

    await tester.tap(find.text('Next'));
    await tester.pumpAndSettle();
    expect(find.text('Missed a few days? Start again'), findsOneWidget);

    await tester.tap(find.text('Next'));
    await tester.pumpAndSettle();
    expect(find.text('Your data stays on your phone'), findsOneWidget);

    await tester.tap(find.text('Get started'));
    await tester.pumpAndSettle();

    expect(find.byType(NavigationBar), findsOneWidget);
    expect(prefs.getBool('onboarding_complete'), isTrue);
  });

  testWidgets('Skip finishes onboarding immediately', (tester) async {
    await pumpApp(tester);

    await tester.tap(find.text('Skip'));
    await tester.pumpAndSettle();

    expect(find.byType(NavigationBar), findsOneWidget);
  });

  testWidgets('onboarding is not shown again once completed', (tester) async {
    await pumpApp(tester, onboardingComplete: true);

    expect(find.text('Build habits gently'), findsNothing);
    expect(find.byType(NavigationBar), findsOneWidget);
  });
}
