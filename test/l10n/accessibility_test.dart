import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:habit_recovery/features/today/domain/check_in_status.dart';

import '../features/recovery/recovery_flow_test.dart' show seedHabit;
import '../helpers.dart';

void main() {
  for (final tab in ['Today', 'Habits', 'Progress', 'Settings']) {
    testWidgets('$tab: tap targets are large enough and every tap target has '
        'a label', (tester) async {
      final handle = tester.ensureSemantics();
      final db = inMemoryDatabase();
      await seedHabit(db, checkIns: {3: CheckInStatus.normal});
      await pumpApp(tester, onboardingComplete: true, database: db);
      await tester.tap(
        find.descendant(
          of: find.byType(NavigationBar),
          matching: find.text(tab),
        ),
      );
      await tester.pumpAndSettle();

      await expectLater(tester, meetsGuideline(androidTapTargetGuideline));
      await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));
      await expectLater(tester, meetsGuideline(textContrastGuideline));
      handle.dispose();
    });
  }
}
