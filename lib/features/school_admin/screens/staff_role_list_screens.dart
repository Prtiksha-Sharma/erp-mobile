import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/admin_staff.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/error_view.dart';
import '../../../ui/widgets/info_field.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/school_admin_providers.dart';
import '../services/staff_directory_service.dart';
import 'school_admin_nav.dart';
import 'principal_management_widgets.dart';
import 'school_admin_page_scaffold.dart';
import 'staff_account_actions.dart';
import 'staff_form_sheets.dart';

/// The role-filtered views of the one staff roster (GET /admin/staff?role=…):
/// web TeachersListPage, LibrariansListPage, ReceptionistsListPage and
/// PrincipalManagementPage, their cards, and the Teacher/Librarian/
/// Receptionist/Principal detail modals (one sheet here,
/// [showStaffDetailSheet]).

// ── Teachers ─────────────────────────────────────────────────────────────

class TeachersListScreen extends ConsumerStatefulWidget {
  const TeachersListScreen({super.key});

  @override
  ConsumerState<TeachersListScreen> createState() => _TeachersListScreenState();
}

class _TeachersListScreenState extends ConsumerState<TeachersListScreen> {
  final _search = TextEditingController();
  Timer? _debounce;
  StaffQuery _query = const StaffQuery(role: 'Teacher');
  bool _grid = true;

  @override
  void dispose() {
    _debounce?.cancel();
    _search.dispose();
    super.dispose();
  }

