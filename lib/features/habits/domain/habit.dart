import 'package:flutter/foundation.dart';

import '../../../core/time/local_date.dart';
import 'weekday_schedule.dart';

@immutable
class Habit {
  const Habit({
    required this.id,
    required this.name,
    required this.normalTarget,
    required this.smallerTarget,
    required this.schedule,
    required this.reminderMinutes,
    required this.archived,
    required this.startDate,
    this.focusSmaller = false,
    this.recoveryHandledOn,
  });

  final int id;
  final String name;
  final String normalTarget;
  final String smallerTarget;
  final WeekdaySchedule schedule;

  /// Reminder time as minutes after local midnight, or null for no reminder.
  final int? reminderMinutes;
  final bool archived;

  /// First day the habit counts; earlier days are never scheduled.
  final LocalDate startDate;

  /// Whether the smaller target is the current goal (a recovery choice).
  final bool focusSmaller;

  /// Day of the last recovery choice; earlier misses are already handled.
  final LocalDate? recoveryHandledOn;

  bool isScheduledOn(LocalDate date) =>
      !date.isBefore(startDate) && schedule.isScheduledOn(date);
}

/// Values entered in the habit form, for both create and edit.
@immutable
class HabitDraft {
  const HabitDraft({
    required this.name,
    required this.normalTarget,
    required this.smallerTarget,
    required this.schedule,
    this.reminderMinutes,
    this.focusSmaller = false,
  });

  final String name;
  final String normalTarget;
  final String smallerTarget;
  final WeekdaySchedule schedule;
  final int? reminderMinutes;
  final bool focusSmaller;
}
