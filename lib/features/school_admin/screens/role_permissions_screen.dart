import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/school_admin_settings.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/error_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/school_admin_providers.dart';
import '../services/school_admin_settings_service.dart';
import 'school_admin_page_scaffold.dart';

/// moduleIconMap.js — catalog module name → icon + accent.
const _moduleIcons = <String, (IconData, Color)>{
  'Dashboard': (Icons.dashboard_outlined, AppColors.primary),
  'Admission': (Icons.assignment_outlined, AppColors.violet),
  'Student Profile': (Icons.person_outline, AppColors.primary),
  'Parents & Contacts': (Icons.groups_outlined, AppColors.teal),
  'Documents': (Icons.description_outlined, AppColors.amber),
  'Promotion': (Icons.trending_up, AppColors.emerald),
  'Attendance': (Icons.event_available_outlined, AppColors.primary),
  'Leaves': (Icons.event_busy_outlined, AppColors.amber),
  'Fees': (Icons.currency_rupee, AppColors.emerald),
  'Certificates': (Icons.badge_outlined, AppColors.violet),
  'Accounts': (Icons.key_outlined, AppColors.rose),
  'Bulk Operations': (Icons.layers_outlined, AppColors.teal),
  'Reports': (Icons.bar_chart, AppColors.primary),
  'Audit': (Icons.timeline, AppColors.rose),
  'Student Self-Service': (Icons.how_to_reg_outlined, AppColors.emerald),
  'Principal Access': (Icons.verified_user_outlined, AppColors.violet),
};
const _defaultModuleIcon = (Icons.verified_user_outlined, AppColors.primary);

/// Role Permissions — web features/school-admin/role-permissions/
/// RolePermissionsPage.jsx (+ RoleSelector, PermissionModuleSection,
/// useRolePermissionsForm). The draft is local until Save; switching role
/// or a fresh fetch resets it. The footer stays pinned under the list.
class RolePermissionsScreen extends ConsumerStatefulWidget {
  const RolePermissionsScreen({super.key, this.initialRoleName});

  /// The web's `?role=Principal` deep link — pre-selects that role once.
  final String? initialRoleName;

  @override
  ConsumerState<RolePermissionsScreen> createState() => _RolePermissionsScreenState();
}

class _RolePermissionsScreenState extends ConsumerState<RolePermissionsScreen> {
  String _roleId = '';
  bool _triedAutoSelect = false;
  RolePermissionGrants? _lastData;
  Set<String> _checked = {};
  Set<String> _saved = {};
  bool _saving = false;
  String? _saveError;

  bool get _dirty => _checked.length != _saved.length || _checked.any((k) => !_saved.contains(k));

  void _syncDraft(RolePermissionGrants? data) {
    if (identical(data, _lastData)) return;
    _lastData = data;
    _checked = {...?data?.permissionKeys};
    _saved = {...?data?.permissionKeys};
  }

