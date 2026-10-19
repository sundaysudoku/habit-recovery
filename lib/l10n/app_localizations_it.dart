// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => 'Costruisci le abitudini con gentilezza';

  @override
  String get onboardingBody1 =>
      'Scegli alcune abitudini che contano per te. Anche una versione più piccola conta.';

  @override
  String get onboardingTitle2 => 'Hai saltato qualche giorno? Riparti da qui';

  @override
  String get onboardingBody2 =>
      'Qui non ci sono punizioni. Quando salti qualche giorno, ti aiutiamo a ripartire con un passo più piccolo.';

  @override
  String get onboardingTitle3 => 'I tuoi dati restano sul tuo telefono';

  @override
  String get onboardingBody3 =>
      'Nessun account necessario. Tutto è salvato solo su questo dispositivo e funziona offline.';

  @override
  String get onboardingSkip => 'Salta';

  @override
  String get onboardingNext => 'Avanti';

  @override
  String get onboardingStart => 'Inizia';

  @override
  String onboardingPageIndicator(int current, int total) {
    return 'Pagina $current di $total';
  }

  @override
  String get navToday => 'Oggi';

  @override
  String get navHabits => 'Abitudini';

  @override
  String get navProgress => 'Progressi';

  @override
  String get navSettings => 'Impostazioni';

  @override
  String get todaySubtitle => 'Ogni passo di oggi è un buon passo.';

  @override
  String habitTargets(String target, String smallerTarget) {
    return 'Obiettivo: $target · Ridotto: $smallerTarget';
  }

  @override
  String get checkInNormal => 'Fatto';

  @override
  String get checkInSmaller => 'Passo piccolo';

  @override
  String get checkInNotDone => 'Oggi no';

  @override
  String get habitsEmpty =>
      'Ancora nessuna abitudine. Tocca Nuova abitudine per aggiungere la prima.';

  @override
  String get habitsAdd => 'Nuova abitudine';

  @override
  String get progressLast7Days => 'Ultimi 7 giorni';

  @override
  String get settingsReminders => 'Promemoria';

  @override
  String get settingsPrivacy => 'Privacy';

  @override
  String get settingsPrivacySummary =>
      'I tuoi dati sono salvati solo su questo dispositivo.';

  @override
  String habitsArchived(int count) {
    return 'Archiviate ($count)';
  }

  @override
  String get todayNoHabits =>
      'Aggiungi un\'abitudine per iniziare. Anche in piccolo va bene.';

  @override
  String get todayNothingScheduled =>
      'Oggi non c\'è nulla in programma. Anche il riposo fa parte del piano.';

  @override
  String get habitNewTitle => 'Nuova abitudine';

  @override
  String get habitEditTitle => 'Modifica abitudine';

  @override
  String get habitNameLabel => 'Abitudine';

  @override
  String get habitNameHint => 'es. Camminare';

  @override
  String get habitTargetLabel => 'Obiettivo normale';

  @override
  String get habitTargetHint => 'es. 30 minuti';

  @override
  String get habitSmallerLabel => 'Obiettivo ridotto';

  @override
  String get habitSmallerHint => 'es. 5 minuti';

  @override
  String get habitSmallerHelper =>
      'La versione facile per i giorni pieni o con poca energia. Conta comunque.';

  @override
  String get habitScheduleLabel => 'Programma';

  @override
  String get scheduleDaily => 'Ogni giorno';

  @override
  String get scheduleSelectedDays => 'Giorni scelti';

  @override
  String get scheduleNoDaysError => 'Scegli almeno un giorno.';

  @override
  String get habitReminderLabel => 'Promemoria';

  @override
  String get habitReminderOff => 'No';

  @override
  String get habitReminderChange => 'Cambia orario';

  @override
  String get habitArchive => 'Archivia';

  @override
  String get habitUnarchive => 'Ripristina';

  @override
  String get habitDeleteTitle => 'Eliminare l\'abitudine?';

  @override
  String habitDeleteBody(String name) {
    return '«$name» e tutti i suoi check-in verranno eliminati definitivamente. Archiviala, se pensi di volerla riavere.';
  }

  @override
  String get actionSave => 'Salva';

  @override
  String get actionCancel => 'Annulla';

  @override
  String get actionDelete => 'Elimina';

  @override
  String get fieldRequired => 'Compila questo campo, per favore.';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return 'Obiettivo per ora: $smallerTarget · Normale: $target';
  }

  @override
  String get habitFocusSmallerLabel => 'Usa l\'obiettivo ridotto per ora';

  @override
  String get habitFocusSmallerHelper =>
      'Utile per ripartire dopo una pausa. Torna a quello normale quando ti senti pronto.';

  @override
  String recoveryTitle(String name) {
    return 'Ripartiamo con $name con calma';
  }

  @override
  String get recoveryBody =>
      'Gli ultimi giorni previsti non sono andati come speravi. Va bene, succede a tutti. Come vuoi proseguire?';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return 'Riduci ($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => 'Mantieni l\'obiettivo normale';

  @override
  String get recoveryChangeSchedule => 'Cambia programma';

  @override
  String get recoverySkip => 'Non ora';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return 'Ottima scelta. $smallerTarget conta del tutto.';
  }

  @override
  String get recoveryNormalDone => 'Bentornato. Ce la puoi fare.';

  @override
  String get progressLast30Days => 'Ultimi 30 giorni';

  @override
  String get progressNoHabits =>
      'Aggiungi un\'abitudine per vedere qui i tuoi progressi.';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return 'Ci sei stato $showedUp volte su $planned previste';
  }

  @override
  String get progressFullGoal => 'Obiettivo completo';

  @override
  String get progressSmallSteps => 'Passi piccoli';

  @override
  String get progressComebacks => 'Ripartenze';

  @override
  String get progressNotDone => 'Non fatto';

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
          'Sei ripartito dopo una pausa $count volte. È la cosa che conta di più.',
      one:
          'Sei ripartito dopo una pausa una volta. È la cosa che conta di più.',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall =>
      'I passi piccoli tengono viva l\'abitudine. Bel lavoro.';

  @override
  String get progressEncourageAny => 'Ogni volta che ci sei conta.';

  @override
  String get progressEncourageStart =>
      'Si può sempre ricominciare. Un piccolo passo basta.';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date: $normal completi, $smaller passi piccoli, $missed non fatti';
  }

  @override
  String get reminderChannelName => 'Promemoria abitudini';

  @override
  String get reminderChannelDescription =>
      'Promemoria gentili agli orari che hai scelto per le tue abitudini.';

  @override
  String reminderBody(String target, String smallerTarget) {
    return 'È un buon momento per $target. Anche $smallerTarget conta.';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return 'È un buon momento per $smallerTarget. I passi piccoli contano.';
  }

  @override
  String get remindersSummary =>
      'I promemoria arrivano all\'orario impostato per ogni abitudine, solo nei giorni previsti.';

  @override
  String get remindersPermissionDenied =>
      'Le notifiche sono disattivate per questa app. Attivale in Impostazioni > App > Habit Recovery > Notifiche sul telefono.';

  @override
  String get remindersUnsupported =>
      'I promemoria funzionano nell\'app Android. Non sono disponibili in questa anteprima.';

  @override
  String get notificationsOffTitle => 'Le notifiche sono disattivate';

  @override
  String get notificationsOffBody =>
      'Va bene, l\'app funziona anche senza. Se più avanti vorrai i promemoria, apri Impostazioni > App > Habit Recovery > Notifiche sul telefono e attivale.';

  @override
  String get actionOk => 'OK';

  @override
  String get privacyTitle => 'Privacy';

  @override
  String get privacyIntro =>
      'Habit Recovery è pensata per mantenere private le tue abitudini.';

  @override
  String get privacyStoredTitle => 'Salvati solo sul tuo dispositivo';

  @override
  String get privacyStoredBody =>
      'Le tue abitudini, i programmi e i check-in sono salvati in un database su questo dispositivo. Non vengono mai caricati da nessuna parte.';

  @override
  String get privacyNoAccountTitle => 'Nessun account, nessun tracciamento';

  @override
  String get privacyNoAccountBody =>
      'Non devi registrarti. L\'app non raccoglie dati personali e non ha analisi né funzioni social.';

  @override
  String get privacyNotificationsTitle => 'I promemoria restano in locale';

  @override
  String get privacyNotificationsBody =>
      'I promemoria sono programmati dal telefono stesso. Nulla viene inviato da un server.';

  @override
  String get privacyDeleteTitle => 'Hai il controllo';

  @override
  String get privacyDeleteBody =>
      'Eliminando un\'abitudine ne rimuovi i check-in da questo dispositivo. Disinstallando l\'app rimuovi tutti i tuoi dati.';
}
