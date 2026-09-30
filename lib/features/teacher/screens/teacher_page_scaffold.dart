import 'dart:math' as math;

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../services/teacher_portal_service.dart' show UploadFile;

/// The frame every teacher sub-page shares — app bar + body on the portal's
/// light page background (same as the student portal's page frame).
class TeacherPageScaffold extends StatelessWidget {
  const TeacherPageScaffold({
    super.key,
    required this.title,
    required this.body,
    this.actions,
    this.bottom,
    this.floatingActionButton,
  });

  final String title;
  final Widget body;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      appBar: AppBar(title: Text(title), actions: actions, bottom: bottom),
      floatingActionButton: floatingActionButton,
      body: body,
    );
  }
}

/// A card of rows separated by hairline dividers — the web's
/// `<div className="rounded-2xl border divide-y">` list pattern.
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
          for (var i = 0; i < children.length; i++) ...[
            if (i > 0) divider,
            children[i],
          ],
        ],
      ),
    );
  }
}

/// A bold section label above a list (the web's `<h2 className="type-label">`).
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
  Widget build(BuildContext context) =>
      SectionCard(child: EmptyState(icon: icon, title: title, message: message));
}

/// Shown instead of a Class-Teacher-only page for a plain Teacher — the
/// web pages' `if (!isClassTeacher)` early return, same copy.
class ClassTeacherOnlyNotice extends StatelessWidget {
  const ClassTeacherOnlyNotice({super.key, required this.icon, required this.feature});

  final IconData icon;

  /// e.g. "Attendance marking is", "Leave approval is", "My Class is".
  final String feature;

  @override
  Widget build(BuildContext context) {
    return ResponsiveListView(
      children: [
        EmptyCard(
          icon: icon,
          title: 'Not assigned as a Class Teacher',
          message: '$feature only available to staff assigned as a Class Teacher for a class/section. '
              'Contact your School Admin if you believe this is incorrect.',
        ),
      ],
    );
  }
}

/// The web's SVG AttendanceRateRing: green ≥ 90, amber ≥ 75, else red;
/// shows "—" when there's nothing recorded.
class AttendanceRateRing extends StatelessWidget {
  const AttendanceRateRing({super.key, required this.percent, this.size = 56, this.stroke = 6, this.onDark = false});

  final double? percent;
  final double size;
  final double stroke;

  /// Draws the track in translucent white for use on the brand gradient.
  final bool onDark;

  @override
  Widget build(BuildContext context) {
    final clamped = math.max(0.0, math.min(100.0, percent ?? 0));
    final color = clamped >= 90
        ? AppColors.success
        : clamped >= 75
            ? AppColors.amber
            : AppColors.danger;
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: clamped / 100,
            strokeWidth: stroke,
            strokeCap: StrokeCap.round,
            color: onDark ? Colors.white : color,
            backgroundColor: onDark ? Colors.white24 : AppColors.border,
          ),
          Center(
            child: Text(
              percent != null ? '${percent!.round()}%' : '—',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: size / 4.2,
                color: onDark ? Colors.white : color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Tinted icon square used in list rows and stat tiles.
class TintedIcon extends StatelessWidget {
  const TintedIcon({super.key, required this.icon, required this.color, this.size = 40, this.solid = false});

  final IconData icon;
  final Color color;
  final double size;

  /// Solid [color] background with a white glyph (dashboard stat tiles).
  final bool solid;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: solid ? color : color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(size * 0.3),
      ),
      child: Icon(icon, size: size * 0.45, color: solid ? Colors.white : color),
    );
  }
}

/// Horizontal stat tile — icon (or ring) + big value + caption (the web
/// teacher pages' local StatTile).
class TeacherStatTile extends StatelessWidget {
  const TeacherStatTile({
    super.key,
    required this.value,
    required this.label,
    required this.tint,
    this.leading,
  });

  final String value;
  final String label;
  final Color tint;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: tint, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          ?leading,
          if (leading != null) const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (value.isNotEmpty)
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      value,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
                    ),
                  ),
                Text(
                  label,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall?.copyWith(color: AppColors.textSecondary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Tappable read-only field that opens a date picker (the web's DatePicker).
class DateField extends StatelessWidget {
  const DateField({
    super.key,
    required this.label,
    required this.value,
    required this.onPicked,
    this.errorText,
    this.firstDate,
    this.lastDate,
    this.onClear,
  });

  final String label;
  final DateTime? value;
  final ValueChanged<DateTime> onPicked;
  final String? errorText;
  final DateTime? firstDate;
  final DateTime? lastDate;

  /// Shows a clear button for optional dates.
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(4),
      onTap: () async {
        final now = DateTime.now();
        final picked = await showDatePicker(
          context: context,
          initialDate: value ?? now,
          firstDate: firstDate ?? DateTime(now.year - 2),
          lastDate: lastDate ?? DateTime(now.year + 2, 12, 31),
        );
        if (picked != null) onPicked(picked);
      },
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
          errorText: errorText,
          suffixIcon: (onClear != null && value != null)
              ? IconButton(icon: const Icon(Icons.clear, size: 18), tooltip: 'Clear', onPressed: onClear)
              : const Icon(Icons.calendar_today_outlined, size: 18),
        ),
        child: Text(value == null ? 'Select date' : formatDate(value)),
      ),
    );
  }
}

