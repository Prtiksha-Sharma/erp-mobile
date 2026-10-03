import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/teacher_profile.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/teachers_provider.dart';
import 'parent_page_scaffold.dart';

class TeacherProfileScreen extends ConsumerWidget {
  const TeacherProfileScreen({super.key, required this.staffId});

  final String staffId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(teacherProfileProvider(staffId));

    return ParentPageScaffold(
      title: 'Teacher Profile',
      body: profileAsync.when(
        data: (profile) => _ProfileView(profile: profile),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => ErrorView(
          message: describeError(err),
          onRetry: () => ref.invalidate(teacherProfileProvider(staffId)),
        ),
      ),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView({required this.profile});

  final TeacherProfile profile;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 28),
          decoration: BoxDecoration(color: scheme.primaryContainer, borderRadius: BorderRadius.circular(24)),
          child: Column(
            children: [
              CircleAvatar(
                radius: 48,
                backgroundColor: scheme.primary,
                backgroundImage:
                    profile.profilePhotoUrl != null ? NetworkImage(profile.profilePhotoUrl!) : null,
                child: profile.profilePhotoUrl == null
                    ? Text(profile.fullName[0].toUpperCase(),
                        style: TextStyle(fontSize: 32, color: scheme.onPrimary))
                    : null,
              ),
              const SizedBox(height: 14),
              Text(
                profile.fullName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: scheme.onPrimaryContainer),
                textAlign: TextAlign.center,
              ),
              if (profile.designation != null) ...[
                const SizedBox(height: 4),
                Text(profile.designation!, style: TextStyle(color: scheme.onPrimaryContainer.withValues(alpha: 0.75))),
              ],
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            color: scheme.surface,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 6, offset: const Offset(0, 2))],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            children: [
              _InfoRow(icon: Icons.apartment_outlined, label: 'Department', value: profile.department),
              _InfoRow(icon: Icons.school_outlined, label: 'Qualification', value: profile.qualification),
              _InfoRow(
                icon: Icons.event_outlined,
                label: 'Joined',
                value: profile.dateOfJoining != null
                    ? DateFormat('d MMM yyyy').format(profile.dateOfJoining!)
                    : null,
              ),
              _InfoRow(icon: Icons.wc_outlined, label: 'Gender', value: profile.gender),
              _InfoRow(icon: Icons.phone_outlined, label: 'Contact', value: profile.contactNumber),
              _InfoRow(icon: Icons.email_outlined, label: 'Email', value: profile.emailRef?.email, isLast: true),
            ],
          ),
        ),
      ],
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.icon, required this.label, required this.value, this.isLast = false});

  final IconData icon;
  final String label;
  final String? value;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    if (value == null || value!.isEmpty) return const SizedBox.shrink();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Row(
            children: [
              Icon(icon, size: 20, color: Theme.of(context).colorScheme.primary),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(label, style: Theme.of(context).textTheme.bodySmall),
                    Text(value!, style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (!isLast) const Divider(height: 1, indent: 48),
      ],
    );
  }
}
