import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/models/admin_academics.dart';
import '../../../core/models/admin_lookups.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/academics_providers.dart';
import '../providers/school_admin_providers.dart';
import '../services/academics_service.dart';
import 'academics_widgets.dart';
import 'school_admin_page_scaffold.dart';

const _pageSize = 10;

/// Subjects — web features/academics/subjects/pages/SubjectsPage.jsx
/// (+ SubjectFormModal, ClassSubjectsPanel, ClassFilterDropdown). Two tabs:
/// the subject catalog (stats, client-side search/class/type/status
/// filters, 10 per page, add/edit, activate/deactivate) and Class
/// Assignment (assign/remove a subject for a class in the active session).
class AcademicsSubjectsScreen extends ConsumerStatefulWidget {
  const AcademicsSubjectsScreen({super.key});

  @override
  ConsumerState<AcademicsSubjectsScreen> createState() => _AcademicsSubjectsScreenState();
}

class _AcademicsSubjectsScreenState extends ConsumerState<AcademicsSubjectsScreen> with SingleTickerProviderStateMixin {
  late final TabController _tabs = TabController(length: 2, vsync: this)..addListener(_onTab);

  void _onTab() {
    if (!_tabs.indexIsChanging) setState(() {});
  }

  @override
  void dispose() {
    _tabs
      ..removeListener(_onTab)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SchoolAdminPageScaffold(
      title: 'Subjects',
      bottom: TabBar(
        controller: _tabs,
        tabs: const [
          Tab(text: 'Subjects'),
          Tab(text: 'Class Assignment'),
        ],
      ),
      floatingActionButton: _tabs.index == 0
          ? FloatingActionButton.extended(
              onPressed: () => showSubjectFormSheet(context),
              icon: const Icon(Icons.add),
              label: const Text('Add Subject'),
            )
          : null,
      body: TabBarView(controller: _tabs, children: const [_SubjectsTab(), _ClassAssignmentTab()]),
    );
  }
}

String _titleCase(String s) => s.isEmpty ? s : s[0].toUpperCase() + s.substring(1).toLowerCase();

// ── Subjects tab ──────────────────────────────────────────────────────────

class _SubjectsTab extends ConsumerStatefulWidget {
  const _SubjectsTab();

  @override
  ConsumerState<_SubjectsTab> createState() => _SubjectsTabState();
}

