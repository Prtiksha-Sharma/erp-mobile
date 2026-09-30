import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/student_records.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/external_link_button.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/student_portal_providers.dart';
import 'student_page_scaffold.dart';

/// Port of MyDisciplinePage.jsx — read-only incident records.
class StudentDisciplineScreen extends ConsumerWidget {
  const StudentDisciplineScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StudentPageScaffold(
      title: 'Discipline Records',
      body: AsyncValueView(
        value: ref.watch(myDisciplineProvider),
        loadingLabel: 'Loading your records…',
        onRetry: () => ref.invalidate(myDisciplineProvider),
        data: (records) => ResponsiveListView(
          onRefresh: () => ref.refresh(myDisciplineProvider.future),
          children: [
            const PageIntro('Incident records on file with your School Admin.'),
            if (records.isEmpty)
              const DividedCard(children: [
                EmptyState(
                  icon: Icons.gpp_maybe_outlined,
                  title: 'No discipline records',
                  message: "Nothing on file — that's a good thing.",
                ),
              ])
            else
              DividedCard(children: [for (final r in records) _DisciplineRow(record: r)]),
          ],
        ),
      ),
    );
  }
}

class _DisciplineRow extends StatelessWidget {
  const _DisciplineRow({required this.record});

  final DisciplineRecord record;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final muted = theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.outline);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(record.incidentType, style: const TextStyle(fontWeight: FontWeight.w600)),
                    if (record.severity != null)
                      StatusBadge(label: record.severity!, variant: severityVariant(record.severity)),
                  ],
                ),
                const SizedBox(height: 4),
                Text(formatDate(record.incidentDate), style: muted),
                if (record.description?.isNotEmpty ?? false) ...[
                  const SizedBox(height: 4),
                  Text(record.description!),
                ],
                if (record.actionTaken?.isNotEmpty ?? false) ...[
                  const SizedBox(height: 4),
                  Text('Action taken: ${record.actionTaken}', style: muted),
                ],
                if (record.remarks?.isNotEmpty ?? false) ...[
                  const SizedBox(height: 4),
                  Text(record.remarks!, style: muted?.copyWith(fontStyle: FontStyle.italic)),
                ],
                if (record.attachmentUrl != null)
                  ExternalLinkButton(label: 'View attachment', url: record.attachmentUrl!),
                // Under the details rather than beside the badge (web) so a
                // narrow phone never squeezes the incident text column.
                if (record.status == 'RESOLVED' && record.resolvedAt != null) ...[
                  const SizedBox(height: 4),
                  Text('Resolved ${formatDate(record.resolvedAt)}', style: muted),
                ],
              ],
            ),
          ),
          const SizedBox(width: 8),
          if (record.status != null)
            StatusBadge(label: record.status!, variant: disciplineStatusVariant(record.status)),
        ],
      ),
    );
  }
}
