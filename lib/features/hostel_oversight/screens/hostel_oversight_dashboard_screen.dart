import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/models/admin_campus_hostel.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/stat_tile.dart';
import '../hostel_oversight.dart';
import '../providers/hostel_oversight_providers.dart';
import 'hostel_oversight_widgets.dart';

/// Hostel dashboard — GET /admin/hostel/dashboard. Figures are
/// institution-wide (rooms aren't linked to a hostel on the backend).
class HostelOversightDashboardScreen extends ConsumerWidget {
  const HostelOversightDashboardScreen({super.key, required this.config});

  final HostelOversightConfig config;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(hostelDashboardProvider);
    return config.frame(
      context,
      title: 'Hostel',
      body: AsyncValueView<HostelDashboard>(
        value: value,
        onRetry: () => ref.invalidate(hostelDashboardProvider),
        data: (d) {
          final capacity = d.totalCapacity ?? 0;
          final occupied = d.occupiedBeds ?? 0;
          final pct = capacity == 0 ? 0 : (occupied * 100 / capacity).round();
          return ResponsiveListView(
            onRefresh: () => ref.refresh(hostelDashboardProvider.future),
            children: [
              StatGrid(
                tiles: [
                  StatTile(
                    value: '${d.totalHostels ?? 0}',
                    label: 'Active hostels',
                    icon: Icons.home_work_outlined,
                    color: AppColors.primary,
                    tinted: true,
                  ),
                  StatTile(
                    value: '${d.totalHostelStudents ?? 0}',
                    label: 'Students in hostel',
                    icon: Icons.school_outlined,
                    color: AppColors.violet,
                    tinted: true,
                  ),
                  StatTile(
                    value: '${d.totalRooms ?? 0}',
                    label: '${d.vacantRooms ?? 0} rooms vacant',
                    icon: Icons.meeting_room_outlined,
                    color: AppColors.sky,
                    tinted: true,
                  ),
                  StatTile(
                    value: '${d.activeWardens ?? 0}',
                    label: 'Active wardens',
                    icon: Icons.badge_outlined,
                    color: AppColors.success,
                    tinted: true,
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(color: Theme.of(context).colorScheme.outlineVariant.withValues(alpha: 0.6)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Text('Bed occupancy', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
                          ),
                          Text('$pct%', style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      LinearProgressIndicator(
                        value: capacity == 0 ? 0 : occupied / capacity,
                        minHeight: 8,
                        borderRadius: BorderRadius.circular(4),
                        color: pct >= 95 ? AppColors.danger : AppColors.primary,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '$occupied of $capacity beds occupied · ${d.availableBeds ?? 0} available',
                        style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SectionLabel('Manage'),
              DividedCard(
                children: [
                  _Link(Icons.home_work_outlined, 'Hostels', 'Hostel buildings and their wardens', config.hostels),
                  _Link(Icons.meeting_room_outlined, 'Rooms', 'Every room with live occupancy', config.rooms),
                  _Link(Icons.school_outlined, 'Students', 'Room allocations and history', config.students),
                  _Link(Icons.badge_outlined, 'Wardens', 'Staff holding the Hostel Warden role', config.wardens),
                  _Link(Icons.bar_chart_outlined, 'Reports', 'Occupancy and roll-call summary', config.reports),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

class _Link extends StatelessWidget {
  const _Link(this.icon, this.title, this.subtitle, this.path);

  final IconData icon;
  final String title;
  final String subtitle;
  final String path;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primary),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: () => context.go(path),
    );
  }
}
