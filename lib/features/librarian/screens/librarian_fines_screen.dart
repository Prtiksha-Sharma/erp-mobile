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
import 'librarian_records_screen.dart' show IssueTile;

/// Fines — pending (locked-in fines on returned books, plus fines still
/// accruing on overdue books) and history. "Mark paid" is only available for
/// locked-in fines (PATCH /librarian/fines/:id/pay); fine rates are read-only
/// here and set by the School Admin.
class LibrarianFinesScreen extends ConsumerWidget {
  const LibrarianFinesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: LibrarianPageScaffold(
        title: 'Fines',
        body: Column(
          children: [
            const Material(
              child: TabBar(tabs: [Tab(text: 'Pending'), Tab(text: 'History')]),
            ),
            const Expanded(child: TabBarView(children: [_PendingTab(), _HistoryTab()])),
          ],
        ),
      ),
    );
  }
}

class _PolicyBanner extends ConsumerWidget {
  const _PolicyBanner();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(librarianFineSettingsProvider).value;
    if (settings == null) return const SizedBox.shrink();
    final parts = [
      '${formatAmount(settings.ratePerDay)} per day',
      if (settings.gracePeriodDays > 0) '${settings.gracePeriodDays} day grace',
      if (settings.maxFinePerBook != null) 'max ${formatAmount(settings.maxFinePerBook)} per book',
    ];
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(Icons.info_outline, size: 18, color: Theme.of(context).colorScheme.onSurfaceVariant),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              'Fine policy: ${parts.join(' · ')}',
              style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant, fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}

class _PendingTab extends ConsumerWidget {
  const _PendingTab();

  Future<void> _pay(BuildContext context, WidgetRef ref, PendingFine fine) async {
    final done = await showLibraryConfirm(
      context,
      title: 'Mark fine as paid?',
      message: '${formatAmount(fine.fineAmount)} for "${fine.books?.title ?? 'book'}" '
          'from ${fine.students?.fullName ?? 'the student'}. This cannot be undone.',
      confirmLabel: 'Mark paid',
      action: () async {
        final result = await LibrarianService().markFinePaid(fine.fineId);
        return switch (result) {
          Ok() => null,
          Err(:final failure) => failure.userMessage,
        };
      },
    );
    if (!done || !context.mounted) return;
    invalidateLibraryData(ref);
    showSnack(context, 'Fine marked as paid');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(librarianPendingFinesProvider);
    return AsyncValueView<PendingFines>(
      value: value,
      onRetry: () => ref.invalidate(librarianPendingFinesProvider),
      data: (data) => ResponsiveListView(
        onRefresh: () => ref.refresh(librarianPendingFinesProvider.future),
        children: [
          const _PolicyBanner(),
          const SectionLabel('Ready to collect'),
          if (data.returnedUnpaid.isEmpty)
            const EmptyCard(icon: Icons.payments_outlined, title: 'No unpaid fines', message: 'Fines on returned books appear here.')
          else
            DividedCard(
              children: [
                for (final f in data.returnedUnpaid)
                  ListTile(
                    title: Text(f.books?.title ?? 'Book', maxLines: 2, overflow: TextOverflow.ellipsis),
                    subtitle: Text([
                      if ((f.students?.fullName ?? '').isNotEmpty) f.students!.fullName,
                      if (f.returnedAt != null) 'Returned ${formatDate(f.returnedAt)}',
                    ].join('  ·  ')),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(formatAmount(f.fineAmount), style: const TextStyle(fontWeight: FontWeight.w700)),
                        SizedBox(
                          height: 28,
                          child: TextButton(
                            style: TextButton.styleFrom(padding: EdgeInsets.zero, minimumSize: const Size(0, 28)),
                            onPressed: () => _pay(context, ref, f),
                            child: const Text('Mark paid'),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          const SizedBox(height: 20),
          const SectionLabel('Still accruing (books not returned)'),
          if (data.stillIssuedOverdue.isEmpty)
            const EmptyCard(icon: Icons.check_circle_outline, title: 'No overdue books')
          else
            DividedCard(children: [for (final i in data.stillIssuedOverdue) IssueTile(issue: i)]),
        ],
      ),
    );
  }
}

class _HistoryTab extends ConsumerWidget {
  const _HistoryTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(librarianFineHistoryProvider);
    return AsyncValueView<List<FineRecord>>(
      value: value,
      onRetry: () => ref.invalidate(librarianFineHistoryProvider),
      data: (rows) => ResponsiveListView(
        onRefresh: () => ref.refresh(librarianFineHistoryProvider.future),
        children: [
          if (rows.isEmpty)
            const EmptyCard(icon: Icons.history, title: 'No fines yet', message: 'Every fine charged on a return is listed here.')
          else
            DividedCard(children: [for (final r in rows) FineRecordTile(record: r)]),
        ],
      ),
    );
  }
}

/// One fine row — shared by the history tab and the collection report.
class FineRecordTile extends StatelessWidget {
  const FineRecordTile({super.key, required this.record});

  final FineRecord record;

  @override
  Widget build(BuildContext context) {
    final issue = record.issue;
    return ListTile(
      title: Text(issue?.books?.title ?? 'Book', maxLines: 2, overflow: TextOverflow.ellipsis),
      subtitle: Text([
        if ((issue?.students?.fullName ?? '').isNotEmpty) issue!.students!.fullName,
        if (record.finePaid && record.finePaidAt != null) 'Paid ${formatDate(record.finePaidAt)}',
        if (!record.finePaid && issue?.returnedAt != null) 'Returned ${formatDate(issue!.returnedAt)}',
      ].join('  ·  ')),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(formatAmount(record.fineAmount), style: const TextStyle(fontWeight: FontWeight.w700)),
          const SizedBox(height: 4),
          StatusBadge(
            label: record.finePaid ? 'Paid' : 'Unpaid',
            variant: record.finePaid ? BadgeVariant.success : BadgeVariant.warning,
          ),
        ],
      ),
    );
  }
}
