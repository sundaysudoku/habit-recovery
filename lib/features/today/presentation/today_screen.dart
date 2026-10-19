import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../l10n/app_localizations.dart';
import '../domain/check_in_status.dart';

/// Prototype with sample habits; real data arrives in Phase 3.
class TodayScreen extends StatefulWidget {
  const TodayScreen({super.key});

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
  final _checkIns = <int, CheckInStatus>{};

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final locale = Localizations.localeOf(context).toLanguageTag();
    final today = DateFormat.yMMMMEEEEd(locale).format(DateTime.now());
    final habits = [
      (
        l10n.sampleHabitWalk,
        l10n.sampleHabitWalkTarget,
        l10n.sampleHabitWalkSmall,
      ),
      (
        l10n.sampleHabitRead,
        l10n.sampleHabitReadTarget,
        l10n.sampleHabitReadSmall,
      ),
      (
        l10n.sampleHabitWater,
        l10n.sampleHabitWaterTarget,
        l10n.sampleHabitWaterSmall,
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: Text(l10n.navToday)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(today, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 4),
          Text(l10n.todaySubtitle),
          const SizedBox(height: 16),
          for (var i = 0; i < habits.length; i++)
            _HabitCheckInCard(
              name: habits[i].$1,
              target: habits[i].$2,
              smallerTarget: habits[i].$3,
              status: _checkIns[i],
              onChanged: (status) => setState(() {
                if (status == null) {
                  _checkIns.remove(i);
                } else {
                  _checkIns[i] = status;
                }
              }),
            ),
        ],
      ),
    );
  }
}

class _HabitCheckInCard extends StatelessWidget {
  const _HabitCheckInCard({
    required this.name,
    required this.target,
    required this.smallerTarget,
    required this.status,
    required this.onChanged,
  });

  final String name;
  final String target;
  final String smallerTarget;
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
            Text(name, style: theme.textTheme.titleMedium),
            const SizedBox(height: 4),
            Text(
              l10n.habitTargets(target, smallerTarget),
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
