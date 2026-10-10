import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/admin_campus_hostel.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/stat_tile.dart';
import '../hostel_oversight.dart';
import '../providers/hostel_oversight_providers.dart';
import 'hostel_oversight_rooms_screen.dart' show RoomOccupancyRow, compareRooms;
import 'hostel_oversight_widgets.dart';

/// Hostel reports — occupancy (GET /admin/hostel/reports/occupancy) and the
/// roll-call summary over a date range (GET .../attendance-summary).
class HostelOversightReportsScreen extends ConsumerStatefulWidget {
  const HostelOversightReportsScreen({super.key, required this.config});

  final HostelOversightConfig config;

  @override
  ConsumerState<HostelOversightReportsScreen> createState() => _HostelOversightReportsScreenState();
}

class _HostelOversightReportsScreenState extends ConsumerState<HostelOversightReportsScreen> {
  late DateTimeRange _range = () {
    final now = DateTime.now();
    final end = DateTime(now.year, now.month, now.day);
    return DateTimeRange(start: end.subtract(const Duration(days: 29)), end: end);
  }();

  (String, String) get _key => (ymd(_range.start), ymd(_range.end));

  Future<void> _pickRange() async {
    final picked = await showDateRangePicker(
      context: context,
      initialDateRange: _range,
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );
    if (picked != null) setState(() => _range = picked);
  }

  @override
  Widget build(BuildContext context) {
    final occupancy = ref.watch(hostelOccupancyProvider);
    return widget.config.frame(
      context,
      title: 'Hostel Reports',
      body: AsyncValueView<HostelOccupancyReport>(
        value: occupancy,
        onRetry: () => ref.invalidate(hostelOccupancyProvider),
        data: (o) {
          final pct = o.totalCapacity == 0 ? 0 : (o.totalOccupied * 100 / o.totalCapacity).round();
          final busiest = [...o.rooms]..sort(compareRooms);
          return ResponsiveListView(
            onRefresh: () async {
              ref.invalidate(hostelAttendanceSummaryProvider(_key));
              ref.invalidate(hostelOccupancyProvider);
              await ref.read(hostelOccupancyProvider.future);
            },
            children: [
              const SectionLabel('Occupancy'),
              StatGrid(
                tiles: [
                  StatTile(value: '${o.totalRooms}', label: 'Rooms', icon: Icons.meeting_room_outlined, color: AppColors.primary, tinted: true),
                  StatTile(value: '${o.totalCapacity}', label: 'Beds', icon: Icons.bed_outlined, color: AppColors.sky, tinted: true),
                  StatTile(value: '${o.totalOccupied}', label: 'Occupied · $pct%', icon: Icons.person_outline, color: AppColors.violet, tinted: true),
                  StatTile(
                    value: '${o.totalVacant}',
                    label: 'Vacant beds',
                    icon: Icons.check_circle_outline,
                    color: o.totalVacant == 0 ? AppColors.danger : AppColors.success,
                    tinted: true,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              // Range chip on its own line — label + chip don't fit side by
              // side on a phone.
              const SectionLabel('Roll-call summary'),
              Align(
                alignment: Alignment.centerLeft,
                child: ActionChip(
                  avatar: const Icon(Icons.date_range_outlined, size: 18),
                  label: Text('${formatDate(DateTime.utc(_range.start.year, _range.start.month, _range.start.day))} – '
                      '${formatDate(DateTime.utc(_range.end.year, _range.end.month, _range.end.day))}'),
                  onPressed: _pickRange,
                ),
              ),
              const SizedBox(height: 10),
              _AttendanceSummaryCard(keyArgs: _key),
              const SizedBox(height: 24),
              const SectionLabel('Room breakdown'),
              if (busiest.isEmpty)
                const EmptyCard(icon: Icons.meeting_room_outlined, title: 'No rooms yet')
              else
                DividedCard(children: [for (final r in busiest) RoomOccupancyRow(room: r)]),
            ],
          );
        },
      ),
    );
  }
}

class _AttendanceSummaryCard extends ConsumerWidget {
  const _AttendanceSummaryCard({required this.keyArgs});

  final (String, String) keyArgs;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(hostelAttendanceSummaryProvider(keyArgs));
    final scheme = Theme.of(context).colorScheme;
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.6)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: value.when(
          loading: () => const LinearProgressIndicator(),
          error: (e, _) => Text(describeError(e), style: TextStyle(color: scheme.error)),
          data: (s) {
            if (s.total == 0) return const Text('No roll-call marked in this period.');
            final present = s.byStatus['PRESENT'] ?? 0;
            final absent = s.byStatus['ABSENT'] ?? 0;
            final others = s.byStatus.entries.where((e) => e.key != 'PRESENT' && e.key != 'ABSENT');
            final rate = (present * 100 / s.total).round();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('$rate%', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w700)),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text('present across ${s.total} roll-call marks',
                          style: TextStyle(color: scheme.onSurfaceVariant)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                LinearProgressIndicator(
                  value: present / s.total,
                  minHeight: 8,
                  borderRadius: BorderRadius.circular(4),
                  color: AppColors.success,
                  backgroundColor: AppColors.dangerBg,
                ),
                const SizedBox(height: 10),
                Text('Present $present · Absent $absent'
                    '${others.isEmpty ? '' : ' · ${others.map((e) => '${humanizeEnum(e.key)} ${e.value}').join(' · ')}'}'),
              ],
            );
          },
        ),
      ),
    );
  }
}
