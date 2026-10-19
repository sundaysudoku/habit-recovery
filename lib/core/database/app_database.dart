import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

@DataClassName('HabitRow')
class Habits extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get normalTarget => text()();
  TextColumn get smallerTarget => text()();

  /// See `WeekdaySchedule`: bit 0 = Monday ... bit 6 = Sunday.
  IntColumn get weekdayMask => integer()();

  /// Minutes after local midnight; null means no reminder.
  IntColumn get reminderMinutes => integer().nullable()();
  BoolColumn get archived => boolean().withDefault(const Constant(false))();

  /// Local calendar date `YYYY-MM-DD` from which the habit is scheduled.
  TextColumn get startDate => text()();
  DateTimeColumn get createdAt => dateTime()();
}

@DataClassName('CheckInRow')
@TableIndex(name: 'check_ins_date', columns: {#date})
class CheckIns extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get habitId =>
      integer().references(Habits, #id, onDelete: KeyAction.cascade)();

  /// Local calendar date `YYYY-MM-DD` the check-in belongs to.
  TextColumn get date => text()();

  /// `CheckInStatus.code`.
  IntColumn get status => integer()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  List<Set<Column>> get uniqueKeys => [
    {habitId, date},
  ];
}

@DriftDatabase(tables: [Habits, CheckIns])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) => m.createAll(),
    // Future schema changes go here, one step per version, e.g.
    // onUpgrade: stepByStep(from1To2: (m, schema) async { ... }),
    beforeOpen: (details) async {
      await customStatement('PRAGMA foreign_keys = ON');
    },
  );

  static QueryExecutor _openConnection() => driftDatabase(
    name: 'habit_recovery',
    web: DriftWebOptions(
      sqlite3Wasm: Uri.parse('sqlite3.wasm'),
      driftWorker: Uri.parse('drift_worker.js'),
    ),
  );
}
