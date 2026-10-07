import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show ProviderOrFamily;

import '../../../core/error/failure.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/error_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/stat_tile.dart';
import '../providers/academics_providers.dart';

/// Helpers shared by the Academics area's screens (Subjects, Subject
/// Teachers, Timetable, Syllabus, Lesson Plans, Homework & Assignments).

/// The active session's label (web Redux `sessionLabel`), or null.
String? academicsSessionLabel(WidgetRef ref) => ref.watch(academicsActiveSessionProvider).value?.sessionName;

/// Retry for a list that depends on the active session: if the session
/// lookup itself failed, re-run it too (it re-runs every dependent list).
void academicsRetry(WidgetRef ref, ProviderOrFamily provider) {
  if (ref.read(academicsActiveSessionProvider).hasError) ref.invalidate(academicsActiveSessionProvider);
  ref.invalidate(provider);
}

/// The web's per-subject accent (timetable/utils/subjectAccent.js): first
/// upper-cased char code mod 6 over this palette. Returns (color, light bg).
(Color, Color) academicsSubjectAccent(String? name) {
  const accents = <(Color, Color)>[
    (AppColors.primary, AppColors.primaryLight),
    (AppColors.emerald, AppColors.emeraldLight),
    (AppColors.amber, AppColors.amberLight),
    (AppColors.violet, AppColors.violetLight),
    (AppColors.rose, AppColors.roseLight),
    (AppColors.teal, AppColors.tealLight),
  ];
  final s = (name == null || name.isEmpty) ? '?' : name.toUpperCase();
  return accents[s.codeUnitAt(0) % accents.length];
}

/// A dropdown that, unlike `OptionSelect`, can be disabled and show a
/// validation error — the web's `<Select label required placeholder
/// error disabled>`. When [clearable] the placeholder is a selectable
/// "no value" entry (filters); otherwise it's only a hint (required
/// form fields).
class AcademicsSelect extends StatelessWidget {
  const AcademicsSelect({
    super.key,
    required this.label,
    required this.value,
    required this.options,
    required this.onChanged,
    this.placeholder,
    this.errorText,
    this.enabled = true,
    this.clearable = false,
  });

  final String label;
  final String value;

  /// (value, label) pairs.
  final List<(String, String)> options;
  final ValueChanged<String> onChanged;
  final String? placeholder;
  final String? errorText;
  final bool enabled;
  final bool clearable;

  @override
  Widget build(BuildContext context) {
    final known = options.any((o) => o.$1 == value);
    final current = known ? value : (clearable && placeholder != null && value.isEmpty ? '' : null);
    return DropdownButtonFormField<String>(
      key: ValueKey('$label|$current|${options.length}|$enabled'),
      initialValue: current,
      isExpanded: true,
      hint: placeholder == null
          ? null
          : Text(
              placeholder!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: AppColors.textMuted),
            ),
      decoration: InputDecoration(labelText: label, border: const OutlineInputBorder(), errorText: errorText),
      items: [
        if (clearable && placeholder != null)
          DropdownMenuItem(
            value: '',
            child: Text(
              placeholder!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: AppColors.textMuted),
            ),
          ),
        for (final (v, l) in options)
          DropdownMenuItem(
            value: v,
            child: Text(l, maxLines: 1, overflow: TextOverflow.ellipsis),
          ),
      ],
      onChanged: enabled ? (v) => onChanged(v ?? '') : null,
    );
  }
}

/// Filter controls laid out 1/2/[maxColumns] per row by available width
/// (the web's `flex flex-wrap gap-3` filter bar).
class AcademicsFilterGrid extends StatelessWidget {
  const AcademicsFilterGrid({super.key, required this.children, this.maxColumns = 4});

  final List<Widget> children;
  final int maxColumns;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final cols = (c.maxWidth >= 900 ? 4 : (c.maxWidth >= 640 ? 3 : (c.maxWidth >= 420 ? 2 : 1))).clamp(
          1,
          maxColumns,
        );
        final w = (c.maxWidth - 12 * (cols - 1)) / cols;
        return Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [for (final child in children) SizedBox(width: w, child: child)],
        );
      },
    );
  }
}

/// The web's 4-up StatCard grid (2 per row on phones).
class AcademicsStatGrid extends StatelessWidget {
  const AcademicsStatGrid({super.key, required this.tiles});

  /// (value, label, color, icon).
  final List<(String, String, Color, IconData)> tiles;

  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      minItemWidth: 150,
      minColumns: 2,
      maxColumns: 4,
      children: [
        for (final (value, label, color, icon) in tiles) StatTile(value: value, label: label, color: color, icon: icon),
      ],
    );
  }
}

/// Empty state inside a card (the web's EmptyState / Table empty row).
class AcademicsEmptyCard extends StatelessWidget {
  const AcademicsEmptyCard({super.key, required this.icon, required this.title, this.message});

  final IconData icon;
  final String title;
  final String? message;

  @override
  Widget build(BuildContext context) => SectionCard(
    child: EmptyState(icon: icon, title: title, message: message),
  );
}

/// Inline loading / error-with-Retry / data for one list inside a page
/// that keeps its header and filters visible (keeps data while
/// refreshing).
class AcademicsAsyncSection<T> extends StatelessWidget {
  const AcademicsAsyncSection({
    super.key,
    required this.value,
    required this.loadingLabel,
    required this.onRetry,
    required this.data,
  });

  final AsyncValue<T> value;
  final String loadingLabel;
  final VoidCallback onRetry;
  final Widget Function(T data) data;

  @override
  Widget build(BuildContext context) {
    return value.when(
      skipLoadingOnRefresh: true,
      loading: () => LoadingView(label: loadingLabel),
      error: (err, _) => ErrorView(message: describeError(err), onRetry: onRetry),
      data: data,
    );
  }
}

/// A small rounded chip (the web's default `Badge` used for class names,
/// "+N more", subject type).
class AcademicsChip extends StatelessWidget {
  const AcademicsChip(this.label, {super.key, this.highlighted = false});

  final String label;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: highlighted ? AppColors.primaryLight : AppColors.pageBg,
        borderRadius: BorderRadius.circular(999),
        border: highlighted ? null : Border.all(color: AppColors.border),
      ),
      child: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: highlighted ? AppColors.primary : AppColors.textSecondary,
        ),
      ),
    );
  }
}

/// Muted icon + text line on a card (teacher, room, date…).
class AcademicsMetaLine extends StatelessWidget {
  const AcademicsMetaLine({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 14, color: AppColors.textMuted),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12.5, color: AppColors.textSecondary),
          ),
        ),
      ],
    );
  }
}
