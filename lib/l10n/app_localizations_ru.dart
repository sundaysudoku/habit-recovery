// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => 'Привыкайте бережно';

  @override
  String get onboardingBody1 =>
      'Выберите несколько важных для вас привычек. Облегчённая версия тоже засчитывается.';

  @override
  String get onboardingTitle2 => 'Пропустили несколько дней? Начните снова';

  @override
  String get onboardingBody2 =>
      'Здесь нет наказаний. Если вы пропустили несколько дней, мы поможем вернуться с маленького шага.';

  @override
  String get onboardingTitle3 => 'Ваши данные остаются на телефоне';

  @override
  String get onboardingBody3 =>
      'Аккаунт не нужен. Всё хранится только на этом устройстве и работает без интернета.';

  @override
  String get onboardingSkip => 'Пропустить';

  @override
  String get onboardingNext => 'Далее';

  @override
  String get onboardingStart => 'Начать';

  @override
  String onboardingPageIndicator(int current, int total) {
    return 'Страница $current из $total';
  }

  @override
  String get navToday => 'Сегодня';

  @override
  String get navHabits => 'Привычки';

  @override
  String get navProgress => 'Прогресс';

  @override
  String get navSettings => 'Настройки';

  @override
  String get todaySubtitle => 'Любой шаг сегодня — хороший шаг.';

  @override
  String habitTargets(String target, String smallerTarget) {
    return 'Цель: $target · Меньше: $smallerTarget';
  }

  @override
  String get checkInNormal => 'Готово';

  @override
  String get checkInSmaller => 'Малый шаг';

  @override
  String get checkInNotDone => 'Не сегодня';

  @override
  String get habitsEmpty =>
      'Привычек пока нет. Нажмите «Новая привычка», чтобы добавить первую.';

  @override
  String get habitsAdd => 'Новая привычка';

  @override
  String get progressLast7Days => 'Последние 7 дней';

  @override
  String get settingsReminders => 'Напоминания';

  @override
  String get settingsPrivacy => 'Конфиденциальность';

  @override
  String get settingsPrivacySummary =>
      'Ваши данные хранятся только на этом устройстве.';

  @override
  String habitsArchived(int count) {
    return 'В архиве ($count)';
  }

  @override
  String get todayNoHabits =>
      'Добавьте привычку, чтобы начать. Можно с малого.';

  @override
  String get todayNothingScheduled =>
      'На сегодня ничего не запланировано. Отдых — тоже часть плана.';

  @override
  String get habitNewTitle => 'Новая привычка';

  @override
  String get habitEditTitle => 'Изменить привычку';

  @override
  String get habitNameLabel => 'Привычка';

  @override
  String get habitNameHint => 'напр. Прогулка';

  @override
  String get habitTargetLabel => 'Обычная цель';

  @override
  String get habitTargetHint => 'напр. 30 минут';

  @override
  String get habitSmallerLabel => 'Малая цель';

  @override
  String get habitSmallerHint => 'напр. 5 минут';

  @override
  String get habitSmallerHelper =>
      'Лёгкий вариант для занятых дней или дней без сил. Он тоже засчитывается.';

  @override
  String get habitScheduleLabel => 'Расписание';

  @override
  String get scheduleDaily => 'Каждый день';

  @override
  String get scheduleSelectedDays => 'Выбранные дни';

  @override
  String get scheduleNoDaysError => 'Выберите хотя бы один день.';

  @override
  String get habitReminderLabel => 'Напоминание';

  @override
  String get habitReminderOff => 'Выкл.';

  @override
  String get habitReminderChange => 'Изменить время';

  @override
  String get habitArchive => 'В архив';

  @override
  String get habitUnarchive => 'Вернуть';

  @override
  String get habitDeleteTitle => 'Удалить привычку?';

  @override
  String habitDeleteBody(String name) {
    return 'Привычка «$name» и все её отметки будут удалены без возможности восстановления. Лучше отправьте её в архив, если она может понадобиться снова.';
  }

  @override
  String get actionSave => 'Сохранить';

  @override
  String get actionCancel => 'Отмена';

  @override
  String get actionDelete => 'Удалить';

  @override
  String get fieldRequired => 'Пожалуйста, заполните это поле.';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return 'Цель на сейчас: $smallerTarget · Обычная: $target';
  }

  @override
  String get habitFocusSmallerLabel => 'Пока использовать малую цель';

  @override
  String get habitFocusSmallerHelper =>
      'Подходит, чтобы вернуться после перерыва. Вернуться к обычной цели можно в любой момент.';

  @override
  String recoveryTitle(String name) {
    return 'Давайте мягко начнём заново: $name';
  }

  @override
  String get recoveryBody =>
      'Несколько запланированных дней не получилось. Ничего страшного, так бывает у всех. Как вы хотите продолжить?';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return 'Сделать меньше ($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => 'Оставить обычную цель';

  @override
  String get recoveryChangeSchedule => 'Изменить расписание';

  @override
  String get recoverySkip => 'Не сейчас';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return 'Отличный выбор. $smallerTarget засчитывается полностью.';
  }

  @override
  String get recoveryNormalDone => 'С возвращением. У вас всё получится.';

  @override
  String get progressLast30Days => 'Последние 30 дней';

  @override
  String get progressNoHabits =>
      'Добавьте привычку, чтобы увидеть здесь свой прогресс.';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return 'Вы были на связи $showedUp из $planned запланированных раз';
  }

  @override
  String get progressFullGoal => 'Полная цель';

  @override
  String get progressSmallSteps => 'Малые шаги';

  @override
  String get progressComebacks => 'Возвращения';

  @override
  String get progressNotDone => 'Не сделано';

  @override
  String progressHabitCount(int showedUp, int planned) {
    return '$showedUp/$planned';
  }

  @override
  String progressEncourageComebacks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Вы вернулись после перерыва $count раза. Это важнее всего.',
      many: 'Вы вернулись после перерыва $count раз. Это важнее всего.',
      few: 'Вы вернулись после перерыва $count раза. Это важнее всего.',
      one: 'Вы вернулись после перерыва $count раз. Это важнее всего.',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall =>
      'Малые шаги поддерживают привычку. Отличная работа.';

  @override
  String get progressEncourageAny =>
      'Каждый раз, когда вы приходите, это считается.';

  @override
  String get progressEncourageStart =>
      'Новое начало всегда возможно. Одного маленького шага достаточно.';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date: полностью — $normal, малых шагов — $smaller, не сделано — $missed';
  }

  @override
  String get reminderChannelName => 'Напоминания о привычках';

  @override
  String get reminderChannelDescription =>
      'Мягкие напоминания в то время, которое вы выбрали для своих привычек.';

  @override
  String reminderBody(String target, String smallerTarget) {
    return 'Самое время для: $target. Даже $smallerTarget засчитывается.';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return 'Самое время для: $smallerTarget. Малые шаги тоже считаются.';
  }

  @override
  String get remindersSummary =>
      'Напоминания приходят в то время, которое задано для каждой привычки, и только в запланированные дни.';

  @override
  String get remindersPermissionDenied =>
      'Уведомления для этого приложения отключены. Включите их в настройках телефона: Настройки > Приложения > Habit Recovery > Уведомления.';

  @override
  String get remindersUnsupported =>
      'Напоминания работают в приложении для Android. В этой предварительной версии они недоступны.';

  @override
  String get notificationsOffTitle => 'Уведомления выключены';

  @override
  String get notificationsOffBody =>
      'Ничего страшного, приложение работает и без них. Если позже захотите напоминания, откройте на телефоне Настройки > Приложения > Habit Recovery > Уведомления и включите их.';

  @override
  String get actionOk => 'ОК';

  @override
  String get privacyTitle => 'Конфиденциальность';

  @override
  String get privacyIntro =>
      'Habit Recovery создано, чтобы ваши привычки оставались приватными.';

  @override
  String get privacyStoredTitle => 'Хранится только на вашем устройстве';

  @override
  String get privacyStoredBody =>
      'Ваши привычки, расписания и отметки сохраняются в базе данных на этом устройстве. Они никуда не передаются.';

  @override
  String get privacyNoAccountTitle => 'Без аккаунта и слежки';

  @override
  String get privacyNoAccountBody =>
      'Регистрация не нужна. В приложении нет аналитики и социальных функций, и оно не собирает никаких личных данных само.';

  @override
  String get privacyNotificationsTitle => 'Напоминания остаются локальными';

  @override
  String get privacyNotificationsBody =>
      'Напоминания планирует сам телефон. Сервер ничего не отправляет.';

  @override
  String get privacyDeleteTitle => 'Всё под вашим контролем';

  @override
  String get privacyDeleteBody =>
      'Удаление привычки стирает её отметки с этого устройства. Удаление приложения стирает все ваши данные.';

  @override
  String get privacyAdsTitle => 'Одна небольшая реклама';

  @override
  String get privacyAdsBody =>
      'Приложение бесплатное и показывает один небольшой баннер Google AdMob. Для этого Google может использовать рекламный идентификатор вашего устройства. Где это требует закон, сначала мы спросим ваше согласие, и позже вы сможете изменить выбор в настройках. Ваши привычки никогда не передаются рекламодателям.';

  @override
  String get settingsAdChoices => 'Настройки рекламной конфиденциальности';

  @override
  String get settingsAdChoicesSummary =>
      'Посмотрите или измените своё согласие на рекламу.';
}
