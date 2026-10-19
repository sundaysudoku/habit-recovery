// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => 'สร้างนิสัยอย่างอ่อนโยน';

  @override
  String get onboardingBody1 =>
      'เลือกนิสัยสักไม่กี่อย่างที่สำคัญกับคุณ การทำแบบเล็กลงก็นับเหมือนกัน';

  @override
  String get onboardingTitle2 => 'พลาดไปหลายวัน? เริ่มใหม่ได้เสมอ';

  @override
  String get onboardingBody2 =>
      'ที่นี่ไม่มีการลงโทษ เมื่อคุณพลาดไปสองสามวัน เราจะช่วยให้คุณเริ่มใหม่ด้วยก้าวที่เล็กลง';

  @override
  String get onboardingTitle3 => 'ข้อมูลของคุณอยู่ในโทรศัพท์ของคุณ';

  @override
  String get onboardingBody3 =>
      'ไม่ต้องสมัครบัญชี ทุกอย่างเก็บไว้ในเครื่องนี้เท่านั้นและใช้งานได้โดยไม่ต้องเชื่อมต่ออินเทอร์เน็ต';

  @override
  String get onboardingSkip => 'ข้าม';

  @override
  String get onboardingNext => 'ถัดไป';

  @override
  String get onboardingStart => 'เริ่มต้นใช้งาน';

  @override
  String onboardingPageIndicator(int current, int total) {
    return 'หน้า $current จาก $total';
  }

  @override
  String get navToday => 'วันนี้';

  @override
  String get navHabits => 'นิสัย';

  @override
  String get navProgress => 'ความคืบหน้า';

  @override
  String get navSettings => 'ตั้งค่า';

  @override
  String get todaySubtitle => 'ก้าวไหนในวันนี้ก็เป็นก้าวที่ดี';

  @override
  String habitTargets(String target, String smallerTarget) {
    return 'เป้าหมาย: $target · แบบเล็ก: $smallerTarget';
  }

  @override
  String get checkInNormal => 'เสร็จแล้ว';

  @override
  String get checkInSmaller => 'ก้าวเล็ก';

  @override
  String get checkInNotDone => 'วันนี้ไม่ไหว';

  @override
  String get habitsEmpty =>
      'ยังไม่มีนิสัย แตะ นิสัยใหม่ เพื่อเพิ่มอย่างแรกของคุณ';

  @override
  String get habitsAdd => 'นิสัยใหม่';

  @override
  String get progressLast7Days => '7 วันที่ผ่านมา';

  @override
  String get settingsReminders => 'การเตือน';

  @override
  String get settingsPrivacy => 'ความเป็นส่วนตัว';

  @override
  String get settingsPrivacySummary =>
      'ข้อมูลของคุณเก็บไว้ในเครื่องนี้เท่านั้น';

  @override
  String habitsArchived(int count) {
    return 'เก็บถาวรแล้ว ($count)';
  }

  @override
  String get todayNoHabits => 'เพิ่มนิสัยเพื่อเริ่มต้น แค่เล็กๆ ก็ดีแล้ว';

  @override
  String get todayNothingScheduled =>
      'วันนี้ไม่มีกำหนดอะไร การพักผ่อนก็เป็นส่วนหนึ่งของแผนเหมือนกัน';

  @override
  String get habitNewTitle => 'นิสัยใหม่';

  @override
  String get habitEditTitle => 'แก้ไขนิสัย';

  @override
  String get habitNameLabel => 'นิสัย';

  @override
  String get habitNameHint => 'เช่น เดินเล่น';

  @override
  String get habitTargetLabel => 'เป้าหมายปกติ';

  @override
  String get habitTargetHint => 'เช่น 30 นาที';

  @override
  String get habitSmallerLabel => 'เป้าหมายแบบเล็ก';

  @override
  String get habitSmallerHint => 'เช่น 5 นาที';

  @override
  String get habitSmallerHelper =>
      'แบบง่ายสำหรับวันที่ยุ่งหรือเหนื่อย ยังนับเหมือนกัน';

  @override
  String get habitScheduleLabel => 'กำหนดวัน';

  @override
  String get scheduleDaily => 'ทุกวัน';

  @override
  String get scheduleSelectedDays => 'เฉพาะบางวัน';

  @override
  String get scheduleNoDaysError => 'กรุณาเลือกอย่างน้อยหนึ่งวัน';

  @override
  String get habitReminderLabel => 'การเตือน';

  @override
  String get habitReminderOff => 'ปิด';

  @override
  String get habitReminderChange => 'เปลี่ยนเวลา';

  @override
  String get habitArchive => 'เก็บถาวร';

  @override
  String get habitUnarchive => 'กู้คืน';

  @override
  String get habitDeleteTitle => 'ลบนิสัยนี้ไหม?';

  @override
  String habitDeleteBody(String name) {
    return '\"$name\" และบันทึกการเช็กอินทั้งหมดจะถูกลบถาวร หากอาจอยากได้คืนภายหลัง ให้เก็บถาวรแทน';
  }

  @override
  String get actionSave => 'บันทึก';

  @override
  String get actionCancel => 'ยกเลิก';

  @override
  String get actionDelete => 'ลบ';

  @override
  String get fieldRequired => 'กรุณากรอกช่องนี้';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return 'เป้าหมายตอนนี้: $smallerTarget · ปกติ: $target';
  }

  @override
  String get habitFocusSmallerLabel => 'ใช้เป้าหมายแบบเล็กไปก่อน';

  @override
  String get habitFocusSmallerHelper =>
      'เหมาะสำหรับการเริ่มใหม่หลังพักไป สลับกลับได้เมื่อคุณพร้อม';

  @override
  String recoveryTitle(String name) {
    return 'มาเริ่ม $name ใหม่อย่างอ่อนโยนกัน';
  }

  @override
  String get recoveryBody =>
      'วันที่วางแผนไว้ช่วงหลังนี้ยังไม่ได้ทำ ไม่เป็นไรเลย เกิดขึ้นได้กับทุกคน คุณอยากไปต่ออย่างไรดี?';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return 'ทำให้เล็กลง ($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => 'ใช้เป้าหมายปกติต่อ';

  @override
  String get recoveryChangeSchedule => 'เปลี่ยนกำหนดวัน';

  @override
  String get recoverySkip => 'ไว้ก่อน';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return 'เลือกได้ดี $smallerTarget นับเต็มๆ';
  }

  @override
  String get recoveryNormalDone => 'ยินดีต้อนรับกลับมา คุณทำได้แน่นอน';

  @override
  String get progressLast30Days => '30 วันที่ผ่านมา';

  @override
  String get progressNoHabits => 'เพิ่มนิสัยเพื่อดูความคืบหน้าของคุณที่นี่';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return 'คุณมาทำ $showedUp จาก $planned ครั้งที่วางแผนไว้';
  }

  @override
  String get progressFullGoal => 'ตามเป้า';

  @override
  String get progressSmallSteps => 'ก้าวเล็ก';

  @override
  String get progressComebacks => 'กลับมาใหม่';

  @override
  String get progressNotDone => 'ไม่ได้ทำ';

  @override
  String progressHabitCount(int showedUp, int planned) {
    return '$showedUp/$planned';
  }

  @override
  String progressEncourageComebacks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'คุณกลับมาหลังพักไป $count ครั้ง นั่นสำคัญที่สุด',
      one: 'คุณกลับมาหลังพักไปหนึ่งครั้ง นั่นสำคัญที่สุด',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall =>
      'ก้าวเล็กๆ ช่วยให้นิสัยยังอยู่ ทำได้ดีมาก';

  @override
  String get progressEncourageAny => 'ทุกครั้งที่คุณมาทำ ล้วนมีความหมาย';

  @override
  String get progressEncourageStart =>
      'การเริ่มต้นใหม่มีให้เสมอ แค่ก้าวเล็กๆ ก้าวเดียวก็พอ';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date: ตามเป้า $normal ก้าวเล็ก $smaller ไม่ได้ทำ $missed';
  }

  @override
  String get reminderChannelName => 'การเตือนนิสัย';

  @override
  String get reminderChannelDescription =>
      'การเตือนแบบอ่อนโยนตามเวลาที่คุณเลือกไว้สำหรับนิสัยของคุณ';

  @override
  String reminderBody(String target, String smallerTarget) {
    return 'ได้เวลาเหมาะสำหรับ $target แม้แต่ $smallerTarget ก็นับนะ';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return 'ได้เวลาเหมาะสำหรับ $smallerTarget ก้าวเล็กๆ ก็นับนะ';
  }

  @override
  String get remindersSummary =>
      'การเตือนจะมาตามเวลาที่ตั้งไว้ในแต่ละนิสัย และเฉพาะวันที่กำหนดเท่านั้น';

  @override
  String get remindersPermissionDenied =>
      'การแจ้งเตือนของแอปนี้ปิดอยู่ เปิดได้ที่ ตั้งค่า > แอป > Habit Recovery > การแจ้งเตือน ในโทรศัพท์ของคุณ';

  @override
  String get remindersUnsupported =>
      'การเตือนใช้งานได้ในแอป Android ยังไม่รองรับในตัวอย่างนี้';

  @override
  String get notificationsOffTitle => 'การแจ้งเตือนปิดอยู่';

  @override
  String get notificationsOffBody =>
      'ไม่เป็นไร แอปใช้งานได้โดยไม่ต้องมี หากภายหลังอยากได้การเตือน ให้เปิด ตั้งค่า > แอป > Habit Recovery > การแจ้งเตือน ในโทรศัพท์ของคุณ แล้วเปิดใช้งาน';

  @override
  String get actionOk => 'ตกลง';

  @override
  String get privacyTitle => 'ความเป็นส่วนตัว';

  @override
  String get privacyIntro =>
      'Habit Recovery สร้างมาเพื่อเก็บนิสัยของคุณให้เป็นส่วนตัว';

  @override
  String get privacyStoredTitle => 'เก็บไว้ในเครื่องของคุณเท่านั้น';

  @override
  String get privacyStoredBody =>
      'นิสัย กำหนดวัน และบันทึกการเช็กอินของคุณถูกบันทึกในฐานข้อมูลบนเครื่องนี้ และจะไม่ถูกอัปโหลดไปที่ใดเลย';

  @override
  String get privacyNoAccountTitle => 'ไม่ต้องมีบัญชี ไม่มีการติดตาม';

  @override
  String get privacyNoAccountBody =>
      'คุณไม่ต้องสมัครสมาชิก แอปไม่มีระบบวิเคราะห์และฟีเจอร์โซเชียล และไม่เก็บข้อมูลส่วนบุคคลใด ๆ ด้วยตัวเอง';

  @override
  String get privacyNotificationsTitle => 'การเตือนอยู่ในเครื่อง';

  @override
  String get privacyNotificationsBody =>
      'การเตือนถูกตั้งเวลาโดยโทรศัพท์ของคุณเอง ไม่มีอะไรถูกส่งจากเซิร์ฟเวอร์';

  @override
  String get privacyDeleteTitle => 'คุณเป็นผู้ควบคุม';

  @override
  String get privacyDeleteBody =>
      'การลบนิสัยจะลบบันทึกการเช็กอินของนิสัยนั้นออกจากเครื่องนี้ การถอนการติดตั้งแอปจะลบข้อมูลทั้งหมดของคุณ';

  @override
  String get privacyAdsTitle => 'โฆษณาเล็ก ๆ หนึ่งชิ้น';

  @override
  String get privacyAdsBody =>
      'แอปนี้ใช้ฟรีและแสดงแบนเนอร์โฆษณาขนาดเล็กเพียงหนึ่งชิ้นจาก Google AdMob โดย Google อาจใช้รหัสโฆษณาของอุปกรณ์คุณเพื่อแสดงโฆษณานั้น หากกฎหมายกำหนด เราจะขอความยินยอมจากคุณก่อน และคุณเปลี่ยนการเลือกนี้ภายหลังได้ทุกเมื่อในการตั้งค่า ข้อมูลนิสัยของคุณจะไม่ถูกแชร์ให้ผู้ลงโฆษณาเลย';

  @override
  String get settingsAdChoices => 'ตัวเลือกความเป็นส่วนตัวของโฆษณา';

  @override
  String get settingsAdChoicesSummary =>
      'ตรวจสอบหรือเปลี่ยนความยินยอมของคุณสำหรับโฆษณา';
}
