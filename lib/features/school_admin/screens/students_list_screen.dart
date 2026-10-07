import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/models/admin_students.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/school_admin_providers.dart';
import '../providers/students_providers.dart';
import '../services/students_service.dart';
import 'admissions_widgets.dart';
import 'school_admin_nav.dart';
import 'school_admin_page_scaffold.dart';
import 'students_bulk_sheets.dart';

/// STUDENT_STATUSES (features/students/constants/studentConfig.js).
const _studentStatuses = ['ACTIVE', 'INACTIVE', 'SUSPENDED', 'ALUMNI', 'TRANSFERRED', 'DROPPED'];

/// StatusFilterBar's `titleCase(s.replace('_', ' '))`.
String _titleCase(String s) {
  final t = s.replaceFirst('_', ' ');
  return t.isEmpty ? t : t[0].toUpperCase() + t.substring(1).toLowerCase();
}

/// STATUS_MAP → badge colours; an unknown status is neutral.
BadgeVariant studentStatusVariant(String? status) => switch (status) {
  'ACTIVE' => BadgeVariant.success,
  'INACTIVE' || 'DROPPED' => BadgeVariant.warning,
  'SUSPENDED' => BadgeVariant.danger,
  'ALUMNI' || 'PASSED_OUT' => BadgeVariant.violet,
  'TRANSFERRED' => BadgeVariant.primary,
  _ => BadgeVariant.neutral,
};

/// Students — web features/students/pages/StudentsListPage.jsx: a directory
/// of every registered student with search, class and status filters,
/// multi-select bulk actions (assign class, promote, deactivate, ID cards,
/// certificates, CSV export) and pagination. A row opens the student's
/// profile.
class StudentsListScreen extends ConsumerStatefulWidget {
  const StudentsListScreen({super.key});

  @override
  ConsumerState<StudentsListScreen> createState() => _StudentsListScreenState();
}

class _StudentsListScreenState extends ConsumerState<StudentsListScreen> {
  StudentsQuery _query = const StudentsQuery();
  final _searchController = TextEditingController();
  Timer? _debounce;

