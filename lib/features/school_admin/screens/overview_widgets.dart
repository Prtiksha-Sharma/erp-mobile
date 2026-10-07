import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/status_badge.dart';

/// Building blocks shared by the overview screens (Dashboard, Student /
/// Staff Attendance, Activity Logs).

/// A dashboard widget card — the web's `<Card interactive style={{
/// background: WIDGET_TINT.x }} header={icon + title [+ View all]}>`.
class OverviewCard extends StatelessWidget {
  const OverviewCard({
    super.key,
    required this.icon,
    required this.title,
    required this.child,
    this.tint,
    this.gradient,
    this.trailing,
  });

  final IconData icon;
  final String title;
  final Widget child;

  /// Flat card fill (null = white).
  final Color? tint;
  final Gradient? gradient;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final surface = Theme.of(context).colorScheme.surface;
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: gradient == null ? (tint ?? surface) : null,
        gradient: gradient,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 8, 12),
            child: Row(
              children: [
                Icon(icon, size: 16, color: AppColors.primary),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                  ),
                ),
                if (trailing != null) trailing! else const SizedBox(height: 36),
              ],
            ),
          ),
          const Divider(height: 1, color: AppColors.border),
          Padding(padding: const EdgeInsets.all(16), child: child),
        ],
      ),
    );
  }
}

/// The header's "View all" link.
class OverviewViewAll extends StatelessWidget {
  const OverviewViewAll({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => TextButton(
    onPressed: onTap,
    style: TextButton.styleFrom(visualDensity: VisualDensity.compact, textStyle: const TextStyle(fontSize: 12)),
    child: const Text('View all'),
  );
}

/// Big number + caption tile (the widgets' `p-4 rounded-xl text-center`
/// tiles). [background] null = white card with a border.
class OverviewCountTile extends StatelessWidget {
  const OverviewCountTile({super.key, required this.value, required this.label, required this.color, this.background});

  final String value;
  final String label;
  final Color color;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
      decoration: BoxDecoration(
        color: background ?? Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: background == null ? Border.all(color: AppColors.border) : null,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              value,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: color),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12, color: color),
          ),
        ],
      ),
    );
  }
}

/// Lays out [children] in [columns] equal columns (rows wrap), with
/// optional per-child spans — the widgets' `grid grid-cols-2 gap-3` with
/// `col-span-2` cells.
class OverviewTileGrid extends StatelessWidget {
  const OverviewTileGrid({super.key, required this.children, required this.columns, this.spans = const {}});

  final List<Widget> children;
  final int columns;

  /// index → column span.
  final Map<int, int> spans;

  @override
  Widget build(BuildContext context) {
    const gap = 12.0;
    return LayoutBuilder(
      builder: (context, c) {
        final cell = (c.maxWidth - gap * (columns - 1)) / columns;
        return Wrap(
          spacing: gap,
          runSpacing: gap,
          children: [
            for (var i = 0; i < children.length; i++)
              SizedBox(
                width: () {
                  final span = (spans[i] ?? 1).clamp(1, columns);
                  return cell * span + gap * (span - 1);
                }(),
                child: children[i],
              ),
          ],
        );
      },
    );
  }
}

/// Loading / error-with-Retry / data inside a widget card (each web widget
/// shows its own `<Loader size="sm" label="Loading…" />`).
class OverviewAsync<T> extends ConsumerWidget {
  const OverviewAsync({super.key, required this.value, required this.onRetry, required this.data});

  final AsyncValue<T> value;
  final VoidCallback onRetry;
  final Widget Function(T data) data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return value.when(
      skipLoadingOnRefresh: true,
      loading: () => const LoadingView(label: 'Loading…', compact: true),
      error: (err, _) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            describeError(err),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
          ),
          const SizedBox(height: 8),
          FilledButton.tonal(onPressed: onRetry, child: const Text('Retry')),
        ],
      ),
      data: data,
    );
  }
}

/// Two widgets side by side from [breakpoint] (the web's `grid
/// lg:grid-cols-3` with a `lg:col-span-2` first cell, or `lg:grid-cols-2`),
/// stacked below it.
class OverviewSplit extends StatelessWidget {
  const OverviewSplit({
    super.key,
    required this.first,
    required this.second,
    this.firstFlex = 2,
    this.secondFlex = 1,
    this.breakpoint = 840,
  });

  final Widget first;
  final Widget second;
  final int firstFlex;
  final int secondFlex;
  final double breakpoint;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        if (c.maxWidth < breakpoint) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [first, const SizedBox(height: 16), second],
          );
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: firstFlex, child: first),
            const SizedBox(width: 16),
            Expanded(flex: secondFlex, child: second),
          ],
        );
      },
    );
  }
}

// ── Attendance status vocabularies ───────────────────────────────────────

/// Student attendance STATUS_BADGE_VARIANT (attendance/constants/
/// attendanceStatus.js); anything unknown is neutral.
BadgeVariant studentAttendanceVariant(String status) => switch (status) {
  'PRESENT' => BadgeVariant.success,
  'ABSENT' => BadgeVariant.danger,
  'LATE' => BadgeVariant.warning,
  'HOLIDAY' => BadgeVariant.info,
  _ => BadgeVariant.neutral,
};

/// Staff attendance STATUS_OPTIONS (staffAttendanceStatus.js) — the
/// backend's STATUS_VALUES, in order.
const staffAttendanceStatusOptions = <(String, String)>[
  ('PRESENT', 'Present'),
  ('ABSENT', 'Absent'),
  ('HALF_DAY', 'Half Day'),
  ('ON_LEAVE', 'On Leave'),
];

/// attendanceToggleClass(): the selected toggle's (foreground, background).
(Color, Color) staffAttendanceToggleColors(String status) => switch (status) {
  'PRESENT' => (AppColors.success, AppColors.successBg),
  'ABSENT' => (AppColors.danger, AppColors.dangerBg),
  'HALF_DAY' => (AppColors.amber, AppColors.amberLight),
  'ON_LEAVE' => (AppColors.violet, AppColors.violetLight),
  _ => (AppColors.textMuted, AppColors.pageBg),
};
