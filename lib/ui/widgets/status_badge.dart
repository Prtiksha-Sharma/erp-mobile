import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

/// Mirrors the web's shared `Badge` variants
/// (erp-frontend/apps/school/src/shared/components/ui/Badge.jsx) — screens
/// map their own backend status strings to one of these, exactly like the
/// web pages' `*_VARIANT` lookup tables, so the badge itself stays
/// role-agnostic.
enum BadgeVariant {
  neutral(AppColors.textSecondary, AppColors.pageBg),
  primary(AppColors.primary, AppColors.primaryLight),
  success(AppColors.success, AppColors.successBg),
  danger(AppColors.danger, AppColors.dangerBg),
  warning(AppColors.warning, AppColors.warningBg),
  info(AppColors.sky, AppColors.skyLight),
  violet(AppColors.violet, AppColors.violetLight);

  const BadgeVariant(this.foreground, this.background);

  final Color foreground;
  final Color background;
}

class StatusBadge extends StatelessWidget {
  const StatusBadge({super.key, required this.label, this.variant = BadgeVariant.neutral, this.icon});

  final String label;
  final BadgeVariant variant;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: variant.background,
        borderRadius: BorderRadius.circular(999),
        border: variant == BadgeVariant.neutral ? Border.all(color: AppColors.border) : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 12, color: variant.foreground),
            const SizedBox(width: 4),
          ],
          Flexible(
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: variant.foreground, fontSize: 11, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
