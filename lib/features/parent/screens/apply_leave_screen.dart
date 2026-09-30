import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/leave_record.dart';
import '../providers/children_provider.dart' show activeChildProvider;
import '../providers/leaves_provider.dart';
import '../services/leaves_service.dart';

/// The first write anywhere in the Parent app. Deliberately kept as
/// screen-local state (ConsumerStatefulWidget), not a dedicated
/// Riverpod Notifier — this is a one-off action whose result nothing else
/// needs to observe, same proportion of complexity as LoginScreen's own
/// local isLoading/error handling.
class ApplyLeaveScreen extends ConsumerStatefulWidget {
  const ApplyLeaveScreen({super.key});

  @override
  ConsumerState<ApplyLeaveScreen> createState() => _ApplyLeaveScreenState();
}

class _ApplyLeaveScreenState extends ConsumerState<ApplyLeaveScreen> {
  final _formKey = GlobalKey<FormState>();
  final _reasonController = TextEditingController();

  String? _leaveType;
  DateTime? _fromDate;
  DateTime? _toDate;
  bool _isSubmitting = false;
  Failure? _error;

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  Future<void> _pickDate({required bool isFromDate}) async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: isFromDate ? (_fromDate ?? now) : (_toDate ?? _fromDate ?? now),
      firstDate: isFromDate ? now.subtract(const Duration(days: 30)) : (_fromDate ?? now),
      lastDate: now.add(const Duration(days: 365)),
    );
    if (picked == null) return;
    setState(() {
      if (isFromDate) {
        _fromDate = picked;
        // Backend rejects to_date before from_date — keep the UI from
        // ever constructing that request in the first place.
        if (_toDate != null && _toDate!.isBefore(picked)) _toDate = picked;
      } else {
        _toDate = picked;
      }
    });
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    if (_leaveType == null || _fromDate == null || _toDate == null) {
      setState(() => _error = const Failure.validation('Please fill in every field.'));
      return;
    }

    final activeChild = ref.read(activeChildProvider);
    if (activeChild == null) return;

    setState(() {
      _isSubmitting = true;
      _error = null;
    });

    final result = await LeavesService().applyLeave(
      activeChild.studentId,
      leaveType: _leaveType!,
      fromDate: _fromDate!,
      toDate: _toDate!,
      reason: _reasonController.text.trim(),
    );

    if (!mounted) return;

    switch (result) {
      case Ok():
        ref.invalidate(leavesProvider(activeChild.studentId));
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Leave application submitted.')),
        );
        Navigator.of(context).pop();
      case Err(:final failure):
        setState(() {
          _isSubmitting = false;
          _error = failure;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('d MMM yyyy');

    return Scaffold(
      appBar: AppBar(title: const Text('Apply for Leave')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            DropdownButtonFormField<String>(
              initialValue: _leaveType,
              decoration: const InputDecoration(labelText: 'Leave type'),
              items: leaveTypes.map((t) => DropdownMenuItem(value: t, child: Text(t))).toList(),
              onChanged: (v) => setState(() => _leaveType = v),
              validator: (v) => v == null ? 'Required' : null,
            ),
            const SizedBox(height: 16),
            _DatePickerField(
              label: 'From date',
              value: _fromDate,
              dateFormat: dateFormat,
              onTap: () => _pickDate(isFromDate: true),
            ),
            const SizedBox(height: 16),
            _DatePickerField(
              label: 'To date',
              value: _toDate,
              dateFormat: dateFormat,
              onTap: () => _pickDate(isFromDate: false),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _reasonController,
              decoration: const InputDecoration(labelText: 'Reason'),
              maxLines: 3,
              validator: (v) => (v == null || v.trim().isEmpty) ? 'Required' : null,
            ),
            const SizedBox(height: 24),
            if (_error != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  _error!.userMessage,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ),
            FilledButton(
              onPressed: _isSubmitting ? null : _submit,
              child: _isSubmitting
                  ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2))
                  : const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

class _DatePickerField extends StatelessWidget {
  const _DatePickerField({
    required this.label,
    required this.value,
    required this.dateFormat,
    required this.onTap,
  });

  final String label;
  final DateTime? value;
  final DateFormat dateFormat;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: InputDecorator(
        decoration: InputDecoration(labelText: label, suffixIcon: const Icon(Icons.calendar_today_outlined)),
        child: Text(value != null ? dateFormat.format(value!) : 'Select a date'),
      ),
    );
  }
}
