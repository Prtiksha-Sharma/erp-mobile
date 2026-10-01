import 'dart:math' as math;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/error_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../services/principal_portal_service.dart' show PhotoUpload;
import 'principal_sidebar.dart';
import 'principal_top_bar.dart';

/// The frame every principal page shares — the web DashboardShell: the
/// Sidebar ([PrincipalSidebar]) beside the Topbar's gradient bar
/// ([PrincipalTopBar]: title, notifications, account menu) and the page
/// body on the portal's light page background.
///
/// Landscape tablets (≥ 840dp) get the sidebar permanently on the left, like
/// the web; narrower screens open it as a drawer from the bar's menu button.
class PrincipalPageScaffold extends StatelessWidget {
  const PrincipalPageScaffold({super.key, required this.title, required this.body});

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    final wide = context.isExpandedWidth;
    final scaffold = Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      drawer: wide ? null : const PrincipalSidebar(inDrawer: true),
      appBar: PrincipalTopBar(title: title),
      body: body,
    );
    if (!wide) return scaffold;
    return Material(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [const PrincipalSidebar(), Expanded(child: scaffold)],
      ),
    );
  }
}

/// A sidebar entry whose web page (one of the School Admin ADMIN.* pages the
/// web opens to Principal) hasn't been ported to mobile yet — an honest
/// state inside the normal frame, never sample data.
class PrincipalNotOnMobileScreen extends StatelessWidget {
  const PrincipalNotOnMobileScreen({super.key, required this.item});

  final PrincipalNavItem item;

  @override
  Widget build(BuildContext context) {
    return PrincipalPageScaffold(
      title: item.label,
      body: ResponsiveListView(
        children: [
          SectionCard(
            child: EmptyState(
              icon: item.icon,
              title: 'Not available in the app yet',
              message: '${item.label} is available on the web portal. It is coming to the mobile app soon.',
            ),
          ),
        ],
      ),
    );
  }
}

/// Loading / error-with-Retry / data for a principal page. Same three states
/// as [AsyncValueView], but the error keeps the web pages' own headline
/// ("Failed to load the dashboard.") above the server's message.
class PrincipalAsyncView<T> extends StatelessWidget {
  const PrincipalAsyncView({
    super.key,
    required this.value,
    required this.data,
    required this.onRetry,
    required this.loadingLabel,
    required this.errorTitle,
  });

  final AsyncValue<T> value;
  final Widget Function(T data) data;
  final VoidCallback onRetry;
  final String loadingLabel;
  final String errorTitle;

  @override
  Widget build(BuildContext context) {
    return value.when(
      skipLoadingOnRefresh: true,
      data: data,
      loading: () => LoadingView(label: loadingLabel),
      error: (err, _) => ErrorView(message: '$errorTitle\n${describeError(err)}', onRetry: onRetry),
    );
  }
}

/// The web's SVG AttendanceRateRing: green ≥ 90, amber ≥ 75, else red;
/// shows "—" when there's nothing recorded.
class AttendanceRateRing extends StatelessWidget {
  const AttendanceRateRing({super.key, required this.percent, this.size = 56, this.stroke = 6});

  final double? percent;
  final double size;
  final double stroke;

  @override
  Widget build(BuildContext context) {
    final clamped = math.max(0.0, math.min(100.0, percent ?? 0));
    final color = clamped >= 90
        ? AppColors.success
        : clamped >= 75
            ? AppColors.amber
            : AppColors.danger;
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: clamped / 100,
            strokeWidth: stroke,
            strokeCap: StrokeCap.round,
            color: color,
            backgroundColor: AppColors.border,
          ),
          Center(
            child: Text(
              percent != null ? '${percent!.round()}%' : '—',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: size / 4.2, color: color),
            ),
          ),
        ],
      ),
    );
  }
}

/// Solid rounded icon square used by the dashboard stat tiles.
class TintedIcon extends StatelessWidget {
  const TintedIcon({super.key, required this.icon, required this.color, this.size = 40});

  final IconData icon;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(size * 0.3)),
      child: Icon(icon, size: size * 0.45, color: Colors.white),
    );
  }
}

/// Horizontal stat tile — icon (or ring) + big value + caption (the web
/// PrincipalDashboardPage's local StatTile).
class PrincipalStatTile extends StatelessWidget {
  const PrincipalStatTile({super.key, required this.value, required this.label, required this.tint, this.leading});

