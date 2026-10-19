// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => 'Xây thói quen nhẹ nhàng';

  @override
  String get onboardingBody1 =>
      'Chọn vài thói quen quan trọng với bạn. Làm phiên bản nhỏ hơn vẫn được tính.';

  @override
  String get onboardingTitle2 => 'Lỡ vài ngày? Bắt đầu lại thôi';

  @override
  String get onboardingBody2 =>
      'Ở đây không có hình phạt. Khi bạn lỡ vài ngày, app giúp bạn quay lại bằng một bước nhỏ hơn.';

  @override
  String get onboardingTitle3 => 'Dữ liệu nằm trên điện thoại của bạn';

  @override
  String get onboardingBody3 =>
      'Không cần tài khoản. Mọi thứ chỉ được lưu trên máy này và dùng được khi không có mạng.';

  @override
  String get onboardingSkip => 'Bỏ qua';

  @override
  String get onboardingNext => 'Tiếp';

  @override
  String get onboardingStart => 'Bắt đầu';

  @override
  String onboardingPageIndicator(int current, int total) {
    return 'Trang $current trên $total';
  }

  @override
  String get navToday => 'Hôm nay';

  @override
  String get navHabits => 'Thói quen';

  @override
  String get navProgress => 'Tiến bộ';

  @override
  String get navSettings => 'Cài đặt';

  @override
  String get todaySubtitle => 'Bước nào hôm nay cũng là bước tốt.';

  @override
  String habitTargets(String target, String smallerTarget) {
    return 'Mục tiêu: $target · Nhỏ hơn: $smallerTarget';
  }

  @override
  String get checkInNormal => 'Đã xong';

  @override
  String get checkInSmaller => 'Bước nhỏ';

  @override
  String get checkInNotDone => 'Hôm nay nghỉ';

  @override
  String get habitsEmpty =>
      'Chưa có thói quen nào. Bấm Thói quen mới để thêm thói quen đầu tiên.';

  @override
  String get habitsAdd => 'Thói quen mới';

  @override
  String get progressLast7Days => '7 ngày qua';

  @override
  String get settingsReminders => 'Nhắc nhở';

  @override
  String get settingsPrivacy => 'Quyền riêng tư';

  @override
  String get settingsPrivacySummary =>
      'Dữ liệu của bạn chỉ được lưu trên máy này.';

  @override
  String habitsArchived(int count) {
    return 'Đã lưu trữ ($count)';
  }

  @override
  String get todayNoHabits =>
      'Thêm một thói quen để bắt đầu. Nhỏ thôi cũng được.';

  @override
  String get todayNothingScheduled =>
      'Hôm nay không có lịch. Nghỉ ngơi cũng là một phần của kế hoạch.';

  @override
  String get habitNewTitle => 'Thói quen mới';

  @override
  String get habitEditTitle => 'Sửa thói quen';

  @override
  String get habitNameLabel => 'Thói quen';

  @override
  String get habitNameHint => 'Ví dụ: Đi bộ';

  @override
  String get habitTargetLabel => 'Mục tiêu thường';

  @override
  String get habitTargetHint => 'Ví dụ: 30 phút';

  @override
  String get habitSmallerLabel => 'Mục tiêu nhỏ';

  @override
  String get habitSmallerHint => 'Ví dụ: 5 phút';

  @override
  String get habitSmallerHelper =>
      'Phiên bản dễ cho ngày bận hoặc mệt. Vẫn được tính.';

  @override
  String get habitScheduleLabel => 'Lịch';

  @override
  String get scheduleDaily => 'Hằng ngày';

  @override
  String get scheduleSelectedDays => 'Chọn ngày';

  @override
  String get scheduleNoDaysError => 'Hãy chọn ít nhất một ngày.';

  @override
  String get habitReminderLabel => 'Nhắc nhở';

  @override
  String get habitReminderOff => 'Tắt';

  @override
  String get habitReminderChange => 'Đổi giờ';

  @override
  String get habitArchive => 'Lưu trữ';

  @override
  String get habitUnarchive => 'Khôi phục';

  @override
  String get habitDeleteTitle => 'Xóa thói quen?';

  @override
  String habitDeleteBody(String name) {
    return '\"$name\" và mọi check-in của nó sẽ bị xóa vĩnh viễn. Hãy lưu trữ nếu bạn có thể muốn dùng lại.';
  }

  @override
  String get actionSave => 'Lưu';

  @override
  String get actionCancel => 'Hủy';

  @override
  String get actionDelete => 'Xóa';

  @override
  String get fieldRequired => 'Vui lòng điền mục này.';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return 'Mục tiêu lúc này: $smallerTarget · Thường: $target';
  }

  @override
  String get habitFocusSmallerLabel => 'Tạm dùng mục tiêu nhỏ';

  @override
  String get habitFocusSmallerHelper =>
      'Phù hợp khi bắt đầu lại sau thời gian nghỉ. Đổi lại bất cứ lúc nào bạn thấy sẵn sàng.';

  @override
  String recoveryTitle(String name) {
    return 'Cùng bắt đầu lại $name nhẹ nhàng nhé';
  }

  @override
  String get recoveryBody =>
      'Vài ngày theo kế hoạch vừa rồi chưa làm được. Không sao cả, ai cũng có lúc như vậy. Bạn muốn tiếp tục thế nào?';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return 'Làm nhỏ lại ($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => 'Giữ mục tiêu thường';

  @override
  String get recoveryChangeSchedule => 'Đổi lịch';

  @override
  String get recoverySkip => 'Để sau';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return 'Lựa chọn hay. $smallerTarget vẫn được tính trọn vẹn.';
  }

  @override
  String get recoveryNormalDone => 'Chào mừng bạn quay lại. Bạn làm được mà.';

  @override
  String get progressLast30Days => '30 ngày qua';

  @override
  String get progressNoHabits => 'Thêm một thói quen để xem tiến bộ ở đây.';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return 'Bạn đã có mặt $showedUp trên $planned lần theo kế hoạch';
  }

  @override
  String get progressFullGoal => 'Trọn mục tiêu';

  @override
  String get progressSmallSteps => 'Bước nhỏ';

  @override
  String get progressComebacks => 'Lần quay lại';

  @override
  String get progressNotDone => 'Chưa làm';

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
          'Bạn đã quay lại sau thời gian nghỉ $count lần. Đó là điều quan trọng nhất.',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall =>
      'Những bước nhỏ giữ cho thói quen sống. Làm tốt lắm.';

  @override
  String get progressEncourageAny => 'Mỗi lần bạn có mặt đều đáng ghi nhận.';

  @override
  String get progressEncourageStart =>
      'Lúc nào cũng có thể bắt đầu lại. Một bước nhỏ là đủ.';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date: $normal trọn mục tiêu, $smaller bước nhỏ, $missed chưa làm';
  }

  @override
  String get reminderChannelName => 'Nhắc nhở thói quen';

  @override
  String get reminderChannelDescription =>
      'Lời nhắc nhẹ nhàng vào giờ bạn chọn cho từng thói quen.';

  @override
  String reminderBody(String target, String smallerTarget) {
    return 'Đến giờ cho $target rồi. $smallerTarget thôi cũng được tính.';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return 'Đến giờ cho $smallerTarget rồi. Bước nhỏ cũng đáng ghi nhận.';
  }

  @override
  String get remindersSummary =>
      'Nhắc nhở đến vào giờ đặt ở từng thói quen, chỉ vào những ngày có lịch.';

  @override
  String get remindersPermissionDenied =>
      'Thông báo của app đang bị tắt. Bật lại trong Cài đặt của điện thoại > Ứng dụng > Habit Recovery > Thông báo.';

  @override
  String get remindersUnsupported =>
      'Nhắc nhở hoạt động trên app Android, không có trong bản xem thử này.';

  @override
  String get notificationsOffTitle => 'Thông báo đang tắt';

  @override
  String get notificationsOffBody =>
      'Không sao, app vẫn dùng bình thường. Nếu sau này muốn nhận nhắc nhở, hãy mở Cài đặt của điện thoại > Ứng dụng > Habit Recovery > Thông báo và bật lên.';

  @override
  String get actionOk => 'OK';

  @override
  String get privacyTitle => 'Quyền riêng tư';

  @override
  String get privacyIntro =>
      'Habit Recovery được thiết kế để giữ kín các thói quen của bạn.';

  @override
  String get privacyStoredTitle => 'Chỉ lưu trên thiết bị của bạn';

  @override
  String get privacyStoredBody =>
      'Thói quen, lịch và check-in được lưu trong cơ sở dữ liệu trên thiết bị này. Chúng không bao giờ được tải lên đâu cả.';

  @override
  String get privacyNoAccountTitle => 'Không tài khoản, không theo dõi';

  @override
  String get privacyNoAccountBody =>
      'Bạn không cần đăng ký. Ứng dụng không có phân tích hay tính năng mạng xã hội, và tự nó không thu thập dữ liệu cá nhân.';

  @override
  String get privacyNotificationsTitle => 'Nhắc nhở nằm ngay trên máy';

  @override
  String get privacyNotificationsBody =>
      'Nhắc nhở do chính điện thoại của bạn lên lịch. Không có gì được gửi từ máy chủ.';

  @override
  String get privacyDeleteTitle => 'Bạn toàn quyền kiểm soát';

  @override
  String get privacyDeleteBody =>
      'Xóa một thói quen sẽ xóa các check-in của nó khỏi thiết bị này. Gỡ ứng dụng sẽ xóa toàn bộ dữ liệu của bạn.';

  @override
  String get privacyAdsTitle => 'Một quảng cáo nhỏ';

  @override
  String get privacyAdsBody =>
      'Ứng dụng miễn phí và chỉ hiển thị một biển quảng cáo nhỏ của Google AdMob. Google có thể dùng mã quảng cáo của thiết bị để hiển thị nó. Khi luật yêu cầu, bạn sẽ được hỏi đồng ý trước và có thể đổi lựa chọn sau trong Cài đặt. Thói quen của bạn không bao giờ được chia sẻ với nhà quảng cáo.';

  @override
  String get settingsAdChoices => 'Lựa chọn riêng tư về quảng cáo';

  @override
  String get settingsAdChoicesSummary =>
      'Xem hoặc đổi sự đồng ý của bạn với quảng cáo.';
}
