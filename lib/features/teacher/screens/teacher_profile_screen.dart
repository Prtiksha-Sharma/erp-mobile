import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/staff_profile.dart';
import '../../../core/models/staff_self_service.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/info_field.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/teacher_portal_providers.dart';
import '../services/teacher_portal_service.dart';
import 'teacher_page_scaffold.dart';

/// Port of MyProfilePage.jsx — gradient banner, three quick stats, Personal
/// / Contact / Employment cards, and the Edit Profile sheet (photo, contact
/// number, address — the only self-editable fields).
class TeacherProfileScreen extends ConsumerWidget {
  const TeacherProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(teacherProfileProvider);
    return TeacherPageScaffold(
      title: 'My Profile',
      body: AsyncValueView(
        value: value,
        loadingLabel: 'Loading your profile…',
        onRetry: () => ref.invalidate(teacherProfileProvider),
        data: (staff) => ResponsiveListView(
          onRefresh: () async {
            ref
              ..invalidate(teacherSubjectsProvider)
              ..invalidate(teacherMyAttendanceProvider('month'))
              ..invalidate(teacherMyLeavesProvider);
            return ref.refresh(teacherProfileProvider.future);
          },
          children: [
            _Banner(staff: staff),
            const SizedBox(height: 16),
            const _QuickStats(),
            const SizedBox(height: 16),
            _Details(staff: staff),
          ],
        ),
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({required this.photoUrl, required this.name, this.onGradient = false});

  final String? photoUrl;
  final String name;
  final bool onGradient;

  static const size = 64.0;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(onGradient ? size * 0.25 : size / 2);
    final fallback = Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: onGradient ? Colors.white.withValues(alpha: 0.16) : AppColors.primaryLight,
        borderRadius: radius,
        border: Border.all(color: onGradient ? Colors.white38 : AppColors.border),
      ),
      child: Text(
        initialsOf(name),
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

class _Pill extends StatelessWidget {
  const _Pill({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.16),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: Colors.white.withValues(alpha: 0.28)),
      ),
      child: DefaultTextStyle.merge(style: const TextStyle(color: Colors.white, fontSize: 12), child: child),
    );
  }
}

class _Banner extends StatelessWidget {
  const _Banner({required this.staff});

  final StaffProfile staff;

  @override
  Widget build(BuildContext context) {
    final status = staff.employmentStatus;
    return Container(
      padding: const EdgeInsets.all(20),
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
              _Avatar(photoUrl: staff.profilePhotoUrl, name: staff.fullName, onGradient: true),
              const SizedBox(width: 14),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      staff.fullName,
                      style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    if (staff.employeeCode != null)
                      Text(staff.employeeCode!, style: const TextStyle(color: Colors.white70, fontFamily: 'monospace')),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 6,
                      runSpacing: 6,
                      children: [
                        if (staff.designation != null) _Pill(child: Text(staff.designation!)),
                        if (status != null)
                          _Pill(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: status == 'ACTIVE' ? const Color(0xFF4ADE80) : const Color(0xFFFCA5A5),
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Text(status == 'ACTIVE' ? 'Active' : status),
                              ],
                            ),
                          ),
                        if (staff.dateOfJoining != null) _Pill(child: Text('Joined ${formatDate(staff.dateOfJoining)}')),
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

/// Derived from data other pages already fetch — subjects, own attendance
/// (month) and own leaves — same as the web.
class _QuickStats extends ConsumerWidget {
  const _QuickStats();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final subjects = ref.watch(teacherSubjectsProvider).value ?? const [];
    final attendance = ref.watch(teacherMyAttendanceProvider('month')).value;
    final leaves = ref.watch(teacherMyLeavesProvider).value ?? const <StaffLeave>[];
    final classesAssigned = subjects.map((s) => s.classId).toSet().length;
    final pending = leaves.where((l) => l.status == 'PENDING').length;

    final card = Theme.of(context).colorScheme.surface;
    return ResponsiveGrid(
      minItemWidth: 200,
      maxColumns: 3,
      children: [
        _bordered(
          context,
          TeacherStatTile(
            tint: card,
            leading: const TintedIcon(icon: Icons.menu_book_outlined, color: AppColors.primary),
            value: '$classesAssigned',
            label: 'Classes Assigned',
          ),
        ),
        _bordered(
          context,
          TeacherStatTile(
            tint: card,
            leading: AttendanceRateRing(percent: attendance?.presentPercent),
            value: '',
            label: 'Attendance · last 30 days',
          ),
        ),
        _bordered(
          context,
          TeacherStatTile(
            tint: card,
            leading: const TintedIcon(icon: Icons.assignment_outlined, color: AppColors.amber),
            value: '$pending',
            label: 'Pending Leave Requests',
          ),
        ),
      ],
    );
  }

  Widget _bordered(BuildContext context, Widget child) => DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Theme.of(context).colorScheme.outlineVariant.withValues(alpha: 0.6)),
        ),
        child: child,
      );
}

