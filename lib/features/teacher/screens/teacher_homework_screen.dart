import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/student_brief.dart';
import '../../../core/models/teacher_academics.dart';
import '../../../core/models/teacher_homework.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/external_link_button.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/teacher_portal_providers.dart';
import '../services/teacher_portal_service.dart';
import 'teacher_page_scaffold.dart';

/// Port of MyHomeworkPage.jsx — Homework / Assignments tabs sharing one
/// list body. Each row opens the submissions + comments view; edit and
/// delete sit in the row's menu; "Assign …" opens the form sheet.
class TeacherHomeworkScreen extends StatelessWidget {
  const TeacherHomeworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: TeacherPageScaffold(
        title: 'Homework & Assignments',
        bottom: TabBar(tabs: [Tab(text: 'Homework'), Tab(text: 'Assignments')]),
        body: TabBarView(children: [_WorkPanel(kind: WorkType.homework), _WorkPanel(kind: WorkType.assignment)]),
      ),
    );
  }
}

class _WorkPanel extends ConsumerStatefulWidget {
  const _WorkPanel({required this.kind});

  final WorkType kind;

  @override
  ConsumerState<_WorkPanel> createState() => _WorkPanelState();
}

class _WorkPanelState extends ConsumerState<_WorkPanel> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final kind = widget.kind;
    final provider = teacherWorkProvider(kind);
    final label = kind.label;
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton.extended(
        heroTag: 'assign-${kind.path}',
        onPressed: () => showWorkFormSheet(context, kind: kind),
        icon: const Icon(Icons.add),
        label: Text('Assign $label'),
      ),
      body: AsyncValueView(
        value: ref.watch(provider),
        loadingLabel: 'Loading…',
        onRetry: () => ref.invalidate(provider),
        data: (items) => ResponsiveListView(
          onRefresh: () => ref.refresh(provider.future),
          padding: EdgeInsets.fromLTRB(context.isTabletWidth ? 24 : 16, 16, context.isTabletWidth ? 24 : 16, 96),
          children: [
            if (items.isEmpty)
              EmptyCard(
                icon: kind == WorkType.homework ? Icons.bookmark_border : Icons.assignment_outlined,
                title: 'No ${label.toLowerCase()} yet',
                message: 'Tap "Assign $label" to create your first one.',
              )
            else
              DividedCard(children: [for (final item in items) _WorkRow(item: item, kind: kind)]),
          ],
        ),
      ),
    );
  }
}

class _WorkRow extends ConsumerWidget {
  const _WorkRow({required this.item, required this.kind});

  final TeacherHomework item;
  final WorkType kind;

