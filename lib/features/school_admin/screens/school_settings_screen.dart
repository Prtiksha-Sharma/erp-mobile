import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../providers/school_admin_providers.dart';
import '../services/school_admin_settings_service.dart';
import 'school_admin_page_scaffold.dart';

/// lib/logoUpload.js allow-list (no SVG) — same as the web's LogoUploader.
const _logoMime = {'jpg': 'image/jpeg', 'jpeg': 'image/jpeg', 'png': 'image/png', 'webp': 'image/webp'};
const _logoMaxBytes = 2 * 1024 * 1024;

/// School Settings — web features/school-admin/settings/
/// SchoolSettingsPage.jsx. Only the "School Profile" tab is live on the
/// web, and it renders only the logo control: the profile/sessions/
/// branches routes its other (unrendered) components code against don't
/// exist on the backend, so they're not ported either.
class SchoolSettingsScreen extends StatelessWidget {
  const SchoolSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SchoolAdminPageScaffold(
      title: 'School Settings',
      body: ResponsiveListView(
        children: [
          PageHeading(icon: Icons.settings_outlined, title: 'School Settings'),
          SizedBox(height: 16),
          _SingleTab(label: 'School Profile'),
          SizedBox(height: 16),
          _LogoUploader(),
        ],
      ),
    );
  }
}

/// The web's Tabs strip with its one tab.
class _SingleTab extends StatelessWidget {
  const _SingleTab({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.border)),
      ),
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.fromLTRB(4, 8, 4, 10),
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColors.primary, width: 2)),
        ),
        child: Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.primary),
        ),
      ),
    );
  }
}

/// LogoUploader.jsx. The current logo isn't readable by a School Admin on
/// mobile (see schoolLogoProvider), so the preview starts empty until an
/// upload in this session returns one. "Remove" is preview-only, exactly
/// like the web (there's no delete-logo endpoint).
class _LogoUploader extends ConsumerStatefulWidget {
  const _LogoUploader();

  @override
  ConsumerState<_LogoUploader> createState() => _LogoUploaderState();
}

class _LogoUploaderState extends ConsumerState<_LogoUploader> {
  bool _uploading = false;
  String? _error;

  Future<void> _pick() async {
    setState(() => _error = null);
    final (file, error) = await pickUploadFile(
      mimeByExtension: _logoMime,
      maxBytes: _logoMaxBytes,
      typeError: 'Only JPG, PNG or WebP images are allowed.',
      sizeError: (bytes) => 'That file is ${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB — the limit is 2 MB.',
    );
    if (!mounted) return;
    if (error != null) return setState(() => _error = error);
    if (file == null) return;

    setState(() => _uploading = true);
    final result = await SchoolAdminSettingsService().uploadLogo(file);
    if (!mounted) return;
    setState(() => _uploading = false);
    switch (result) {
      case Ok(:final value):
        ref.read(schoolLogoProvider.notifier).set(value);
        showSnack(context, 'Logo updated.');
      case Err(:final failure):
        showSnack(context, failureMessage(failure, 'Could not upload logo.'));
    }
  }

  void _remove() {
    final current = ref.read(schoolLogoProvider);
    ref.read(schoolLogoProvider.notifier).set(current?.copyWith(logoUrl: null));
    showSnack(context, 'Logo removed — preview only, not saved yet.');
  }

  @override
  Widget build(BuildContext context) {
    final logo = ref.watch(schoolLogoProvider);
    final logoUrl = logo?.logoUrl;
    final name = logo?.institutionName;
    final initials = name == null || name.isEmpty ? 'SC' : initialsOf(name);
    final hasLogo = logoUrl != null && logoUrl.isNotEmpty;

    final preview = Material(
      color: hasLogo ? Colors.white : AppColors.pageBg,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: AppColors.border, width: hasLogo ? 1 : 2),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: _uploading ? null : _pick,
        child: SizedBox(
          width: 88,
          height: 88,
          child: hasLogo
              ? CachedNetworkImage(imageUrl: logoUrl, fit: BoxFit.cover)
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.add_photo_alternate_outlined, size: 20, color: AppColors.textMuted),
                    const SizedBox(height: 6),
                    Text(
                      initials,
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.textMuted),
                    ),
                  ],
                ),
        ),
      ),
    );

    final controls = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Wrap(
          spacing: 16,
          runSpacing: 4,
          children: [
            Text('JPG, PNG or WebP', style: TextStyle(fontSize: 12, color: AppColors.textSecondary)),
            Text('Up to 2 MB', style: TextStyle(fontSize: 12, color: AppColors.textSecondary)),
            Text('Square works best', style: TextStyle(fontSize: 12, color: AppColors.textSecondary)),
          ],
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            FilledButton.icon(
              onPressed: _uploading ? null : _pick,
              icon: _uploading
                  ? const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2))
                  : const Icon(Icons.upload_outlined, size: 18),
              label: const Text('Upload new logo'),
            ),
            if (hasLogo)
              TextButton(
                style: TextButton.styleFrom(foregroundColor: AppColors.danger),
                onPressed: _remove,
                child: const Text('Remove'),
              ),
          ],
        ),
        if (_error != null) ...[const SizedBox(height: 8), FormErrorText(_error!)],
      ],
    );

    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'BRANDING',
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, letterSpacing: 0.8, color: AppColors.primary),
          ),
          const SizedBox(height: 4),
          const Text(
            'School logo',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
          ),
          const SizedBox(height: 4),
          const Text(
            'Shown in the sidebar, the login page, and printed documents like report cards and ID cards.',
            style: TextStyle(fontSize: 12, color: AppColors.textMuted),
          ),
          const SizedBox(height: 16),
          LayoutBuilder(
            builder: (context, c) => c.maxWidth < 320
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [preview, const SizedBox(height: 16), controls],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      preview,
                      const SizedBox(width: 20),
                      Expanded(child: controls),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
