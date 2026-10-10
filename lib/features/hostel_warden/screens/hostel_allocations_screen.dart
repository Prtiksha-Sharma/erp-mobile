import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/hostel_warden.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../providers/hostel_warden_providers.dart';
import '../services/hostel_warden_service.dart';
import 'hostel_pickers.dart';
import 'hostel_warden_page_scaffold.dart';

/// Room allocation — students (GET/POST /hostel/allocations) and staff
/// hostellers (/hostel/staff-allocations). A room's capacity is shared by
/// both; the backend 409s on a full room or a second active allocation for
/// the same person this session. Change room keeps the same allocation
/// (continuous residency); Vacate ends it.
class HostelAllocationsScreen extends ConsumerStatefulWidget {
  const HostelAllocationsScreen({super.key});

  @override
  ConsumerState<HostelAllocationsScreen> createState() => _HostelAllocationsScreenState();
}

/// One row on either tab, flattened so both tabs share the same widgets.
class _Row {
  const _Row({
    required this.allocationId,
    required this.roomId,
    required this.name,
    required this.subtitle,
    this.room,
    this.bedNumber,
    this.allocatedAt,
  });

  final String allocationId;
  final String roomId;
  final String name;
  final String subtitle;
  final WardenRoomRef? room;
  final String? bedNumber;
  final DateTime? allocatedAt;
}

class _HostelAllocationsScreenState extends ConsumerState<HostelAllocationsScreen> {
  final _search = TextEditingController();
  String _query = '';
  bool _staff = false;

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  Future<void> _refresh() async {
    invalidateHostelOccupancy(ref);
    await (_staff ? ref.read(wardenStaffAllocationsProvider.future) : ref.read(wardenAllocationsProvider.future));
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<_Row>> value = _staff
        ? ref.watch(wardenStaffAllocationsProvider).whenData((list) => [
              for (final a in list)
                _Row(
                  allocationId: a.allocationId,
                  roomId: a.roomId,
                  name: a.staff?.fullName ?? 'Staff member',
                  subtitle: [a.staff?.employeeCode, a.staff?.designation].whereType<String>().join(' · '),
                  room: a.room,
                  bedNumber: a.bedNumber,
                  allocatedAt: a.allocatedAt,
                ),
            ])
        : ref.watch(wardenAllocationsProvider).whenData((list) => [
              for (final a in list)
                _Row(
                  allocationId: a.allocationId,
                  roomId: a.roomId,
                  name: a.student?.name ?? 'Student',
                  subtitle: a.student?.admissionNo ?? '',
                  room: a.room,
                  bedNumber: a.bedNumber,
                  allocatedAt: a.allocatedAt,
                ),
            ]);

    return HostelWardenPageScaffold(
      title: 'Room Allocation',
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _allocate,
        icon: const Icon(Icons.add),
        label: Text(_staff ? 'Allocate staff' : 'Allocate student'),
      ),
      body: AsyncValueView<List<_Row>>(
        value: value,
        onRetry: _refresh,
        data: (all) {
          final q = _query.toLowerCase();
          final rows = q.isEmpty
              ? all
              : all
                  .where((r) =>
                      r.name.toLowerCase().contains(q) ||
                      r.subtitle.toLowerCase().contains(q) ||
                      (r.room?.roomNumber.toLowerCase() == q))
                  .toList();
          return ResponsiveListView(
            onRefresh: _refresh,
            children: [
              SegmentedButton<bool>(
                segments: const [
                  ButtonSegment(value: false, label: Text('Students'), icon: Icon(Icons.school_outlined)),
                  ButtonSegment(value: true, label: Text('Staff'), icon: Icon(Icons.badge_outlined)),
                ],
                selected: {_staff},
                onSelectionChanged: (v) => setState(() => _staff = v.first),
              ),
              const SizedBox(height: 12),
              HostelSearchField(
                controller: _search,
                hint: 'Search name, code or room',
                onChanged: (v) => setState(() => _query = v.trim()),
              ),
              const SizedBox(height: 16),
              SectionLabel('${all.length} active ${_staff ? 'staff' : 'student'} allocation${all.length == 1 ? '' : 's'}'),
              if (rows.isEmpty)
                EmptyCard(
                  icon: Icons.bed_outlined,
                  title: all.isEmpty ? 'No active allocations' : 'No allocations match',
                  message: all.isEmpty ? 'Tap "Allocate" to assign a room.' : null,
                )
              else
                DividedCard(
                  children: [
                    for (final r in rows)
                      ListTile(
                        title: Text(r.name),
                        subtitle: Text([
                          if (r.subtitle.isNotEmpty) r.subtitle,
                          if (r.room != null) r.room!.label,
                          if (r.bedNumber != null) 'Bed ${r.bedNumber}',
                          if (r.allocatedAt != null) 'Since ${formatDate(r.allocatedAt)}',
                        ].join(' · ')),
                        trailing: PopupMenuButton<String>(
                          onSelected: (action) => action == 'move' ? _changeRoom(r) : _vacate(r),
                          itemBuilder: (_) => const [
                            PopupMenuItem(value: 'move', child: Text('Change room / bed')),
                            PopupMenuItem(value: 'vacate', child: Text('Vacate')),
                          ],
                        ),
                      ),
                  ],
                ),
              const SizedBox(height: 72),
            ],
          );
        },
      ),
    );
  }

  Future<void> _allocate() async {
    final staff = _staff;
    final saved = await showHostelFormSheet<bool>(context, (_) => _AllocateForm(staff: staff));
    if (saved == true && mounted) {
      invalidateHostelOccupancy(ref);
      showSnack(context, 'Room allocated');
    }
  }

  Future<void> _changeRoom(_Row r) async {
    final staff = _staff;
    final saved = await showHostelFormSheet<bool>(context, (_) => _ChangeRoomForm(staff: staff, row: r));
    if (saved == true && mounted) {
      invalidateHostelOccupancy(ref);
      showSnack(context, 'Room changed for ${r.name}');
    }
  }

  Future<void> _vacate(_Row r) async {
    final staff = _staff;
    final ok = await showHostelConfirm(
      context,
      title: 'Vacate room?',
      message: '${r.name} will be moved out of ${r.room?.label ?? 'their room'}. '
          'Their roll-call and visitor history is kept.',
      confirmLabel: 'Vacate',
      dangerous: true,
      action: () async {
        final service = HostelWardenService();
        final result = staff ? await service.vacateStaff(r.allocationId) : await service.vacateStudent(r.allocationId);
        return switch (result) {
          Ok() => null,
          Err(:final failure) => failure.userMessage,
        };
      },
    );
    if (ok && mounted) {
      invalidateHostelOccupancy(ref);
      showSnack(context, '${r.name} vacated');
    }
  }
}

