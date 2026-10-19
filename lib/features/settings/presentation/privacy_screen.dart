import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final sections = [
      (Icons.phone_android_outlined, l10n.privacyStoredTitle, l10n.privacyStoredBody),
      (Icons.person_off_outlined, l10n.privacyNoAccountTitle, l10n.privacyNoAccountBody),
      (Icons.notifications_outlined, l10n.privacyNotificationsTitle, l10n.privacyNotificationsBody),
      (Icons.delete_outline, l10n.privacyDeleteTitle, l10n.privacyDeleteBody),
    ];
    return Scaffold(
      appBar: AppBar(title: Text(l10n.privacyTitle)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(l10n.privacyIntro, style: theme.textTheme.titleMedium),
          const SizedBox(height: 16),
          for (final (icon, title, body) in sections)
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: MergeSemantics(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ExcludeSemantics(child: Icon(icon)),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title, style: theme.textTheme.titleSmall),
                          const SizedBox(height: 4),
                          Text(body, style: theme.textTheme.bodyMedium),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
