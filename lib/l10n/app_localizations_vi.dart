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
  String get sampleHabitWalk => 'Đi bộ';

  @override
  String get sampleHabitWalkTarget => '30 phút';

  @override
  String get sampleHabitWalkSmall => '5 phút';

  @override
  String get sampleHabitRead => 'Đọc sách';

  @override
  String get sampleHabitReadTarget => '20 trang';

  @override
  String get sampleHabitReadSmall => '1 trang';

  @override
  String get sampleHabitWater => 'Uống nước';

  @override
  String get sampleHabitWaterTarget => '8 cốc';

  @override
  String get sampleHabitWaterSmall => '4 cốc';

  @override
  String get habitsEmpty =>
      'Danh sách thói quen của bạn sẽ hiện ở đây. Sắp tới bạn có thể thêm, sửa và lưu trữ chúng.';

  @override
  String get habitsAdd => 'Thói quen mới';

  @override
  String get comingSoon => 'Sắp ra mắt';

  @override
  String get progressLast7Days => '7 ngày qua';

  @override
  String get progressPlaceholder =>
      'Ở đây bạn sẽ thấy những bước nhỏ và những lần quay lại, không chỉ chuỗi ngày liên tiếp.';

  @override
  String get settingsReminders => 'Nhắc nhở';

  @override
  String get settingsPrivacy => 'Quyền riêng tư';

  @override
  String get settingsPrivacySummary =>
      'Dữ liệu của bạn chỉ được lưu trên máy này.';
}
