import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/models/admin_campus_hostel.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/info_field.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../hostel_oversight.dart';
import '../providers/hostel_oversight_providers.dart';
import 'hostel_oversight_widgets.dart';

/// Wardens — GET /admin/hostel/wardens: every staff account holding the
/// Hostel Warden role. Accounts themselves are created/edited from Staff;
/// hostel assignment is done from the Hostels page.
class HostelOversightWardensScreen extends ConsumerWidget {
  const HostelOversightWardensScreen({super.key, required this.config});

  final HostelOversightConfig config;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(hostelWardensProvider);
    return config.frame(
      context,
      title: 'Wardens',
      body: AsyncValueView<List<HostelWarden>>(
        value: value,
        onRetry: () => ref.invalidate(hostelWardensProvider),
        data: (wardens) => ResponsiveListView(
          onRefresh: () => ref.refresh(hostelWardensProvider.future),
          children: [
            if (wardens.isEmpty)
              const EmptyCard(
                icon: Icons.badge_outlined,
                title: 'No wardens yet',
                message: 'Give a staff account the Hostel Warden role to see it here.',
              )
            else
              DividedCard(
                children: [
                  for (final w in wardens)
                    ListTile(
                      onTap: () => context.push(config.warden(w.staffId)),
                      leading: CircleAvatar(
                        backgroundColor: AppColors.primaryLight,
                        foregroundColor: AppColors.primary,
                        child: Text(initialsOf(w.fullName), style: const TextStyle(fontWeight: FontWeight.w600)),
                      ),
                      title: Text(w.fullName ?? w.employeeCode ?? 'Warden'),
                      subtitle: Text([
                        w.employeeCode,
                        w.assignedHostel?.hostelName ?? 'No hostel assigned',
                      ].whereType<String>().join(' · ')),
                      trailing: accountStatusBadge(w.accountStatus),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

StatusBadge accountStatusBadge(String? s) => switch (s) {
      'ACTIVE' => const StatusBadge(label: 'Active', variant: BadgeVariant.success),
      null => const StatusBadge(label: '—'),
      _ => StatusBadge(label: humanizeEnum(s), variant: BadgeVariant.warning),
    };

/// GET /admin/hostel/wardens/:staffId.
class HostelOversightWardenDetailScreen extends ConsumerWidget {
  const HostelOversightWardenDetailScreen({super.key, required this.config, required this.staffId});

  final HostelOversightConfig config;
  final String staffId;

  Widget _cell(String label, String? value, {bool wide = false}) =>
      SizedBox(width: wide ? 320 : 150, child: InfoField(label: label, value: value));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(hostelWardenDetailProvider(staffId));
    return config.frame(
      context,
      title: 'Warden',
      body: AsyncValueView<HostelWarden>(
        value: value,
        onRetry: () => ref.invalidate(hostelWardenDetailProvider(staffId)),
        data: (w) {
          final scheme = Theme.of(context).colorScheme;
          final hasPhoto = (w.profilePhotoUrl ?? '').isNotEmpty;
          final snap = w.snapshot;
          return ResponsiveListView(
            onRefresh: () => ref.refresh(hostelWardenDetailProvider(staffId).future),
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: scheme.primaryContainer,
                    backgroundImage: hasPhoto ? NetworkImage(w.profilePhotoUrl!) : null,
                    child: hasPhoto
                        ? null
                        : Text(initialsOf(w.fullName),
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: scheme.onPrimaryContainer)),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(w.fullName ?? 'Warden', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                        Text([w.employeeCode, w.designation].whereType<String>().join(' · '),
                            style: TextStyle(color: scheme.onSurfaceVariant)),
                        const SizedBox(height: 4),
                        accountStatusBadge(w.accountStatus),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SectionCard(
                title: 'Assigned hostel',
                icon: Icons.home_work_outlined,
                child: w.assignedHostel == null
                    ? const Text('Not assigned to a hostel.')
                    : Wrap(
                        runSpacing: 12,
                        spacing: 24,
                        children: [
                          _cell('Hostel', w.assignedHostel!.hostelName),
                          _cell('Type', hostelTypeLabel(w.assignedHostel!.hostelType)),
                          _cell('Status', w.assignedHostel!.isActive == false ? 'Inactive' : 'Active'),
                        ],
                      ),
              ),
              const SizedBox(height: 12),
              SectionCard(
                title: 'Contact',
                icon: Icons.contact_phone_outlined,
                child: Wrap(
                  runSpacing: 12,
                  spacing: 24,
                  children: [
                    _cell('Phone', w.contactNumber ?? w.mobileNo),
                    _cell('Email', w.email),
                    _cell('Department', w.department),
                    _cell('Qualification', w.qualification),
                    _cell('Address', w.address, wide: true),
                  ],
                ),
              ),
              if (snap != null) ...[
                const SizedBox(height: 12),
                SectionCard(
                  title: 'Hostel snapshot',
                  icon: Icons.bed_outlined,
                  child: Wrap(
                    runSpacing: 12,
                    spacing: 24,
                    children: [
                      _cell('Rooms', '${snap.totalRooms}'),
                      _cell('Beds', '${snap.totalCapacity}'),
                      _cell('Occupied', '${snap.occupiedBeds}'),
                      _cell('Available', '${snap.availableBeds}'),
                    ],
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
