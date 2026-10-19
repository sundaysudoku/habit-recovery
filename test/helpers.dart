import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:habit_recovery/app/app.dart';
import 'package:habit_recovery/core/preferences/app_preferences.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Pumps the full app with in-memory preferences.
Future<SharedPreferences> pumpApp(
  WidgetTester tester, {
  Locale locale = const Locale('en'),
  bool onboardingComplete = false,
}) async {
  await initializeDateFormatting();
  SharedPreferences.setMockInitialValues({
    if (onboardingComplete) 'onboarding_complete': true,
  });
  final prefs = await SharedPreferences.getInstance();
  await tester.pumpWidget(
    ProviderScope(
      overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
      child: HabitRecoveryApp(locale: locale),
    ),
  );
  await tester.pumpAndSettle();
  return prefs;
}
