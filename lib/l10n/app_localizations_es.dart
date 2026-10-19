// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => 'Crea hábitos con suavidad';

  @override
  String get onboardingBody1 =>
      'Elige algunos hábitos que te importen. Hacer una versión más pequeña también cuenta.';

  @override
  String get onboardingTitle2 => '¿Te saltaste unos días? Empieza de nuevo';

  @override
  String get onboardingBody2 =>
      'Aquí no hay castigos. Si te saltas unos días, te ayudamos a retomar con un paso más pequeño.';

  @override
  String get onboardingTitle3 => 'Tus datos se quedan en tu teléfono';

  @override
  String get onboardingBody3 =>
      'No necesitas cuenta. Todo se guarda solo en este dispositivo y funciona sin conexión.';

  @override
  String get onboardingSkip => 'Omitir';

  @override
  String get onboardingNext => 'Siguiente';

  @override
  String get onboardingStart => 'Comenzar';

  @override
  String onboardingPageIndicator(int current, int total) {
    return 'Página $current de $total';
  }

  @override
  String get navToday => 'Hoy';

  @override
  String get navHabits => 'Hábitos';

  @override
  String get navProgress => 'Progreso';

  @override
  String get navSettings => 'Ajustes';

  @override
  String get todaySubtitle => 'Cualquier paso de hoy es un buen paso.';

  @override
  String habitTargets(String target, String smallerTarget) {
    return 'Meta: $target · Pequeña: $smallerTarget';
  }

  @override
  String get checkInNormal => 'Hecho';

  @override
  String get checkInSmaller => 'Pasito';

  @override
  String get checkInNotDone => 'Hoy no';

  @override
  String get habitsEmpty =>
      'Aún no hay hábitos. Toca Nuevo hábito para agregar el primero.';

  @override
  String get habitsAdd => 'Nuevo hábito';

  @override
  String get progressLast7Days => 'Últimos 7 días';

  @override
  String get settingsReminders => 'Recordatorios';

  @override
  String get settingsPrivacy => 'Privacidad';

  @override
  String get settingsPrivacySummary =>
      'Tus datos se guardan solo en este dispositivo.';

  @override
  String habitsArchived(int count) {
    return 'Archivados ($count)';
  }

  @override
  String get todayNoHabits =>
      'Agrega un hábito para empezar. Algo pequeño está bien.';

  @override
  String get todayNothingScheduled =>
      'Nada programado para hoy. El descanso también es parte del plan.';

  @override
  String get habitNewTitle => 'Nuevo hábito';

  @override
  String get habitEditTitle => 'Editar hábito';

  @override
  String get habitNameLabel => 'Hábito';

  @override
  String get habitNameHint => 'p. ej. Caminar';

  @override
  String get habitTargetLabel => 'Meta normal';

  @override
  String get habitTargetHint => 'p. ej. 30 minutos';

  @override
  String get habitSmallerLabel => 'Meta pequeña';

  @override
  String get habitSmallerHint => 'p. ej. 5 minutos';

  @override
  String get habitSmallerHelper =>
      'La versión fácil para días ocupados o de poca energía. También cuenta.';

  @override
  String get habitScheduleLabel => 'Horario';

  @override
  String get scheduleDaily => 'Todos los días';

  @override
  String get scheduleSelectedDays => 'Días elegidos';

  @override
  String get scheduleNoDaysError => 'Elige al menos un día.';

  @override
  String get habitReminderLabel => 'Recordatorio';

  @override
  String get habitReminderOff => 'Desactivado';

  @override
  String get habitReminderChange => 'Cambiar hora';

  @override
  String get habitArchive => 'Archivar';

  @override
  String get habitUnarchive => 'Restaurar';

  @override
  String get habitDeleteTitle => '¿Eliminar hábito?';

  @override
  String habitDeleteBody(String name) {
    return '\"$name\" y todos sus registros se eliminarán de forma permanente. Mejor archívalo si podrías querer recuperarlo.';
  }

  @override
  String get actionSave => 'Guardar';

  @override
  String get actionCancel => 'Cancelar';

  @override
  String get actionDelete => 'Eliminar';

  @override
  String get fieldRequired => 'Por favor, completa este campo.';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return 'Meta por ahora: $smallerTarget · Normal: $target';
  }

  @override
  String get habitFocusSmallerLabel => 'Usar la meta pequeña por ahora';

  @override
  String get habitFocusSmallerHelper =>
      'Ideal para retomar después de una pausa. Vuelve a la normal cuando te sientas listo o lista.';

  @override
  String recoveryTitle(String name) {
    return 'Retomemos $name con calma';
  }

  @override
  String get recoveryBody =>
      'Los últimos días planeados no se dieron. Está bien, le pasa a todo el mundo. ¿Cómo te gustaría continuar?';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return 'Hacerlo más pequeño ($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => 'Mantener la meta normal';

  @override
  String get recoveryChangeSchedule => 'Cambiar horario';

  @override
  String get recoverySkip => 'Ahora no';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return 'Buena elección. $smallerTarget cuenta por completo.';
  }

  @override
  String get recoveryNormalDone => 'Qué bueno verte de vuelta. Tú puedes.';

  @override
  String get progressLast30Days => 'Últimos 30 días';

  @override
  String get progressNoHabits => 'Agrega un hábito para ver tu progreso aquí.';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return 'Cumpliste $showedUp de $planned veces planeadas';
  }

  @override
  String get progressFullGoal => 'Meta completa';

  @override
  String get progressSmallSteps => 'Pasitos';

  @override
  String get progressComebacks => 'Regresos';

  @override
  String get progressNotDone => 'Sin hacer';

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
          'Volviste después de una pausa $count veces. Eso es lo que más importa.',
      one: 'Volviste después de una pausa una vez. Eso es lo que más importa.',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall =>
      'Los pasos pequeños mantienen vivo el hábito. Buen trabajo.';

  @override
  String get progressEncourageAny => 'Cada vez que apareces cuenta.';

  @override
  String get progressEncourageStart =>
      'Siempre puedes empezar de nuevo. Un paso pequeño es suficiente.';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date: $normal completos, $smaller pasos pequeños, $missed sin hacer';
  }

  @override
  String get reminderChannelName => 'Recordatorios de hábitos';

  @override
  String get reminderChannelDescription =>
      'Recordatorios amables a las horas que elegiste para tus hábitos.';

  @override
  String reminderBody(String target, String smallerTarget) {
    return 'Buen momento para $target. Incluso $smallerTarget cuenta.';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return 'Buen momento para $smallerTarget. Los pasos pequeños cuentan.';
  }

  @override
  String get remindersSummary =>
      'Los recordatorios llegan a la hora definida en cada hábito, solo en sus días programados.';

  @override
  String get remindersPermissionDenied =>
      'Las notificaciones están desactivadas para esta app. Actívalas en Ajustes > Aplicaciones > Habit Recovery > Notificaciones de tu teléfono.';

  @override
  String get remindersUnsupported =>
      'Los recordatorios funcionan en la app de Android. No están disponibles en esta vista previa.';

  @override
  String get notificationsOffTitle => 'Las notificaciones están desactivadas';

  @override
  String get notificationsOffBody =>
      'No hay problema, la app funciona sin ellas. Si más adelante quieres recordatorios, abre Ajustes > Aplicaciones > Habit Recovery > Notificaciones en tu teléfono y actívalas.';

  @override
  String get actionOk => 'Aceptar';

  @override
  String get privacyTitle => 'Privacidad';

  @override
  String get privacyIntro =>
      'Habit Recovery está hecha para mantener tus hábitos en privado.';

  @override
  String get privacyStoredTitle => 'Guardado solo en tu dispositivo';

  @override
  String get privacyStoredBody =>
      'Tus hábitos, horarios y registros se guardan en una base de datos de este dispositivo. Nunca se suben a ningún lado.';

  @override
  String get privacyNoAccountTitle => 'Sin cuenta, sin rastreo';

  @override
  String get privacyNoAccountBody =>
      'No necesitas registrarte. La app no recopila datos personales y no tiene analíticas ni funciones sociales.';

  @override
  String get privacyNotificationsTitle => 'Los recordatorios son locales';

  @override
  String get privacyNotificationsBody =>
      'Tu propio teléfono programa los recordatorios. No se envía nada desde un servidor.';

  @override
  String get privacyDeleteTitle => 'Tú tienes el control';

  @override
  String get privacyDeleteBody =>
      'Eliminar un hábito borra sus registros de este dispositivo. Al desinstalar la app se borran todos tus datos.';
}
