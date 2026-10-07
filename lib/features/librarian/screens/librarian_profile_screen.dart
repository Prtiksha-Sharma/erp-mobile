import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/staff_profile.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/widgets/app_shell/app_change_password_sheet.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/info_field.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../providers/librarian_providers.dart';
import '../services/librarian_service.dart';
import 'librarian_page_scaffold.dart';

/// My profile — GET/PATCH /librarian/profile, POST /librarian/profile/photo.
/// Only contact number, address and photo are self-editable; employment
/// details stay with the School Admin.
class LibrarianProfileScreen extends ConsumerWidget {
  const LibrarianProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(librarianProfileProvider);
    return LibrarianPageScaffold(
      title: 'My Profile',
      body: AsyncValueView<StaffProfile>(
        value: value,
        onRetry: () => ref.invalidate(librarianProfileProvider),
        data: (p) => ResponsiveListView(
          onRefresh: () => ref.refresh(librarianProfileProvider.future),
          children: [
            _Header(profile: p),
            const SizedBox(height: 16),
            SectionCard(
              title: 'Contact',
              icon: Icons.contact_phone_outlined,
              trailing: TextButton.icon(
                onPressed: () => _showEditSheet(context, ref, p),
                icon: const Icon(Icons.edit_outlined, size: 18),
                label: const Text('Edit'),
              ),
              child: Wrap(
                runSpacing: 12,
                spacing: 24,
                children: [
                  _cell('Phone', p.contactNumber),
                  _cell('Email', p.user?.email),
                  _cell('Address', p.address, wide: true),
                ],
              ),
            ),
            const SizedBox(height: 12),
            SectionCard(
              title: 'Employment',
              icon: Icons.badge_outlined,
              child: Wrap(
                runSpacing: 12,
                spacing: 24,
                children: [
                  _cell('Employee code', p.employeeCode),
                  _cell('Designation', p.designation),
                  _cell('Department', p.department),
                  _cell('Branch', p.branch?.branchName),
                  _cell('Date of joining', p.dateOfJoining == null ? null : formatDate(p.dateOfJoining)),
                  _cell('Reports to', p.reportsTo?.fullName),
                  _cell('Username', p.user?.username),
                ],
              ),
            ),
            const SizedBox(height: 12),
            OutlinedButton.icon(
              onPressed: () => showAppChangePasswordSheet(context),
              icon: const Icon(Icons.lock_reset_outlined),
              label: const Text('Change password'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cell(String label, String? value, {bool wide = false}) =>
      SizedBox(width: wide ? 320 : 150, child: InfoField(label: label, value: value));
}

class _Header extends ConsumerStatefulWidget {
  const _Header({required this.profile});

  final StaffProfile profile;

  @override
  ConsumerState<_Header> createState() => _HeaderState();
}

class _HeaderState extends ConsumerState<_Header> {
  bool _busy = false;

  Future<void> _pickPhoto() async {
    final (file, error) = await pickLibraryUploadFile(
      mimeByExtension: const {'jpg': 'image/jpeg', 'jpeg': 'image/jpeg', 'png': 'image/png', 'webp': 'image/webp'},
      maxBytes: 2 * 1024 * 1024,
      typeError: 'Please choose a JPG, PNG or WebP image.',
      sizeError: 'That image is larger than 2 MB.',
    );
    if (!mounted) return;
    if (error != null) return showSnack(context, error);
    if (file == null) return;
    await _run(() => LibrarianService().uploadMyProfilePhoto(file), 'Photo updated');
  }

  Future<void> _removePhoto() => _run(() => LibrarianService().removeMyProfilePhoto(), 'Photo removed');

  Future<void> _run(Future<Result<StaffProfile>> Function() call, String success) async {
    setState(() => _busy = true);
    final result = await call();
    if (!mounted) return;
    setState(() => _busy = false);
    switch (result) {
      case Ok():
        ref.invalidate(librarianProfileProvider);
        showSnack(context, success);
      case Err(:final failure):
        showSnack(context, failure.userMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    final p = widget.profile;
    final scheme = Theme.of(context).colorScheme;
    final hasPhoto = (p.profilePhotoUrl ?? '').isNotEmpty;
    return Row(
      children: [
        CircleAvatar(
          radius: 36,
          backgroundColor: scheme.primaryContainer,
          backgroundImage: hasPhoto ? NetworkImage(p.profilePhotoUrl!) : null,
          child: hasPhoto
              ? null
              : Text(initialsOf(p.fullName), style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: scheme.onPrimaryContainer)),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(p.fullName, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
              Text(p.designation ?? 'Librarian', style: TextStyle(color: scheme.onSurfaceVariant)),
              const SizedBox(height: 6),
              Wrap(
                spacing: 4,
                children: [
                  TextButton.icon(
                    onPressed: _busy ? null : _pickPhoto,
                    icon: const Icon(Icons.photo_camera_outlined, size: 18),
                    label: Text(hasPhoto ? 'Change photo' : 'Add photo'),
                  ),
                  if (hasPhoto) TextButton(onPressed: _busy ? null : _removePhoto, child: const Text('Remove')),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Future<void> _showEditSheet(BuildContext context, WidgetRef ref, StaffProfile p) {
  return showLibrarianFormSheet<void>(context, (_) => _EditForm(profile: p, ref: ref));
}

class _EditForm extends StatefulWidget {
  const _EditForm({required this.profile, required this.ref});

  final StaffProfile profile;
  final WidgetRef ref;

  @override
  State<_EditForm> createState() => _EditFormState();
}

class _EditFormState extends State<_EditForm> {
  late final _phone = TextEditingController(text: widget.profile.contactNumber);
  late final _address = TextEditingController(text: widget.profile.address);
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _phone.dispose();
    _address.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    final result = await LibrarianService().updateMyProfile(contactNumber: _phone.text, address: _address.text);
    if (!mounted) return;
    switch (result) {
      case Ok():
        widget.ref.invalidate(librarianProfileProvider);
        Navigator.of(context).pop();
        showSnack(context, 'Profile updated');
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failure.userMessage;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Edit contact details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        const SizedBox(height: 16),
        TextField(
          controller: _phone,
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(labelText: 'Phone number'),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _address,
          maxLines: 3,
          decoration: const InputDecoration(labelText: 'Address'),
        ),
        if (_error != null)
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          ),
        const SizedBox(height: 16),
        SheetActions(busy: _busy, onSubmit: _save, submitLabel: 'Save'),
      ],
    );
  }
}
