// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Habit Recovery';

  @override
  String get onboardingTitle1 => 'Alışkanlıkları nazikçe kur';

  @override
  String get onboardingBody1 =>
      'Senin için önemli birkaç alışkanlık seç. Daha küçük bir versiyonu yapmak da sayılır.';

  @override
  String get onboardingTitle2 => 'Birkaç gün mü aksattın? Yeniden başla';

  @override
  String get onboardingBody2 =>
      'Burada ceza yok. Birkaç gün aksattığında, daha küçük bir adımla yeniden başlamana yardım ederiz.';

  @override
  String get onboardingTitle3 => 'Verilerin telefonunda kalır';

  @override
  String get onboardingBody3 =>
      'Hesap gerekmez. Her şey yalnızca bu cihazda saklanır ve çevrimdışı çalışır.';

  @override
  String get onboardingSkip => 'Geç';

  @override
  String get onboardingNext => 'İleri';

  @override
  String get onboardingStart => 'Başla';

  @override
  String onboardingPageIndicator(int current, int total) {
    return 'Sayfa $current / $total';
  }

  @override
  String get navToday => 'Bugün';

  @override
  String get navHabits => 'Alışkanlıklar';

  @override
  String get navProgress => 'İlerleme';

  @override
  String get navSettings => 'Ayarlar';

  @override
  String get todaySubtitle => 'Bugün atılan her adım güzel bir adım.';

  @override
  String habitTargets(String target, String smallerTarget) {
    return 'Hedef: $target · Küçük: $smallerTarget';
  }

  @override
  String get checkInNormal => 'Tamam';

  @override
  String get checkInSmaller => 'Küçük adım';

  @override
  String get checkInNotDone => 'Bugün değil';

  @override
  String get habitsEmpty =>
      'Henüz alışkanlık yok. İlkini eklemek için Yeni alışkanlık\'a dokun.';

  @override
  String get habitsAdd => 'Yeni alışkanlık';

  @override
  String get progressLast7Days => 'Son 7 gün';

  @override
  String get settingsReminders => 'Hatırlatıcılar';

  @override
  String get settingsPrivacy => 'Gizlilik';

  @override
  String get settingsPrivacySummary =>
      'Verilerin yalnızca bu cihazda saklanır.';

  @override
  String habitsArchived(int count) {
    return 'Arşivlenenler ($count)';
  }

  @override
  String get todayNoHabits =>
      'Başlamak için bir alışkanlık ekle. Küçük olması sorun değil.';

  @override
  String get todayNothingScheduled =>
      'Bugün planlanmış bir şey yok. Dinlenmek de planın bir parçası.';

  @override
  String get habitNewTitle => 'Yeni alışkanlık';

  @override
  String get habitEditTitle => 'Alışkanlığı düzenle';

  @override
  String get habitNameLabel => 'Alışkanlık';

  @override
  String get habitNameHint => 'örn. Yürüyüş';

  @override
  String get habitTargetLabel => 'Normal hedef';

  @override
  String get habitTargetHint => 'örn. 30 dakika';

  @override
  String get habitSmallerLabel => 'Küçük hedef';

  @override
  String get habitSmallerHint => 'örn. 5 dakika';

  @override
  String get habitSmallerHelper =>
      'Yoğun veya enerjisiz günler için kolay versiyon. Bu da sayılır.';

  @override
  String get habitScheduleLabel => 'Program';

  @override
  String get scheduleDaily => 'Her gün';

  @override
  String get scheduleSelectedDays => 'Seçili günler';

  @override
  String get scheduleNoDaysError => 'En az bir gün seç.';

  @override
  String get habitReminderLabel => 'Hatırlatıcı';

  @override
  String get habitReminderOff => 'Kapalı';

  @override
  String get habitReminderChange => 'Saati değiştir';

  @override
  String get habitArchive => 'Arşivle';

  @override
  String get habitUnarchive => 'Geri yükle';

  @override
  String get habitDeleteTitle => 'Alışkanlık silinsin mi?';

  @override
  String habitDeleteBody(String name) {
    return '\"$name\" ve tüm kayıtları kalıcı olarak silinecek. Geri isteyebileceksen bunun yerine arşivle.';
  }

  @override
  String get actionSave => 'Kaydet';

  @override
  String get actionCancel => 'İptal';

  @override
  String get actionDelete => 'Sil';

  @override
  String get fieldRequired => 'Lütfen burayı doldur.';

  @override
  String habitTargetsFocusSmaller(String smallerTarget, String target) {
    return 'Şimdilik hedef: $smallerTarget · Normal: $target';
  }

  @override
  String get habitFocusSmallerLabel => 'Şimdilik küçük hedefi kullan';

  @override
  String get habitFocusSmallerHelper =>
      'Aradan sonra yeniden başlamak için iyi. Hazır hissettiğinde istediğin zaman geri dönebilirsin.';

  @override
  String recoveryTitle(String name) {
    return '$name alışkanlığına nazikçe yeniden başlayalım';
  }

  @override
  String get recoveryBody =>
      'Planlanan son birkaç gün gerçekleşmedi. Sorun değil, herkesin başına gelir. Nasıl devam etmek istersin?';

  @override
  String recoveryUseSmaller(String smallerTarget) {
    return 'Küçült ($smallerTarget)';
  }

  @override
  String get recoveryUseNormal => 'Normal hedefi koru';

  @override
  String get recoveryChangeSchedule => 'Programı değiştir';

  @override
  String get recoverySkip => 'Şimdi değil';

  @override
  String recoverySmallerDone(String smallerTarget) {
    return 'Harika seçim. $smallerTarget tamamen sayılır.';
  }

  @override
  String get recoveryNormalDone => 'Tekrar hoş geldin. Yapabilirsin.';

  @override
  String get progressLast30Days => 'Son 30 gün';

  @override
  String get progressNoHabits =>
      'İlerlemeni burada görmek için bir alışkanlık ekle.';

  @override
  String progressShowedUp(int showedUp, int planned) {
    return 'Planlanan $planned seferin $showedUp tanesinde oradaydın';
  }

  @override
  String get progressFullGoal => 'Tam hedef';

  @override
  String get progressSmallSteps => 'Küçük adımlar';

  @override
  String get progressComebacks => 'Geri dönüşler';

  @override
  String get progressNotDone => 'Yapılmadı';

  @override
  String progressHabitCount(int showedUp, int planned) {
    return '$showedUp/$planned';
  }

  @override
  String progressEncourageComebacks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aradan sonra $count kez geri döndün. En önemlisi bu.',
      one: 'Aradan sonra bir kez geri döndün. En önemlisi bu.',
    );
    return '$_temp0';
  }

  @override
  String get progressEncourageSmall =>
      'Küçük adımlar alışkanlığı yaşatır. Güzel iş.';

  @override
  String get progressEncourageAny => 'Ortaya çıktığın her sefer sayılır.';

  @override
  String get progressEncourageStart =>
      'Yeni bir başlangıç her zaman mümkün. Tek bir küçük adım yeter.';

  @override
  String progressDaySemantics(
    String date,
    int normal,
    int smaller,
    int missed,
  ) {
    return '$date: $normal tam, $smaller küçük adım, $missed yapılmadı';
  }

  @override
  String get reminderChannelName => 'Alışkanlık hatırlatıcıları';

  @override
  String get reminderChannelDescription =>
      'Alışkanlıkların için seçtiğin saatlerde nazik hatırlatmalar.';

  @override
  String reminderBody(String target, String smallerTarget) {
    return '$target için güzel bir zaman. $smallerTarget bile sayılır.';
  }

  @override
  String reminderBodyFocusSmaller(String smallerTarget) {
    return '$smallerTarget için güzel bir zaman. Küçük adımlar sayılır.';
  }

  @override
  String get remindersSummary =>
      'Hatırlatıcılar, her alışkanlık için ayarlanan saatte ve yalnızca planlanan günlerde gelir.';

  @override
  String get remindersPermissionDenied =>
      'Bu uygulama için bildirimler kapalı. Telefonunda Ayarlar > Uygulamalar > Habit Recovery > Bildirimler yolundan aç.';

  @override
  String get remindersUnsupported =>
      'Hatırlatıcılar Android uygulamasında çalışır. Bu önizlemede kullanılamaz.';

  @override
  String get notificationsOffTitle => 'Bildirimler kapalı';

  @override
  String get notificationsOffBody =>
      'Sorun değil, uygulama onlarsız da çalışır. Daha sonra hatırlatıcı istersen telefonunda Ayarlar > Uygulamalar > Habit Recovery > Bildirimler\'i açıp etkinleştir.';

  @override
  String get actionOk => 'Tamam';

  @override
  String get privacyTitle => 'Gizlilik';

  @override
  String get privacyIntro =>
      'Habit Recovery, alışkanlıklarını gizli tutmak için tasarlandı.';

  @override
  String get privacyStoredTitle => 'Yalnızca cihazında saklanır';

  @override
  String get privacyStoredBody =>
      'Alışkanlıkların, programların ve kayıtların bu cihazdaki bir veritabanına kaydedilir. Hiçbir yere yüklenmez.';

  @override
  String get privacyNoAccountTitle => 'Hesap yok, takip yok';

  @override
  String get privacyNoAccountBody =>
      'Kayıt olmanız gerekmez. Uygulamada analiz ve sosyal özellikler yoktur ve kendi başına hiçbir kişisel veri toplamaz.';

  @override
  String get privacyNotificationsTitle => 'Hatırlatıcılar yerel kalır';

  @override
  String get privacyNotificationsBody =>
      'Hatırlatıcıları telefonun kendisi planlar. Hiçbir sunucudan bir şey gönderilmez.';

  @override
  String get privacyDeleteTitle => 'Kontrol sende';

  @override
  String get privacyDeleteBody =>
      'Bir alışkanlığı silmek, kayıtlarını bu cihazdan kaldırır. Uygulamayı kaldırmak tüm verilerini siler.';

  @override
  String get privacyAdsTitle => 'Tek bir küçük reklam';

  @override
  String get privacyAdsBody =>
      'Uygulama ücretsizdir ve Google AdMob\'dan tek bir küçük banner reklam gösterir. Google, bunu göstermek için cihazınızın reklam kimliğini kullanabilir. Yasaların gerektirdiği yerlerde önce sizden izin istenir ve bu seçimi daha sonra Ayarlar\'dan değiştirebilirsiniz. Alışkanlıklarınız reklam verenlerle asla paylaşılmaz.';

  @override
  String get settingsAdChoices => 'Reklam gizliliği seçenekleri';

  @override
  String get settingsAdChoicesSummary =>
      'Reklam iznini gözden geçirin veya değiştirin.';
}
