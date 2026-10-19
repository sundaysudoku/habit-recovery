
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:habit_recovery/features/today/domain/check_in_status.dart';
import 'package:habit_recovery/l10n/app_localizations.dart';

import '../features/recovery/recovery_flow_test.dart' show seedHabit;
import '../helpers.dart';

const _rtl = {'ar', 'ur'};

Future<void> _openTab(WidgetTester tester, int index) async {
  await tester.tap(
    find.descendant(
      of: find.byType(NavigationBar),
      matching: find.byType(NavigationDestination).at(index),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  test('the app supports exactly the 20 planned languages', () {
    final codes = AppLocalizations.supportedLocales
        .map((l) => l.languageCode)
        .toSet();
    expect(codes, {
      'en', 'vi', 'es', 'pt', 'fr', 'de', 'it', 'nl', 'ru', 'pl', //
      'tr', 'ar', 'ur', 'hi', 'zh', 'ja', 'ko', 'id', 'th', 'bn',
    });
  });

  for (final locale in AppLocalizations.supportedLocales) {
    final code = locale.languageCode;

    testWidgets('$code: every screen renders without overflow at 2x text on a '
        'small phone', (tester) async {
      tester.view.physicalSize = const Size(360, 640);
      tester.view.devicePixelRatio = 1;
      tester.platformDispatcher.textScaleFactorTestValue = 2.0;
      addTearDown(() {
        tester.view.resetPhysicalSize();
        tester.view.resetDevicePixelRatio();
        tester.platformDispatcher.clearTextScaleFactorTestValue();
      });

      final db = inMemoryDatabase();
      // Two missed planned days in a row: shows the recovery card too.
      await seedHabit(db, checkIns: {3: CheckInStatus.normal});
      await pumpApp(
        tester,
        locale: Locale(code),
        onboardingComplete: true,
        database: db,
      );

      final context = tester.element(find.byType(Scaffold).first);
      expect(
        Directionality.of(context),
        _rtl.contains(code) ? TextDirection.rtl : TextDirection.ltr,
      );
      expect(find.byType(NavigationBar), findsOneWidget);
      // No untranslated English left on Today for non-English locales.
      if (code != 'en') {
        expect(find.text('Done'), findsNothing);
        expect(find.textContaining("Let's restart"), findsNothing);
      }

      for (var tab = 1; tab < 4; tab++) {
        await _openTab(tester, tab);
      }
      // Settings -> Privacy page.
      await tester.scrollUntilVisible(
        find.byIcon(Icons.lock_outline),
        60,
        scrollable: find.descendant(
          of: find.byType(ListView).hitTestable(),
          matching: find.byType(Scrollable),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.lock_outline));
      await tester.pumpAndSettle();
      expect(find.text(AppLocalizations.of(
        tester.element(find.byType(Scaffold).first),
      ).privacyTitle), findsWidgets);
      await tester.tap(find.byType(BackButton));
      await tester.pumpAndSettle();

      // Habit form.
      await _openTab(tester, 1);
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
    });
  }
}
