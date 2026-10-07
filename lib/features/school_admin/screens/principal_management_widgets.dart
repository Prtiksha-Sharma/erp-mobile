import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/admin_management.dart' show PrincipalActivityItem;
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
import 'school_admin_nav.dart';

/// The Principal-only extras of web features/principals/pages/
/// PrincipalManagementPage.jsx and PrincipalDetailModal.jsx, drawn on top of
/// the shared role-roster screen (staff_role_list_screens.dart): header stat
/// tiles, the Recent Activity feed and the role-permission summary.

/// The header tiles — the whole roster, independent of the list's own
/// filters (no aggregate endpoint exists, and the backend caps a page at
/// 100, so Active / Branches are exact up to 100 principals; Total always
/// comes from the server).
class PrincipalStats {
  const PrincipalStats({required this.total, required this.active, required this.branches});

  final int total;
  final int active;
  final int branches;

  factory PrincipalStats.of(StaffPage page) => PrincipalStats(
    total: page.total,
    active: page.data.where((p) => (p.employmentStatus ?? 'ACTIVE') == 'ACTIVE').length,
    branches: page.data.map((p) => p.branch?.branchName).whereType<String>().where((n) => n.isNotEmpty).toSet().length,
  );
}

class PrincipalStatTiles extends StatelessWidget {
  const PrincipalStatTiles({super.key, required this.stats});

  final PrincipalStats? stats;

  @override
  Widget build(BuildContext context) {
    String v(int? n) => n?.toString() ?? '—';
    return ResponsiveGrid(
      minItemWidth: 160,
      maxColumns: 3,
      spacing: 16,
      children: [
        _StatBox(label: 'Total principals', value: v(stats?.total), color: AppColors.primaryLight),
        _StatBox(label: 'Active', value: v(stats?.active), color: AppColors.successBg),
        _StatBox(label: 'Branches covered', value: v(stats?.branches), color: AppColors.amberLight),
      ],
    );
  }
}

class _StatBox extends StatelessWidget {
  const _StatBox({required this.label, required this.value, required this.color});

  final String label;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: AppColors.border),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
      ],
    ),
  );
}

/// ACTIVITY_TYPE_META → (label, badge, icon); an unknown type reads as a
/// Remark, like the web.
(String, BadgeVariant, IconData) activityMeta(String? type) => switch (type) {
  'RECOMMENDED_ACTION' => ('Recommended Action', BadgeVariant.warning, Icons.assignment_outlined),
  'EVENT_APPROVAL' => ('Event Approved', BadgeVariant.success, Icons.event_available_outlined),
  _ => ('Remark', BadgeVariant.primary, Icons.chat_bubble_outline),
};

/// "Recent Activity" — the latest 20 principal remarks / event approvals.
class PrincipalActivityCard extends ConsumerWidget {
  const PrincipalActivityCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activity = ref.watch(principalActivityProvider(20));
    return SectionCard(
      title: 'Recent Activity',
      icon: Icons.timeline,
      child: activity.when(
        skipLoadingOnRefresh: true,
        loading: () => const LoadingView(label: 'Loading recent activity…'),
        error: (err, _) =>
            ErrorView(message: describeError(err), onRetry: () => ref.invalidate(principalActivityProvider(20))),
        data: (items) => items.isEmpty
            ? const EmptyState(
                icon: Icons.timeline,
                title: 'No activity to show yet',
                message: 'Remarks added and events approved by Principal will appear here.',
              )
            : Column(
                children: [
                  for (final (i, item) in items.indexed) ...[
                    if (i > 0) const Divider(height: 1, color: AppColors.border),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: _ActivityRow(item: item),
                    ),
                  ],
                ],
              ),
      ),
    );
  }
}

class _ActivityRow extends StatelessWidget {
  const _ActivityRow({required this.item});

  final PrincipalActivityItem item;

  @override
  Widget build(BuildContext context) {
    final (label, variant, icon) = activityMeta(item.activityType);
    final target = item.targetName;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(color: AppColors.pageBg, borderRadius: BorderRadius.circular(8)),
          child: Icon(icon, size: 16, color: AppColors.textSecondary),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: 8,
                runSpacing: 4,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  StatusBadge(label: label, variant: variant),
                  if (target != null && target.isNotEmpty)
                    Text(
                      target,
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                    ),
                ],
              ),
              const SizedBox(height: 4),
              Text(item.remarkText ?? '', style: const TextStyle(color: AppColors.textSecondary)),
              const SizedBox(height: 4),
              Text(
                'by ${item.performedBy ?? '—'} · ${formatDateTime(item.timestamp)}',
                style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// PRINCIPAL_PERMISSIONS — the 6 keys of the "Principal Access" module.
const principalPermissionKeys = <(String, String)>[
  ('principal.dashboard.view', 'Dashboard'),
  ('principal.student_module.view', 'Student Module'),
  ('principal.teacher_module.view', 'Teacher/Staff Module'),
  ('principal.attendance.view', 'Attendance'),
  ('principal.examination.view', 'Examination'),
  ('principal.reports.view', 'Reports'),
];

/// "Principal Role Permissions" of the detail sheet. Grants belong to the
/// role, not the person, so every Principal shares them; Manage opens Role
/// Permissions pre-scoped to Principal.
class PrincipalPermissionsSummary extends ConsumerWidget {
  const PrincipalPermissionsSummary({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final roleId = ref
        .watch(adminRolesProvider)
        .value
        ?.where((r) => r.roleName == 'Principal')
        .map((r) => r.roleId)
        .firstOrNull;
    final granted = roleId == null
        ? const <String>[]
        : (ref.watch(rolePermissionsProvider(roleId)).value?.permissionKeys ?? const <String>[]);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Divider(height: 1, color: AppColors.border),
        ),
        Row(
          children: [
            const Icon(Icons.verified_user_outlined, size: 16, color: AppColors.teal),
            const SizedBox(width: 8),
            const Expanded(
              child: Text(
                'Principal Role Permissions',
                style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                context.go(
                  Uri(path: SchoolAdminPaths.rolePermissions, queryParameters: {'role': 'Principal'}).toString(),
                );
              },
              child: const Text('Manage'),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 6,
          runSpacing: 6,
          children: [
            for (final (key, label) in principalPermissionKeys)
              StatusBadge(label: label, variant: granted.contains(key) ? BadgeVariant.success : BadgeVariant.neutral),
          ],
        ),
      ],
    );
  }
}
