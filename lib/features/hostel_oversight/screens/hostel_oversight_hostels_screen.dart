import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_campus_hostel.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../hostel_oversight.dart';
import '../providers/hostel_oversight_providers.dart';
import '../services/admin_hostel_service.dart';
import 'hostel_oversight_widgets.dart';

/// Hostels — GET /admin/hostel/hostels. With [HostelOversightConfig.canManage]
/// (School Admin): add / edit, activate / deactivate, assign / unassign a
/// warden. A warden holds one hostel at most; assigning moves them.
class HostelOversightHostelsScreen extends ConsumerWidget {
  const HostelOversightHostelsScreen({super.key, required this.config});

  final HostelOversightConfig config;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(campusHostelsProvider);
    return config.frame(
      context,
      title: 'Hostels',
      floatingActionButton: config.canManage
          ? FloatingActionButton.extended(
              onPressed: () => _edit(context, ref, null),
              icon: const Icon(Icons.add),
              label: const Text('Add hostel'),
            )
          : null,
      body: AsyncValueView<List<CampusHostel>>(
        value: value,
        onRetry: () => ref.invalidate(campusHostelsProvider),
        data: (hostels) => ResponsiveListView(
          onRefresh: () => ref.refresh(campusHostelsProvider.future),
          children: [
            if (hostels.isEmpty)
              EmptyCard(
                icon: Icons.home_work_outlined,
                title: 'No hostels yet',
                message: config.canManage ? 'Tap "Add hostel" to create one.' : null,
              ),
            for (final h in hostels) ...[
              _HostelCard(
                hostel: h,
                canManage: config.canManage,
                onEdit: () => _edit(context, ref, h),
                onToggle: () => _toggle(context, ref, h),
                onAssign: () => _assign(context, ref, h),
                onUnassign: () => _unassign(context, ref, h),
              ),
              const SizedBox(height: 12),
            ],
            const SizedBox(height: 72),
          ],
        ),
      ),
    );
  }

  Future<void> _edit(BuildContext context, WidgetRef ref, CampusHostel? h) async {
    final saved = await showOversightFormSheet<bool>(context, (_) => _HostelForm(hostel: h));
    if (saved == true && context.mounted) {
      invalidateHostelOversight(ref);
      showOversightSnack(context, h == null ? 'Hostel created' : 'Hostel updated');
    }
  }

  Future<void> _toggle(BuildContext context, WidgetRef ref, CampusHostel h) async {
    final activate = !h.isActive;
    final ok = await showOversightConfirm(
      context,
      title: activate ? 'Activate hostel?' : 'Deactivate hostel?',
      message: activate
          ? '${h.hostelName} will be counted as an active hostel again.'
          : '${h.hostelName} will be marked inactive. Rooms and allocations are not affected.',
      confirmLabel: activate ? 'Activate' : 'Deactivate',
      dangerous: !activate,
      action: () async => switch (await AdminHostelService().setHostelStatus(h.hostelId, activate)) {
        Ok() => null,
        Err(:final failure) => failure.userMessage,
      },
    );
    if (ok && context.mounted) {
      invalidateHostelOversight(ref);
      showOversightSnack(context, activate ? 'Hostel activated' : 'Hostel deactivated');
    }
  }

  Future<void> _assign(BuildContext context, WidgetRef ref, CampusHostel h) async {
    final saved = await showOversightFormSheet<bool>(context, (_) => _AssignWardenForm(hostel: h));
    if (saved == true && context.mounted) {
      invalidateHostelOversight(ref);
      showOversightSnack(context, 'Warden assigned');
    }
  }

  Future<void> _unassign(BuildContext context, WidgetRef ref, CampusHostel h) async {
    final ok = await showOversightConfirm(
      context,
      title: 'Remove warden?',
      message: '${h.warden?.fullName ?? 'The warden'} will no longer be assigned to ${h.hostelName}.',
      confirmLabel: 'Remove',
      dangerous: true,
      action: () async => switch (await AdminHostelService().unassignWarden(h.hostelId)) {
        Ok() => null,
        Err(:final failure) => failure.userMessage,
      },
    );
    if (ok && context.mounted) {
      invalidateHostelOversight(ref);
      showOversightSnack(context, 'Warden removed');
    }
  }
}

class _HostelCard extends StatelessWidget {
  const _HostelCard({
    required this.hostel,
    required this.canManage,
    required this.onEdit,
    required this.onToggle,
    required this.onAssign,
    required this.onUnassign,
  });

  final CampusHostel hostel;
  final bool canManage;
  final VoidCallback onEdit;
  final VoidCallback onToggle;
  final VoidCallback onAssign;
  final VoidCallback onUnassign;

