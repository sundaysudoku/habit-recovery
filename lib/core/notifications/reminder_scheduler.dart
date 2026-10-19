import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest_all.dart' as tz_data;
import 'package:timezone/timezone.dart' as tz;

import '../../features/reminders/domain/reminder_plan.dart';

/// Text for one reminder, already localized.
typedef ReminderText = ({String title, String body});

/// Schedules repeating habit reminders with the operating system.
abstract interface class ReminderScheduler {
  /// Whether reminders can work on this platform at all.
  bool get isSupported;

  /// Whether the user currently allows notifications.
  Future<bool> hasPermission();

  /// Asks for notification permission (Android 13+); returns the result.
  Future<bool> requestPermission();

  /// Replaces all scheduled reminders with [reminders].
  Future<void> replaceAll(
    List<ReminderRequest> reminders,
    ReminderText Function(ReminderRequest) textFor, {
    required String channelName,
    required String channelDescription,
  });
}

/// Android implementation using flutter_local_notifications.
///
/// Reminders repeat by local wall-clock time in the device's current time
/// zone, so they stay at the chosen time across daylight-saving changes.
/// The app calls [replaceAll] on start, on resume and whenever habits change,
/// which also picks up time zone changes. Inexact alarms are used, so a
/// reminder may arrive a few minutes late, and no exact-alarm permission is
/// needed.
class LocalReminderScheduler implements ReminderScheduler {
  final _plugin = FlutterLocalNotificationsPlugin();
  Future<void>? _init;

  @override
  bool get isSupported =>
      !kIsWeb && defaultTargetPlatform == TargetPlatform.android;

  AndroidFlutterLocalNotificationsPlugin? get _android => _plugin
      .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin
      >();

  Future<void> _ensureInitialized() => _init ??= () async {
    tz_data.initializeTimeZones();
    await _plugin.initialize(
      settings: const InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      ),
    );
  }();

  Future<void> _useDeviceTimeZone() async {
    try {
      final info = await FlutterTimezone.getLocalTimezone();
      tz.setLocalLocation(tz.getLocation(info.identifier));
    } on Object {
      // Unknown zone name: keep UTC so reminders still fire, possibly offset.
      tz.setLocalLocation(tz.UTC);
    }
  }

  @override
  Future<bool> hasPermission() async {
    if (!isSupported) return false;
    await _ensureInitialized();
    return await _android?.areNotificationsEnabled() ?? false;
  }

  @override
  Future<bool> requestPermission() async {
    if (!isSupported) return false;
    await _ensureInitialized();
    return await _android?.requestNotificationsPermission() ?? false;
  }

  @override
  Future<void> replaceAll(
    List<ReminderRequest> reminders,
    ReminderText Function(ReminderRequest) textFor, {
    required String channelName,
    required String channelDescription,
  }) async {
    if (!isSupported) return;
    await _ensureInitialized();
    await _useDeviceTimeZone();
    await _plugin.cancelAll();

    final details = NotificationDetails(
      android: AndroidNotificationDetails(
        'habit_reminders',
        channelName,
        channelDescription: channelDescription,
        importance: Importance.defaultImportance,
        priority: Priority.defaultPriority,
      ),
    );
    final now = tz.TZDateTime.now(tz.local);
    for (final reminder in reminders) {
      final text = textFor(reminder);
      await _plugin.zonedSchedule(
        id: reminder.id,
        title: text.title,
        body: text.body,
        scheduledDate: nextOccurrence(now, reminder),
        notificationDetails: details,
        androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
        matchDateTimeComponents: reminder.weekday == null
            ? DateTimeComponents.time
            : DateTimeComponents.dayOfWeekAndTime,
      );
    }
  }
}

/// The next time [reminder] should fire after [now], in [now]'s time zone.
@visibleForTesting
tz.TZDateTime nextOccurrence(tz.TZDateTime now, ReminderRequest reminder) {
  var candidate = tz.TZDateTime(
    now.location,
    now.year,
    now.month,
    now.day,
    reminder.hour,
    reminder.minute,
  );
  // Advance by calendar days (not 24-hour durations) so DST does not shift
  // the wall-clock time.
  while (!candidate.isAfter(now) ||
      (reminder.weekday != null && candidate.weekday != reminder.weekday)) {
    candidate = tz.TZDateTime(
      now.location,
      candidate.year,
      candidate.month,
      candidate.day + 1,
      reminder.hour,
      reminder.minute,
    );
  }
  return candidate;
}