  final String value;
  final String label;
  final Color tint;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      constraints: const BoxConstraints(minHeight: 72),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: tint, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          ?leading,
          if (leading != null) const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (value.isNotEmpty)
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      value,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
                    ),
                  ),
                Text(
                  label,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall?.copyWith(color: AppColors.textSecondary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Profile photo, or initials when there's none / it fails to load. On the
/// brand gradient it's the web banner's translucent rounded square; in the
/// edit sheet it's the photo editor's circle.
class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key, required this.photoUrl, required this.name, this.onGradient = false});

  final String? photoUrl;
  final String name;
  final bool onGradient;

  static const size = 64.0;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(onGradient ? 16 : size / 2);
    final initials = initialsOf(name);
    final fallback = Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: onGradient ? Colors.white.withValues(alpha: 0.16) : AppColors.primaryLight,
        borderRadius: radius,
        border: Border.all(color: onGradient ? Colors.white.withValues(alpha: 0.35) : AppColors.border),
      ),
      child: initials.isEmpty
          ? Icon(Icons.person_outline, size: 28, color: onGradient ? Colors.white : AppColors.primary)
          : Text(
              initials,
              style: TextStyle(
                fontSize: size / 3,
                fontWeight: FontWeight.w700,
                color: onGradient ? Colors.white : AppColors.primary,
              ),
            ),
    );
    if (photoUrl == null || photoUrl!.isEmpty) return fallback;
    return ClipRRect(
      borderRadius: radius,
      child: CachedNetworkImage(
        imageUrl: photoUrl!,
        width: size,
        height: size,
        fit: BoxFit.cover,
        placeholder: (_, _) => fallback,
        errorWidget: (_, _, _) => fallback,
      ),
    );
  }
}

/// Bottom-sheet frame for the Edit Profile form — drag handle, 560dp cap,
/// keyboard-aware padding (same as the other portals' sheets).
Future<T?> showPrincipalFormSheet<T>(BuildContext context, WidgetBuilder builder) {
  return showModalBottomSheet<T>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    showDragHandle: true,
    constraints: const BoxConstraints(maxWidth: 560),
    builder: (sheetContext) => Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 20 + MediaQuery.viewInsetsOf(sheetContext).bottom),
      child: SingleChildScrollView(child: builder(sheetContext)),
    ),
  );
}

/// Cancel / primary action row at the bottom of a form sheet.
class SheetActions extends StatelessWidget {
  const SheetActions({super.key, required this.busy, required this.onSubmit, required this.submitLabel});

  final bool busy;
  final VoidCallback onSubmit;
  final String submitLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(onPressed: busy ? null : () => Navigator.of(context).pop(), child: const Text('Cancel')),
        const SizedBox(width: 8),
        FilledButton(
          onPressed: busy ? null : onSubmit,
          child: busy
              ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
              : Text(submitLabel),
        ),
      ],
    );
  }
}

void showSnack(BuildContext context, String message) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(message)));
}

const _photoMime = {'jpg': 'image/jpeg', 'jpeg': 'image/jpeg', 'png': 'image/png', 'webp': 'image/webp'};
const _photoMaxMb = 2;

/// Picks a profile photo and validates it the way the web's
/// ProfilePhotoEditor does (JPG/PNG/WebP, 2 MB, same messages). Returns the
/// file, or an error message to show; `(null, null)` means dismissed.
Future<(PhotoUpload?, String?)> pickProfilePhoto() async {
  const maxBytes = _photoMaxMb * 1024 * 1024;
  String tooLarge(int bytes) =>
      'That file is ${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB — the limit is $_photoMaxMb MB.';
  try {
    final picked = await FilePicker.pickFile(type: FileType.custom, allowedExtensions: _photoMime.keys.toList());
    if (picked == null) return (null, null);
    final mime = _photoMime[(picked.extension ?? '').toLowerCase()];
    if (mime == null) return (null, 'Only JPG, PNG or WebP images are allowed.');
    final size = await picked.length();
    if (size != null && size > maxBytes) return (null, tooLarge(size));
    final bytes = await picked.readAsBytes();
    if (bytes.length > maxBytes) return (null, tooLarge(bytes.length));
    return (PhotoUpload(name: picked.name, bytes: bytes, mimeType: mime), null);
  } catch (_) {
    return (null, "Couldn't read that file. Please try another one.");
  }
}
