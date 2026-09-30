import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/teacher_academics.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/external_link_button.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/teacher_portal_providers.dart';
import '../services/teacher_portal_service.dart';
import 'teacher_page_scaffold.dart';

/// Web MySyllabusPage STATUS_OPTIONS (= backend STATUS_VALUES).
const _statusOptions = [
  (value: 'PENDING', label: 'Pending'),
  (value: 'IN_PROGRESS', label: 'In Progress'),
  (value: 'COMPLETED', label: 'Completed'),
];

/// Port of MySyllabusPage.jsx — syllabus entries for the subjects the
/// teacher teaches; the only action is moving Progress, which saves on
/// change like the web's inline select.
class TeacherSyllabusScreen extends ConsumerWidget {
  const TeacherSyllabusScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TeacherPageScaffold(
      title: 'My Syllabus',
      body: AsyncValueView(
        value: ref.watch(teacherSyllabusProvider),
        loadingLabel: 'Loading…',
        onRetry: () => ref.invalidate(teacherSyllabusProvider),
        data: (entries) => ResponsiveListView(
          onRefresh: () => ref.refresh(teacherSyllabusProvider.future),
          children: [
            if (entries.isEmpty)
              const EmptyCard(
                icon: Icons.menu_book_outlined,
                title: 'No syllabus entries found',
                message: 'Syllabus entries for subjects you teach will appear here.',
              )
            else
              DividedCard(children: [for (final e in entries) _SyllabusRow(key: ValueKey(e.syllabusId), entry: e)]),
          ],
        ),
      ),
    );
  }
}

class _SyllabusRow extends ConsumerStatefulWidget {
  const _SyllabusRow({super.key, required this.entry});

  final SyllabusEntry entry;

  @override
  ConsumerState<_SyllabusRow> createState() => _SyllabusRowState();
}

class _SyllabusRowState extends ConsumerState<_SyllabusRow> {
  bool _saving = false;

  Future<void> _update(String status) async {
    if (status == widget.entry.status) return;
    setState(() => _saving = true);
    final result = await TeacherPortalService().updateSyllabusProgress(widget.entry.syllabusId, status);
    if (!mounted) return;
    setState(() => _saving = false);
    if (result case Err(:final failure)) showSnack(context, failure.userMessage);
    ref.invalidate(teacherSyllabusProvider);
  }

  @override
  Widget build(BuildContext context) {
    final e = widget.entry;
    final status = e.status ?? 'PENDING';
    final options = [
      ..._statusOptions,
      if (!_statusOptions.any((o) => o.value == status)) (value: status, label: humanizeEnum(status)),
    ];
    final classLine = [
      e.classRef?.className ?? '—',
      e.sectionRef?.sectionName ?? 'All sections',
    ].join(' · ');

    final picker = DropdownButtonFormField<String>(
      key: ValueKey('${e.syllabusId}-$status'),
      initialValue: status,
      isDense: true,
      isExpanded: true,
      decoration: InputDecoration(
        labelText: 'Progress',
        border: const OutlineInputBorder(),
        isDense: true,
        suffixIcon: _saving
            ? const Padding(
                padding: EdgeInsets.all(12),
                child: SizedBox(width: 14, height: 14, child: CircularProgressIndicator(strokeWidth: 2)),
              )
            : null,
      ),
      items: [for (final o in options) DropdownMenuItem(value: o.value, child: Text(o.label))],
      onChanged: _saving ? null : (v) => v == null ? null : _update(v),
    );

    final details = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 4,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(e.title, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
            StatusBadge(label: e.subject?.subjectName ?? '—', variant: BadgeVariant.primary),
          ],
        ),
        const SizedBox(height: 4),
        Text(classLine, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
        if (e.attachmentUrl?.isNotEmpty ?? false) ExternalLinkButton(label: 'View syllabus', url: e.attachmentUrl!),
      ],
    );

    return Padding(
      padding: const EdgeInsets.all(16),
      child: LayoutBuilder(
        builder: (context, c) => c.maxWidth >= 560
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Expanded(child: details), const SizedBox(width: 16), SizedBox(width: 200, child: picker)],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [details, const SizedBox(height: 12), picker],
              ),
      ),
    );
  }
}
