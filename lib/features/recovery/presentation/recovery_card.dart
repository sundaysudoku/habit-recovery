import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../l10n/app_localizations.dart';
import '../../habits/data/habit_repository.dart';
import '../../habits/domain/habit.dart';
import '../../habits/presentation/habits_screen.dart';

/// Gentle options shown after two missed scheduled occasions in a row.
class RecoveryCard extends ConsumerWidget {
  const RecoveryCard({super.key, required this.habit});

  final Habit habit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final repo = ref.read(habitRepositoryProvider);
    final messenger = ScaffoldMessenger.of(context);

    Future<void> choose({bool? focusSmaller, String? message}) async {
      await repo.handleRecovery(habit.id, focusSmaller: focusSmaller);
      if (message != null) {
        messenger.showSnackBar(SnackBar(content: Text(message)));
      }
    }

    return Card(
      color: theme.colorScheme.secondaryContainer,
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.spa_outlined,
                  color: theme.colorScheme.onSecondaryContainer,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    l10n.recoveryTitle(habit.name),
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.onSecondaryContainer,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              l10n.recoveryBody,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                FilledButton(
                  onPressed: () => choose(
                    focusSmaller: true,
                    message: l10n.recoverySmallerDone(habit.smallerTarget),
                  ),
                  child: Text(l10n.recoveryUseSmaller(habit.smallerTarget)),
                ),
                OutlinedButton(
                  onPressed: () => choose(
                    focusSmaller: false,
                    message: l10n.recoveryNormalDone,
                  ),
                  child: Text(l10n.recoveryUseNormal),
                ),
                OutlinedButton(
                  onPressed: () async {
                    await choose();
                    if (context.mounted) openHabitForm(context, habit);
                  },
                  child: Text(l10n.recoveryChangeSchedule),
                ),
                TextButton(
                  onPressed: () => choose(),
                  child: Text(l10n.recoverySkip),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
