import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../../../core/database/database_provider.dart';
import '../../../core/time/clock.dart';
import '../../../core/time/local_date.dart';
import '../domain/habit.dart';
import '../domain/weekday_schedule.dart';

final habitRepositoryProvider = Provider<HabitRepository>(
  (ref) => HabitRepository(
    ref.watch(databaseProvider),
    () => ref.read(clockProvider)(),
  ),
);

final activeHabitsProvider = StreamProvider<List<Habit>>(
  (ref) => ref.watch(habitRepositoryProvider).watchHabits(archived: false),
);

final archivedHabitsProvider = StreamProvider<List<Habit>>(
  (ref) => ref.watch(habitRepositoryProvider).watchHabits(archived: true),
);

class HabitRepository {
  HabitRepository(this._db, this._now);

  final AppDatabase _db;
  final DateTime Function() _now;

  Stream<List<Habit>> watchHabits({required bool archived}) {
    final query = _db.select(_db.habits)
      ..where((h) => h.archived.equals(archived))
      ..orderBy([(h) => OrderingTerm.asc(h.id)]);
    return query.watch().map((rows) => rows.map(_toHabit).toList());
  }

  Future<Habit?> getHabit(int id) async {
    final row = await (_db.select(
      _db.habits,
    )..where((h) => h.id.equals(id))).getSingleOrNull();
    return row == null ? null : _toHabit(row);
  }

  Future<int> create(HabitDraft draft) {
    final now = _now();
    return _db
        .into(_db.habits)
        .insert(
          HabitsCompanion.insert(
            name: draft.name.trim(),
            normalTarget: draft.normalTarget.trim(),
            smallerTarget: draft.smallerTarget.trim(),
            weekdayMask: draft.schedule.mask,
            reminderMinutes: Value(draft.reminderMinutes),
            startDate: LocalDate.fromDateTime(now).toIso(),
            createdAt: now,
          ),
        );
  }

  Future<void> update(int id, HabitDraft draft) =>
      (_db.update(_db.habits)..where((h) => h.id.equals(id))).write(
        HabitsCompanion(
          name: Value(draft.name.trim()),
          normalTarget: Value(draft.normalTarget.trim()),
          smallerTarget: Value(draft.smallerTarget.trim()),
          weekdayMask: Value(draft.schedule.mask),
          reminderMinutes: Value(draft.reminderMinutes),
        ),
      );

  Future<void> setArchived(int id, {required bool archived}) =>
      (_db.update(_db.habits)..where((h) => h.id.equals(id))).write(
        HabitsCompanion(archived: Value(archived)),
      );

  /// Deletes the habit and, through the foreign key, all its check-ins.
  Future<void> delete(int id) =>
      (_db.delete(_db.habits)..where((h) => h.id.equals(id))).go();

  static Habit _toHabit(HabitRow row) => Habit(
    id: row.id,
    name: row.name,
    normalTarget: row.normalTarget,
    smallerTarget: row.smallerTarget,
    schedule: WeekdaySchedule(row.weekdayMask),
    reminderMinutes: row.reminderMinutes,
    archived: row.archived,
    startDate: LocalDate.parse(row.startDate),
  );
}
