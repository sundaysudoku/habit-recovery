// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => 'Buduj nawyki łagodnie';

  @override
  String get onboardingBody1 =>
      'Wybierz kilka nawyków, które są dla Ciebie ważne. Mniejsza wersja też się liczy.';

  @override
  String get onboardingTitle2 => 'Kilka dni przerwy? Zacznij od nowa';

  @override
  String get onboardingBody2 =>
      'Tu nie ma kar. Gdy opuścisz kilka dni, pomożemy Ci wrócić od mniejszego kroku.';

  @override
  String get onboardingTitle3 => 'Twoje dane zostają na telefonie';

  @override
  String get onboardingBody3 =>
      'Konto nie jest potrzebne. Wszystko jest zapisane tylko na tym urządzeniu i działa offline.';

  @override
  String get onboardingSkip => 'Pomiń';

  @override
  String get onboardingNext => 'Dalej';

  @override
  String get onboardingStart => 'Zaczynamy';

  @override
  String onboardingPageIndicator(int current, int total) {
    return 'Strona $current z $total';
  }

  @override
  String get navToday => 'Dziś';

  @override
  String get navHabits => 'Nawyki';

  @override
  String get navProgress => 'Postępy';

  @override
  String get navSettings => 'Ustawienia';

  @override
  String get todaySubtitle => 'Każdy krok dziś to dobry krok.';

  @override
  String habitTargets(String target, String smallerTarget) {
    return 'Cel: $target · Mniejszy: $smallerTarget';
  }

  @override
  String get checkInNormal => 'Zrobione';

  @override
  String get checkInSmaller => 'Mały krok';

  @override
  String get checkInNotDone => 'Nie dziś';

  @override
  String get habitsEmpty =>
      'Nie masz jeszcze nawyków. Dotknij „Nowy nawyk”, aby dodać pierwszy.';

  @override
  String get habitsAdd => 'Nowy nawyk';

  @override
  String get progressLast7Days => 'Ostatnie 7 dni';

  @override
  String get settingsReminders => 'Przypomnienia';

  @override
  String get settingsPrivacy => 'Prywatność';

  @override
  String get settingsPrivacySummary =>
      'Twoje dane są przechowywane tylko na tym urządzeniu.';

  @override
  String habitsArchived(int count) {
    return 'Zarchiwizowane ($count)';
  }

  @override
  String get todayNoHabits =>
      'Dodaj nawyk, aby zacząć. Mały też jest w porządku.';

  @override
  String get todayNothingScheduled =>
      'Na dziś nic nie zaplanowano. Odpoczynek też jest częścią planu.';

  @override
  String get habitNewTitle => 'Nowy nawyk';

  @override
  String get habitEditTitle => 'Edytuj nawyk';

  @override
  String get habitNameLabel => 'Nawyk';

  @override
  String get habitNameHint => 'np. Spacer';

  @override
  String get habitTargetLabel => 'Zwykły cel';

  @override
  String get habitTargetHint => 'np. 30 minut';

  @override
  String get habitSmallerLabel => 'Mniejszy cel';

  @override
  String get habitSmallerHint => 'np. 5 minut';

  @override
  String get habitSmallerHelper =>
      'Łatwa wersja na zabiegane dni lub dni bez energii. Też się liczy.';

  @override
  String get habitScheduleLabel => 'Harmonogram';

  @override
  String get scheduleDaily => 'Codziennie';

  @override
  String get scheduleSelectedDays => 'Wybrane dni';

  @override
  String get scheduleNoDaysError => 'Wybierz co najmniej jeden dzień.';

  @override
  String get habitReminderLabel => 'Przypomnienie';

  @override
  String get habitReminderOff => 'Wył.';

  @override
  String get habitReminderChange => 'Zmień godzinę';

  @override
  String get habitArchive => 'Archiwizuj';

  @override
  String get habitUnarchive => 'Przywróć';

  @override
  String get habitDeleteTitle => 'Usunąć nawyk?';

  @override
  String habitDeleteBody(String name) {
    return 'Nawyk „$name” i wszystkie jego odhaczenia zostaną trwale usunięte. Jeśli możesz do niego wrócić, lepiej go zarchiwizuj.';
  }

  @override
  String get actionSave => 'Zapisz';

  @override
  String get actionCancel => 'Anuluj';

  @override
  String get actionDelete => 'Usuń';

  @override
  String get fieldRequired => 'Uzupełnij to pole.';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return 'Cel na teraz: $smallerTarget · Zwykły: $target';
  }

  @override
  String get habitFocusSmallerLabel => 'Na razie użyj mniejszego celu';

  @override
  String get habitFocusSmallerHelper =>
      'Dobre na powrót po przerwie. Wrócisz do zwykłego celu, gdy poczujesz się gotowy lub gotowa.';

  @override
  String recoveryTitle(String name) {
    return 'Zacznijmy łagodnie od nowa: $name';
  }

  @override
  String get recoveryBody =>
      'Kilka ostatnich zaplanowanych dni nie wyszło. To w porządku, zdarza się każdemu. Jak chcesz kontynuować?';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return 'Zmniejsz cel ($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => 'Zostaw zwykły cel';

  @override
  String get recoveryChangeSchedule => 'Zmień harmonogram';

  @override
  String get recoverySkip => 'Nie teraz';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return 'Świetny wybór. $smallerTarget liczy się w pełni.';
  }

  @override
  String get recoveryNormalDone => 'Witaj z powrotem. Dasz radę.';

  @override
  String get progressLast30Days => 'Ostatnie 30 dni';

  @override
  String get progressNoHabits => 'Dodaj nawyk, aby zobaczyć tu swoje postępy.';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return 'Udało się $showedUp z $planned zaplanowanych razy';
  }

  @override
  String get progressFullGoal => 'Pełny cel';

  @override
  String get progressSmallSteps => 'Małe kroki';

  @override
  String get progressComebacks => 'Powroty';

  @override
  String get progressNotDone => 'Niezrobione';

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
          'Po przerwie udało Ci się wrócić $count razy. To jest najważniejsze.',
      many:
          'Po przerwie udało Ci się wrócić $count razy. To jest najważniejsze.',
      few:
          'Po przerwie udało Ci się wrócić $count razy. To jest najważniejsze.',
      one: 'Po przerwie udało Ci się wrócić $count raz. To jest najważniejsze.',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall =>
      'Małe kroki podtrzymują nawyk. Dobra robota.';

  @override
  String get progressEncourageAny =>
      'Każda chwila, gdy do nas wracasz, się liczy.';

  @override
  String get progressEncourageStart =>
      'Nowy początek jest zawsze możliwy. Jeden mały krok wystarczy.';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date: pełne – $normal, małe kroki – $smaller, niezrobione – $missed';
  }

  @override
  String get reminderChannelName => 'Przypomnienia o nawykach';

  @override
  String get reminderChannelDescription =>
      'Łagodne przypomnienia o godzinach, które wybrałeś lub wybrałaś dla swoich nawyków.';

  @override
  String reminderBody(String target, String smallerTarget) {
    return 'Dobry moment na: $target. Nawet $smallerTarget się liczy.';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return 'Dobry moment na: $smallerTarget. Małe kroki się liczą.';
  }

  @override
  String get remindersSummary =>
      'Przypomnienia przychodzą o godzinie ustawionej dla każdego nawyku i tylko w zaplanowane dni.';

  @override
  String get remindersPermissionDenied =>
      'Powiadomienia dla tej aplikacji są wyłączone. Włącz je w ustawieniach telefonu: Ustawienia > Aplikacje > Habit Recovery > Powiadomienia.';

  @override
  String get remindersUnsupported =>
      'Przypomnienia działają w aplikacji na Androida. W tym podglądzie są niedostępne.';

  @override
  String get notificationsOffTitle => 'Powiadomienia są wyłączone';

  @override
  String get notificationsOffBody =>
      'Nic nie szkodzi, aplikacja działa bez nich. Jeśli później zechcesz przypomnień, otwórz Ustawienia > Aplikacje > Habit Recovery > Powiadomienia i je włącz.';

  @override
  String get actionOk => 'OK';

  @override
  String get privacyTitle => 'Prywatność';

  @override
  String get privacyIntro =>
      'Habit Recovery powstało, by Twoje nawyki pozostały prywatne.';

  @override
  String get privacyStoredTitle => 'Tylko na Twoim urządzeniu';

  @override
  String get privacyStoredBody =>
      'Twoje nawyki, harmonogramy i odhaczenia są zapisane w bazie danych na tym urządzeniu. Nigdy nigdzie nie są wysyłane.';

  @override
  String get privacyNoAccountTitle => 'Bez konta i śledzenia';

  @override
  String get privacyNoAccountBody =>
      'Nie musisz się rejestrować. Aplikacja nie ma analityki ani funkcji społecznościowych i sama nie zbiera żadnych danych osobowych.';

  @override
  String get privacyNotificationsTitle => 'Przypomnienia zostają lokalnie';

  @override
  String get privacyNotificationsBody =>
      'Przypomnienia planuje sam telefon. Żaden serwer niczego nie wysyła.';

  @override
  String get privacyDeleteTitle => 'Ty masz kontrolę';

  @override
  String get privacyDeleteBody =>
      'Usunięcie nawyku kasuje jego odhaczenia z tego urządzenia. Odinstalowanie aplikacji usuwa wszystkie Twoje dane.';

  @override
  String get privacyAdsTitle => 'Jedna mała reklama';

  @override
  String get privacyAdsBody =>
      'Aplikacja jest bezpłatna i wyświetla jeden mały baner reklamowy z Google AdMob. Google może w tym celu używać identyfikatora reklamowego Twojego urządzenia. Tam, gdzie wymaga tego prawo, najpierw zapytamy o zgodę, a swój wybór możesz później zmienić w Ustawieniach. Twoje nawyki nigdy nie są udostępniane reklamodawcom.';

  @override
  String get settingsAdChoices => 'Prywatność reklam';

  @override
  String get settingsAdChoicesSummary =>
      'Sprawdź lub zmień swoją zgodę dotyczącą reklamy.';
}