/// Bottom-sheet frame for every teacher form — drag handle, 560dp cap,
/// keyboard-aware padding (same as the student sheets).
Future<T?> showTeacherFormSheet<T>(BuildContext context, WidgetBuilder builder) {
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
  const SheetActions({super.key, required this.busy, required this.onSubmit, required this.submitLabel, this.danger = false});

  final bool busy;
  final VoidCallback onSubmit;
  final String submitLabel;
  final bool danger;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(onPressed: busy ? null : () => Navigator.of(context).pop(), child: const Text('Cancel')),
        const SizedBox(width: 8),
        FilledButton(
          style: danger ? FilledButton.styleFrom(backgroundColor: scheme.error, foregroundColor: scheme.onError) : null,
          onPressed: busy ? null : onSubmit,
          child: busy
              ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
              : Text(submitLabel),
        ),
      ],
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

/// Picks one file and validates it against a backend multer allow-list.
/// Returns the file, or an error message the caller should show; `(null,
/// null)` means the picker was dismissed.
Future<(UploadFile?, String?)> pickUploadFile({
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
    return (UploadFile(name: picked.name, bytes: bytes, mimeType: mime), null);
  } catch (_) {
    return (null, "Couldn't read that file. Please try another one.");
  }
}

// ── Status -> badge variant maps, 1:1 with the web pages' *_VARIANT tables ──

/// Staff & student leave (MyLeavesPage / leaves/constants/leaveStatus.js).
BadgeVariant leaveStatusVariant(String? s) => switch (s) {
      'APPROVED' => BadgeVariant.success,
      'REJECTED' => BadgeVariant.danger,
      'PENDING' || null => BadgeVariant.warning,
      _ => BadgeVariant.neutral, // CANCELLED
    };

/// Lesson plan / syllabus progress (MyLessonPlansPage STATUS_VARIANT).
BadgeVariant progressStatusVariant(String? s) => switch (s) {
      'IN_PROGRESS' => BadgeVariant.warning,
      'COMPLETED' => BadgeVariant.success,
      _ => BadgeVariant.neutral,
    };

/// Homework submission (HomeworkDetailModal STATUS_VARIANT).
BadgeVariant submissionStatusVariant(String? s) => switch (s) {
      'SUBMITTED' => BadgeVariant.success,
      'LATE' => BadgeVariant.warning,
      'MISSING' => BadgeVariant.danger,
      _ => BadgeVariant.neutral,
    };

/// Staff attendance (MyAttendancePage STATUS_VARIANT).
BadgeVariant staffAttendanceVariant(String? s) => switch (s) {
      'PRESENT' => BadgeVariant.success,
      'ABSENT' => BadgeVariant.danger,
      'HALF_DAY' => BadgeVariant.warning,
      _ => BadgeVariant.neutral,
    };

/// My Class fee status (MyClassPage FEE_STATUS_VARIANT).
BadgeVariant feeStatusVariant(String? s) => switch (s) {
      'PAID' => BadgeVariant.success,
      'PARTIAL' => BadgeVariant.warning,
      'PENDING' => BadgeVariant.danger,
      _ => BadgeVariant.neutral,
    };

/// Exam attendance (MyClassStudentPerformancePage ATTENDANCE_STATUS_VARIANT).
BadgeVariant examAttendanceVariant(String? s) => switch (s) {
      'PRESENT' => BadgeVariant.success,
      'ABSENT' => BadgeVariant.danger,
      _ => BadgeVariant.neutral,
    };

/// `1 day` / `3 days` from a numeric total_days (web: `${n} day${n !== 1 ? 's' : ''}`).
String dayCount(num n) => '${n % 1 == 0 ? n.toInt() : n} day${n == 1 ? '' : 's'}';

/// Same calendar day, compared on the local date parts.
bool isSameDay(DateTime a, DateTime b) => a.year == b.year && a.month == b.month && a.day == b.day;

/// The calendar day a `@db.Date` value stands for — it arrives as UTC
/// midnight, so its own (UTC) date parts are the stored day.
DateTime calendarDay(DateTime d) => DateTime(d.year, d.month, d.day);
