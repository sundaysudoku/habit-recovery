import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi'),
  ];

  /// Name of the app.
  ///
  /// In en, this message translates to:
  /// **'Habit Recovery'**
  String get appTitle;

  /// No description provided for @onboardingTitle1.
  ///
  /// In en, this message translates to:
  /// **'Build habits gently'**
  String get onboardingTitle1;

  /// No description provided for @onboardingBody1.
  ///
  /// In en, this message translates to:
  /// **'Pick a few habits that matter to you. Doing a smaller version still counts.'**
  String get onboardingBody1;

  /// No description provided for @onboardingTitle2.
  ///
  /// In en, this message translates to:
  /// **'Missed a few days? Start again'**
  String get onboardingTitle2;

  /// No description provided for @onboardingBody2.
  ///
  /// In en, this message translates to:
  /// **'There is no punishment here. When you miss a few days, we help you restart with a smaller step.'**
  String get onboardingBody2;

  /// No description provided for @onboardingTitle3.
  ///
  /// In en, this message translates to:
  /// **'Your data stays on your phone'**
  String get onboardingTitle3;

  /// No description provided for @onboardingBody3.
  ///
  /// In en, this message translates to:
  /// **'No account needed. Everything is stored only on this device and works offline.'**
  String get onboardingBody3;

  /// No description provided for @onboardingSkip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get onboardingSkip;

  /// No description provided for @onboardingNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get onboardingNext;

  /// No description provided for @onboardingStart.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get onboardingStart;

  /// Screen reader label for the onboarding page dots.
  ///
  /// In en, this message translates to:
  /// **'Page {current} of {total}'**
  String onboardingPageIndicator(int current, int total);

  /// No description provided for @navToday.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get navToday;

  /// No description provided for @navHabits.
  ///
  /// In en, this message translates to:
  /// **'Habits'**
  String get navHabits;

  /// No description provided for @navProgress.
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get navProgress;

  /// No description provided for @navSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navSettings;

  /// No description provided for @todaySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Any step today is a good step.'**
  String get todaySubtitle;

  /// Normal target and smaller target of a habit.
  ///
  /// In en, this message translates to:
  /// **'Goal: {target} · Smaller: {smallerTarget}'**
  String habitTargets(String target, String smallerTarget);

  /// Check-in: completed the normal target.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get checkInNormal;

  /// Check-in: completed the smaller target.
  ///
  /// In en, this message translates to:
  /// **'Small step'**
  String get checkInSmaller;

  /// Check-in: did not do the habit today. Must sound neutral, not judgmental.
  ///
  /// In en, this message translates to:
  /// **'Not today'**
  String get checkInNotDone;

  /// No description provided for @habitsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No habits yet. Tap New habit to add your first one.'**
  String get habitsEmpty;

  /// No description provided for @habitsAdd.
  ///
  /// In en, this message translates to:
  /// **'New habit'**
  String get habitsAdd;

  /// No description provided for @progressLast7Days.
  ///
  /// In en, this message translates to:
  /// **'Last 7 days'**
  String get progressLast7Days;

  /// No description provided for @settingsReminders.
  ///
  /// In en, this message translates to:
  /// **'Reminders'**
  String get settingsReminders;

  /// No description provided for @settingsPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get settingsPrivacy;

  /// No description provided for @settingsPrivacySummary.
  ///
  /// In en, this message translates to:
  /// **'Your data is stored only on this device.'**
  String get settingsPrivacySummary;

  /// No description provided for @habitsArchived.
  ///
  /// In en, this message translates to:
  /// **'Archived ({count})'**
  String habitsArchived(int count);

  /// No description provided for @todayNoHabits.
  ///
  /// In en, this message translates to:
  /// **'Add a habit to start. Small is fine.'**
  String get todayNoHabits;

  /// No description provided for @todayNothingScheduled.
  ///
  /// In en, this message translates to:
  /// **'Nothing scheduled today. Rest is part of the plan too.'**
  String get todayNothingScheduled;

  /// No description provided for @habitNewTitle.
  ///
  /// In en, this message translates to:
  /// **'New habit'**
  String get habitNewTitle;

  /// No description provided for @habitEditTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit habit'**
  String get habitEditTitle;

  /// No description provided for @habitNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Habit'**
  String get habitNameLabel;

  /// No description provided for @habitNameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Walk'**
  String get habitNameHint;

  /// No description provided for @habitTargetLabel.
  ///
  /// In en, this message translates to:
  /// **'Normal goal'**
  String get habitTargetLabel;

  /// No description provided for @habitTargetHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. 30 minutes'**
  String get habitTargetHint;

  /// No description provided for @habitSmallerLabel.
  ///
  /// In en, this message translates to:
  /// **'Smaller goal'**
  String get habitSmallerLabel;

  /// No description provided for @habitSmallerHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. 5 minutes'**
  String get habitSmallerHint;

  /// No description provided for @habitSmallerHelper.
  ///
  /// In en, this message translates to:
  /// **'The easy version for busy or low-energy days. It still counts.'**
  String get habitSmallerHelper;

  /// No description provided for @habitScheduleLabel.
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get habitScheduleLabel;

  /// No description provided for @scheduleDaily.
  ///
  /// In en, this message translates to:
  /// **'Every day'**
  String get scheduleDaily;

  /// No description provided for @scheduleSelectedDays.
  ///
  /// In en, this message translates to:
  /// **'Selected days'**
  String get scheduleSelectedDays;

  /// No description provided for @scheduleNoDaysError.
  ///
  /// In en, this message translates to:
  /// **'Choose at least one day.'**
  String get scheduleNoDaysError;

  /// No description provided for @habitReminderLabel.
  ///
  /// In en, this message translates to:
  /// **'Reminder'**
  String get habitReminderLabel;

  /// No description provided for @habitReminderOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get habitReminderOff;

  /// No description provided for @habitReminderChange.
  ///
  /// In en, this message translates to:
  /// **'Change time'**
  String get habitReminderChange;

  /// No description provided for @habitArchive.
  ///
  /// In en, this message translates to:
  /// **'Archive'**
  String get habitArchive;

  /// No description provided for @habitUnarchive.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get habitUnarchive;

  /// No description provided for @habitDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete habit?'**
  String get habitDeleteTitle;

  /// No description provided for @habitDeleteBody.
  ///
  /// In en, this message translates to:
  /// **'\"{name}\" and all its check-ins will be permanently deleted. Archive it instead if you might want it back.'**
  String habitDeleteBody(String name);

  /// No description provided for @actionSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get actionSave;

  /// No description provided for @actionCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get actionCancel;

  /// No description provided for @actionDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get actionDelete;

  /// No description provided for @fieldRequired.
  ///
  /// In en, this message translates to:
  /// **'Please fill this in.'**
  String get fieldRequired;

  /// Shown when the user chose the smaller target during recovery.
  ///
  /// In en, this message translates to:
  /// **'Goal for now: {smallerTarget} · Normal: {target}'**
  String habitTargetsFocusSmaller(String smallerTarget, String target);

  /// No description provided for @habitFocusSmallerLabel.
  ///
  /// In en, this message translates to:
  /// **'Use the smaller goal for now'**
  String get habitFocusSmallerLabel;

  /// No description provided for @habitFocusSmallerHelper.
  ///
  /// In en, this message translates to:
  /// **'Good for restarting after a break. Switch back whenever you feel ready.'**
  String get habitFocusSmallerHelper;

  /// No description provided for @recoveryTitle.
  ///
  /// In en, this message translates to:
  /// **'Let\'s restart {name} gently'**
  String recoveryTitle(String name);

  /// Recovery Mode message. Must be warm and free of guilt or blame.
  ///
  /// In en, this message translates to:
  /// **'The last couple of planned days didn\'t happen. That\'s okay, it happens to everyone. How would you like to continue?'**
  String get recoveryBody;

  /// No description provided for @recoveryUseSmaller.
  ///
  /// In en, this message translates to:
  /// **'Make it smaller ({smallerTarget})'**
  String recoveryUseSmaller(String smallerTarget);

  /// No description provided for @recoveryUseNormal.
  ///
  /// In en, this message translates to:
  /// **'Keep the normal goal'**
  String get recoveryUseNormal;

  /// No description provided for @recoveryChangeSchedule.
  ///
  /// In en, this message translates to:
  /// **'Change schedule'**
  String get recoveryChangeSchedule;

  /// No description provided for @recoverySkip.
  ///
  /// In en, this message translates to:
  /// **'Not now'**
  String get recoverySkip;

  /// No description provided for @recoverySmallerDone.
  ///
  /// In en, this message translates to:
  /// **'Great choice. {smallerTarget} counts fully.'**
  String recoverySmallerDone(String smallerTarget);

  /// No description provided for @recoveryNormalDone.
  ///
  /// In en, this message translates to:
  /// **'Welcome back. You\'ve got this.'**
  String get recoveryNormalDone;

  /// No description provided for @progressLast30Days.
  ///
  /// In en, this message translates to:
  /// **'Last 30 days'**
  String get progressLast30Days;

  /// No description provided for @progressNoHabits.
  ///
  /// In en, this message translates to:
  /// **'Add a habit to see your progress here.'**
  String get progressNoHabits;

  /// No description provided for @progressShowedUp.
  ///
  /// In en, this message translates to:
  /// **'You showed up {showedUp} of {planned} planned times'**
  String progressShowedUp(int showedUp, int planned);

  /// No description provided for @progressFullGoal.
  ///
  /// In en, this message translates to:
  /// **'Full goal'**
  String get progressFullGoal;

  /// No description provided for @progressSmallSteps.
  ///
  /// In en, this message translates to:
  /// **'Small steps'**
  String get progressSmallSteps;

  /// No description provided for @progressComebacks.
  ///
  /// In en, this message translates to:
  /// **'Comebacks'**
  String get progressComebacks;

  /// No description provided for @progressNotDone.
  ///
  /// In en, this message translates to:
  /// **'Not done'**
  String get progressNotDone;

  /// No description provided for @progressHabitCount.
  ///
  /// In en, this message translates to:
  /// **'{showedUp}/{planned}'**
  String progressHabitCount(int showedUp, int planned);

  /// No description provided for @progressEncourageComebacks.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{You came back after a break once. That matters most.} other{You came back after a break {count} times. That matters most.}}'**
  String progressEncourageComebacks(int count);

  /// No description provided for @progressEncourageSmall.
  ///
  /// In en, this message translates to:
  /// **'Small steps keep the habit alive. Nice work.'**
  String get progressEncourageSmall;

  /// No description provided for @progressEncourageAny.
  ///
  /// In en, this message translates to:
  /// **'Every time you show up counts.'**
  String get progressEncourageAny;

  /// No description provided for @progressEncourageStart.
  ///
  /// In en, this message translates to:
  /// **'A fresh start is always available. One small step is enough.'**
  String get progressEncourageStart;

  /// Screen reader label for one day in the progress chart.
  ///
  /// In en, this message translates to:
  /// **'{date}: {normal} full, {smaller} small steps, {missed} not done'**
  String progressDaySemantics(String date, int normal, int smaller, int missed);

  /// No description provided for @reminderChannelName.
  ///
  /// In en, this message translates to:
  /// **'Habit reminders'**
  String get reminderChannelName;

  /// No description provided for @reminderChannelDescription.
  ///
  /// In en, this message translates to:
  /// **'Gentle reminders at the times you chose for your habits.'**
  String get reminderChannelDescription;

  /// Notification text. Gentle, never pushy.
  ///
  /// In en, this message translates to:
  /// **'A good time for {target}. Even {smallerTarget} counts.'**
  String reminderBody(String target, String smallerTarget);

  /// No description provided for @reminderBodyFocusSmaller.
  ///
  /// In en, this message translates to:
  /// **'A good time for {smallerTarget}. Small steps count.'**
  String reminderBodyFocusSmaller(String smallerTarget);

  /// No description provided for @remindersSummary.
  ///
  /// In en, this message translates to:
  /// **'Reminders arrive at the time set on each habit, only on its scheduled days.'**
  String get remindersSummary;

  /// No description provided for @remindersPermissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Notifications are turned off for this app. Turn them on in your phone\'s Settings > Apps > Habit Recovery > Notifications.'**
  String get remindersPermissionDenied;

  /// No description provided for @remindersUnsupported.
  ///
  /// In en, this message translates to:
  /// **'Reminders work in the Android app. They are not available in this preview.'**
  String get remindersUnsupported;

  /// No description provided for @notificationsOffTitle.
  ///
  /// In en, this message translates to:
  /// **'Notifications are off'**
  String get notificationsOffTitle;

  /// No description provided for @notificationsOffBody.
  ///
  /// In en, this message translates to:
  /// **'That\'s fine, the app works without them. If you want reminders later, open your phone\'s Settings > Apps > Habit Recovery > Notifications and turn them on.'**
  String get notificationsOffBody;

  /// No description provided for @actionOk.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get actionOk;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'vi':
      return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
