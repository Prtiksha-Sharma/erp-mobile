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
import 'teacher_homework_screen.dart' show AssignmentPicker;
import 'teacher_page_scaffold.dart';

/// Web LessonPlanFormModal STATUS_OPTIONS.
const _statusOptions = [
  (value: 'PENDING', label: 'Pending'),
  (value: 'IN_PROGRESS', label: 'In Progress'),
  (value: 'COMPLETED', label: 'Completed'),
];

/// Port of MyLessonPlansPage.jsx — the teacher's own lesson plans with
/// add / edit / delete. The web table becomes one card row per plan.
class TeacherLessonPlansScreen extends ConsumerWidget {
  const TeacherLessonPlansScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final horizontal = context.isTabletWidth ? 24.0 : 16.0;
    return TeacherPageScaffold(
      title: 'My Lesson Plans',
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showLessonPlanSheet(context),
        icon: const Icon(Icons.add),
        label: const Text('Add Lesson Plan'),
      ),
      body: AsyncValueView(
        value: ref.watch(teacherLessonPlansProvider),
        loadingLabel: 'Loading…',
        onRetry: () => ref.invalidate(teacherLessonPlansProvider),
        data: (plans) => ResponsiveListView(
          onRefresh: () => ref.refresh(teacherLessonPlansProvider.future),
          padding: EdgeInsets.fromLTRB(horizontal, 16, horizontal, 96),
          children: [
            if (plans.isEmpty)
              const EmptyCard(
                icon: Icons.edit_note_outlined,
                title: 'No lesson plans yet',
                message: 'Tap "Add Lesson Plan" to create your first one.',
              )
            else
              DividedCard(children: [for (final p in plans) _PlanRow(plan: p)]),
          ],
        ),
      ),
    );
  }
}

class _PlanRow extends ConsumerWidget {
  const _PlanRow({required this.plan});

  final LessonPlan plan;

  Future<void> _delete(BuildContext context, WidgetRef ref) async {
    final ok = await showConfirmDialog(
      context,
      title: 'Delete Lesson Plan',
      message: 'Delete "${plan.topic}"?',
      confirmLabel: 'Delete',
      dangerous: true,
      action: () async => switch (await TeacherPortalService().deleteLessonPlan(plan.lessonPlanId)) {
        Ok() => null,
        Err(:final failure) => failure.userMessage,
      },
    );
    if (ok) ref.invalidate(teacherLessonPlansProvider);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final classLine = [
      plan.classRef?.className ?? '—',
      plan.sectionRef?.sectionName ?? 'All sections',
      plan.subject?.subjectName ?? '—',
    ].join(' · ');
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 4, 12),
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
                    Text(plan.topic, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
                    StatusBadge(label: plan.status ?? '—', variant: progressStatusVariant(plan.status)),
                  ],
                ),
                const SizedBox(height: 4),
                Text(classLine, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                const SizedBox(height: 2),
                Text(
                  'Planned: ${plan.plannedDate == null ? '—' : formatDate(plan.plannedDate)}',
                  style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                ),
                if (plan.description?.isNotEmpty ?? false) ...[
                  const SizedBox(height: 6),
                  Text(plan.description!),
                ],
                if (plan.attachmentUrl?.isNotEmpty ?? false)
                  ExternalLinkButton(label: 'View attachment', url: plan.attachmentUrl!),
              ],
            ),
          ),
          IconButton(
            tooltip: 'Edit lesson plan',
            icon: const Icon(Icons.edit_outlined, color: AppColors.primary),
            onPressed: () => showLessonPlanSheet(context, existing: plan),
          ),
          IconButton(
            tooltip: 'Delete lesson plan',
            icon: const Icon(Icons.delete_outline, color: AppColors.danger),
            onPressed: () => _delete(context, ref),
          ),
        ],
      ),
    );
  }
}

Future<void> showLessonPlanSheet(BuildContext context, {LessonPlan? existing}) async {
  final saved = await showTeacherFormSheet<bool>(context, (_) => _PlanForm(existing: existing));
  if (saved == true && context.mounted) {
    showSnack(context, existing == null ? 'Lesson plan created.' : 'Lesson plan updated.');
  }
}

/// Port of LessonPlanFormModal + useLessonPlanForm. Class/section/subject
/// are only chosen on create (the backend ignores them on update); status
/// is only editable on edit. Section is optional — none = all sections.
class _PlanForm extends ConsumerStatefulWidget {
  const _PlanForm({this.existing});

