import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/preferences/app_preferences.dart';
import '../features/onboarding/presentation/onboarding_screen.dart';
import '../l10n/app_localizations.dart';
import 'home_shell.dart';
import 'theme.dart';

class HabitRecoveryApp extends ConsumerWidget {
  const HabitRecoveryApp({super.key, this.locale});

  /// Forces a locale (used by tests); null follows the device language.
  final Locale? locale;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboardingComplete = ref.watch(onboardingCompleteProvider);
    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(),
      locale: locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: onboardingComplete ? const HomeShell() : const OnboardingScreen(),
    );
  }
}
