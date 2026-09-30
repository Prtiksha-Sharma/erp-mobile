import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/staff_self_service.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/teacher_portal_providers.dart';
import '../services/teacher_portal_service.dart';
import 'teacher_page_scaffold.dart';

/// Web MyLeavesPage LEAVE_TYPES — a suggestion list, not an enforced
/// vocabulary (staff_leaves.leave_type has no DB enum).
const _leaveTypes = ['Sick Leave', 'Casual Leave', 'Earned Leave', 'Emergency Leave', 'Other'];

/// Port of MyLeavesPage.jsx — an always-visible Apply for Leave form above
/// the Leave History list; PENDING requests can be cancelled.
class TeacherMyLeavesScreen extends ConsumerWidget {
  const TeacherMyLeavesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(teacherMyLeavesProvider);
    return TeacherPageScaffold(
      title: 'My Leaves',
      body: ResponsiveListView(
        onRefresh: () => ref.refresh(teacherMyLeavesProvider.future),
        children: [
          const _ApplyLeaveCard(),
          const SizedBox(height: 20),
          const SectionLabel('Leave History'),
          value.when(
            skipLoadingOnRefresh: true,
            loading: () => const LoadingView(label: 'Loading…'),
            error: (err, _) => Column(
              children: [
                Text(describeError(err), textAlign: TextAlign.center),
                TextButton(onPressed: () => ref.invalidate(teacherMyLeavesProvider), child: const Text('Retry')),
              ],
            ),
            data: (leaves) => leaves.isEmpty
                ? const EmptyCard(
                    icon: Icons.event_busy_outlined,
                    title: 'No leave requests yet',
                    message: 'Requests you submit will appear here.',
                  )
                : DividedCard(children: [for (final l in leaves) _LeaveRow(leave: l)]),
          ),
        ],
      ),
    );
  }
}

class _ApplyLeaveCard extends ConsumerStatefulWidget {
  const _ApplyLeaveCard();

  @override
  ConsumerState<_ApplyLeaveCard> createState() => _ApplyLeaveCardState();
}

class _ApplyLeaveCardState extends ConsumerState<_ApplyLeaveCard> {
  String? _type;
  DateTime? _from;
  DateTime? _to;
  final _reason = TextEditingController();
  String? _error;
  bool _submitting = false;

  @override
  void dispose() {
    _reason.dispose();
    super.dispose();
  }

  /// Same messages as the web's useApplyLeaveForm#validate.
  String? _validate() {
    if (_type == null || _from == null || _to == null) return 'Leave type, from date, and to date are required.';
    if (_to!.isBefore(_from!)) return 'To date cannot be before from date.';
    return null;
  }

  Future<void> _submit() async {
    final invalid = _validate();
    if (invalid != null) {
      setState(() => _error = invalid);
      return;
    }
    setState(() {
      _submitting = true;
      _error = null;
    });
    final result = await TeacherPortalService().applyMyLeave(
      leaveType: _type!,
      fromDate: _from!,
      toDate: _to!,
      reason: _reason.text,
    );
    if (!mounted) return;
    switch (result) {
      case Ok():
        ref.invalidate(teacherMyLeavesProvider);
        _reason.clear();
        setState(() {
          _submitting = false;
          _type = null;
          _from = null;
          _to = null;
        });
        showSnack(context, 'Leave request submitted.');
      case Err(:final failure):
        setState(() {
          _submitting = false;
          _error = failure.userMessage;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final typeField = DropdownButtonFormField<String>(
      key: ValueKey('type-$_type'),
      initialValue: _type,
      isExpanded: true,
      decoration: const InputDecoration(labelText: 'Leave Type *', border: OutlineInputBorder()),
      items: [for (final t in _leaveTypes) DropdownMenuItem(value: t, child: Text(t))],
      onChanged: (v) => setState(() => _type = v),
    );
    final fromField = DateField(label: 'From Date *', value: _from, onPicked: (d) => setState(() => _from = d));
    final toField = DateField(label: 'To Date *', value: _to, onPicked: (d) => setState(() => _to = d));

    return SectionCard(
      title: 'Apply for Leave',
      icon: Icons.event_busy_outlined,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LayoutBuilder(
            builder: (context, c) => c.maxWidth >= 600
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: typeField),
                      const SizedBox(width: 12),
                      Expanded(child: fromField),
                      const SizedBox(width: 12),
                      Expanded(child: toField),
                    ],
                  )
                : Column(
                    children: [
                      typeField,
                      const SizedBox(height: 12),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Expanded(child: fromField), const SizedBox(width: 12), Expanded(child: toField)],
                      ),
                    ],
                  ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _reason,
            maxLines: 3,
            decoration: const InputDecoration(
              labelText: 'Reason (optional)',
              hintText: 'Briefly describe the reason for your leave',
              border: OutlineInputBorder(),
            ),
          ),
          if (_error != null) ...[
            const SizedBox(height: 12),
            Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          ],
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.centerLeft,
            child: FilledButton(
              onPressed: _submitting ? null : _submit,
              child: _submitting
                  ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
                  : const Text('Submit Request'),
            ),
          ),
        ],
      ),
    );
  }
}

class _LeaveRow extends ConsumerWidget {
  const _LeaveRow({required this.leave});

  final StaffLeave leave;

  Future<void> _cancel(BuildContext context, WidgetRef ref) async {
    final ok = await showConfirmDialog(
      context,
      title: 'Cancel Leave Request',
      message: 'Cancel your ${leave.leaveType} request?',
      confirmLabel: 'Cancel Request',
      dangerous: true,
      action: () async => switch (await TeacherPortalService().cancelMyLeave(leave.leaveId)) {
        Ok() => null,
        Err(:final failure) => failure.userMessage,
      },
    );
    if (ok) ref.invalidate(teacherMyLeavesProvider);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dates = [
      '${formatDate(leave.fromDate)} – ${formatDate(leave.toDate)}',
      if (leave.totalDays != null) dayCount(leave.totalDays!),
    ].join(' · ');
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(leave.leaveType, style: const TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(height: 2),
                Text(dates, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                if (leave.reason?.isNotEmpty ?? false) ...[
                  const SizedBox(height: 6),
                  Text(leave.reason!, style: const TextStyle(color: AppColors.textSecondary)),
                ],
              ],
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              StatusBadge(label: leave.status ?? 'PENDING', variant: leaveStatusVariant(leave.status)),
              if (leave.status == 'PENDING')
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: AppColors.danger, visualDensity: VisualDensity.compact),
                  onPressed: () => _cancel(context, ref),
                  child: const Text('Cancel'),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
