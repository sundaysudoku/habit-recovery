// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => 'ধীরে ধীরে অভ্যাস গড়ুন';

  @override
  String get onboardingBody1 =>
      'আপনার কাছে গুরুত্বপূর্ণ কয়েকটি অভ্যাস বেছে নিন। ছোট আকারে করলেও তা গণ্য হয়।';

  @override
  String get onboardingTitle2 => 'কয়েক দিন বাদ পড়েছে? আবার শুরু করুন';

  @override
  String get onboardingBody2 =>
      'এখানে কোনো শাস্তি নেই। কয়েক দিন বাদ পড়লে আমরা ছোট একটি ধাপ দিয়ে আবার শুরু করতে সাহায্য করি।';

  @override
  String get onboardingTitle3 => 'আপনার তথ্য থাকে আপনার ফোনেই';

  @override
  String get onboardingBody3 =>
      'অ্যাকাউন্ট লাগে না। সবকিছু শুধু এই ডিভাইসে সংরক্ষিত থাকে এবং অফলাইনে কাজ করে।';

  @override
  String get onboardingSkip => 'এড়িয়ে যান';

  @override
  String get onboardingNext => 'পরবর্তী';

  @override
  String get onboardingStart => 'শুরু করুন';

  @override
  String onboardingPageIndicator(int current, int total) {
    return 'পৃষ্ঠা $current/$total';
  }

  @override
  String get navToday => 'আজ';

  @override
  String get navHabits => 'অভ্যাস';

  @override
  String get navProgress => 'অগ্রগতি';

  @override
  String get navSettings => 'সেটিংস';

  @override
  String get todaySubtitle => 'আজকের যেকোনো ধাপই একটি ভালো ধাপ।';

  @override
  String habitTargets(String target, String smallerTarget) {
    return 'লক্ষ্য: $target · ছোট: $smallerTarget';
  }

  @override
  String get checkInNormal => 'হয়েছে';

  @override
  String get checkInSmaller => 'ছোট ধাপ';

  @override
  String get checkInNotDone => 'আজ নয়';

  @override
  String get habitsEmpty =>
      'এখনো কোনো অভ্যাস নেই। প্রথমটি যোগ করতে নতুন অভ্যাস চাপুন।';

  @override
  String get habitsAdd => 'নতুন অভ্যাস';

  @override
  String get progressLast7Days => 'গত ৭ দিন';

  @override
  String get settingsReminders => 'রিমাইন্ডার';

  @override
  String get settingsPrivacy => 'গোপনীয়তা';

  @override
  String get settingsPrivacySummary =>
      'আপনার তথ্য শুধু এই ডিভাইসে সংরক্ষিত থাকে।';

  @override
  String habitsArchived(int count) {
    return 'সংরক্ষণাগারে ($count)';
  }

  @override
  String get todayNoHabits =>
      'শুরু করতে একটি অভ্যাস যোগ করুন। ছোট হলেও ঠিক আছে।';

  @override
  String get todayNothingScheduled =>
      'আজ কিছু নির্ধারিত নেই। বিশ্রামও পরিকল্পনারই অংশ।';

  @override
  String get habitNewTitle => 'নতুন অভ্যাস';

  @override
  String get habitEditTitle => 'অভ্যাস সম্পাদনা';

  @override
  String get habitNameLabel => 'অভ্যাস';

  @override
  String get habitNameHint => 'যেমন: হাঁটা';

  @override
  String get habitTargetLabel => 'সাধারণ লক্ষ্য';

  @override
  String get habitTargetHint => 'যেমন: ৩০ মিনিট';

  @override
  String get habitSmallerLabel => 'ছোট লক্ষ্য';

  @override
  String get habitSmallerHint => 'যেমন: ৫ মিনিট';

  @override
  String get habitSmallerHelper =>
      'ব্যস্ত বা কম শক্তির দিনের জন্য সহজ সংস্করণ। এটিও গণ্য হয়।';

  @override
  String get habitScheduleLabel => 'সময়সূচি';

  @override
  String get scheduleDaily => 'প্রতিদিন';

  @override
  String get scheduleSelectedDays => 'নির্বাচিত দিন';

  @override
  String get scheduleNoDaysError => 'অন্তত একটি দিন বেছে নিন।';

  @override
  String get habitReminderLabel => 'রিমাইন্ডার';

  @override
  String get habitReminderOff => 'বন্ধ';

  @override
  String get habitReminderChange => 'সময় বদলান';

  @override
  String get habitArchive => 'সংরক্ষণাগারে রাখুন';

  @override
  String get habitUnarchive => 'ফিরিয়ে আনুন';

  @override
  String get habitDeleteTitle => 'অভ্যাসটি মুছবেন?';

  @override
  String habitDeleteBody(String name) {
    return '\"$name\" এবং এর সব চেক-ইন স্থায়ীভাবে মুছে যাবে। পরে লাগতে পারে মনে হলে বরং সংরক্ষণাগারে রাখুন।';
  }

  @override
  String get actionSave => 'সংরক্ষণ';

  @override
  String get actionCancel => 'বাতিল';

  @override
  String get actionDelete => 'মুছুন';

  @override
  String get fieldRequired => 'অনুগ্রহ করে এটি পূরণ করুন।';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return 'আপাতত লক্ষ্য: $smallerTarget · সাধারণ: $target';
  }

  @override
  String get habitFocusSmallerLabel => 'আপাতত ছোট লক্ষ্য ব্যবহার করুন';

  @override
  String get habitFocusSmallerHelper =>
      'বিরতির পর আবার শুরু করতে ভালো। প্রস্তুত মনে হলেই আগের লক্ষ্যে ফিরে যান।';

  @override
  String recoveryTitle(String name) {
    return 'চলুন ধীরে ধীরে আবার $name শুরু করি';
  }

  @override
  String get recoveryBody =>
      'পরিকল্পনা করা শেষ কয়েকটি দিনে কাজটি হয়নি। এতে কিছু যায় আসে না, সবার সঙ্গেই এমন হয়। আপনি কীভাবে এগোতে চান?';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return 'ছোট করুন ($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => 'সাধারণ লক্ষ্যই রাখুন';

  @override
  String get recoveryChangeSchedule => 'সময়সূচি বদলান';

  @override
  String get recoverySkip => 'এখন নয়';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return 'দারুণ সিদ্ধান্ত। $smallerTarget পুরোপুরি গণ্য হয়।';
  }

  @override
  String get recoveryNormalDone => 'ফিরে আসায় স্বাগতম। আপনি পারবেন।';

  @override
  String get progressLast30Days => 'গত ৩০ দিন';

  @override
  String get progressNoHabits => 'আপনার অগ্রগতি দেখতে একটি অভ্যাস যোগ করুন।';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return 'পরিকল্পিত $planned বারের মধ্যে আপনি $showedUp বার এসেছেন';
  }

  @override
  String get progressFullGoal => 'পুরো লক্ষ্য';

  @override
  String get progressSmallSteps => 'ছোট ধাপ';

  @override
  String get progressComebacks => 'ফিরে আসা';

  @override
  String get progressNotDone => 'হয়নি';

  @override
  String progressHabitCount(int showedUp, int planned) {
    return '$showedUp/$planned';
  }

  @override
  String progressEncourageComebacks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'আপনি $count বার বিরতির পর ফিরে এসেছেন। সেটাই সবচেয়ে গুরুত্বপূর্ণ।',
      one: 'আপনি একবার বিরতির পর ফিরে এসেছেন। সেটাই সবচেয়ে গুরুত্বপূর্ণ।',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall =>
      'ছোট ধাপ অভ্যাসটিকে বাঁচিয়ে রাখে। চমৎকার কাজ।';

  @override
  String get progressEncourageAny => 'প্রতিবার আপনি এলে সেটা গণ্য হয়।';

  @override
  String get progressEncourageStart =>
      'নতুন শুরু সবসময়ই সম্ভব। একটি ছোট ধাপই যথেষ্ট।';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date: পুরো $normal, ছোট ধাপ $smaller, হয়নি $missed';
  }

  @override
  String get reminderChannelName => 'অভ্যাসের রিমাইন্ডার';

  @override
  String get reminderChannelDescription =>
      'আপনার অভ্যাসের জন্য বেছে নেওয়া সময়ে কোমল রিমাইন্ডার।';

  @override
  String reminderBody(String target, String smallerTarget) {
    return '$target-এর জন্য এখন ভালো সময়। $smallerTarget করলেও গণ্য হবে।';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return '$smallerTarget-এর জন্য এখন ভালো সময়। ছোট ধাপও গণ্য হয়।';
  }

  @override
  String get remindersSummary =>
      'প্রতিটি অভ্যাসে নির্ধারিত সময়ে, শুধু তার নির্ধারিত দিনগুলোতে রিমাইন্ডার আসে।';

  @override
  String get remindersPermissionDenied =>
      'এই অ্যাপের জন্য নোটিফিকেশন বন্ধ আছে। আপনার ফোনের সেটিংস > অ্যাপ > Habit Recovery > নোটিফিকেশন থেকে চালু করুন।';

  @override
  String get remindersUnsupported =>
      'রিমাইন্ডার অ্যান্ড্রয়েড অ্যাপে কাজ করে। এই প্রিভিউতে এটি পাওয়া যায় না।';

  @override
  String get notificationsOffTitle => 'নোটিফিকেশন বন্ধ আছে';

  @override
  String get notificationsOffBody =>
      'কোনো সমস্যা নেই, এগুলো ছাড়াও অ্যাপ কাজ করে। পরে রিমাইন্ডার চাইলে ফোনের সেটিংস > অ্যাপ > Habit Recovery > নোটিফিকেশন-এ গিয়ে চালু করুন।';

  @override
  String get actionOk => 'ঠিক আছে';

  @override
  String get privacyTitle => 'গোপনীয়তা';

  @override
  String get privacyIntro =>
      'Habit Recovery তৈরি হয়েছে আপনার অভ্যাস ব্যক্তিগত রাখতে।';

  @override
  String get privacyStoredTitle => 'শুধু আপনার ডিভাইসে সংরক্ষিত';

  @override
  String get privacyStoredBody =>
      'আপনার অভ্যাস, সময়সূচি ও চেক-ইন এই ডিভাইসের একটি ডেটাবেসে সংরক্ষিত থাকে। এগুলো কোথাও আপলোড করা হয় না।';

  @override
  String get privacyNoAccountTitle => 'অ্যাকাউন্ট নেই, ট্র্যাকিংও নেই';

  @override
  String get privacyNoAccountBody =>
      'সাইন আপ করতে হয় না। অ্যাপে কোনো অ্যানালিটিক্স বা সোশ্যাল ফিচার নেই, আর অ্যাপ নিজে থেকে কোনো ব্যক্তিগত তথ্য সংগ্রহ করে না।';

  @override
  String get privacyNotificationsTitle => 'রিমাইন্ডার থাকে স্থানীয়ভাবে';

  @override
  String get privacyNotificationsBody =>
      'রিমাইন্ডার আপনার ফোন নিজেই নির্ধারণ করে। কোনো সার্ভার থেকে কিছু পাঠানো হয় না।';

  @override
  String get privacyDeleteTitle => 'নিয়ন্ত্রণ আপনার হাতে';

  @override
  String get privacyDeleteBody =>
      'অভ্যাস মুছলে এর চেক-ইন এই ডিভাইস থেকে মুছে যায়। অ্যাপ আনইনস্টল করলে আপনার সব তথ্য মুছে যায়।';

  @override
  String get privacyAdsTitle => 'একটি ছোট বিজ্ঞাপন';

  @override
  String get privacyAdsBody =>
      'অ্যাপটি বিনামূল্যে এবং Google AdMob থেকে শুধু একটি ছোট ব্যানার বিজ্ঞাপন দেখায়। বিজ্ঞাপন দেখাতে Google আপনার ডিভাইসের বিজ্ঞাপন আইডি ব্যবহার করতে পারে। আইন অনুযায়ী প্রয়োজন হলে আগে আপনার সম্মতি চাওয়া হয়, আর পরে সেটিংসে গিয়ে এই পছন্দ বদলে নিতে পারেন। আপনার অভ্যাসের তথ্য কখনোই বিজ্ঞাপনদাতাদের সঙ্গে শেয়ার করা হয় না।';

  @override
  String get settingsAdChoices => 'বিজ্ঞাপনের গোপনীয়তা বিকল্প';

  @override
  String get settingsAdChoicesSummary =>
      'বিজ্ঞাপনের জন্য আপনার সম্মতি দেখুন বা পরিবর্তন করুন।';
}
