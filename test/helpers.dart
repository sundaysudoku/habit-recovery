import 'package:drift/drift.dart' show DatabaseConnection;
import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:habit_recovery/app/app.dart';
import 'package:habit_recovery/core/ads/ads_providers.dart';
import 'package:habit_recovery/core/ads/ads_service.dart';
import 'package:habit_recovery/core/database/app_database.dart';
import 'package:habit_recovery/core/database/database_provider.dart';
import 'package:habit_recovery/core/preferences/app_preferences.dart';
import 'package:habit_recovery/core/notifications/reminder_scheduler.dart';
import 'package:habit_recovery/core/time/clock.dart';
import 'package:habit_recovery/features/reminders/data/reminder_providers.dart';
import 'package:habit_recovery/features/reminders/domain/reminder_plan.dart';
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

/// Records what the app asks the operating system to schedule.
class FakeReminderScheduler implements ReminderScheduler {
  FakeReminderScheduler({
    this.isSupported = true,
    this.permitted = true,
    this.grantOnRequest = true,
  });

  @override
  final bool isSupported;
  bool permitted;
  final bool grantOnRequest;
  int permissionRequests = 0;

  /// Every [replaceAll] call, with the text each reminder would show.
  final calls = <List<(ReminderRequest, ReminderText)>>[];

  List<(ReminderRequest, ReminderText)> get current =>
      calls.isEmpty ? const [] : calls.last;

  @override
  Future<bool> hasPermission() async => permitted;

  @override
  Future<bool> requestPermission() async {
    permissionRequests++;
    permitted = grantOnRequest;
    return permitted;
  }

  @override
  Future<void> replaceAll(
    List<ReminderRequest> reminders,
    ReminderText Function(ReminderRequest) textFor, {
    required String channelName,
    required String channelDescription,
  }) async {
    calls.add([for (final r in reminders) (r, textFor(r))]);
  }
}

/// Pumps the full app with in-memory preferences and database.
Future<AppDatabase> pumpApp(
  WidgetTester tester, {
  Locale locale = const Locale('en'),
  bool onboardingComplete = false,
  DateTime? now,
  AppDatabase? database,
  ReminderScheduler? scheduler,
  AdsService? ads,
  Map<String, Object> prefsValues = const {},
}) async {
  await initializeDateFormatting();
  SharedPreferences.setMockInitialValues({
    if (onboardingComplete) 'onboarding_complete': true,
    ...prefsValues,
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
        adsServiceProvider.overrideWithValue(ads ?? const NoAdsService()),
        reminderSchedulerProvider.overrideWithValue(
          scheduler ?? FakeReminderScheduler(),
        ),
      ],
      child: HabitRecoveryApp(locale: locale),
    ),
  );
  await tester.pumpAndSettle();
  return db;
}
