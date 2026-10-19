// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => 'ابنِ عاداتك بلطف';

  @override
  String get onboardingBody1 =>
      'اختر بضع عادات تهمّك. أداء نسخة أصغر منها يُحتسب أيضًا.';

  @override
  String get onboardingTitle2 => 'فاتتك بضعة أيام؟ ابدأ من جديد';

  @override
  String get onboardingBody2 =>
      'لا توجد عقوبات هنا. حين تفوتك بضعة أيام، نساعدك على الانطلاق من جديد بخطوة أصغر.';

  @override
  String get onboardingTitle3 => 'بياناتك تبقى على هاتفك';

  @override
  String get onboardingBody3 =>
      'لا حاجة إلى حساب. كل شيء يُحفظ على هذا الجهاز فقط ويعمل دون إنترنت.';

  @override
  String get onboardingSkip => 'تخطَّ';

  @override
  String get onboardingNext => 'التالي';

  @override
  String get onboardingStart => 'هيا نبدأ';

  @override
  String onboardingPageIndicator(int current, int total) {
    return 'الصفحة $current من $total';
  }

  @override
  String get navToday => 'اليوم';

  @override
  String get navHabits => 'العادات';

  @override
  String get navProgress => 'التقدّم';

  @override
  String get navSettings => 'الإعدادات';

  @override
  String get todaySubtitle => 'أي خطوة اليوم هي خطوة جيدة.';

  @override
  String habitTargets(String target, String smallerTarget) {
    return 'الهدف: $target · الأصغر: $smallerTarget';
  }

  @override
  String get checkInNormal => 'تم';

  @override
  String get checkInSmaller => 'خطوة صغيرة';

  @override
  String get checkInNotDone => 'ليس اليوم';

  @override
  String get habitsEmpty =>
      'لا توجد عادات بعد. اضغط «عادة جديدة» لإضافة أولى عاداتك.';

  @override
  String get habitsAdd => 'عادة جديدة';

  @override
  String get progressLast7Days => 'آخر 7 أيام';

  @override
  String get settingsReminders => 'التذكيرات';

  @override
  String get settingsPrivacy => 'الخصوصية';

  @override
  String get settingsPrivacySummary => 'بياناتك محفوظة على هذا الجهاز فقط.';

  @override
  String habitsArchived(int count) {
    return 'المؤرشفة ($count)';
  }

  @override
  String get todayNoHabits => 'أضف عادة لتبدأ. الصغير يكفي.';

  @override
  String get todayNothingScheduled =>
      'لا شيء مجدول اليوم. الراحة جزء من الخطة أيضًا.';

  @override
  String get habitNewTitle => 'عادة جديدة';

  @override
  String get habitEditTitle => 'تعديل العادة';

  @override
  String get habitNameLabel => 'العادة';

  @override
  String get habitNameHint => 'مثال: المشي';

  @override
  String get habitTargetLabel => 'الهدف المعتاد';

  @override
  String get habitTargetHint => 'مثال: 30 دقيقة';

  @override
  String get habitSmallerLabel => 'الهدف الأصغر';

  @override
  String get habitSmallerHint => 'مثال: 5 دقائق';

  @override
  String get habitSmallerHelper =>
      'النسخة السهلة للأيام المزدحمة أو قليلة الطاقة. وهي تُحتسب أيضًا.';

  @override
  String get habitScheduleLabel => 'الجدول';

  @override
  String get scheduleDaily => 'كل يوم';

  @override
  String get scheduleSelectedDays => 'أيام محددة';

  @override
  String get scheduleNoDaysError => 'اختر يومًا واحدًا على الأقل.';

  @override
  String get habitReminderLabel => 'التذكير';

  @override
  String get habitReminderOff => 'متوقف';

  @override
  String get habitReminderChange => 'تغيير الوقت';

  @override
  String get habitArchive => 'أرشفة';

  @override
  String get habitUnarchive => 'استعادة';

  @override
  String get habitDeleteTitle => 'حذف العادة؟';

  @override
  String habitDeleteBody(String name) {
    return 'سيتم حذف \"$name\" وجميع تسجيلاتها نهائيًا. يمكنك أرشفتها بدلًا من ذلك إن أردت استعادتها لاحقًا.';
  }

  @override
  String get actionSave => 'حفظ';

  @override
  String get actionCancel => 'إلغاء';

  @override
  String get actionDelete => 'حذف';

  @override
  String get fieldRequired => 'يُرجى تعبئة هذا الحقل.';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return 'الهدف حاليًا: $smallerTarget · المعتاد: $target';
  }

  @override
  String get habitFocusSmallerLabel => 'استخدم الهدف الأصغر حاليًا';

  @override
  String get habitFocusSmallerHelper =>
      'مناسب للانطلاق من جديد بعد انقطاع. عُد إلى الهدف المعتاد متى شعرت بالاستعداد.';

  @override
  String recoveryTitle(String name) {
    return 'لنُعد البدء بـ$name بلطف';
  }

  @override
  String get recoveryBody =>
      'لم تتحقق الأيام الأخيرة المخطط لها. لا بأس، هذا يحدث للجميع. كيف تود المتابعة؟';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return 'اجعلها أصغر ($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => 'أبقِ الهدف المعتاد';

  @override
  String get recoveryChangeSchedule => 'تغيير الجدول';

  @override
  String get recoverySkip => 'ليس الآن';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return 'اختيار رائع. $smallerTarget تُحتسب بالكامل.';
  }

  @override
  String get recoveryNormalDone => 'أهلًا بعودتك. أنت قادر على ذلك.';

  @override
  String get progressLast30Days => 'آخر 30 يومًا';

  @override
  String get progressNoHabits => 'أضف عادة لترى تقدّمك هنا.';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return 'حضرتَ $showedUp من أصل $planned مرات مخططة';
  }

  @override
  String get progressFullGoal => 'الهدف كاملًا';

  @override
  String get progressSmallSteps => 'خطوات صغيرة';

  @override
  String get progressComebacks => 'العودات';

  @override
  String get progressNotDone => 'لم يتم';

  @override
  String progressHabitCount(int showedUp, int planned) {
    return '$showedUp/$planned';
  }

  @override
  String progressEncourageComebacks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'عدتَ بعد انقطاع $count مرة. وهذا أهم ما في الأمر.',
      many: 'عدتَ بعد انقطاع $count مرة. وهذا أهم ما في الأمر.',
      few: 'عدتَ بعد انقطاع $count مرات. وهذا أهم ما في الأمر.',
      two: 'عدتَ بعد انقطاع مرتين. وهذا أهم ما في الأمر.',
      one: 'عدتَ بعد انقطاع مرة واحدة. وهذا أهم ما في الأمر.',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall =>
      'الخطوات الصغيرة تُبقي العادة حيّة. أحسنت.';

  @override
  String get progressEncourageAny => 'كل مرة تحضر فيها تُحتسب.';

  @override
  String get progressEncourageStart =>
      'بداية جديدة متاحة دائمًا. خطوة صغيرة واحدة تكفي.';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date: $normal كاملة، $smaller خطوات صغيرة، $missed لم تتم';
  }

  @override
  String get reminderChannelName => 'تذكيرات العادات';

  @override
  String get reminderChannelDescription =>
      'تذكيرات لطيفة في الأوقات التي اخترتها لعاداتك.';

  @override
  String reminderBody(String target, String smallerTarget) {
    return 'وقت مناسب لـ$target. حتى $smallerTarget تُحتسب.';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return 'وقت مناسب لـ$smallerTarget. الخطوات الصغيرة تُحتسب.';
  }

  @override
  String get remindersSummary =>
      'تصل التذكيرات في الوقت المحدد لكل عادة، وفي أيامها المجدولة فقط.';

  @override
  String get remindersPermissionDenied =>
      'الإشعارات متوقفة لهذا التطبيق. فعّلها من إعدادات هاتفك > التطبيقات > Habit Recovery > الإشعارات.';

  @override
  String get remindersUnsupported =>
      'التذكيرات تعمل في تطبيق أندرويد. وهي غير متاحة في هذه المعاينة.';

  @override
  String get notificationsOffTitle => 'الإشعارات متوقفة';

  @override
  String get notificationsOffBody =>
      'لا بأس، فالتطبيق يعمل بدونها. إن أردت التذكيرات لاحقًا، افتح إعدادات هاتفك > التطبيقات > Habit Recovery > الإشعارات وفعّلها.';

  @override
  String get actionOk => 'حسنًا';

  @override
  String get privacyTitle => 'الخصوصية';

  @override
  String get privacyIntro =>
      'تم تصميم Habit Recovery للحفاظ على خصوصية عاداتك.';

  @override
  String get privacyStoredTitle => 'محفوظة على جهازك فقط';

  @override
  String get privacyStoredBody =>
      'تُحفظ عاداتك وجداولك وتسجيلاتك في قاعدة بيانات على هذا الجهاز. ولا تُرفع إلى أي مكان أبدًا.';

  @override
  String get privacyNoAccountTitle => 'بلا حساب وبلا تتبّع';

  @override
  String get privacyNoAccountBody =>
      'لا حاجة إلى التسجيل. لا يجمع التطبيق بيانات شخصية، وليس فيه تحليلات أو ميزات اجتماعية.';

  @override
  String get privacyNotificationsTitle => 'التذكيرات تبقى محلية';

  @override
  String get privacyNotificationsBody =>
      'يجدول هاتفك التذكيرات بنفسه. ولا يُرسل أي شيء من خادم.';

  @override
  String get privacyDeleteTitle => 'أنت المتحكم';

  @override
  String get privacyDeleteBody =>
      'حذف عادة يزيل تسجيلاتها من هذا الجهاز. وإزالة التطبيق تحذف جميع بياناتك.';
}