  void _onSearch(String _) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      if (mounted) setState(() => _query = _query.copyWith(search: _search.text.trim(), page: 1));
    });
  }

  @override
  Widget build(BuildContext context) {
    final list = ref.watch(staffListProvider(_query));
    final total = list.value?.total;
    return SchoolAdminPageScaffold(
      title: 'Teachers',
      body: ResponsiveListView(
        onRefresh: () => ref.refresh(staffListProvider(_query).future).then<void>((_) {}, onError: (_) {}),
        children: [
          PageHeading(
            icon: Icons.school_outlined,
            title: list.isLoading && total == null ? 'Teachers' : 'Teachers (${total ?? 0})',
            trailing: SegmentedButton<bool>(
              showSelectedIcon: false,
              style: const ButtonStyle(visualDensity: VisualDensity.compact),
              segments: const [
                ButtonSegment(value: false, icon: Icon(Icons.view_list_outlined, size: 18), tooltip: 'List view'),
                ButtonSegment(value: true, icon: Icon(Icons.grid_view_outlined, size: 18), tooltip: 'Grid view'),
              ],
              selected: {_grid},
              onSelectionChanged: (s) => setState(() => _grid = s.first),
            ),
          ),
          const SizedBox(height: 16),
          _SearchField(controller: _search, hint: 'Search teachers…', onChanged: _onSearch),
          const SizedBox(height: 16),
          list.when(
            skipLoadingOnRefresh: true,
            loading: () => const LoadingView(label: 'Loading teachers…'),
            error: (err, _) =>
                ErrorView(message: describeError(err), onRetry: () => ref.invalidate(staffListProvider(_query))),
            data: (page) => page.data.isEmpty
                ? const SectionCard(
                    child: EmptyState(
                      icon: Icons.school_outlined,
                      title: 'No teachers found',
                      message: 'No teacher records match your search.',
                    ),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (_grid)
                        ResponsiveGrid(
                          minItemWidth: 280,
                          maxColumns: 4,
                          children: [
                            for (final t in page.data)
                              _StaffCard(
                                member: t,
                                fallbackRole: 'Teacher',
                                onView: () => showStaffDetailSheet(context, t.staffId, kind: StaffDetailKind.staff),
                              ),
                          ],
                        )
                      else
                        DividedCard(
                          children: [
                            for (final t in page.data)
                              _TeacherRow(
                                member: t,
                                onTap: () => showStaffDetailSheet(context, t.staffId, kind: StaffDetailKind.staff),
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
                  ),
          ),
        ],
      ),
    );
  }
}

/// TeachersListPage's list view (its table COLUMNS) as a row.
class _TeacherRow extends StatelessWidget {
  const _TeacherRow({required this.member, required this.onTap});

  final StaffMember member;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final m = member;
    final status = m.employmentStatus;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    m.fullName,
                    style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                  ),
                ),
                const SizedBox(width: 8),
                StatusBadge(label: status ?? '—', variant: employmentStatusVariant(status)),
              ],
            ),
            Text(
              m.employeeCode ?? '—',
              style: const TextStyle(fontSize: 12, color: AppColors.textMuted, fontFamily: 'monospace'),
            ),
            const SizedBox(height: 8),
            Wrap(spacing: 4, runSpacing: 4, children: [for (final r in m.roles) StatusBadge(label: r)]),
            const SizedBox(height: 8),
            InfoGrid(
              minColumnWidth: 160,
              children: [
                InfoField(label: 'Department', value: m.department),
                InfoField(label: 'Phone', value: m.mobileNo),
                InfoField(label: 'Email', value: m.email),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ── Librarians / Receptionists ───────────────────────────────────────────

/// LibrariansListPage / ReceptionistsListPage (and PrincipalManagementPage,
/// with extras) — identical pages for a different role. "Add …" deep-links into Employee Management's Add
/// Staff with the role pre-ticked, exactly like the web's `?addRole=`.
class RoleStaffListScreen extends ConsumerStatefulWidget {
  const RoleStaffListScreen.librarians({super.key})
    : role = 'Librarian',
      title = 'Librarians',
      icon = Icons.menu_book_outlined,
      kind = StaffDetailKind.librarian;

  const RoleStaffListScreen.receptionists({super.key})
    : role = 'Receptionist',
      title = 'Receptionists',
      icon = Icons.how_to_reg_outlined,
      kind = StaffDetailKind.receptionist;

  /// PrincipalManagementPage — the same roster page plus stat tiles, a
  /// Manage Permissions shortcut and the Recent Activity feed.
  const RoleStaffListScreen.principals({super.key})
    : role = 'Principal',
      title = 'Principal Management',
      icon = Icons.shield_outlined,
      kind = StaffDetailKind.principal;

  final String role;
  final String title;
  final IconData icon;
  final StaffDetailKind kind;

  @override
  ConsumerState<RoleStaffListScreen> createState() => _RoleStaffListScreenState();
}

class _RoleStaffListScreenState extends ConsumerState<RoleStaffListScreen> {
  final _search = TextEditingController();
  Timer? _debounce;
  late StaffQuery _query = StaffQuery(role: widget.role, limit: 12);

  bool get _isPrincipal => widget.kind == StaffDetailKind.principal;

  @override
  void dispose() {
    _debounce?.cancel();
    _search.dispose();
    super.dispose();
  }

  void _onSearch(String _) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      if (mounted) setState(() => _query = _query.copyWith(search: _search.text.trim(), page: 1));
    });
  }

  @override
  Widget build(BuildContext context) {
    final role = widget.role;
    final list = ref.watch(staffListProvider(_query));
    final branches = ref.watch(schoolBranchesProvider).value ?? const [];
    final schoolName = ref.watch(schoolLogoProvider)?.institutionName;
    final total = list.value?.total;
    // Header stat tiles summarise the whole roster, independent of the
    // list's own filters (no aggregate endpoint exists; the backend caps a
    // page at 100, so Active / Branches are exact up to 100 principals).
    final roster = _isPrincipal ? ref.watch(staffListProvider(StaffQuery(role: widget.role, limit: 100))) : null;
    final stats = roster?.value == null ? null : PrincipalStats.of(roster!.value!);
    final filtered = _search.text.isNotEmpty || _query.employmentStatus.isNotEmpty || _query.branchId.isNotEmpty;

    final statusSelect = OptionSelect(
      label: 'Status',
      value: _query.employmentStatus,
      placeholder: 'All status',
      options: const [('ACTIVE', 'Active'), ('INACTIVE', 'Inactive')],
      onChanged: (v) => setState(() => _query = _query.copyWith(employmentStatus: v, page: 1)),
    );
    final branchSelect = branches.isEmpty
        ? null
        : OptionSelect(
            label: 'Branch',
            value: _query.branchId,
            placeholder: 'All branches',
            options: [for (final b in branches) (b.branchId, b.branchName)],
            onChanged: (v) => setState(() => _query = _query.copyWith(branchId: v, page: 1)),
          );

    return SchoolAdminPageScaffold(
      title: widget.title,
      body: ResponsiveListView(
        onRefresh: () => ref.refresh(staffListProvider(_query).future).then<void>((_) {}, onError: (_) {}),
        children: [
          // Hero banner (brand gradient).
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(gradient: AppColors.brandGradient, borderRadius: BorderRadius.circular(16)),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 12,
              runSpacing: 12,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (!_isPrincipal) ...[
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(widget.icon, size: 14, color: Colors.white70),
                          const SizedBox(width: 6),
                          Text(
                            schoolName != null ? '$schoolName · School Admin' : 'School Admin',
                            style: const TextStyle(fontSize: 12, color: Colors.white70),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                    ],
                    Text.rich(
                      TextSpan(
                        text: widget.title,
                        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
                        children: [
                          if (total != null && !_isPrincipal)
                            TextSpan(
                              text: '  ($total)',
                              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white70),
                            ),
                        ],
                      ),
                    ),
                    if (_isPrincipal)
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          stats == null
                              ? 'Loading…'
                              : '${stats.active} active principal${stats.active == 1 ? '' : 's'} across your school',
                          style: const TextStyle(color: Colors.white70),
                        ),
                      ),
                  ],
                ),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    if (_isPrincipal)
                      OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          side: const BorderSide(color: Colors.white54),
                        ),
                        onPressed: () => context.go(
                          Uri(path: SchoolAdminPaths.rolePermissions, queryParameters: {'role': role}).toString(),
                        ),
                        icon: const Icon(Icons.verified_user_outlined, size: 18),
                        label: const Text('Manage Permissions'),
                      ),
                    FilledButton.icon(
                      style: FilledButton.styleFrom(backgroundColor: Colors.white, foregroundColor: AppColors.primary),
                      onPressed: () =>
                          context.go(Uri(path: '/school-admin/staff', queryParameters: {'addRole': role}).toString()),
                      icon: const Icon(Icons.person_add_alt_1_outlined, size: 18),
                      label: Text('Add $role'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (_isPrincipal) ...[const SizedBox(height: 16), PrincipalStatTiles(stats: stats)],
          const SizedBox(height: 16),
          SectionCard(
            child: LayoutBuilder(
              builder: (context, c) {
                final search = _SearchField(
                  controller: _search,
                  hint: 'Search by name, code, or email…',
                  onChanged: _onSearch,
                );
                if (c.maxWidth < 600) {
                  return Column(
                    children: [
                      search,
                      const SizedBox(height: 12),
                      statusSelect,
                      if (branchSelect != null) ...[const SizedBox(height: 12), branchSelect],
                    ],
                  );
                }
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: search),
                    const SizedBox(width: 12),
                    SizedBox(width: 190, child: statusSelect),
                    if (branchSelect != null) ...[const SizedBox(width: 12), SizedBox(width: 190, child: branchSelect)],
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          list.when(
            skipLoadingOnRefresh: true,
            loading: () => LoadingView(label: 'Loading $role accounts…'),
            error: (err, _) =>
                ErrorView(message: describeError(err), onRetry: () => ref.invalidate(staffListProvider(_query))),
            data: (page) => page.data.isEmpty
                ? SectionCard(
                    child: EmptyState(
                      icon: widget.icon,
                      title: 'No $role account found',
                      message: filtered
                          ? 'No $role accounts match your search or filter.'
                          : 'Add one from Staff → "Add Staff" with role set to $role, or use "Add $role" above.',
                    ),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ResponsiveGrid(
                        minItemWidth: 280,
                        maxColumns: 4,
                        spacing: 16,
                        children: [
                          for (final m in page.data)
                            _StaffCard(
                              member: m,
                              fallbackRole: role,
                              accented: true,
                              onView: () => showStaffDetailSheet(context, m.staffId, kind: widget.kind),
                            ),
                        ],
                      ),
                      if (page.total > _query.limit) ...[
                        const SizedBox(height: 16),
                        PaginationBar(
                          page: _query.page,
                          total: page.total,
                          pageSize: _query.limit,
                          onChange: (p) => setState(() => _query = _query.copyWith(page: p)),
                        ),
                      ],
                    ],
                  ),
          ),
          if (_isPrincipal) ...[const SizedBox(height: 16), const PrincipalActivityCard()],
        ],
      ),
    );
  }
}

