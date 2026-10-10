import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/admin_campus_hostel.dart';
import '../../../core/models/student_brief.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../hostel_oversight.dart';
import '../providers/hostel_oversight_providers.dart';
import 'hostel_oversight_widgets.dart';

/// Hostel students — GET /admin/hostel/students (allocation rows, every
/// session). Tap a student for their full allocation history
/// (GET /admin/hostel/students/:id/history). Allocating is the warden's job.
class HostelOversightStudentsScreen extends ConsumerStatefulWidget {
  const HostelOversightStudentsScreen({super.key, required this.config});

  final HostelOversightConfig config;

  @override
  ConsumerState<HostelOversightStudentsScreen> createState() => _HostelOversightStudentsScreenState();
}

class _HostelOversightStudentsScreenState extends ConsumerState<HostelOversightStudentsScreen> {
  final _search = TextEditingController();
  String _query = '';
  String _status = 'ACTIVE';

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final value = ref.watch(hostelStudentsProvider(_status));
    return widget.config.frame(
      context,
      title: 'Hostel Students',
      body: AsyncValueView<List<HostelAllocation>>(
        value: value,
        onRetry: () => ref.invalidate(hostelStudentsProvider(_status)),
        data: (all) {
          final q = _query.toLowerCase();
          final rows = q.isEmpty
              ? all
              : all
                  .where((a) =>
                      (a.student?.displayName.toLowerCase().contains(q) ?? false) ||
                      (a.student?.admissionNo?.toLowerCase().contains(q) ?? false) ||
                      (a.room?.roomNumber?.toLowerCase() == q))
                  .toList();
          return ResponsiveListView(
            onRefresh: () => ref.refresh(hostelStudentsProvider(_status).future),
            children: [
              SegmentedButton<String>(
                segments: const [
                  ButtonSegment(value: 'ACTIVE', label: Text('Current')),
                  ButtonSegment(value: 'VACATED', label: Text('Vacated')),
                  ButtonSegment(value: '', label: Text('All')),
                ],
                selected: {_status},
                showSelectedIcon: false,
                onSelectionChanged: (v) => setState(() => _status = v.first),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _search,
                onChanged: (v) => setState(() => _query = v.trim()),
                decoration: InputDecoration(
                  hintText: 'Search name, admission no. or room',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide.none),
                  contentPadding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
              const SizedBox(height: 16),
              SectionLabel('${rows.length} allocation${rows.length == 1 ? '' : 's'}'),
              if (rows.isEmpty)
                const EmptyCard(icon: Icons.school_outlined, title: 'No students found')
              else
                DividedCard(
                  children: [
                    for (final a in rows)
                      ListTile(
                        onTap: a.studentId == null ? null : () => _showHistory(a),
                        title: Text(a.student?.displayName ?? 'Student'),
                        subtitle: Text([
                          a.student?.admissionNo,
                          if (a.room != null) 'Room ${a.room!.roomNumber ?? '—'} · Floor ${a.room!.floorNumber ?? '—'}',
                          if (a.bedNumber != null) 'Bed ${a.bedNumber}',
                          if (a.allocatedAt != null) 'Since ${formatDate(a.allocatedAt)}',
                        ].whereType<String>().join(' · ')),
                        trailing: allocationBadge(a.status),
                      ),
                  ],
                ),
            ],
          );
        },
      ),
    );
  }

  Future<void> _showHistory(HostelAllocation a) => showOversightFormSheet<void>(
        context,
        (_) => _HistorySheet(studentId: a.studentId!, name: a.student?.displayName ?? 'Student'),
      );
}

StatusBadge allocationBadge(String? status) => switch (status) {
      'ACTIVE' => const StatusBadge(label: 'Current', variant: BadgeVariant.success),
      'VACATED' => const StatusBadge(label: 'Vacated', variant: BadgeVariant.neutral),
      _ => StatusBadge(label: humanizeEnum(status)),
    };

class _HistorySheet extends ConsumerWidget {
  const _HistorySheet({required this.studentId, required this.name});

  final String studentId;
  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(hostelStudentHistoryProvider(studentId));
    final scheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        Text('Hostel allocation history', style: TextStyle(color: scheme.onSurfaceVariant)),
        const SizedBox(height: 12),
        value.when(
          loading: () => const Padding(padding: EdgeInsets.all(8), child: LinearProgressIndicator()),
          error: (e, _) => Text(describeError(e), style: TextStyle(color: scheme.error)),
          data: (rows) => rows.isEmpty
              ? const Text('No allocations on record.')
              : Column(
                  children: [
                    for (final h in rows)
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text('Room ${h.room?.roomNumber ?? '—'} · Floor ${h.room?.floorNumber ?? '—'}'),
                        subtitle: Text([
                          h.session?.sessionName,
                          '${formatDate(h.allocatedAt)} → ${h.vacatedAt == null ? 'now' : formatDate(h.vacatedAt)}',
                          if (h.bedNumber != null) 'Bed ${h.bedNumber}',
                        ].whereType<String>().join(' · ')),
                        trailing: allocationBadge(h.status),
                      ),
                  ],
                ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