class _AllocateForm extends ConsumerStatefulWidget {
  const _AllocateForm({required this.staff});

  final bool staff;

  @override
  ConsumerState<_AllocateForm> createState() => _AllocateFormState();
}

class _AllocateFormState extends ConsumerState<_AllocateForm> {
  final _bed = TextEditingController();
  PickedPerson? _person;
  String? _roomId;
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _bed.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_person == null || _roomId == null) {
      setState(() => _error = 'Pick a ${widget.staff ? 'staff member' : 'student'} and a room.');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    final service = HostelWardenService();
    final result = widget.staff
        ? await service.allocateStaff(staffId: _person!.id, roomId: _roomId!, bedNumber: _bed.text)
        : await service.allocateStudent(studentId: _person!.id, roomId: _roomId!, bedNumber: _bed.text);
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
    final rooms = ref.watch(wardenRoomsProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(widget.staff ? 'Allocate a staff member' : 'Allocate a student',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        const SizedBox(height: 16),
        Text(widget.staff ? 'Staff member' : 'Student', style: const TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        PersonSearchPicker(
          staff: widget.staff,
          value: _person,
          enabled: !_busy,
          onChanged: (p) => setState(() => _person = p),
        ),
        const SizedBox(height: 16),
        rooms.when(
          loading: () => const LinearProgressIndicator(),
          error: (e, _) => Text(describeError(e), style: TextStyle(color: Theme.of(context).colorScheme.error)),
          data: (list) => list.isEmpty
              ? const Text('No rooms exist yet — add rooms from Rooms Management.')
              : RoomPickerField(
                  rooms: list,
                  value: _roomId,
                  enabled: !_busy,
                  onChanged: (v) => setState(() => _roomId = v),
                ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _bed,
          enabled: !_busy,
          decoration: const InputDecoration(labelText: 'Bed number (optional)'),
        ),
        FormError(_error),
        const SizedBox(height: 16),
        SheetActions(busy: _busy, onSubmit: _save, submitLabel: 'Allocate'),
      ],
    );
  }
}

class _ChangeRoomForm extends ConsumerStatefulWidget {
  const _ChangeRoomForm({required this.staff, required this.row});

  final bool staff;
  final _Row row;

  @override
  ConsumerState<_ChangeRoomForm> createState() => _ChangeRoomFormState();
}

class _ChangeRoomFormState extends ConsumerState<_ChangeRoomForm> {
  late final _bed = TextEditingController(text: widget.row.bedNumber);
  late String? _roomId = widget.row.roomId;
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _bed.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_roomId == null) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    final service = HostelWardenService();
    final id = widget.row.allocationId;
    final result = widget.staff
        ? await service.changeStaffRoom(id, roomId: _roomId!, bedNumber: _bed.text)
        : await service.changeStudentRoom(id, roomId: _roomId!, bedNumber: _bed.text);
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
    final rooms = ref.watch(wardenRoomsProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Change room — ${widget.row.name}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        const SizedBox(height: 4),
        Text('Currently ${widget.row.room?.label ?? 'unknown room'}',
            style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant)),
        const SizedBox(height: 16),
        rooms.when(
          loading: () => const LinearProgressIndicator(),
          error: (e, _) => Text(describeError(e), style: TextStyle(color: Theme.of(context).colorScheme.error)),
          data: (list) => RoomPickerField(
            rooms: list,
            value: _roomId,
            currentRoomId: widget.row.roomId,
            enabled: !_busy,
            onChanged: (v) => setState(() => _roomId = v),
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _bed,
          enabled: !_busy,
          decoration: const InputDecoration(labelText: 'Bed number (optional)'),
        ),
        FormError(_error),
        const SizedBox(height: 16),
        SheetActions(busy: _busy, onSubmit: _save, submitLabel: 'Move'),
      ],
    );
  }
}
