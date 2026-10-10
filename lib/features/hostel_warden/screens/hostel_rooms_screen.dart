import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/hostel_warden.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../providers/hostel_warden_providers.dart';
import '../services/hostel_warden_service.dart';
import 'hostel_warden_page_scaffold.dart';

/// Rooms management — GET /hostel/floors + /hostel/rooms, PUT
/// /hostel/floors/:n/room-count, PATCH /hostel/rooms/:id. Floors aren't a
/// table: a floor exists while it has active rooms. Room numbers run in one
/// sequence across the whole hostel and are assigned by the server.
typedef _RoomsData = ({List<WardenFloor> floors, List<WardenRoom> rooms});

final _roomsDataProvider = FutureProvider<_RoomsData>((ref) async {
  final floors = await ref.watch(wardenFloorsProvider.future);
  final rooms = await ref.watch(wardenRoomsProvider.future);
  return (floors: floors, rooms: rooms);
});

class HostelRoomsScreen extends ConsumerWidget {
  const HostelRoomsScreen({super.key});

  Future<void> _refresh(WidgetRef ref) async {
    ref
      ..invalidate(wardenFloorsProvider)
      ..invalidate(wardenRoomsProvider);
    await ref.read(_roomsDataProvider.future);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(_roomsDataProvider);
    return HostelWardenPageScaffold(
      title: 'Rooms Management',
      floatingActionButton: value.hasValue
          ? FloatingActionButton.extended(
              onPressed: () {
                final floors = value.value!.floors;
                final next = floors.isEmpty ? 1 : floors.map((f) => f.floorNumber).reduce((a, b) => a > b ? a : b) + 1;
                _setRoomCount(context, ref, floorNumber: next, current: 0, isNew: true);
              },
              icon: const Icon(Icons.add),
              label: const Text('Add floor'),
            )
          : null,
      body: AsyncValueView<_RoomsData>(
        value: value,
        onRetry: () => _refresh(ref),
        data: (d) {
          final beds = d.rooms.fold<int>(0, (s, r) => s + r.capacity);
          final occupied = d.rooms.fold<int>(0, (s, r) => s + r.occupiedCount);
          return ResponsiveListView(
            onRefresh: () => _refresh(ref),
            children: [
              Text(
                '${d.floors.length} floor${d.floors.length == 1 ? '' : 's'} · ${d.rooms.length} rooms · $occupied / $beds beds occupied',
                style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant),
              ),
              const SizedBox(height: 16),
              if (d.floors.isEmpty)
                const EmptyCard(
                  icon: Icons.apartment_outlined,
                  title: 'No rooms yet',
                  message: 'Tap "Add floor" to create the first floor\'s rooms.',
                ),
              for (final f in d.floors) ...[
                SectionLabel(
                  'Floor ${f.floorNumber} · ${f.roomCount} rooms · ${f.totalCapacity} beds',
                  trailing: TextButton.icon(
                    onPressed: () => _setRoomCount(context, ref, floorNumber: f.floorNumber, current: f.roomCount),
                    icon: const Icon(Icons.tune, size: 18),
                    label: const Text('Rooms'),
                  ),
                ),
                DividedCard(
                  children: [
                    for (final r in d.rooms.where((r) => r.floorNumber == f.floorNumber))
                      ListTile(
                        onTap: () => _editRoom(context, ref, r),
                        leading: const Icon(Icons.meeting_room_outlined, color: AppColors.primary),
                        title: Text('Room ${r.roomNumber}', style: const TextStyle(fontWeight: FontWeight.w600)),
                        subtitle: Text('${roomAttributes(r)} · ${r.occupiedCount} occupied'),
                        trailing: roomStatusBadge(r.roomStatus),
                      ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
              const SizedBox(height: 72),
            ],
          );
        },
      ),
    );
  }

  Future<void> _setRoomCount(
    BuildContext context,
    WidgetRef ref, {
    required int floorNumber,
    required int current,
    bool isNew = false,
  }) async {
    final saved = await showHostelFormSheet<bool>(
      context,
      (_) => _RoomCountForm(floorNumber: floorNumber, current: current, isNew: isNew),
    );
    if (saved == true && context.mounted) {
      invalidateHostelOccupancy(ref);
      showSnack(context, 'Floor $floorNumber updated');
    }
  }

  Future<void> _editRoom(BuildContext context, WidgetRef ref, WardenRoom room) async {
    final saved = await showHostelFormSheet<bool>(context, (_) => _EditRoomForm(room: room));
    if (saved == true && context.mounted) {
      invalidateHostelOccupancy(ref);
      showSnack(context, 'Room ${room.roomNumber} updated');
    }
  }
}

class _RoomCountForm extends StatefulWidget {
  const _RoomCountForm({required this.floorNumber, required this.current, required this.isNew});

  final int floorNumber;
  final int current;
  final bool isNew;

  @override
  State<_RoomCountForm> createState() => _RoomCountFormState();
}

class _RoomCountFormState extends State<_RoomCountForm> {
  late final _count = TextEditingController(text: widget.isNew ? '' : '${widget.current}');
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _count.dispose();
    super.dispose();
  }

  int? get _target => int.tryParse(_count.text.trim());

  Future<void> _save() async {
    final target = _target;
    if (target == null || target < 0 || (widget.isNew && target == 0)) {
      setState(() => _error = widget.isNew ? 'Enter how many rooms this floor has.' : 'Enter 0 or more rooms.');
      return;
    }
    if (target == widget.current) {
      Navigator.of(context).pop(false);
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    final result = await HostelWardenService().setFloorRoomCount(widget.floorNumber, target);
    if (!mounted) return;
    switch (result) {
      case Ok():
        Navigator.of(context).pop(true);
      case Err(:final failure):
        // 409 names the occupied rooms that block a reduction.
        setState(() {
          _busy = false;
          _error = failure.userMessage;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final target = _target;
    final removing = target != null && target < widget.current ? widget.current - target : 0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(widget.isNew ? 'Add floor ${widget.floorNumber}' : 'Floor ${widget.floorNumber} rooms',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        const SizedBox(height: 4),
        Text(
          'New rooms get the next free room numbers and 2 beds each — edit a room afterwards to change it.',
          style: TextStyle(color: scheme.onSurfaceVariant),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _count,
          enabled: !_busy,
          autofocus: true,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          onChanged: (_) => setState(() {}),
          decoration: InputDecoration(
            labelText: 'Number of rooms',
            helperText: widget.isNew ? null : 'Currently ${widget.current}',
          ),
        ),
        if (removing > 0)
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              'This removes the $removing highest-numbered room${removing == 1 ? '' : 's'} on this floor. '
              'Occupied rooms can\'t be removed — vacate them first.',
              style: const TextStyle(color: AppColors.warning),
            ),
          ),
        FormError(_error),
        const SizedBox(height: 16),
        SheetActions(busy: _busy, onSubmit: _save, submitLabel: 'Save'),
      ],
    );
  }
}

class _EditRoomForm extends StatefulWidget {
  const _EditRoomForm({required this.room});

  final WardenRoom room;

  @override
  State<_EditRoomForm> createState() => _EditRoomFormState();
}

class _EditRoomFormState extends State<_EditRoomForm> {
  late String? _type = widget.room.roomType;
  late String? _ac = widget.room.acType;
  late final _capacity = TextEditingController(text: '${widget.room.capacity}');
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _capacity.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final capacity = int.tryParse(_capacity.text.trim());
    if (capacity == null || capacity <= 0) {
      setState(() => _error = 'Capacity must be at least 1.');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    final r = widget.room;
    final result = await HostelWardenService().updateRoom(
      r.roomId,
      roomType: _type != r.roomType ? _type : null,
      acType: _ac != r.acType ? _ac : null,
      capacity: capacity != r.capacity ? capacity : null,
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
    final r = widget.room;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Room ${r.roomNumber}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        const SizedBox(height: 4),
        Text('Floor ${r.floorNumber} · ${r.occupiedCount} of ${r.capacity} beds occupied',
            style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant)),
        const SizedBox(height: 16),
        const Text('Room type', style: TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        SegmentedButton<String>(
          emptySelectionAllowed: true,
          showSelectedIcon: false,
          segments: [for (final t in hostelRoomTypes) ButtonSegment(value: t, label: Text(humanizeEnum(t)))],
          selected: {?_type},
          onSelectionChanged: _busy ? null : (v) => setState(() => _type = v.isEmpty ? _type : v.first),
        ),
        const SizedBox(height: 16),
        const Text('Cooling', style: TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        SegmentedButton<String>(
          emptySelectionAllowed: true,
          showSelectedIcon: false,
          segments: [
            for (final t in hostelAcTypes) ButtonSegment(value: t, label: Text(t == 'NON_AC' ? 'Non-AC' : 'AC')),
          ],
          selected: {?_ac},
          onSelectionChanged: _busy ? null : (v) => setState(() => _ac = v.isEmpty ? _ac : v.first),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _capacity,
          enabled: !_busy,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: const InputDecoration(labelText: 'Capacity (beds)'),
        ),
        FormError(_error),
        const SizedBox(height: 16),
        SheetActions(busy: _busy, onSubmit: _save, submitLabel: 'Save'),
      ],
    );
  }
}
