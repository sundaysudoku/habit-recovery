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
  String get settingsReminders => 'Reminders';

  @override
  String get settingsPrivacy => 'Privacy';

  @override
  String get settingsPrivacySummary =>
      'Your data is stored only on this device.';

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

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return 'Goal for now: $smallerTarget · Normal: $target';
  }

  @override
  String get habitFocusSmallerLabel => 'Use the smaller goal for now';

  @override
  String get habitFocusSmallerHelper =>
      'Good for restarting after a break. Switch back whenever you feel ready.';

  @override
  String recoveryTitle(String name) {
    return 'Let\'s restart $name gently';
  }

  @override
  String get recoveryBody =>
      'The last couple of planned days didn\'t happen. That\'s okay, it happens to everyone. How would you like to continue?';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return 'Make it smaller ($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => 'Keep the normal goal';

  @override
  String get recoveryChangeSchedule => 'Change schedule';

  @override
  String get recoverySkip => 'Not now';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return 'Great choice. $smallerTarget counts fully.';
  }

  @override
  String get recoveryNormalDone => 'Welcome back. You\'ve got this.';

  @override
  String get progressLast30Days => 'Last 30 days';

  @override
  String get progressNoHabits => 'Add a habit to see your progress here.';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return 'You showed up $showedUp of $planned planned times';
  }

  @override
  String get progressFullGoal => 'Full goal';

  @override
  String get progressSmallSteps => 'Small steps';

  @override
  String get progressComebacks => 'Comebacks';

  @override
  String get progressNotDone => 'Not done';

  @override
  String progressHabitCount(int showedUp, int planned) {
    return '$showedUp/$planned';
  }

  @override
  String progressEncourageComebacks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'You came back after a break $count times. That matters most.',
      one: 'You came back after a break once. That matters most.',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall =>
      'Small steps keep the habit alive. Nice work.';

  @override
  String get progressEncourageAny => 'Every time you show up counts.';

  @override
  String get progressEncourageStart =>
      'A fresh start is always available. One small step is enough.';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date: $normal full, $smaller small steps, $missed not done';
  }

  @override
  String get reminderChannelName => 'Habit reminders';

  @override
  String get reminderChannelDescription =>
      'Gentle reminders at the times you chose for your habits.';

  @override
  String reminderBody(String target, String smallerTarget) {
    return 'A good time for $target. Even $smallerTarget counts.';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return 'A good time for $smallerTarget. Small steps count.';
  }

  @override
  String get remindersSummary =>
      'Reminders arrive at the time set on each habit, only on its scheduled days.';

  @override
  String get remindersPermissionDenied =>
      'Notifications are turned off for this app. Turn them on in your phone\'s Settings > Apps > Habit Recovery > Notifications.';

  @override
  String get remindersUnsupported =>
      'Reminders work in the Android app. They are not available in this preview.';

  @override
  String get notificationsOffTitle => 'Notifications are off';

  @override
  String get notificationsOffBody =>
      'That\'s fine, the app works without them. If you want reminders later, open your phone\'s Settings > Apps > Habit Recovery > Notifications and turn them on.';

  @override
  String get actionOk => 'OK';

  @override
  String get privacyTitle => 'Privacy';

  @override
  String get privacyIntro =>
      'Habit Recovery is built to keep your habits private.';

  @override
  String get privacyStoredTitle => 'Stored only on your device';

  @override
  String get privacyStoredBody =>
      'Your habits, schedules and check-ins are saved in a database on this device. They are never uploaded anywhere.';

  @override
  String get privacyNoAccountTitle => 'No account, no tracking';

  @override
  String get privacyNoAccountBody =>
      'You do not need to sign up. The app does not collect personal data and has no analytics or social features.';

  @override
  String get privacyNotificationsTitle => 'Reminders stay local';

  @override
  String get privacyNotificationsBody =>
      'Reminders are scheduled by your phone itself. Nothing is sent from a server.';

  @override
  String get privacyDeleteTitle => 'You are in control';

  @override
  String get privacyDeleteBody =>
      'Deleting a habit removes its check-ins from this device. Uninstalling the app removes all of your data.';
}
