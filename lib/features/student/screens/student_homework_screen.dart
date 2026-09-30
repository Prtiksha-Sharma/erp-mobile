import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/homework_submission.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/external_link_button.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/student_portal_providers.dart';
import '../services/student_portal_service.dart';
import 'student_page_scaffold.dart';
import 'student_submit_work_sheet.dart';

/// Port of MyHomeworkPage.jsx — Homework / Assignments tabs sharing one
/// list+submit body (same `academic_homework` shape, different route).
class StudentHomeworkScreen extends StatelessWidget {
  const StudentHomeworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: StudentPageScaffold(
        title: 'Homework & Assignments',
        bottom: TabBar(tabs: [Tab(text: 'Homework'), Tab(text: 'Assignments')]),
        body: TabBarView(
          children: [
            _WorkList(
              kind: WorkKind.homework,
              emptyIcon: Icons.bookmark_border,
              emptyTitle: 'No homework found',
              emptyMessage: 'Homework from your teachers will appear here.',
            ),
            _WorkList(
              kind: WorkKind.assignment,
              emptyIcon: Icons.assignment_outlined,
              emptyTitle: 'No assignments found',
              emptyMessage: 'Assignments from your teachers will appear here.',
            ),
          ],
        ),
      ),
    );
  }
}

/// Web STATUS_OPTIONS — filters on the server-computed effective_status.
const _statusFilters = <String?, String>{null: 'All', 'PENDING': 'Pending', 'SUBMITTED': 'Submitted', 'MISSING': 'Missing'};

class _WorkList extends ConsumerStatefulWidget {
  const _WorkList({
    required this.kind,
    required this.emptyIcon,
    required this.emptyTitle,
    required this.emptyMessage,
  });

  final WorkKind kind;
  final IconData emptyIcon;
  final String emptyTitle;
  final String emptyMessage;

  @override
  ConsumerState<_WorkList> createState() => _WorkListState();
}

class _WorkListState extends ConsumerState<_WorkList> with AutomaticKeepAliveClientMixin {
  String? _status;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final provider = myWorkProvider((kind: widget.kind, status: _status));

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
          child: ResponsiveCenter(
            child: SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (final e in _statusFilters.entries)
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ChoiceChip(
                        label: Text(e.value),
                        selected: _status == e.key,
                        onSelected: (_) => setState(() => _status = e.key),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: AsyncValueView(
            value: ref.watch(provider),
            loadingLabel: 'Loading…',
            onRetry: () => ref.invalidate(provider),
            data: (items) => ResponsiveListView(
              onRefresh: () => ref.refresh(provider.future),
              children: [
                if (items.isEmpty)
                  DividedCard(children: [
                    EmptyState(icon: widget.emptyIcon, title: widget.emptyTitle, message: widget.emptyMessage),
                  ])
                else
                  DividedCard(children: [for (final item in items) _WorkRow(item: item, kind: widget.kind)]),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _WorkRow extends StatelessWidget {
  const _WorkRow({required this.item, required this.kind});

  final HomeworkSubmission item;
  final WorkKind kind;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final muted = theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.outline);
    final hw = item.homework;
    // effective_status is what the web badges; `status` decides Submit vs
    // "Submitted <date>" (a MISSING item can still be submitted late).
    final effective = item.effectiveStatus.name.toUpperCase();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(hw.title, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
                    StatusBadge(label: hw.subject.subjectName, variant: BadgeVariant.primary),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              StatusBadge(label: effective, variant: workStatusVariant(effective)),
            ],
          ),
          if (hw.description?.isNotEmpty ?? false) ...[
            const SizedBox(height: 6),
            Text(hw.description!, style: theme.textTheme.bodyMedium),
          ],
          const SizedBox(height: 6),
          Text('Due ${formatDate(hw.dueDate)} · ${hw.assignedBy.username}', style: muted),
          if (hw.attachmentUrl != null) ExternalLinkButton(label: 'View material', url: hw.attachmentUrl!),
          if (item.remark?.isNotEmpty ?? false) ...[
            const SizedBox(height: 4),
            Text('Teacher remark: ${item.remark}', style: muted?.copyWith(fontStyle: FontStyle.italic)),
          ],
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerRight,
            child: item.status == HomeworkStatus.submitted
                ? Text('Submitted ${formatDate(item.submittedAt)}', style: muted)
                : OutlinedButton.icon(
                    onPressed: () => showSubmitWorkSheet(context, kind: kind, item: item),
                    icon: const Icon(Icons.upload_outlined, size: 18),
                    label: const Text('Submit'),
                  ),
          ),
        ],
      ),
    );
  }
}
