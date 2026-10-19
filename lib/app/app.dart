import 'package:flutter/material.dart';

import '../features/today/presentation/today_screen.dart';
import '../l10n/app_localizations.dart';
import 'theme.dart';

class HabitRecoveryApp extends StatelessWidget {
  const HabitRecoveryApp({super.key, this.locale});

  /// Forces a locale (used by tests); null follows the device language.
  final Locale? locale;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(),
      locale: locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const TodayScreen(),
    );
  }
}
