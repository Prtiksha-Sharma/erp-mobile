import 'package:flutter/material.dart';

/// Brand design tokens, copied 1:1 from the web app's `:root` block
/// (erp-frontend/apps/school/src/index.css) so mobile screens read as the
/// same product. Role-agnostic — nothing here may import from features/.
///
/// Primary/surface colors for widgets still come from the app's
/// `Theme.of(context).colorScheme` (see main.dart) — these tokens are only
/// for the semantic accents (status colors, stat-tile tints, gradients)
/// that a Material seed scheme has no equivalent for.
abstract final class AppColors {
  static const primary = Color(0xFF2563EB); // --color-primary
  static const primaryLight = Color(0xFFEFF6FF); // --color-primary-light
  static const violet = Color(0xFF7C3AED); // --color-violet
  static const violetLight = Color(0xFFEDE9FE); // --color-violet-light
  static const emerald = Color(0xFF10B981); // --color-emerald
  static const emeraldLight = Color(0xFFD1FAE5); // --color-emerald-light
  static const amber = Color(0xFFD97706); // --color-amber
  static const amberLight = Color(0xFFFEF3C7); // --color-amber-light
  static const rose = Color(0xFFE11D48); // --color-rose
  static const roseLight = Color(0xFFFFF1F2); // --color-rose-light
  static const teal = Color(0xFF1BA37E); // --color-teal
  static const tealLight = Color(0xFFE0F5F0); // --color-teal-light
  static const sky = Color(0xFF0284C7); // tailwind sky-600 (web "info" badge)
  static const skyLight = Color(0xFFF0F9FF); // tailwind sky-50

  static const success = Color(0xFF16A34A); // --color-success
  static const successBg = Color(0xFFDCFCE7); // --color-success-bg
  static const danger = Color(0xFFDC2626); // --color-danger
  static const dangerBg = Color(0xFFFEF2F2); // --color-danger-bg
  static const warning = Color(0xFFD97706); // --color-warning
  static const warningBg = Color(0xFFFFFBEB); // --color-warning-bg

  static const textPrimary = Color(0xFF1E293B); // --color-text-primary
  static const textSecondary = Color(0xFF475569); // --color-text-secondary
  static const textMuted = Color(0xFF94A3B8); // --color-text-muted
  static const pageBg = Color(0xFFF1F5F9); // --color-page-bg
  static const border = Color(0xFFE2E8F0); // --color-border

  /// The web's signature banner/ID-card gradient
  /// (`linear-gradient(135deg, --color-primary, --color-violet)`).
  static const brandGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primary, violet],
  );
}