  final LessonPlan? existing;

  @override
  ConsumerState<_PlanForm> createState() => _PlanFormState();
}

class _PlanFormState extends ConsumerState<_PlanForm> {
  late final _topic = TextEditingController(text: widget.existing?.topic ?? '');
  late final _description = TextEditingController(text: widget.existing?.description ?? '');
  late final _attachment = TextEditingController(text: widget.existing?.attachmentUrl ?? '');
  String? _classId;
  String? _sectionId;
  String? _subjectId;
  late DateTime? _plannedDate =
      widget.existing?.plannedDate == null ? null : calendarDay(widget.existing!.plannedDate!);
  late String _status = widget.existing?.status ?? 'PENDING';
  Map<String, String> _errors = {};
  String? _saveError;
  bool _saving = false;

  bool get _editing => widget.existing != null;

  @override
  void dispose() {
    _topic.dispose();
    _description.dispose();
    _attachment.dispose();
    super.dispose();
  }

  bool _validate() {
    final e = <String, String>{};
    if (!_editing) {
      if (_classId == null) e['class'] = 'Class is required';
      if (_subjectId == null) e['subject'] = 'Subject is required';
    }
    if (_topic.text.trim().isEmpty) e['topic'] = 'Topic is required';
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
    final Result<void> result = _editing
        ? await service.updateLessonPlan(
            widget.existing!.lessonPlanId,
            topic: _topic.text,
            description: _description.text,
            plannedDate: _plannedDate,
            attachmentUrl: _attachment.text,
            status: _status,
          )
        : await service.createLessonPlan(
            classId: _classId!,
            sectionId: _sectionId,
            subjectId: _subjectId!,
            sessionId: assignments.firstWhere((a) => a.classId == _classId).sessionId,
            topic: _topic.text,
            description: _description.text,
            plannedDate: _plannedDate,
            attachmentUrl: _attachment.text,
          );
    if (!mounted) return;
    switch (result) {
      case Ok():
        ref.invalidate(teacherLessonPlansProvider);
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
    final assignments = ref.watch(teacherSubjectsProvider).value ?? const <SubjectAssignment>[];
    final options = deriveAssignmentOptions(assignments, _classId);
    // The DB default (PLANNED) isn't one of the web's options — keep it
    // selectable so an untouched plan doesn't lose its value.
    final statuses = [
      ..._statusOptions,
      if (!_statusOptions.any((o) => o.value == _status)) (value: _status, label: humanizeEnum(_status)),
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(_editing ? 'Edit Lesson Plan' : 'Add Lesson Plan', style: Theme.of(context).textTheme.titleLarge),
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
            label: 'Section',
            hint: 'All sections',
            value: _sectionId,
            options: options.sections,
            enabled: _classId != null,
            onChanged: (v) => setState(() => _sectionId = v),
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
          controller: _topic,
          onChanged: (_) {
            if (_errors.containsKey('topic')) setState(() => _errors = {..._errors}..remove('topic'));
          },
          decoration: InputDecoration(
            labelText: 'Topic *',
            hintText: 'Unit 1 — Introduction',
            border: const OutlineInputBorder(),
            errorText: _errors['topic'],
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _description,
          maxLines: 2,
          decoration: const InputDecoration(
            labelText: 'Description',
            hintText: 'Optional description',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 12),
        DateField(
          label: 'Planned Date',
          value: _plannedDate,
          onPicked: (d) => setState(() => _plannedDate = d),
          onClear: () => setState(() => _plannedDate = null),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _attachment,
          keyboardType: TextInputType.url,
          decoration: const InputDecoration(labelText: 'Attachment URL', hintText: 'https://…', border: OutlineInputBorder()),
        ),
        if (_editing) ...[
          const SizedBox(height: 12),
          DropdownButtonFormField<String>(
            initialValue: _status,
            decoration: const InputDecoration(labelText: 'Status', border: OutlineInputBorder()),
            items: [for (final o in statuses) DropdownMenuItem(value: o.value, child: Text(o.label))],
            onChanged: (v) => setState(() => _status = v ?? _status),
          ),
        ],
        if (_saveError != null) ...[
          const SizedBox(height: 12),
          Text(_saveError!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
        ],
        const SizedBox(height: 20),
        SheetActions(busy: _saving, onSubmit: () => _save(assignments), submitLabel: _editing ? 'Save' : 'Create'),
      ],
    );
  }
}
