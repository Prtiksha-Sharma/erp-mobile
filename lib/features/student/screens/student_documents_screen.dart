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

/// Port of MyDocumentsPage.jsx — read-only list of documents on the
/// student's record with their verification status.
class StudentDocumentsScreen extends ConsumerWidget {
  const StudentDocumentsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StudentPageScaffold(
      title: 'My Documents',
      body: AsyncValueView(
        value: ref.watch(myDocumentsProvider),
        loadingLabel: 'Loading your documents…',
        onRetry: () => ref.invalidate(myDocumentsProvider),
        data: (documents) => ResponsiveListView(
          onRefresh: () => ref.refresh(myDocumentsProvider.future),
          children: [
            const PageIntro('Documents uploaded to your student record and their verification status.'),
            if (documents.isEmpty)
              const DividedCard(children: [
                EmptyState(
                  icon: Icons.description_outlined,
                  title: 'No documents yet',
                  message: 'Documents uploaded by school staff will appear here.',
                ),
              ])
            else
              DividedCard(children: [for (final d in documents) DocumentRow(document: d)]),
          ],
        ),
      ),
    );
  }
}

String? _fileSize(num? bytes) {
  if (bytes == null || bytes == 0) return null;
  final kb = bytes / 1024;
  return kb < 1024 ? '${kb.toStringAsFixed(0)} KB' : '${(kb / 1024).toStringAsFixed(1)} MB';
}

/// Also used by the Home screen's "Recent Documents" card ([compact]).
class DocumentRow extends StatelessWidget {
  const DocumentRow({super.key, required this.document, this.compact = false});

  final StudentDocument document;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final meta = compact
        ? 'Uploaded ${formatDate(document.uploadedAt)}'
        : [
            [document.fileName, _fileSize(document.fileSize)].whereType<String>().join(' · ').ifEmpty('No file'),
            'Uploaded ${formatDate(document.uploadedAt)}',
          ].join(' · ');
    final status = document.verificationStatus ?? 'PENDING';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          if (!compact) ...[
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(color: scheme.primaryContainer, borderRadius: BorderRadius.circular(10)),
              child: Icon(Icons.task_outlined, size: 18, color: scheme.primary),
            ),
            const SizedBox(width: 12),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  document.documentName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 2),
                Text(meta, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: scheme.outline)),
                if (!compact && document.fileUrl != null)
                  ExternalLinkButton(label: 'View file', url: document.fileUrl!),
              ],
            ),
          ),
          const SizedBox(width: 8),
          StatusBadge(label: status, variant: documentStatusVariant(status)),
        ],
      ),
    );
  }
}

extension on String {
  String ifEmpty(String fallback) => isEmpty ? fallback : this;
}
