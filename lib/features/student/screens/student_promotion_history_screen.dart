import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/academic_refs.dart';
import '../../../core/models/student_records.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/student_portal_providers.dart';
import 'student_page_scaffold.dart';

/// Port of MyPromotionHistoryPage.jsx — read-only; School Admin promotes.
class StudentPromotionHistoryScreen extends ConsumerWidget {
  const StudentPromotionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StudentPageScaffold(
      title: 'Promotion History',
      body: AsyncValueView(
        value: ref.watch(myPromotionHistoryProvider),
        loadingLabel: 'Loading your promotion history…',
        onRetry: () => ref.invalidate(myPromotionHistoryProvider),
        data: (records) => ResponsiveListView(
          onRefresh: () => ref.refresh(myPromotionHistoryProvider.future),
          children: [
            const PageIntro('Your class promotions across academic sessions.'),
            if (records.isEmpty)
              const DividedCard(children: [
                EmptyState(
                  icon: Icons.trending_up,
                  title: 'No promotion history yet',
                  message: 'Your class promotions will appear here once your School Admin promotes you to a new session.',
                ),
              ])
            else
              DividedCard(children: [for (final r in records) _PromotionRow(record: r)]),
          ],
        ),
      ),
    );
  }
}

class _PromotionRow extends StatelessWidget {
  const _PromotionRow({required this.record});

  final PromotionRecord record;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final muted = theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.outline);
    final meta = [
      '${record.fromSession?.sessionName ?? '—'} → ${record.toSession?.sessionName ?? '—'}',
      formatDate(record.promotedAt),
      if (record.promotedBy?.username != null) 'by ${record.promotedBy!.username}',
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
                Wrap(
                  spacing: 6,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(classSectionLabel(record.fromClass?.className, record.fromSection?.sectionName),
                        style: const TextStyle(fontWeight: FontWeight.w600)),
                    Icon(Icons.arrow_forward, size: 14, color: theme.colorScheme.outline),
                    Text(classSectionLabel(record.toClass?.className, record.toSection?.sectionName),
                        style: const TextStyle(fontWeight: FontWeight.w600)),
                  ],
                ),
                const SizedBox(height: 4),
                Text(meta, style: muted),
                if (record.remarks?.isNotEmpty ?? false) ...[
                  const SizedBox(height: 4),
                  Text(record.remarks!, style: muted?.copyWith(fontStyle: FontStyle.italic)),
                ],
              ],
            ),
          ),
          const SizedBox(width: 8),
          if (record.promotionStatus != null)
            StatusBadge(label: record.promotionStatus!, variant: promotionStatusVariant(record.promotionStatus)),
        ],
      ),
    );
  }
}
