import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/staff_profile.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../providers/vice_principal_portal_providers.dart';
import '../services/vice_principal_portal_service.dart';
import 'vice_principal_page_scaffold.dart';

/// Port of VicePrincipalProfilePage.jsx — gradient banner (photo, name,
/// code, designation / institution / joined pills, Edit Profile), Contact
/// Information, Employment and Institution cards, and the Edit Profile sheet
/// (EditProfileModal + ProfilePhotoEditor: photo, contact number, address —
/// the only self-editable fields).
class VicePrincipalProfileScreen extends ConsumerWidget {
  const VicePrincipalProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(vicePrincipalProfileProvider);
    return VicePrincipalPageScaffold(
      title: 'My Profile',
      body: VicePrincipalAsyncView(
        value: value,
        loadingLabel: 'Loading your profile…',
        errorTitle: 'Failed to load your profile.',
        onRetry: () => ref.invalidate(vicePrincipalProfileProvider),
        data: (staff) => ResponsiveListView(
          onRefresh: () => ref.refresh(vicePrincipalProfileProvider.future),
          children: [
            _Banner(staff: staff),
            const SizedBox(height: 20),
            _Details(staff: staff),
          ],
        ),
      ),
    );
  }
}

class _Pill extends StatelessWidget {
  const _Pill(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.16),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: Colors.white.withValues(alpha: 0.28)),
      ),
      child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500)),
    );
  }
}

class _Banner extends StatelessWidget {
  const _Banner({required this.staff});

  final StaffProfile staff;

  @override
  Widget build(BuildContext context) {
    final institutionName = staff.institution?.institutionName;
    return Container(
      padding: EdgeInsets.all(context.isTabletWidth ? 24 : 20),
      decoration: BoxDecoration(gradient: AppColors.brandGradient, borderRadius: BorderRadius.circular(18)),
      child: Wrap(
        spacing: 16,
        runSpacing: 16,
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ProfileAvatar(photoUrl: staff.profilePhotoUrl, name: staff.fullName, onGradient: true),
              const SizedBox(width: 16),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      staff.fullName,
                      style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    if (staff.employeeCode != null)
                      Text(
                        staff.employeeCode!,
                        style: const TextStyle(color: Colors.white70, fontSize: 12, fontFamily: 'monospace'),
                      ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 6,
                      runSpacing: 6,
                      children: [
                        if (staff.designation != null) _Pill(staff.designation!),
                        if (institutionName != null) _Pill(institutionName),
                        if (staff.dateOfJoining != null) _Pill('Joined ${formatDate(staff.dateOfJoining)}'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          FilledButton.icon(
            style: FilledButton.styleFrom(backgroundColor: Colors.white, foregroundColor: AppColors.primary),
            onPressed: () => showEditProfileSheet(context, staff),
            icon: const Icon(Icons.edit_outlined, size: 18),
            label: const Text('Edit Profile'),
          ),
        ],
      ),
    );
  }
}

/// The web page's local InfoField — a missing value reads "Not provided"
/// in muted italics, optionally led by a muted icon.
class _Field extends StatelessWidget {
  const _Field({required this.label, required this.value, this.icon});

  final String label;
  final String? value;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hasValue = value != null && value!.trim().isNotEmpty;
    final field = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: theme.textTheme.bodySmall?.copyWith(color: AppColors.textMuted)),
        const SizedBox(height: 2),
        Text(
          hasValue ? value! : 'Not provided',
          style: theme.textTheme.bodyMedium?.copyWith(
            color: hasValue ? AppColors.textPrimary : AppColors.textMuted,
            fontStyle: hasValue ? FontStyle.normal : FontStyle.italic,
          ),
        ),
      ],
    );
    if (icon == null) return field;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.only(top: 2), child: Icon(icon, size: 16, color: AppColors.textMuted)),
        const SizedBox(width: 10),
        Expanded(child: field),
      ],
    );
  }
}

/// Vertically stacked fields with the web's `space-y-4` gap.
class _FieldStack extends StatelessWidget {
  const _FieldStack({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var i = 0; i < children.length; i++) ...[
          if (i > 0) const SizedBox(height: 16),
          children[i],
        ],
      ],
    );
  }
}

class _Details extends StatelessWidget {
  const _Details({required this.staff});

  final StaffProfile staff;

  @override
  Widget build(BuildContext context) {
    // Contact Number + Email share a row once there's room (web: sm:grid-cols-2),
    // Address always spans the full width.
    final contact = SectionCard(
      title: 'Contact Information',
      icon: Icons.phone_outlined,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final phone = _Field(icon: Icons.phone_outlined, label: 'Contact Number', value: staff.contactNumber);
          final email = _Field(icon: Icons.mail_outline, label: 'Email', value: staff.user?.email);
          final address = _Field(icon: Icons.place_outlined, label: 'Address', value: staff.address);
          if (constraints.maxWidth >= 440) {
            return _FieldStack(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Expanded(child: phone), const SizedBox(width: 16), Expanded(child: email)],
              ),
              address,
            ]);
          }
          return _FieldStack(children: [phone, email, address]);
        },
      ),
    );
    final employment = SectionCard(
      title: 'Employment',
      icon: Icons.work_outline,
      child: _FieldStack(children: [
        _Field(label: 'Employee Code', value: staff.employeeCode),
        _Field(label: 'Designation', value: staff.designation),
        _Field(label: 'Department', value: staff.department),
        _Field(label: 'Reporting To', value: staff.reportsTo?.fullName),
        _Field(
          label: 'Date of Joining',
          value: staff.dateOfJoining == null ? null : formatDate(staff.dateOfJoining),
        ),
      ]),
    );
    final institution = SectionCard(
      title: 'Institution',
      icon: Icons.apartment_outlined,
      child: _FieldStack(children: [
        _Field(label: 'Institution', value: staff.institution?.institutionName),
        _Field(label: 'Branch', value: staff.branch?.branchName),
      ]),
    );

    // Web: `xl:grid-cols-[1fr_300px]` — contact on the left, employment and
    // institution in a 300px side column on wide screens.
    if (context.isExpandedWidth) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: contact),
          const SizedBox(width: 20),
          SizedBox(
            width: 300,
            child: Column(children: [employment, const SizedBox(height: 20), institution]),
          ),
        ],
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [contact, const SizedBox(height: 16), employment, const SizedBox(height: 16), institution],
    );
  }
}

