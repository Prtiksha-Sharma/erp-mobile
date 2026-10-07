import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/failure.dart';
import '../../../core/roles/app_role.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/app_shell/app_change_password_sheet.dart';
import '../../../ui/widgets/app_shell/app_page_scaffold.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/school_admin_providers.dart';
import '../services/staff_directory_service.dart' show UploadFile;
import 'school_admin_nav.dart';

/// The frame every School Admin page shares: the drawer-shell
/// [AppPageScaffold], same as Student/Teacher/Parent.
///
/// - No "My Profile" in the account menu: School Admin has no self-profile
///   endpoint (it isn't a staff_accounts row).
/// - No school name: no endpoint a School Admin can call returns it (the
///   web reads it from /schools/by-slug, which needs the web's subdomain) —
///   except the logo upload response, which is shown once it exists.
class SchoolAdminPageScaffold extends ConsumerWidget {
  const SchoolAdminPageScaffold({
    super.key,
    required this.title,
    required this.body,
    this.bottom,
    this.floatingActionButton,
    this.actions = const [],
  });

  final String title;
  final Widget body;
  final PreferredSizeWidget? bottom;
  final Widget? floatingActionButton;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider).user;
    final schoolName = ref.watch(schoolLogoProvider)?.institutionName;
    return AppPageScaffold(
      role: AppRole.schoolAdmin,
      title: title,
      body: body,
      sections: schoolAdminNavSections,
      roleLabel: 'School Admin',
      schoolName: schoolName,
      accountName: user?.fullName ?? user?.username ?? 'School Admin',
      accountEmail: user?.email,
      accountUsername: user?.username,
      onChangePassword: () => showAppChangePasswordSheet(context),
      onSignOut: () => ref.read(authProvider.notifier).logout(),
      bottom: bottom,
      floatingActionButton: floatingActionButton,
      actions: actions,
    );
  }
}

/// Honest placeholder for a SCHOOL_ADMIN_NAV page not ported yet — same
/// copy as Vice Principal's. Never shows fake data.
class SchoolAdminNotOnMobileScreen extends StatelessWidget {
  const SchoolAdminNotOnMobileScreen({super.key, required this.label, required this.icon});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SchoolAdminPageScaffold(
      title: label,
      body: ResponsiveListView(
        children: [
          SectionCard(
            child: EmptyState(
              icon: icon,
              title: 'Not available in the app yet',
              message: '$label is available on the web portal. It is coming to the mobile app soon.',
            ),
          ),
        ],
      ),
    );
  }
}

/// A route to [SchoolAdminNotOnMobileScreen] — used by an area's
/// `*_routes.dart` for each page it hasn't ported yet.
GoRoute notOnMobileRoute(String path, String label, IconData icon) => GoRoute(
  path: path,
  builder: (context, state) => SchoolAdminNotOnMobileScreen(label: label, icon: icon),
);

/// Icon + title (+ optional subtitle) page header — the web's
/// `pageHeaderClass` row.
class PageHeading extends StatelessWidget {
  const PageHeading({super.key, required this.icon, required this.title, this.subtitle, this.iconColor, this.trailing});

  final IconData icon;
  final String title;
  final String? subtitle;
  final Color? iconColor;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Icon(icon, size: 22, color: iconColor ?? theme.colorScheme.primary),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
              ),
              if (subtitle != null) ...[
                const SizedBox(height: 2),
                Text(subtitle!, style: theme.textTheme.bodySmall?.copyWith(color: AppColors.textMuted)),
              ],
            ],
          ),
        ),
        if (trailing != null) ...[const SizedBox(width: 8), trailing!],
      ],
    );
  }
}

/// A card of rows separated by hairline dividers — the web's
/// `<Card bodyClass="p-0"><div className="divide-y">` list pattern.
class DividedCard extends StatelessWidget {
  const DividedCard({super.key, required this.children, this.header});

