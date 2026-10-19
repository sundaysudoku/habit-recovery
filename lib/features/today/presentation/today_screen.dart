import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/time/clock.dart';
import '../../../core/time/local_date.dart';
import '../../../l10n/app_localizations.dart';
import '../../habits/data/habit_repository.dart';
import '../../habits/domain/habit.dart';
import '../../habits/presentation/habits_screen.dart';
import '../../recovery/domain/recovery.dart';
import '../../recovery/presentation/recovery_card.dart';
import '../data/check_in_repository.dart';
import '../domain/check_in_status.dart';

/// Today's check-ins plus enough history to evaluate Recovery Mode.
final _recentCheckInsProvider =
    StreamProvider.family<CheckInHistory, LocalDate>(
      (ref, today) => ref
          .watch(checkInRepositoryProvider)
          .watchRange(today.addDays(-recoveryLookbackDays), today),
    );

class TodayScreen extends ConsumerWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final locale = Localizations.localeOf(context).toLanguageTag();
    final date = LocalDate.fromDateTime(ref.watch(clockProvider)());
    final allHabits = ref.watch(activeHabitsProvider).value;
    final history = ref.watch(_recentCheckInsProvider(date)).value;
    final habits = allHabits?.where((h) => h.isScheduledOn(date)).toList();
    final recovering = history == null
        ? const <Habit>[]
        : [
            for (final habit in allHabits ?? const <Habit>[])
              if (needsRecovery(habit, history[habit.id] ?? const {}, date))
                habit,
          ];

    return Scaffold(
      appBar: AppBar(title: Text(l10n.navToday)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            DateFormat.yMMMMEEEEd(locale).format(date.toLocalDateTime()),
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 4),
          Text(l10n.todaySubtitle),
          const SizedBox(height: 16),
          for (final habit in recovering)
            RecoveryCard(key: ValueKey('recovery-${habit.id}'), habit: habit),
          if (allHabits == null)
            const SizedBox.shrink()
          else if (allHabits.isEmpty)
            _TodayMessage(
              message: l10n.todayNoHabits,
              action: FilledButton.icon(
                onPressed: () => openHabitForm(context),
                icon: const Icon(Icons.add),
                label: Text(l10n.habitsAdd),
              ),
            )
          else if (habits!.isEmpty)
            _TodayMessage(message: l10n.todayNothingScheduled)
          else
            for (final habit in habits)
              _HabitCheckInCard(
                key: ValueKey(habit.id),
                habit: habit,
                status: history?[habit.id]?[date],
                onChanged: (status) {
                  final repo = ref.read(checkInRepositoryProvider);
                  status == null
                      ? repo.clearToday(habit.id)
                      : repo.setToday(habit.id, status);
                },
              ),
        ],
      ),
    );
  }
}

class _TodayMessage extends StatelessWidget {
  const _TodayMessage({required this.message, this.action});

  final String message;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        children: [
          Text(
            message,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          if (action != null) ...[const SizedBox(height: 16), action!],
        ],
      ),
    );
  }
}

class _HabitCheckInCard extends StatelessWidget {
  const _HabitCheckInCard({
    super.key,
    required this.habit,
    required this.status,
    required this.onChanged,
  });

  final Habit habit;
  final CheckInStatus? status;
  final ValueChanged<CheckInStatus?> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(habit.name, style: theme.textTheme.titleMedium),
            const SizedBox(height: 4),
            Text(
              habit.focusSmaller
                  ? l10n.habitTargetsFocusSmaller(
                      habit.smallerTarget,
                      habit.normalTarget,
                    )
                  : l10n.habitTargets(habit.normalTarget, habit.smallerTarget),
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: SegmentedButton<CheckInStatus>(
                segments: [
                  ButtonSegment(
                    value: CheckInStatus.normal,
                    label: Text(l10n.checkInNormal),
                  ),
                  ButtonSegment(
                    value: CheckInStatus.smaller,
                    label: Text(l10n.checkInSmaller),
                  ),
                  ButtonSegment(
                    value: CheckInStatus.notDone,
                    label: Text(l10n.checkInNotDone),
                  ),
                ],
                selected: {?status},
                emptySelectionAllowed: true,
                showSelectedIcon: false,
                onSelectionChanged: (selection) =>
                    onChanged(selection.isEmpty ? null : selection.first),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