// ── Edit Profile sheet (EditProfileModal + ProfilePhotoEditor) ─────────────

Future<void> showEditProfileSheet(BuildContext context, StaffProfile staff) async {
  final saved = await showVicePrincipalFormSheet<bool>(context, (_) => _EditProfileForm(staff: staff));
  if (saved == true && context.mounted) showSnack(context, 'Profile updated.');
}

class _EditProfileForm extends ConsumerStatefulWidget {
  const _EditProfileForm({required this.staff});

  final StaffProfile staff;

  @override
  ConsumerState<_EditProfileForm> createState() => _EditProfileFormState();
}

class _EditProfileFormState extends ConsumerState<_EditProfileForm> {
  late final _contact = TextEditingController(text: widget.staff.contactNumber ?? '');
  late final _address = TextEditingController(text: widget.staff.address ?? '');
  late String? _photoUrl = widget.staff.profilePhotoUrl;
  bool _saving = false;
  bool _photoBusy = false;
  String? _saveError;
  String? _photoError;

  @override
  void dispose() {
    _contact.dispose();
    _address.dispose();
    super.dispose();
  }

  /// Photo changes save instantly, independent of the Save button (web).
  Future<void> _applyPhoto(Future<Result<StaffProfile>> Function() call) async {
    setState(() {
      _photoBusy = true;
      _photoError = null;
    });
    final result = await call();
    if (!mounted) return;
    switch (result) {
      case Ok(:final value):
        ref.invalidate(vicePrincipalProfileProvider);
        setState(() {
          _photoBusy = false;
          _photoUrl = value.profilePhotoUrl;
        });
      case Err(:final failure):
        setState(() {
          _photoBusy = false;
          _photoError = failure.userMessage;
        });
    }
  }

  Future<void> _pickPhoto() async {
    final (file, error) = await pickProfilePhoto();
    if (!mounted) return;
    if (error != null) {
      setState(() => _photoError = error);
    } else if (file != null) {
      await _applyPhoto(() => VicePrincipalPortalService().uploadMyProfilePhoto(file));
    }
  }

  Future<void> _save() async {
    setState(() {
      _saving = true;
      _saveError = null;
    });
    final result =
        await VicePrincipalPortalService().updateMyProfile(contactNumber: _contact.text, address: _address.text);
    if (!mounted) return;
    switch (result) {
      case Ok():
        ref.invalidate(vicePrincipalProfileProvider);
        Navigator.of(context).pop(true);
      case Err(:final failure):
        setState(() {
          _saving = false;
          // Web: the backend's own message, else 'Failed to update profile.'
          _saveError = switch (failure) {
            ValidationFailure(:final message) || ServerFailure(:final message) when message.isNotEmpty => message,
            _ => 'Failed to update profile.',
          };
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Edit Profile', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 16),
        Row(
          children: [
            ProfileAvatar(photoUrl: _photoUrl, name: widget.staff.fullName),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Edit Your Photo', style: TextStyle(fontWeight: FontWeight.w600)),
                  const Text('JPG, PNG or WebP · Max 2 MB', style: TextStyle(fontSize: 12, color: AppColors.textMuted)),
                  Wrap(
                    children: [
                      if (_photoUrl != null)
                        TextButton(
                          style: TextButton.styleFrom(foregroundColor: scheme.error),
                          onPressed: _photoBusy
                              ? null
                              : () => _applyPhoto(VicePrincipalPortalService().removeMyProfilePhoto),
                          child: const Text('Delete'),
                        ),
                      TextButton.icon(
                        onPressed: _photoBusy ? null : _pickPhoto,
                        icon: _photoBusy
                            ? const SizedBox(width: 14, height: 14, child: CircularProgressIndicator(strokeWidth: 2))
                            : const Icon(Icons.upload_outlined, size: 18),
                        label: const Text('Update'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        if (_photoError != null) Text(_photoError!, style: TextStyle(color: scheme.error, fontSize: 12)),
        const SizedBox(height: 16),
        TextField(
          controller: _contact,
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(
            labelText: 'Contact Number',
            hintText: 'e.g. 9876543210',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _address,
          maxLines: 2,
          decoration: const InputDecoration(
            labelText: 'Address',
            hintText: 'Your current address',
            border: OutlineInputBorder(),
          ),
        ),
        if (_saveError != null) ...[
          const SizedBox(height: 12),
          Text(_saveError!, style: TextStyle(color: scheme.error)),
        ],
        const SizedBox(height: 20),
        SheetActions(busy: _saving, onSubmit: _save, submitLabel: 'Save'),
      ],
    );
  }
}
