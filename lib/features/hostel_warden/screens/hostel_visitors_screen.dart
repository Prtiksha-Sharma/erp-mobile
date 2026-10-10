import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/hostel_warden.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/hostel_warden_providers.dart';
import '../services/hostel_warden_service.dart';
import 'hostel_pickers.dart';
import 'hostel_warden_page_scaffold.dart';

/// Visitor records — GET/POST /hostel/visitors, PATCH .../check-out. The
/// warden logs and approves a visit in one step (no approval workflow on the
/// backend); check-in time is stamped by the server.
class HostelVisitorsScreen extends ConsumerStatefulWidget {
  const HostelVisitorsScreen({super.key});

  @override
  ConsumerState<HostelVisitorsScreen> createState() => _HostelVisitorsScreenState();
}

class _HostelVisitorsScreenState extends ConsumerState<HostelVisitorsScreen> {
  DateTime _date = today();

  ({String from, String to}) get _key => (from: apiDate(_date), to: apiDate(_date));

  @override
  Widget build(BuildContext context) {
    final value = ref.watch(wardenVisitorsProvider(_key));
    return HostelWardenPageScaffold(
      title: 'Visitor Records',
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _logVisitor,
        icon: const Icon(Icons.person_add_alt_outlined),
        label: const Text('Log visitor'),
      ),
      body: AsyncValueView<List<HostelVisitor>>(
        value: value,
        onRetry: () => ref.invalidate(wardenVisitorsProvider(_key)),
        data: (visitors) {
          final inside = visitors.where((v) => !v.isCheckedOut).toList();
          final left = visitors.where((v) => v.isCheckedOut).toList();
          return ResponsiveListView(
            onRefresh: () => ref.refresh(wardenVisitorsProvider(_key).future),
            children: [
              HeaderBar(
                children: [
                  DatePickerChip(
                    date: _date,
                    lastDate: today(),
                    onChanged: (d) => setState(() => _date = DateTime(d.year, d.month, d.day)),
                  ),
                  Text('${visitors.length} ${visitors.length == 1 ? 'visit' : 'visits'}',
                      style: const TextStyle(fontWeight: FontWeight.w600)),
                ],
              ),
              const SizedBox(height: 16),
              if (visitors.isEmpty)
                const EmptyCard(icon: Icons.groups_outlined, title: 'No visitors logged for this day')
              else ...[
                if (inside.isNotEmpty) ...[
                  SectionLabel('Inside now (${inside.length})'),
                  DividedCard(children: [for (final v in inside) _VisitorRow(visitor: v, onCheckOut: () => _checkOut(v))]),
                  const SizedBox(height: 16),
                ],
                if (left.isNotEmpty) ...[
                  SectionLabel('Checked out (${left.length})'),
                  DividedCard(children: [for (final v in left) _VisitorRow(visitor: v)]),
                ],
              ],
              const SizedBox(height: 72),
            ],
          );
        },
      ),
    );
  }

  Future<void> _checkOut(HostelVisitor v) async {
    final ok = await showHostelConfirm(
      context,
      title: 'Check out visitor?',
      message: '${v.visitorName} will be marked as checked out now.',
      confirmLabel: 'Check out',
      action: () async => switch (await HostelWardenService().checkOutVisitor(v.visitorId)) {
        Ok() => null,
        Err(:final failure) => failure.userMessage,
      },
    );
    if (ok && mounted) {
      ref.invalidate(wardenVisitorsProvider);
      showSnack(context, '${v.visitorName} checked out');
    }
  }

  Future<void> _logVisitor() async {
    final saved = await showHostelFormSheet<bool>(context, (_) => const _LogVisitorForm());
    if (saved == true && mounted) {
      // Logged visits are dated today on the server.
      setState(() => _date = today());
      ref.invalidate(wardenVisitorsProvider);
      showSnack(context, 'Visitor logged');
    }
  }
}

class _VisitorRow extends StatelessWidget {
  const _VisitorRow({required this.visitor, this.onCheckOut});

  final HostelVisitor visitor;
  final VoidCallback? onCheckOut;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final v = visitor;
    final time = v.isCheckedOut
        ? '${formatClockTime(v.checkInTime)} – ${formatClockTime(v.checkOutTime)}'
        : 'In since ${formatClockTime(v.checkInTime)}';
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 12, 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(v.visitorName,
                          style: const TextStyle(fontWeight: FontWeight.w600), overflow: TextOverflow.ellipsis),
                    ),
                    if (v.relationToStudent != null) ...[
                      const SizedBox(width: 8),
                      StatusBadge(label: v.relationToStudent!, variant: BadgeVariant.neutral),
                    ],
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  'Visiting ${v.student?.name ?? 'student'}${v.student?.admissionNo == null ? '' : ' (${v.student!.admissionNo})'}',
                  style: TextStyle(color: scheme.onSurfaceVariant),
                ),
                if ((v.purpose ?? '').isNotEmpty)
                  Text(v.purpose!, style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 13)),
                const SizedBox(height: 2),
                Text(time, style: TextStyle(color: v.isCheckedOut ? scheme.onSurfaceVariant : AppColors.success, fontSize: 13)),
              ],
            ),
          ),
          if (onCheckOut != null)
            OutlinedButton(onPressed: onCheckOut, child: const Text('Check out')),
        ],
      ),
    );
  }
}

class _LogVisitorForm extends StatefulWidget {
  const _LogVisitorForm();

  @override
  State<_LogVisitorForm> createState() => _LogVisitorFormState();
}

class _LogVisitorFormState extends State<_LogVisitorForm> {
  // Same options as the web LogVisitorModal.
  static const _relations = ['Father', 'Mother', 'Guardian', 'Sibling', 'Relative', 'Friend', 'Other'];

  final _name = TextEditingController();
  final _purpose = TextEditingController();
  PickedPerson? _student;
  String? _relation;
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _name.dispose();
    _purpose.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_student == null || _name.text.trim().isEmpty || _relation == null) {
      setState(() => _error = 'Pick a student, and enter the visitor\'s name and relation.');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    final result = await HostelWardenService().logVisitor(
      studentId: _student!.id,
      visitorName: _name.text,
      relation: _relation!,
      purpose: _purpose.text,
    );
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
        const Text('Log a visitor', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        const SizedBox(height: 4),
        Text('Check-in time is recorded as now.',
            style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant)),
        const SizedBox(height: 16),
        const Text('Student', style: TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        PersonSearchPicker(
          staff: false,
          value: _student,
          enabled: !_busy,
          onChanged: (p) => setState(() => _student = p),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _name,
          enabled: !_busy,
          textCapitalization: TextCapitalization.words,
          decoration: const InputDecoration(labelText: 'Visitor name'),
        ),
        const SizedBox(height: 12),
        DropdownButtonFormField<String>(
          initialValue: _relation,
          decoration: const InputDecoration(labelText: 'Relation to student'),
          items: [for (final r in _relations) DropdownMenuItem(value: r, child: Text(r))],
          onChanged: _busy ? null : (v) => setState(() => _relation = v),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _purpose,
          enabled: !_busy,
          maxLines: 2,
          decoration: const InputDecoration(labelText: 'Purpose (optional)'),
        ),
        FormError(_error),
        const SizedBox(height: 16),
        SheetActions(busy: _busy, onSubmit: _save, submitLabel: 'Log visitor'),
      ],
    );
  }
}
