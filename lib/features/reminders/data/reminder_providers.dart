import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/notifications/reminder_scheduler.dart';
import '../../../core/preferences/app_preferences.dart';

final reminderSchedulerProvider = Provider<ReminderScheduler>(
  (ref) => LocalReminderScheduler(),
);

/// Whether the user currently allows notifications; refresh by invalidating
/// (e.g. when the app resumes after the user visited system settings).
final notificationPermissionProvider = FutureProvider<bool>(
  (ref) => ref.watch(reminderSchedulerProvider).hasPermission(),
);

const _remindersEnabledKey = 'reminders_enabled';

/// App-wide reminder switch; individual habits still need a reminder time.
final remindersEnabledProvider =
    NotifierProvider<RemindersEnabledNotifier, bool>(
      RemindersEnabledNotifier.new,
    );

class RemindersEnabledNotifier extends Notifier<bool> {
  @override
  bool build() =>
      ref.watch(sharedPreferencesProvider).getBool(_remindersEnabledKey) ??
      true;

  Future<void> set(bool enabled) async {
    await ref
        .read(sharedPreferencesProvider)
        .setBool(_remindersEnabledKey, enabled);
    state = enabled;
  }
}