class _SearchField extends StatelessWidget {
  const _SearchField({required this.controller, required this.hint, required this.onChanged});

  final TextEditingController controller;
  final String hint;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: const Icon(Icons.search),
        border: const OutlineInputBorder(),
        filled: true,
        fillColor: Colors.white,
        isDense: true,
      ),
    );
  }
}

/// TeacherCard / LibrarianCard / ReceptionistCard. [accented] adds the
/// Librarian/Receptionist cards' accent wash, top border, avatar ring,
/// login-locked marker and branch badge.
class _StaffCard extends StatelessWidget {
  const _StaffCard({required this.member, required this.fallbackRole, required this.onView, this.accented = false});

  final StaffMember member;
  final String fallbackRole;
  final VoidCallback onView;
  final bool accented;

  @override
  Widget build(BuildContext context) {
    final m = member;
    final (accent, _) = accentFor(m.fullName);
    final status = m.employmentStatus ?? 'ACTIVE';
    final isActive = status == 'ACTIVE';
    final subtitle = m.roles.length == 1 && (m.designation?.isNotEmpty ?? false)
        ? '${m.roles.first} · ${m.designation}'
        : (m.roles.isNotEmpty ? m.roles.first : fallbackRole);
    final locked = accented && m.accountStatus != null && m.accountStatus != 'ACTIVE';

    Widget line(IconData icon, String? text) => Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          Icon(icon, size: 14, color: AppColors.textMuted),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text ?? '—',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
            ),
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: accented
            ? LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color.alphaBlend(accent.withValues(alpha: 0.18), Colors.white), Colors.white],
                stops: const [0, 0.6],
              )
            : null,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (accented) Container(height: 3, color: accent),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        m.employeeCode ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 12, fontFamily: 'monospace', color: AppColors.textMuted),
                      ),
                    ),
                    if (locked)
                      Tooltip(
                        message: 'Login: ${m.accountStatus}',
                        child: Container(
                          width: 20,
                          height: 20,
                          margin: const EdgeInsets.only(right: 6),
                          decoration: const BoxDecoration(color: AppColors.dangerBg, shape: BoxShape.circle),
                          child: const Icon(Icons.lock_outline, size: 12, color: AppColors.danger),
                        ),
                      ),
                    _ActivePill(active: isActive, status: status),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    StaffAvatar(name: m.fullName, photoUrl: m.profilePhotoUrl, size: 44, ring: accented),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            m.fullName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                          ),
                          Text(
                            subtitle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                line(Icons.mail_outline, m.email),
                line(Icons.phone_outlined, m.mobileNo),
                const Divider(height: 20, color: AppColors.border),
                Row(
                  children: [
                    Expanded(
                      child: Wrap(
                        spacing: 6,
                        runSpacing: 6,
                        children: [
                          if (m.department?.isNotEmpty ?? false)
                            StatusBadge(label: m.department!, variant: BadgeVariant.primary),
                          if (accented && (m.branch?.branchName?.isNotEmpty ?? false))
                            StatusBadge(label: m.branch!.branchName!),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    OutlinedButton(onPressed: onView, child: const Text('View Details')),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ActivePill extends StatelessWidget {
  const _ActivePill({required this.active, required this.status});

  final bool active;
  final String status;

  @override
  Widget build(BuildContext context) {
    final color = active ? AppColors.success : AppColors.textMuted;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: active ? AppColors.successBg : AppColors.pageBg,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          const SizedBox(width: 6),
          Text(
            active ? 'Active' : status,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: color),
          ),
        ],
      ),
    );
  }
}

// ── Detail sheet (TeacherDetailModal / LibrarianDetailModal / …) ─────────

enum StaffDetailKind {
  /// TeacherDetailModal — "Staff Details", plus Class Teacher Of, Subjects
  /// Taught and Principal Remarks.
  staff('Staff Details', 'Loading teacher…'),
  librarian('Librarian Details', 'Loading librarian…'),
  receptionist('Receptionist Details', 'Loading receptionist…'),
  principal('Principal Details', 'Loading principal…');

  const StaffDetailKind(this.title, this.loadingLabel);

  final String title;
  final String loadingLabel;
}

Future<void> showStaffDetailSheet(BuildContext context, String staffId, {required StaffDetailKind kind}) =>
    showAdminFormSheet<void>(context, (_) => _StaffDetailSheet(staffId: staffId, kind: kind));

class _StaffDetailSheet extends ConsumerWidget {
  const _StaffDetailSheet({required this.staffId, required this.kind});

  final String staffId;
  final StaffDetailKind kind;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final staff = ref.watch(staffDetailProvider(staffId));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        SheetTitle(kind.title),
        staff.when(
          skipLoadingOnRefresh: true,
          loading: () => LoadingView(label: kind.loadingLabel),
          error: (err, _) =>
              ErrorView(message: describeError(err), onRetry: () => ref.invalidate(staffDetailProvider(staffId))),
          data: (s) => _StaffDetailContent(staff: s, kind: kind),
        ),
      ],
    );
  }
}

