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
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/school_admin_providers.dart';
import '../services/staff_directory_service.dart';
import 'school_admin_page_scaffold.dart';
import 'staff_account_actions.dart';
import 'staff_form_sheets.dart';

/// StaffListPage's one-off accent for its primary action (the approved
/// Employee Management visual — deliberately not the brand blue, and
/// scoped to this page only, same as the web's ACCENT_BTN).
const _accent = Color(0xFF0D9488);

/// Employee Management — web features/staff/pages/StaffListPage.jsx.
/// The table becomes a card per employee (a 2-column grid on tablets);
/// the filter row folds into an expandable panel on phones. The web's CSV
/// Export isn't ported (the app has no file-saving dependency).
class StaffListScreen extends ConsumerStatefulWidget {
  const StaffListScreen({super.key, this.addRole});

  /// The web's `?addRole=` deep link (Librarians/Receptionists pages'
  /// "Add …" buttons): opens Add Staff with that role pre-ticked.
  final String? addRole;

  @override
  ConsumerState<StaffListScreen> createState() => _StaffListScreenState();
}

class _StaffListScreenState extends ConsumerState<StaffListScreen> {
  final _search = TextEditingController();
  final _department = TextEditingController();
  final _designation = TextEditingController();
  Timer? _debounce;
  StaffQuery _query = const StaffQuery();
  bool _filtersOpen = false;

