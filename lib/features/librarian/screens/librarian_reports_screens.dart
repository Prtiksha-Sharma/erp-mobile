import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/library.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/stat_tile.dart';
import '../providers/librarian_providers.dart';
import 'librarian_fines_screen.dart' show FineRecordTile;
import 'librarian_page_scaffold.dart';
import 'librarian_records_screen.dart' show IssueTile;

/// Library reports hub — one tile per GET /librarian/reports/* endpoint.
class LibrarianReportsHubScreen extends StatelessWidget {
  const LibrarianReportsHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const items = [
      (Icons.inventory_2_outlined, 'Inventory', 'Titles, copies and stock by category', 'inventory'),
      (Icons.upload_outlined, 'Issued books', 'Books currently out', 'issued'),
      (Icons.download_outlined, 'Returned books', 'Books brought back', 'returned'),
      (Icons.warning_amber_outlined, 'Overdue books', 'Late books with running fines', 'overdue'),
      (Icons.payments_outlined, 'Fine collection', 'Fines collected so far', 'fine-collection'),
      (Icons.person_search_outlined, 'Student borrowing history', 'Everything one student has borrowed', 'student-history'),
    ];
    return LibrarianPageScaffold(
      title: 'Library Reports',
      body: ResponsiveListView(
        children: [
          DividedCard(
            children: [
              for (final (icon, title, subtitle, path) in items)
                ListTile(
                  leading: Icon(icon, color: AppColors.primary),
                  title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: Text(subtitle),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => context.go('/librarian/reports/$path'),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class LibrarianInventoryReportScreen extends ConsumerWidget {
  const LibrarianInventoryReportScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(librarianInventoryReportProvider);
    return LibrarianPageScaffold(
      title: 'Inventory Report',
      body: AsyncValueView<InventoryReport>(
        value: value,
        onRetry: () => ref.invalidate(librarianInventoryReportProvider),
        data: (r) => ResponsiveListView(
          onRefresh: () => ref.refresh(librarianInventoryReportProvider.future),
          children: [
            Row(
              children: [
                Expanded(child: StatTile(value: '${r.totalTitles}', label: 'Titles', tinted: true, color: AppColors.primary)),
                const SizedBox(width: 12),
                Expanded(child: StatTile(value: '${r.totalCopies}', label: 'Copies', tinted: true, color: AppColors.primary)),
                const SizedBox(width: 12),
                Expanded(child: StatTile(value: '${r.availableCopies}', label: 'Available', tinted: true, color: AppColors.success)),
              ],
            ),
            const SizedBox(height: 20),
            const SectionLabel('By category'),
            if (r.byCategory.isEmpty)
              const EmptyCard(icon: Icons.category_outlined, title: 'No books yet')
            else
              DividedCard(
                children: [
                  for (final c in r.byCategory)
                    ListTile(
                      title: Text((c.category ?? '').trim().isEmpty ? 'Uncategorised' : c.category!),
                      subtitle: Text('${c.titles} title(s)'),
                      trailing: Text('${c.availableCopies}/${c.totalCopies} available',
                          style: const TextStyle(fontWeight: FontWeight.w600)),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class _IssueListReport extends ConsumerWidget {
  const _IssueListReport({
    required this.title,
    required this.provider,
    required this.emptyTitle,
    required this.showFine,
  });

  final String title;
  final FutureProvider<List<BookIssue>> provider;
  final String emptyTitle;
  final bool showFine;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LibrarianPageScaffold(
      title: title,
      body: AsyncValueView<List<BookIssue>>(
        value: ref.watch(provider),
        onRetry: () => ref.invalidate(provider),
        data: (rows) => ResponsiveListView(
          onRefresh: () => ref.refresh(provider.future),
          children: [
            Text('${rows.length} record(s)', style: const TextStyle(fontWeight: FontWeight.w600)),
            const SizedBox(height: 12),
            if (rows.isEmpty)
              EmptyCard(icon: Icons.inbox_outlined, title: emptyTitle)
            else
              DividedCard(children: [for (final r in rows) IssueTile(issue: r, showFine: showFine)]),
          ],
        ),
      ),
    );
  }
}

class LibrarianIssuedReportScreen extends StatelessWidget {
  const LibrarianIssuedReportScreen({super.key});

  @override
  Widget build(BuildContext context) => _IssueListReport(
        title: 'Issued Books',
        provider: librarianIssuedReportProvider,
        emptyTitle: 'No books are currently issued',
        showFine: true,
      );
}

class LibrarianReturnedReportScreen extends StatelessWidget {
  const LibrarianReturnedReportScreen({super.key});

  @override
  Widget build(BuildContext context) => _IssueListReport(
        title: 'Returned Books',
        provider: librarianReturnedReportProvider,
        emptyTitle: 'No books returned yet',
        showFine: false,
      );
}

class LibrarianOverdueReportScreen extends ConsumerWidget {
  const LibrarianOverdueReportScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LibrarianPageScaffold(
      title: 'Overdue Books',
      body: AsyncValueView<OverdueReport>(
        value: ref.watch(librarianOverdueReportProvider),
        onRetry: () => ref.invalidate(librarianOverdueReportProvider),
        data: (r) => ResponsiveListView(
          onRefresh: () => ref.refresh(librarianOverdueReportProvider.future),
          children: [
            Row(
              children: [
                Expanded(child: StatTile(value: '${r.count}', label: 'Overdue books', tinted: true, color: AppColors.danger)),
                const SizedBox(width: 12),
                Expanded(
                  child: StatTile(value: formatAmount(r.totalFine), label: 'Fines accruing', tinted: true, color: AppColors.warning),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (r.items.isEmpty)
              const EmptyCard(icon: Icons.check_circle_outline, title: 'Nothing is overdue')
            else
              DividedCard(children: [for (final i in r.items) IssueTile(issue: i)]),
          ],
        ),
      ),
    );
  }
}

class LibrarianFineCollectionReportScreen extends ConsumerWidget {
  const LibrarianFineCollectionReportScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LibrarianPageScaffold(
      title: 'Fine Collection',
      body: AsyncValueView<FineCollectionReport>(
        value: ref.watch(librarianFineCollectionReportProvider),
        onRetry: () => ref.invalidate(librarianFineCollectionReportProvider),
        data: (r) => ResponsiveListView(
          onRefresh: () => ref.refresh(librarianFineCollectionReportProvider.future),
          children: [
            Row(
              children: [
                Expanded(
                  child: StatTile(value: formatAmount(r.totalCollected), label: 'Total collected', tinted: true, color: AppColors.success),
                ),
                const SizedBox(width: 12),
                Expanded(child: StatTile(value: '${r.count}', label: 'Fines paid', tinted: true, color: AppColors.primary)),
              ],
            ),
            const SizedBox(height: 16),
            if (r.items.isEmpty)
              const EmptyCard(icon: Icons.payments_outlined, title: 'No fines collected yet')
            else
              DividedCard(children: [for (final f in r.items) FineRecordTile(record: f)]),
          ],
        ),
      ),
    );
  }
}

/// Student borrowing history — search a student, then GET
/// /librarian/reports/student/:studentId/borrowing-history.
class LibrarianBorrowingHistoryScreen extends ConsumerStatefulWidget {
  const LibrarianBorrowingHistoryScreen({super.key});

  @override
  ConsumerState<LibrarianBorrowingHistoryScreen> createState() => _LibrarianBorrowingHistoryScreenState();
}

class _LibrarianBorrowingHistoryScreenState extends ConsumerState<LibrarianBorrowingHistoryScreen> {
  final _search = TextEditingController();
  String _query = '';
  Timer? _debounce;
  LibraryStudentHit? _student;

  @override
  void dispose() {
    _debounce?.cancel();
    _search.dispose();
    super.dispose();
  }

  void _onQuery(String v) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 350), () {
      if (mounted) setState(() => _query = v.trim());
    });
  }

  @override
  Widget build(BuildContext context) {
    final student = _student;
    return LibrarianPageScaffold(
      title: 'Borrowing History',
      body: ResponsiveListView(
        children: [
          if (student == null) ...[
            LibrarySearchField(controller: _search, hint: 'Admission no. or student name', onChanged: _onQuery),
            const SizedBox(height: 12),
            if (_query.length < 2)
              const EmptyCard(
                icon: Icons.person_search_outlined,
                title: 'Find a student',
                message: 'Type at least 2 characters of the name or admission number.',
              )
            else
              ref.watch(librarianStudentSearchProvider(_query)).when(
                    loading: () => const Padding(padding: EdgeInsets.all(24), child: Center(child: CircularProgressIndicator())),
                    error: (e, _) => Text(describeError(e)),
                    data: (hits) => hits.isEmpty
                        ? const EmptyCard(icon: Icons.search_off, title: 'No student found')
                        : DividedCard(
                            children: [
                              for (final s in hits)
                                ListTile(
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
          ] else ...[
            Row(
              children: [
                Expanded(
                  child: Text(
                    student.fullName.isEmpty ? 'Student' : student.fullName,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                TextButton(onPressed: () => setState(() => _student = null), child: const Text('Change')),
              ],
            ),
            const SizedBox(height: 12),
            ref.watch(librarianBorrowingHistoryProvider(student.studentId)).when(
                  loading: () => const Padding(padding: EdgeInsets.all(24), child: Center(child: CircularProgressIndicator())),
                  error: (e, _) => Text(describeError(e)),
                  data: (rows) => rows.isEmpty
                      ? const EmptyCard(icon: Icons.menu_book_outlined, title: 'No borrowing history', message: 'This student has not borrowed any book.')
                      : DividedCard(children: [for (final r in rows) IssueTile(issue: r)]),
                ),
          ],
        ],
      ),
    );
  }
}
