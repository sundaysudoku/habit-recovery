import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/time/clock.dart';
import '../../../core/time/local_date.dart';
import '../../../l10n/app_localizations.dart';
import '../../habits/data/habit_repository.dart';
import '../../habits/domain/habit.dart';
import '../../habits/presentation/habits_screen.dart';
import '../data/check_in_repository.dart';
import '../domain/check_in_status.dart';

final _checkInsForDateProvider =
    StreamProvider.family<Map<int, CheckInStatus>, LocalDate>(
      (ref, date) => ref.watch(checkInRepositoryProvider).watchForDate(date),
    );

class TodayScreen extends ConsumerWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final locale = Localizations.localeOf(context).toLanguageTag();
    final date = LocalDate.fromDateTime(ref.watch(clockProvider)());
    final allHabits = ref.watch(activeHabitsProvider).value;
    final checkIns =
        ref.watch(_checkInsForDateProvider(date)).value ?? const {};
    final habits = allHabits?.where((h) => h.isScheduledOn(date)).toList();

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
                status: checkIns[habit.id],
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
              l10n.habitTargets(habit.normalTarget, habit.smallerTarget),
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
