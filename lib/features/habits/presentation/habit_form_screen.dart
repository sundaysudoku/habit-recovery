import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../l10n/app_localizations.dart';
import '../data/habit_repository.dart';
import '../domain/habit.dart';
import '../domain/weekday_schedule.dart';
import 'weekday_labels.dart';

/// Creates a new habit, or edits [habit] when given.
class HabitFormScreen extends ConsumerStatefulWidget {
  const HabitFormScreen({super.key, this.habit});

  final Habit? habit;

  @override
  ConsumerState<HabitFormScreen> createState() => _HabitFormScreenState();
}

enum _MenuAction { archive, unarchive, delete }

class _HabitFormScreenState extends ConsumerState<HabitFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late final _name = TextEditingController(text: widget.habit?.name);
  late final _target = TextEditingController(text: widget.habit?.normalTarget);
  late final _smaller = TextEditingController(
    text: widget.habit?.smallerTarget,
  );
  late bool _daily = widget.habit?.schedule.isDaily ?? true;
  late Set<int> _weekdays =
      widget.habit?.schedule.weekdays ?? WeekdaySchedule.daily.weekdays;
  late int? _reminderMinutes = widget.habit?.reminderMinutes;
  late bool _focusSmaller = widget.habit?.focusSmaller ?? false;
  bool _showDaysError = false;
  bool _saving = false;

  bool get _isEditing => widget.habit != null;

  @override
  void dispose() {
    _name.dispose();
    _target.dispose();
    _smaller.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final formValid = _formKey.currentState!.validate();
    final daysValid = _daily || _weekdays.isNotEmpty;
    setState(() => _showDaysError = !daysValid);
    if (!formValid || !daysValid || _saving) return;

    setState(() => _saving = true);
    final draft = HabitDraft(
      name: _name.text,
      normalTarget: _target.text,
      smallerTarget: _smaller.text,
      schedule: _daily
          ? WeekdaySchedule.daily
          : WeekdaySchedule.fromWeekdays(_weekdays),
      reminderMinutes: _reminderMinutes,
      focusSmaller: _focusSmaller,
    );
    final repo = ref.read(habitRepositoryProvider);
    if (_isEditing) {
      await repo.update(widget.habit!.id, draft);
    } else {
      await repo.create(draft);
    }
    if (mounted) Navigator.of(context).pop();
  }

  Future<void> _onMenu(_MenuAction action) async {
    final l10n = AppLocalizations.of(context);
    final repo = ref.read(habitRepositoryProvider);
    final id = widget.habit!.id;
    switch (action) {
      case _MenuAction.archive:
        await repo.setArchived(id, archived: true);
      case _MenuAction.unarchive:
        await repo.setArchived(id, archived: false);
      case _MenuAction.delete:
        final confirmed = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(l10n.habitDeleteTitle),
            content: Text(l10n.habitDeleteBody(widget.habit!.name)),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(l10n.actionCancel),
              ),
              FilledButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text(l10n.actionDelete),
              ),
            ],
          ),
        );
        if (confirmed != true) return;
        await repo.delete(id);
    }
    if (mounted) Navigator.of(context).pop();
  }

  Future<void> _pickReminder() async {
    final minutes = _reminderMinutes ?? 8 * 60;
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: minutes ~/ 60, minute: minutes % 60),
    );
    if (picked != null) {
      setState(() => _reminderMinutes = picked.hour * 60 + picked.minute);
    }
  }

  String? _required(String? value) => (value == null || value.trim().isEmpty)
      ? AppLocalizations.of(context).fieldRequired
      : null;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final reminder = _reminderMinutes;

    return Scaffold(
      appBar: AppBar(
        title: Text(_isEditing ? l10n.habitEditTitle : l10n.habitNewTitle),
        actions: [
          TextButton(
            onPressed: _saving ? null : _save,
            child: Text(l10n.actionSave),
          ),
          if (_isEditing)
            PopupMenuButton<_MenuAction>(
              onSelected: _onMenu,
              itemBuilder: (context) => [
                if (widget.habit!.archived)
                  PopupMenuItem(
                    value: _MenuAction.unarchive,
                    child: Text(l10n.habitUnarchive),
                  )
                else
                  PopupMenuItem(
                    value: _MenuAction.archive,
                    child: Text(l10n.habitArchive),
                  ),
                PopupMenuItem(
                  value: _MenuAction.delete,
                  child: Text(l10n.actionDelete),
                ),
              ],
            ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _name,
              decoration: InputDecoration(
                labelText: l10n.habitNameLabel,
                hintText: l10n.habitNameHint,
              ),
              textCapitalization: TextCapitalization.sentences,
              textInputAction: TextInputAction.next,
              maxLength: 60,
              validator: _required,
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: _target,
              decoration: InputDecoration(
                labelText: l10n.habitTargetLabel,
                hintText: l10n.habitTargetHint,
              ),
              textInputAction: TextInputAction.next,
              maxLength: 60,
              validator: _required,
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: _smaller,
              decoration: InputDecoration(
                labelText: l10n.habitSmallerLabel,
                hintText: l10n.habitSmallerHint,
                helperText: l10n.habitSmallerHelper,
                helperMaxLines: 3,
              ),
              maxLength: 60,
              validator: _required,
            ),
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(l10n.habitFocusSmallerLabel),
              subtitle: Text(l10n.habitFocusSmallerHelper),
              value: _focusSmaller,
              onChanged: (value) => setState(() => _focusSmaller = value),
            ),
            const SizedBox(height: 24),
            Text(l10n.habitScheduleLabel, style: theme.textTheme.titleSmall),
            const SizedBox(height: 8),
            SegmentedButton<bool>(
              segments: [
                ButtonSegment(value: true, label: Text(l10n.scheduleDaily)),
                ButtonSegment(
                  value: false,
                  label: Text(l10n.scheduleSelectedDays),
                ),
              ],
              selected: {_daily},
              onSelectionChanged: (s) => setState(() {
                _daily = s.first;
                _showDaysError = false;
              }),
            ),
            if (!_daily) ...[
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final day in orderedWeekdays(context))
                    FilterChip(
                      label: Text(shortWeekdayName(context, day)),
                      selected: _weekdays.contains(day),
                      onSelected: (selected) => setState(() {
                        _weekdays = {..._weekdays};
                        selected ? _weekdays.add(day) : _weekdays.remove(day);
                        _showDaysError = false;
                      }),
                    ),
                ],
              ),
              if (_showDaysError)
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 8),
                  child: Text(
                    l10n.scheduleNoDaysError,
                    style: TextStyle(color: theme.colorScheme.error),
                  ),
                ),
            ],
            const SizedBox(height: 24),
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(l10n.habitReminderLabel),
              subtitle: Text(
                reminder == null
                    ? l10n.habitReminderOff
                    : MaterialLocalizations.of(context).formatTimeOfDay(
                        TimeOfDay(hour: reminder ~/ 60, minute: reminder % 60),
                        alwaysUse24HourFormat:
                            MediaQuery.alwaysUse24HourFormatOf(context),
                      ),
              ),
              value: reminder != null,
              onChanged: (on) {
                if (on) {
                  _pickReminder();
                } else {
                  setState(() => _reminderMinutes = null);
                }
              },
            ),
            if (reminder != null)
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: TextButton.icon(
                  onPressed: _pickReminder,
                  icon: const Icon(Icons.schedule),
                  label: Text(l10n.habitReminderChange),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
