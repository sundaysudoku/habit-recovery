// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => 'Créez des habitudes en douceur';

  @override
  String get onboardingBody1 =>
      'Choisissez quelques habitudes qui comptent pour vous. Faire une version plus petite compte aussi.';

  @override
  String get onboardingTitle2 => 'Quelques jours manqués ? Reprenez';

  @override
  String get onboardingBody2 =>
      'Ici, pas de punition. Quand vous manquez quelques jours, nous vous aidons à repartir avec une plus petite étape.';

  @override
  String get onboardingTitle3 => 'Vos données restent sur votre téléphone';

  @override
  String get onboardingBody3 =>
      'Aucun compte nécessaire. Tout est stocké uniquement sur cet appareil et fonctionne hors ligne.';

  @override
  String get onboardingSkip => 'Passer';

  @override
  String get onboardingNext => 'Suivant';

  @override
  String get onboardingStart => 'Commencer';

  @override
  String onboardingPageIndicator(int current, int total) {
    return 'Page $current sur $total';
  }

  @override
  String get navToday => 'Aujourd\'hui';

  @override
  String get navHabits => 'Habitudes';

  @override
  String get navProgress => 'Progrès';

  @override
  String get navSettings => 'Réglages';

  @override
  String get todaySubtitle => 'Chaque pas aujourd\'hui est un bon pas.';

  @override
  String habitTargets(String target, String smallerTarget) {
    return 'Objectif : $target · Réduit : $smallerTarget';
  }

  @override
  String get checkInNormal => 'Fait';

  @override
  String get checkInSmaller => 'Petit pas';

  @override
  String get checkInNotDone => 'Pas auj.';

  @override
  String get habitsEmpty =>
      'Aucune habitude pour l\'instant. Touchez Nouvelle habitude pour ajouter la première.';

  @override
  String get habitsAdd => 'Nouvelle habitude';

  @override
  String get progressLast7Days => '7 derniers jours';

  @override
  String get settingsReminders => 'Rappels';

  @override
  String get settingsPrivacy => 'Confidentialité';

  @override
  String get settingsPrivacySummary =>
      'Vos données sont stockées uniquement sur cet appareil.';

  @override
  String habitsArchived(int count) {
    return 'Archivées ($count)';
  }

  @override
  String get todayNoHabits =>
      'Ajoutez une habitude pour commencer. Petit, c\'est très bien.';

  @override
  String get todayNothingScheduled =>
      'Rien de prévu aujourd\'hui. Le repos fait aussi partie du plan.';

  @override
  String get habitNewTitle => 'Nouvelle habitude';

  @override
  String get habitEditTitle => 'Modifier l\'habitude';

  @override
  String get habitNameLabel => 'Habitude';

  @override
  String get habitNameHint => 'ex. Marcher';

  @override
  String get habitTargetLabel => 'Objectif normal';

  @override
  String get habitTargetHint => 'ex. 30 minutes';

  @override
  String get habitSmallerLabel => 'Objectif réduit';

  @override
  String get habitSmallerHint => 'ex. 5 minutes';

  @override
  String get habitSmallerHelper =>
      'La version facile pour les jours chargés ou de faible énergie. Elle compte aussi.';

  @override
  String get habitScheduleLabel => 'Planning';

  @override
  String get scheduleDaily => 'Tous les jours';

  @override
  String get scheduleSelectedDays => 'Jours choisis';

  @override
  String get scheduleNoDaysError => 'Choisissez au moins un jour.';

  @override
  String get habitReminderLabel => 'Rappel';

  @override
  String get habitReminderOff => 'Désactivé';

  @override
  String get habitReminderChange => 'Changer l\'heure';

  @override
  String get habitArchive => 'Archiver';

  @override
  String get habitUnarchive => 'Restaurer';

  @override
  String get habitDeleteTitle => 'Supprimer l\'habitude ?';

  @override
  String habitDeleteBody(String name) {
    return '« $name » et tous ses suivis seront supprimés définitivement. Archivez-la plutôt si vous pensez la reprendre un jour.';
  }

  @override
  String get actionSave => 'Enregistrer';

  @override
  String get actionCancel => 'Annuler';

  @override
  String get actionDelete => 'Supprimer';

  @override
  String get fieldRequired => 'Veuillez remplir ce champ.';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return 'Objectif actuel : $smallerTarget · Normal : $target';
  }

  @override
  String get habitFocusSmallerLabel =>
      'Utiliser l\'objectif réduit pour l\'instant';

  @override
  String get habitFocusSmallerHelper =>
      'Pratique pour repartir après une pause. Revenez à l\'objectif normal quand vous vous sentez prêt(e).';

  @override
  String recoveryTitle(String name) {
    return 'Reprenons $name en douceur';
  }

  @override
  String get recoveryBody =>
      'Les derniers jours prévus n\'ont pas eu lieu. Ce n\'est pas grave, cela arrive à tout le monde. Comment souhaitez-vous continuer ?';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return 'Faire plus petit ($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => 'Garder l\'objectif normal';

  @override
  String get recoveryChangeSchedule => 'Changer le planning';

  @override
  String get recoverySkip => 'Pas maintenant';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return 'Bon choix. $smallerTarget compte pleinement.';
  }

  @override
  String get recoveryNormalDone =>
      'Content de vous revoir. Vous en êtes capable.';

  @override
  String get progressLast30Days => '30 derniers jours';

  @override
  String get progressNoHabits =>
      'Ajoutez une habitude pour voir vos progrès ici.';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return 'Vous avez été là $showedUp fois sur $planned prévues';
  }

  @override
  String get progressFullGoal => 'Objectif complet';

  @override
  String get progressSmallSteps => 'Petits pas';

  @override
  String get progressComebacks => 'Retours';

  @override
  String get progressNotDone => 'Non fait';

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
          'Vous êtes revenu(e) après une pause $count fois. C\'est ce qui compte le plus.',
      one:
          'Vous êtes revenu(e) après une pause une fois. C\'est ce qui compte le plus.',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall =>
      'Les petits pas font vivre l\'habitude. Bravo.';

  @override
  String get progressEncourageAny => 'Chaque fois que vous êtes là compte.';

  @override
  String get progressEncourageStart =>
      'Un nouveau départ est toujours possible. Un petit pas suffit.';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date : $normal complets, $smaller petits pas, $missed non faits';
  }

  @override
  String get reminderChannelName => 'Rappels d\'habitudes';

  @override
  String get reminderChannelDescription =>
      'Des rappels doux aux heures que vous avez choisies pour vos habitudes.';

  @override
  String reminderBody(String target, String smallerTarget) {
    return 'C\'est le bon moment pour $target. Même $smallerTarget compte.';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return 'C\'est le bon moment pour $smallerTarget. Les petits pas comptent.';
  }

  @override
  String get remindersSummary =>
      'Les rappels arrivent à l\'heure définie pour chaque habitude, uniquement les jours prévus.';

  @override
  String get remindersPermissionDenied =>
      'Les notifications sont désactivées pour cette appli. Activez-les dans Réglages > Applications > Habit Recovery > Notifications sur votre téléphone.';

  @override
  String get remindersUnsupported =>
      'Les rappels fonctionnent dans l\'appli Android. Ils ne sont pas disponibles dans cet aperçu.';

  @override
  String get notificationsOffTitle => 'Les notifications sont désactivées';

  @override
  String get notificationsOffBody =>
      'Pas de souci, l\'appli fonctionne sans elles. Si vous voulez des rappels plus tard, ouvrez Réglages > Applications > Habit Recovery > Notifications sur votre téléphone et activez-les.';

  @override
  String get actionOk => 'OK';

  @override
  String get privacyTitle => 'Confidentialité';

  @override
  String get privacyIntro =>
      'Habit Recovery est conçue pour garder vos habitudes privées.';

  @override
  String get privacyStoredTitle => 'Stocké uniquement sur votre appareil';

  @override
  String get privacyStoredBody =>
      'Vos habitudes, plannings et suivis sont enregistrés dans une base de données sur cet appareil. Ils ne sont jamais envoyés ailleurs.';

  @override
  String get privacyNoAccountTitle => 'Pas de compte, pas de suivi';

  @override
  String get privacyNoAccountBody =>
      'Vous n\'avez pas besoin de créer de compte. L\'app n\'a ni outils d\'analyse ni fonctions sociales, et ne collecte aucune donnée personnelle qui lui soit propre.';

  @override
  String get privacyNotificationsTitle => 'Les rappels restent locaux';

  @override
  String get privacyNotificationsBody =>
      'Les rappels sont programmés par votre téléphone lui-même. Rien n\'est envoyé depuis un serveur.';

  @override
  String get privacyDeleteTitle => 'Vous gardez le contrôle';

  @override
  String get privacyDeleteBody =>
      'Supprimer une habitude efface ses suivis de cet appareil. Désinstaller l\'appli efface toutes vos données.';

  @override
  String get privacyAdsTitle => 'Une petite publicité';

  @override
  String get privacyAdsBody =>
      'L\'app est gratuite et affiche une seule petite bannière publicitaire de Google AdMob. Google peut utiliser l\'identifiant publicitaire de votre appareil pour l\'afficher. Lorsque la loi l\'exige, votre consentement vous est d\'abord demandé, et vous pouvez modifier ce choix plus tard dans les Réglages. Vos habitudes ne sont jamais partagées avec les annonceurs.';

  @override
  String get settingsAdChoices => 'Choix de confidentialité des publicités';

  @override
  String get settingsAdChoicesSummary =>
      'Consultez ou modifiez votre consentement pour la publicité.';
}
