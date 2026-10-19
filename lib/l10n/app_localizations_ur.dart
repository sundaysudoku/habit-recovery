// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => 'عادتیں نرمی سے بنائیں';

  @override
  String get onboardingBody1 =>
      'چند ایسی عادتیں چنیں جو آپ کے لیے اہم ہوں۔ چھوٹا ورژن کرنا بھی شمار ہوتا ہے۔';

  @override
  String get onboardingTitle2 => 'کچھ دن چھوٹ گئے؟ دوبارہ شروع کریں';

  @override
  String get onboardingBody2 =>
      'یہاں کوئی سزا نہیں ہے۔ جب کچھ دن چھوٹ جائیں تو ہم چھوٹے قدم کے ساتھ دوبارہ شروع کرنے میں مدد کرتے ہیں۔';

  @override
  String get onboardingTitle3 => 'آپ کا ڈیٹا آپ کے فون میں رہتا ہے';

  @override
  String get onboardingBody3 =>
      'اکاؤنٹ کی ضرورت نہیں۔ سب کچھ صرف اسی ڈیوائس پر محفوظ رہتا ہے اور آف لائن بھی چلتا ہے۔';

  @override
  String get onboardingSkip => 'چھوڑیں';

  @override
  String get onboardingNext => 'آگے';

  @override
  String get onboardingStart => 'شروع کریں';

  @override
  String onboardingPageIndicator(int current, int total) {
    return 'صفحہ $current از $total';
  }

  @override
  String get navToday => 'آج';

  @override
  String get navHabits => 'عادتیں';

  @override
  String get navProgress => 'پیش رفت';

  @override
  String get navSettings => 'ترتیبات';

  @override
  String get todaySubtitle => 'آج کا ہر قدم ایک اچھا قدم ہے۔';

  @override
  String habitTargets(String target, String smallerTarget) {
    return 'ہدف: $target · چھوٹا: $smallerTarget';
  }

  @override
  String get checkInNormal => 'ہو گیا';

  @override
  String get checkInSmaller => 'چھوٹا قدم';

  @override
  String get checkInNotDone => 'آج نہیں';

  @override
  String get habitsEmpty =>
      'ابھی کوئی عادت نہیں۔ اپنی پہلی عادت شامل کرنے کے لیے «نئی عادت» دبائیں۔';

  @override
  String get habitsAdd => 'نئی عادت';

  @override
  String get progressLast7Days => 'پچھلے 7 دن';

  @override
  String get settingsReminders => 'یاددہانیاں';

  @override
  String get settingsPrivacy => 'رازداری';

  @override
  String get settingsPrivacySummary => 'آپ کا ڈیٹا صرف اسی ڈیوائس پر محفوظ ہے۔';

  @override
  String habitsArchived(int count) {
    return 'محفوظ شدہ ($count)';
  }

  @override
  String get todayNoHabits =>
      'شروع کرنے کے لیے ایک عادت شامل کریں۔ چھوٹی بھی ٹھیک ہے۔';

  @override
  String get todayNothingScheduled =>
      'آج کچھ طے نہیں ہے۔ آرام بھی منصوبے کا حصہ ہے۔';

  @override
  String get habitNewTitle => 'نئی عادت';

  @override
  String get habitEditTitle => 'عادت میں ترمیم';

  @override
  String get habitNameLabel => 'عادت';

  @override
  String get habitNameHint => 'مثلاً: چہل قدمی';

  @override
  String get habitTargetLabel => 'معمول کا ہدف';

  @override
  String get habitTargetHint => 'مثلاً: 30 منٹ';

  @override
  String get habitSmallerLabel => 'چھوٹا ہدف';

  @override
  String get habitSmallerHint => 'مثلاً: 5 منٹ';

  @override
  String get habitSmallerHelper =>
      'مصروف یا کم توانائی والے دنوں کے لیے آسان ورژن۔ یہ بھی شمار ہوتا ہے۔';

  @override
  String get habitScheduleLabel => 'شیڈول';

  @override
  String get scheduleDaily => 'ہر روز';

  @override
  String get scheduleSelectedDays => 'منتخب دن';

  @override
  String get scheduleNoDaysError => 'کم از کم ایک دن منتخب کریں۔';

  @override
  String get habitReminderLabel => 'یاددہانی';

  @override
  String get habitReminderOff => 'بند';

  @override
  String get habitReminderChange => 'وقت تبدیل کریں';

  @override
  String get habitArchive => 'آرکائیو کریں';

  @override
  String get habitUnarchive => 'بحال کریں';

  @override
  String get habitDeleteTitle => 'عادت حذف کریں؟';

  @override
  String habitDeleteBody(String name) {
    return '\"$name\" اور اس کے تمام چیک اِن ہمیشہ کے لیے حذف ہو جائیں گے۔ اگر آپ اسے دوبارہ چاہ سکتے ہیں تو اس کے بجائے محفوظ شدہ میں رکھ دیں۔';
  }

  @override
  String get actionSave => 'محفوظ کریں';

  @override
  String get actionCancel => 'منسوخ کریں';

  @override
  String get actionDelete => 'حذف کریں';

  @override
  String get fieldRequired => 'براہِ کرم اسے پُر کریں۔';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return 'فی الحال ہدف: $smallerTarget · معمول: $target';
  }

  @override
  String get habitFocusSmallerLabel => 'فی الحال چھوٹا ہدف استعمال کریں';

  @override
  String get habitFocusSmallerHelper =>
      'وقفے کے بعد دوبارہ شروع کرنے کے لیے اچھا ہے۔ جب تیار محسوس کریں واپس بدل لیں۔';

  @override
  String recoveryTitle(String name) {
    return 'آئیے $name نرمی سے دوبارہ شروع کریں';
  }

  @override
  String get recoveryBody =>
      'پچھلے چند طے شدہ دن نہیں ہو سکے۔ کوئی بات نہیں، یہ سب کے ساتھ ہوتا ہے۔ آپ آگے کیسے بڑھنا چاہیں گے؟';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return 'اسے چھوٹا کریں ($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => 'معمول کا ہدف رکھیں';

  @override
  String get recoveryChangeSchedule => 'شیڈول تبدیل کریں';

  @override
  String get recoverySkip => 'ابھی نہیں';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return 'بہترین انتخاب۔ $smallerTarget پوری طرح شمار ہوتا ہے۔';
  }

  @override
  String get recoveryNormalDone => 'خوش آمدید۔ آپ یہ کر سکتے ہیں۔';

  @override
  String get progressLast30Days => 'پچھلے 30 دن';

  @override
  String get progressNoHabits =>
      'اپنی پیش رفت یہاں دیکھنے کے لیے ایک عادت شامل کریں۔';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return 'آپ $planned طے شدہ مواقع میں سے $showedUp بار حاضر ہوئے';
  }

  @override
  String get progressFullGoal => 'پورا ہدف';

  @override
  String get progressSmallSteps => 'چھوٹے قدم';

  @override
  String get progressComebacks => 'واپسیاں';

  @override
  String get progressNotDone => 'نہیں ہوا';

  @override
  String progressHabitCount(int showedUp, int planned) {
    return '$showedUp/$planned';
  }

  @override
  String progressEncourageComebacks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'آپ وقفے کے بعد $count بار واپس آئے۔ یہی سب سے اہم ہے۔',
      one: 'آپ وقفے کے بعد ایک بار واپس آئے۔ یہی سب سے اہم ہے۔',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall =>
      'چھوٹے قدم عادت کو زندہ رکھتے ہیں۔ شاباش۔';

  @override
  String get progressEncourageAny =>
      'آپ جب بھی حاضر ہوتے ہیں، وہ شمار ہوتا ہے۔';

  @override
  String get progressEncourageStart =>
      'نئی شروعات ہمیشہ ممکن ہے۔ ایک چھوٹا قدم کافی ہے۔';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date: $normal مکمل، $smaller چھوٹے قدم، $missed نہیں ہوئے';
  }

  @override
  String get reminderChannelName => 'عادتوں کی یاددہانیاں';

  @override
  String get reminderChannelDescription =>
      'آپ کی چنی ہوئی اوقات پر آپ کی عادتوں کے لیے نرم یاددہانیاں۔';

  @override
  String reminderBody(String target, String smallerTarget) {
    return '$target کے لیے اچھا وقت ہے۔ $smallerTarget بھی شمار ہوتا ہے۔';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return '$smallerTarget کے لیے اچھا وقت ہے۔ چھوٹے قدم شمار ہوتے ہیں۔';
  }

  @override
  String get remindersSummary =>
      'یاددہانیاں ہر عادت کے مقررہ وقت پر، صرف اس کے طے شدہ دنوں میں آتی ہیں۔';

  @override
  String get remindersPermissionDenied =>
      'اس ایپ کے لیے نوٹیفکیشن بند ہیں۔ انہیں اپنے فون کی سیٹنگز > ایپس > Habit Recovery > نوٹیفکیشنز میں آن کریں۔';

  @override
  String get remindersUnsupported =>
      'یاددہانیاں اینڈرائیڈ ایپ میں کام کرتی ہیں۔ اس پیش نظارے میں دستیاب نہیں ہیں۔';

  @override
  String get notificationsOffTitle => 'نوٹیفکیشن بند ہیں';

  @override
  String get notificationsOffBody =>
      'کوئی بات نہیں، ایپ ان کے بغیر بھی چلتی ہے۔ اگر بعد میں یاددہانیاں چاہیں تو اپنے فون کی سیٹنگز > ایپس > Habit Recovery > نوٹیفکیشنز کھول کر آن کر دیں۔';

  @override
  String get actionOk => 'ٹھیک ہے';

  @override
  String get privacyTitle => 'رازداری';

  @override
  String get privacyIntro =>
      'Habit Recovery اس لیے بنائی گئی ہے کہ آپ کی عادتیں نجی رہیں۔';

  @override
  String get privacyStoredTitle => 'صرف آپ کی ڈیوائس پر محفوظ';

  @override
  String get privacyStoredBody =>
      'آپ کی عادتیں، شیڈول اور چیک اِن اس ڈیوائس کے ڈیٹابیس میں محفوظ ہوتے ہیں۔ انہیں کہیں اپ لوڈ نہیں کیا جاتا۔';

  @override
  String get privacyNoAccountTitle => 'نہ اکاؤنٹ، نہ ٹریکنگ';

  @override
  String get privacyNoAccountBody =>
      'سائن اپ کرنے کی ضرورت نہیں۔ ایپ ذاتی ڈیٹا جمع نہیں کرتی اور اس میں اینالیٹکس یا سوشل فیچرز نہیں ہیں۔';

  @override
  String get privacyNotificationsTitle => 'یاددہانیاں مقامی رہتی ہیں';

  @override
  String get privacyNotificationsBody =>
      'یاددہانیاں آپ کا فون خود شیڈول کرتا ہے۔ کسی سرور سے کچھ نہیں بھیجا جاتا۔';

  @override
  String get privacyDeleteTitle => 'اختیار آپ کے پاس ہے';

  @override
  String get privacyDeleteBody =>
      'عادت حذف کرنے سے اس کے چیک اِن اس ڈیوائس سے ہٹ جاتے ہیں۔ ایپ اَن انسٹال کرنے سے آپ کا تمام ڈیٹا ہٹ جاتا ہے۔';
}
