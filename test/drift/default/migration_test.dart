// dart format width=80
// ignore_for_file: unused_local_variable, unused_import
import 'package:drift/drift.dart';
import 'package:drift_dev/api/migrations_native.dart';
import 'package:habit_recovery/core/database/app_database.dart';
import 'package:flutter_test/flutter_test.dart';
import 'generated/schema.dart';

import 'generated/schema_v1.dart' as v1;
import 'generated/schema_v2.dart' as v2;

void main() {
  driftRuntimeOptions.dontWarnAboutMultipleDatabases = true;
  late SchemaVerifier verifier;

  setUpAll(() {
    verifier = SchemaVerifier(GeneratedHelper());
  });

  group('simple database migrations', () {
    // These simple tests verify all possible schema updates with a simple (no
    // data) migration. This is a quick way to ensure that written database
    // migrations properly alter the schema.
    const versions = GeneratedHelper.versions;
    for (final (i, fromVersion) in versions.indexed) {
      group('from $fromVersion', () {
        for (final toVersion in versions.skip(i + 1)) {
          test('to $toVersion', () async {
            final schema = await verifier.schemaAt(fromVersion);
            final db = AppDatabase(schema.newConnection());
            await verifier.migrateAndValidate(db, toVersion);
            await db.close();
          });
        }
      });
    }
  });

  // Users' habits and check-ins must survive every upgrade unchanged.
  test('migration from v1 to v2 does not corrupt data', () async {
    const createdAt = '2026-10-01T08:00:00.000';
    final oldHabitsData = <v1.HabitsData>[
      const v1.HabitsData(
        id: 1,
        name: 'Walk',
        normalTarget: '30 minutes',
        smallerTarget: '5 minutes',
        weekdayMask: 0x7F,
        reminderMinutes: 480,
        archived: 0,
        startDate: '2026-10-01',
        createdAt: createdAt,
      ),
    ];
    final expectedNewHabitsData = <v2.HabitsData>[
      const v2.HabitsData(
        id: 1,
        name: 'Walk',
        normalTarget: '30 minutes',
        smallerTarget: '5 minutes',
        weekdayMask: 0x7F,
        reminderMinutes: 480,
        archived: 0,
        startDate: '2026-10-01',
        createdAt: createdAt,
        focusSmaller: 0,
        recoveryHandledOn: null,
      ),
    ];

    final oldCheckInsData = <v1.CheckInsData>[
      const v1.CheckInsData(
        id: 1,
        habitId: 1,
        date: '2026-10-02',
        status: 2,
        updatedAt: createdAt,
      ),
    ];
    final expectedNewCheckInsData = <v2.CheckInsData>[
      const v2.CheckInsData(
        id: 1,
        habitId: 1,
        date: '2026-10-02',
        status: 2,
        updatedAt: createdAt,
      ),
    ];

    await verifier.testWithDataIntegrity(
      oldVersion: 1,
      newVersion: 2,
      createOld: v1.DatabaseAtV1.new,
      createNew: v2.DatabaseAtV2.new,
      openTestedDatabase: AppDatabase.new,
      createItems: (batch, oldDb) {
        batch.insertAll(oldDb.habits, oldHabitsData);
        batch.insertAll(oldDb.checkIns, oldCheckInsData);
      },
      validateItems: (newDb) async {
        expect(expectedNewHabitsData, await newDb.select(newDb.habits).get());
        expect(
          expectedNewCheckInsData,
          await newDb.select(newDb.checkIns).get(),
        );
      },
    );
  });
}
