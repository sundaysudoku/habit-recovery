import 'package:flutter/foundation.dart';

import '../../../core/time/local_date.dart';
import '../../habits/domain/habit.dart';
import '../../today/domain/check_in_status.dart';

@immutable
class DayProgress {
  const DayProgress({
    required this.date,
    required this.scheduled,
    required this.normal,
    required this.smaller,
    required this.pending,
  });

  final LocalDate date;

  /// Scheduled occasions on this day across all habits.
  final int scheduled;
  final int normal;
  final int smaller;

  /// Today's occasions not recorded yet; they are not counted as missed.
  final int pending;

  int get missed => scheduled - normal - smaller - pending;
}

@immutable
class HabitProgress {
  const HabitProgress({
    required this.habit,
    required this.scheduled,
    required this.showedUp,
  });

  final Habit habit;

  /// Scheduled occasions so far, excluding today if not yet recorded.
  final int scheduled;
  final int showedUp;
}

@immutable
class ProgressSummary {
  const ProgressSummary({
    required this.days,
    required this.habits,
    required this.comebacks,
  });

  final List<DayProgress> days;
  final List<HabitProgress> habits;

  /// Times a habit was done right after a missed scheduled occasion.
  final int comebacks;

  int get normal => days.fold(0, (sum, d) => sum + d.normal);
  int get smaller => days.fold(0, (sum, d) => sum + d.smaller);
  int get showedUp => normal + smaller;
  int get counted => days.fold(0, (sum, d) => sum + d.scheduled - d.pending);
}

/// Summarises the [dayCount] days ending [today].
///
/// [checkIns] must cover the range plus [recoveryLookbackDays] before it, so
/// comebacks on the first days of the range can be recognised.
ProgressSummary computeProgress({
  required List<Habit> habits,
  required Map<int, Map<LocalDate, CheckInStatus>> checkIns,
  required LocalDate today,
  required int dayCount,
}) {
  final first = today.addDays(1 - dayCount);
  final days = <DayProgress>[];
  for (var i = 0; i < dayCount; i++) {
    final date = first.addDays(i);
    var scheduled = 0, normal = 0, smaller = 0, pending = 0;
    for (final habit in habits) {
      if (!habit.isScheduledOn(date)) continue;
      scheduled++;
      switch (checkIns[habit.id]?[date]) {
        case CheckInStatus.normal:
          normal++;
        case CheckInStatus.smaller:
          smaller++;
        case CheckInStatus.notDone:
          break;
        case null:
          if (date == today) pending++;
      }
    }
    days.add(
      DayProgress(
        date: date,
        scheduled: scheduled,
        normal: normal,
        smaller: smaller,
        pending: pending,
      ),
    );
  }

  var comebacks = 0;
  final perHabit = <HabitProgress>[];
  for (final habit in habits) {
    final history = checkIns[habit.id] ?? const {};
    var scheduled = 0, showedUp = 0;
    for (var i = 0; i < dayCount; i++) {
      final date = first.addDays(i);
      if (!habit.isScheduledOn(date)) continue;
      final status = history[date];
      if (status == null && date == today) continue;
      scheduled++;
      if (status?.showedUp ?? false) {
        showedUp++;
        if (_previousOccasionMissed(habit, history, date)) comebacks++;
      }
    }
    perHabit.add(
      HabitProgress(habit: habit, scheduled: scheduled, showedUp: showedUp),
    );
  }

  return ProgressSummary(days: days, habits: perHabit, comebacks: comebacks);
}

bool _previousOccasionMissed(
  Habit habit,
  Map<LocalDate, CheckInStatus> history,
  LocalDate date,
) {
  for (var i = 1; i <= 7; i++) {
    final day = date.addDays(-i);
    if (day.isBefore(habit.startDate)) return false;
    if (habit.isScheduledOn(day)) return !(history[day]?.showedUp ?? false);
  }
  return false;
}
