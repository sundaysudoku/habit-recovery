// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => '轻轻地养成习惯';

  @override
  String get onboardingBody1 => '挑几个对你重要的习惯。完成一个更小的版本,也算数。';

  @override
  String get onboardingTitle2 => '错过几天?重新开始就好';

  @override
  String get onboardingBody2 => '这里没有惩罚。当你错过几天时,我们会陪你用更小的一步重新开始。';

  @override
  String get onboardingTitle3 => '你的数据只留在手机里';

  @override
  String get onboardingBody3 => '无需账号。所有内容只存储在这台设备上,离线也能使用。';

  @override
  String get onboardingSkip => '跳过';

  @override
  String get onboardingNext => '下一步';

  @override
  String get onboardingStart => '开始使用';

  @override
  String onboardingPageIndicator(int current, int total) {
    return '第 $current 页,共 $total 页';
  }

  @override
  String get navToday => '今天';

  @override
  String get navHabits => '习惯';

  @override
  String get navProgress => '进度';

  @override
  String get navSettings => '设置';

  @override
  String get todaySubtitle => '今天迈出任何一步,都很好。';

  @override
  String habitTargets(String target, String smallerTarget) {
    return '目标:$target · 小目标:$smallerTarget';
  }

  @override
  String get checkInNormal => '完成';

  @override
  String get checkInSmaller => '小步';

  @override
  String get checkInNotDone => '今天不了';

  @override
  String get habitsEmpty => '还没有习惯。点按“新习惯”添加第一个吧。';

  @override
  String get habitsAdd => '新习惯';

  @override
  String get progressLast7Days => '最近 7 天';

  @override
  String get settingsReminders => '提醒';

  @override
  String get settingsPrivacy => '隐私';

  @override
  String get settingsPrivacySummary => '你的数据只存储在这台设备上。';

  @override
  String habitsArchived(int count) {
    return '已归档($count)';
  }

  @override
  String get todayNoHabits => '添加一个习惯就可以开始。从小处着手也很好。';

  @override
  String get todayNothingScheduled => '今天没有安排。休息也是计划的一部分。';

  @override
  String get habitNewTitle => '新习惯';

  @override
  String get habitEditTitle => '编辑习惯';

  @override
  String get habitNameLabel => '习惯';

  @override
  String get habitNameHint => '例如:散步';

  @override
  String get habitTargetLabel => '常规目标';

  @override
  String get habitTargetHint => '例如:30 分钟';

  @override
  String get habitSmallerLabel => '小目标';

  @override
  String get habitSmallerHint => '例如:5 分钟';

  @override
  String get habitSmallerHelper => '适合忙碌或没精力的日子的轻松版本,同样算数。';

  @override
  String get habitScheduleLabel => '安排';

  @override
  String get scheduleDaily => '每天';

  @override
  String get scheduleSelectedDays => '指定日期';

  @override
  String get scheduleNoDaysError => '请至少选择一天。';

  @override
  String get habitReminderLabel => '提醒';

  @override
  String get habitReminderOff => '关闭';

  @override
  String get habitReminderChange => '修改时间';

  @override
  String get habitArchive => '归档';

  @override
  String get habitUnarchive => '恢复';

  @override
  String get habitDeleteTitle => '删除习惯?';

  @override
  String habitDeleteBody(String name) {
    return '“$name”及其所有打卡记录将被永久删除。如果以后可能还想用,可以先归档。';
  }

  @override
  String get actionSave => '保存';

  @override
  String get actionCancel => '取消';

  @override
  String get actionDelete => '删除';

  @override
  String get fieldRequired => '请填写此项。';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return '当前目标:$smallerTarget · 常规:$target';
  }

  @override
  String get habitFocusSmallerLabel => '暂时使用小目标';

  @override
  String get habitFocusSmallerHelper => '适合休息之后重新开始。等你准备好了,随时可以切换回来。';

  @override
  String recoveryTitle(String name) {
    return '让我们轻轻地重新开始“$name”';
  }

  @override
  String get recoveryBody => '最近计划的几天没能完成。没关系,每个人都会这样。接下来你想怎么继续?';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return '调小一点($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => '保持常规目标';

  @override
  String get recoveryChangeSchedule => '修改安排';

  @override
  String get recoverySkip => '暂时不用';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return '选得好。$smallerTarget完全算数。';
  }

  @override
  String get recoveryNormalDone => '欢迎回来,你可以的。';

  @override
  String get progressLast30Days => '最近 30 天';

  @override
  String get progressNoHabits => '添加一个习惯,就能在这里看到你的进度。';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return '在 $planned 次计划中,你坚持了 $showedUp 次';
  }

  @override
  String get progressFullGoal => '完成目标';

  @override
  String get progressSmallSteps => '小步';

  @override
  String get progressComebacks => '重新开始';

  @override
  String get progressNotDone => '未完成';

  @override
  String progressHabitCount(int showedUp, int planned) {
    return '$showedUp/$planned';
  }

  @override
  String progressEncourageComebacks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '休息之后,你回来了 $count 次。这最难能可贵。',
      one: '休息之后,你回来了一次。这最难能可贵。',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall => '小步能让习惯延续下去,做得好。';

  @override
  String get progressEncourageAny => '你每一次出现,都算数。';

  @override
  String get progressEncourageStart => '随时都可以重新开始。一小步就足够了。';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date:完成 $normal 次,小步 $smaller 次,未完成 $missed 次';
  }

  @override
  String get reminderChannelName => '习惯提醒';

  @override
  String get reminderChannelDescription => '在你为习惯设定的时间,给你温柔的提醒。';

  @override
  String reminderBody(String target, String smallerTarget) {
    return '现在正适合$target。哪怕只做$smallerTarget,也算数。';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return '现在正适合$smallerTarget。小步也算数。';
  }

  @override
  String get remindersSummary => '提醒会在每个习惯设定的时间发出,且只在计划的日期发出。';

  @override
  String get remindersPermissionDenied =>
      '此应用的通知已关闭。请在手机的“设置 > 应用 > Habit Recovery > 通知”中开启。';

  @override
  String get remindersUnsupported => '提醒功能适用于 Android 应用,在此预览版中不可用。';

  @override
  String get notificationsOffTitle => '通知已关闭';

  @override
  String get notificationsOffBody =>
      '没关系,不开通知应用也能正常使用。如果以后想要提醒,请打开手机的“设置 > 应用 > Habit Recovery > 通知”并开启。';

  @override
  String get actionOk => '好的';

  @override
  String get privacyTitle => '隐私';

  @override
  String get privacyIntro => 'Habit Recovery 的设计初衷,就是保护你习惯的隐私。';

  @override
  String get privacyStoredTitle => '仅存储在你的设备上';

  @override
  String get privacyStoredBody => '你的习惯、安排和打卡记录保存在这台设备的数据库中,绝不会上传到任何地方。';

  @override
  String get privacyNoAccountTitle => '无需账号,无追踪';

  @override
  String get privacyNoAccountBody => '你不需要注册。应用不收集个人数据,也没有数据分析或社交功能。';

  @override
  String get privacyNotificationsTitle => '提醒只在本地';

  @override
  String get privacyNotificationsBody => '提醒由你的手机自己安排,不会从服务器发送任何内容。';

  @override
  String get privacyDeleteTitle => '一切由你掌控';

  @override
  String get privacyDeleteBody => '删除习惯会从这台设备上移除它的打卡记录。卸载应用会移除你的所有数据。';
}
