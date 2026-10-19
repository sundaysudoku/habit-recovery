import 'package:flutter/foundation.dart';

import '../../../core/time/local_date.dart';

/// The weekdays a habit is scheduled on, stored as a 7-bit mask
/// (bit 0 = Monday ... bit 6 = Sunday).
@immutable
class WeekdaySchedule {
  const WeekdaySchedule(this.mask)
    : assert(mask > 0 && mask <= allDaysMask, 'At least one day is required');

  factory WeekdaySchedule.fromWeekdays(Iterable<int> weekdays) {
    var mask = 0;
    for (final weekday in weekdays) {
      assert(weekday >= DateTime.monday && weekday <= DateTime.sunday);
      mask |= 1 << (weekday - 1);
    }
    return WeekdaySchedule(mask);
  }

  static const allDaysMask = 0x7F;
  static const daily = WeekdaySchedule(allDaysMask);

  final int mask;

  bool get isDaily => mask == allDaysMask;

  /// Weekdays in this schedule, 1 = Monday ... 7 = Sunday.
  Set<int> get weekdays => {
    for (var d = DateTime.monday; d <= DateTime.sunday; d++)
      if (includes(d)) d,
  };

  bool includes(int weekday) => mask & (1 << (weekday - 1)) != 0;

  bool isScheduledOn(LocalDate date) => includes(date.weekday);

  @override
  bool operator ==(Object other) =>
      other is WeekdaySchedule && other.mask == mask;

  @override
  int get hashCode => mask.hashCode;
}
