import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/library.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/librarian_providers.dart';
import '../services/librarian_service.dart';
import 'librarian_page_scaffold.dart';

enum _IssueFilter { all, issued, overdue, returned }

/// Issue records — GET /librarian/issues; return a book with
/// PATCH /librarian/issues/:id/return (the fine, if any, is locked in then).
class LibrarianRecordsScreen extends ConsumerStatefulWidget {
  const LibrarianRecordsScreen({super.key});

  @override
  ConsumerState<LibrarianRecordsScreen> createState() => _LibrarianRecordsScreenState();
}

class _LibrarianRecordsScreenState extends ConsumerState<LibrarianRecordsScreen> {
  final _search = TextEditingController();
  String _query = '';
  _IssueFilter _filter = _IssueFilter.issued;

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  List<BookIssue> _apply(List<BookIssue> rows) {
    final q = _query.trim().toLowerCase();
    return rows.where((r) {
      switch (_filter) {
        case _IssueFilter.all:
          break;
        case _IssueFilter.issued:
          if (r.isReturned) return false;
        case _IssueFilter.overdue:
          if (!r.isOverdue) return false;
        case _IssueFilter.returned:
          if (!r.isReturned) return false;
      }
      if (q.isEmpty) return true;
      return [r.books?.title, r.books?.accessionNo, r.studentName, r.students?.admissionNo]
          .any((f) => (f ?? '').toLowerCase().contains(q));
    }).toList();
  }

  Future<void> _return(BookIssue issue) async {
    final fine = issue.fineAmount;
    final done = await showLibraryConfirm(
      context,
      title: 'Return this book?',
      message: '"${issue.books?.title ?? 'Book'}" from ${issue.studentName.isEmpty ? 'the student' : issue.studentName} '
          'will be marked returned.'
          '${issue.isOverdue ? '\n\nIt is ${issue.overdueDays} day(s) overdue. A fine of ${formatAmount(fine)} will be recorded.' : ''}',
      confirmLabel: 'Mark returned',
      action: () async {
        final result = await LibrarianService().returnBook(issue.issueId);
        return switch (result) {
          Ok() => null,
          Err(:final failure) => failure.userMessage,
        };
      },
    );
    if (!done || !mounted) return;
    invalidateLibraryData(ref);
    showSnack(context, 'Book returned');
  }

  @override
  Widget build(BuildContext context) {
    final value = ref.watch(librarianIssuesProvider);
    return LibrarianPageScaffold(
      title: 'Issue Records',
      body: AsyncValueView<List<BookIssue>>(
        value: value,
        onRetry: () => ref.invalidate(librarianIssuesProvider),
        data: (rows) {
          final filtered = _apply(rows);
          return ResponsiveListView(
            onRefresh: () => ref.refresh(librarianIssuesProvider.future),
            children: [
              LibrarySearchField(
                controller: _search,
                hint: 'Search book, student or admission no.',
                onChanged: (v) => setState(() => _query = v),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                children: [
                  for (final f in _IssueFilter.values)
                    ChoiceChip(
                      label: Text(switch (f) {
                        _IssueFilter.all => 'All',
                        _IssueFilter.issued => 'Issued',
                        _IssueFilter.overdue => 'Overdue',
                        _IssueFilter.returned => 'Returned',
                      }),
                      selected: _filter == f,
                      onSelected: (_) => setState(() => _filter = f),
                    ),
                ],
              ),
              const SizedBox(height: 16),
              if (filtered.isEmpty)
                EmptyCard(
                  icon: Icons.swap_horiz_outlined,
                  title: rows.isEmpty ? 'No books issued yet' : 'No records match',
                  message: rows.isEmpty ? 'Issued books will appear here.' : 'Try a different filter or search.',
                )
              else
                DividedCard(
                  children: [
                    for (final r in filtered) IssueTile(issue: r, onReturn: r.isReturned ? null : () => _return(r)),
                  ],
                ),
            ],
          );
        },
      ),
    );
  }
}

/// One loan row — shared by the records screen and the reports.
class IssueTile extends StatelessWidget {
  const IssueTile({super.key, required this.issue, this.onReturn, this.showFine = true});

  final BookIssue issue;
  final VoidCallback? onReturn;
  final bool showFine;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final badge = issueBadge(issue.isReturned, issue.isOverdue);
    final hasFine = issue.fineAmount > Decimal.zero;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 8, 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(issue.books?.title ?? 'Book',
                    maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(height: 2),
                Text(
                  [
                    if (issue.studentName.isNotEmpty) issue.studentName,
                    if ((issue.students?.admissionNo ?? '').isNotEmpty) 'Adm. ${issue.students!.admissionNo}',
                  ].join('  ·  '),
                  style: TextStyle(color: scheme.onSurfaceVariant),
                ),
                const SizedBox(height: 2),
                Text(
                  issue.isReturned
                      ? 'Issued ${formatDate(issue.issueDate)}  ·  Returned ${formatDate(issue.returnedAt)}'
                      : 'Issued ${formatDate(issue.issueDate)}  ·  Due ${formatDate(issue.dueDate)}',
                  style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 12.5),
                ),
                const SizedBox(height: 6),
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: [
                    StatusBadge(label: badge.label, variant: badge.variant),
                    if (issue.isOverdue) StatusBadge(label: '${issue.overdueDays} day(s) late', variant: BadgeVariant.danger),
                    if (showFine && hasFine)
                      StatusBadge(
                        label: issue.isReturned && issue.finePaid
                            ? 'Fine ${formatAmount(issue.fineAmount)} paid'
                            : 'Fine ${formatAmount(issue.fineAmount)}',
                        variant: issue.isReturned && issue.finePaid ? BadgeVariant.success : BadgeVariant.warning,
                      ),
                  ],
                ),
              ],
            ),
          ),
          if (onReturn != null)
            TextButton(onPressed: onReturn, child: const Text('Return')),
        ],
      ),
    );
  }
}
