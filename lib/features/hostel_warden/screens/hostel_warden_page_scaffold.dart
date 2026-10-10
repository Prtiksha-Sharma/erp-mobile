import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/models/hostel_warden.dart';
import '../../../core/roles/app_role.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/widgets/app_shell/app_change_password_sheet.dart';
import '../../../ui/widgets/app_shell/app_page_scaffold.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/status_badge.dart';
import 'hostel_warden_nav.dart';

/// The frame every hostel warden page shares: the drawer-shell
/// [AppPageScaffold] (gradient app bar, left drawer, notifications, account
/// menu), same as Librarian. There is no /hostel/profile endpoint, so the
/// account block reads straight from the login session.
class HostelWardenPageScaffold extends ConsumerWidget {
  const HostelWardenPageScaffold({
    super.key,
    required this.title,
    required this.body,
    this.floatingActionButton,
    this.actions = const [],
    this.bottom,
  });

  final String title;
  final Widget body;
  final Widget? floatingActionButton;
  final List<Widget> actions;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider).user;
    return AppPageScaffold(
      role: AppRole.hostelWarden,
      title: title,
      body: body,
      sections: hostelWardenNavSections,
      roleLabel: 'Hostel Warden',
      accountName: user?.fullName ?? 'Hostel Warden',
      accountEmail: user?.email,
      accountUsername: user?.username,
      onChangePassword: () => showAppChangePasswordSheet(context),
      onSignOut: () => ref.read(authProvider.notifier).logout(),
      floatingActionButton: floatingActionButton,
      actions: actions,
      bottom: bottom,
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
  const SectionLabel(this.text, {super.key, this.trailing});

  final String text;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(child: Text(text, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15))),
          ?trailing,
        ],
      ),
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

/// A single-line search box.
class HostelSearchField extends StatelessWidget {
  const HostelSearchField({super.key, required this.controller, required this.hint, required this.onChanged});

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

/// A page header line: first child at the start, last at the end, wrapping
/// onto two lines on a narrow phone instead of overflowing.
class HeaderBar extends StatelessWidget {
  const HeaderBar({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 12,
      runSpacing: 8,
      children: children,
    );
  }
}

/// A tappable date chip (`10 Oct 2026` + calendar icon) that opens a picker.
class DatePickerChip extends StatelessWidget {
  const DatePickerChip({super.key, required this.date, required this.onChanged, this.lastDate, this.firstDate});

  final DateTime date;
  final ValueChanged<DateTime> onChanged;
  final DateTime? firstDate;
  final DateTime? lastDate;

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      avatar: const Icon(Icons.calendar_today_outlined, size: 18),
      label: Text(formatDate(DateTime.utc(date.year, date.month, date.day))),
      onPressed: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate: date,
          firstDate: firstDate ?? DateTime(2020),
          lastDate: lastDate ?? DateTime.now().add(const Duration(days: 365)),
        );
        if (picked != null) onChanged(picked);
      },
    );
  }
}

/// Bottom-sheet frame for every warden form — drag handle, 560dp cap,
/// keyboard-aware padding.
Future<T?> showHostelFormSheet<T>(BuildContext context, WidgetBuilder builder) {
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
  final VoidCallback? onSubmit;
  final String submitLabel;

  @override
  Widget build(BuildContext context) {
    // Wrap (not Row) so a long label / large text size drops to a second
    // line on a narrow phone instead of overflowing.
    return Wrap(
      alignment: WrapAlignment.end,
      spacing: 8,
      runSpacing: 8,
      children: [
        TextButton(onPressed: busy ? null : () => Navigator.of(context).pop(), child: const Text('Cancel')),
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

/// Inline error text under a form.
class FormError extends StatelessWidget {
  const FormError(this.message, {super.key});

  final String? message;

  @override
  Widget build(BuildContext context) {
    if (message == null) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Text(message!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
    );
  }
}

/// Confirmation dialog. [action] runs with the dialog still open (its button
/// shows a spinner); it returns an error message to show inline, or null on
/// success, which closes the dialog and resolves to true.
Future<bool> showHostelConfirm(
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

/// VACANT / PARTIAL / FULL -> badge.
StatusBadge roomStatusBadge(String? status) => switch (status) {
      'VACANT' => const StatusBadge(label: 'Vacant', variant: BadgeVariant.success),
      'PARTIAL' => const StatusBadge(label: 'Partial', variant: BadgeVariant.warning),
      'FULL' => const StatusBadge(label: 'Full', variant: BadgeVariant.danger),
      _ => StatusBadge(label: humanizeEnum(status)),
    };

/// PRESENT / ABSENT -> badge.
StatusBadge attendanceBadge(String status) => switch (status) {
      'PRESENT' => const StatusBadge(label: 'Present', variant: BadgeVariant.success),
      'ABSENT' => const StatusBadge(label: 'Absent', variant: BadgeVariant.danger),
      _ => StatusBadge(label: humanizeEnum(status)),
    };

/// `Single · AC · 2 beds` — room attributes as one subtitle line.
String roomAttributes(WardenRoom r) => [
      if (r.roomType != null) humanizeEnum(r.roomType),
      if (r.acType != null) r.acType == 'NON_AC' ? 'Non-AC' : 'AC',
      '${r.capacity} ${r.capacity == 1 ? 'bed' : 'beds'}',
    ].join(' · ');

/// Today as a calendar day (no time), for date-keyed providers.
DateTime today() {
  final n = DateTime.now();
  return DateTime(n.year, n.month, n.day);
}
