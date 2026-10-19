import 'package:flutter_test/flutter_test.dart';
import 'package:habit_recovery/core/database/app_database.dart';
import 'package:habit_recovery/core/time/local_date.dart';
import 'package:habit_recovery/features/habits/data/habit_repository.dart';
import 'package:habit_recovery/features/habits/domain/habit.dart';
import 'package:habit_recovery/features/habits/domain/weekday_schedule.dart';
import 'package:habit_recovery/features/today/data/check_in_repository.dart';
import 'package:habit_recovery/features/today/domain/check_in_status.dart';

import '../../helpers.dart';

const _draft = HabitDraft(
  name: '  Walk ',
  normalTarget: '30 minutes',
  smallerTarget: '5 minutes',
  schedule: WeekdaySchedule.daily,
  reminderMinutes: 8 * 60,
);

void main() {
  late AppDatabase db;
  late DateTime now;
  late HabitRepository habits;
  late CheckInRepository checkIns;

  setUp(() {
    db = inMemoryDatabase();
    now = testNow;
    habits = HabitRepository(db, () => now);
    checkIns = CheckInRepository(db, () => now);
  });
  tearDown(() => db.close());

  Future<List<CheckInRow>> allCheckIns() => db.select(db.checkIns).get();

  test('create stores a trimmed habit starting today', () async {
    final id = await habits.create(_draft);
    final habit = (await habits.getHabit(id))!;
    expect(habit.name, 'Walk');
    expect(habit.reminderMinutes, 480);
    expect(habit.startDate, LocalDate.fromDateTime(testNow));
    expect(habit.archived, isFalse);
  });

  test('update changes fields and schedule', () async {
    final id = await habits.create(_draft);
    await habits.update(
      id,
      HabitDraft(
        name: 'Run',
        normalTarget: '5 km',
        smallerTarget: '1 km',
        schedule: WeekdaySchedule.fromWeekdays({DateTime.saturday}),
      ),
    );
    final habit = (await habits.getHabit(id))!;
    expect(habit.name, 'Run');
    expect(habit.schedule.weekdays, {DateTime.saturday});
    expect(habit.reminderMinutes, isNull);
  });

  test(
    'archive hides a habit from the active list and restore brings it back',
    () async {
      final id = await habits.create(_draft);
      await habits.setArchived(id, archived: true);
      expect(await habits.watchHabits(archived: false).first, isEmpty);
      expect(await habits.watchHabits(archived: true).first, hasLength(1));
      await habits.setArchived(id, archived: false);
      expect(await habits.watchHabits(archived: false).first, hasLength(1));
    },
  );

  test(
    'checking in twice keeps one check-in and applies the correction',
    () async {
      final id = await habits.create(_draft);
      await checkIns.setToday(id, CheckInStatus.notDone);
      await checkIns.setToday(id, CheckInStatus.smaller);

      final rows = await allCheckIns();
      expect(rows, hasLength(1));
      expect(rows.single.status, CheckInStatus.smaller.code);
      expect(rows.single.date, '2026-10-19');
      expect(await checkIns.watchForDate(const LocalDate(2026, 10, 19)).first, {
        id: CheckInStatus.smaller,
      });
    },
  );

  test('the database rejects a duplicate check-in for the same day', () async {
    final id = await habits.create(_draft);
    Future<int> insert() => db
        .into(db.checkIns)
        .insert(
          CheckInsCompanion.insert(
            habitId: id,
            date: '2026-10-19',
            status: CheckInStatus.normal.code,
            updatedAt: now,
          ),
        );
    await insert();
    await expectLater(insert(), throwsA(isA<Exception>()));
  });

  test('check-ins on different days are kept separately', () async {
    final id = await habits.create(_draft);
    await checkIns.setToday(id, CheckInStatus.normal);
    now = now.add(const Duration(days: 1));
    await checkIns.setToday(id, CheckInStatus.notDone);
    expect(await allCheckIns(), hasLength(2));
  });

  test('a check-in just before midnight belongs to that day', () async {
    final id = await habits.create(_draft);
    now = DateTime(2026, 10, 19, 23, 59, 59);
    await checkIns.setToday(id, CheckInStatus.normal);
    expect((await allCheckIns()).single.date, '2026-10-19');
  });

  test('clearToday removes only today\'s check-in', () async {
    final id = await habits.create(_draft);
    await checkIns.setToday(id, CheckInStatus.normal);
    now = now.add(const Duration(days: 1));
    await checkIns.setToday(id, CheckInStatus.normal);
    await checkIns.clearToday(id);
    final rows = await allCheckIns();
    expect(rows.map((r) => r.date), ['2026-10-19']);
  });

  test('deleting a habit deletes its check-ins', () async {
    final id = await habits.create(_draft);
    final other = await habits.create(_draft);
    await checkIns.setToday(id, CheckInStatus.normal);
    await checkIns.setToday(other, CheckInStatus.normal);
    await habits.delete(id);
    expect(await habits.getHabit(id), isNull);
    expect((await allCheckIns()).map((r) => r.habitId), [other]);
  });

  test('date-time values survive a round trip', () async {
    final id = await habits.create(_draft);
    final row = await (db.select(
      db.habits,
    )..where((h) => h.id.equals(id))).getSingle();
    expect(row.createdAt.isAtSameMomentAs(testNow), isTrue);
  });
}
