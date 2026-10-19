import 'package:flutter_test/flutter_test.dart';
import 'package:habit_recovery/core/time/local_date.dart';
import 'package:habit_recovery/features/habits/domain/habit.dart';
import 'package:habit_recovery/features/habits/domain/weekday_schedule.dart';
import 'package:habit_recovery/features/progress/domain/progress_stats.dart';
import 'package:habit_recovery/features/today/domain/check_in_status.dart';

const today = LocalDate(2026, 10, 19); // Monday

Habit habit(int id, {WeekdaySchedule schedule = WeekdaySchedule.daily}) =>
    Habit(
      id: id,
      name: 'Habit $id',
      normalTarget: 'a',
      smallerTarget: 'b',
      schedule: schedule,
      reminderMinutes: null,
      archived: false,
      startDate: const LocalDate(2026, 9, 1),
    );

LocalDate daysAgo(int n) => today.addDays(-n);

void main() {
  test('counts full goals, small steps and misses per day', () {
    final summary = computeProgress(
      habits: [habit(1), habit(2)],
      checkIns: {
        1: {daysAgo(1): CheckInStatus.normal, today: CheckInStatus.smaller},
        2: {daysAgo(1): CheckInStatus.notDone},
      },
      today: today,
      dayCount: 7,
    );
    expect(summary.days, hasLength(7));
    expect(summary.days.first.date, daysAgo(6));
    final yesterday = summary.days[5];
    expect(yesterday.scheduled, 2);
    expect(yesterday.normal, 1);
    expect(yesterday.missed, 1);
    final todayStats = summary.days.last;
    expect(todayStats.smaller, 1);
    expect(todayStats.pending, 1);
    expect(todayStats.missed, 0);
    expect(summary.normal, 1);
    expect(summary.smaller, 1);
    // 14 occasions minus today's one pending.
    expect(summary.counted, 13);
  });

  test('unscheduled days have nothing scheduled and nothing missed', () {
    final weekends = WeekdaySchedule.fromWeekdays({
      DateTime.saturday,
      DateTime.sunday,
    });
    final summary = computeProgress(
      habits: [habit(1, schedule: weekends)],
      checkIns: {},
      today: today,
      dayCount: 7,
    );
    final scheduled = summary.days.where((d) => d.scheduled > 0);
    expect(scheduled.map((d) => d.date.weekday), [
      DateTime.saturday,
      DateTime.sunday,
    ]);
    expect(summary.days.fold(0, (sum, d) => sum + d.missed), 2);
  });

  test('showing up after a miss counts as a comeback', () {
    final summary = computeProgress(
      habits: [habit(1)],
      checkIns: {
        1: {
          daysAgo(7): CheckInStatus.normal,
          daysAgo(6): CheckInStatus.normal,
          daysAgo(5): CheckInStatus.normal,
          // daysAgo(4) and daysAgo(3) missed
          daysAgo(2): CheckInStatus.smaller, // comeback
          daysAgo(1): CheckInStatus.normal,
          today: CheckInStatus.normal,
        },
      },
      today: today,
      dayCount: 7,
    );
    expect(summary.comebacks, 1);
    expect(summary.habits.single.showedUp, 5);
    expect(summary.habits.single.scheduled, 7);
  });

  test('a comeback on the first day of the range looks before the range', () {
    final summary = computeProgress(
      habits: [habit(1)],
      checkIns: {
        1: {daysAgo(6): CheckInStatus.normal}, // daysAgo(7) missed
      },
      today: today,
      dayCount: 7,
    );
    expect(summary.comebacks, 1);
  });

  test('30-day view covers 30 days ending today', () {
    final summary = computeProgress(
      habits: [habit(1)],
      checkIns: {},
      today: today,
      dayCount: 30,
    );
    expect(summary.days, hasLength(30));
    expect(summary.days.first.date, daysAgo(29));
    expect(summary.days.last.date, today);
  });
}
