// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => 'Baue Gewohnheiten sanft auf';

  @override
  String get onboardingBody1 =>
      'Wähle ein paar Gewohnheiten, die dir wichtig sind. Auch eine kleinere Version zählt.';

  @override
  String get onboardingTitle2 => 'Ein paar Tage verpasst? Fang einfach neu an';

  @override
  String get onboardingBody2 =>
      'Hier gibt es keine Strafen. Wenn du ein paar Tage ausgelassen hast, helfen wir dir mit einem kleineren Schritt beim Neustart.';

  @override
  String get onboardingTitle3 => 'Deine Daten bleiben auf deinem Handy';

  @override
  String get onboardingBody3 =>
      'Kein Konto nötig. Alles wird nur auf diesem Gerät gespeichert und funktioniert offline.';

  @override
  String get onboardingSkip => 'Überspringen';

  @override
  String get onboardingNext => 'Weiter';

  @override
  String get onboardingStart => 'Los geht\'s';

  @override
  String onboardingPageIndicator(int current, int total) {
    return 'Seite $current von $total';
  }

  @override
  String get navToday => 'Heute';

  @override
  String get navHabits => 'Gewohnheiten';

  @override
  String get navProgress => 'Fortschritt';

  @override
  String get navSettings => 'Einstellungen';

  @override
  String get todaySubtitle => 'Jeder Schritt heute ist ein guter Schritt.';

  @override
  String habitTargets(String target, String smallerTarget) {
    return 'Ziel: $target · Kleiner: $smallerTarget';
  }

  @override
  String get checkInNormal => 'Erledigt';

  @override
  String get checkInSmaller => 'Kleiner Schritt';

  @override
  String get checkInNotDone => 'Heute nicht';

  @override
  String get habitsEmpty =>
      'Noch keine Gewohnheiten. Tippe auf „Neue Gewohnheit“, um deine erste hinzuzufügen.';

  @override
  String get habitsAdd => 'Neue Gewohnheit';

  @override
  String get progressLast7Days => 'Letzte 7 Tage';

  @override
  String get settingsReminders => 'Erinnerungen';

  @override
  String get settingsPrivacy => 'Datenschutz';

  @override
  String get settingsPrivacySummary =>
      'Deine Daten werden nur auf diesem Gerät gespeichert.';

  @override
  String habitsArchived(int count) {
    return 'Archiviert ($count)';
  }

  @override
  String get todayNoHabits =>
      'Füge eine Gewohnheit hinzu, um zu starten. Klein ist völlig okay.';

  @override
  String get todayNothingScheduled =>
      'Heute ist nichts geplant. Ruhe gehört auch zum Plan.';

  @override
  String get habitNewTitle => 'Neue Gewohnheit';

  @override
  String get habitEditTitle => 'Gewohnheit bearbeiten';

  @override
  String get habitNameLabel => 'Gewohnheit';

  @override
  String get habitNameHint => 'z. B. Spazieren gehen';

  @override
  String get habitTargetLabel => 'Normales Ziel';

  @override
  String get habitTargetHint => 'z. B. 30 Minuten';

  @override
  String get habitSmallerLabel => 'Kleineres Ziel';

  @override
  String get habitSmallerHint => 'z. B. 5 Minuten';

  @override
  String get habitSmallerHelper =>
      'Die leichte Version für stressige oder energiearme Tage. Sie zählt trotzdem.';

  @override
  String get habitScheduleLabel => 'Zeitplan';

  @override
  String get scheduleDaily => 'Jeden Tag';

  @override
  String get scheduleSelectedDays => 'Ausgewählte Tage';

  @override
  String get scheduleNoDaysError => 'Wähle mindestens einen Tag aus.';

  @override
  String get habitReminderLabel => 'Erinnerung';

  @override
  String get habitReminderOff => 'Aus';

  @override
  String get habitReminderChange => 'Zeit ändern';

  @override
  String get habitArchive => 'Archivieren';

  @override
  String get habitUnarchive => 'Wiederherstellen';

  @override
  String get habitDeleteTitle => 'Gewohnheit löschen?';

  @override
  String habitDeleteBody(String name) {
    return '„$name“ und alle Check-ins werden endgültig gelöscht. Archiviere sie stattdessen, falls du sie vielleicht wieder brauchst.';
  }

  @override
  String get actionSave => 'Speichern';

  @override
  String get actionCancel => 'Abbrechen';

  @override
  String get actionDelete => 'Löschen';

  @override
  String get fieldRequired => 'Bitte fülle dieses Feld aus.';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return 'Ziel für jetzt: $smallerTarget · Normal: $target';
  }

  @override
  String get habitFocusSmallerLabel => 'Vorerst das kleinere Ziel nutzen';

  @override
  String get habitFocusSmallerHelper =>
      'Gut für den Neustart nach einer Pause. Wechsle zurück, sobald du dich bereit fühlst.';

  @override
  String recoveryTitle(String name) {
    return 'Starten wir $name sanft neu';
  }

  @override
  String get recoveryBody =>
      'Die letzten geplanten Tage hat es nicht geklappt. Das ist völlig okay, das passiert jedem. Wie möchtest du weitermachen?';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return 'Kleiner machen ($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => 'Normales Ziel behalten';

  @override
  String get recoveryChangeSchedule => 'Zeitplan ändern';

  @override
  String get recoverySkip => 'Jetzt nicht';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return 'Gute Wahl. $smallerTarget zählt voll.';
  }

  @override
  String get recoveryNormalDone => 'Willkommen zurück. Du schaffst das.';

  @override
  String get progressLast30Days => 'Letzte 30 Tage';

  @override
  String get progressNoHabits =>
      'Füge eine Gewohnheit hinzu, um hier deinen Fortschritt zu sehen.';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return 'Du warst $showedUp von $planned geplanten Malen dabei';
  }

  @override
  String get progressFullGoal => 'Volles Ziel';

  @override
  String get progressSmallSteps => 'Kleine Schritte';

  @override
  String get progressComebacks => 'Comebacks';

  @override
  String get progressNotDone => 'Nicht geschafft';

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
          'Du bist $count Mal nach einer Pause zurückgekommen. Das ist das Wichtigste.',
      one:
          'Du bist einmal nach einer Pause zurückgekommen. Das ist das Wichtigste.',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall =>
      'Kleine Schritte halten die Gewohnheit am Leben. Schön gemacht.';

  @override
  String get progressEncourageAny => 'Jedes Mal, wenn du dabei bist, zählt.';

  @override
  String get progressEncourageStart =>
      'Ein Neustart ist jederzeit möglich. Ein kleiner Schritt reicht.';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date: $normal voll, $smaller kleine Schritte, $missed nicht geschafft';
  }

  @override
  String get reminderChannelName => 'Gewohnheits-Erinnerungen';

  @override
  String get reminderChannelDescription =>
      'Sanfte Erinnerungen zu den Zeiten, die du für deine Gewohnheiten gewählt hast.';

  @override
  String reminderBody(String target, String smallerTarget) {
    return 'Eine gute Zeit für $target. Auch $smallerTarget zählt.';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return 'Eine gute Zeit für $smallerTarget. Kleine Schritte zählen.';
  }

  @override
  String get remindersSummary =>
      'Erinnerungen kommen zur eingestellten Zeit jeder Gewohnheit, nur an den geplanten Tagen.';

  @override
  String get remindersPermissionDenied =>
      'Benachrichtigungen sind für diese App ausgeschaltet. Schalte sie in den Einstellungen deines Handys unter Apps > Habit Recovery > Benachrichtigungen ein.';

  @override
  String get remindersUnsupported =>
      'Erinnerungen funktionieren in der Android-App. In dieser Vorschau sind sie nicht verfügbar.';

  @override
  String get notificationsOffTitle => 'Benachrichtigungen sind aus';

  @override
  String get notificationsOffBody =>
      'Das ist in Ordnung, die App funktioniert auch ohne. Wenn du später Erinnerungen möchtest, öffne die Einstellungen deines Handys > Apps > Habit Recovery > Benachrichtigungen und schalte sie ein.';

  @override
  String get actionOk => 'OK';

  @override
  String get privacyTitle => 'Datenschutz';

  @override
  String get privacyIntro =>
      'Habit Recovery ist so gebaut, dass deine Gewohnheiten privat bleiben.';

  @override
  String get privacyStoredTitle => 'Nur auf deinem Gerät gespeichert';

  @override
  String get privacyStoredBody =>
      'Deine Gewohnheiten, Zeitpläne und Check-ins werden in einer Datenbank auf diesem Gerät gespeichert. Sie werden nirgendwohin hochgeladen.';

  @override
  String get privacyNoAccountTitle => 'Kein Konto, kein Tracking';

  @override
  String get privacyNoAccountBody =>
      'Du musst dich nicht registrieren. Die App sammelt keine persönlichen Daten und hat weder Analysen noch soziale Funktionen.';

  @override
  String get privacyNotificationsTitle => 'Erinnerungen bleiben lokal';

  @override
  String get privacyNotificationsBody =>
      'Erinnerungen werden von deinem Handy selbst geplant. Es wird nichts von einem Server gesendet.';

  @override
  String get privacyDeleteTitle => 'Du hast die Kontrolle';

  @override
  String get privacyDeleteBody =>
      'Wenn du eine Gewohnheit löschst, werden ihre Check-ins von diesem Gerät entfernt. Wenn du die App deinstallierst, werden alle deine Daten entfernt.';
}
