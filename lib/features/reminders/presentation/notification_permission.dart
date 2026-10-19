import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../l10n/app_localizations.dart';
import '../data/reminder_providers.dart';

/// Asks for notification permission if needed. When it is refused, explains
/// how to turn notifications on later; the app keeps working either way.
/// Returns whether notifications are allowed.
Future<bool> ensureNotificationPermission(
  BuildContext context,
  WidgetRef ref,
) async {
  final scheduler = ref.read(reminderSchedulerProvider);
  if (!scheduler.isSupported) return false;
  if (await scheduler.hasPermission()) return true;
  final granted = await scheduler.requestPermission();
  ref.invalidate(notificationPermissionProvider);
  if (!granted && context.mounted) {
    await showDialog<void>(
      context: context,
      builder: (context) {
        final l10n = AppLocalizations.of(context);
        return AlertDialog(
          title: Text(l10n.notificationsOffTitle),
          content: Text(l10n.notificationsOffBody),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(l10n.actionOk),
            ),
          ],
        );
      },
    );
  }
  return granted;
}