class _StaffDetailContent extends ConsumerWidget {
  const _StaffDetailContent({required this.staff, required this.kind});

  final StaffMember staff;
  final StaffDetailKind kind;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = staff;
    final userId = s.userId;
    final actions = userId == null
        ? null
        : StaffAccountActions(ref, userId: userId, staffId: s.staffId, name: s.fullName);
    final reportsTo = s.reportsTo == null
        ? null
        : '${s.reportsTo!.fullName ?? ''}${(s.reportsTo!.designation?.isNotEmpty ?? false) ? ' (${s.reportsTo!.designation})' : ''}';
    const divider = Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Divider(height: 1, color: AppColors.border),
    );

    Widget section(IconData icon, Color color, String title, List<Widget> badges) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        divider,
        Row(
          children: [
            Icon(icon, size: 16, color: color),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Wrap(spacing: 6, runSpacing: 6, children: badges),
      ],
    );

    Widget contact(IconData icon, String label, String? value) => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Icon(icon, size: 16, color: AppColors.textMuted),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: InfoField(label: label, value: value),
        ),
      ],
    );

    final accountRow = actions == null
        ? const SizedBox.shrink()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              divider,
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  if (s.accountStatus == 'ACTIVE')
                    FilledButton.icon(
                      style: FilledButton.styleFrom(backgroundColor: AppColors.danger),
                      onPressed: () => actions.confirmDeactivateAccount(context),
                      icon: const Icon(Icons.block, size: 16),
                      label: const Text('Deactivate'),
                    )
                  else
                    OutlinedButton.icon(
                      onPressed: () => actions.activate(context),
                      icon: const Icon(Icons.check_circle_outline, size: 16),
                      label: const Text('Activate'),
                    ),
                  OutlinedButton.icon(
                    onPressed: () => actions.unlock(context),
                    icon: const Icon(Icons.lock_outline, size: 16),
                    label: const Text('Unlock'),
                  ),
                  OutlinedButton.icon(
                    onPressed: () => showResetStaffPasswordSheet(context, userId: userId!, staffName: s.fullName),
                    icon: const Icon(Icons.restart_alt, size: 16),
                    label: const Text('Reset Password'),
                  ),
                  OutlinedButton.icon(
                    onPressed: () async {
                      final deleted = await actions.confirmDelete(
                        context,
                        title: kind == StaffDetailKind.principal ? 'Delete Principal Account' : 'Delete Staff Account',
                      );
                      if (deleted && context.mounted) Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.delete_outline, size: 16),
                    label: const Text('Delete'),
                  ),
                ],
              ),
            ],
          );

    final directReports = s.directReports.isEmpty
        ? const SizedBox.shrink()
        : section(Icons.groups_outlined, AppColors.primary, 'Direct Reports', [
            for (final r in s.directReports)
              StatusBadge(
                label: '${r.fullName ?? ''}${(r.designation?.isNotEmpty ?? false) ? ' · ${r.designation}' : ''}',
                variant: BadgeVariant.primary,
              ),
          ]);

    final isTeacherSheet = kind == StaffDetailKind.staff;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            StaffAvatar(name: s.fullName, photoUrl: s.profilePhotoUrl, size: 56),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    s.fullName,
                    style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
                  ),
                  Text(
                    s.employeeCode ?? '',
                    style: const TextStyle(fontSize: 12, fontFamily: 'monospace', color: AppColors.textMuted),
                  ),
                  const SizedBox(height: 6),
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: [
                      for (final r in s.roles) StatusBadge(label: r, variant: BadgeVariant.primary),
                      StatusBadge(
                        label: s.employmentStatus ?? '—',
                        variant: s.employmentStatus == 'ACTIVE' ? BadgeVariant.success : BadgeVariant.neutral,
                      ),
                      StatusBadge(
                        label: 'Login: ${s.accountStatus ?? '—'}',
                        variant: s.accountStatus == 'ACTIVE' ? BadgeVariant.success : BadgeVariant.warning,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        InfoGrid(
          children: [
            InfoField(label: 'Designation', value: s.designation),
            InfoField(label: 'Department', value: s.department),
            InfoField(label: 'Date of Joining', value: s.dateOfJoining == null ? null : formatDate(s.dateOfJoining)),
            InfoField(label: 'Date of Birth', value: s.dateOfBirth == null ? null : formatDate(s.dateOfBirth)),
            InfoField(label: 'Gender', value: s.gender),
            InfoField(label: 'Qualification', value: s.qualification),
            InfoField(label: 'Branch', value: s.branch?.branchName),
            InfoField(label: 'Reports To', value: reportsTo),
          ],
        ),
        divider,
        InfoGrid(
          children: [contact(Icons.mail_outline, 'Email', s.email), contact(Icons.phone_outlined, 'Phone', s.mobileNo)],
        ),
        const SizedBox(height: 14),
        contact(Icons.place_outlined, 'Address', s.address),
        if (isTeacherSheet) ...[
          accountRow,
          if (s.classTeacherAssignments.isNotEmpty)
            section(Icons.work_outline, AppColors.amber, 'Class Teacher Of', [
              for (final a in s.classTeacherAssignments)
                StatusBadge(
                  label: [a.classes?.className, a.sections?.sectionName].whereType<String>().join(' '),
                  variant: BadgeVariant.warning,
                ),
            ]),
          if (s.subjectAssignments.isNotEmpty)
            section(Icons.menu_book_outlined, AppColors.violet, 'Subjects Taught', [
              for (final a in s.subjectAssignments)
                StatusBadge(
                  label:
                      '${a.subject?.subjectName ?? ''} · '
                      '${[a.classes?.className, a.sections?.sectionName].whereType<String>().join(' ')}',
                  variant: BadgeVariant.info,
                ),
            ]),
          directReports,
          divider,
          const Row(
            children: [
              Icon(Icons.verified_user_outlined, size: 16, color: AppColors.primary),
              SizedBox(width: 8),
              Text(
                'Principal Remarks',
                style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
              ),
            ],
          ),
          const SizedBox(height: 8),
          _PrincipalRemarks(staffId: s.staffId),
        ] else ...[
          directReports,
          accountRow,
          if (kind == StaffDetailKind.principal) const PrincipalPermissionsSummary(),
        ],
      ],
    );
  }
}

