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

  /// No description provided for @sampleHabitWalk.
  ///
  /// In en, this message translates to:
  /// **'Walk'**
  String get sampleHabitWalk;

  /// No description provided for @sampleHabitWalkTarget.
  ///
  /// In en, this message translates to:
  /// **'30 minutes'**
  String get sampleHabitWalkTarget;

  /// No description provided for @sampleHabitWalkSmall.
  ///
  /// In en, this message translates to:
  /// **'5 minutes'**
  String get sampleHabitWalkSmall;

  /// No description provided for @sampleHabitRead.
  ///
  /// In en, this message translates to:
  /// **'Read'**
  String get sampleHabitRead;

  /// No description provided for @sampleHabitReadTarget.
  ///
  /// In en, this message translates to:
  /// **'20 pages'**
  String get sampleHabitReadTarget;

  /// No description provided for @sampleHabitReadSmall.
  ///
  /// In en, this message translates to:
  /// **'1 page'**
  String get sampleHabitReadSmall;

  /// No description provided for @sampleHabitWater.
  ///
  /// In en, this message translates to:
  /// **'Drink water'**
  String get sampleHabitWater;

  /// No description provided for @sampleHabitWaterTarget.
  ///
  /// In en, this message translates to:
  /// **'8 glasses'**
  String get sampleHabitWaterTarget;

  /// No description provided for @sampleHabitWaterSmall.
  ///
  /// In en, this message translates to:
  /// **'4 glasses'**
  String get sampleHabitWaterSmall;

  /// No description provided for @habitsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Your habits will be listed here. You can add, edit and archive them soon.'**
  String get habitsEmpty;

  /// No description provided for @habitsAdd.
  ///
  /// In en, this message translates to:
  /// **'New habit'**
  String get habitsAdd;

  /// No description provided for @comingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get comingSoon;

  /// No description provided for @progressLast7Days.
  ///
  /// In en, this message translates to:
  /// **'Last 7 days'**
  String get progressLast7Days;

  /// No description provided for @progressPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Here you will see your small steps and comebacks, not just streaks.'**
  String get progressPlaceholder;

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
