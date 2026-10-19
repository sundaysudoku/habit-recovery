// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => 'Bouw gewoontes rustig op';

  @override
  String get onboardingBody1 =>
      'Kies een paar gewoontes die voor jou belangrijk zijn. Een kleinere versie telt ook mee.';

  @override
  String get onboardingTitle2 => 'Een paar dagen gemist? Begin gewoon opnieuw';

  @override
  String get onboardingBody2 =>
      'Hier is geen straf. Als je een paar dagen mist, helpen we je opnieuw te beginnen met een kleinere stap.';

  @override
  String get onboardingTitle3 => 'Je gegevens blijven op je telefoon';

  @override
  String get onboardingBody3 =>
      'Geen account nodig. Alles wordt alleen op dit apparaat opgeslagen en werkt offline.';

  @override
  String get onboardingSkip => 'Overslaan';

  @override
  String get onboardingNext => 'Volgende';

  @override
  String get onboardingStart => 'Aan de slag';

  @override
  String onboardingPageIndicator(int current, int total) {
    return 'Pagina $current van $total';
  }

  @override
  String get navToday => 'Vandaag';

  @override
  String get navHabits => 'Gewoontes';

  @override
  String get navProgress => 'Voortgang';

  @override
  String get navSettings => 'Instellingen';

  @override
  String get todaySubtitle => 'Elke stap vandaag is een goede stap.';

  @override
  String habitTargets(String target, String smallerTarget) {
    return 'Doel: $target · Kleiner: $smallerTarget';
  }

  @override
  String get checkInNormal => 'Gedaan';

  @override
  String get checkInSmaller => 'Kleine stap';

  @override
  String get checkInNotDone => 'Vandaag niet';

  @override
  String get habitsEmpty =>
      'Nog geen gewoontes. Tik op Nieuwe gewoonte om je eerste toe te voegen.';

  @override
  String get habitsAdd => 'Nieuwe gewoonte';

  @override
  String get progressLast7Days => 'Laatste 7 dagen';

  @override
  String get settingsReminders => 'Herinneringen';

  @override
  String get settingsPrivacy => 'Privacy';

  @override
  String get settingsPrivacySummary =>
      'Je gegevens worden alleen op dit apparaat opgeslagen.';

  @override
  String habitsArchived(int count) {
    return 'Gearchiveerd ($count)';
  }

  @override
  String get todayNoHabits =>
      'Voeg een gewoonte toe om te beginnen. Klein is prima.';

  @override
  String get todayNothingScheduled =>
      'Vandaag staat er niets gepland. Rust hoort ook bij het plan.';

  @override
  String get habitNewTitle => 'Nieuwe gewoonte';

  @override
  String get habitEditTitle => 'Gewoonte bewerken';

  @override
  String get habitNameLabel => 'Gewoonte';

  @override
  String get habitNameHint => 'bijv. Wandelen';

  @override
  String get habitTargetLabel => 'Normaal doel';

  @override
  String get habitTargetHint => 'bijv. 30 minuten';

  @override
  String get habitSmallerLabel => 'Kleiner doel';

  @override
  String get habitSmallerHint => 'bijv. 5 minuten';

  @override
  String get habitSmallerHelper =>
      'De makkelijke versie voor drukke dagen of dagen met weinig energie. Het telt gewoon mee.';

  @override
  String get habitScheduleLabel => 'Schema';

  @override
  String get scheduleDaily => 'Elke dag';

  @override
  String get scheduleSelectedDays => 'Geselecteerde dagen';

  @override
  String get scheduleNoDaysError => 'Kies minstens één dag.';

  @override
  String get habitReminderLabel => 'Herinnering';

  @override
  String get habitReminderOff => 'Uit';

  @override
  String get habitReminderChange => 'Tijd wijzigen';

  @override
  String get habitArchive => 'Archiveren';

  @override
  String get habitUnarchive => 'Herstellen';

  @override
  String get habitDeleteTitle => 'Gewoonte verwijderen?';

  @override
  String habitDeleteBody(String name) {
    return '\"$name\" en alle check-ins worden definitief verwijderd. Archiveer de gewoonte liever als je hem misschien terug wilt.';
  }

  @override
  String get actionSave => 'Opslaan';

  @override
  String get actionCancel => 'Annuleren';

  @override
  String get actionDelete => 'Verwijderen';

  @override
  String get fieldRequired => 'Vul dit alsjeblieft in.';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return 'Doel voor nu: $smallerTarget · Normaal: $target';
  }

  @override
  String get habitFocusSmallerLabel => 'Gebruik voorlopig het kleinere doel';

  @override
  String get habitFocusSmallerHelper =>
      'Fijn om weer te beginnen na een pauze. Ga terug zodra je er klaar voor bent.';

  @override
  String recoveryTitle(String name) {
    return 'Laten we $name rustig opnieuw beginnen';
  }

  @override
  String get recoveryBody =>
      'De laatste geplande dagen zijn niet gelukt. Dat is helemaal oké, dat overkomt iedereen. Hoe wil je verdergaan?';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return 'Maak het kleiner ($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => 'Houd het normale doel';

  @override
  String get recoveryChangeSchedule => 'Schema wijzigen';

  @override
  String get recoverySkip => 'Nu niet';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return 'Goede keuze. $smallerTarget telt volledig mee.';
  }

  @override
  String get recoveryNormalDone => 'Welkom terug. Je kunt dit.';

  @override
  String get progressLast30Days => 'Laatste 30 dagen';

  @override
  String get progressNoHabits =>
      'Voeg een gewoonte toe om hier je voortgang te zien.';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return 'Je was er $showedUp van de $planned geplande keren';
  }

  @override
  String get progressFullGoal => 'Volledig doel';

  @override
  String get progressSmallSteps => 'Kleine stappen';

  @override
  String get progressComebacks => 'Comebacks';

  @override
  String get progressNotDone => 'Niet gedaan';

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
          'Je bent $count keer teruggekomen na een pauze. Dat is het belangrijkste.',
      one:
          'Je bent één keer teruggekomen na een pauze. Dat is het belangrijkste.',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall =>
      'Kleine stappen houden de gewoonte levend. Goed bezig.';

  @override
  String get progressEncourageAny => 'Elke keer dat je erbij bent, telt.';

  @override
  String get progressEncourageStart =>
      'Een nieuwe start kan altijd. Eén kleine stap is genoeg.';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date: $normal volledig, $smaller kleine stappen, $missed niet gedaan';
  }

  @override
  String get reminderChannelName => 'Gewoonteherinneringen';

  @override
  String get reminderChannelDescription =>
      'Zachte herinneringen op de tijden die je voor je gewoontes hebt gekozen.';

  @override
  String reminderBody(String target, String smallerTarget) {
    return 'Een goed moment voor $target. Ook $smallerTarget telt mee.';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return 'Een goed moment voor $smallerTarget. Kleine stappen tellen.';
  }

  @override
  String get remindersSummary =>
      'Herinneringen komen op de ingestelde tijd van elke gewoonte, alleen op de geplande dagen.';

  @override
  String get remindersPermissionDenied =>
      'Meldingen staan uit voor deze app. Zet ze aan via de Instellingen van je telefoon > Apps > Habit Recovery > Meldingen.';

  @override
  String get remindersUnsupported =>
      'Herinneringen werken in de Android-app. In deze preview zijn ze niet beschikbaar.';

  @override
  String get notificationsOffTitle => 'Meldingen staan uit';

  @override
  String get notificationsOffBody =>
      'Dat is prima, de app werkt ook zonder. Wil je later toch herinneringen, open dan de Instellingen van je telefoon > Apps > Habit Recovery > Meldingen en zet ze aan.';

  @override
  String get actionOk => 'OK';

  @override
  String get privacyTitle => 'Privacy';

  @override
  String get privacyIntro =>
      'Habit Recovery is gemaakt om je gewoontes privé te houden.';

  @override
  String get privacyStoredTitle => 'Alleen op je apparaat opgeslagen';

  @override
  String get privacyStoredBody =>
      'Je gewoontes, schema\'s en check-ins worden in een database op dit apparaat bewaard. Ze worden nergens naartoe geüpload.';

  @override
  String get privacyNoAccountTitle => 'Geen account, geen tracking';

  @override
  String get privacyNoAccountBody =>
      'Je hoeft je niet aan te melden. De app verzamelt geen persoonlijke gegevens en heeft geen analyse of sociale functies.';

  @override
  String get privacyNotificationsTitle => 'Herinneringen blijven lokaal';

  @override
  String get privacyNotificationsBody =>
      'Herinneringen worden door je telefoon zelf gepland. Er wordt niets vanaf een server verstuurd.';

  @override
  String get privacyDeleteTitle => 'Jij houdt de controle';

  @override
  String get privacyDeleteBody =>
      'Als je een gewoonte verwijdert, worden de check-ins van dit apparaat gewist. Als je de app verwijdert, worden al je gegevens gewist.';
}
