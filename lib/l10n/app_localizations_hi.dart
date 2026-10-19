// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => 'आदतें धीरे-धीरे बनाएँ';

  @override
  String get onboardingBody1 =>
      'कुछ ऐसी आदतें चुनें जो आपके लिए मायने रखती हैं। छोटा रूप करना भी गिना जाता है।';

  @override
  String get onboardingTitle2 => 'कुछ दिन छूट गए? फिर से शुरू करें';

  @override
  String get onboardingBody2 =>
      'यहाँ कोई सज़ा नहीं है। जब कुछ दिन छूट जाएँ, तो हम एक छोटे कदम से दोबारा शुरू करने में मदद करते हैं।';

  @override
  String get onboardingTitle3 => 'आपका डेटा आपके फ़ोन में ही रहता है';

  @override
  String get onboardingBody3 =>
      'खाते की ज़रूरत नहीं। सब कुछ सिर्फ़ इसी डिवाइस पर सहेजा जाता है और ऑफ़लाइन भी चलता है।';

  @override
  String get onboardingSkip => 'छोड़ें';

  @override
  String get onboardingNext => 'आगे';

  @override
  String get onboardingStart => 'शुरू करें';

  @override
  String onboardingPageIndicator(int current, int total) {
    return 'पृष्ठ $current / $total';
  }

  @override
  String get navToday => 'आज';

  @override
  String get navHabits => 'आदतें';

  @override
  String get navProgress => 'प्रगति';

  @override
  String get navSettings => 'सेटिंग्स';

  @override
  String get todaySubtitle => 'आज का हर कदम एक अच्छा कदम है।';

  @override
  String habitTargets(String target, String smallerTarget) {
    return 'लक्ष्य: $target · छोटा: $smallerTarget';
  }

  @override
  String get checkInNormal => 'हो गया';

  @override
  String get checkInSmaller => 'छोटा कदम';

  @override
  String get checkInNotDone => 'आज नहीं';

  @override
  String get habitsEmpty =>
      'अभी कोई आदत नहीं है। अपनी पहली आदत जोड़ने के लिए \"नई आदत\" दबाएँ।';

  @override
  String get habitsAdd => 'नई आदत';

  @override
  String get progressLast7Days => 'पिछले 7 दिन';

  @override
  String get settingsReminders => 'रिमाइंडर';

  @override
  String get settingsPrivacy => 'गोपनीयता';

  @override
  String get settingsPrivacySummary =>
      'आपका डेटा सिर्फ़ इसी डिवाइस पर सहेजा जाता है।';

  @override
  String habitsArchived(int count) {
    return 'संग्रहीत ($count)';
  }

  @override
  String get todayNoHabits => 'शुरू करने के लिए एक आदत जोड़ें। छोटी भी चलेगी।';

  @override
  String get todayNothingScheduled =>
      'आज कुछ तय नहीं है। आराम भी योजना का हिस्सा है।';

  @override
  String get habitNewTitle => 'नई आदत';

  @override
  String get habitEditTitle => 'आदत बदलें';

  @override
  String get habitNameLabel => 'आदत';

  @override
  String get habitNameHint => 'जैसे: सैर';

  @override
  String get habitTargetLabel => 'सामान्य लक्ष्य';

  @override
  String get habitTargetHint => 'जैसे: 30 मिनट';

  @override
  String get habitSmallerLabel => 'छोटा लक्ष्य';

  @override
  String get habitSmallerHint => 'जैसे: 5 मिनट';

  @override
  String get habitSmallerHelper =>
      'व्यस्त या कम ऊर्जा वाले दिनों के लिए आसान रूप। यह भी गिना जाता है।';

  @override
  String get habitScheduleLabel => 'समय-सारणी';

  @override
  String get scheduleDaily => 'हर दिन';

  @override
  String get scheduleSelectedDays => 'चुने हुए दिन';

  @override
  String get scheduleNoDaysError => 'कम से कम एक दिन चुनें।';

  @override
  String get habitReminderLabel => 'रिमाइंडर';

  @override
  String get habitReminderOff => 'बंद';

  @override
  String get habitReminderChange => 'समय बदलें';

  @override
  String get habitArchive => 'संग्रहीत करें';

  @override
  String get habitUnarchive => 'वापस लाएँ';

  @override
  String get habitDeleteTitle => 'आदत हटाएँ?';

  @override
  String habitDeleteBody(String name) {
    return '\"$name\" और उसके सभी चेक-इन हमेशा के लिए हट जाएँगे। अगर आप इसे वापस चाहते हों, तो इसके बजाय इसे संग्रहीत कर लें।';
  }

  @override
  String get actionSave => 'सहेजें';

  @override
  String get actionCancel => 'रद्द करें';

  @override
  String get actionDelete => 'हटाएँ';

  @override
  String get fieldRequired => 'कृपया इसे भरें।';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return 'अभी का लक्ष्य: $smallerTarget · सामान्य: $target';
  }

  @override
  String get habitFocusSmallerLabel => 'अभी छोटा लक्ष्य अपनाएँ';

  @override
  String get habitFocusSmallerHelper =>
      'ब्रेक के बाद दोबारा शुरू करने के लिए अच्छा है। जब तैयार महसूस करें, वापस बदल लें।';

  @override
  String recoveryTitle(String name) {
    return 'चलिए $name को धीरे से फिर शुरू करें';
  }

  @override
  String get recoveryBody =>
      'पिछले कुछ तय दिन नहीं हो पाए। कोई बात नहीं, ऐसा सबके साथ होता है। आप आगे कैसे बढ़ना चाहेंगे?';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return 'इसे छोटा करें ($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => 'सामान्य लक्ष्य रखें';

  @override
  String get recoveryChangeSchedule => 'समय-सारणी बदलें';

  @override
  String get recoverySkip => 'अभी नहीं';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return 'बढ़िया चुनाव। $smallerTarget पूरा गिना जाता है।';
  }

  @override
  String get recoveryNormalDone => 'वापसी पर स्वागत है। आप यह कर सकते हैं।';

  @override
  String get progressLast30Days => 'पिछले 30 दिन';

  @override
  String get progressNoHabits => 'अपनी प्रगति यहाँ देखने के लिए एक आदत जोड़ें।';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return 'आप $planned तय मौकों में से $showedUp बार आए';
  }

  @override
  String get progressFullGoal => 'पूरा लक्ष्य';

  @override
  String get progressSmallSteps => 'छोटे कदम';

  @override
  String get progressComebacks => 'वापसियाँ';

  @override
  String get progressNotDone => 'नहीं हुआ';

  @override
  String progressHabitCount(int showedUp, int planned) {
    return '$showedUp/$planned';
  }

  @override
  String progressEncourageComebacks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'आप ब्रेक के बाद $count बार वापस आए। यही सबसे ज़रूरी है।',
      one: 'आप ब्रेक के बाद एक बार वापस आए। यही सबसे ज़रूरी है।',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall =>
      'छोटे कदम आदत को ज़िंदा रखते हैं। शाबाश।';

  @override
  String get progressEncourageAny => 'आप जब भी आते हैं, वह गिना जाता है।';

  @override
  String get progressEncourageStart =>
      'नई शुरुआत हमेशा मुमकिन है। एक छोटा कदम काफ़ी है।';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date: $normal पूरे, $smaller छोटे कदम, $missed नहीं हुए';
  }

  @override
  String get reminderChannelName => 'आदत रिमाइंडर';

  @override
  String get reminderChannelDescription =>
      'आपकी आदतों के लिए आपके चुने समय पर हल्के रिमाइंडर।';

  @override
  String reminderBody(String target, String smallerTarget) {
    return '$target के लिए अच्छा समय है। $smallerTarget भी गिना जाता है।';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return '$smallerTarget के लिए अच्छा समय है। छोटे कदम भी गिने जाते हैं।';
  }

  @override
  String get remindersSummary =>
      'रिमाइंडर हर आदत के तय समय पर, सिर्फ़ उसके निर्धारित दिनों में आते हैं।';

  @override
  String get remindersPermissionDenied =>
      'इस ऐप के लिए नोटिफ़िकेशन बंद हैं। उन्हें अपने फ़ोन की सेटिंग्स > ऐप्स > Habit Recovery > नोटिफ़िकेशन में चालू करें।';

  @override
  String get remindersUnsupported =>
      'रिमाइंडर Android ऐप में काम करते हैं। इस प्रीव्यू में वे उपलब्ध नहीं हैं।';

  @override
  String get notificationsOffTitle => 'नोटिफ़िकेशन बंद हैं';

  @override
  String get notificationsOffBody =>
      'कोई बात नहीं, ऐप उनके बिना भी चलता है। अगर बाद में रिमाइंडर चाहें, तो अपने फ़ोन की सेटिंग्स > ऐप्स > Habit Recovery > नोटिफ़िकेशन खोलकर उन्हें चालू करें।';

  @override
  String get actionOk => 'ठीक है';

  @override
  String get privacyTitle => 'गोपनीयता';

  @override
  String get privacyIntro =>
      'Habit Recovery को इस तरह बनाया गया है कि आपकी आदतें निजी रहें।';

  @override
  String get privacyStoredTitle => 'सिर्फ़ आपके डिवाइस पर सहेजा गया';

  @override
  String get privacyStoredBody =>
      'आपकी आदतें, समय-सारणी और चेक-इन इस डिवाइस के डेटाबेस में सहेजे जाते हैं। उन्हें कहीं अपलोड नहीं किया जाता।';

  @override
  String get privacyNoAccountTitle => 'न खाता, न ट्रैकिंग';

  @override
  String get privacyNoAccountBody =>
      'साइन अप करने की ज़रूरत नहीं। ऐप निजी डेटा इकट्ठा नहीं करता और इसमें कोई एनालिटिक्स या सोशल फ़ीचर नहीं हैं।';

  @override
  String get privacyNotificationsTitle => 'रिमाइंडर स्थानीय रहते हैं';

  @override
  String get privacyNotificationsBody =>
      'रिमाइंडर आपका फ़ोन खुद शेड्यूल करता है। किसी सर्वर से कुछ नहीं भेजा जाता।';

  @override
  String get privacyDeleteTitle => 'नियंत्रण आपके हाथ में है';

  @override
  String get privacyDeleteBody =>
      'आदत हटाने से उसके चेक-इन इस डिवाइस से हट जाते हैं। ऐप अनइंस्टॉल करने से आपका सारा डेटा हट जाता है।';
}
