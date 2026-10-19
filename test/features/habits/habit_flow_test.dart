import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:habit_recovery/features/today/domain/check_in_status.dart';

import '../../helpers.dart';

Finder _field(String label) => find.widgetWithText(TextFormField, label);

Future<void> _openTab(WidgetTester tester, String tab) async {
  await tester.tap(
    find.descendant(of: find.byType(NavigationBar), matching: find.text(tab)),
  );
  await tester.pumpAndSettle();
}

Future<void> _fillForm(
  WidgetTester tester, {
  String name = 'Walk',
  String target = '30 minutes',
  String smaller = '5 minutes',
}) async {
  await tester.enterText(_field('Habit'), name);
  await tester.enterText(_field('Normal goal'), target);
  await tester.enterText(_field('Smaller goal'), smaller);
}

Future<void> _save(WidgetTester tester) async {
  await tester.tap(find.widgetWithText(TextButton, 'Save'));
  await tester.pumpAndSettle();
}

SegmentedButton<CheckInStatus> _checkInButton(WidgetTester tester) =>
    tester.widget<SegmentedButton<CheckInStatus>>(
      find.byType(SegmentedButton<CheckInStatus>),
    );

void main() {
  testWidgets('Today invites the user to add a first habit', (tester) async {
    await pumpApp(tester, onboardingComplete: true);
    expect(find.text('Add a habit to start. Small is fine.'), findsOneWidget);
  });

  testWidgets('a new habit appears on Today and can be checked in', (
    tester,
  ) async {
    final db = await pumpApp(tester, onboardingComplete: true);

    await tester.tap(find.text('New habit'));
    await tester.pumpAndSettle();
    await _fillForm(tester);
    await _save(tester);

    expect(find.text('Walk'), findsOneWidget);
    expect(find.text('Goal: 30 minutes · Smaller: 5 minutes'), findsOneWidget);

    await tester.tap(find.text('Small step'));
    await tester.pumpAndSettle();
    expect(_checkInButton(tester).selected, {CheckInStatus.smaller});

    // Correct today's check-in.
    await tester.tap(find.text('Done'));
    await tester.pumpAndSettle();
    expect(_checkInButton(tester).selected, {CheckInStatus.normal});
    final rows = await db.select(db.checkIns).get();
    expect(rows, hasLength(1));
    expect(rows.single.status, CheckInStatus.normal.code);

    // Tapping the selected option again clears it.
    await tester.tap(find.text('Done'));
    await tester.pumpAndSettle();
    expect(_checkInButton(tester).selected, isEmpty);
    expect(await db.select(db.checkIns).get(), isEmpty);
  });

  testWidgets('the form requires all fields and at least one day', (
    tester,
  ) async {
    await pumpApp(tester, onboardingComplete: true);
    await tester.tap(find.text('New habit'));
    await tester.pumpAndSettle();

    await _save(tester);
    expect(find.text('Please fill this in.'), findsNWidgets(3));

    await _fillForm(tester);
    await tester.tap(find.text('Selected days'));
    await tester.pumpAndSettle();
    // All days start selected; unselect them all.
    for (final day in ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']) {
      await tester.tap(find.widgetWithText(FilterChip, day));
      await tester.pump();
    }
    await _save(tester);
    expect(find.text('Choose at least one day.'), findsOneWidget);
    expect(find.text('Edit habit'), findsNothing);
    expect(find.text('New habit'), findsWidgets);
  });

  testWidgets('a habit not scheduled today is hidden from Today', (
    tester,
  ) async {
    await pumpApp(tester, onboardingComplete: true); // today is a Monday
    await tester.tap(find.text('New habit'));
    await tester.pumpAndSettle();
    await _fillForm(tester, name: 'Long run');
    await tester.tap(find.text('Selected days'));
    await tester.pumpAndSettle();
    for (final day in ['Mon', 'Tue', 'Wed', 'Thu', 'Fri']) {
      await tester.tap(find.widgetWithText(FilterChip, day));
      await tester.pump();
    }
    await _save(tester);

    expect(find.text('Long run'), findsNothing);
    expect(
      find.text('Nothing scheduled today. Rest is part of the plan too.'),
      findsOneWidget,
    );

    await _openTab(tester, 'Habits');
    expect(find.text('Long run'), findsOneWidget);
    // English (US) weeks start on Sunday.
    expect(find.textContaining('Sun, Sat'), findsOneWidget);
  });

  testWidgets('edit, archive, restore and delete a habit', (tester) async {
    await pumpApp(tester, onboardingComplete: true);
    await tester.tap(find.text('New habit'));
    await tester.pumpAndSettle();
    await _fillForm(tester);
    await _save(tester);

    await _openTab(tester, 'Habits');
    await tester.tap(find.text('Walk'));
    await tester.pumpAndSettle();
    expect(find.text('Edit habit'), findsOneWidget);
    await tester.enterText(_field('Habit'), 'Evening walk');
    await _save(tester);
    expect(find.text('Evening walk'), findsOneWidget);

    // Archive.
    await tester.tap(find.text('Evening walk'));
    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.more_vert));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Archive'));
    await tester.pumpAndSettle();
    expect(find.text('Archived (1)'), findsOneWidget);
    await _openTab(tester, 'Today');
    expect(find.text('Evening walk'), findsNothing);

    // Restore.
    await _openTab(tester, 'Habits');
    await tester.tap(find.text('Archived (1)'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Evening walk'));
    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.more_vert));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Restore'));
    await tester.pumpAndSettle();
    expect(find.text('Archived (1)'), findsNothing);

    // Delete, cancelling first.
    await tester.tap(find.text('Evening walk'));
    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.more_vert));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Delete'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();
    expect(find.text('Edit habit'), findsOneWidget);
    await tester.tap(find.byIcon(Icons.more_vert));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Delete'));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(FilledButton, 'Delete'));
    await tester.pumpAndSettle();
    expect(find.text('Evening walk'), findsNothing);
    expect(
      find.text('No habits yet. Tap New habit to add your first one.'),
      findsOneWidget,
    );
  });
}