class _Details extends StatelessWidget {
  const _Details({required this.staff});

  final StaffProfile staff;

  @override
  Widget build(BuildContext context) {
    final personal = SectionCard(
      title: 'Personal Information',
      icon: Icons.person_outline,
      child: InfoGrid(children: [
        InfoField(label: 'Full Name', value: staff.fullName),
        InfoField(label: 'Gender', value: staff.gender),
        InfoField(label: 'Date of Birth', value: staff.dateOfBirth == null ? null : formatDate(staff.dateOfBirth)),
        InfoField(label: 'Qualification', value: staff.qualification),
      ]),
    );
    final contact = SectionCard(
      title: 'Contact Information',
      icon: Icons.phone_outlined,
      child: InfoGrid(children: [
        InfoField(label: 'Contact Number', value: staff.contactNumber),
        InfoField(label: 'Email', value: staff.user?.email),
        InfoField(label: 'Address', value: staff.address),
      ]),
    );
    final status = staff.employmentStatus;
    final employment = SectionCard(
      title: 'Employment',
      icon: Icons.work_outline,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoField(label: 'Employee Code', value: staff.employeeCode),
          const SizedBox(height: 14),
          InfoField(label: 'Designation', value: staff.designation),
          const SizedBox(height: 14),
          InfoField(label: 'Department', value: staff.department),
          const SizedBox(height: 14),
          InfoField(label: 'Date of Joining', value: staff.dateOfJoining == null ? null : formatDate(staff.dateOfJoining)),
          const SizedBox(height: 14),
          Text('Status', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.outline)),
          const SizedBox(height: 4),
          StatusBadge(label: status ?? '—', variant: status == 'ACTIVE' ? BadgeVariant.success : BadgeVariant.neutral),
        ],
      ),
    );

    if (context.isExpandedWidth) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Column(children: [personal, const SizedBox(height: 16), contact])),
          const SizedBox(width: 16),
          SizedBox(width: 300, child: employment),
        ],
      );
    }
    return Column(children: [personal, const SizedBox(height: 16), contact, const SizedBox(height: 16), employment]);
  }
}

// ── Edit Profile sheet (EditProfileModalBase + ProfilePhotoEditor) ─────────

const _photoMime = {'jpg': 'image/jpeg', 'jpeg': 'image/jpeg', 'png': 'image/png', 'webp': 'image/webp'};
const _photoMaxBytes = 2 * 1024 * 1024;

Future<void> showEditProfileSheet(BuildContext context, StaffProfile staff) async {
  final saved = await showTeacherFormSheet<bool>(context, (_) => _EditProfileForm(staff: staff));
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
        ref.invalidate(teacherProfileProvider);
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
    final (file, error) = await pickUploadFile(
      mimeByExtension: _photoMime,
      maxBytes: _photoMaxBytes,
      typeError: 'Only JPG, PNG or WebP images are allowed.',
      sizeError: 'That file is too large — the limit is 2 MB.',
    );
    if (!mounted) return;
    if (error != null) {
      setState(() => _photoError = error);
    } else if (file != null) {
      await _applyPhoto(() => TeacherPortalService().uploadMyProfilePhoto(file));
    }
  }

  Future<void> _save() async {
    setState(() {
      _saving = true;
      _saveError = null;
    });
    final result = await TeacherPortalService().updateMyProfile(contactNumber: _contact.text, address: _address.text);
    if (!mounted) return;
    switch (result) {
      case Ok():
        ref.invalidate(teacherProfileProvider);
        Navigator.of(context).pop(true);
      case Err(:final failure):
        setState(() {
          _saving = false;
          _saveError = failure.userMessage;
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
            _Avatar(photoUrl: _photoUrl, name: widget.staff.fullName),
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
                          onPressed: _photoBusy ? null : () => _applyPhoto(TeacherPortalService().removeMyProfilePhoto),
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
