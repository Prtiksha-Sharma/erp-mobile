import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/homework_submission.dart';
import '../providers/student_portal_providers.dart';
import '../services/student_portal_service.dart';

/// Port of SubmitHomeworkModal.jsx as a bottom sheet — optional
/// attachment (JPG/PNG/PDF/DOC/DOCX/PPT/PPTX, ≤ 10 MB, same limits the
/// backend enforces), then Submit. On success every list of that kind is
/// re-fetched (all status filters), like the web's
/// invalidateQueries(['student-portal', 'homework']).
Future<void> showSubmitWorkSheet(BuildContext context, {required WorkKind kind, required HomeworkSubmission item}) async {
  final submitted = await showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    showDragHandle: true,
    constraints: const BoxConstraints(maxWidth: 560),
    builder: (_) => _SubmitWorkForm(kind: kind, item: item),
  );
  if (submitted == true && context.mounted) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${kind.label} submitted.')));
  }
}

class _SubmitWorkForm extends ConsumerStatefulWidget {
  const _SubmitWorkForm({required this.kind, required this.item});

  final WorkKind kind;
  final HomeworkSubmission item;

  @override
  ConsumerState<_SubmitWorkForm> createState() => _SubmitWorkFormState();
}

class _SubmitWorkFormState extends ConsumerState<_SubmitWorkForm> {
  WorkAttachment? _file;
  bool _submitting = false;
  bool _picking = false;
  String? _error;

  Future<void> _pick() async {
    setState(() {
      _picking = true;
      _error = null;
    });
    try {
      final picked = await FilePicker.pickFile(
        type: FileType.custom,
        allowedExtensions: WorkAttachment.mimeByExtension.keys.toList(),
      );
      if (picked == null) return;
      final ext = (picked.extension ?? '').toLowerCase();
      final mime = WorkAttachment.mimeByExtension[ext];
      if (mime == null) {
        setState(() => _error = 'Only JPG, PNG, PDF, DOC/DOCX and PPT/PPTX files are allowed');
        return;
      }
      final size = await picked.length();
      if (size != null && size > WorkAttachment.maxBytes) {
        setState(() => _error = 'File too large. Maximum allowed size is 10 MB');
        return;
      }
      final bytes = await picked.readAsBytes();
      if (bytes.length > WorkAttachment.maxBytes) {
        setState(() => _error = 'File too large. Maximum allowed size is 10 MB');
        return;
      }
      setState(() => _file = WorkAttachment(name: picked.name, bytes: bytes, mimeType: mime));
    } catch (_) {
      setState(() => _error = "Couldn't read that file. Please try another one.");
    } finally {
      if (mounted) setState(() => _picking = false);
    }
  }

  Future<void> _submit() async {
    setState(() {
      _submitting = true;
      _error = null;
    });
    final result = await StudentPortalService().submitWork(widget.kind, widget.item.homeworkId, attachment: _file);
    if (!mounted) return;
    switch (result) {
      case Ok():
        for (final status in const [null, 'PENDING', 'SUBMITTED', 'MISSING']) {
          ref.invalidate(myWorkProvider((kind: widget.kind, status: status)));
        }
        Navigator.of(context).pop(true);
      case Err(:final failure):
        setState(() {
          _submitting = false;
          _error = failure.userMessage;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Submit ${widget.kind.label}', style: theme.textTheme.titleLarge),
            const SizedBox(height: 12),
            Text.rich(
              TextSpan(
                style: theme.textTheme.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                children: [
                  const TextSpan(text: 'Submitting '),
                  TextSpan(
                    text: widget.item.homework.title,
                    style: TextStyle(fontWeight: FontWeight.w600, color: scheme.onSurface),
                  ),
                  const TextSpan(text: '. This marks it as done for your teacher to review.'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text('Attach your work (optional)', style: theme.textTheme.labelLarge),
            const SizedBox(height: 8),
            if (_file != null)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  border: Border.all(color: scheme.outlineVariant),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.attach_file, size: 18, color: scheme.outline),
                    const SizedBox(width: 8),
                    Expanded(child: Text(_file!.name, maxLines: 1, overflow: TextOverflow.ellipsis)),
                    IconButton(
                      tooltip: 'Remove file',
                      icon: const Icon(Icons.close, size: 18),
                      onPressed: _submitting ? null : () => setState(() => _file = null),
                    ),
                  ],
                ),
              )
            else
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 14)),
                onPressed: _picking || _submitting ? null : _pick,
                icon: _picking
                    ? const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2))
                    : const Icon(Icons.attach_file),
                label: const Text('Choose a file from your device'),
              ),
            const SizedBox(height: 6),
            Text(
              'JPG, PNG, PDF, DOC/DOCX or PPT/PPTX — up to 10 MB.',
              style: theme.textTheme.bodySmall?.copyWith(color: scheme.outline),
            ),
            if (_error != null) ...[
              const SizedBox(height: 12),
              Text(_error!, style: TextStyle(color: scheme.error)),
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
                  onPressed: _submitting || _picking ? null : _submit,
                  child: _submitting
                      ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
                      : const Text('Submit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
