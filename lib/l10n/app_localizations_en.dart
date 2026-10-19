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
  String get habitsEmpty =>
      'No habits yet. Tap New habit to add your first one.';

  @override
  String get habitsAdd => 'New habit';

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

  @override
  String get settingsRemindersSoon =>
      'Reminders will be available in a later update.';

  @override
  String habitsArchived(int count) {
    return 'Archived ($count)';
  }

  @override
  String get todayNoHabits => 'Add a habit to start. Small is fine.';

  @override
  String get todayNothingScheduled =>
      'Nothing scheduled today. Rest is part of the plan too.';

  @override
  String get habitNewTitle => 'New habit';

  @override
  String get habitEditTitle => 'Edit habit';

  @override
  String get habitNameLabel => 'Habit';

  @override
  String get habitNameHint => 'e.g. Walk';

  @override
  String get habitTargetLabel => 'Normal goal';

  @override
  String get habitTargetHint => 'e.g. 30 minutes';

  @override
  String get habitSmallerLabel => 'Smaller goal';

  @override
  String get habitSmallerHint => 'e.g. 5 minutes';

  @override
  String get habitSmallerHelper =>
      'The easy version for busy or low-energy days. It still counts.';

  @override
  String get habitScheduleLabel => 'Schedule';

  @override
  String get scheduleDaily => 'Every day';

  @override
  String get scheduleSelectedDays => 'Selected days';

  @override
  String get scheduleNoDaysError => 'Choose at least one day.';

  @override
  String get habitReminderLabel => 'Reminder';

  @override
  String get habitReminderOff => 'Off';

  @override
  String get habitReminderChange => 'Change time';

  @override
  String get habitArchive => 'Archive';

  @override
  String get habitUnarchive => 'Restore';

  @override
  String get habitDeleteTitle => 'Delete habit?';

  @override
  String habitDeleteBody(String name) {
    return '\"$name\" and all its check-ins will be permanently deleted. Archive it instead if you might want it back.';
  }

  @override
  String get actionSave => 'Save';

  @override
  String get actionCancel => 'Cancel';

  @override
  String get actionDelete => 'Delete';

  @override
  String get fieldRequired => 'Please fill this in.';
}
