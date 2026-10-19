// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => 'Build habits gently';

  @override
  String get onboardingBody1 =>
      'Pick a few habits that matter to you. Doing a smaller version still counts.';

  @override
  String get onboardingTitle2 => 'Missed a few days? Start again';

  @override
  String get onboardingBody2 =>
      'There is no punishment here. When you miss a few days, we help you restart with a smaller step.';

  @override
  String get onboardingTitle3 => 'Your data stays on your phone';

  @override
  String get onboardingBody3 =>
      'No account needed. Everything is stored only on this device and works offline.';

  @override
  String get onboardingSkip => 'Skip';

  @override
  String get onboardingNext => 'Next';

  @override
  String get onboardingStart => 'Get started';

  @override
  String onboardingPageIndicator(int current, int total) {
    return 'Page $current of $total';
  }

  @override
  String get navToday => 'Today';

  @override
  String get navHabits => 'Habits';

  @override
  String get navProgress => 'Progress';

  @override
  String get navSettings => 'Settings';

  @override
  String get todaySubtitle => 'Any step today is a good step.';

  @override
  String habitTargets(String target, String smallerTarget) {
    return 'Goal: $target · Smaller: $smallerTarget';
  }

  @override
  String get checkInNormal => 'Done';

  @override
  String get checkInSmaller => 'Small step';

  @override
  String get checkInNotDone => 'Not today';

  @override
  String get sampleHabitWalk => 'Walk';

  @override
  String get sampleHabitWalkTarget => '30 minutes';

  @override
  String get sampleHabitWalkSmall => '5 minutes';

  @override
  String get sampleHabitRead => 'Read';

  @override
  String get sampleHabitReadTarget => '20 pages';

  @override
  String get sampleHabitReadSmall => '1 page';

  @override
  String get sampleHabitWater => 'Drink water';

  @override
  String get sampleHabitWaterTarget => '8 glasses';

  @override
  String get sampleHabitWaterSmall => '4 glasses';

  @override
  String get habitsEmpty =>
      'Your habits will be listed here. You can add, edit and archive them soon.';

  @override
  String get habitsAdd => 'New habit';

  @override
  String get comingSoon => 'Coming soon';

  @override
  String get progressLast7Days => 'Last 7 days';

  @override
  String get progressPlaceholder =>
      'Here you will see your small steps and comebacks, not just streaks.';

  @override
  String get settingsReminders => 'Reminders';

  @override
  String get settingsPrivacy => 'Privacy';

  @override
  String get settingsPrivacySummary =>
      'Your data is stored only on this device.';
}
