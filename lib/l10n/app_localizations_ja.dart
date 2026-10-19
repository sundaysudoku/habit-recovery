// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => 'やさしく習慣づくり';

  @override
  String get onboardingBody1 => '大切にしたい習慣をいくつか選びましょう。小さめのやり方でも、ちゃんと達成です。';

  @override
  String get onboardingTitle2 => '数日お休みしても、また始めればOK';

  @override
  String get onboardingBody2 =>
      'ここにペナルティはありません。数日お休みしたときは、もっと小さな一歩で再開できるようお手伝いします。';

  @override
  String get onboardingTitle3 => 'データはあなたのスマホの中だけ';

  @override
  String get onboardingBody3 => 'アカウントは不要です。すべてこの端末にだけ保存され、オフラインでも使えます。';

  @override
  String get onboardingSkip => 'スキップ';

  @override
  String get onboardingNext => '次へ';

  @override
  String get onboardingStart => 'はじめる';

  @override
  String onboardingPageIndicator(int current, int total) {
    return '$total ページ中 $current ページ目';
  }

  @override
  String get navToday => '今日';

  @override
  String get navHabits => '習慣';

  @override
  String get navProgress => '記録';

  @override
  String get navSettings => '設定';

  @override
  String get todaySubtitle => '今日の一歩は、どんな一歩もすてきです。';

  @override
  String habitTargets(String target, String smallerTarget) {
    return '目標:$target · 小さめ:$smallerTarget';
  }

  @override
  String get checkInNormal => 'できた';

  @override
  String get checkInSmaller => '小さな一歩';

  @override
  String get checkInNotDone => '今日は休む';

  @override
  String get habitsEmpty => 'まだ習慣がありません。「新しい習慣」をタップして最初の習慣を追加しましょう。';

  @override
  String get habitsAdd => '新しい習慣';

  @override
  String get progressLast7Days => '直近7日間';

  @override
  String get settingsReminders => 'リマインダー';

  @override
  String get settingsPrivacy => 'プライバシー';

  @override
  String get settingsPrivacySummary => 'データはこの端末にだけ保存されます。';

  @override
  String habitsArchived(int count) {
    return 'アーカイブ済み($count)';
  }

  @override
  String get todayNoHabits => '習慣を追加して始めましょう。小さくて大丈夫です。';

  @override
  String get todayNothingScheduled => '今日は予定がありません。休むことも計画のうちです。';

  @override
  String get habitNewTitle => '新しい習慣';

  @override
  String get habitEditTitle => '習慣を編集';

  @override
  String get habitNameLabel => '習慣';

  @override
  String get habitNameHint => '例:散歩';

  @override
  String get habitTargetLabel => 'いつもの目標';

  @override
  String get habitTargetHint => '例:30分';

  @override
  String get habitSmallerLabel => '小さめの目標';

  @override
  String get habitSmallerHint => '例:5分';

  @override
  String get habitSmallerHelper => '忙しい日や元気が出ない日のための楽なバージョンです。これも達成に数えられます。';

  @override
  String get habitScheduleLabel => 'スケジュール';

  @override
  String get scheduleDaily => '毎日';

  @override
  String get scheduleSelectedDays => '曜日を指定';

  @override
  String get scheduleNoDaysError => '1日以上選んでください。';

  @override
  String get habitReminderLabel => 'リマインダー';

  @override
  String get habitReminderOff => 'オフ';

  @override
  String get habitReminderChange => '時刻を変更';

  @override
  String get habitArchive => 'アーカイブ';

  @override
  String get habitUnarchive => '元に戻す';

  @override
  String get habitDeleteTitle => '習慣を削除しますか?';

  @override
  String habitDeleteBody(String name) {
    return '「$name」とすべての記録が完全に削除されます。また使うかもしれない場合は、代わりにアーカイブしましょう。';
  }

  @override
  String get actionSave => '保存';

  @override
  String get actionCancel => 'キャンセル';

  @override
  String get actionDelete => '削除';

  @override
  String get fieldRequired => '入力してください。';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return '今の目標:$smallerTarget · いつもの:$target';
  }

  @override
  String get habitFocusSmallerLabel => 'しばらく小さめの目標にする';

  @override
  String get habitFocusSmallerHelper => 'お休みのあとの再開にぴったりです。準備ができたら、いつでも戻せます。';

  @override
  String recoveryTitle(String name) {
    return '$nameをやさしく再開しましょう';
  }

  @override
  String get recoveryBody =>
      '予定していた最近の数日はできませんでしたが、大丈夫。誰にでもあることです。これからどうしたいですか?';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return '小さくする($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => 'いつもの目標のまま';

  @override
  String get recoveryChangeSchedule => 'スケジュールを変更';

  @override
  String get recoverySkip => '今はしない';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return 'いい選択です。$smallerTargetも、しっかり達成です。';
  }

  @override
  String get recoveryNormalDone => 'おかえりなさい。きっとできますよ。';

  @override
  String get progressLast30Days => '直近30日間';

  @override
  String get progressNoHabits => '習慣を追加すると、ここに記録が表示されます。';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return '予定 $planned 回のうち $showedUp 回取り組みました';
  }

  @override
  String get progressFullGoal => '目標達成';

  @override
  String get progressSmallSteps => '小さな一歩';

  @override
  String get progressComebacks => '再開';

  @override
  String get progressNotDone => 'お休み';

  @override
  String progressHabitCount(int showedUp, int planned) {
    return '$showedUp/$planned';
  }

  @override
  String progressEncourageComebacks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'お休みのあとに$count回戻ってきました。それがいちばん大切です。',
      one: 'お休みのあとに1回戻ってきました。それがいちばん大切です。',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall => '小さな一歩が習慣を守ります。すばらしいです。';

  @override
  String get progressEncourageAny => '取り組んだ一回一回が大切です。';

  @override
  String get progressEncourageStart => '新しい始まりは、いつでもできます。小さな一歩で十分です。';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date:目標達成 $normal 回、小さな一歩 $smaller 回、お休み $missed 回';
  }

  @override
  String get reminderChannelName => '習慣のリマインダー';

  @override
  String get reminderChannelDescription => '習慣に設定した時刻に、やさしくお知らせします。';

  @override
  String reminderBody(String target, String smallerTarget) {
    return '$targetにぴったりの時間です。$smallerTargetだけでも達成ですよ。';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return '$smallerTargetにぴったりの時間です。小さな一歩も大切です。';
  }

  @override
  String get remindersSummary => 'リマインダーは、各習慣に設定した時刻に、予定した曜日だけ届きます。';

  @override
  String get remindersPermissionDenied =>
      'このアプリの通知がオフになっています。スマホの「設定 > アプリ > Habit Recovery > 通知」でオンにしてください。';

  @override
  String get remindersUnsupported => 'リマインダーはAndroidアプリで使えます。このプレビューでは利用できません。';

  @override
  String get notificationsOffTitle => '通知はオフです';

  @override
  String get notificationsOffBody =>
      '大丈夫です、通知がなくてもアプリは使えます。あとでリマインダーが必要になったら、スマホの「設定 > アプリ > Habit Recovery > 通知」を開いてオンにしてください。';

  @override
  String get actionOk => 'OK';

  @override
  String get privacyTitle => 'プライバシー';

  @override
  String get privacyIntro => 'Habit Recoveryは、あなたの習慣を非公開に保つために作られています。';

  @override
  String get privacyStoredTitle => 'この端末にだけ保存';

  @override
  String get privacyStoredBody =>
      '習慣、スケジュール、記録はこの端末のデータベースに保存され、どこにもアップロードされません。';

  @override
  String get privacyNoAccountTitle => 'アカウントも追跡もなし';

  @override
  String get privacyNoAccountBody =>
      '登録は不要です。アプリは個人データを収集せず、解析機能やソーシャル機能もありません。';

  @override
  String get privacyNotificationsTitle => 'リマインダーは端末内だけ';

  @override
  String get privacyNotificationsBody => 'リマインダーはスマホ自身が予約します。サーバーからは何も送信されません。';

  @override
  String get privacyDeleteTitle => 'すべてあなたの手の中に';

  @override
  String get privacyDeleteBody =>
      '習慣を削除すると、その記録がこの端末から消えます。アプリをアンインストールすると、すべてのデータが消えます。';
}
