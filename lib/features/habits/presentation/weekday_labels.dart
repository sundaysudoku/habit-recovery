import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../l10n/app_localizations.dart';
import '../domain/weekday_schedule.dart';

/// Weekdays (1 = Monday ... 7 = Sunday) starting from the locale's first day.
List<int> orderedWeekdays(BuildContext context) {
  // firstDayOfWeekIndex: 0 = Sunday, 1 = Monday, ...
  final first = MaterialLocalizations.of(context).firstDayOfWeekIndex;
  final firstWeekday = first == 0 ? DateTime.sunday : first;
  return [for (var i = 0; i < 7; i++) (firstWeekday - 1 + i) % 7 + 1];
}

/// Short localized weekday name, e.g. "Mon" or "T2".
String shortWeekdayName(BuildContext context, int weekday) {
  final locale = Localizations.localeOf(context).toLanguageTag();
  // 2024-01-01 was a Monday.
  return DateFormat.E(locale).format(DateTime(2024, 1, weekday));
}

String scheduleSummary(BuildContext context, WeekdaySchedule schedule) {
  if (schedule.isDaily) return AppLocalizations.of(context).scheduleDaily;
  return [
    for (final d in orderedWeekdays(context))
      if (schedule.includes(d)) shortWeekdayName(context, d),
  ].join(', ');
}