  final List<Widget> children;
  final Widget? header;

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
          if (header != null) ...[header!, divider],
          for (var i = 0; i < children.length; i++) ...[if (i > 0) divider, children[i]],
        ],
      ),
    );
  }
}

// ── Avatars (web shared/utils/avatar.js + shared Avatar component) ───────

/// AVATAR_ACCENTS, same order as the web.
const _avatarAccents = <(Color, Color)>[
  (AppColors.primary, AppColors.primaryLight),
  (AppColors.violet, AppColors.violetLight),
  (AppColors.emerald, AppColors.emeraldLight),
  (AppColors.amber, AppColors.amberLight),
  (AppColors.rose, AppColors.roseLight),
  (AppColors.teal, AppColors.tealLight),
];

/// The web's accentFor(name): first upper-cased char code mod 6.
/// Returns (color, light background).
(Color, Color) accentFor(String? name) {
  final s = (name == null || name.isEmpty) ? '?' : name.toUpperCase();
  return _avatarAccents[s.codeUnitAt(0) % _avatarAccents.length];
}

/// Round photo, or tinted initials when there's no photo (web Avatar).
class StaffAvatar extends StatelessWidget {
  const StaffAvatar({super.key, required this.name, this.photoUrl, this.size = 40, this.ring = false});

  final String? name;
  final String? photoUrl;
  final double size;

  /// Light accent ring around the avatar (Librarian/Receptionist cards).
  final bool ring;

  @override
  Widget build(BuildContext context) {
    final (color, light) = accentFor(name);
    final hasPhoto = photoUrl != null && photoUrl!.isNotEmpty;
    final avatar = CircleAvatar(
      radius: size / 2,
      backgroundColor: hasPhoto ? AppColors.pageBg : color,
      backgroundImage: hasPhoto ? CachedNetworkImageProvider(photoUrl!) : null,
      child: hasPhoto
          ? null
          : Text(
              initialsOf(name),
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: size * 0.36),
            ),
    );
    if (!ring) return avatar;
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(color: light, shape: BoxShape.circle),
      child: avatar,
    );
  }
}

// ── Status maps (shared/constants/employmentStatus.js, StaffListPage) ────

/// EMPLOYMENT_STATUS_VARIANT.
BadgeVariant employmentStatusVariant(String? s) => switch (s) {
  'ACTIVE' => BadgeVariant.success,
  'ON_LEAVE' => BadgeVariant.warning,
  'TERMINATED' => BadgeVariant.danger,
  _ => BadgeVariant.neutral, // INACTIVE, RESIGNED, unknown
};

/// StaffListPage STATUS_OPTIONS.
const employmentStatusOptions = <(String, String)>[
  ('ACTIVE', 'Active'),
  ('INACTIVE', 'Inactive'),
  ('ON_LEAVE', 'On Leave'),
  ('RESIGNED', 'Resigned'),
  ('TERMINATED', 'Terminated'),
];

String employmentStatusLabel(String status) =>
    employmentStatusOptions.where((o) => o.$1 == status).map((o) => o.$2).firstOrNull ?? status;

/// StaffListPage STATUS_DOT.
Color employmentStatusDot(String? s) => switch (s) {
  'ACTIVE' => AppColors.success,
  'ON_LEAVE' => AppColors.warning,
  'TERMINATED' => AppColors.danger,
  _ => AppColors.textMuted,
};

/// staff_accounts.employee_type options (StaffIdentityFields / StaffListPage).
const employeeTypeOptions = ['Full Time', 'Part Time', 'Contract', 'Temporary', 'Consultant'];

/// The roles POST /admin/staff accepts (backend ASSIGNABLE_STAFF_ROLES).
const assignableStaffRoles = [
  'Principal', 'Vice Principal', 'Accountant', 'Teacher', 'Class Teacher', //
  'Librarian', 'HR Manager', 'Transport Manager', 'Receptionist', 'Hostel Warden',
];

