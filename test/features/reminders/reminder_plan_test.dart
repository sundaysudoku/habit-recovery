import 'package:flutter_test/flutter_test.dart';
import 'package:habit_recovery/core/notifications/reminder_scheduler.dart';
import 'package:habit_recovery/core/time/local_date.dart';
import 'package:habit_recovery/features/habits/domain/habit.dart';
import 'package:habit_recovery/features/habits/domain/weekday_schedule.dart';
import 'package:habit_recovery/features/reminders/domain/reminder_plan.dart';
import 'package:timezone/data/latest_all.dart' as tz_data;
import 'package:timezone/timezone.dart' as tz;

Habit habit({
  int id = 1,
  WeekdaySchedule schedule = WeekdaySchedule.daily,
  int? reminderMinutes = 8 * 60 + 30,
  bool archived = false,
}) => Habit(
  id: id,
  name: 'Walk',
  normalTarget: '30 min',
  smallerTarget: '5 min',
  schedule: schedule,
  reminderMinutes: reminderMinutes,
  archived: archived,
  startDate: const LocalDate(2026, 10, 1),
);

void main() {
  group('planReminders', () {
    test('a daily habit gets one daily reminder', () {
      final plan = planReminders([habit(id: 3)], enabled: true);
      expect(plan, hasLength(1));
      expect(plan.single.id, 30);
      expect(plan.single.weekday, isNull);
      expect((plan.single.hour, plan.single.minute), (8, 30));
    });

    test('a weekday habit only reminds on its scheduled days', () {
      final plan = planReminders([
        habit(
          id: 2,
          schedule: WeekdaySchedule.fromWeekdays({
            DateTime.monday,
            DateTime.thursday,
          }),
        ),
      ], enabled: true);
      expect(plan.map((r) => (r.id, r.weekday)), [(21, 1), (24, 4)]);
    });

    test('no reminders without a time, when archived or when turned off', () {
      expect(
        planReminders([habit(reminderMinutes: null)], enabled: true),
        isEmpty,
      );
      expect(planReminders([habit(archived: true)], enabled: true), isEmpty);
      expect(planReminders([habit()], enabled: false), isEmpty);
    });
  });

  group('nextOccurrence', () {
    late tz.Location newYork;

    setUpAll(() {
      tz_data.initializeTimeZones();
      newYork = tz.getLocation('America/New_York');
    });

    ReminderRequest at(int hour, int minute, {int? weekday}) => ReminderRequest(
      id: 10,
      habit: habit(),
      hour: hour,
      minute: minute,
      weekday: weekday,
    );

    test('later today when the time has not passed', () {
      final now = tz.TZDateTime(newYork, 2026, 10, 19, 7);
      final next = nextOccurrence(now, at(8, 30));
      expect((next.day, next.hour, next.minute), (19, 8, 30));
    });

    test('tomorrow when the time has passed', () {
      final now = tz.TZDateTime(newYork, 2026, 10, 19, 9);
      final next = nextOccurrence(now, at(8, 30));
      expect((next.day, next.hour, next.minute), (20, 8, 30));
    });

    test('keeps the wall-clock time across daylight-saving changes', () {
      // Spring forward on 2026-03-08 and fall back on 2026-11-01.
      final beforeSpring = tz.TZDateTime(newYork, 2026, 3, 7, 9);
      final spring = nextOccurrence(beforeSpring, at(8, 30));
      expect((spring.day, spring.hour, spring.minute), (8, 8, 30));
      expect(spring.timeZoneOffset, const Duration(hours: -4));

      final beforeFall = tz.TZDateTime(newYork, 2026, 10, 31, 9);
      final fall = nextOccurrence(beforeFall, at(8, 30));
      expect((fall.day, fall.hour, fall.minute), (1, 8, 30));
      expect(fall.timeZoneOffset, const Duration(hours: -5));
    });

    test('weekly reminders land on their weekday', () {
      final monday = tz.TZDateTime(newYork, 2026, 10, 19, 9);
      final next = nextOccurrence(monday, at(8, 30, weekday: DateTime.monday));
      expect(next.weekday, DateTime.monday);
      expect(next.day, 26);
      final friday = nextOccurrence(
        monday,
        at(8, 30, weekday: DateTime.friday),
      );
      expect((friday.weekday, friday.day), (DateTime.friday, 23));
    });
  });
}
