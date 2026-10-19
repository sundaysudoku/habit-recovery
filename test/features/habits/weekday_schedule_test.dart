import 'package:flutter_test/flutter_test.dart';
import 'package:habit_recovery/core/time/local_date.dart';
import 'package:habit_recovery/features/habits/domain/habit.dart';
import 'package:habit_recovery/features/habits/domain/weekday_schedule.dart';

void main() {
  const monday = LocalDate(2026, 10, 19);

  test('daily schedule includes every day', () {
    for (var i = 0; i < 7; i++) {
      expect(WeekdaySchedule.daily.isScheduledOn(monday.addDays(i)), isTrue);
    }
    expect(WeekdaySchedule.daily.isDaily, isTrue);
  });

  test('selected weekdays round-trip through the mask', () {
    final schedule = WeekdaySchedule.fromWeekdays({
      DateTime.monday,
      DateTime.wednesday,
      DateTime.sunday,
    });
    expect(schedule.weekdays, {1, 3, 7});
    expect(WeekdaySchedule(schedule.mask), schedule);
    expect(schedule.isDaily, isFalse);
    expect(schedule.isScheduledOn(monday), isTrue);
    expect(schedule.isScheduledOn(monday.addDays(1)), isFalse);
    expect(schedule.isScheduledOn(monday.addDays(6)), isTrue);
  });

  test('a habit is never scheduled before its start date', () {
    const habit = Habit(
      id: 1,
      name: 'Walk',
      normalTarget: '30 min',
      smallerTarget: '5 min',
      schedule: WeekdaySchedule.daily,
      reminderMinutes: null,
      archived: false,
      startDate: monday,
    );
    expect(habit.isScheduledOn(monday.addDays(-1)), isFalse);
    expect(habit.isScheduledOn(monday), isTrue);
  });
}
