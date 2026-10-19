import 'package:flutter/foundation.dart' show listEquals;
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../l10n/app_localizations.dart';
import '../../habits/data/habit_repository.dart';
import '../../habits/domain/habit.dart';
import '../data/reminder_providers.dart';
import '../domain/reminder_plan.dart';

/// Keeps the operating system's scheduled reminders in sync with the habits:
/// on start, whenever habits or the reminder switch change, when the language
/// changes, and when the app returns to the foreground (which also picks up
/// time zone changes).
class ReminderSync extends ConsumerStatefulWidget {
  const ReminderSync({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<ReminderSync> createState() => _ReminderSyncState();
}

class _ReminderSyncState extends ConsumerState<ReminderSync>
    with WidgetsBindingObserver {
  List<ReminderRequest>? _lastPlan;
  Locale? _lastLocale;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      ref.invalidate(notificationPermissionProvider);
      _sync(force: true);
    }
  }

  Future<void> _sync({bool force = false}) async {
    final habits = ref.read(activeHabitsProvider).value;
    if (habits == null || !mounted) return;
    final plan = planReminders(
      habits,
      enabled: ref.read(remindersEnabledProvider),
    );
    final locale = Localizations.localeOf(context);
    if (!force &&
        locale == _lastLocale &&
        _lastPlan != null &&
        listEquals(plan, _lastPlan) &&
        _sameContent(plan, _lastPlan!)) {
      return;
    }
    _lastPlan = plan;
    _lastLocale = locale;
    final l10n = AppLocalizations.of(context);
    await ref
        .read(reminderSchedulerProvider)
        .replaceAll(
          plan,
          (r) => (title: r.habit.name, body: _body(l10n, r.habit)),
          channelName: l10n.reminderChannelName,
          channelDescription: l10n.reminderChannelDescription,
        );
  }

  static String _body(AppLocalizations l10n, Habit habit) => habit.focusSmaller
      ? l10n.reminderBodyFocusSmaller(habit.smallerTarget)
      : l10n.reminderBody(habit.normalTarget, habit.smallerTarget);

  /// Reminder text depends on names and targets, which [ReminderRequest]
  /// equality ignores.
  static bool _sameContent(List<ReminderRequest> a, List<ReminderRequest> b) {
    for (var i = 0; i < a.length; i++) {
      final x = a[i].habit, y = b[i].habit;
      if (x.name != y.name ||
          x.normalTarget != y.normalTarget ||
          x.smallerTarget != y.smallerTarget ||
          x.focusSmaller != y.focusSmaller) {
        return false;
      }
    }
    return true;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Locale changes arrive here.
    WidgetsBinding.instance.addPostFrameCallback((_) => _sync());
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(activeHabitsProvider, (_, _) => _sync());
    ref.listen(remindersEnabledProvider, (_, _) => _sync());
    return widget.child;
  }
}
