import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../l10n/app_localizations.dart';
import '../../reminders/data/reminder_providers.dart';
import '../../reminders/presentation/notification_permission.dart';

/// Privacy details arrive in Phase 6.
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final supported = ref.watch(reminderSchedulerProvider).isSupported;
    final enabled = ref.watch(remindersEnabledProvider);
    final permitted = ref.watch(notificationPermissionProvider).value;

    final String subtitle;
    if (!supported) {
      subtitle = l10n.remindersUnsupported;
    } else if (enabled && permitted == false) {
      subtitle = l10n.remindersPermissionDenied;
    } else {
      subtitle = l10n.remindersSummary;
    }

    return Scaffold(
      appBar: AppBar(title: Text(l10n.navSettings)),
      body: ListView(
        children: [
          SwitchListTile(
            secondary: const Icon(Icons.notifications_outlined),
            title: Text(l10n.settingsReminders),
            subtitle: Text(subtitle),
            isThreeLine: true,
            value: supported && enabled,
            onChanged: supported
                ? (on) async {
                    await ref.read(remindersEnabledProvider.notifier).set(on);
                    if (on && context.mounted) {
                      await ensureNotificationPermission(context, ref);
                    }
                  }
                : null,
          ),
          ListTile(
            leading: const Icon(Icons.lock_outline),
            title: Text(l10n.settingsPrivacy),
            subtitle: Text(l10n.settingsPrivacySummary),
          ),
        ],
      ),
    );
  }
}
