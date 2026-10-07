import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/models/admin_academics.dart';
import '../../../core/models/admin_lookups.dart';
import '../../../core/models/admin_staff.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../providers/academics_providers.dart';
import '../providers/school_admin_providers.dart';
import '../services/academics_service.dart';
import 'academics_widgets.dart';
import 'school_admin_page_scaffold.dart';

/// Subject Teachers — web features/academics/subject-teachers/pages/
/// SubjectTeachersPage.jsx. The table becomes a card per assignment
/// (2-up from 840dp); "Assign Subject Teacher" opens a bottom sheet with
/// the web's existing-holder warning; Remove confirms first. Scoped to
/// the active session, like the web.
class AcademicsSubjectTeachersScreen extends ConsumerWidget {
  const AcademicsSubjectTeachersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(subjectTeacherAssignmentsProvider);
    final session = academicsSessionLabel(ref);

    return SchoolAdminPageScaffold(
      title: 'Subject Teachers',
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showAdminFormSheet(context, (_) => const _AssignSubjectTeacherSheet()),
        icon: const Icon(Icons.add),
        label: const Text('Assign Subject Teacher'),
      ),
      body: ResponsiveListView(
        onRefresh: () async {
          academicsRetry(ref, subjectTeacherAssignmentsProvider);
          await ref
              .read(subjectTeacherAssignmentsProvider.future)
              .catchError((_) => const <SubjectTeacherAssignment>[]);
        },
        padding: EdgeInsets.fromLTRB(context.isTabletWidth ? 24 : 16, 16, context.isTabletWidth ? 24 : 16, 96),
        children: [
          PageHeading(
            icon: Icons.person_add_alt_outlined,
            title: 'Subject Teachers',
            subtitle: session == null ? null : '($session)',
          ),
          const SizedBox(height: 16),
          AcademicsAsyncSection<List<SubjectTeacherAssignment>>(
            value: value,
            loadingLabel: 'Loading assignments…',
            onRetry: () => academicsRetry(ref, subjectTeacherAssignmentsProvider),
            data: (rows) => rows.isEmpty
                ? const AcademicsEmptyCard(
                    icon: Icons.person_add_alt_outlined,
                    title: 'No subject-teacher assignments yet',
                    message:
                        'Assign a teacher to a subject for a class/section to make them the subject-teacher of record.',
                  )
                : ResponsiveGrid(
                    minItemWidth: 420,
                    maxColumns: 2,
                    children: [for (final r in rows) _AssignmentCard(row: r)],
                  ),
          ),
        ],
      ),
    );
  }
}

class _AssignmentCard extends ConsumerWidget {
  const _AssignmentCard({required this.row});

  final SubjectTeacherAssignment row;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final r = row;
    final name = r.staff?.fullName;
    Widget meta(String label, String value) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
        const SizedBox(height: 2),
        Text(
          value,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 13, color: AppColors.textSecondary, fontWeight: FontWeight.w500),
        ),
      ],
    );

    return SectionCard(
      padding: const EdgeInsets.fromLTRB(16, 14, 8, 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              StaffAvatar(name: name, photoUrl: r.staff?.profilePhotoUrl, size: 40),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name ?? '—',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                    ),
                    if (r.staff?.employeeCode != null)
                      Text(
                        r.staff!.employeeCode!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontFamily: 'monospace', fontSize: 12, color: AppColors.textMuted),
                      ),
                  ],
                ),
              ),
              IconButton(
                tooltip: 'Remove assignment',
                icon: const Icon(Icons.delete_outline, color: AppColors.danger),
                onPressed: () => _confirmRemove(context, ref),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 3, child: meta('Subject', r.subject?.subjectName ?? '—')),
                const SizedBox(width: 8),
                Expanded(flex: 2, child: meta('Class', r.classRef?.className ?? '—')),
                const SizedBox(width: 8),
                Expanded(flex: 2, child: meta('Section', r.sectionRef?.sectionName ?? '—')),
              ],
            ),
          ),
          const SizedBox(height: 8),
          meta('Session', r.session?.sessionName ?? '—'),
        ],
      ),
    );
  }

  /// The web's message reads `removeTarget.subjects.subject_name`, which
  /// the API never sends (the relation is `academic_subjects`), so it
  /// always says "this subject" — mobile shows the real name.
  Future<void> _confirmRemove(BuildContext context, WidgetRef ref) {
    final r = row;
    return showConfirmDialog(
      context,
      title: 'Remove Assignment',
      message:
          'Remove ${r.staff?.fullName ?? 'this teacher'} from ${r.subject?.subjectName ?? 'this subject'} — '
          '${r.classRef?.className ?? ''} ${r.sectionRef?.sectionName ?? ''}?',
      confirmLabel: 'Remove',
      dangerous: true,
      action: () async {
        final res = await AcademicsService().removeSubjectTeacher(r.subjectTeacherId);
        if (res case Err(:final failure)) return failureMessage(failure, 'Failed to remove assignment.');
        ref.invalidate(subjectTeacherAssignmentsProvider);
        return null;
      },
    );
  }
}

