import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/time/clock.dart';
import '../../../core/time/local_date.dart';
import '../../../l10n/app_localizations.dart';
import '../../habits/data/habit_repository.dart';
import '../../recovery/domain/recovery.dart';
import '../../today/data/check_in_repository.dart';
import '../domain/progress_stats.dart';

typedef _Range = ({LocalDate today, int days});

final _progressProvider = Provider.family<AsyncValue<ProgressSummary>, _Range>((
  ref,
  range,
) {
  final habits = ref.watch(activeHabitsProvider);
  final checkIns = ref.watch(_historyProvider(range));
  return switch ((habits, checkIns)) {
    (AsyncData(value: final h), AsyncData(value: final c)) => AsyncData(
      computeProgress(
        habits: h,
        checkIns: c,
        today: range.today,
        dayCount: range.days,
      ),
    ),
    (AsyncError(:final error, :final stackTrace), _) ||
    (
      _,
      AsyncError(:final error, :final stackTrace),
    ) => AsyncError(error, stackTrace),
    _ => const AsyncLoading(),
  };
});

final _historyProvider = StreamProvider.family<CheckInHistory, _Range>(
  (ref, range) => ref
      .watch(checkInRepositoryProvider)
      .watchRange(
        range.today.addDays(1 - range.days - recoveryLookbackDays),
        range.today,
      ),
);

class ProgressScreen extends ConsumerStatefulWidget {
  const ProgressScreen({super.key});

  @override
  ConsumerState<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends ConsumerState<ProgressScreen> {
  int _days = 7;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final today = LocalDate.fromDateTime(ref.watch(clockProvider)());
    final summary = ref.watch(_progressProvider((today: today, days: _days)));

    return Scaffold(
      appBar: AppBar(title: Text(l10n.navProgress)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SegmentedButton<int>(
            segments: [
              ButtonSegment(value: 7, label: Text(l10n.progressLast7Days)),
              ButtonSegment(value: 30, label: Text(l10n.progressLast30Days)),
            ],
            selected: {_days},
            onSelectionChanged: (s) => setState(() => _days = s.first),
          ),
          const SizedBox(height: 16),
          ...switch (summary) {
            AsyncData(:final value) when value.habits.isEmpty => [
              Text(l10n.progressNoHabits, textAlign: TextAlign.center),
            ],
            AsyncData(:final value) => _content(context, value),
            _ => const <Widget>[],
          },
        ],
      ),
    );
  }

  List<Widget> _content(BuildContext context, ProgressSummary summary) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return [
      Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.progressShowedUp(summary.showedUp, summary.counted),
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: 4),
              Text(_encouragement(l10n, summary)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 24,
                runSpacing: 12,
                children: [
                  _Stat(label: l10n.progressFullGoal, value: summary.normal),
                  _Stat(label: l10n.progressSmallSteps, value: summary.smaller),
                  _Stat(
                    label: l10n.progressComebacks,
                    value: summary.comebacks,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 12),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _DayChart(days: summary.days),
              const SizedBox(height: 12),
              const _Legend(),
            ],
          ),
        ),
      ),
      const SizedBox(height: 12),
      Card(
        child: Column(
          children: [
            for (final h in summary.habits)
              ListTile(
                title: Text(h.habit.name),
                trailing: Text(
                  l10n.progressHabitCount(h.showedUp, h.scheduled),
                  style: theme.textTheme.bodyMedium,
                ),
              ),
          ],
        ),
      ),
    ];
  }

  String _encouragement(AppLocalizations l10n, ProgressSummary summary) {
    if (summary.comebacks > 0) {
      return l10n.progressEncourageComebacks(summary.comebacks);
    }
    if (summary.smaller > 0) return l10n.progressEncourageSmall;
    if (summary.showedUp > 0) return l10n.progressEncourageAny;
    return l10n.progressEncourageStart;
  }
}

class _Stat extends StatelessWidget {
  const _Stat({required this.label, required this.value});

  final String label;
  final int value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MergeSemantics(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$value', style: theme.textTheme.headlineSmall),
          Text(label, style: theme.textTheme.bodySmall),
        ],
      ),
    );
  }
}

/// One stacked bar per day: full goal, small step, missed. Pending (today,
/// not yet recorded) and unscheduled days are left empty.
class _DayChart extends StatelessWidget {
  const _DayChart({required this.days});

  final List<DayProgress> days;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final colors = Theme.of(context).colorScheme;
    final locale = Localizations.localeOf(context).toLanguageTag();
    final maxScheduled = days.fold(
      1,
      (m, d) => d.scheduled > m ? d.scheduled : m,
    );
    final showLabels = days.length <= 7;
    const chartHeight = 120.0;

    return SizedBox(
      height: chartHeight + (showLabels ? 24 : 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          for (final day in days)
            Expanded(
              child: Semantics(
                label: l10n.progressDaySemantics(
                  DateFormat.MMMEd(locale).format(day.date.toLocalDateTime()),
                  day.normal,
                  day.smaller,
                  day.missed,
                ),
                child: ExcludeSemantics(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: showLabels ? 6 : 1.5,
                        ),
                        child: Column(
                          children: [
                            for (final (count, color) in [
                              (day.missed, colors.outlineVariant),
                              (day.smaller, colors.tertiary),
                              (day.normal, colors.primary),
                            ])
                              if (count > 0)
                                Container(
                                  height: chartHeight * count / maxScheduled,
                                  color: color,
                                ),
                          ],
                        ),
                      ),
                      if (showLabels)
                        SizedBox(
                          height: 24,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              DateFormat.E(
                                locale,
                              ).format(day.date.toLocalDateTime()),
                              style: Theme.of(context).textTheme.labelSmall,
                              maxLines: 1,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _Legend extends StatelessWidget {
  const _Legend();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final colors = Theme.of(context).colorScheme;
    return ExcludeSemantics(
      child: Wrap(
        spacing: 16,
        runSpacing: 4,
        children: [
          for (final (label, color) in [
            (l10n.progressFullGoal, colors.primary),
            (l10n.progressSmallSteps, colors.tertiary),
            (l10n.progressNotDone, colors.outlineVariant),
          ])
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(width: 12, height: 12, color: color),
                const SizedBox(width: 6),
                Text(label, style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
        ],
      ),
    );
  }
}