  /// Survives page and filter changes, like the web's useRowSelection.
  final Set<String> _selected = {};

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    super.dispose();
  }

  void _openProfile(String id) => context.go('${SchoolAdminPaths.students}/$id');

  void _toggle(String id) => setState(() => _selected.contains(id) ? _selected.remove(id) : _selected.add(id));

  void _toggleAll(List<AdminStudentRow> rows) {
    final all = rows.every((r) => _selected.contains(r.studentId));
    setState(() {
      for (final r in rows) {
        all ? _selected.remove(r.studentId) : _selected.add(r.studentId);
      }
    });
  }

  /// Class and status changes go back to page 1 so a stale page number
  /// can't leave the list empty.
  void _setFilters(StudentsQuery next) => setState(() => _query = next.copyWith(page: 1));

  void _onSearch(String _) {
    setState(() {});
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      if (mounted) _setFilters(_query.copyWith(search: _searchController.text.trim()));
    });
  }

  Future<void> _refresh() async {
    ref
      ..invalidate(adminStudentsListProvider)
      ..invalidate(adminStudentsActiveSessionProvider);
    await ref.read(adminStudentsListProvider(_query).future).then<void>((_) {}, onError: (_) {});
  }

  /// Runs a bulk sheet and refreshes the list once a result was shown; the
  /// selection is cleared (the web's `closeAndClearSelection`).
  Future<void> _bulk(Future<bool> Function(List<String> ids) open, {bool refresh = true}) async {
    final completed = await open(_selected.toList());
    if (!completed || !mounted) return;
    if (refresh) ref.invalidate(adminStudentsListProvider);
    setState(_selected.clear);
  }

  Future<void> _promote() async {
    final session = await ref
        .read(adminStudentsActiveSessionProvider.future)
        .then<AdminStudentActiveSession?>((s) => s, onError: (_) => null);
    if (!mounted) return;
    if (session == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No active academic session found. Set one up in Settings before promoting.')),
      );
      return;
    }
    await _bulk(
      (ids) => showPromoteSheet(context, ids, sessionId: session.sessionId, sessionLabel: session.sessionName),
    );
  }

  List<BulkAction> get _actions => [
    BulkAction(
      label: 'Assign to Class',
      icon: Icons.layers_outlined,
      onTap: () => _bulk((ids) => showAssignClassSheet(context, ids)),
    ),
    BulkAction(label: 'Promote', icon: Icons.trending_up, onTap: _promote),
    BulkAction(
      label: 'Deactivate',
      icon: Icons.person_off_outlined,
      danger: true,
      onTap: () => _bulk((ids) => showDeactivateSheet(context, ids)),
    ),
    BulkAction(
      label: 'Generate ID Cards',
      icon: Icons.badge_outlined,
      onTap: () => _bulk((ids) => showIdCardSheet(context, ids), refresh: false),
    ),
    BulkAction(
      label: 'Certificate',
      icon: Icons.description_outlined,
      onTap: () => _bulk((ids) => showCertificateSheet(context, ids), refresh: false),
    ),
    BulkAction(
      label: 'Export CSV',
      icon: Icons.download_outlined,
      onTap: () => _bulk((ids) => showExportSheet(context, ids, _query), refresh: false),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final list = ref.watch(adminStudentsListProvider(_query));
    final sessionName = ref.watch(adminStudentsActiveSessionProvider).value?.sessionName;
    final pad = context.isTabletWidth ? 24.0 : 16.0;

    return SchoolAdminPageScaffold(
      title: 'Students',
      // New students are onboarded through the Admissions pipeline — this
      // page has no direct "create student" endpoint (same note as the web).
      // Hidden while rows are selected so it never covers the bulk bar.
      floatingActionButton: _selected.isNotEmpty
          ? null
          : FloatingActionButton.extended(
              onPressed: () => context.go(SchoolAdminPaths.admissionsNew),
              icon: const Icon(Icons.person_add_alt_1_outlined),
              label: const Text('Add Student'),
            ),
      body: Column(
        children: [
          Expanded(
            child: ResponsiveListView(
              onRefresh: _refresh,
              padding: EdgeInsets.fromLTRB(pad, 16, pad, 96),
              children: [
                PageHeading(
                  icon: Icons.groups_outlined,
                  title: 'Students',
                  subtitle: 'All registered students in the institution${sessionName == null ? '' : ' · $sessionName'}',
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 256),
                    child: _TotalCard(total: list.value?.total),
                  ),
                ),
                const SizedBox(height: 16),
                _filters(),
                const SizedBox(height: 16),
                list.when(
                  skipLoadingOnRefresh: true,
                  loading: () => const LoadingView(label: 'Loading students…'),
                  error: (err, _) => AdmissionLoadError(
                    title: 'Failed to load students.',
                    error: err,
                    onRetry: () => ref.invalidate(adminStudentsListProvider(_query)),
                  ),
                  data: (page) => page.data.isEmpty
                      ? const SectionCard(
                          child: EmptyState(
                            icon: Icons.groups_outlined,
                            title: 'No students found',
                            message: 'Registered students will appear here.',
                          ),
                        )
                      : _rows(page),
                ),
              ],
            ),
          ),
          BulkBar(
            count: _selected.length,
            noun: 'student',
            actions: _actions,
            onClear: () => setState(_selected.clear),
            overCap: false,
          ),
        ],
      ),
    );
  }

  Widget _rows(AdminStudentPage page) {
    final rows = page.data;
    final all = rows.every((r) => _selected.contains(r.studentId));
    final some = rows.any((r) => _selected.contains(r.studentId));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: () => _toggleAll(rows),
          child: Row(
            children: [
              Checkbox(value: all ? true : (some ? null : false), tristate: true, onChanged: (_) => _toggleAll(rows)),
              const Expanded(
                child: Text('Select all students on this page', style: TextStyle(color: AppColors.textSecondary)),
              ),
            ],
          ),
        ),
        ResponsiveGrid(
          minItemWidth: 440,
          maxColumns: 2,
          children: [
            for (final r in rows)
              _StudentCard(
                row: r,
                selected: _selected.contains(r.studentId),
                onToggle: () => _toggle(r.studentId),
                onOpen: () => _openProfile(r.studentId),
              ),
          ],
        ),
        const SizedBox(height: 16),
        PaginationBar(
          page: _query.page,
          total: page.total,
          pageSize: _query.limit,
          onChange: (p) => setState(() => _query = _query.copyWith(page: p)),
        ),
      ],
    );
  }

  Widget _filters() {
    final classes = ref.watch(adminClassOptionsProvider).value ?? const [];
    final controls = <Widget>[
      TextField(
        controller: _searchController,
        onChanged: _onSearch,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: 'Search name, admission no…',
          prefixIcon: const Icon(Icons.search),
          border: const OutlineInputBorder(),
          isDense: true,
          suffixIcon: _searchController.text.isEmpty
              ? null
              : IconButton(
                  icon: const Icon(Icons.clear, size: 18),
                  tooltip: 'Clear search',
                  onPressed: () {
                    _searchController.clear();
                    _onSearch('');
                  },
                ),
        ),
      ),
      OptionSelect(
        label: 'Class',
        value: _query.classId,
        placeholder: 'All classes',
        options: [for (final c in classes) (c.classId, c.className)],
        onChanged: (v) => _setFilters(_query.copyWith(classId: v)),
      ),
      OptionSelect(
        label: 'Status',
        value: _query.status,
        placeholder: 'All status',
        options: [for (final s in _studentStatuses) (s, _titleCase(s))],
        onChanged: (v) => _setFilters(_query.copyWith(status: v)),
      ),
    ];
    return LayoutBuilder(
      builder: (context, c) {
        final wide = c.maxWidth >= 720;
        if (!wide) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [for (final w in controls) Padding(padding: const EdgeInsets.only(bottom: 12), child: w)],
          );
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 3, child: controls[0]),
            const SizedBox(width: 12),
            Expanded(flex: 2, child: controls[1]),
            const SizedBox(width: 12),
            Expanded(flex: 2, child: controls[2]),
          ],
        );
      },
    );
  }
}