/// "Teacher · Senior Teacher" when there's exactly one role and a distinct
/// designation, else the roles joined — StaffListPage's designation column.
String roleDesignationLabel(List<String> roles, String? designation) {
  final d = designation?.trim();
  if (roles.length == 1 && d != null && d.isNotEmpty && d.toLowerCase() != roles.first.trim().toLowerCase()) {
    return '${roles.first} · $d';
  }
  return roles.isEmpty ? '—' : roles.join(', ');
}

// ── Pagination (shared/components/ui/Pagination.jsx) ─────────────────────

class PaginationBar extends StatelessWidget {
  const PaginationBar({
    super.key,
    required this.page,
    required this.total,
    required this.pageSize,
    required this.onChange,
  });

  final int page;
  final int total;
  final int pageSize;
  final ValueChanged<int> onChange;

  @override
  Widget build(BuildContext context) {
    final totalPages = (total / pageSize).ceil().clamp(1, 1 << 30);
    final from = total == 0 ? 0 : ((page - 1) * pageSize + 1).clamp(0, total);
    final to = (page * pageSize).clamp(0, total);
    final pages = <int?>[];
    for (var p = 1; p <= totalPages; p++) {
      if (p == 1 || p == totalPages || (p >= page - 1 && p <= page + 1)) {
        pages.add(p);
      } else if ((p == page - 2 && page > 3) || (p == page + 2 && page < totalPages - 2)) {
        pages.add(null); // ellipsis
      }
    }
    final deduped = <int?>[];
    for (final p in pages) {
      if (deduped.isEmpty || deduped.last != p) deduped.add(p);
    }

    Widget pageButton(Widget child, {VoidCallback? onTap, bool active = false}) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Material(
        color: active ? AppColors.primary : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 36, minHeight: 36),
            child: Center(
              child: DefaultTextStyle.merge(
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: active ? Colors.white : (onTap == null ? AppColors.border : AppColors.textSecondary),
                ),
                child: IconTheme.merge(
                  data: IconThemeData(size: 18, color: onTap == null ? AppColors.border : AppColors.textSecondary),
                  child: child,
                ),
              ),
            ),
          ),
        ),
      ),
    );

    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      crossAxisAlignment: WrapCrossAlignment.center,
      runSpacing: 8,
      spacing: 12,
      children: [
        Text(total == 0 ? 'No results' : '$from–$to of $total', style: const TextStyle(color: AppColors.textMuted)),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            pageButton(const Icon(Icons.chevron_left), onTap: page <= 1 ? null : () => onChange(page - 1)),
            for (final p in deduped)
              p == null
                  ? const SizedBox(
                      width: 24,
                      child: Center(
                        child: Text('…', style: TextStyle(color: AppColors.textMuted)),
                      ),
                    )
                  : pageButton(Text('$p'), active: p == page, onTap: p == page ? () {} : () => onChange(p)),
            pageButton(const Icon(Icons.chevron_right), onTap: page >= totalPages ? null : () => onChange(page + 1)),
          ],
        ),
      ],
    );
  }
}

// ── Forms ────────────────────────────────────────────────────────────────

/// Tappable read-only field that opens a date picker (the web's DatePicker).
class DateField extends StatelessWidget {
  const DateField({
    super.key,
    required this.label,
    required this.value,
    required this.onPicked,
    this.errorText,
    this.onClear,
    this.enabled = true,
    this.firstDate,
    this.lastDate,
    this.initialDate,
  });

  final String label;
  final DateTime? value;

  /// Picker bounds (default 1950 … 10 years ahead) and where it opens when
  /// there's no value yet.
  final DateTime? firstDate;
  final DateTime? lastDate;
  final DateTime? initialDate;
  final ValueChanged<DateTime> onPicked;
  final String? errorText;