  Future<void> _save() async {
    setState(() {
      _saving = true;
      _saveError = null;
    });
    final keys = _checked.toList();
    final result = await SchoolAdminSettingsService().saveRolePermissions(_roleId, keys);
    if (!mounted) return;
    switch (result) {
      case Ok():
        setState(() {
          _saving = false;
          _saved = {...keys};
        });
        ref.invalidate(rolePermissionsProvider(_roleId));
        showSnack(context, 'Permissions saved.');
      case Err(:final failure):
        setState(() {
          _saving = false;
          _saveError = failureMessage(failure, 'Failed to save permissions.');
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final roles = ref.watch(adminRolesProvider);
    final catalog = ref.watch(permissionCatalogProvider);

    // ?role= deep link: once, as soon as the role list is in — adjusted
    // during build, same as the web page does during render.
    final roleList = roles.value ?? const <RoleRef>[];
    if (!_triedAutoSelect && widget.initialRoleName != null && roleList.isNotEmpty) {
      _triedAutoSelect = true;
      final match = roleList.where((r) => r.roleName == widget.initialRoleName).firstOrNull;
      if (match != null) _roleId = match.roleId;
    }

    final grants = _roleId.isEmpty ? null : ref.watch(rolePermissionsProvider(_roleId));
    // A different role's (or a refetched) grant set resets the draft.
    if (grants?.hasValue ?? false) _syncDraft(grants!.value);

    final loading =
        catalog.isLoading && !catalog.hasValue || (grants?.isLoading ?? false) && !(grants?.hasValue ?? false);
    final ready = _roleId.isNotEmpty && !loading && !catalog.hasError && !(grants?.hasError ?? false);

    final Widget content;
    if (_roleId.isEmpty) {
      content = const EmptyState(
        icon: Icons.verified_user_outlined,
        title: 'No role selected',
        message: 'Select a role above to view and edit its permissions.',
      );
    } else if (loading) {
      content = const LoadingView(label: 'Loading permissions…');
    } else if (catalog.hasError) {
      content = ErrorView(
        message: 'Failed to load the permission catalog.',
        onRetry: () => ref.invalidate(permissionCatalogProvider),
      );
    } else if (grants!.hasError) {
      final err = grants.error;
      content = ErrorView(
        message: err is Failure
            ? failureMessage(err, 'Failed to load this role’s permissions.')
            : 'Failed to load this role’s permissions.',
        onRetry: () => ref.invalidate(rolePermissionsProvider(_roleId)),
      );
    } else {
      content = _ModuleColumns(
        modules: catalog.value ?? const [],
        checked: _checked,
        onToggle: (key) => setState(() => _checked.contains(key) ? _checked.remove(key) : _checked.add(key)),
        onSetKeys: (keys, on) => setState(() => on ? _checked.addAll(keys) : _checked.removeAll(keys)),
      );
    }

    final placeholder = roles.isLoading && !roles.hasValue
        ? 'Loading…'
        : roles.hasError
        ? 'Failed to load'
        : roleList.isEmpty
        ? 'No roles found'
        : 'Select role…';
    final disabled = roles.isLoading && !roles.hasValue || roles.hasError || roleList.isEmpty;

    final selector = DropdownButtonFormField<String>(
      key: ValueKey('role|$_roleId|$placeholder'),
      initialValue: _roleId.isEmpty ? null : _roleId,
      isExpanded: true,
      hint: Text(placeholder),
      decoration: const InputDecoration(labelText: 'Role', border: OutlineInputBorder(), isDense: true),
      items: [for (final r in roleList) DropdownMenuItem(value: r.roleId, child: Text(r.roleName))],
      onChanged: disabled
          ? null
          : (v) => setState(() {
              _roleId = v ?? '';
              _lastData = null;
              _saveError = null;
            }),
    );

    final hPad = context.isTabletWidth ? 24.0 : 16.0;
    return SchoolAdminPageScaffold(
      title: 'Role Permissions',
      body: Column(
        children: [
          Expanded(
            child: ResponsiveListView(
              onRefresh: () async {
                ref.invalidate(permissionCatalogProvider);
                if (_roleId.isNotEmpty) ref.invalidate(rolePermissionsProvider(_roleId));
              },
              children: [
                LayoutBuilder(
                  builder: (context, c) {
                    const heading = PageHeading(
                      icon: Icons.verified_user_outlined,
                      title: 'Role Permissions',
                      subtitle: 'Control what each role can see and do within your school.',
                    );
                    if (c.maxWidth < 600) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [heading, const SizedBox(height: 14), selector],
                      );
                    }
                    return Row(
                      children: [
                        const Expanded(child: heading),
                        const SizedBox(width: 16),
                        SizedBox(width: 240, child: selector),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 16),
                content,
              ],
            ),
          ),
          if (ready)
            Material(
              color: Colors.white,
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(top: BorderSide(color: AppColors.border)),
                ),
                padding: EdgeInsets.fromLTRB(hPad, 10, hPad, 10),
                child: SafeArea(
                  top: false,
                  child: ResponsiveCenter(
                    child: Wrap(
                      alignment: WrapAlignment.end,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 12,
                      runSpacing: 6,
                      children: [
                        if (_saveError != null) FormErrorText(_saveError!),
                        if (_dirty)
                          const Text('Unsaved changes', style: TextStyle(fontSize: 12, color: AppColors.textMuted)),
                        TextButton.icon(
                          onPressed: !_dirty || _saving ? null : () => setState(() => _checked = {..._saved}),
                          icon: const Icon(Icons.restart_alt, size: 18),
                          label: const Text('Discard Changes'),
                        ),
                        FilledButton.icon(
                          onPressed: !_dirty || _saving ? null : _save,
                          icon: _saving
                              ? const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2))
                              : const Icon(Icons.save_outlined, size: 18),
                          label: const Text('Save Changes'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// The web's CSS `columns-1 md:columns-2 xl:columns-3` masonry: modules
/// are dealt into the currently shortest column.
class _ModuleColumns extends StatelessWidget {
  const _ModuleColumns({required this.modules, required this.checked, required this.onToggle, required this.onSetKeys});

  final List<PermissionModule> modules;
  final Set<String> checked;
  final ValueChanged<String> onToggle;
  final void Function(List<String> keys, bool on) onSetKeys;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final cols = c.maxWidth >= 1000 ? 3 : (c.maxWidth >= 600 ? 2 : 1);
        final columns = List.generate(cols, (_) => <PermissionModule>[]);
        final heights = List.filled(cols, 0);
        for (final m in modules) {
          var target = 0;
          for (var i = 1; i < cols; i++) {
            if (heights[i] < heights[target]) target = i;
          }
          columns[target].add(m);
          heights[target] += m.permissions.length + 2;
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var i = 0; i < cols; i++) ...[
              if (i > 0) const SizedBox(width: 12),
              Expanded(
                child: Column(
                  children: [
                    for (final m in columns[i])
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: _ModuleCard(module: m, checked: checked, onToggle: onToggle, onSetKeys: onSetKeys),
                      ),
                  ],
                ),
              ),
            ],
          ],
        );
      },
    );
  }
}

/// PermissionModuleSection.jsx.
class _ModuleCard extends StatelessWidget {
  const _ModuleCard({required this.module, required this.checked, required this.onToggle, required this.onSetKeys});

  final PermissionModule module;
  final Set<String> checked;
  final ValueChanged<String> onToggle;
  final void Function(List<String> keys, bool on) onSetKeys;

  @override
  Widget build(BuildContext context) {
    final (icon, accent) = _moduleIcons[module.module] ?? _defaultModuleIcon;
    final perms = module.permissions;
    final granted = perms.where((p) => checked.contains(p.permissionKey)).length;
    final all = granted == perms.length;
    final variant = granted == 0 ? BadgeVariant.neutral : (all ? BadgeVariant.success : BadgeVariant.warning);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.border),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: AppColors.pageBg,
            padding: const EdgeInsets.fromLTRB(12, 4, 8, 4),
            child: Row(
              children: [
                Icon(icon, size: 16, color: accent),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    module.module,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13, color: AppColors.textPrimary),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    visualDensity: VisualDensity.compact,
                    textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  onPressed: () => onSetKeys([for (final p in perms) p.permissionKey], !all),
                  child: Text(all ? 'Clear all' : 'Select all'),
                ),
                StatusBadge(label: '$granted/${perms.length}', variant: variant),
              ],
            ),
          ),
          const Divider(height: 1, color: AppColors.border),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Column(
              children: [
                for (final p in perms)
                  InkWell(
                    onTap: () => onToggle(p.permissionKey),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Row(
                        children: [
                          Checkbox(
                            value: checked.contains(p.permissionKey),
                            visualDensity: VisualDensity.compact,
                            onChanged: (_) => onToggle(p.permissionKey),
                          ),
                          Expanded(
                            child: Text(p.label, style: const TextStyle(fontSize: 13, color: AppColors.textSecondary)),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
