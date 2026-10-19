import 'package:flutter_test/flutter_test.dart';
import 'package:habit_recovery/core/time/local_date.dart';
import 'package:habit_recovery/features/habits/domain/habit.dart';
import 'package:habit_recovery/features/habits/domain/weekday_schedule.dart';
import 'package:habit_recovery/features/recovery/domain/recovery.dart';
import 'package:habit_recovery/features/today/domain/check_in_status.dart';

// Monday 2026-10-19.
const today = LocalDate(2026, 10, 19);

Habit habit({
  WeekdaySchedule schedule = WeekdaySchedule.daily,
  LocalDate start = const LocalDate(2026, 10, 1),
  LocalDate? handledOn,
}) => Habit(
  id: 1,
  name: 'Walk',
  normalTarget: '30 min',
  smallerTarget: '5 min',
  schedule: schedule,
  reminderMinutes: null,
  archived: false,
  startDate: start,
  recoveryHandledOn: handledOn,
);

LocalDate daysAgo(int n) => today.addDays(-n);

void main() {
  test('two missed scheduled days in a row start Recovery Mode', () {
    expect(
      needsRecovery(habit(), {daysAgo(3): CheckInStatus.normal}, today),
      isTrue,
    );
  });

  test('one missed day is not enough', () {
    expect(
      needsRecovery(habit(), {daysAgo(2): CheckInStatus.normal}, today),
      isFalse,
    );
  });

  test('"not today" check-ins count as missed', () {
    expect(
      needsRecovery(habit(), {
        daysAgo(1): CheckInStatus.notDone,
        daysAgo(2): CheckInStatus.notDone,
      }, today),
      isTrue,
    );
  });

  test('a smaller-target day is not a miss', () {
    expect(
      needsRecovery(habit(), {
        daysAgo(1): CheckInStatus.notDone,
        daysAgo(2): CheckInStatus.smaller,
      }, today),
      isFalse,
    );
  });

  test('days without a schedule never count as missed', () {
    // Monday and Friday only. Friday 16th done, then Sat/Sun unscheduled.
    final mondayFriday = WeekdaySchedule.fromWeekdays({
      DateTime.monday,
      DateTime.friday,
    });
    expect(
      needsRecovery(habit(schedule: mondayFriday), {
        const LocalDate(2026, 10, 16): CheckInStatus.normal,
      }, today),
      isFalse,
    );
    // Missed Monday 12th and Friday 16th: the weekend between does not matter.
    expect(
      needsRecovery(habit(schedule: mondayFriday), {
        const LocalDate(2026, 10, 9): CheckInStatus.normal,
      }, today),
      isTrue,
    );
  });

  test('a weekly habit needs two missed weeks', () {
    // Missed Oct 5 and Oct 12, versus only Oct 12.
    final mondays = WeekdaySchedule.fromWeekdays({DateTime.monday});
    expect(
      needsRecovery(habit(schedule: mondays), {
        const LocalDate(2026, 9, 28): CheckInStatus.normal,
      }, today),
      isTrue,
    );
    expect(
      needsRecovery(habit(schedule: mondays), {
        const LocalDate(2026, 10, 5): CheckInStatus.normal,
      }, today),
      isFalse,
    );
  });

  test('today is never counted as missed', () {
    // Started yesterday, missed yesterday, today still open.
    expect(needsRecovery(habit(start: daysAgo(1)), {}, today), isFalse);
  });

  test('days before the habit started are not missed', () {
    expect(needsRecovery(habit(start: today), {}, today), isFalse);
  });

  test('showing up today ends Recovery Mode', () {
    expect(
      needsRecovery(habit(), {today: CheckInStatus.smaller}, today),
      isFalse,
    );
  });

  test('a recovery choice clears earlier misses', () {
    expect(needsRecovery(habit(handledOn: daysAgo(1)), {}, today), isFalse);
    // Two new misses after the choice offer recovery again.
    expect(needsRecovery(habit(handledOn: daysAgo(2)), {}, today), isTrue);
  });
}
