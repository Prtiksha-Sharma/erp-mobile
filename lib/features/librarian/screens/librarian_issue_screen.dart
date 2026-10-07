import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/library.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../providers/librarian_providers.dart';
import '../services/librarian_service.dart';
import 'librarian_page_scaffold.dart';

/// Issue a book — pick an available title, find the student, set the due
/// date, confirm. POST /librarian/issues (default loan period is 14 days when
/// no due date is sent). The server answers 409 if the last copy just went.
class LibrarianIssueScreen extends ConsumerStatefulWidget {
  const LibrarianIssueScreen({super.key});

  @override
  ConsumerState<LibrarianIssueScreen> createState() => _LibrarianIssueScreenState();
}

class _LibrarianIssueScreenState extends ConsumerState<LibrarianIssueScreen> {
  final _bookSearch = TextEditingController();
  final _studentSearch = TextEditingController();
  String _bookQuery = '';
  String _studentQuery = '';
  Timer? _debounce;

  LibraryBook? _book;
  LibraryStudentHit? _student;
  DateTime? _dueDate;
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _debounce?.cancel();
    _bookSearch.dispose();
    _studentSearch.dispose();
    super.dispose();
  }

  void _onStudentQuery(String v) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 350), () {
      if (mounted) setState(() => _studentQuery = v.trim());
    });
  }

  Future<void> _pickDue() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _dueDate ?? now.add(const Duration(days: 14)),
      firstDate: now,
      lastDate: now.add(const Duration(days: 365)),
      helpText: 'Due date',
    );
    if (picked != null) setState(() => _dueDate = picked);
  }

  Future<void> _issue() async {
    final book = _book;
    final student = _student;
    if (book == null || student == null || _busy) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    final result = await LibrarianService().issueBook(bookId: book.bookId, studentId: student.studentId, dueDate: _dueDate);
    if (!mounted) return;
    switch (result) {
      case Ok():
        invalidateLibraryData(ref);
        showSnack(context, '"${book.title}" issued to ${student.fullName}');
        setState(() {
          _busy = false;
          _book = null;
          _student = null;
          _dueDate = null;
          _bookSearch.clear();
          _studentSearch.clear();
          _bookQuery = '';
          _studentQuery = '';
        });
      case Err(:final failure):
        // A stale list is the usual cause (copy taken meanwhile) — refresh it.
        ref.invalidate(librarianBooksProvider);
        setState(() {
          _busy = false;
          _error = failure.userMessage;
          _book = null;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return LibrarianPageScaffold(
      title: 'Issue Book',
      body: ResponsiveListView(
        children: [
          SectionCard(
            title: '1. Choose a book',
            icon: Icons.menu_book_outlined,
            child: _book != null
                ? _Chosen(
                    title: _book!.title,
                    subtitle: '${_book!.availableCopies} of ${_book!.totalCopies} copies available',
                    onClear: () => setState(() => _book = null),
                  )
                : _bookPicker(),
          ),
          const SizedBox(height: 12),
          SectionCard(
            title: '2. Find the student',
            icon: Icons.person_search_outlined,
            child: _student != null
                ? _Chosen(
                    title: _student!.fullName.isEmpty ? 'Student' : _student!.fullName,
                    subtitle: [
                      if ((_student!.admissionNo ?? '').isNotEmpty) 'Adm. ${_student!.admissionNo}',
                      if (_student!.classLabel.isNotEmpty) _student!.classLabel,
                    ].join('  ·  '),
                    onClear: () => setState(() => _student = null),
                  )
                : _studentPicker(),
          ),
          const SizedBox(height: 12),
          SectionCard(
            title: '3. Due date',
            icon: Icons.event_outlined,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    _dueDate == null ? 'Default: 14 days from today' : formatDate(_dueDate),
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                TextButton(onPressed: _pickDue, child: const Text('Change')),
                if (_dueDate != null)
                  IconButton(tooltip: 'Use default', onPressed: () => setState(() => _dueDate = null), icon: const Icon(Icons.close)),
              ],
            ),
          ),
          if (_error != null) ...[
            const SizedBox(height: 12),
            Text(_error!, style: TextStyle(color: scheme.error)),
          ],
          const SizedBox(height: 16),
          FilledButton.icon(
            onPressed: (_book != null && _student != null && !_busy) ? _issue : null,
            icon: _busy
                ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
                : const Icon(Icons.check),
            label: const Text('Issue book'),
          ),
          const SizedBox(height: 8),
          TextButton(onPressed: () => context.go('/librarian/records'), child: const Text('View issue records')),
        ],
      ),
    );
  }

  Widget _bookPicker() {
    final books = ref.watch(librarianBooksProvider);
    final q = _bookQuery.trim().toLowerCase();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        LibrarySearchField(
          controller: _bookSearch,
          hint: 'Search title, author or accession no.',
          onChanged: (v) => setState(() => _bookQuery = v),
        ),
        const SizedBox(height: 8),
        books.when(
          loading: () => const Padding(padding: EdgeInsets.all(16), child: Center(child: CircularProgressIndicator())),
          error: (e, _) => Text(describeError(e)),
          data: (all) {
            final matches = all
                .where((b) => b.isAvailable)
                .where((b) => q.isEmpty || [b.title, b.author, b.accessionNo].any((f) => (f ?? '').toLowerCase().contains(q)))
                .take(8)
                .toList();
            if (matches.isEmpty) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Text(q.isEmpty ? 'No books with copies available.' : 'No available book matches that search.'),
              );
            }
            return Column(
              children: [
                for (final b in matches)
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(b.title, maxLines: 2, overflow: TextOverflow.ellipsis),
                    subtitle: Text([
                      if ((b.author ?? '').isNotEmpty) b.author!,
                      '${b.availableCopies} available',
                    ].join('  ·  ')),
                    onTap: () => setState(() => _book = b),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _studentPicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        LibrarySearchField(
          controller: _studentSearch,
          hint: 'Admission no. or name',
          onChanged: _onStudentQuery,
        ),
        const SizedBox(height: 8),
        if (_studentQuery.length < 2)
          const Padding(padding: EdgeInsets.all(8), child: Text('Type at least 2 characters to search.'))
        else
          ref.watch(librarianStudentSearchProvider(_studentQuery)).when(
                loading: () => const Padding(padding: EdgeInsets.all(16), child: Center(child: CircularProgressIndicator())),
                error: (e, _) => Text(describeError(e)),
                data: (hits) => hits.isEmpty
                    ? const Padding(padding: EdgeInsets.all(8), child: Text('No student found.'))
                    : Column(
                        children: [
                          for (final s in hits)
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text(s.fullName.isEmpty ? 'Student' : s.fullName),
                              subtitle: Text([
                                if ((s.admissionNo ?? '').isNotEmpty) 'Adm. ${s.admissionNo}',
                                if (s.classLabel.isNotEmpty) s.classLabel,
                              ].join('  ·  ')),
                              onTap: () => setState(() => _student = s),
                            ),
                        ],
                      ),
              ),
      ],
    );
  }
}

class _Chosen extends StatelessWidget {
  const _Chosen({required this.title, required this.subtitle, required this.onClear});

  final String title;
  final String subtitle;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.check_circle, color: Colors.green),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
              if (subtitle.isNotEmpty) Text(subtitle, style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant)),
            ],
          ),
        ),
        TextButton(onPressed: onClear, child: const Text('Change')),
      ],
    );
  }
}
