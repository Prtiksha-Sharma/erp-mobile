import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/leave_record.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/children_provider.dart' show activeChildProvider;
import '../providers/leaves_provider.dart';

class ParentLeavesScreen extends ConsumerWidget {
  const ParentLeavesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeChild = ref.watch(activeChildProvider);

    if (activeChild == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Leaves')),
        body: const Center(child: Text('Select a child from Home first.')),
      );
    }

    final leavesAsync = ref.watch(leavesProvider(activeChild.studentId));

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      appBar: AppBar(title: const Text('Leaves')),
      body: leavesAsync.when(
        data: (leaves) => _LeavesList(leaves: leaves),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => ErrorView(
          message: describeError(err),
          onRetry: () => ref.invalidate(leavesProvider(activeChild.studentId)),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.go('/parent/more/leaves/apply'),
        icon: const Icon(Icons.add),
        label: const Text('Apply for Leave'),
      ),
    );
  }
}

class _LeavesList extends StatelessWidget {
  const _LeavesList({required this.leaves});

  final List<LeaveRecord> leaves;

  @override
  Widget build(BuildContext context) {
    if (leaves.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.beach_access_outlined, size: 48, color: Theme.of(context).colorScheme.outline),
            const SizedBox(height: 12),
            const Text('No leave applications yet.'),
          ],
        ),
      );
    }

    final dateFormat = DateFormat('d MMM yyyy');
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 88), // clears the FAB
      itemCount: leaves.length,
      separatorBuilder: (_, _) => const SizedBox(height: 10),
      itemBuilder: (context, i) {
        final leave = leaves[i];
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
            border: Border(left: BorderSide(color: leave.status.color, width: 4)),
            boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 6, offset: const Offset(0, 2))],
          ),
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(leave.leaveType, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: leave.status.color.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(leave.status.label,
                        style: TextStyle(color: leave.status.color, fontSize: 11, fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Text(
                '${dateFormat.format(leave.fromDate)} – ${dateFormat.format(leave.toDate)} '
                '(${leave.totalDays} day${leave.totalDays == 1 ? '' : 's'})',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              if (leave.reason != null && leave.reason!.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(leave.reason!),
              ],
              if (leave.remarks != null && leave.remarks!.isNotEmpty) ...[
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text('Remarks: ${leave.remarks}', style: const TextStyle(fontStyle: FontStyle.italic)),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
