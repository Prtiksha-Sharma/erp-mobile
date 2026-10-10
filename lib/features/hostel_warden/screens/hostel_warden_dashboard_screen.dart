import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/models/hostel_warden.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/stat_tile.dart';
import '../providers/hostel_warden_providers.dart';
import '../services/hostel_warden_service.dart';
import 'hostel_warden_page_scaffold.dart';

/// There's no /hostel/dashboard endpoint — like the web's
/// useHostelWardenDashboardStats, the numbers are derived from the list
/// endpoints (rooms, active allocations, today's attendance / visitors / menu).
typedef _DashboardData = ({
  List<WardenRoom> rooms,
  List<StudentRoomAllocation> students,
  List<StaffRoomAllocation> staff,
  List<HostelAttendanceRecord> attendance,
  List<HostelVisitor> visitors,
  List<EffectiveMeal> menu,
});

final _dashboardProvider = FutureProvider<_DashboardData>((ref) async {
  final day = apiDate(DateTime.now());
  final results = await Future.wait([
    ref.watch(wardenRoomsProvider.future),
    ref.watch(wardenAllocationsProvider.future),
    ref.watch(wardenStaffAllocationsProvider.future),
    ref.watch(wardenAttendanceByDayProvider(day).future),
    ref.watch(wardenVisitorsProvider((from: day, to: day)).future),
    ref.watch(wardenEffectiveMenuProvider(day).future),
  ]);
  return (
    rooms: results[0] as List<WardenRoom>,
    students: results[1] as List<StudentRoomAllocation>,
    staff: results[2] as List<StaffRoomAllocation>,
    attendance: results[3] as List<HostelAttendanceRecord>,
    visitors: results[4] as List<HostelVisitor>,
    menu: results[5] as List<EffectiveMeal>,
  );
});

class HostelWardenDashboardScreen extends ConsumerWidget {
  const HostelWardenDashboardScreen({super.key});

