import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../l10n/app_localizations.dart';
import '../data/habit_repository.dart';
import '../domain/habit.dart';
import 'habit_form_screen.dart';
import 'weekday_labels.dart';

void openHabitForm(BuildContext context, [Habit? habit]) {
  Navigator.of(context).push(
    MaterialPageRoute<void>(builder: (_) => HabitFormScreen(habit: habit)),
  );
}

class HabitsScreen extends ConsumerWidget {
  const HabitsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final active = ref.watch(activeHabitsProvider).value ?? const [];
    final archived = ref.watch(archivedHabitsProvider).value ?? const [];

    return Scaffold(
      appBar: AppBar(title: Text(l10n.navHabits)),
      body: active.isEmpty && archived.isEmpty
          ? _EmptyHabits(message: l10n.habitsEmpty)
          : ListView(
              padding: const EdgeInsets.only(bottom: 88),
              children: [
                for (final habit in active) _HabitTile(habit: habit),
                if (archived.isNotEmpty)
                  ExpansionTile(
                    title: Text(l10n.habitsArchived(archived.length)),
                    children: [
                      for (final habit in archived) _HabitTile(habit: habit),
                    ],
                  ),
              ],
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => openHabitForm(context),
        icon: const Icon(Icons.add),
        label: Text(l10n.habitsAdd),
      ),
    );
  }
}

class _HabitTile extends StatelessWidget {
  const _HabitTile({required this.habit});

  final Habit habit;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return ListTile(
      title: Text(habit.name),
      subtitle: Text(
        '${scheduleSummary(context, habit.schedule)}\n'
        '${l10n.habitTargets(habit.normalTarget, habit.smallerTarget)}',
      ),
      isThreeLine: true,
      trailing: habit.reminderMinutes != null
          ? Icon(
              Icons.notifications_outlined,
              semanticLabel: l10n.habitReminderLabel,
            )
          : null,
      onTap: () => openHabitForm(context, habit),
    );
  }
}

class _EmptyHabits extends StatelessWidget {
  const _EmptyHabits({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.checklist, size: 64, color: theme.colorScheme.outline),
            const SizedBox(height: 16),
            Text(
              message,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
