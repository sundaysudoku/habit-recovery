// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => 'Construa hábitos com gentileza';

  @override
  String get onboardingBody1 =>
      'Escolha alguns hábitos que importam para você. Fazer uma versão menor também conta.';

  @override
  String get onboardingTitle2 => 'Perdeu alguns dias? Recomece';

  @override
  String get onboardingBody2 =>
      'Aqui não existe punição. Quando você passa alguns dias sem fazer, ajudamos você a recomeçar com um passo menor.';

  @override
  String get onboardingTitle3 => 'Seus dados ficam no seu celular';

  @override
  String get onboardingBody3 =>
      'Não precisa de conta. Tudo fica guardado só neste dispositivo e funciona offline.';

  @override
  String get onboardingSkip => 'Pular';

  @override
  String get onboardingNext => 'Avançar';

  @override
  String get onboardingStart => 'Começar';

  @override
  String onboardingPageIndicator(int current, int total) {
    return 'Página $current de $total';
  }

  @override
  String get navToday => 'Hoje';

  @override
  String get navHabits => 'Hábitos';

  @override
  String get navProgress => 'Progresso';

  @override
  String get navSettings => 'Ajustes';

  @override
  String get todaySubtitle => 'Qualquer passo hoje é um bom passo.';

  @override
  String habitTargets(String target, String smallerTarget) {
    return 'Meta: $target · Menor: $smallerTarget';
  }

  @override
  String get checkInNormal => 'Feito';

  @override
  String get checkInSmaller => 'Passinho';

  @override
  String get checkInNotDone => 'Hoje não';

  @override
  String get habitsEmpty =>
      'Nenhum hábito ainda. Toque em Novo hábito para adicionar o primeiro.';

  @override
  String get habitsAdd => 'Novo hábito';

  @override
  String get progressLast7Days => 'Últimos 7 dias';

  @override
  String get settingsReminders => 'Lembretes';

  @override
  String get settingsPrivacy => 'Privacidade';

  @override
  String get settingsPrivacySummary =>
      'Seus dados ficam guardados só neste dispositivo.';

  @override
  String habitsArchived(int count) {
    return 'Arquivados ($count)';
  }

  @override
  String get todayNoHabits =>
      'Adicione um hábito para começar. Pequeno já está bom.';

  @override
  String get todayNothingScheduled =>
      'Nada programado para hoje. Descansar também faz parte do plano.';

  @override
  String get habitNewTitle => 'Novo hábito';

  @override
  String get habitEditTitle => 'Editar hábito';

  @override
  String get habitNameLabel => 'Hábito';

  @override
  String get habitNameHint => 'ex.: Caminhar';

  @override
  String get habitTargetLabel => 'Meta normal';

  @override
  String get habitTargetHint => 'ex.: 30 minutos';

  @override
  String get habitSmallerLabel => 'Meta menor';

  @override
  String get habitSmallerHint => 'ex.: 5 minutos';

  @override
  String get habitSmallerHelper =>
      'A versão fácil para dias corridos ou de pouca energia. Também conta.';

  @override
  String get habitScheduleLabel => 'Programação';

  @override
  String get scheduleDaily => 'Todos os dias';

  @override
  String get scheduleSelectedDays => 'Dias selecionados';

  @override
  String get scheduleNoDaysError => 'Escolha pelo menos um dia.';

  @override
  String get habitReminderLabel => 'Lembrete';

  @override
  String get habitReminderOff => 'Desativado';

  @override
  String get habitReminderChange => 'Mudar horário';

  @override
  String get habitArchive => 'Arquivar';

  @override
  String get habitUnarchive => 'Restaurar';

  @override
  String get habitDeleteTitle => 'Excluir hábito?';

  @override
  String habitDeleteBody(String name) {
    return '\"$name\" e todos os seus registros serão excluídos permanentemente. Arquive em vez de excluir se talvez queira recuperá-lo.';
  }

  @override
  String get actionSave => 'Salvar';

  @override
  String get actionCancel => 'Cancelar';

  @override
  String get actionDelete => 'Excluir';

  @override
  String get fieldRequired => 'Por favor, preencha este campo.';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return 'Meta por enquanto: $smallerTarget · Normal: $target';
  }

  @override
  String get habitFocusSmallerLabel => 'Usar a meta menor por enquanto';

  @override
  String get habitFocusSmallerHelper =>
      'Bom para recomeçar depois de uma pausa. Volte à normal quando se sentir pronto(a).';

  @override
  String recoveryTitle(String name) {
    return 'Vamos retomar $name com calma';
  }

  @override
  String get recoveryBody =>
      'Os últimos dias planejados não aconteceram. Tudo bem, isso acontece com todo mundo. Como você gostaria de continuar?';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return 'Deixar menor ($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => 'Manter a meta normal';

  @override
  String get recoveryChangeSchedule => 'Mudar programação';

  @override
  String get recoverySkip => 'Agora não';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return 'Ótima escolha. $smallerTarget conta por inteiro.';
  }

  @override
  String get recoveryNormalDone => 'Que bom ter você de volta. Você consegue.';

  @override
  String get progressLast30Days => 'Últimos 30 dias';

  @override
  String get progressNoHabits =>
      'Adicione um hábito para ver seu progresso aqui.';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return 'Você compareceu $showedUp de $planned vezes planejadas';
  }

  @override
  String get progressFullGoal => 'Meta completa';

  @override
  String get progressSmallSteps => 'Passinhos';

  @override
  String get progressComebacks => 'Retomadas';

  @override
  String get progressNotDone => 'Não feito';

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
          'Você voltou depois de uma pausa $count vezes. Isso é o que mais importa.',
      one:
          'Você voltou depois de uma pausa uma vez. Isso é o que mais importa.',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall =>
      'Passos pequenos mantêm o hábito vivo. Bom trabalho.';

  @override
  String get progressEncourageAny => 'Cada vez que você aparece conta.';

  @override
  String get progressEncourageStart =>
      'Um novo começo está sempre disponível. Um pequeno passo basta.';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date: $normal completos, $smaller passos pequenos, $missed não feitos';
  }

  @override
  String get reminderChannelName => 'Lembretes de hábitos';

  @override
  String get reminderChannelDescription =>
      'Lembretes gentis nos horários que você escolheu para seus hábitos.';

  @override
  String reminderBody(String target, String smallerTarget) {
    return 'Boa hora para $target. Até $smallerTarget conta.';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return 'Boa hora para $smallerTarget. Passos pequenos contam.';
  }

  @override
  String get remindersSummary =>
      'Os lembretes chegam no horário definido em cada hábito, só nos dias programados.';

  @override
  String get remindersPermissionDenied =>
      'As notificações estão desativadas para este app. Ative em Configurações > Apps > Habit Recovery > Notificações no seu celular.';

  @override
  String get remindersUnsupported =>
      'Os lembretes funcionam no app para Android. Não estão disponíveis nesta prévia.';

  @override
  String get notificationsOffTitle => 'As notificações estão desativadas';

  @override
  String get notificationsOffBody =>
      'Tudo bem, o app funciona sem elas. Se quiser lembretes depois, abra Configurações > Apps > Habit Recovery > Notificações no seu celular e ative-as.';

  @override
  String get actionOk => 'OK';

  @override
  String get privacyTitle => 'Privacidade';

  @override
  String get privacyIntro =>
      'O Habit Recovery foi feito para manter seus hábitos privados.';

  @override
  String get privacyStoredTitle => 'Guardado só no seu dispositivo';

  @override
  String get privacyStoredBody =>
      'Seus hábitos, programações e registros ficam salvos em um banco de dados neste dispositivo. Nunca são enviados para lugar nenhum.';

  @override
  String get privacyNoAccountTitle => 'Sem conta, sem rastreamento';

  @override
  String get privacyNoAccountBody =>
      'Você não precisa se cadastrar. O app não coleta dados pessoais e não tem análises nem recursos sociais.';

  @override
  String get privacyNotificationsTitle => 'Os lembretes ficam locais';

  @override
  String get privacyNotificationsBody =>
      'Os lembretes são agendados pelo próprio celular. Nada é enviado por um servidor.';

  @override
  String get privacyDeleteTitle => 'Você está no controle';

  @override
  String get privacyDeleteBody =>
      'Excluir um hábito remove os registros dele deste dispositivo. Desinstalar o app remove todos os seus dados.';
}
