import 'package:flutter/material.dart';

/// Big value + small caption tile — the web's `<Card bodyClass="p-3
/// text-center">` stat pattern (attendance summary, fee totals, dashboard).
class StatTile extends StatelessWidget {
  const StatTile({
    super.key,
    required this.value,
    required this.label,
    this.color,
    this.icon,
    this.tinted = false,
  });

  final String value;
  final String label;
  final Color? color;
  final IconData? icon;

  /// Fills the tile with a pale tint of [color] instead of plain surface.
  final bool tinted;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final accent = color ?? theme.colorScheme.onSurface;
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: tinted ? accent.withValues(alpha: 0.1) : theme.colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: tinted
            ? BorderSide.none
            : BorderSide(color: theme.colorScheme.outlineVariant.withValues(alpha: 0.6)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: icon != null ? CrossAxisAlignment.start : CrossAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(icon, color: accent, size: 22),
              const SizedBox(height: 8),
            ],
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(value, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: accent)),
            ),
            const SizedBox(height: 2),
            Text(
              label,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: icon != null ? TextAlign.start : TextAlign.center,
              style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.outline),
            ),
          ],
        ),
      ),
    );
  }
}
