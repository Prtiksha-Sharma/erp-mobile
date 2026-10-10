import 'dart:async';

import 'package:flutter/material.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/hostel_warden.dart';
import '../../../core/utils/formatters.dart';
import '../services/hostel_warden_service.dart';
import 'hostel_warden_page_scaffold.dart';

/// A person picked in a warden form — either a student or a staff member.
class PickedPerson {
  const PickedPerson({required this.id, required this.name, this.subtitle});

  final String id;
  final String name;
  final String? subtitle;
}

/// Typeahead over GET /hostel/students/search or /hostel/staff/search
/// (min 2 chars, 10 rows server-side). Once a person is picked it collapses
/// to a tile with a "Change" button.
class PersonSearchPicker extends StatefulWidget {
  const PersonSearchPicker({
    super.key,
    required this.staff,
    required this.value,
    required this.onChanged,
    this.enabled = true,
  });

  /// true searches staff, false searches students.
  final bool staff;
  final PickedPerson? value;
  final ValueChanged<PickedPerson?> onChanged;
  final bool enabled;

  @override
  State<PersonSearchPicker> createState() => _PersonSearchPickerState();
}

class _PersonSearchPickerState extends State<PersonSearchPicker> {
  final _controller = TextEditingController();
  Timer? _debounce;
  List<PickedPerson> _hits = const [];
  bool _loading = false;
  String? _error;
  int _seq = 0;

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _onQuery(String q) {
    _debounce?.cancel();
    if (q.trim().length < 2) {
      setState(() {
        _hits = const [];
        _loading = false;
        _error = null;
      });
      return;
    }
    _debounce = Timer(const Duration(milliseconds: 350), () => _search(q.trim()));
  }

  Future<void> _search(String q) async {
    final seq = ++_seq;
    setState(() {
      _loading = true;
      _error = null;
    });
    final service = HostelWardenService();
    final Result<List<Object>> result = widget.staff ? await service.searchStaff(q) : await service.searchStudents(q);
    if (!mounted || seq != _seq) return;
    setState(() {
      _loading = false;
      switch (result) {
        case Ok(:final value):
          _hits = [
            for (final p in value)
              if (p is WardenStaffRef)
                PickedPerson(
                  id: p.staffId,
                  name: p.fullName,
                  subtitle: [p.employeeCode, p.designation].whereType<String>().join(' · '),
                )
              else if (p is WardenStudentRef)
                PickedPerson(id: p.studentId, name: p.name, subtitle: p.admissionNo),
          ];
        case Err(:final failure):
          _hits = const [];
          _error = failure.userMessage;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final picked = widget.value;
    if (picked != null) {
      return Card(
        elevation: 0,
        margin: EdgeInsets.zero,
        color: scheme.primaryContainer.withValues(alpha: 0.4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child: ListTile(
          leading: CircleAvatar(child: Text(initialsOf(picked.name))),
          title: Text(picked.name, style: const TextStyle(fontWeight: FontWeight.w600)),
          subtitle: (picked.subtitle ?? '').isEmpty ? null : Text(picked.subtitle!),
          trailing: TextButton(
            onPressed: widget.enabled ? () => widget.onChanged(null) : null,
            child: const Text('Change'),
          ),
        ),
      );
    }

    final kind = widget.staff ? 'staff member' : 'student';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        HostelSearchField(
          controller: _controller,
          hint: widget.staff ? 'Search by name or employee code' : 'Search by name or admission no.',
          onChanged: _onQuery,
        ),
        if (_loading) const Padding(padding: EdgeInsets.only(top: 8), child: LinearProgressIndicator()),
        FormError(_error),
        if (!_loading && _hits.isEmpty && _controller.text.trim().length >= 2 && _error == null)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text('No active $kind matches "${_controller.text.trim()}".',
                style: TextStyle(color: scheme.onSurfaceVariant)),
          ),
        for (final h in _hits)
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 4),
            leading: CircleAvatar(radius: 18, child: Text(initialsOf(h.name), style: const TextStyle(fontSize: 13))),
            title: Text(h.name),
            subtitle: (h.subtitle ?? '').isEmpty ? null : Text(h.subtitle!),
            onTap: () {
              _controller.clear();
              setState(() => _hits = const []);
              widget.onChanged(h);
            },
          ),
      ],
    );
  }
}

/// Room dropdown over GET /hostel/rooms — rooms with no vacant bed are
/// listed but disabled (unless it's [currentRoomId], for a bed change).
class RoomPickerField extends StatelessWidget {
  const RoomPickerField({
    super.key,
    required this.rooms,
    required this.value,
    required this.onChanged,
    this.currentRoomId,
    this.enabled = true,
  });

  final List<WardenRoom> rooms;
  final String? value;
  final ValueChanged<String?> onChanged;
  final String? currentRoomId;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      initialValue: value,
      isExpanded: true,
      decoration: const InputDecoration(labelText: 'Room'),
      items: [
        for (final r in rooms)
          DropdownMenuItem(
            value: r.roomId,
            enabled: r.vacantCount > 0 || r.roomId == currentRoomId,
            child: Text(
              'Room ${r.roomNumber} · Floor ${r.floorNumber} — '
              '${r.roomId == currentRoomId ? 'current' : r.vacantCount > 0 ? '${r.vacantCount} free' : 'full'}',
              overflow: TextOverflow.ellipsis,
            ),
          ),
      ],
      onChanged: enabled ? onChanged : null,
    );
  }
}