  @override
  Widget build(BuildContext context) {
    final h = hostel;
    final scheme = Theme.of(context).colorScheme;
    final warden = h.warden;
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.6)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 8, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(h.hostelName, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                ),
                StatusBadge(
                  label: h.isActive ? 'Active' : 'Inactive',
                  variant: h.isActive ? BadgeVariant.success : BadgeVariant.neutral,
                ),
                if (canManage)
                  PopupMenuButton<String>(
                    onSelected: (v) => switch (v) {
                      'edit' => onEdit(),
                      'toggle' => onToggle(),
                      'assign' => onAssign(),
                      _ => onUnassign(),
                    },
                    itemBuilder: (_) => [
                      const PopupMenuItem(value: 'edit', child: Text('Edit details')),
                      PopupMenuItem(value: 'assign', child: Text(warden == null ? 'Assign warden' : 'Change warden')),
                      if (warden != null) const PopupMenuItem(value: 'unassign', child: Text('Remove warden')),
                      PopupMenuItem(value: 'toggle', child: Text(h.isActive ? 'Deactivate' : 'Activate')),
                    ],
                  ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              [hostelTypeLabel(h.hostelType), h.contactNumber, h.address]
                  .whereType<String>()
                  .where((s) => s.isNotEmpty && s != '—')
                  .join(' · '),
              style: TextStyle(color: scheme.onSurfaceVariant),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.badge_outlined, size: 18, color: warden == null ? AppColors.warning : AppColors.primary),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    warden == null
                        ? 'No warden assigned'
                        : '${warden.fullName ?? 'Warden'}${warden.employeeCode == null ? '' : ' (${warden.employeeCode})'}',
                    style: TextStyle(color: warden == null ? AppColors.warning : null),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _HostelForm extends StatefulWidget {
  const _HostelForm({this.hostel});

  final CampusHostel? hostel;

  @override
  State<_HostelForm> createState() => _HostelFormState();
}

class _HostelFormState extends State<_HostelForm> {
  late final _name = TextEditingController(text: widget.hostel?.hostelName);
  late final _address = TextEditingController(text: widget.hostel?.address);
  late final _contact = TextEditingController(text: widget.hostel?.contactNumber);
  late String? _type = widget.hostel?.hostelType;
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _name.dispose();
    _address.dispose();
    _contact.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_name.text.trim().isEmpty) {
      setState(() => _error = 'Enter the hostel name.');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    // Blank optional fields are sent as null so clearing one really clears it.
    String? blank(String s) => s.trim().isEmpty ? null : s.trim();
    final payload = {
      'hostel_name': _name.text.trim(),
      'hostel_type': _type,
      'address': blank(_address.text),
      'contact_number': blank(_contact.text),
    };
    final service = AdminHostelService();
    final h = widget.hostel;
    final result = h == null ? await service.createHostel(payload) : await service.updateHostel(h.hostelId, payload);
    if (!mounted) return;
    switch (result) {
      case Ok():
        Navigator.of(context).pop(true);
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failure.userMessage;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(widget.hostel == null ? 'Add hostel' : 'Edit hostel',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        const SizedBox(height: 16),
        TextField(
          controller: _name,
          enabled: !_busy,
          textCapitalization: TextCapitalization.words,
          decoration: const InputDecoration(labelText: 'Hostel name'),
        ),
        const SizedBox(height: 12),
        DropdownButtonFormField<String?>(
          initialValue: _type,
          decoration: const InputDecoration(labelText: 'Type'),
          items: [
            const DropdownMenuItem(value: null, child: Text('Not set')),
            for (final t in hostelTypes) DropdownMenuItem(value: t, child: Text(hostelTypeLabel(t))),
          ],
          onChanged: _busy ? null : (v) => setState(() => _type = v),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _contact,
          enabled: !_busy,
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(labelText: 'Contact number (optional)'),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _address,
          enabled: !_busy,
          maxLines: 2,
          decoration: const InputDecoration(labelText: 'Address (optional)'),
        ),
        FormError(_error),
        const SizedBox(height: 16),
        SheetActions(busy: _busy, onSubmit: _save, submitLabel: 'Save'),
      ],
    );
  }
}

class _AssignWardenForm extends ConsumerStatefulWidget {
  const _AssignWardenForm({required this.hostel});

  final CampusHostel hostel;

  @override
  ConsumerState<_AssignWardenForm> createState() => _AssignWardenFormState();
}

class _AssignWardenFormState extends ConsumerState<_AssignWardenForm> {
  late String? _staffId = widget.hostel.warden?.staffId;
  bool _busy = false;
  String? _error;

  Future<void> _save() async {
    if (_staffId == null) {
      setState(() => _error = 'Pick a warden.');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    final result = await AdminHostelService().assignWarden(widget.hostel.hostelId, _staffId!);
    if (!mounted) return;
    switch (result) {
      case Ok():
        Navigator.of(context).pop(true);
      case Err(:final failure):
        setState(() {
          _busy = false;
          _error = failure.userMessage;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final wardens = ref.watch(hostelWardensProvider);
    final scheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Warden for ${widget.hostel.hostelName}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        const SizedBox(height: 4),
        Text(
          'Only staff with the Hostel Warden role are listed. A warden already running another hostel is moved here.',
          style: TextStyle(color: scheme.onSurfaceVariant),
        ),
        const SizedBox(height: 12),
        wardens.when(
          loading: () => const Padding(padding: EdgeInsets.all(8), child: LinearProgressIndicator()),
          error: (e, _) => Text(describeError(e), style: TextStyle(color: scheme.error)),
          data: (list) => list.isEmpty
              ? const Text('No staff hold the Hostel Warden role yet. Give the role to a staff account first.')
              : RadioGroup<String>(
                  groupValue: _staffId,
                  onChanged: (v) => _busy ? null : setState(() => _staffId = v),
                  child: Column(
                    children: [
                      for (final w in list)
                        RadioListTile<String>(
                          value: w.staffId,
                          contentPadding: EdgeInsets.zero,
                          title: Text(w.fullName ?? w.employeeCode ?? 'Warden'),
                          subtitle: Text(
                            w.assignedHostel?.hostelName == null
                                ? 'Not assigned'
                                : w.assignedHostel!.hostelId == widget.hostel.hostelId
                                    ? 'Current warden'
                                    : 'Currently at ${w.assignedHostel!.hostelName}',
                          ),
                        ),
                    ],
                  ),
                ),
        ),
        FormError(_error),
        const SizedBox(height: 16),
        SheetActions(busy: _busy, onSubmit: _save, submitLabel: 'Assign'),
      ],
    );
  }
}