/// PrincipalRemarksSection — read-only for School Admin (adding a remark
/// is Principal-only server-side, so there's no Add control here).
class _PrincipalRemarks extends ConsumerWidget {
  const _PrincipalRemarks({required this.staffId});

  final String staffId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final remarks = ref.watch(staffPrincipalRemarksProvider(staffId));
    return remarks.when(
      skipLoadingOnRefresh: true,
      loading: () => const Text('Loading…', style: TextStyle(color: AppColors.textMuted)),
      error: (err, _) => Row(
        children: [
          Expanded(
            child: Text(describeError(err), style: const TextStyle(color: AppColors.textMuted)),
          ),
          TextButton(
            onPressed: () => ref.invalidate(staffPrincipalRemarksProvider(staffId)),
            child: const Text('Retry'),
          ),
        ],
      ),
      data: (list) => list.isEmpty
          ? const Text('No remarks recorded yet.', style: TextStyle(color: AppColors.textMuted))
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (final (i, r) in list.indexed) ...[
                  if (i > 0) const Divider(height: 1, color: AppColors.border),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          spacing: 8,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            r.remarkType == 'RECOMMENDED_ACTION'
                                ? const StatusBadge(label: 'Recommended Action', variant: BadgeVariant.warning)
                                : const StatusBadge(label: 'Remark', variant: BadgeVariant.primary),
                            Text(
                              formatDate(r.createdAt),
                              style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(r.remarkText, style: const TextStyle(color: AppColors.textSecondary)),
                      ],
                    ),
                  ),
                ],
              ],
            ),
    );
  }
}