  Future<void> _delete(BuildContext context, WidgetRef ref) async {
    final ok = await showConfirmDialog(
      context,
      title: 'Delete ${kind.label}',
      message: 'Delete "${item.title}"?',
      confirmLabel: 'Delete',
      dangerous: true,
      action: () async => switch (await TeacherPortalService().deleteWork(kind, item.homeworkId)) {
        Ok() => null,
        Err(:final failure) => failure.userMessage,
      },
    );
    if (ok) {
      ref
        ..invalidate(teacherWorkProvider(kind))
        ..invalidate(teacherDashboardWorkProvider);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final classLine = [
      [item.classRef?.className, item.sectionRef?.sectionName].whereType<String>().join(' '),
      item.subject?.subjectName,
    ].whereType<String>().where((s) => s.isNotEmpty).join(' · ');
    return InkWell(
      onTap: () => context.go('/teacher/classroom/homework/${kind.path}/${item.homeworkId}', extra: item),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 4, 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.title, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
                  const SizedBox(height: 4),
                  Text(classLine, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                  const SizedBox(height: 6),
                  Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: [
                      StatusBadge(label: 'Due ${formatDate(item.dueDate)}', variant: BadgeVariant.primary),
                      StatusBadge(label: '${item.submissions.length} students'),
                    ],
                  ),
                ],
              ),
            ),
            PopupMenuButton<String>(
              tooltip: 'Actions',
              onSelected: (v) => switch (v) {
                'view' => context.go('/teacher/classroom/homework/${kind.path}/${item.homeworkId}', extra: item),
                'edit' => showWorkFormSheet(context, kind: kind, existing: item),
                _ => _delete(context, ref),
              },
              itemBuilder: (_) => const [
                PopupMenuItem(value: 'view', child: ListTile(leading: Icon(Icons.visibility_outlined), title: Text('View submissions'))),
                PopupMenuItem(value: 'edit', child: ListTile(leading: Icon(Icons.edit_outlined), title: Text('Edit'))),
                PopupMenuItem(
                  value: 'delete',
                  child: ListTile(leading: Icon(Icons.delete_outline, color: AppColors.danger), title: Text('Delete')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ── Assign / edit form (HomeworkFormModal + useHomeworkForm) ────────────────

Future<void> showWorkFormSheet(BuildContext context, {required WorkType kind, TeacherHomework? existing}) async {
  final saved = await showTeacherFormSheet<bool>(context, (_) => _WorkForm(kind: kind, existing: existing));
  if (saved == true && context.mounted) {
    showSnack(context, existing == null ? '${kind.label} assigned.' : '${kind.label} updated.');
  }
}

class _WorkForm extends ConsumerStatefulWidget {
  const _WorkForm({required this.kind, this.existing});

  final WorkType kind;
  final TeacherHomework? existing;

  @override
  ConsumerState<_WorkForm> createState() => _WorkFormState();
}

class _WorkFormState extends ConsumerState<_WorkForm> {
  late final _title = TextEditingController(text: widget.existing?.title ?? '');
  late final _description = TextEditingController(text: widget.existing?.description ?? '');
  late final _attachment = TextEditingController(text: widget.existing?.attachmentUrl ?? '');
  String? _classId;
  String? _sectionId;
  String? _subjectId;
  DateTime? _assignedDate;
  late DateTime? _dueDate = widget.existing?.dueDate == null ? null : calendarDay(widget.existing!.dueDate!);
  Map<String, String> _errors = {};
  String? _saveError;
  bool _saving = false;

  bool get _editing => widget.existing != null;

  @override
  void dispose() {
    _title.dispose();
    _description.dispose();
    _attachment.dispose();
    super.dispose();
  }

  bool _validate() {
    final e = <String, String>{};
    if (!_editing) {
      if (_classId == null) e['class'] = 'Class is required';
      if (_sectionId == null) e['section'] = 'Section is required';
      if (_subjectId == null) e['subject'] = 'Subject is required';
    }
    if (_title.text.trim().isEmpty) e['title'] = 'Title is required';
    if (_dueDate == null) e['due'] = 'Due date is required';
    setState(() => _errors = e);
    return e.isEmpty;
  }

  Future<void> _save(List<SubjectAssignment> assignments) async {
    if (!_validate()) return;
    setState(() {
      _saving = true;
      _saveError = null;
    });
    final service = TeacherPortalService();
    final Result<void> result;
    if (_editing) {
      result = await service.updateWork(
        widget.kind,
        widget.existing!.homeworkId,
        title: _title.text,
        dueDate: _dueDate!,
        description: _description.text,
        attachmentUrl: _attachment.text,
      );
    } else {
      final sessionId = assignments.firstWhere((a) => a.classId == _classId).sessionId;
      result = await service.createWork(
        widget.kind,
        classId: _classId!,
        sectionId: _sectionId!,
        subjectId: _subjectId!,
        sessionId: sessionId,
        title: _title.text,
        dueDate: _dueDate!,
        assignedDate: _assignedDate,
        description: _description.text,
        attachmentUrl: _attachment.text,
      );
    }
    if (!mounted) return;
    switch (result) {
      case Ok():
        ref
          ..invalidate(teacherWorkProvider(widget.kind))
          ..invalidate(teacherDashboardWorkProvider);
        Navigator.of(context).pop(true);
      case Err(:final failure):
        setState(() {
          _saving = false;
          _saveError = failure.userMessage;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final label = widget.kind.label;
    final assignments = ref.watch(teacherSubjectsProvider).value ?? const <SubjectAssignment>[];
    final options = deriveAssignmentOptions(assignments, _classId);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(_editing ? 'Edit $label' : 'Assign $label', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 16),
        if (!_editing) ...[
          AssignmentPicker(
            label: 'Class *',
            hint: 'Select a class',
            value: _classId,
            options: options.classes,
            error: _errors['class'],
            onChanged: (v) => setState(() {
              _classId = v;
              _sectionId = null;
              _subjectId = null;
              _errors = {..._errors}..remove('class');
            }),
          ),
          const SizedBox(height: 12),
          AssignmentPicker(
            label: 'Section *',
            hint: 'Select a section',
            value: _sectionId,
            options: options.sections,
            enabled: _classId != null,
            error: _errors['section'],
            onChanged: (v) => setState(() {
              _sectionId = v;
              _errors = {..._errors}..remove('section');
            }),
          ),
          const SizedBox(height: 12),
          AssignmentPicker(
            label: 'Subject *',
            hint: 'Select a subject',
            value: _subjectId,
            options: options.subjects,
            enabled: _classId != null,
            error: _errors['subject'],
            onChanged: (v) => setState(() {
              _subjectId = v;
              _errors = {..._errors}..remove('subject');
            }),
          ),
          const SizedBox(height: 12),
        ],
        TextField(
          controller: _title,
          onChanged: (_) {
            if (_errors.containsKey('title')) setState(() => _errors = {..._errors}..remove('title'));
          },
          decoration: InputDecoration(
            labelText: 'Title *',
            hintText: 'e.g. Chapter 4 exercises',
            border: const OutlineInputBorder(),
            errorText: _errors['title'],
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _description,
          maxLines: 2,
          decoration: const InputDecoration(
            labelText: 'Description',
            hintText: 'Instructions for students',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 12),
        LayoutBuilder(builder: (context, c) {
          final due = DateField(
            label: 'Due Date *',
            value: _dueDate,
            errorText: _errors['due'],
            onPicked: (d) => setState(() {
              _dueDate = d;
              _errors = {..._errors}..remove('due');
            }),
          );
          if (_editing) return due;
          final assigned = DateField(
            label: 'Assigned Date',
            value: _assignedDate,
            onPicked: (d) => setState(() => _assignedDate = d),
            onClear: () => setState(() => _assignedDate = null),
          );
          return c.maxWidth >= 400
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Expanded(child: assigned), const SizedBox(width: 12), Expanded(child: due)],
                )
              : Column(children: [assigned, const SizedBox(height: 12), due]);
        }),
        const SizedBox(height: 12),
        TextField(
          controller: _attachment,
          keyboardType: TextInputType.url,
          decoration: const InputDecoration(labelText: 'Attachment URL', hintText: 'https://…', border: OutlineInputBorder()),
        ),
        if (_saveError != null) ...[
          const SizedBox(height: 12),
          Text(_saveError!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
        ],
        const SizedBox(height: 20),
        SheetActions(busy: _saving, onSubmit: () => _save(assignments), submitLabel: _editing ? 'Save' : 'Assign'),
      ],
    );
  }
}

/// Dropdown over [AssignmentOption]s; shared by the homework and lesson
/// plan forms.
class AssignmentPicker extends StatelessWidget {
  const AssignmentPicker({
    super.key,
    required this.label,
    required this.hint,
    required this.value,
    required this.options,
    required this.onChanged,
    this.enabled = true,
    this.error,
  });

  final String label;
  final String hint;
  final String? value;
  final List<AssignmentOption> options;
  final ValueChanged<String?> onChanged;
  final bool enabled;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      key: ValueKey('$label-${options.length}-$value'),
      initialValue: options.any((o) => o.id == value) ? value : null,
      isExpanded: true,
      hint: Text(hint),
      decoration: InputDecoration(labelText: label, border: const OutlineInputBorder(), errorText: error),
      items: [for (final o in options) DropdownMenuItem(value: o.id, child: Text(o.label, overflow: TextOverflow.ellipsis))],
      onChanged: enabled ? onChanged : null,
    );
  }
}

// ── Detail: submissions + comments (HomeworkDetailModal) ────────────────────

/// Port of HomeworkDetailModal.jsx as a full screen — Submissions tab
/// (status, submitted date, editable remark that saves when the field
/// loses focus) and an append-only Comments thread.
class TeacherWorkDetailScreen extends StatelessWidget {
  const TeacherWorkDetailScreen({super.key, required this.kind, required this.homeworkId, this.homework});

  final WorkType kind;
  final String homeworkId;

  /// Passed from the list for the title; null on a cold deep link.
  final TeacherHomework? homework;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: TeacherPageScaffold(
        title: homework?.title ?? 'Details',
        bottom: const TabBar(tabs: [Tab(text: 'Submissions'), Tab(text: 'Comments')]),
        body: TabBarView(
          children: [
            _SubmissionsTab(kind: kind, homeworkId: homeworkId, homework: homework),
            _CommentsTab(kind: kind, homeworkId: homeworkId),
          ],
        ),
      ),
    );
  }
}

class _SubmissionsTab extends ConsumerWidget {
  const _SubmissionsTab({required this.kind, required this.homeworkId, this.homework});

  final WorkType kind;
  final String homeworkId;
  final TeacherHomework? homework;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = teacherSubmissionsProvider((kind: kind, homeworkId: homeworkId));
    final hw = homework;
    return AsyncValueView(
      value: ref.watch(provider),
      loadingLabel: 'Loading submissions…',
      onRetry: () => ref.invalidate(provider),
      data: (subs) => ResponsiveListView(
        onRefresh: () => ref.refresh(provider.future),
        children: [
          if (hw != null) ...[
            if (hw.description?.isNotEmpty ?? false) Text(hw.description!),
            const SizedBox(height: 4),
            Text(
              [
                if (hw.assignedDate != null) 'Assigned ${formatDate(hw.assignedDate)}',
                'Due ${formatDate(hw.dueDate)}',
              ].join(' · '),
              style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
            ),
            if (hw.attachmentUrl?.isNotEmpty ?? false) ExternalLinkButton(label: 'View material', url: hw.attachmentUrl!),
            const SizedBox(height: 12),
          ],
          if (subs.isEmpty)
            const EmptyCard(icon: Icons.inbox_outlined, title: 'No submissions yet')
          else
            DividedCard(
              children: [
                for (final s in subs) _SubmissionRow(key: ValueKey(s.submissionId), sub: s, kind: kind, homeworkId: homeworkId),
              ],
            ),
        ],
      ),
    );
  }
}

class _SubmissionRow extends ConsumerStatefulWidget {
  const _SubmissionRow({super.key, required this.sub, required this.kind, required this.homeworkId});

  final TeacherSubmission sub;
  final WorkType kind;
  final String homeworkId;

  @override
  ConsumerState<_SubmissionRow> createState() => _SubmissionRowState();
}

class _SubmissionRowState extends ConsumerState<_SubmissionRow> {
  late final _remark = TextEditingController(text: widget.sub.remark ?? '');
  final _focus = FocusNode();
  bool _saving = false;

  @override
  void initState() {
    super.initState();
    _focus.addListener(() {
      if (!_focus.hasFocus) _commit();
    });
  }

  @override
  void didUpdateWidget(covariant _SubmissionRow old) {
    super.didUpdateWidget(old);
    if (!_focus.hasFocus) _remark.text = widget.sub.remark ?? '';
  }

  @override
  void dispose() {
    _remark.dispose();
    _focus.dispose();
    super.dispose();
  }

  Future<void> _commit() async {
    final value = _remark.text;
    if (value == (widget.sub.remark ?? '')) return;
    setState(() => _saving = true);
    final result = await TeacherPortalService().addRemark(widget.kind, widget.homeworkId, widget.sub.submissionId, value);
    if (!mounted) return;
    setState(() => _saving = false);
    if (result case Err(:final failure)) showSnack(context, failure.userMessage);
    ref.invalidate(teacherSubmissionsProvider((kind: widget.kind, homeworkId: widget.homeworkId)));
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.sub;
    final status = s.effectiveStatus ?? s.status;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(s.student?.displayName ?? '—', style: const TextStyle(fontWeight: FontWeight.w600)),
              ),
              StatusBadge(label: status ?? '—', variant: submissionStatusVariant(status)),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            s.submittedAt == null ? 'Not submitted' : 'Submitted ${formatDate(s.submittedAt)}',
            style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
          ),
          if (s.attachmentUrl?.isNotEmpty ?? false) ExternalLinkButton(label: 'View submission', url: s.attachmentUrl!),
          const SizedBox(height: 8),
          TextField(
            controller: _remark,
            focusNode: _focus,
            enabled: !_saving,
            textInputAction: TextInputAction.done,
            onSubmitted: (_) => _focus.unfocus(),
            decoration: InputDecoration(
              hintText: 'Add a remark…',
              isDense: true,
              border: const OutlineInputBorder(),
              suffixIcon: _saving
                  ? const Padding(
                      padding: EdgeInsets.all(12),
                      child: SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2)),
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}

class _CommentsTab extends ConsumerStatefulWidget {
  const _CommentsTab({required this.kind, required this.homeworkId});

  final WorkType kind;
  final String homeworkId;

  @override
  ConsumerState<_CommentsTab> createState() => _CommentsTabState();
}

class _CommentsTabState extends ConsumerState<_CommentsTab> {
  final _text = TextEditingController();
  bool _posting = false;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  Future<void> _post() async {
    final text = _text.text.trim();
    if (text.isEmpty) return;
    setState(() => _posting = true);
    final result = await TeacherPortalService().addComment(widget.kind, widget.homeworkId, text);
    if (!mounted) return;
    setState(() => _posting = false);
    switch (result) {
      case Ok():
        _text.clear();
        ref.invalidate(teacherCommentsProvider((kind: widget.kind, homeworkId: widget.homeworkId)));
      case Err(:final failure):
        showSnack(context, failure.userMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = teacherCommentsProvider((kind: widget.kind, homeworkId: widget.homeworkId));
    return Column(
      children: [
        Expanded(
          child: AsyncValueView(
            value: ref.watch(provider),
            loadingLabel: 'Loading comments…',
            onRetry: () => ref.invalidate(provider),
            data: (comments) => ResponsiveListView(
              onRefresh: () => ref.refresh(provider.future),
              children: [
                if (comments.isEmpty)
                  const EmptyCard(icon: Icons.forum_outlined, title: 'No comments yet.')
                else
                  for (final c in comments)
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(color: AppColors.pageBg, borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${c.author?.staffAccount?.fullName ?? c.author?.username ?? '—'} · ${formatDate(c.createdAt)}',
                            style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                          ),
                          const SizedBox(height: 2),
                          Text(c.commentText, style: const TextStyle(color: AppColors.textSecondary)),
                        ],
                      ),
                    ),
              ],
            ),
          ),
        ),
        SafeArea(
          top: false,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              border: const Border(top: BorderSide(color: AppColors.border)),
            ),
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: ResponsiveCenter(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextField(
                      controller: _text,
                      minLines: 1,
                      maxLines: 4,
                      decoration: const InputDecoration(hintText: 'Add a comment…', border: OutlineInputBorder(), isDense: true),
                    ),
                  ),
                  const SizedBox(width: 8),
                  FilledButton(
                    onPressed: _posting ? null : _post,
                    child: _posting
                        ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
                        : const Text('Post'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