/// "Assign Subject Teacher" modal (useAssignSubjectTeacherForm).
class _AssignSubjectTeacherSheet extends ConsumerStatefulWidget {
  const _AssignSubjectTeacherSheet();

  @override
  ConsumerState<_AssignSubjectTeacherSheet> createState() => _AssignSubjectTeacherSheetState();
}

class _AssignSubjectTeacherSheetState extends ConsumerState<_AssignSubjectTeacherSheet> {
  String _staffId = '';
  String _classId = '';
  String _sectionId = '';
  String _subjectId = '';
  bool _busy = false;
  String? _error;

  bool get _complete => _staffId.isNotEmpty && _classId.isNotEmpty && _sectionId.isNotEmpty && _subjectId.isNotEmpty;

  Future<void> _assign() async {
    if (!_complete) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    final session = await ref.read(academicsActiveSessionProvider.future).catchError((_) => null);
    if (!mounted) return;
    if (session == null) {
      setState(() {
        _busy = false;
        _error = 'No active academic session found for your institution';
      });
      return;
    }
    final r = await AcademicsService().assignSubjectTeacher({
      'staff_id': _staffId,
      'class_id': _classId,
      'section_id': _sectionId,
      'subject_id': _subjectId,
      'session_id': session.sessionId,
    });
    if (!mounted) return;
    switch (r) {
      case Ok():
        ref.invalidate(subjectTeacherAssignmentsProvider);
        Navigator.of(context).pop();
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failureMessage(failure, 'Failed to assign subject teacher.');
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final staffValue = ref.watch(reportingToOptionsProvider);
    final classesValue = ref.watch(adminClassOptionsProvider);
    final subjectsValue = ref.watch(academicSubjectsProvider(true));
    final assignments = ref.watch(subjectTeacherAssignmentsProvider).value ?? const <SubjectTeacherAssignment>[];
    final staff = staffValue.value ?? const <StaffMember>[];
    final classes = classesValue.value ?? const <AdminClassOption>[];
    final subjects = subjectsValue.value ?? const <AcademicSubject>[];
    final sections = classes.where((c) => c.classId == _classId).firstOrNull?.sections ?? const [];

    final holder = !_complete && (_classId.isEmpty || _sectionId.isEmpty || _subjectId.isEmpty)
        ? null
        : assignments
              .where((a) => a.classId == _classId && a.sectionId == _sectionId && a.subjectId == _subjectId)
              .firstOrNull;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SheetTitle('Assign Subject Teacher'),
        AcademicsSelect(
          label: 'Teacher *',
          value: _staffId,
          enabled: !staffValue.isLoading,
          placeholder: staffValue.isLoading ? 'Loading staff…' : 'Select a teacher',
          options: [for (final s in staff) (s.staffId, s.fullName)],
          onChanged: (v) => setState(() => _staffId = v),
        ),
        const SizedBox(height: 14),
        AcademicsSelect(
          label: 'Class *',
          value: _classId,
          enabled: !classesValue.isLoading,
          placeholder: classesValue.isLoading ? 'Loading classes…' : 'Select a class',
          options: [for (final c in classes) (c.classId, c.className)],
          onChanged: (v) => setState(() {
            _classId = v;
            _sectionId = '';
          }),
        ),
        const SizedBox(height: 14),
        AcademicsSelect(
          label: 'Section *',
          value: _sectionId,
          enabled: _classId.isNotEmpty,
          placeholder: _classId.isEmpty ? 'Select a class first' : 'Select a section',
          options: [
            for (final s in sections)
              if (s.sectionId != null) (s.sectionId!, s.sectionName ?? '—'),
          ],
          onChanged: (v) => setState(() => _sectionId = v),
        ),
        const SizedBox(height: 14),
        AcademicsSelect(
          label: 'Subject *',
          value: _subjectId,
          enabled: !subjectsValue.isLoading,
          placeholder: subjectsValue.isLoading ? 'Loading subjects…' : 'Select a subject',
          options: [for (final s in subjects) (s.subjectId, s.subjectName)],
          onChanged: (v) => setState(() => _subjectId = v),
        ),
        if (holder != null) ...[
          const SizedBox(height: 14),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.amberLight,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.amber.withValues(alpha: 0.4)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.warning_amber_rounded, size: 20, color: AppColors.amber),
                const SizedBox(width: 8),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      style: const TextStyle(color: AppColors.textSecondary, fontSize: 13),
                      children: [
                        const TextSpan(text: 'This class/section already has a teacher assigned for this subject — '),
                        TextSpan(
                          text: holder.staff?.fullName ?? '',
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                        const TextSpan(
                          text: '. Assigning a new one will silently replace them; the API does not warn again after you submit.',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        if (_error != null) ...[const SizedBox(height: 12), FormErrorText(_error!)],
        SheetActions(busy: _busy, onSubmit: _complete ? _assign : null, submitLabel: 'Assign'),
      ],
    );
  }
}