  Future<void> _refresh(WidgetRef ref) async {
    final day = apiDate(DateTime.now());
    ref
      ..invalidate(wardenRoomsProvider)
      ..invalidate(wardenAllocationsProvider)
      ..invalidate(wardenStaffAllocationsProvider)
      ..invalidate(wardenAttendanceByDayProvider(day))
      ..invalidate(wardenVisitorsProvider((from: day, to: day)))
      ..invalidate(wardenEffectiveMenuProvider(day));
    await ref.read(_dashboardProvider.future);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(_dashboardProvider);
    final name = ref.watch(authProvider).user?.fullName;

    return HostelWardenPageScaffold(
      title: 'Dashboard',
      body: AsyncValueView<_DashboardData>(
        value: value,
        onRetry: () => _refresh(ref),
        data: (d) {
          final totalBeds = d.rooms.fold<int>(0, (sum, r) => sum + r.capacity);
          final vacantBeds = d.rooms.fold<int>(0, (sum, r) => sum + r.vacantCount);
          final marked = d.attendance.length;
          final absent = d.attendance.where((a) => a.status == 'ABSENT').length;
          final inside = d.visitors.where((v) => !v.isCheckedOut).length;

          return ResponsiveListView(
            onRefresh: () => _refresh(ref),
            children: [
              Text(
                name == null || name.isEmpty ? 'Welcome back' : 'Welcome back, $name',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 4),
              Text(
                "Here's the hostel at a glance.",
                style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant),
              ),
              const SizedBox(height: 16),
              _StatGrid(
                tiles: [
                  StatTile(
                    value: '${d.students.length}',
                    label: 'Student residents',
                    icon: Icons.school_outlined,
                    color: AppColors.primary,
                    tinted: true,
                  ),
                  StatTile(
                    value: '${d.staff.length}',
                    label: 'Staff residents',
                    icon: Icons.badge_outlined,
                    color: AppColors.violet,
                    tinted: true,
                  ),
                  StatTile(
                    value: '$vacantBeds / $totalBeds',
                    label: 'Beds vacant',
                    icon: Icons.bed_outlined,
                    color: vacantBeds == 0 ? AppColors.danger : AppColors.success,
                    tinted: true,
                  ),
                  StatTile(
                    value: '${d.visitors.length}',
                    label: inside > 0 ? "Today's visitors · $inside inside" : "Today's visitors",
                    icon: Icons.groups_outlined,
                    color: AppColors.sky,
                    tinted: true,
                  ),
                ],
              ),
              const SizedBox(height: 12),
              _RollCallCard(
                marked: marked,
                total: d.students.length,
                absent: absent,
                onTap: () => context.go('/hostel/attendance'),
              ),
              const SizedBox(height: 20),
              SectionLabel(
                "Today's menu",
                trailing: TextButton(onPressed: () => context.go('/hostel/mess'), child: const Text('Manage')),
              ),
              DividedCard(children: [for (final m in d.menu) MealRow(meal: m)]),
              const SizedBox(height: 20),
              const SectionLabel('Quick actions'),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  FilledButton.icon(
                    onPressed: () => context.go('/hostel/attendance'),
                    icon: const Icon(Icons.fact_check_outlined),
                    label: const Text('Take roll-call'),
                  ),
                  OutlinedButton.icon(
                    onPressed: () => context.go('/hostel/visitors'),
                    icon: const Icon(Icons.person_add_alt_outlined),
                    label: const Text('Log visitor'),
                  ),
                  OutlinedButton.icon(
                    onPressed: () => context.go('/hostel/allocations'),
                    icon: const Icon(Icons.bed_outlined),
                    label: const Text('Allocate room'),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

class _StatGrid extends StatelessWidget {
  const _StatGrid({required this.tiles});

  final List<Widget> tiles;

  @override
  Widget build(BuildContext context) {
    // Rows sized by their content (not a fixed aspect ratio) so large text
    // scales and narrow phones never clip a tile.
    final columns = context.isTabletWidth ? 4 : 2;
    return Column(
      children: [
        for (var start = 0; start < tiles.length; start += columns) ...[
          if (start > 0) const SizedBox(height: 12),
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (var i = start; i < start + columns; i++) ...[
                  if (i > start) const SizedBox(width: 12),
                  Expanded(child: i < tiles.length ? tiles[i] : const SizedBox.shrink()),
                ],
              ],
            ),
          ),
        ],
      ],
    );
  }
}

class _RollCallCard extends StatelessWidget {
  const _RollCallCard({required this.marked, required this.total, required this.absent, required this.onTap});

  final int marked;
  final int total;
  final int absent;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final done = total > 0 && marked >= total;
    final progress = total == 0 ? 0.0 : (marked / total).clamp(0.0, 1.0);
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.6)),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.nightlight_outlined, color: done ? AppColors.success : AppColors.warning),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text("Tonight's roll-call", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
                  ),
                  Text('$marked / $total', style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                ],
              ),
              const SizedBox(height: 10),
              LinearProgressIndicator(
                value: progress,
                minHeight: 6,
                borderRadius: BorderRadius.circular(3),
                color: done ? AppColors.success : AppColors.primary,
              ),
              const SizedBox(height: 8),
              Text(
                total == 0
                    ? 'No students are allocated to rooms yet.'
                    : done
                        ? absent == 0
                            ? 'Everyone is marked — all present.'
                            : 'Everyone is marked — $absent absent.'
                        : '${total - marked} still to mark${absent > 0 ? ' · $absent absent so far' : ''}',
                style: TextStyle(color: scheme.onSurfaceVariant),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// One meal slot row — shared by the dashboard and the mess screen.
class MealRow extends StatelessWidget {
  const MealRow({super.key, required this.meal, this.onTap});

  final EffectiveMeal meal;
  final VoidCallback? onTap;

  static IconData iconFor(String slot) => switch (slot) {
        'BREAKFAST' => Icons.free_breakfast_outlined,
        'LUNCH' => Icons.lunch_dining_outlined,
        'SNACKS' => Icons.cookie_outlined,
        'DINNER' => Icons.dinner_dining_outlined,
        _ => Icons.restaurant_outlined,
      };

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final items = meal.menuItems;
    return ListTile(
      onTap: onTap,
      leading: Icon(iconFor(meal.mealSlot), color: AppColors.primary),
      title: Row(
        children: [
          Text(humanizeEnum(meal.mealSlot), style: const TextStyle(fontWeight: FontWeight.w600)),
          if (meal.isSpecial) ...[
            const SizedBox(width: 8),
            const Icon(Icons.star_rounded, size: 16, color: AppColors.warning),
          ],
        ],
      ),
      subtitle: Text(
        items == null || items.trim().isEmpty ? 'Not set' : items,
        style: items == null ? TextStyle(color: scheme.onSurfaceVariant, fontStyle: FontStyle.italic) : null,
      ),
    );
  }
}
