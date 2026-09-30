import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/child.dart';
import '../../../core/models/grievance_ticket.dart';
import '../providers/children_provider.dart';
import '../providers/grievances_provider.dart';
import '../services/grievances_service.dart';

/// Same shape as ApplyLeaveScreen — screen-local state, no dedicated
/// Riverpod Notifier, for the same reason (a one-off write nothing else
/// needs to observe).
class FileGrievanceScreen extends ConsumerStatefulWidget {
  const FileGrievanceScreen({super.key});

  @override
  ConsumerState<FileGrievanceScreen> createState() => _FileGrievanceScreenState();
}

class _FileGrievanceScreenState extends ConsumerState<FileGrievanceScreen> {
  final _formKey = GlobalKey<FormState>();
  final _subjectController = TextEditingController();
  final _descriptionController = TextEditingController();

  String? _category;
  String? _studentId;
  String _priority = 'NORMAL';
  bool _isSubmitting = false;
  Failure? _error;

  @override
  void dispose() {
    _subjectController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isSubmitting = true;
      _error = null;
    });

    final result = await GrievancesService().fileGrievance(
      studentId: _studentId,
      category: _category,
      subject: _subjectController.text.trim(),
      description: _descriptionController.text.trim(),
      priority: _priority,
    );

    if (!mounted) return;

    switch (result) {
      case Ok():
        ref.invalidate(grievancesListProvider);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Grievance filed.')),
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
    final childrenAsync = ref.watch(childrenListProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('File a Grievance')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            childrenAsync.when(
              data: (children) => children.length > 1
                  ? _ChildDropdown(
                      children: children,
                      value: _studentId,
                      onChanged: (v) => setState(() => _studentId = v),
                    )
                  : const SizedBox.shrink(),
              loading: () => const SizedBox.shrink(),
              error: (_, _) => const SizedBox.shrink(),
            ),
            DropdownButtonFormField<String>(
              initialValue: _category,
              decoration: const InputDecoration(labelText: 'Category (optional)'),
              items: grievanceCategories.map((c) => DropdownMenuItem(value: c, child: Text(c))).toList(),
              onChanged: (v) => setState(() => _category = v),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _subjectController,
              decoration: const InputDecoration(labelText: 'Subject'),
              validator: (v) => (v == null || v.trim().isEmpty) ? 'Required' : null,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
              maxLines: 5,
              validator: (v) => (v == null || v.trim().isEmpty) ? 'Required' : null,
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              initialValue: _priority,
              decoration: const InputDecoration(labelText: 'Priority'),
              items: grievancePriorities.map((p) => DropdownMenuItem(value: p, child: Text(p))).toList(),
              onChanged: (v) => setState(() => _priority = v ?? 'NORMAL'),
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

class _ChildDropdown extends StatelessWidget {
  const _ChildDropdown({required this.children, required this.value, required this.onChanged});

  final List<Child> children;
  final String? value;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: DropdownButtonFormField<String>(
        initialValue: value,
        decoration: const InputDecoration(labelText: 'About which child? (optional)'),
        items: children.map((c) => DropdownMenuItem(value: c.studentId, child: Text(c.displayName))).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
