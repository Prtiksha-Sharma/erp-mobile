import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/roles/app_role.dart';
import '../../../ui/widgets/app_shell/app_change_password_sheet.dart';
import '../../../ui/widgets/app_shell/app_page_scaffold.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/librarian_providers.dart';
import '../services/librarian_service.dart' show LibraryUploadFile;
import 'librarian_nav.dart';

/// The frame every librarian page shares: the drawer-shell [AppPageScaffold]
/// (gradient app bar, left drawer, notifications, account menu), same as
/// Teacher/Principal. Every librarian screen builds on this instead of its
/// own `Scaffold`.
class LibrarianPageScaffold extends ConsumerWidget {
  const LibrarianPageScaffold({
    super.key,
    required this.title,
    required this.body,
    this.floatingActionButton,
    this.actions = const [],
  });

  final String title;
  final Widget body;
  final Widget? floatingActionButton;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider).user;
    final profile = ref.watch(librarianProfileProvider).value;
    final displayName = profile?.fullName ?? user?.fullName ?? 'Librarian';

    return AppPageScaffold(
      role: AppRole.librarian,
      title: title,
      body: body,
      sections: librarianNavSections,
      roleLabel: 'Librarian',
      schoolName: profile?.institution?.institutionName,
      accountName: displayName,
      accountEmail: user?.email,
      accountUsername: user?.username,
      accountPhotoUrl: profile?.profilePhotoUrl,
      onProfile: () => context.go('/librarian/profile'),
      onChangePassword: () => showAppChangePasswordSheet(context),
      onSignOut: () => ref.read(authProvider.notifier).logout(),
      floatingActionButton: floatingActionButton,
      actions: actions,
    );
  }
}

/// A card of rows separated by hairline dividers.
class DividedCard extends StatelessWidget {
  const DividedCard({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final divider = Divider(height: 1, color: scheme.outlineVariant.withValues(alpha: 0.6));
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.6)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (var i = 0; i < children.length; i++) ...[
            if (i > 0) divider,
            children[i],
          ],
        ],
      ),
    );
  }
}

/// A bold section label above a list.
class SectionLabel extends StatelessWidget {
  const SectionLabel(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(text, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
    );
  }
}

/// An [EmptyState] framed in a card, for empty lists inside a page.
class EmptyCard extends StatelessWidget {
  const EmptyCard({super.key, required this.icon, required this.title, this.message});

  final IconData icon;
  final String title;
  final String? message;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.6)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: EmptyState(icon: icon, title: title, message: message),
      ),
    );
  }
}

/// A single-line search box used by the catalog and the issue flow.
class LibrarySearchField extends StatelessWidget {
  const LibrarySearchField({super.key, required this.controller, required this.hint, required this.onChanged});

  final TextEditingController controller;
  final String hint;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: const Icon(Icons.search),
        suffixIcon: ValueListenableBuilder<TextEditingValue>(
          valueListenable: controller,
          builder: (context, value, _) => value.text.isEmpty
              ? const SizedBox.shrink()
              : IconButton(
                  tooltip: 'Clear',
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    controller.clear();
                    onChanged('');
                  },
                ),
        ),
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide.none),
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
      ),
    );
  }
}

/// Bottom-sheet frame for every librarian form — drag handle, 560dp cap,
/// keyboard-aware padding.
Future<T?> showLibrarianFormSheet<T>(BuildContext context, WidgetBuilder builder) {
  return showModalBottomSheet<T>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    showDragHandle: true,
    constraints: const BoxConstraints(maxWidth: 560),
    builder: (sheetContext) => Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 20 + MediaQuery.viewInsetsOf(sheetContext).bottom),
      child: SingleChildScrollView(child: builder(sheetContext)),
    ),
  );
}

/// Cancel / primary action row at the bottom of a form sheet.
class SheetActions extends StatelessWidget {
  const SheetActions({super.key, required this.busy, required this.onSubmit, required this.submitLabel});

