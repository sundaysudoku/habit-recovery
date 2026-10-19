import 'package:drift/drift.dart' show DatabaseConnection;
import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:habit_recovery/app/app.dart';
import 'package:habit_recovery/core/database/app_database.dart';
import 'package:habit_recovery/core/database/database_provider.dart';
import 'package:habit_recovery/core/preferences/app_preferences.dart';
import 'package:habit_recovery/core/time/clock.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A Monday, used as "now" in tests unless overridden.
final testNow = DateTime(2026, 10, 19, 9, 30);

AppDatabase inMemoryDatabase() => AppDatabase(
  DatabaseConnection(
    NativeDatabase.memory(
      setup: (db) => db.execute('PRAGMA foreign_keys = ON'),
    ),
    // Avoids pending zero-duration timers when widget tests end.
    closeStreamsSynchronously: true,
  ),
);

/// Pumps the full app with in-memory preferences and database.
Future<AppDatabase> pumpApp(
  WidgetTester tester, {
  Locale locale = const Locale('en'),
  bool onboardingComplete = false,
  DateTime? now,
  AppDatabase? database,
}) async {
  await initializeDateFormatting();
  SharedPreferences.setMockInitialValues({
    if (onboardingComplete) 'onboarding_complete': true,
  });
  final prefs = await SharedPreferences.getInstance();
  final db = database ?? inMemoryDatabase();
  addTearDown(db.close);
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
        databaseProvider.overrideWithValue(db),
        clockProvider.overrideWithValue(() => now ?? testNow),
      ],
      child: HabitRecoveryApp(locale: locale),
    ),
  );
  await tester.pumpAndSettle();
  return db;
}