/// `<StatCard icon={Users} accentColor="blue" label="Total Students" gradient />`.
class _TotalCard extends StatelessWidget {
  const _TotalCard({required this.total});

  final int? total;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFDBEAFE),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.groups_outlined, color: AppColors.primary, size: 28),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  total?.toString() ?? '—',
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
                ),
                const Text('Total Students', style: TextStyle(color: AppColors.textMuted)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// One StudentsTable row as a card.
class _StudentCard extends StatelessWidget {
  const _StudentCard({required this.row, required this.selected, required this.onToggle, required this.onOpen});

  final AdminStudentRow row;
  final bool selected;
  final VoidCallback onToggle;
  final VoidCallback onOpen;

  @override
  Widget build(BuildContext context) {
    final a = row.applicant;
    final name = a?.fullName;
    final phone = a?.contactNo;
    final status = row.studentStatus;
    return Material(
      color: selected ? AppColors.primaryLight : Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: selected ? AppColors.primary : AppColors.border),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onOpen,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(4, 12, 12, 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: Checkbox(
                  value: selected,
                  onChanged: (_) => onToggle(),
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
              ApplicantAvatar(name: name, gender: a?.gender, size: 40, photoUrl: a?.photoUrl),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name ?? 'Not provided',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      [row.admissionNo, if (phone != null && phone.isNotEmpty) phone].join('  ·  '),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontFamily: 'monospace', fontSize: 12, color: AppColors.textMuted),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 6,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        ClassChip(row.currentClass?.className),
                        Text(
                          row.rollNo != null && row.rollNo!.isNotEmpty ? 'Roll ${row.rollNo}' : 'Not assigned',
                          style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Admitted ${formatDate(row.admissionDate)}',
                      style: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  StatusBadge(
                    label: status == null || status.isEmpty ? '—' : status.replaceFirst('_', ' '),
                    variant: studentStatusVariant(status),
                  ),
                  IconButton(
                    onPressed: onOpen,
                    tooltip: 'View student',
                    icon: const Icon(Icons.visibility_outlined, size: 20),
                    color: AppColors.textMuted,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