  /// Shows a clear button for optional dates.
  final VoidCallback? onClear;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(4),
      onTap: !enabled
          ? null
          : () async {
              final now = DateTime.now();
              final picked = await showDatePicker(
                context: context,
                initialDate: value ?? initialDate ?? now,
                firstDate: firstDate ?? DateTime(1950),
                lastDate: lastDate ?? DateTime(now.year + 10, 12, 31),
              );
              if (picked != null) onPicked(picked);
            },
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
          errorText: errorText,
          enabled: enabled,
          suffixIcon: (onClear != null && value != null && enabled)
              ? IconButton(icon: const Icon(Icons.clear, size: 18), tooltip: 'Clear', onPressed: onClear)
              : const Icon(Icons.calendar_today_outlined, size: 18),
        ),
        child: Text(value == null ? 'Select date' : formatDate(value), maxLines: 1, overflow: TextOverflow.ellipsis),
      ),
    );
  }
}

/// `YYYY-MM-DD` (or a full ISO string) → the local calendar day, for
/// seeding a [DateField] from a `@db.Date` value (web: `.slice(0, 10)`).
DateTime? calendarDayOf(DateTime? d) => d == null ? null : DateTime(d.year, d.month, d.day);

/// Lays two form fields side by side from 400dp, stacked below that (the
/// web's `grid grid-cols-2 gap-4` inside a modal).
class FieldPair extends StatelessWidget {
  const FieldPair({super.key, required this.first, required this.second});

  final Widget first;
  final Widget second;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 400) {
          return Column(children: [first, const SizedBox(height: 14), second]);
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: first),
            const SizedBox(width: 12),
            Expanded(child: second),
          ],
        );
      },
    );
  }
}

/// Dropdown with an optional "none" first entry — the web's `<Select
/// placeholder>` whose placeholder is selectable to clear the value.
class OptionSelect extends StatelessWidget {
  const OptionSelect({
    super.key,
    required this.label,
    required this.value,
    required this.options,
    required this.onChanged,
    this.placeholder,
  });

  final String label;
  final String value;

  /// (value, label) pairs.
  final List<(String, String)> options;
  final ValueChanged<String> onChanged;

  /// Shown for the empty value; null means there is no empty choice.
  final String? placeholder;

  @override
  Widget build(BuildContext context) {
    final known = options.any((o) => o.$1 == value);
    return DropdownButtonFormField<String>(
      key: ValueKey('$label|$value'),
      initialValue: known || (placeholder != null && value.isEmpty) ? value : null,
      isExpanded: true,
      decoration: InputDecoration(labelText: label, border: const OutlineInputBorder()),
      items: [
        if (placeholder != null)
          DropdownMenuItem(
            value: '',
            child: Text(placeholder!, style: const TextStyle(color: AppColors.textMuted)),
          ),
        for (final (v, l) in options)
          DropdownMenuItem(
            value: v,
            child: Text(l, maxLines: 1, overflow: TextOverflow.ellipsis),
          ),
      ],
      onChanged: (v) => onChanged(v ?? ''),
    );
  }
}

/// A small upper-cased divider label between form sections (web
/// StaffIdentityFields' SectionDivider).
class FormSectionLabel extends StatelessWidget {
  const FormSectionLabel(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Divider(height: 1, color: AppColors.border),
          const SizedBox(height: 10),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }
}

/// Dashed "choose a file" box (the web's upload drop zone).
class FilePickBox extends StatelessWidget {
  const FilePickBox({super.key, required this.label, required this.text, required this.onTap, this.errorText});

  final String label;
  final String text;
  final VoidCallback? onTap;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.w500, color: AppColors.textSecondary),
        ),
        const SizedBox(height: 6),
        Material(
          color: AppColors.pageBg,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: AppColors.border, width: 1.5),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              child: Row(
                children: [
                  const Icon(Icons.cloud_upload_outlined, size: 18, color: AppColors.textMuted),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      text,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: AppColors.textSecondary, fontSize: 13),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (errorText != null) ...[
          const SizedBox(height: 4),
          Text(errorText!, style: const TextStyle(color: AppColors.danger, fontSize: 12)),
        ],
      ],
    );
  }
}

