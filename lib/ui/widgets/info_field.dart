import 'package:flutter/material.dart';

/// Label-over-value pair — the web's InfoField.jsx. A null/empty value
/// renders as an em dash, never a blank gap.
class InfoField extends StatelessWidget {
  const InfoField({super.key, required this.label, this.value});

  final String label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final display = (value == null || value!.trim().isEmpty) ? '—' : value!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.outline)),
        const SizedBox(height: 2),
        Text(display, style: theme.textTheme.bodyMedium),
      ],
    );
  }
}

/// Lays [InfoField]s out in [columns] columns (1 on narrow phones, 2 on
/// wider screens by default) — the web's `grid grid-cols-1 sm:grid-cols-2`.
class InfoGrid extends StatelessWidget {
  const InfoGrid({super.key, required this.children, this.minColumnWidth = 220});

  final List<Widget> children;

  /// A column is only added once each column can be at least this wide.
  final double minColumnWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final columns = (constraints.maxWidth / minColumnWidth).floor().clamp(1, 3);
        const spacing = 16.0;
        final itemWidth = (constraints.maxWidth - spacing * (columns - 1)) / columns;
        return Wrap(
          spacing: spacing,
          runSpacing: 14,
          children: [for (final child in children) SizedBox(width: itemWidth, child: child)],
        );
      },
    );
  }
}