  final bool busy;
  final VoidCallback onSubmit;
  final String submitLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(onPressed: busy ? null : () => Navigator.of(context).pop(), child: const Text('Cancel')),
        const SizedBox(width: 8),
        FilledButton(
          onPressed: busy ? null : onSubmit,
          child: busy
              ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
              : Text(submitLabel),
        ),
      ],
    );
  }
}

/// Confirmation dialog. [action] runs with the dialog still open (its button
/// shows a spinner); it returns an error message to show inline, or null on
/// success, which closes the dialog and resolves to true.
Future<bool> showLibraryConfirm(
  BuildContext context, {
  required String title,
  required String message,
  required String confirmLabel,
  required Future<String?> Function() action,
  bool dangerous = false,
}) async {
  final ok = await showDialog<bool>(
    context: context,
    builder: (_) => _ConfirmDialog(
      title: title,
      message: message,
      confirmLabel: confirmLabel,
      action: action,
      dangerous: dangerous,
    ),
  );
  return ok ?? false;
}

class _ConfirmDialog extends StatefulWidget {
  const _ConfirmDialog({
    required this.title,
    required this.message,
    required this.confirmLabel,
    required this.action,
    required this.dangerous,
  });

  final String title;
  final String message;
  final String confirmLabel;
  final Future<String?> Function() action;
  final bool dangerous;

  @override
  State<_ConfirmDialog> createState() => _ConfirmDialogState();
}

class _ConfirmDialogState extends State<_ConfirmDialog> {
  bool _busy = false;
  String? _error;

  Future<void> _run() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    final error = await widget.action();
    if (!mounted) return;
    if (error == null) {
      Navigator.of(context).pop(true);
    } else {
      setState(() {
        _busy = false;
        _error = error;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return AlertDialog(
      title: Text(widget.title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.message),
          if (_error != null) ...[
            const SizedBox(height: 12),
            Text(_error!, style: TextStyle(color: scheme.error)),
          ],
        ],
      ),
      actions: [
        TextButton(onPressed: _busy ? null : () => Navigator.of(context).pop(false), child: const Text('Cancel')),
        FilledButton(
          style: widget.dangerous
              ? FilledButton.styleFrom(backgroundColor: scheme.error, foregroundColor: scheme.onError)
              : null,
          onPressed: _busy ? null : _run,
          child: _busy
              ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
              : Text(widget.confirmLabel),
        ),
      ],
    );
  }
}

void showSnack(BuildContext context, String message) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(message)));
}

/// Picks one image and validates it against the backend multer allow-list.
/// Returns the file, or an error message to show; `(null, null)` means the
/// picker was dismissed.
Future<(LibraryUploadFile?, String?)> pickLibraryUploadFile({
  required Map<String, String> mimeByExtension,
  required int maxBytes,
  required String typeError,
  required String sizeError,
}) async {
  try {
    final picked = await FilePicker.pickFile(type: FileType.custom, allowedExtensions: mimeByExtension.keys.toList());
    if (picked == null) return (null, null);
    final mime = mimeByExtension[(picked.extension ?? '').toLowerCase()];
    if (mime == null) return (null, typeError);
    final size = await picked.length();
    if (size != null && size > maxBytes) return (null, sizeError);
    final bytes = await picked.readAsBytes();
    if (bytes.length > maxBytes) return (null, sizeError);
    return (LibraryUploadFile(name: picked.name, bytes: bytes, mimeType: mime), null);
  } catch (_) {
    return (null, "Couldn't read that file. Please try another one.");
  }
}

/// Loan state -> badge: overdue and unpaid-fine states stand out.
({String label, BadgeVariant variant}) issueBadge(bool returned, bool overdue) {
  if (returned) return (label: 'Returned', variant: BadgeVariant.success);
  if (overdue) return (label: 'Overdue', variant: BadgeVariant.danger);
  return (label: 'Issued', variant: BadgeVariant.primary);
}
