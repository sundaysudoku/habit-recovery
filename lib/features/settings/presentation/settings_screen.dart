import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';

/// Placeholder; reminder controls arrive in Phase 5, privacy details in Phase 6.
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l10n.navSettings)),
      body: ListView(
        children: [
          SwitchListTile(
            secondary: const Icon(Icons.notifications_outlined),
            title: Text(l10n.settingsReminders),
            subtitle: Text(l10n.comingSoon),
            value: false,
            onChanged: null,
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
