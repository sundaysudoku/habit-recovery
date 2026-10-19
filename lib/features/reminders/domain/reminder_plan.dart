import 'package:flutter/foundation.dart';

import '../../habits/domain/habit.dart';

/// One repeating reminder: daily when [weekday] is null, otherwise weekly on
/// that weekday (1 = Monday ... 7 = Sunday), at [hour]:[minute] local time.
@immutable
class ReminderRequest {
  const ReminderRequest({
    required this.id,
    required this.habit,
    required this.hour,
    required this.minute,
    this.weekday,
  });

  /// Stable notification id: habit id * 10, plus the weekday when weekly.
  final int id;
  final Habit habit;
  final int hour;
  final int minute;
  final int? weekday;

  @override
  bool operator ==(Object other) =>
      other is ReminderRequest &&
      other.id == id &&
      other.habit.id == habit.id &&
      other.hour == hour &&
      other.minute == minute &&
      other.weekday == weekday;

  @override
  int get hashCode => Object.hash(id, habit.id, hour, minute, weekday);

  @override
  String toString() =>
      'ReminderRequest($id, ${habit.name}, $weekday, '
      '$hour:$minute)';
}

/// The reminders that should exist for [habits]. Archived habits, habits
/// without a reminder time and everything when [enabled] is false produce
/// none. Weekday schedules only remind on scheduled days.
List<ReminderRequest> planReminders(
  List<Habit> habits, {
  required bool enabled,
}) {
  if (!enabled) return const [];
  return [
    for (final habit in habits)
      if (!habit.archived && habit.reminderMinutes != null)
        if (habit.schedule.isDaily)
          ReminderRequest(
            id: habit.id * 10,
            habit: habit,
            hour: habit.reminderMinutes! ~/ 60,
            minute: habit.reminderMinutes! % 60,
          )
        else
          for (final weekday in habit.schedule.weekdays)
            ReminderRequest(
              id: habit.id * 10 + weekday,
              habit: habit,
              hour: habit.reminderMinutes! ~/ 60,
              minute: habit.reminderMinutes! % 60,
              weekday: weekday,
            ),
  ];
}
