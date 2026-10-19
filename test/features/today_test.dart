import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:habit_recovery/features/today/domain/check_in_status.dart';

import '../helpers.dart';

SegmentedButton<CheckInStatus> _firstCheckIn(WidgetTester tester) =>
    tester.widget<SegmentedButton<CheckInStatus>>(
      find.byType(SegmentedButton<CheckInStatus>).first,
    );

void main() {
  testWidgets('a check-in can be chosen, changed and cleared', (tester) async {
    await pumpApp(tester, onboardingComplete: true);

    expect(find.text('Walk'), findsOneWidget);
    expect(_firstCheckIn(tester).selected, isEmpty);

    await tester.tap(find.text('Small step').first);
    await tester.pumpAndSettle();
    expect(_firstCheckIn(tester).selected, {CheckInStatus.smaller});

    await tester.tap(find.text('Done').first);
    await tester.pumpAndSettle();
    expect(_firstCheckIn(tester).selected, {CheckInStatus.normal});

    await tester.tap(find.text('Done').first);
    await tester.pumpAndSettle();
    expect(_firstCheckIn(tester).selected, isEmpty);
  });
}
