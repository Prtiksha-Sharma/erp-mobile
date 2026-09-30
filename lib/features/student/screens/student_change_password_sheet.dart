import 'package:flutter/material.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../services/student_account_service.dart';

/// Port of the web's ChangePasswordModal.jsx as a bottom sheet — same three
/// fields, same client-side rules (required, min 8 chars, must match), and
/// the backend's own message shown verbatim on a 4xx (e.g. wrong current
/// password).
Future<void> showChangePasswordSheet(BuildContext context) async {
  final changed = await showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    showDragHandle: true,
    constraints: const BoxConstraints(maxWidth: 560),
    builder: (_) => const _ChangePasswordForm(),
  );
  if (changed == true && context.mounted) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Password changed successfully.')),
    );
  }
}

class _ChangePasswordForm extends StatefulWidget {
  const _ChangePasswordForm();

  @override
  State<_ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<_ChangePasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final _old = TextEditingController();
  final _new = TextEditingController();
  final _confirm = TextEditingController();
  final _obscure = {'old': true, 'new': true, 'confirm': true};
  bool _submitting = false;
  String? _error;

  @override
  void dispose() {
    _old.dispose();
    _new.dispose();
    _confirm.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() {
      _submitting = true;
      _error = null;
    });
    final result = await StudentAccountService().changePassword(oldPassword: _old.text, newPassword: _new.text);
    if (!mounted) return;
    switch (result) {
      case Ok():
        Navigator.of(context).pop(true);
      case Err(:final failure):
        setState(() {
          _submitting = false;
          _error = failure.userMessage;
        });
    }
  }

  Widget _field(String key, String label, TextEditingController c, String? Function(String?) validator,
      {String? hint, TextInputAction action = TextInputAction.next}) {
    return TextFormField(
      controller: c,
      obscureText: _obscure[key]!,
      textInputAction: action,
      onFieldSubmitted: action == TextInputAction.done ? (_) => _submit() : null,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(_obscure[key]! ? Icons.visibility_outlined : Icons.visibility_off_outlined),
          onPressed: () => setState(() => _obscure[key] = !_obscure[key]!),
        ),
      ),
      validator: validator,
    );
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 20 + MediaQuery.viewInsetsOf(context).bottom),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Change Password', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 16),
              if (_error != null) ...[
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: scheme.errorContainer,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(_error!, style: TextStyle(color: scheme.onErrorContainer)),
                ),
                const SizedBox(height: 12),
              ],
              _field('old', 'Current Password', _old,
                  (v) => (v == null || v.isEmpty) ? 'Current password is required.' : null),
              const SizedBox(height: 12),
              _field('new', 'New Password', _new, (v) {
                if (v == null || v.isEmpty) return 'New password is required.';
                if (v.length < 8) return 'Must be at least 8 characters.';
                return null;
              }, hint: 'Min. 8 characters'),
              const SizedBox(height: 12),
              _field('confirm', 'Confirm New Password', _confirm, (v) {
                if (v == null || v.isEmpty) return 'Please confirm your new password.';
                if (v != _new.text) return 'Passwords do not match.';
                return null;
              }, action: TextInputAction.done),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: _submitting ? null : () => Navigator.of(context).pop(false),
                    child: const Text('Cancel'),
                  ),
                  const SizedBox(width: 8),
                  FilledButton.icon(
                    onPressed: _submitting ? null : _submit,
                    icon: _submitting
                        ? const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2))
                        : const Icon(Icons.lock_outline, size: 18),
                    label: Text(_submitting ? 'Updating…' : 'Update Password'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
