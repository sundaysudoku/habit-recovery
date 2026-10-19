import 'package:flutter_test/flutter_test.dart';
import 'package:habit_recovery/core/time/local_date.dart';

void main() {
  test('parses and formats ISO dates', () {
    expect(LocalDate.parse('2026-03-08'), const LocalDate(2026, 3, 8));
    expect(const LocalDate(2026, 3, 8).toIso(), '2026-03-08');
  });

  test('adds days across month, year and leap day', () {
    expect(
      const LocalDate(2026, 1, 31).addDays(1),
      const LocalDate(2026, 2, 1),
    );
    expect(
      const LocalDate(2026, 12, 31).addDays(1),
      const LocalDate(2027, 1, 1),
    );
    expect(
      const LocalDate(2028, 2, 28).addDays(1),
      const LocalDate(2028, 2, 29),
    );
    expect(
      const LocalDate(2026, 3, 1).addDays(-1),
      const LocalDate(2026, 2, 28),
    );
  });

  test('days across daylight-saving changes are whole days', () {
    // US and EU DST transitions in 2026.
    for (final date in const [
      LocalDate(2026, 3, 8),
      LocalDate(2026, 3, 29),
      LocalDate(2026, 10, 25),
      LocalDate(2026, 11, 1),
    ]) {
      expect(date.addDays(1).daysUntil(date), -1);
      expect(date.daysUntil(date.addDays(1)), 1);
      expect(date.addDays(1).day, date.day + 1);
    }
  });

  test('fromDateTime uses the local calendar day', () {
    final lateEvening = DateTime(2026, 10, 19, 23, 59);
    expect(LocalDate.fromDateTime(lateEvening), const LocalDate(2026, 10, 19));
    final earlyMorning = DateTime(2026, 10, 20, 0, 1);
    expect(LocalDate.fromDateTime(earlyMorning), const LocalDate(2026, 10, 20));
  });

  test('a UTC instant is converted to the local day first', () {
    final instant = DateTime.utc(2026, 10, 19, 12);
    expect(
      LocalDate.fromDateTime(instant),
      LocalDate.fromDateTime(instant.toLocal()),
    );
  });

  test('weekday matches DateTime (1 = Monday)', () {
    expect(const LocalDate(2026, 10, 19).weekday, DateTime.monday);
    expect(const LocalDate(2026, 10, 25).weekday, DateTime.sunday);
  });
}
