import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:habit_recovery/core/database/app_database.dart';
import 'package:habit_recovery/features/habits/data/habit_repository.dart';
import 'package:habit_recovery/features/habits/domain/habit.dart';
import 'package:habit_recovery/features/habits/domain/weekday_schedule.dart';
import 'package:habit_recovery/features/today/data/check_in_repository.dart';
import 'package:habit_recovery/features/today/domain/check_in_status.dart';

import '../../helpers.dart';

const _walk = HabitDraft(
  name: 'Walk',
  normalTarget: '30 minutes',
  smallerTarget: '5 minutes',
  schedule: WeekdaySchedule.daily,
);

/// Creates a habit [daysAgo] days before [testNow] with the given check-ins
/// (days ago -> status).
Future<int> seedHabit(
  AppDatabase db, {
  int daysAgo = 10,
  Map<int, CheckInStatus> checkIns = const {},
  HabitDraft draft = _walk,
}) async {
  final id = await HabitRepository(
    db,
    () => testNow.subtract(Duration(days: daysAgo)),
  ).create(draft);
  for (final MapEntry(key: ago, value: status) in checkIns.entries) {
    await CheckInRepository(
      db,
      () => testNow.subtract(Duration(days: ago)),
    ).setToday(id, status);
  }
  return id;
}

void main() {
  testWidgets('no recovery card after only one missed day', (tester) async {
    final db = inMemoryDatabase();
    await seedHabit(db, checkIns: {2: CheckInStatus.normal});
    await pumpApp(tester, onboardingComplete: true, database: db);
    expect(find.textContaining("Let's restart"), findsNothing);
  });

  testWidgets('choosing the smaller goal closes the card and updates Today', (
    tester,
  ) async {
    final db = inMemoryDatabase();
    await seedHabit(db, checkIns: {3: CheckInStatus.normal});
    await pumpApp(tester, onboardingComplete: true, database: db);

    expect(find.text("Let's restart Walk gently"), findsOneWidget);
    await tester.tap(find.text('Make it smaller (5 minutes)'));
    await tester.pumpAndSettle();

    expect(find.text("Let's restart Walk gently"), findsNothing);
    expect(
      find.text('Goal for now: 5 minutes · Normal: 30 minutes'),
      findsOneWidget,
    );
    expect(find.text('Great choice. 5 minutes counts fully.'), findsOneWidget);
  });

  testWidgets('Not now hides the card without changing the goal', (
    tester,
  ) async {
    final db = inMemoryDatabase();
    await seedHabit(db);
    await pumpApp(tester, onboardingComplete: true, database: db);

    await tester.tap(find.text('Not now'));
    await tester.pumpAndSettle();
    expect(find.text("Let's restart Walk gently"), findsNothing);
    expect(find.text('Goal: 30 minutes · Smaller: 5 minutes'), findsOneWidget);
  });

  testWidgets('Change schedule opens the habit editor', (tester) async {
    final db = inMemoryDatabase();
    await seedHabit(db);
    await pumpApp(tester, onboardingComplete: true, database: db);

    await tester.tap(find.text('Change schedule'));
    await tester.pumpAndSettle();
    expect(find.text('Edit habit'), findsOneWidget);
    await tester.pageBack();
    await tester.pumpAndSettle();
    expect(find.text("Let's restart Walk gently"), findsNothing);
  });

  testWidgets('checking in today ends Recovery Mode', (tester) async {
    final db = inMemoryDatabase();
    await seedHabit(db);
    await pumpApp(tester, onboardingComplete: true, database: db);

    await tester.tap(find.text('Small step'));
    await tester.pumpAndSettle();
    expect(find.text("Let's restart Walk gently"), findsNothing);
  });

  testWidgets('Progress shows small steps and comebacks, not streaks', (
    tester,
  ) async {
    final db = inMemoryDatabase();
    await seedHabit(
      db,
      daysAgo: 5,
      checkIns: {
        5: CheckInStatus.normal,
        2: CheckInStatus.smaller, // after missing days 4 and 3
        1: CheckInStatus.normal,
      },
    );
    await pumpApp(tester, onboardingComplete: true, database: db);
    await tester.tap(
      find.descendant(
        of: find.byType(NavigationBar),
        matching: find.text('Progress'),
      ),
    );
    await tester.pumpAndSettle();

    // Started 5 days ago; today is still open so it is not counted.
    expect(find.text('You showed up 3 of 5 planned times'), findsOneWidget);
    expect(
      find.text('You came back after a break once. That matters most.'),
      findsOneWidget,
    );
    expect(find.textContaining('streak'), findsNothing);
    await tester.scrollUntilVisible(find.text('3/5'), 200);
    expect(find.text('3/5'), findsOneWidget);
    await tester.scrollUntilVisible(find.text('Last 30 days'), -200);

    await tester.tap(find.text('Last 30 days'));
    await tester.pumpAndSettle();
    // Days before the habit started are not counted in the 30-day view.
    expect(find.text('You showed up 3 of 5 planned times'), findsOneWidget);
  });
}
