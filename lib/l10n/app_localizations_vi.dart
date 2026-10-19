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
  String get settingsRemindersSoon =>
      'Tính năng nhắc nhở sẽ có trong bản cập nhật sau.';

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
}
