import 'package:flutter/material.dart';

/// Material 3 window-size breakpoints (dp) — the single place phone vs
/// tablet layout decisions come from, so every screen agrees on what
/// "wide" means.
abstract final class Breakpoints {
  /// Phones in portrait are below this.
  static const medium = 600.0;

  /// Tablets in landscape / large foldables are at or above this.
  static const expanded = 840.0;

  /// Content never stretches wider than this, even on a 12" tablet —
  /// long text lines and full-bleed cards read badly past it.
  static const maxContentWidth = 1100.0;
}

extension ResponsiveContext on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;
  bool get isTabletWidth => screenWidth >= Breakpoints.medium;
  bool get isExpandedWidth => screenWidth >= Breakpoints.expanded;
}

/// Centers [child] and caps its width at [Breakpoints.maxContentWidth] so
/// phone-first layouts don't stretch edge-to-edge on tablets.
class ResponsiveCenter extends StatelessWidget {
  const ResponsiveCenter({super.key, required this.child, this.maxWidth = Breakpoints.maxContentWidth});

  final Widget child;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: child,
      ),
    );
  }
}

/// Scrollable page body: standard padding, width-capped on tablets, and
/// pull-to-refresh when [onRefresh] is given. Every list/detail screen's
/// body is built from this so spacing is identical across the app.
class ResponsiveListView extends StatelessWidget {
  const ResponsiveListView({super.key, required this.children, this.onRefresh, this.padding});

  final List<Widget> children;
  final Future<void> Function()? onRefresh;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final horizontal = context.isTabletWidth ? 24.0 : 16.0;
    final list = ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: padding ?? EdgeInsets.fromLTRB(horizontal, 16, horizontal, 24),
      children: [
        for (final child in children) ResponsiveCenter(child: child),
      ],
    );
    return onRefresh == null ? list : RefreshIndicator(onRefresh: onRefresh!, child: list);
  }
}

/// Grid whose column count grows with available width — [minItemWidth]
/// decides how many columns fit (always at least [minColumns]).
class ResponsiveGrid extends StatelessWidget {
  const ResponsiveGrid({
    super.key,
    required this.children,
    this.minItemWidth = 160,
    this.minColumns = 1,
    this.maxColumns = 6,
    this.spacing = 12,
  });

  final List<Widget> children;
  final double minItemWidth;
  final int minColumns;
  final int maxColumns;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final columns = (constraints.maxWidth / minItemWidth).floor().clamp(minColumns, maxColumns);
        final itemWidth = (constraints.maxWidth - spacing * (columns - 1)) / columns;
        return Wrap(
          spacing: spacing,
          runSpacing: spacing,
          children: [for (final child in children) SizedBox(width: itemWidth, child: child)],
        );
      },
    );
  }
}
