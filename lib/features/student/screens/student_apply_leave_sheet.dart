import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/utils/formatters.dart';
import '../providers/student_portal_providers.dart';
import '../services/student_portal_service.dart';

/// Same options as the web's ApplyLeaveModal (LEAVE_TYPE_OPTIONS). The
/// backend accepts any string ≤ 50 chars, so these are a UI convention only.
const _leaveTypes = ['Casual', 'Medical', 'Personal', 'Emergency'];

/// Port of ApplyLeaveModal.jsx as a bottom sheet — same fields, same
/// validation messages; on success the leaves list is re-fetched.
Future<void> showApplyLeaveSheet(BuildContext context) async {
  final submitted = await showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    showDragHandle: true,
    constraints: const BoxConstraints(maxWidth: 560),
    builder: (_) => const _ApplyLeaveForm(),
  );
  if (submitted == true && context.mounted) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Leave request submitted.')));
  }
}

class _ApplyLeaveForm extends ConsumerStatefulWidget {
  const _ApplyLeaveForm();

  @override
  ConsumerState<_ApplyLeaveForm> createState() => _ApplyLeaveFormState();
}

class _ApplyLeaveFormState extends ConsumerState<_ApplyLeaveForm> {
  String? _leaveType;
  DateTime? _from;
  DateTime? _to;
  final _reason = TextEditingController();
  Map<String, String> _errors = {};
  String? _submitError;
  bool _submitting = false;

  @override
  void dispose() {
    _reason.dispose();
    super.dispose();
  }

  Future<void> _pickDate({required bool from}) async {
    final now = DateTime.now();
    final initial = (from ? _from : _to) ?? _from ?? now;
    final picked = await showDatePicker(
      context: context,
      initialDate: initial,
      firstDate: DateTime(now.year - 1),
      lastDate: DateTime(now.year + 1, 12, 31),
    );
    if (picked == null) return;
    setState(() {
      if (from) {
        _from = picked;
      } else {
        _to = picked;
      }
      _errors = {..._errors}..remove(from ? 'from' : 'to');
    });
  }

  bool _validate() {
    final errs = <String, String>{};
    if (_leaveType == null) errs['type'] = 'Leave type is required';
    if (_from == null) errs['from'] = 'From date is required';
    if (_to == null) errs['to'] = 'To date is required';
    if (_from != null && _to != null && _to!.isBefore(_from!)) errs['to'] = 'To date cannot be before from date';
    setState(() => _errors = errs);
    return errs.isEmpty;
  }

  Future<void> _submit() async {
    if (!_validate()) return;
    setState(() {
      _submitting = true;
      _submitError = null;
    });
    final result = await StudentPortalService().applyLeave(
      leaveType: _leaveType!,
      fromDate: _from!,
      toDate: _to!,
      reason: _reason.text,
    );
    if (!mounted) return;
    switch (result) {
      case Ok():
        ref.invalidate(myLeavesProvider);
        Navigator.of(context).pop(true);
      case Err(:final failure):
        setState(() {
          _submitting = false;
          _submitError = failure.userMessage;
        });
    }
  }

  Widget _dateField(String label, DateTime? value, String errorKey, {required bool from}) {
    return InkWell(
      onTap: () => _pickDate(from: from),
      borderRadius: BorderRadius.circular(4),
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
          errorText: _errors[errorKey],
          suffixIcon: const Icon(Icons.calendar_today_outlined, size: 18),
        ),
        child: Text(value == null ? 'Select date' : formatDate(value)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 20 + MediaQuery.viewInsetsOf(context).bottom),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Apply for Leave', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              initialValue: _leaveType,
              decoration: InputDecoration(
                labelText: 'Leave Type *',
                border: const OutlineInputBorder(),
                errorText: _errors['type'],
              ),
              items: [for (final t in _leaveTypes) DropdownMenuItem(value: t, child: Text(t))],
              onChanged: (v) => setState(() {
                _leaveType = v;
                _errors = {..._errors}..remove('type');
              }),
            ),
            const SizedBox(height: 12),
            LayoutBuilder(
              builder: (context, c) {
                final from = _dateField('From Date *', _from, 'from', from: true);
                final to = _dateField('To Date *', _to, 'to', from: false);
                return c.maxWidth >= 360
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Expanded(child: from), const SizedBox(width: 12), Expanded(child: to)],
                      )
                    : Column(children: [from, const SizedBox(height: 12), to]);
              },
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _reason,
              maxLines: 2,
              decoration: const InputDecoration(
                labelText: 'Reason',
                hintText: 'Briefly describe the reason for leave',
                border: OutlineInputBorder(),
              ),
            ),
            if (_submitError != null) ...[
              const SizedBox(height: 12),
              Text(_submitError!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
            ],
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: _submitting ? null : () => Navigator.of(context).pop(false),
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 8),
                FilledButton(
                  onPressed: _submitting ? null : _submit,
                  child: _submitting
                      ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
                      : const Text('Submit Request'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
