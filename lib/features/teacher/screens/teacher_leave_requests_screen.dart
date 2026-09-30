import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/student_brief.dart';
import '../../../core/models/student_records.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/teacher_portal_providers.dart';
import '../services/teacher_portal_service.dart';
import 'teacher_page_scaffold.dart';

/// Port of TeacherLeaveApprovalPage.jsx (Class Teacher only). The list is
/// fetched once, unfiltered; Pending / Approved / Rejected / All tabs are
/// derived from it (with counts) so approving a request moves it to
/// another tab instead of re-fetching.
class TeacherLeaveRequestsScreen extends ConsumerWidget {
  const TeacherLeaveRequestsScreen({super.key});

  static const _tabs = [
    (id: 'PENDING', label: 'Pending'),
    (id: 'APPROVED', label: 'Approved'),
    (id: 'REJECTED', label: 'Rejected'),
    (id: 'ALL', label: 'All'),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!ref.watch(isClassTeacherProvider)) {
      return const TeacherPageScaffold(
        title: 'Leave Requests',
        body: ClassTeacherOnlyNotice(icon: Icons.event_busy_outlined, feature: 'Leave approval is'),
      );
    }
    final value = ref.watch(classLeavesProvider);
    final all = value.value ?? const <StudentLeave>[];
    int count(String id) => id == 'ALL' ? all.length : all.where((l) => l.status == id).length;

    return DefaultTabController(
      length: _tabs.length,
      child: TeacherPageScaffold(
        title: 'Leave Requests',
        bottom: TabBar(
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          tabs: [
            for (final t in _tabs) Tab(text: value.hasValue ? '${t.label} (${count(t.id)})' : t.label),
          ],
        ),
        body: AsyncValueView(
          value: value,
          loadingLabel: 'Loading…',
          onRetry: () => ref.invalidate(classLeavesProvider),
          data: (leaves) => TabBarView(
            children: [
              for (final t in _tabs)
                ResponsiveListView(
                  onRefresh: () => ref.refresh(classLeavesProvider.future),
                  children: [
                    Builder(builder: (context) {
                      final items = t.id == 'ALL' ? leaves : leaves.where((l) => l.status == t.id).toList();
                      if (items.isEmpty) {
                        return const EmptyCard(
                          icon: Icons.event_busy_outlined,
                          title: 'No leave requests',
                          message: 'Requests from your assigned class/section will appear here.',
                        );
                      }
                      return DividedCard(children: [for (final l in items) _LeaveRow(leave: l)]);
                    }),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LeaveRow extends ConsumerWidget {
  const _LeaveRow({required this.leave});

  final StudentLeave leave;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = leave.student?.displayName ?? '—';
    final meta = [
      leave.leaveType,
      '${formatDate(leave.fromDate)} – ${formatDate(leave.toDate)}',
      if (leave.totalDays != null) dayCount(leave.totalDays!),
    ].join(' · ');
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text.rich(
                  TextSpan(
                    text: name,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                    children: [
                      if (leave.student?.admissionNo != null)
                        TextSpan(
                          text: '  (${leave.student!.admissionNo})',
                          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.textMuted),
                        ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              StatusBadge(label: leave.status ?? 'PENDING', variant: leaveStatusVariant(leave.status)),
            ],
          ),
          const SizedBox(height: 4),
          Text(meta, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
          if (leave.reason?.isNotEmpty ?? false) ...[
            const SizedBox(height: 6),
            Text(leave.reason!),
          ],
          if (leave.remarks?.isNotEmpty ?? false) ...[
            const SizedBox(height: 4),
            Text('Reviewer remarks: ${leave.remarks}', style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
          ],
          if (leave.status == 'PENDING') ...[
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              children: [
                OutlinedButton.icon(
                  onPressed: () => _decide(context, ref, approve: true),
                  icon: const Icon(Icons.check, size: 18),
                  label: const Text('Approve'),
                ),
                OutlinedButton.icon(
                  onPressed: () => _decide(context, ref, approve: false),
                  icon: const Icon(Icons.close, size: 18),
                  label: const Text('Reject'),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Future<void> _decide(BuildContext context, WidgetRef ref, {required bool approve}) async {
    final done = await showTeacherFormSheet<bool>(
      context,
      (_) => _DecisionForm(leave: leave, approve: approve),
    );
    if (done == true) ref.invalidate(classLeavesProvider);
  }
}

/// The web's approve/reject modal — optional remarks.
class _DecisionForm extends StatefulWidget {
  const _DecisionForm({required this.leave, required this.approve});

  final StudentLeave leave;
  final bool approve;

  @override
  State<_DecisionForm> createState() => _DecisionFormState();
}

class _DecisionFormState extends State<_DecisionForm> {
  final _remarks = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _remarks.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    final result = await TeacherPortalService()
        .decideLeave(widget.leave.leaveId, approve: widget.approve, remarks: _remarks.text);
    if (!mounted) return;
    switch (result) {
      case Ok():
        Navigator.of(context).pop(true);
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failure.userMessage;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final verb = widget.approve ? 'Approve' : 'Reject';
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('$verb Leave Request', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 12),
        Text.rich(TextSpan(children: [
          TextSpan(text: '$verb the leave request from '),
          TextSpan(text: widget.leave.student?.displayName ?? '—', style: const TextStyle(fontWeight: FontWeight.w700)),
          const TextSpan(text: '?'),
        ])),
        const SizedBox(height: 16),
        TextField(
          controller: _remarks,
          maxLines: 3,
          decoration: const InputDecoration(labelText: 'Remarks (optional)', border: OutlineInputBorder()),
        ),
        if (_error != null) ...[
          const SizedBox(height: 12),
          Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
        ],
        const SizedBox(height: 20),
        SheetActions(busy: _busy, onSubmit: _submit, submitLabel: verb, danger: !widget.approve),
      ],
    );
  }
}
