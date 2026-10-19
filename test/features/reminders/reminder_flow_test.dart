import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:habit_recovery/features/habits/data/habit_repository.dart';
import 'package:habit_recovery/features/habits/domain/habit.dart';
import 'package:habit_recovery/features/habits/domain/weekday_schedule.dart';

import '../../helpers.dart';

const _walk = HabitDraft(
  name: 'Walk',
  normalTarget: '30 minutes',
  smallerTarget: '5 minutes',
  schedule: WeekdaySchedule.daily,
  reminderMinutes: 8 * 60,
);

Future<void> _openSettings(WidgetTester tester) async {
  await tester.tap(
    find.descendant(
      of: find.byType(NavigationBar),
      matching: find.text('Settings'),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('habits with a reminder time are scheduled with gentle text', (
    tester,
  ) async {
    final db = inMemoryDatabase();
    await HabitRepository(db, () => testNow).create(_walk);
    final scheduler = FakeReminderScheduler();
    await pumpApp(
      tester,
      onboardingComplete: true,
      database: db,
      scheduler: scheduler,
    );

    final (reminder, text) = scheduler.current.single;
    expect((reminder.hour, reminder.minute, reminder.weekday), (8, 0, null));
    expect(text.title, 'Walk');
    expect(text.body, 'A good time for 30 minutes. Even 5 minutes counts.');
  });

  testWidgets('reminder text follows the app language', (tester) async {
    final db = inMemoryDatabase();
    await HabitRepository(db, () => testNow).create(_walk);
    final scheduler = FakeReminderScheduler();
    await pumpApp(
      tester,
      locale: const Locale('vi'),
      onboardingComplete: true,
      database: db,
      scheduler: scheduler,
    );
    expect(
      scheduler.current.single.$2.body,
      'Đến giờ cho 30 minutes rồi. 5 minutes thôi cũng được tính.',
    );
  });

  testWidgets('turning reminders off in Settings cancels them all', (
    tester,
  ) async {
    final db = inMemoryDatabase();
    await HabitRepository(db, () => testNow).create(_walk);
    final scheduler = FakeReminderScheduler();
    await pumpApp(
      tester,
      onboardingComplete: true,
      database: db,
      scheduler: scheduler,
    );
    expect(scheduler.current, hasLength(1));

    await _openSettings(tester);
    await tester.tap(find.byType(Switch));
    await tester.pumpAndSettle();
    expect(scheduler.current, isEmpty);

    await tester.tap(find.byType(Switch));
    await tester.pumpAndSettle();
    expect(scheduler.current, hasLength(1));
  });

  testWidgets('a refused permission is explained and the app keeps working', (
    tester,
  ) async {
    final scheduler = FakeReminderScheduler(
      permitted: false,
      grantOnRequest: false,
    );
    await pumpApp(
      tester,
      onboardingComplete: true,
      scheduler: scheduler,
      prefsValues: {'reminders_enabled': false},
    );
    await _openSettings(tester);

    await tester.tap(find.byType(Switch));
    await tester.pumpAndSettle();
    expect(scheduler.permissionRequests, 1);
    expect(find.text('Notifications are off'), findsOneWidget);
    await tester.tap(find.text('OK'));
    await tester.pumpAndSettle();

    expect(
      find.textContaining('Notifications are turned off for this app'),
      findsOneWidget,
    );
    // The rest of the app still works.
    await tester.tap(
      find.descendant(
        of: find.byType(NavigationBar),
        matching: find.text('Today'),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Add a habit to start. Small is fine.'), findsOneWidget);
  });

  testWidgets('the browser preview explains reminders need Android', (
    tester,
  ) async {
    await pumpApp(
      tester,
      onboardingComplete: true,
      scheduler: FakeReminderScheduler(isSupported: false),
    );
    await _openSettings(tester);
    expect(
      find.textContaining('Reminders work in the Android app'),
      findsOneWidget,
    );
    expect(tester.widget<Switch>(find.byType(Switch)).onChanged, isNull);
  });
}
