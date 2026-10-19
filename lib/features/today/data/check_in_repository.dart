import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../../../core/database/database_provider.dart';
import '../../../core/time/clock.dart';
import '../../../core/time/local_date.dart';
import '../domain/check_in_status.dart';

/// Check-in status by habit id, then by day.
typedef CheckInHistory = Map<int, Map<LocalDate, CheckInStatus>>;

final checkInRepositoryProvider = Provider<CheckInRepository>(
  (ref) => CheckInRepository(
    ref.watch(databaseProvider),
    () => ref.read(clockProvider)(),
  ),
);

class CheckInRepository {
  CheckInRepository(this._db, this._now);

  final AppDatabase _db;
  final DateTime Function() _now;

  LocalDate get _today => LocalDate.fromDateTime(_now());

  /// Check-in status per habit id for [date].
  Stream<Map<int, CheckInStatus>> watchForDate(LocalDate date) {
    final query = _db.select(_db.checkIns)
      ..where((c) => c.date.equals(date.toIso()));
    return query.watch().map(
      (rows) => {
        for (final row in rows) row.habitId: CheckInStatus.fromCode(row.status),
      },
    );
  }

  /// Check-ins from [from] to [to] inclusive, as habit id -> date -> status.
  Stream<CheckInHistory> watchRange(LocalDate from, LocalDate to) {
    final query = _db.select(_db.checkIns)
      ..where((c) => c.date.isBetweenValues(from.toIso(), to.toIso()));
    return query.watch().map((rows) {
      final history = <int, Map<LocalDate, CheckInStatus>>{};
      for (final row in rows) {
        (history[row.habitId] ??= {})[LocalDate.parse(row.date)] =
            CheckInStatus.fromCode(row.status);
      }
      return history;
    });
  }

  /// Records or corrects today's check-in. There is at most one check-in per
  /// habit per day, enforced by a unique key on (habit, date).
  Future<void> setToday(int habitId, CheckInStatus status) {
    return _db
        .into(_db.checkIns)
        .insert(
          CheckInsCompanion.insert(
            habitId: habitId,
            date: _today.toIso(),
            status: status.code,
            updatedAt: _now(),
          ),
          onConflict: DoUpdate(
            (_) => CheckInsCompanion(
              status: Value(status.code),
              updatedAt: Value(_now()),
            ),
            target: [_db.checkIns.habitId, _db.checkIns.date],
          ),
        );
  }

  /// Removes today's check-in so the habit is unrecorded again.
  Future<void> clearToday(int habitId) =>
      (_db.delete(_db.checkIns)..where(
            (c) => c.habitId.equals(habitId) & c.date.equals(_today.toIso()),
          ))
          .go();
}
