import 'package:flutter/foundation.dart';

/// A calendar day in the user's local time zone, with no time of day.
///
/// Check-ins and schedules are keyed by local calendar day so that time zone
/// changes and daylight-saving shifts never move a check-in to another day.
/// Arithmetic is done in UTC, where every day is exactly 24 hours long.
@immutable
class LocalDate implements Comparable<LocalDate> {
  const LocalDate(this.year, this.month, this.day);

  factory LocalDate.fromDateTime(DateTime dateTime) {
    final local = dateTime.toLocal();
    return LocalDate(local.year, local.month, local.day);
  }

  /// Parses `YYYY-MM-DD`.
  factory LocalDate.parse(String iso) {
    final parts = iso.split('-');
    if (parts.length != 3) throw FormatException('Invalid date', iso);
    return LocalDate(
      int.parse(parts[0]),
      int.parse(parts[1]),
      int.parse(parts[2]),
    );
  }

  final int year;
  final int month;
  final int day;

  DateTime get _utc => DateTime.utc(year, month, day);

  /// 1 = Monday ... 7 = Sunday, matching [DateTime.weekday].
  int get weekday => _utc.weekday;

  LocalDate addDays(int days) {
    final shifted = _utc.add(Duration(days: days));
    return LocalDate(shifted.year, shifted.month, shifted.day);
  }

  /// Whole days from this date to [other] (negative if [other] is earlier).
  int daysUntil(LocalDate other) => other._utc.difference(_utc).inDays;

  /// Midnight at the start of this day in local time, for display only.
  DateTime toLocalDateTime() => DateTime(year, month, day);

  String toIso() =>
      '${year.toString().padLeft(4, '0')}-'
      '${month.toString().padLeft(2, '0')}-'
      '${day.toString().padLeft(2, '0')}';

  bool isBefore(LocalDate other) => compareTo(other) < 0;
  bool isAfter(LocalDate other) => compareTo(other) > 0;

  @override
  int compareTo(LocalDate other) => _utc.compareTo(other._utc);

  @override
  bool operator ==(Object other) =>
      other is LocalDate &&
      other.year == year &&
      other.month == month &&
      other.day == day;

  @override
  int get hashCode => Object.hash(year, month, day);

  @override
  String toString() => toIso();
}
