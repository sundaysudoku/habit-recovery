import '../../../core/time/local_date.dart';
import '../../habits/domain/habit.dart';
import '../../today/domain/check_in_status.dart';

/// Consecutive missed scheduled occasions that start Recovery Mode.
const recoveryMissThreshold = 2;

/// How far back check-ins must be loaded to evaluate [needsRecovery]:
/// two weekly occasions span at most 14 days.
const recoveryLookbackDays = 7 * recoveryMissThreshold;

/// Whether [habit] should gently offer recovery options today.
///
/// Only days the habit was scheduled on are considered, so unscheduled days
/// never count as missed. A scheduled day counts as missed when it has no
/// check-in or a "not today" check-in. Today never counts as missed because
/// it is not over yet, and showing up today ends Recovery Mode.
bool needsRecovery(
  Habit habit,
  Map<LocalDate, CheckInStatus> checkIns,
  LocalDate today,
) {
  if (checkIns[today]?.showedUp ?? false) return false;

  final handled = habit.recoveryHandledOn;
  final earliest = handled != null && handled.isAfter(habit.startDate)
      ? handled
      : habit.startDate;

  var misses = 0;
  for (
    var day = today.addDays(-1);
    !day.isBefore(earliest);
    day = day.addDays(-1)
  ) {
    if (!habit.isScheduledOn(day)) continue;
    if (checkIns[day]?.showedUp ?? false) return false;
    misses++;
    if (misses >= recoveryMissThreshold) return true;
  }
  return false;
}
