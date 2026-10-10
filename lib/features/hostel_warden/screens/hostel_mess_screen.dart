import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/hostel_warden.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../providers/hostel_warden_providers.dart';
import '../services/hostel_warden_service.dart';
import 'hostel_warden_dashboard_screen.dart' show MealRow;
import 'hostel_warden_page_scaffold.dart';

/// Mess management — the standing weekly menu (one entry per day + meal
/// slot, PUT upserts), special-day overrides for a single date, and the
/// effective menu for any day (override wins per slot).
class HostelMessScreen extends ConsumerStatefulWidget {
  const HostelMessScreen({super.key});

  @override
  ConsumerState<HostelMessScreen> createState() => _HostelMessScreenState();
}

enum _View { day, weekly, special }

class _HostelMessScreenState extends ConsumerState<HostelMessScreen> {
  _View _view = _View.day;
  DateTime _date = today();

  @override
  Widget build(BuildContext context) {
    return HostelWardenPageScaffold(
      title: 'Mess Management',
      floatingActionButton: _view == _View.special
          ? FloatingActionButton.extended(
              onPressed: () => _editSpecial(null),
              icon: const Icon(Icons.add),
              label: const Text('Special menu'),
            )
          : null,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: SegmentedButton<_View>(
              segments: const [
                ButtonSegment(value: _View.day, label: Text('Day menu')),
                ButtonSegment(value: _View.weekly, label: Text('Weekly')),
                ButtonSegment(value: _View.special, label: Text('Special days')),
              ],
              selected: {_view},
              showSelectedIcon: false,
              onSelectionChanged: (v) => setState(() => _view = v.first),
            ),
          ),
          Expanded(
            child: switch (_view) {
              _View.day => _dayView(),
              _View.weekly => _weeklyView(),
              _View.special => _specialView(),
            },
          ),
        ],
      ),
    );
  }

  Widget _dayView() {
    final day = apiDate(_date);
    final value = ref.watch(wardenEffectiveMenuProvider(day));
    return AsyncValueView<List<EffectiveMeal>>(
      value: value,
      onRetry: () => ref.invalidate(wardenEffectiveMenuProvider(day)),
      data: (meals) => ResponsiveListView(
        onRefresh: () => ref.refresh(wardenEffectiveMenuProvider(day).future),
        children: [
          HeaderBar(
            children: [
              DatePickerChip(date: _date, onChanged: (d) => setState(() => _date = DateTime(d.year, d.month, d.day))),
              Text(humanizeEnum(messDaysOfWeek[_date.weekday - 1]), style: const TextStyle(fontWeight: FontWeight.w600)),
            ],
          ),
          const SizedBox(height: 16),
          DividedCard(children: [for (final m in meals) MealRow(meal: m)]),
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(Icons.star_rounded, size: 16, color: AppColors.warning),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  'Special-day menu for this date. Everything else comes from the weekly menu.',
                  style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant, fontSize: 13),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _weeklyView() {
    final value = ref.watch(wardenWeeklyMenuProvider);
    return AsyncValueView<List<MessMenuEntry>>(
      value: value,
      onRetry: () => ref.invalidate(wardenWeeklyMenuProvider),
      data: (entries) {
        String? itemsFor(String day, String slot) =>
            entries.where((e) => e.dayOfWeek == day && e.mealSlot == slot).firstOrNull?.menuItems;
        final todayName = messDaysOfWeek[DateTime.now().weekday - 1];
        return ResponsiveListView(
          onRefresh: () => ref.refresh(wardenWeeklyMenuProvider.future),
          children: [
            Text('Repeats every week. Tap a meal to change it.',
                style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant)),
            const SizedBox(height: 12),
            for (final day in messDaysOfWeek) ...[
              SectionLabel(day == todayName ? '${humanizeEnum(day)} (today)' : humanizeEnum(day)),
              DividedCard(
                children: [
                  for (final slot in messMealSlots)
                    MealRow(
                      meal: EffectiveMeal(mealSlot: slot, menuItems: itemsFor(day, slot)),
                      onTap: () => _editWeekly(day, slot, itemsFor(day, slot)),
                    ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ],
        );
      },
    );
  }

  Widget _specialView() {
    final value = ref.watch(wardenSpecialMenuProvider);
    return AsyncValueView<List<MessSpecialMenuEntry>>(
      value: value,
      onRetry: () => ref.invalidate(wardenSpecialMenuProvider),
      data: (entries) {
        final dates = entries.map((e) => e.specialDate).toSet().toList()..sort();
        return ResponsiveListView(
          onRefresh: () => ref.refresh(wardenSpecialMenuProvider.future),
          children: [
            Text('Upcoming one-day overrides (festivals, events). Removing one reverts that meal to the weekly menu.',
                style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant)),
            const SizedBox(height: 12),
            if (entries.isEmpty)
              const EmptyCard(icon: Icons.celebration_outlined, title: 'No special menus coming up'),
            for (final date in dates) ...[
              SectionLabel(formatDate(date)),
              DividedCard(
                children: [
                  for (final e in entries.where((e) => e.specialDate == date).toList()
                    ..sort((a, b) => messMealSlots.indexOf(a.mealSlot) - messMealSlots.indexOf(b.mealSlot)))
                    ListTile(
                      onTap: () => _editSpecial(e),
                      leading: Icon(MealRow.iconFor(e.mealSlot), color: AppColors.warning),
                      title: Text(humanizeEnum(e.mealSlot), style: const TextStyle(fontWeight: FontWeight.w600)),
                      subtitle: Text(e.menuItems),
                      trailing: IconButton(
                        tooltip: 'Remove',
                        icon: const Icon(Icons.delete_outline),
                        onPressed: () => _deleteSpecial(e),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 16),
            ],
            const SizedBox(height: 72),
          ],
        );
      },
    );
  }

  Future<void> _editWeekly(String day, String slot, String? current) async {
    final saved = await showHostelFormSheet<bool>(
      context,
      (_) => _MenuForm(
        title: '${humanizeEnum(day)} · ${humanizeEnum(slot)}',
        initialItems: current,
        save: (items) => HostelWardenService().saveWeeklyMenuEntry(dayOfWeek: day, mealSlot: slot, menuItems: items),
      ),
    );
    if (saved == true && mounted) {
      invalidateHostelMess(ref);
      showSnack(context, 'Weekly menu updated');
    }
  }

  Future<void> _editSpecial(MessSpecialMenuEntry? entry) async {
    final saved = await showHostelFormSheet<bool>(context, (_) => _SpecialMenuForm(entry: entry));
    if (saved == true && mounted) {
      invalidateHostelMess(ref);
      showSnack(context, 'Special menu saved');
    }
  }

  Future<void> _deleteSpecial(MessSpecialMenuEntry e) async {
    final ok = await showHostelConfirm(
      context,
      title: 'Remove special menu?',
      message: '${humanizeEnum(e.mealSlot)} on ${formatDate(e.specialDate)} will go back to the regular weekly menu.',
      confirmLabel: 'Remove',
      dangerous: true,
      action: () async => switch (await HostelWardenService().deleteSpecialMenuEntry(e.specialMenuId)) {
        Ok() => null,
        Err(:final failure) => failure.userMessage,
      },
    );
    if (ok && mounted) {
      invalidateHostelMess(ref);
      showSnack(context, 'Special menu removed');
    }
  }
}

class _MenuForm extends StatefulWidget {
  const _MenuForm({required this.title, required this.initialItems, required this.save});

  final String title;
  final String? initialItems;
  final Future<Result<void>> Function(String items) save;

  @override
  State<_MenuForm> createState() => _MenuFormState();
}

class _MenuFormState extends State<_MenuForm> {
  late final _items = TextEditingController(text: widget.initialItems);
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _items.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_items.text.trim().isEmpty) {
      setState(() => _error = 'Enter the menu items.');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    final result = await widget.save(_items.text);
    if (!mounted) return;
    switch (result) {
      case Ok():
        Navigator.of(context).pop(true);
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failure.userMessage;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(widget.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        const SizedBox(height: 16),
        TextField(
          controller: _items,
          enabled: !_busy,
          autofocus: true,
          maxLines: 3,
          textCapitalization: TextCapitalization.sentences,
          decoration: const InputDecoration(labelText: 'Menu items', hintText: 'e.g. Poha, Banana, Tea'),
        ),
        FormError(_error),
        const SizedBox(height: 16),
        SheetActions(busy: _busy, onSubmit: _save, submitLabel: 'Save'),
      ],
    );
  }
}

class _SpecialMenuForm extends StatefulWidget {
  const _SpecialMenuForm({this.entry});

  final MessSpecialMenuEntry? entry;

  @override
  State<_SpecialMenuForm> createState() => _SpecialMenuFormState();
}

class _SpecialMenuFormState extends State<_SpecialMenuForm> {
  // special_date is a @db.Date (UTC midnight) — rebuild it as a local day.
  late DateTime _date = widget.entry == null
      ? today()
      : DateTime(widget.entry!.specialDate.year, widget.entry!.specialDate.month, widget.entry!.specialDate.day);
  late String _slot = widget.entry?.mealSlot ?? messMealSlots.first;
  late final _items = TextEditingController(text: widget.entry?.menuItems);
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _items.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_items.text.trim().isEmpty) {
      setState(() => _error = 'Enter the menu items.');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    final result =
        await HostelWardenService().saveSpecialMenuEntry(date: _date, mealSlot: _slot, menuItems: _items.text);
    if (!mounted) return;
    switch (result) {
      case Ok():
        Navigator.of(context).pop(true);
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failure.userMessage;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final editing = widget.entry != null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(editing ? 'Edit special menu' : 'Add special menu',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        const SizedBox(height: 16),
        HeaderBar(
          children: [
            const Text('Date', style: TextStyle(fontWeight: FontWeight.w600)),
            // Date + slot identify the entry (PUT upserts on them), so they're
            // fixed while editing — change them by removing and re-adding.
            if (editing)
              Text(formatDate(widget.entry!.specialDate))
            else
              DatePickerChip(
                date: _date,
                firstDate: today(),
                onChanged: (d) => setState(() => _date = DateTime(d.year, d.month, d.day)),
              ),
          ],
        ),
        const SizedBox(height: 12),
        DropdownButtonFormField<String>(
          initialValue: _slot,
          decoration: const InputDecoration(labelText: 'Meal'),
          items: [for (final s in messMealSlots) DropdownMenuItem(value: s, child: Text(humanizeEnum(s)))],
          onChanged: editing || _busy ? null : (v) => setState(() => _slot = v ?? _slot),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _items,
          enabled: !_busy,
          maxLines: 3,
          textCapitalization: TextCapitalization.sentences,
          decoration: const InputDecoration(labelText: 'Menu items'),
        ),
        FormError(_error),
        const SizedBox(height: 16),
        SheetActions(busy: _busy, onSubmit: _save, submitLabel: 'Save'),
      ],
    );
  }
}
