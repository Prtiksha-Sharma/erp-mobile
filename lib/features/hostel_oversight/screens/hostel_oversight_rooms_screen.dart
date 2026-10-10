import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/admin_campus_hostel.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../hostel_oversight.dart';
import '../providers/hostel_oversight_providers.dart';
import 'hostel_oversight_widgets.dart';

/// Rooms — read-only for every role (room counts and attributes are the
/// Hostel Warden's to change). Uses the occupancy report, which carries
/// live occupied/vacant counts per active room.
class HostelOversightRoomsScreen extends ConsumerStatefulWidget {
  const HostelOversightRoomsScreen({super.key, required this.config});

  final HostelOversightConfig config;

  @override
  ConsumerState<HostelOversightRoomsScreen> createState() => _HostelOversightRoomsScreenState();
}

enum _Filter { all, vacant, partial, full }

class _HostelOversightRoomsScreenState extends ConsumerState<HostelOversightRoomsScreen> {
  _Filter _filter = _Filter.all;

  bool _matches(HostelRoom r) {
    final occupied = r.occupied ?? 0;
    return switch (_filter) {
      _Filter.all => true,
      _Filter.vacant => occupied == 0,
      _Filter.partial => occupied > 0 && occupied < r.capacity,
      _Filter.full => occupied >= r.capacity,
    };
  }

  @override
  Widget build(BuildContext context) {
    final value = ref.watch(hostelOccupancyProvider);
    return widget.config.frame(
      context,
      title: 'Rooms',
      body: AsyncValueView<HostelOccupancyReport>(
        value: value,
        onRetry: () => ref.invalidate(hostelOccupancyProvider),
        data: (report) {
          final rooms = report.rooms.where(_matches).toList()..sort(compareRooms);
          final floors = rooms.map((r) => r.floorNumber ?? 0).toSet().toList()..sort();
          return ResponsiveListView(
            onRefresh: () => ref.refresh(hostelOccupancyProvider.future),
            children: [
              Text(
                '${report.totalRooms} rooms · ${report.totalOccupied} / ${report.totalCapacity} beds occupied',
                style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                children: [
                  for (final f in _Filter.values)
                    ChoiceChip(
                      label: Text(humanizeEnum(f.name)),
                      selected: _filter == f,
                      onSelected: (_) => setState(() => _filter = f),
                    ),
                ],
              ),
              const SizedBox(height: 16),
              if (rooms.isEmpty)
                EmptyCard(
                  icon: Icons.meeting_room_outlined,
                  title: report.rooms.isEmpty ? 'No rooms yet' : 'No rooms match',
                  message: report.rooms.isEmpty ? 'The Hostel Warden sets up floors and rooms.' : null,
                ),
              for (final floor in floors) ...[
                SectionLabel('Floor $floor'),
                DividedCard(
                  children: [
                    for (final r in rooms.where((r) => (r.floorNumber ?? 0) == floor)) RoomOccupancyRow(room: r),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ],
          );
        },
      ),
    );
  }
}

/// Floor, then numeric room number where possible.
int compareRooms(HostelRoom a, HostelRoom b) {
  final f = (a.floorNumber ?? 0).compareTo(b.floorNumber ?? 0);
  if (f != 0) return f;
  final an = int.tryParse(a.roomNumber);
  final bn = int.tryParse(b.roomNumber);
  return an != null && bn != null ? an.compareTo(bn) : a.roomNumber.compareTo(b.roomNumber);
}

class RoomOccupancyRow extends StatelessWidget {
  const RoomOccupancyRow({super.key, required this.room});

  final HostelRoom room;

  @override
  Widget build(BuildContext context) {
    final r = room;
    final occupied = r.occupied ?? 0;
    final badge = occupied == 0
        ? const StatusBadge(label: 'Vacant', variant: BadgeVariant.success)
        : occupied >= r.capacity
            ? const StatusBadge(label: 'Full', variant: BadgeVariant.danger)
            : const StatusBadge(label: 'Partial', variant: BadgeVariant.warning);
    return ListTile(
      leading: const Icon(Icons.meeting_room_outlined, color: AppColors.primary),
      title: Text('Room ${r.roomNumber}', style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text([
        if (r.roomType != null) humanizeEnum(r.roomType),
        if (r.acType != null) r.acType == 'NON_AC' ? 'Non-AC' : 'AC',
        '$occupied / ${r.capacity} beds',
      ].join(' · ')),
      trailing: badge,
    );
  }
}
