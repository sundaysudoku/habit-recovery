// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => '부드럽게 습관 만들기';

  @override
  String get onboardingBody1 =>
      '나에게 중요한 습관을 몇 가지 골라 보세요. 더 작은 버전으로 해도 충분히 인정돼요.';

  @override
  String get onboardingTitle2 => '며칠 쉬었나요? 다시 시작하면 돼요';

  @override
  String get onboardingBody2 =>
      '여기에는 벌칙이 없어요. 며칠 쉬었을 때는 더 작은 걸음으로 다시 시작하도록 도와드려요.';

  @override
  String get onboardingTitle3 => '데이터는 내 휴대폰에만';

  @override
  String get onboardingBody3 => '계정이 필요 없어요. 모든 내용은 이 기기에만 저장되고 오프라인에서도 작동해요.';

  @override
  String get onboardingSkip => '건너뛰기';

  @override
  String get onboardingNext => '다음';

  @override
  String get onboardingStart => '시작하기';

  @override
  String onboardingPageIndicator(int current, int total) {
    return '$total페이지 중 $current페이지';
  }

  @override
  String get navToday => '오늘';

  @override
  String get navHabits => '습관';

  @override
  String get navProgress => '기록';

  @override
  String get navSettings => '설정';

  @override
  String get todaySubtitle => '오늘 내딛는 어떤 걸음이든 좋은 걸음이에요.';

  @override
  String habitTargets(String target, String smallerTarget) {
    return '목표: $target · 작은 목표: $smallerTarget';
  }

  @override
  String get checkInNormal => '완료';

  @override
  String get checkInSmaller => '작은 걸음';

  @override
  String get checkInNotDone => '오늘은 쉴게요';

  @override
  String get habitsEmpty => '아직 습관이 없어요. 새 습관을 눌러 첫 습관을 추가해 보세요.';

  @override
  String get habitsAdd => '새 습관';

  @override
  String get progressLast7Days => '최근 7일';

  @override
  String get settingsReminders => '알림';

  @override
  String get settingsPrivacy => '개인정보 보호';

  @override
  String get settingsPrivacySummary => '데이터는 이 기기에만 저장돼요.';

  @override
  String habitsArchived(int count) {
    return '보관됨 ($count)';
  }

  @override
  String get todayNoHabits => '습관을 추가해 시작해 보세요. 작아도 괜찮아요.';

  @override
  String get todayNothingScheduled => '오늘은 예정된 게 없어요. 쉬는 것도 계획의 일부예요.';

  @override
  String get habitNewTitle => '새 습관';

  @override
  String get habitEditTitle => '습관 수정';

  @override
  String get habitNameLabel => '습관';

  @override
  String get habitNameHint => '예: 산책';

  @override
  String get habitTargetLabel => '기본 목표';

  @override
  String get habitTargetHint => '예: 30분';

  @override
  String get habitSmallerLabel => '작은 목표';

  @override
  String get habitSmallerHint => '예: 5분';

  @override
  String get habitSmallerHelper => '바쁘거나 기운 없는 날을 위한 쉬운 버전이에요. 이것도 인정돼요.';

  @override
  String get habitScheduleLabel => '일정';

  @override
  String get scheduleDaily => '매일';

  @override
  String get scheduleSelectedDays => '요일 선택';

  @override
  String get scheduleNoDaysError => '하루 이상 선택해 주세요.';

  @override
  String get habitReminderLabel => '알림';

  @override
  String get habitReminderOff => '끔';

  @override
  String get habitReminderChange => '시간 변경';

  @override
  String get habitArchive => '보관';

  @override
  String get habitUnarchive => '복원';

  @override
  String get habitDeleteTitle => '습관을 삭제할까요?';

  @override
  String habitDeleteBody(String name) {
    return '\"$name\"과(와) 모든 체크인 기록이 영구적으로 삭제돼요. 나중에 다시 쓸 수도 있다면 대신 보관해 두세요.';
  }

  @override
  String get actionSave => '저장';

  @override
  String get actionCancel => '취소';

  @override
  String get actionDelete => '삭제';

  @override
  String get fieldRequired => '내용을 입력해 주세요.';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return '지금 목표: $smallerTarget · 기본: $target';
  }

  @override
  String get habitFocusSmallerLabel => '당분간 작은 목표 사용';

  @override
  String get habitFocusSmallerHelper =>
      '쉬고 나서 다시 시작할 때 좋아요. 준비되면 언제든 되돌릴 수 있어요.';

  @override
  String recoveryTitle(String name) {
    return '$name, 부드럽게 다시 시작해요';
  }

  @override
  String get recoveryBody =>
      '최근 계획한 며칠은 하지 못했어요. 괜찮아요, 누구에게나 있는 일이에요. 어떻게 이어가고 싶으세요?';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return '더 작게 하기 ($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => '기본 목표 유지';

  @override
  String get recoveryChangeSchedule => '일정 변경';

  @override
  String get recoverySkip => '나중에';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return '좋은 선택이에요. $smallerTarget도 충분히 인정돼요.';
  }

  @override
  String get recoveryNormalDone => '돌아오신 걸 환영해요. 할 수 있어요.';

  @override
  String get progressLast30Days => '최근 30일';

  @override
  String get progressNoHabits => '습관을 추가하면 여기에서 기록을 볼 수 있어요.';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return '계획한 $planned번 중 $showedUp번 해냈어요';
  }

  @override
  String get progressFullGoal => '목표 달성';

  @override
  String get progressSmallSteps => '작은 걸음';

  @override
  String get progressComebacks => '다시 시작';

  @override
  String get progressNotDone => '쉬어감';

  @override
  String progressHabitCount(int showedUp, int planned) {
    return '$showedUp/$planned';
  }

  @override
  String progressEncourageComebacks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '쉬고 나서 $count번 돌아왔어요. 그게 가장 중요해요.',
      one: '쉬고 나서 한 번 돌아왔어요. 그게 가장 중요해요.',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall => '작은 걸음이 습관을 지켜 줘요. 잘하고 있어요.';

  @override
  String get progressEncourageAny => '나타난 순간순간이 모두 소중해요.';

  @override
  String get progressEncourageStart => '새 출발은 언제든 할 수 있어요. 작은 걸음 하나면 충분해요.';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date: 완료 $normal번, 작은 걸음 $smaller번, 쉬어감 $missed번';
  }

  @override
  String get reminderChannelName => '습관 알림';

  @override
  String get reminderChannelDescription => '습관에 정해 둔 시간에 부드럽게 알려 드려요.';

  @override
  String reminderBody(String target, String smallerTarget) {
    return '$target 하기 좋은 시간이에요. $smallerTarget만 해도 인정돼요.';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return '$smallerTarget 하기 좋은 시간이에요. 작은 걸음도 소중해요.';
  }

  @override
  String get remindersSummary => '알림은 각 습관에 정한 시간에, 예정된 요일에만 도착해요.';

  @override
  String get remindersPermissionDenied =>
      '이 앱의 알림이 꺼져 있어요. 휴대폰의 설정 > 앱 > Habit Recovery > 알림에서 켜 주세요.';

  @override
  String get remindersUnsupported =>
      '알림은 Android 앱에서 작동해요. 이 미리보기에서는 사용할 수 없어요.';

  @override
  String get notificationsOffTitle => '알림이 꺼져 있어요';

  @override
  String get notificationsOffBody =>
      '괜찮아요, 알림 없이도 앱은 잘 작동해요. 나중에 알림이 필요하면 휴대폰의 설정 > 앱 > Habit Recovery > 알림을 열어 켜 주세요.';

  @override
  String get actionOk => '확인';

  @override
  String get privacyTitle => '개인정보 보호';

  @override
  String get privacyIntro => 'Habit Recovery는 여러분의 습관을 비공개로 지키도록 만들어졌어요.';

  @override
  String get privacyStoredTitle => '내 기기에만 저장';

  @override
  String get privacyStoredBody =>
      '습관, 일정, 체크인 기록은 이 기기의 데이터베이스에 저장되며 어디에도 업로드되지 않아요.';

  @override
  String get privacyNoAccountTitle => '계정도 추적도 없어요';

  @override
  String get privacyNoAccountBody =>
      '가입할 필요가 없어요. 앱은 개인 정보를 수집하지 않으며 분석이나 소셜 기능도 없어요.';

  @override
  String get privacyNotificationsTitle => '알림은 기기 안에서만';

  @override
  String get privacyNotificationsBody =>
      '알림은 휴대폰이 직접 예약해요. 서버에서 보내는 것은 아무것도 없어요.';

  @override
  String get privacyDeleteTitle => '모든 건 내 손에';

  @override
  String get privacyDeleteBody =>
      '습관을 삭제하면 이 기기에서 해당 체크인 기록이 지워져요. 앱을 삭제하면 모든 데이터가 지워져요.';
}