  @override
  void initState() {
    super.initState();
    final role = widget.addRole;
    if (role != null && assignableStaffRoles.contains(role)) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _openCreate([role]);
      });
    }
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _search.dispose();
    _department.dispose();
    _designation.dispose();
    super.dispose();
  }

  /// Text filters are debounced 300ms (web useDebounce); every filter
  /// change goes back to page 1.
  void _onTextChanged() {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      if (!mounted) return;
      setState(
        () => _query = _query.copyWith(
          search: _search.text.trim(),
          department: _department.text.trim(),
          designation: _designation.text.trim(),
          page: 1,
        ),
      );
    });
  }

  void _set(StaffQuery q) => setState(() => _query = q.copyWith(page: 1));

  bool get _hasActiveFilters =>
      _search.text.isNotEmpty ||
      _department.text.isNotEmpty ||
      _designation.text.isNotEmpty ||
      _query.role.isNotEmpty ||
      _query.employmentStatus.isNotEmpty ||
      _query.employeeType.isNotEmpty ||
      _query.joiningFrom.isNotEmpty ||
      _query.joiningTo.isNotEmpty;

  void _clearFilters() {
    _debounce?.cancel();
    _search.clear();
    _department.clear();
    _designation.clear();
    setState(() => _query = const StaffQuery());
  }

  Future<void> _openCreate([List<String> roles = const []]) => showAddStaffSheet(context, initialRoles: roles);

  Future<void> _refresh() async {
    ref.invalidate(staffListProvider(_query));
    ref.invalidate(staffSummaryProvider);
    await ref.read(staffListProvider(_query).future).catchError((_) => const StaffPage());
  }

  @override
  Widget build(BuildContext context) {
    final summary = ref.watch(staffSummaryProvider).value;
    final list = ref.watch(staffListProvider(_query));
    final summaryTotal = summary?.total ?? 0;
    final assignments = (summary?.roles ?? const <StaffRoleCount>[]).fold<int>(0, (sum, r) => sum + r.count);
    final unassigned = summary?.unassigned ?? 0;
    final schoolName = ref.watch(schoolLogoProvider)?.institutionName;

    final subtitle = [
      'Manage employee profiles, qualifications, experience and documents',
      ?schoolName,
      '$summaryTotal staff',
      '$assignments role assignment${assignments == 1 ? '' : 's'}',
      if (unassigned > 0) '$unassigned unassigned',
    ].join(' · ');

    return SchoolAdminPageScaffold(
      title: 'Employee Management',
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: _accent,
        foregroundColor: Colors.white,
        onPressed: _openCreate,
        icon: const Icon(Icons.add),
        label: const Text('Add Employee'),
      ),
      body: ResponsiveListView(
        onRefresh: _refresh,
        padding: EdgeInsets.fromLTRB(context.isTabletWidth ? 24 : 16, 16, context.isTabletWidth ? 24 : 16, 96),
        children: [
          PageHeading(
            icon: Icons.manage_accounts_outlined,
            iconColor: _accent,
            title: 'Employee Management',
            subtitle: subtitle,
          ),
          const SizedBox(height: 16),
          _filters(summary),
          const SizedBox(height: 16),
          list.when(
            skipLoadingOnRefresh: true,
            loading: () => const LoadingView(label: 'Loading employees…'),
            error: (err, _) =>
                ErrorView(message: describeError(err), onRetry: () => ref.invalidate(staffListProvider(_query))),
            data: (page) => page.data.isEmpty
                ? SectionCard(
                    child: EmptyState(
                      icon: Icons.manage_accounts_outlined,
                      title: 'No employees found',
                      message: _hasActiveFilters
                          ? 'No employees match your search or filters.'
                          : 'Get started by adding your first employee.',
                      actionLabel: _hasActiveFilters ? null : 'Add Employee',
                      onAction: _hasActiveFilters ? null : _openCreate,
                    ),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ResponsiveGrid(
                        minItemWidth: 420,
                        maxColumns: 2,
                        children: [for (final m in page.data) _EmployeeCard(member: m)],
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

  Widget _filters(StaffSummary? summary) {
    final roles = summary?.roles ?? const <StaffRoleCount>[];
    final extraCount = [
      _department.text,
      _designation.text,
      _query.employeeType,
      _query.employmentStatus,
      _query.joiningFrom,
      _query.joiningTo,
    ].where((v) => v.isNotEmpty).length;

    final search = TextField(
      controller: _search,
      onChanged: (_) => _onTextChanged(),
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: 'Search by name, employee ID, mobile or email…',
        prefixIcon: const Icon(Icons.search),
        border: const OutlineInputBorder(),
        isDense: true,
        suffixIcon: _search.text.isEmpty
            ? null
            : IconButton(
                icon: const Icon(Icons.clear),
                tooltip: 'Clear',
                onPressed: () {
                  _search.clear();
                  _onTextChanged();
                },
              ),
      ),
    );
    final roleSelect = OptionSelect(
      label: 'Role',
      value: _query.role,
      placeholder: 'All Staff (${summary?.total ?? 0})',
      options: [for (final r in roles) (r.roleName, '${r.roleName} · ${r.count}')],
      onChanged: (v) => _set(_query.copyWith(role: v)),
    );

    DateTime? parse(String v) => v.isEmpty ? null : DateTime.tryParse(v);
    final panel = LayoutBuilder(
      builder: (context, c) {
        final cols = c.maxWidth >= 760 ? 3 : (c.maxWidth >= 440 ? 2 : 1);
        final w = (c.maxWidth - 12 * (cols - 1)) / cols;
        Widget cell(Widget child, {int span = 1}) =>
            SizedBox(width: span >= cols ? c.maxWidth : w * span + 12 * (span - 1), child: child);
        return Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            cell(
              TextField(
                controller: _department,
                onChanged: (_) => _onTextChanged(),
                decoration: const InputDecoration(
                  labelText: 'Department',
                  hintText: 'All departments',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            cell(
              TextField(
                controller: _designation,
                onChanged: (_) => _onTextChanged(),
                decoration: const InputDecoration(
                  labelText: 'Designation',
                  hintText: 'All designations',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            cell(
              OptionSelect(
                label: 'Employment type',
                value: _query.employeeType,
                placeholder: 'Any type',
                options: [for (final t in employeeTypeOptions) (t, t)],
                onChanged: (v) => _set(_query.copyWith(employeeType: v)),
              ),
            ),
            cell(
              OptionSelect(
                label: 'Employee status',
                value: _query.employmentStatus,
                placeholder: 'Any status',
                options: employmentStatusOptions,
                onChanged: (v) => _set(_query.copyWith(employmentStatus: v)),
              ),
            ),
            cell(
              span: 2,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Joined between',
                    style: TextStyle(fontWeight: FontWeight.w500, color: AppColors.textSecondary),
                  ),
                  const SizedBox(height: 6),
                  FieldPair(
                    first: DateField(
                      label: 'From',
                      value: parse(_query.joiningFrom),
                      onPicked: (d) => _set(_query.copyWith(joiningFrom: isoDate(d))),
                      onClear: () => _set(_query.copyWith(joiningFrom: '')),
                    ),
                    second: DateField(
                      label: 'To',
                      value: parse(_query.joiningTo),
                      onPicked: (d) => _set(_query.copyWith(joiningTo: isoDate(d))),
                      onClear: () => _set(_query.copyWith(joiningTo: '')),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        LayoutBuilder(
          builder: (context, c) => c.maxWidth >= 600
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: search),
                    const SizedBox(width: 12),
                    SizedBox(width: 240, child: roleSelect),
                  ],
                )
              : Column(children: [search, const SizedBox(height: 12), roleSelect]),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            TextButton.icon(
              onPressed: () => setState(() => _filtersOpen = !_filtersOpen),
              icon: Icon(_filtersOpen ? Icons.expand_less : Icons.tune, size: 18),
              label: Text(extraCount == 0 ? 'More filters' : 'More filters ($extraCount)'),
            ),
            if (_hasActiveFilters)
              TextButton.icon(
                onPressed: _clearFilters,
                style: TextButton.styleFrom(foregroundColor: AppColors.textMuted),
                icon: const Icon(Icons.close, size: 16),
                label: const Text('Clear filters'),
              ),
          ],
        ),
        if (_filtersOpen) ...[const SizedBox(height: 8), panel],
      ],
    );
  }
}

/// One table row of StaffListPage as a card: employee, contact,
/// designation, type, joined, status and the row's action buttons.
class _EmployeeCard extends ConsumerWidget {
  const _EmployeeCard({required this.member});

  final StaffMember member;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final m = member;
    final status = m.employmentStatus ?? 'ACTIVE';
    final isActive = status == 'ACTIVE';
    final phone = (m.mobileNo?.isNotEmpty ?? false) ? m.mobileNo : m.contactNumber;
    final hasPhone = phone != null && phone.isNotEmpty;
    final hasEmail = m.email != null && m.email!.isNotEmpty;
    final userId = m.userId;
    final actions = userId == null
        ? null
        : StaffAccountActions(ref, userId: userId, staffId: m.staffId, name: m.fullName);
    void view() => context.go('/school-admin/staff/${m.staffId}');

    Widget meta(String label, String value) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
        const SizedBox(height: 2),
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
        ),
      ],
    );

    Widget action(IconData icon, String tooltip, Color color, VoidCallback? onTap) => IconButton(
      onPressed: onTap,
      tooltip: tooltip,
      icon: Icon(icon, size: 20, color: color),
      style: IconButton.styleFrom(hoverColor: color.withValues(alpha: 0.08)),
    );

    return SectionCard(
      padding: const EdgeInsets.fromLTRB(16, 14, 8, 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: view,
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Row(
                children: [
                  StaffAvatar(name: m.fullName, photoUrl: m.profilePhotoUrl, size: 40),
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
                          m.employeeCode ?? '—',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontFamily: 'monospace', fontSize: 12, color: AppColors.textMuted),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  _StatusPill(status: status),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  roleDesignationLabel(m.roles, m.designation),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
                ),
                if (m.department != null && m.department!.isNotEmpty)
                  Text(m.department!, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                const SizedBox(height: 8),
                if (!hasPhone && !hasEmail)
                  const Text(
                    'No contact info',
                    style: TextStyle(fontSize: 12, color: AppColors.textMuted, fontStyle: FontStyle.italic),
                  )
                else ...[
                  if (hasPhone) _IconLine(icon: Icons.phone_outlined, text: phone),
                  if (hasEmail) _IconLine(icon: Icons.mail_outline, text: m.email!),
                ],
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(child: meta('Type', m.employeeType ?? '—')),
                    Expanded(child: meta('Joined', m.dateOfJoining == null ? '—' : formatDate(m.dateOfJoining))),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          const Divider(height: 12, color: AppColors.border),
          Wrap(
            alignment: WrapAlignment.end,
            children: [
              action(Icons.visibility_outlined, 'View', AppColors.primary, view),
              action(Icons.edit_outlined, 'Edit', AppColors.violet, () => showEditStaffSheet(context, m.staffId)),
              if (isActive)
                action(
                  Icons.block,
                  'Deactivate',
                  AppColors.danger,
                  actions == null ? null : () => actions.confirmDeactivateEmployee(context),
                )
              else
                action(
                  Icons.restart_alt,
                  'Reactivate',
                  AppColors.success,
                  actions == null ? null : () => actions.confirmReactivateEmployee(context),
                ),
              action(
                Icons.lock_outline,
                'Unlock',
                AppColors.amber,
                actions == null ? null : () => actions.unlock(context),
              ),
              action(
                Icons.key_outlined,
                'Reset Password',
                AppColors.teal,
                userId == null
                    ? null
                    : () => showResetStaffPasswordSheet(context, userId: userId, staffName: m.fullName),
              ),
              action(
                Icons.delete_outline,
                'Delete',
                AppColors.danger,
                actions == null ? null : () => actions.confirmDelete(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Status dot + badge (StaffListPage's status column).
class _StatusPill extends StatelessWidget {
  const _StatusPill({required this.status});

  final String status;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(color: employmentStatusDot(status), shape: BoxShape.circle),
        ),
        const SizedBox(width: 6),
        StatusBadge(label: employmentStatusLabel(status), variant: employmentStatusVariant(status)),
      ],
    );
  }
}

class _IconLine extends StatelessWidget {
  const _IconLine({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Row(
        children: [
          Icon(icon, size: 14, color: AppColors.textMuted),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
            ),
          ),
        ],
      ),
    );
  }
}