class _SubjectsTabState extends ConsumerState<_SubjectsTab> with AutomaticKeepAliveClientMixin {
  final _search = TextEditingController();
  String _type = '';
  String _status = '';
  String _classId = '';
  int _page = 1;

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  Future<void> _refresh() async {
    ref.invalidate(academicSubjectsProvider(null));
    ref.invalidate(classSubjectAssignmentsProvider);
    await ref.read(academicSubjectsProvider(null).future).catchError((_) => const <AcademicSubject>[]);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final subjectsValue = ref.watch(academicSubjectsProvider(null));
    final classes = ref.watch(adminClassOptionsProvider).value ?? const <AdminClassOption>[];
    final classSubjects = ref.watch(classSubjectAssignmentsProvider).value ?? const <ClassSubjectAssignment>[];
    final schoolName = ref.watch(schoolLogoProvider)?.institutionName;
    final subtitleParts = [?schoolName, ?academicsSessionLabel(ref)];

    final classIdsBySubject = <String, Set<String>>{};
    for (final row in classSubjects) {
      classIdsBySubject.putIfAbsent(row.subjectId, () => {}).add(row.classId);
    }
    final classNames = {for (final c in classes) c.classId: c.className};
    final classOrder = {for (final (i, c) in classes.indexed) c.classId: i};

    final subjects = subjectsValue.value ?? const <AcademicSubject>[];
    final loading = subjectsValue.isLoading && !subjectsValue.hasValue;
    String stat(int n) => loading ? '—' : '$n';

    return ResponsiveListView(
      onRefresh: _refresh,
      padding: EdgeInsets.fromLTRB(context.isTabletWidth ? 24 : 16, 16, context.isTabletWidth ? 24 : 16, 96),
      children: [
        PageHeading(
          icon: Icons.school_outlined,
          title: 'Subjects',
          subtitle: subtitleParts.isEmpty ? null : 'Manage subjects offered across ${subtitleParts.join(' · ')}',
        ),
        const SizedBox(height: 16),
        AcademicsStatGrid(
          tiles: [
            (stat(subjects.length), 'Total Subjects', AppColors.primary, Icons.layers_outlined),
            (
              stat(subjects.where((s) => s.subjectType?.toLowerCase() == 'core').length),
              'Core',
              AppColors.violet,
              Icons.menu_book_outlined,
            ),
            (
              stat(subjects.where((s) => s.subjectType?.toLowerCase() == 'elective').length),
              'Elective',
              AppColors.amber,
              Icons.auto_awesome_outlined,
            ),
            (stat(subjects.where((s) => s.isActive).length), 'Active', AppColors.emerald, Icons.check_circle_outline),
          ],
        ),
        const SizedBox(height: 16),
        AcademicsFilterGrid(
          children: [
            TextField(
              controller: _search,
              onChanged: (_) => setState(() => _page = 1),
              decoration: InputDecoration(
                hintText: 'Search subjects…',
                prefixIcon: const Icon(Icons.search),
                border: const OutlineInputBorder(),
                suffixIcon: _search.text.isEmpty
                    ? null
                    : IconButton(
                        icon: const Icon(Icons.clear),
                        tooltip: 'Clear',
                        onPressed: () => setState(() {
                          _search.clear();
                          _page = 1;
                        }),
                      ),
              ),
            ),
            AcademicsSelect(
              label: 'Class',
              value: _classId,
              clearable: true,
              placeholder: 'All Classes',
              options: [for (final c in classes) (c.classId, c.className)],
              onChanged: (v) => setState(() {
                _classId = v;
                _page = 1;
              }),
            ),
            AcademicsSelect(
              label: 'Type',
              value: _type,
              clearable: true,
              placeholder: 'All types',
              options: const [('Core', 'Core'), ('Elective', 'Elective')],
              onChanged: (v) => setState(() {
                _type = v;
                _page = 1;
              }),
            ),
            AcademicsSelect(
              label: 'Status',
              value: _status,
              clearable: true,
              placeholder: 'All status',
              options: const [('active', 'Active'), ('inactive', 'Inactive')],
              onChanged: (v) => setState(() {
                _status = v;
                _page = 1;
              }),
            ),
          ],
        ),
        const SizedBox(height: 16),
        AcademicsAsyncSection<List<AcademicSubject>>(
          value: subjectsValue,
          loadingLabel: 'Loading subjects…',
          onRetry: () => ref.invalidate(academicSubjectsProvider(null)),
          data: (all) {
            final q = _search.text.trim().toLowerCase();
            final filtered = all.where((s) {
              if (q.isNotEmpty &&
                  !(s.subjectName.toLowerCase().contains(q) || (s.subjectCode?.toLowerCase().contains(q) ?? false))) {
                return false;
              }
              if (_type.isNotEmpty && s.subjectType?.toLowerCase() != _type.toLowerCase()) return false;
              if (_status == 'active' && !s.isActive) return false;
              if (_status == 'inactive' && s.isActive) return false;
              if (_classId.isNotEmpty && !(classIdsBySubject[s.subjectId]?.contains(_classId) ?? false)) return false;
              return true;
            }).toList();
            if (filtered.isEmpty) {
              return const AcademicsEmptyCard(
                icon: Icons.school_outlined,
                title: 'No subjects found',
                message: 'Add your first subject to get started.',
              );
            }
            // Clamp if the set shrank under the current page (web useEffect).
            final maxPage = (filtered.length / _pageSize).ceil().clamp(1, 1 << 30);
            final page = _page > maxPage ? maxPage : _page;
            final paged = filtered.skip((page - 1) * _pageSize).take(_pageSize).toList();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ResponsiveGrid(
                  minItemWidth: 420,
                  maxColumns: 2,
                  children: [
                    for (final s in paged)
                      _SubjectCard(
                        subject: s,
                        classIds: _sortedClasses(classIdsBySubject[s.subjectId] ?? const {}, classOrder),
                        classNames: classNames,
                        activeClassId: _classId,
                      ),
                  ],
                ),
                const SizedBox(height: 16),
                PaginationBar(
                  page: page,
                  total: filtered.length,
                  pageSize: _pageSize,
                  onChange: (p) => setState(() => _page = p),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

/// Class ids in canonical class order (useSubjectClassAssignments'
/// classOrderById).
List<String> _sortedClasses(Set<String> ids, Map<String, int> order) =>
    ids.toList()..sort((a, b) => (order[a] ?? 0).compareTo(order[b] ?? 0));

/// pickVisibleClasses(): first 3 chips, swapping the filtered class into
/// view when it would otherwise fold into "+N more".
(List<String>, List<String>) _pickVisible(List<String> sorted, String activeClassId) {
  var visible = sorted.take(3).toList();
  var remaining = sorted.skip(3).toList();
  if (activeClassId.isNotEmpty && !visible.contains(activeClassId) && remaining.contains(activeClassId)) {
    visible = [...visible.take(2), activeClassId];
    remaining = sorted.where((id) => !visible.contains(id)).toList();
  }
  return (visible, remaining);
}

class _SubjectCard extends ConsumerStatefulWidget {
  const _SubjectCard({
    required this.subject,
    required this.classIds,
    required this.classNames,
    required this.activeClassId,
  });

  final AcademicSubject subject;
  final List<String> classIds;
  final Map<String, String> classNames;
  final String activeClassId;

  @override
  ConsumerState<_SubjectCard> createState() => _SubjectCardState();
}

class _SubjectCardState extends ConsumerState<_SubjectCard> {
  bool _activating = false;

  Future<void> _toggle() async {
    final s = widget.subject;
    if (s.isActive) {
      await showConfirmDialog(
        context,
        title: 'Deactivate Subject',
        message:
            'Deactivate "${s.subjectName}"? It will no longer be assignable to classes, but existing assignments are kept.',
        confirmLabel: 'Deactivate',
        dangerous: true,
        action: () async {
          final r = await AcademicsService().deactivateSubject(s.subjectId);
          if (r case Err(:final failure)) return failureMessage(failure, 'Failed to deactivate subject.');
          ref.invalidate(academicSubjectsProvider);
          return null;
        },
      );
      return;
    }
    // Reactivation is reversible — no confirm (useSubjectActions).
    setState(() => _activating = true);
    final r = await AcademicsService().activateSubject(s.subjectId);
    if (!mounted) return;
    setState(() => _activating = false);
    if (r case Err(:final failure)) {
      showSnack(context, failureMessage(failure, 'Failed to activate subject.'));
    } else {
      ref.invalidate(academicSubjectsProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.subject;
    final elective = s.subjectType?.toLowerCase() == 'elective';
    final (visible, remaining) = _pickVisible(widget.classIds, widget.activeClassId);
    final type = s.subjectType;

    return SectionCard(
      padding: const EdgeInsets.fromLTRB(16, 14, 8, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: elective ? AppColors.violetLight : AppColors.primaryLight,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.menu_book_outlined, size: 18, color: elective ? AppColors.violet : AppColors.primary),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      s.subjectName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      s.subjectCode ?? '—',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontFamily: 'monospace', fontSize: 12, color: AppColors.textMuted),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              StatusBadge(
                label: s.isActive ? 'Active' : 'Inactive',
                variant: s.isActive ? BadgeVariant.success : BadgeVariant.neutral,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Wrap(
              spacing: 6,
              runSpacing: 6,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                const Text('Type:', style: TextStyle(fontSize: 12, color: AppColors.textMuted)),
                if (type != null && type.isNotEmpty) AcademicsChip(_titleCase(type)) else const Text('—'),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Wrap(
              spacing: 6,
              runSpacing: 6,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                const Text('Classes:', style: TextStyle(fontSize: 12, color: AppColors.textMuted)),
                if (visible.isEmpty) const Text('—'),
                for (final id in visible)
                  AcademicsChip(widget.classNames[id] ?? '—', highlighted: id == widget.activeClassId),
                if (remaining.isNotEmpty)
                  Tooltip(
                    message: remaining.map((id) => widget.classNames[id] ?? '—').join(', '),
                    triggerMode: TooltipTriggerMode.tap,
                    child: AcademicsChip('+${remaining.length} more'),
                  ),
              ],
            ),
          ),
          const Divider(height: 20, color: AppColors.border),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                tooltip: 'Edit Subject',
                icon: const Icon(Icons.edit_outlined, size: 20, color: AppColors.primary),
                onPressed: () => showSubjectFormSheet(context, subject: s),
              ),
              Tooltip(
                message: s.isActive ? 'Deactivate Subject' : 'Activate Subject',
                child: Switch(
                  value: s.isActive,
                  activeTrackColor: AppColors.success,
                  onChanged: _activating ? null : (_) => _toggle(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Add/Edit Subject (SubjectFormModal + useSubjectForm).
Future<void> showSubjectFormSheet(BuildContext context, {AcademicSubject? subject}) =>
    showAdminFormSheet(context, (_) => _SubjectFormSheet(subject: subject));

class _SubjectFormSheet extends ConsumerStatefulWidget {
  const _SubjectFormSheet({this.subject});

  final AcademicSubject? subject;

  @override
  ConsumerState<_SubjectFormSheet> createState() => _SubjectFormSheetState();
}

class _SubjectFormSheetState extends ConsumerState<_SubjectFormSheet> {
  late final _name = TextEditingController(text: widget.subject?.subjectName ?? '');
  late final _code = TextEditingController(text: widget.subject?.subjectCode ?? '');
  late final _type = TextEditingController(text: widget.subject?.subjectType ?? '');
  String? _nameError;
  String? _error;
  bool _busy = false;

  @override
  void dispose() {
    _name.dispose();
    _code.dispose();
    _type.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_name.text.trim().isEmpty) {
      setState(() => _nameError = 'Subject name is required');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    final payload = {
      'subject_name': _name.text,
      if (_code.text.isNotEmpty) 'subject_code': _code.text,
      if (_type.text.isNotEmpty) 'subject_type': _type.text,
    };
    final s = widget.subject;
    final service = AcademicsService();
    final r = s == null ? await service.createSubject(payload) : await service.updateSubject(s.subjectId, payload);
    if (!mounted) return;
    switch (r) {
      case Ok():
        ref.invalidate(academicSubjectsProvider);
        Navigator.of(context).pop();
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failureMessage(failure, 'Failed to save subject.');
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final editing = widget.subject != null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SheetTitle(editing ? 'Edit Subject' : 'Add Subject'),
        TextField(
          controller: _name,
          onChanged: (_) {
            if (_nameError != null) setState(() => _nameError = null);
          },
          decoration: InputDecoration(
            labelText: 'Subject Name *',
            hintText: 'Mathematics',
            border: const OutlineInputBorder(),
            errorText: _nameError,
          ),
        ),
        const SizedBox(height: 14),
        TextField(
          controller: _code,
          decoration: const InputDecoration(
            labelText: 'Subject Code',
            hintText: 'MATH101',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 14),
        TextField(
          controller: _type,
          decoration: const InputDecoration(
            labelText: 'Subject Type',
            hintText: 'Core / Elective',
            border: OutlineInputBorder(),
          ),
        ),
        if (_error != null) ...[const SizedBox(height: 12), FormErrorText(_error!)],
        SheetActions(busy: _busy, onSubmit: _save, submitLabel: editing ? 'Save' : 'Create'),
      ],
    );
  }
}

// ── Class Assignment tab (ClassSubjectsPanel) ──────────────────────────────

class _ClassAssignmentTab extends ConsumerStatefulWidget {
  const _ClassAssignmentTab();

  @override
  ConsumerState<_ClassAssignmentTab> createState() => _ClassAssignmentTabState();
}

class _ClassAssignmentTabState extends ConsumerState<_ClassAssignmentTab> with AutomaticKeepAliveClientMixin {
  String _classId = '';
  String _subjectId = '';
  bool _assigning = false;
  String? _assignError;

  @override
  bool get wantKeepAlive => true;

  Future<void> _assign() async {
    if (_classId.isEmpty || _subjectId.isEmpty) return;
    final session = await ref.read(academicsActiveSessionProvider.future).catchError((_) => null);
    if (!mounted) return;
    if (session == null) {
      setState(() => _assignError = 'No active academic session found for your institution');
      return;
    }
    setState(() {
      _assigning = true;
      _assignError = null;
    });
    final r = await AcademicsService().assignClassSubject(
      classId: _classId,
      subjectId: _subjectId,
      sessionId: session.sessionId,
    );
    if (!mounted) return;
    setState(() => _assigning = false);
    switch (r) {
      case Ok():
        setState(() => _subjectId = '');
        ref.invalidate(classSubjectAssignmentsProvider);
      case Err(:final failure):
        setState(() => _assignError = failureMessage(failure, 'Failed to assign subject to class.'));
    }
  }

  Future<void> _confirmRemove(ClassSubjectAssignment row) => showConfirmDialog(
    context,
    title: 'Remove Subject',
    message: 'Remove "${row.subject?.subjectName ?? 'this subject'}" from this class?',
    confirmLabel: 'Remove',
    dangerous: true,
    action: () async {
      final r = await AcademicsService().removeClassSubject(row.classSubjectId);
      if (r case Err(:final failure)) return failureMessage(failure, 'Failed to remove subject.');
      ref.invalidate(classSubjectAssignmentsProvider);
      return null;
    },
  );

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final classesValue = ref.watch(adminClassOptionsProvider);
    final subjectsValue = ref.watch(academicSubjectsProvider(true));
    final listValue = ref.watch(classSubjectAssignmentsProvider);
    final classes = classesValue.value ?? const <AdminClassOption>[];
    final subjects = subjectsValue.value ?? const <AcademicSubject>[];

    final classSelect = AcademicsSelect(
      label: 'Class *',
      value: _classId,
      enabled: !classesValue.isLoading,
      placeholder: classesValue.isLoading ? 'Loading classes…' : 'Select a class',
      options: [for (final c in classes) (c.classId, c.className)],
      onChanged: (v) => setState(() {
        _classId = v;
        _assignError = null;
      }),
    );
    final subjectSelect = AcademicsSelect(
      label: 'Subject *',
      value: _subjectId,
      enabled: _classId.isNotEmpty && !subjectsValue.isLoading,
      placeholder: _classId.isEmpty
          ? 'Select a class first'
          : (subjectsValue.isLoading ? 'Loading subjects…' : 'Select a subject'),
      options: [for (final s in subjects) (s.subjectId, s.subjectName)],
      onChanged: (v) => setState(() => _subjectId = v),
    );
    final assignButton = FilledButton.icon(
      onPressed: _classId.isEmpty || _subjectId.isEmpty || _assigning ? null : _assign,
      icon: _assigning
          ? const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2))
          : const Icon(Icons.add, size: 18),
      label: const Text('Assign'),
    );

    return ResponsiveListView(
      onRefresh: () async {
        academicsRetry(ref, classSubjectAssignmentsProvider);
        await ref.read(classSubjectAssignmentsProvider.future).catchError((_) => const <ClassSubjectAssignment>[]);
      },
      children: [
        LayoutBuilder(
          builder: (context, c) => c.maxWidth >= 640
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: classSelect),
                    const SizedBox(width: 12),
                    Expanded(child: subjectSelect),
                    const SizedBox(width: 12),
                    Padding(padding: const EdgeInsets.only(top: 8), child: assignButton),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    classSelect,
                    const SizedBox(height: 12),
                    subjectSelect,
                    const SizedBox(height: 12),
                    assignButton,
                  ],
                ),
        ),
        if (_assignError != null) ...[const SizedBox(height: 10), FormErrorText(_assignError!)],
        const SizedBox(height: 16),
        if (_classId.isEmpty)
          const AcademicsEmptyCard(icon: Icons.school_outlined, title: 'Select a class to see its assigned subjects')
        else
          AcademicsAsyncSection<List<ClassSubjectAssignment>>(
            value: listValue,
            loadingLabel: 'Loading subjects…',
            onRetry: () => academicsRetry(ref, classSubjectAssignmentsProvider),
            data: (all) {
              final rows = all.where((r) => r.classId == _classId).toList();
              if (rows.isEmpty) {
                return const AcademicsEmptyCard(
                  icon: Icons.school_outlined,
                  title: 'No subjects assigned to this class yet',
                );
              }
              return DividedCard(
                children: [
                  for (final r in rows)
                    ListTile(
                      leading: const Icon(Icons.menu_book_outlined, color: AppColors.primary),
                      title: Text(
                        r.subject?.subjectName ?? '—',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text('Session: ${r.session?.sessionName ?? '—'}'),
                      trailing: IconButton(
                        tooltip: 'Remove subject from class',
                        icon: const Icon(Icons.delete_outline, color: AppColors.danger),
                        onPressed: () => _confirmRemove(r),
                      ),
                    ),
                ],
              );
            },
          ),
      ],
    );
  }
}
