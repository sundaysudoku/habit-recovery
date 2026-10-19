// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => 'Bangun kebiasaan dengan lembut';

  @override
  String get onboardingBody1 =>
      'Pilih beberapa kebiasaan yang berarti bagimu. Melakukan versi yang lebih kecil tetap dihitung.';

  @override
  String get onboardingTitle2 => 'Terlewat beberapa hari? Mulai lagi';

  @override
  String get onboardingBody2 =>
      'Di sini tidak ada hukuman. Saat kamu melewatkan beberapa hari, kami bantu kamu memulai lagi dengan langkah yang lebih kecil.';

  @override
  String get onboardingTitle3 => 'Datamu tetap di ponselmu';

  @override
  String get onboardingBody3 =>
      'Tanpa akun. Semuanya disimpan hanya di perangkat ini dan bisa dipakai tanpa internet.';

  @override
  String get onboardingSkip => 'Lewati';

  @override
  String get onboardingNext => 'Lanjut';

  @override
  String get onboardingStart => 'Mulai';

  @override
  String onboardingPageIndicator(int current, int total) {
    return 'Halaman $current dari $total';
  }

  @override
  String get navToday => 'Hari ini';

  @override
  String get navHabits => 'Kebiasaan';

  @override
  String get navProgress => 'Kemajuan';

  @override
  String get navSettings => 'Pengaturan';

  @override
  String get todaySubtitle =>
      'Langkah apa pun hari ini adalah langkah yang baik.';

  @override
  String habitTargets(String target, String smallerTarget) {
    return 'Target: $target · Lebih kecil: $smallerTarget';
  }

  @override
  String get checkInNormal => 'Selesai';

  @override
  String get checkInSmaller => 'Langkah kecil';

  @override
  String get checkInNotDone => 'Belum hari ini';

  @override
  String get habitsEmpty =>
      'Belum ada kebiasaan. Ketuk Kebiasaan baru untuk menambah yang pertama.';

  @override
  String get habitsAdd => 'Kebiasaan baru';

  @override
  String get progressLast7Days => '7 hari terakhir';

  @override
  String get settingsReminders => 'Pengingat';

  @override
  String get settingsPrivacy => 'Privasi';

  @override
  String get settingsPrivacySummary =>
      'Datamu disimpan hanya di perangkat ini.';

  @override
  String habitsArchived(int count) {
    return 'Diarsipkan ($count)';
  }

  @override
  String get todayNoHabits =>
      'Tambahkan kebiasaan untuk mulai. Yang kecil pun tidak apa-apa.';

  @override
  String get todayNothingScheduled =>
      'Tidak ada jadwal hari ini. Istirahat juga bagian dari rencana.';

  @override
  String get habitNewTitle => 'Kebiasaan baru';

  @override
  String get habitEditTitle => 'Ubah kebiasaan';

  @override
  String get habitNameLabel => 'Kebiasaan';

  @override
  String get habitNameHint => 'mis. Jalan kaki';

  @override
  String get habitTargetLabel => 'Target biasa';

  @override
  String get habitTargetHint => 'mis. 30 menit';

  @override
  String get habitSmallerLabel => 'Target lebih kecil';

  @override
  String get habitSmallerHint => 'mis. 5 menit';

  @override
  String get habitSmallerHelper =>
      'Versi mudah untuk hari sibuk atau saat energi rendah. Tetap dihitung.';

  @override
  String get habitScheduleLabel => 'Jadwal';

  @override
  String get scheduleDaily => 'Setiap hari';

  @override
  String get scheduleSelectedDays => 'Hari tertentu';

  @override
  String get scheduleNoDaysError => 'Pilih setidaknya satu hari.';

  @override
  String get habitReminderLabel => 'Pengingat';

  @override
  String get habitReminderOff => 'Mati';

  @override
  String get habitReminderChange => 'Ubah waktu';

  @override
  String get habitArchive => 'Arsipkan';

  @override
  String get habitUnarchive => 'Pulihkan';

  @override
  String get habitDeleteTitle => 'Hapus kebiasaan?';

  @override
  String habitDeleteBody(String name) {
    return '\"$name\" dan semua catatannya akan dihapus permanen. Arsipkan saja jika kamu mungkin ingin memakainya lagi.';
  }

  @override
  String get actionSave => 'Simpan';

  @override
  String get actionCancel => 'Batal';

  @override
  String get actionDelete => 'Hapus';

  @override
  String get fieldRequired => 'Mohon isi bagian ini.';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return 'Target saat ini: $smallerTarget · Biasa: $target';
  }

  @override
  String get habitFocusSmallerLabel =>
      'Pakai target yang lebih kecil untuk sementara';

  @override
  String get habitFocusSmallerHelper =>
      'Cocok untuk memulai lagi setelah jeda. Kembali ke target biasa kapan pun kamu siap.';

  @override
  String recoveryTitle(String name) {
    return 'Yuk, mulai lagi $name dengan lembut';
  }

  @override
  String get recoveryBody =>
      'Beberapa hari terakhir yang direncanakan belum terlaksana. Tidak apa-apa, semua orang pernah mengalaminya. Bagaimana kamu ingin melanjutkan?';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return 'Buat lebih kecil ($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => 'Tetap pakai target biasa';

  @override
  String get recoveryChangeSchedule => 'Ubah jadwal';

  @override
  String get recoverySkip => 'Nanti saja';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return 'Pilihan bagus. $smallerTarget dihitung penuh.';
  }

  @override
  String get recoveryNormalDone => 'Selamat datang kembali. Kamu pasti bisa.';

  @override
  String get progressLast30Days => '30 hari terakhir';

  @override
  String get progressNoHabits =>
      'Tambahkan kebiasaan untuk melihat kemajuanmu di sini.';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return 'Kamu hadir $showedUp dari $planned kali yang direncanakan';
  }

  @override
  String get progressFullGoal => 'Target penuh';

  @override
  String get progressSmallSteps => 'Langkah kecil';

  @override
  String get progressComebacks => 'Kembali lagi';

  @override
  String get progressNotDone => 'Belum dilakukan';

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
          'Kamu kembali setelah jeda sebanyak $count kali. Itu yang terpenting.',
      one: 'Kamu kembali setelah jeda satu kali. Itu yang terpenting.',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall =>
      'Langkah kecil menjaga kebiasaan tetap hidup. Kerja bagus.';

  @override
  String get progressEncourageAny => 'Setiap kali kamu hadir itu berarti.';

  @override
  String get progressEncourageStart =>
      'Awal yang baru selalu tersedia. Satu langkah kecil sudah cukup.';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date: $normal penuh, $smaller langkah kecil, $missed belum dilakukan';
  }

  @override
  String get reminderChannelName => 'Pengingat kebiasaan';

  @override
  String get reminderChannelDescription =>
      'Pengingat lembut pada waktu yang kamu pilih untuk kebiasaanmu.';

  @override
  String reminderBody(String target, String smallerTarget) {
    return 'Waktu yang pas untuk $target. $smallerTarget pun tetap dihitung.';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return 'Waktu yang pas untuk $smallerTarget. Langkah kecil tetap dihitung.';
  }

  @override
  String get remindersSummary =>
      'Pengingat datang pada waktu yang diatur di setiap kebiasaan, hanya pada hari yang dijadwalkan.';

  @override
  String get remindersPermissionDenied =>
      'Notifikasi dimatikan untuk aplikasi ini. Nyalakan di Pengaturan ponselmu > Aplikasi > Habit Recovery > Notifikasi.';

  @override
  String get remindersUnsupported =>
      'Pengingat berfungsi di aplikasi Android. Fitur ini belum tersedia di pratinjau ini.';

  @override
  String get notificationsOffTitle => 'Notifikasi mati';

  @override
  String get notificationsOffBody =>
      'Tidak apa-apa, aplikasi tetap berjalan tanpanya. Jika nanti ingin pengingat, buka Pengaturan ponselmu > Aplikasi > Habit Recovery > Notifikasi lalu nyalakan.';

  @override
  String get actionOk => 'OK';

  @override
  String get privacyTitle => 'Privasi';

  @override
  String get privacyIntro =>
      'Habit Recovery dibuat untuk menjaga kebiasaanmu tetap pribadi.';

  @override
  String get privacyStoredTitle => 'Hanya disimpan di perangkatmu';

  @override
  String get privacyStoredBody =>
      'Kebiasaan, jadwal, dan catatanmu disimpan dalam basis data di perangkat ini. Semuanya tidak pernah diunggah ke mana pun.';

  @override
  String get privacyNoAccountTitle => 'Tanpa akun, tanpa pelacakan';

  @override
  String get privacyNoAccountBody =>
      'Kamu tidak perlu mendaftar. Aplikasi ini tidak mengumpulkan data pribadi dan tidak memiliki analitik atau fitur sosial.';

  @override
  String get privacyNotificationsTitle => 'Pengingat tetap lokal';

  @override
  String get privacyNotificationsBody =>
      'Pengingat dijadwalkan oleh ponselmu sendiri. Tidak ada yang dikirim dari server.';

  @override
  String get privacyDeleteTitle => 'Kamu yang mengendalikan';

  @override
  String get privacyDeleteBody =>
      'Menghapus kebiasaan akan menghapus catatannya dari perangkat ini. Menghapus aplikasi akan menghapus semua datamu.';
}