/// Inline red error text under a form (the web's `type-caption text-danger`).
class FormErrorText extends StatelessWidget {
  const FormErrorText(this.message, {super.key});

  final String message;

  @override
  Widget build(BuildContext context) => Text(message, style: const TextStyle(color: AppColors.danger, fontSize: 13));
}

/// Bottom-sheet frame for every School Admin form — drag handle, 560dp cap,
/// keyboard-aware padding (same as the other portals' sheets).
Future<T?> showAdminFormSheet<T>(BuildContext context, WidgetBuilder builder) {
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

/// Sheet title row.
class SheetTitle extends StatelessWidget {
  const SheetTitle(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 16),
    child: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
  );
}

/// Cancel / primary action row at the bottom of a form sheet.
class SheetActions extends StatelessWidget {
  const SheetActions({
    super.key,
    required this.busy,
    required this.onSubmit,
    required this.submitLabel,
    this.danger = false,
    this.color,
  });

  final bool busy;
  final VoidCallback? onSubmit;
  final String submitLabel;
  final bool danger;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bg = danger ? scheme.error : color;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Wrap(
        alignment: WrapAlignment.end,
        spacing: 8,
        runSpacing: 8,
        children: [
          TextButton(onPressed: busy ? null : () => Navigator.of(context).pop(), child: const Text('Cancel')),
          FilledButton(
            style: bg != null ? FilledButton.styleFrom(backgroundColor: bg, foregroundColor: Colors.white) : null,
            onPressed: busy ? null : onSubmit,
            child: busy
                ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
                : Text(submitLabel),
          ),
        ],
      ),
    );
  }
}

/// The web's ConfirmDialog. [action] runs with the dialog still open (its
/// button shows a spinner); it returns an error message to show inline, or
/// null on success, which closes the dialog and resolves to true.
Future<bool> showConfirmDialog(
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
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.message),
            if (_error != null) ...[const SizedBox(height: 12), Text(_error!, style: TextStyle(color: scheme.error))],
          ],
        ),
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

/// The backend's own message for a rejected request (the web's
/// `err.response.data.message ?? fallback`); network/server/session
/// failures keep the app-wide copy from [describeError].
String failureMessage(Failure f, String fallback) => switch (f) {
  ValidationFailure(:final message) => message.isEmpty ? fallback : message,
  _ => describeError(f),
};

void showSnack(BuildContext context, String message) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(message)));
}

/// JPG/PNG/PDF, the allow-list every staff record upload shares
/// (staffQualificationUpload / staffExperienceUpload / staffDocumentUploadAdmin).
const staffFileMimeTypes = {'jpg': 'image/jpeg', 'jpeg': 'image/jpeg', 'png': 'image/png', 'pdf': 'application/pdf'};

/// 500 KB — the same multer limit on all three staff record uploads.
const staffFileMaxBytes = 500 * 1024;

/// Picks one file and validates it against a backend multer allow-list,
/// with the web modals' own error copy. Returns the file, or an error
/// message to show; `(null, null)` means the picker was dismissed.
Future<(UploadFile?, String?)> pickUploadFile({
  required Map<String, String> mimeByExtension,
  required int maxBytes,
  required String typeError,
  required String Function(int bytes) sizeError,
  FileType type = FileType.custom,
}) async {
  try {
    final picked = await FilePicker.pickFile(
      type: type,
      allowedExtensions: type == FileType.custom ? mimeByExtension.keys.toList() : null,
    );
    if (picked == null) return (null, null);
    final mime = mimeByExtension[(picked.extension ?? '').toLowerCase()];
    if (mime == null) return (null, typeError);
    final bytes = await picked.readAsBytes();
    if (bytes.length > maxBytes) return (null, sizeError(bytes.length));
    return (UploadFile(name: picked.name, bytes: bytes, mimeType: mime), null);
  } catch (_) {
    return (null, "Couldn't read that file. Please try another one.");
  }
}
