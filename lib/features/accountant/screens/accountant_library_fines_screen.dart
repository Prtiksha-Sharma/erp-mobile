import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/library.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/accountant_providers.dart';
import 'accountant_page_scaffold.dart';

/// Library fines — read-only visibility (the Librarian collects them):
/// GET /accountant/library-fines/pending (locked-in fines on returned books
/// + live fines still accruing on overdue books) and /history.
class AccountantLibraryFinesScreen extends ConsumerStatefulWidget {
  const AccountantLibraryFinesScreen({super.key});

  @override
  ConsumerState<AccountantLibraryFinesScreen> createState() => _AccountantLibraryFinesScreenState();
}

class _AccountantLibraryFinesScreenState extends ConsumerState<AccountantLibraryFinesScreen> {
  bool _history = false;

  @override
  Widget build(BuildContext context) {
    return AccountantPageScaffold(
      title: 'Library Fines',
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: SegmentedButton<bool>(
              segments: const [
                ButtonSegment(value: false, label: Text('Pending')),
                ButtonSegment(value: true, label: Text('History')),
              ],
              selected: {_history},
              showSelectedIcon: false,
              onSelectionChanged: (v) => setState(() => _history = v.first),
            ),
          ),
          Expanded(child: _history ? _historyView() : _pendingView()),
        ],
      ),
    );
  }

  Widget _pendingView() {
    final value = ref.watch(pendingLibraryFinesProvider);
    return AsyncValueView<PendingFines>(
      value: value,
      onRetry: () => ref.invalidate(pendingLibraryFinesProvider),
      data: (p) {
        final locked = p.returnedUnpaid.fold(Decimal.zero, (s, f) => s + f.fineAmount);
        final accruing = p.stillIssuedOverdue.fold(Decimal.zero, (s, i) => s + i.fineAmount);
        return ResponsiveListView(
          onRefresh: () => ref.refresh(pendingLibraryFinesProvider.future),
          children: [
            Text('Collected at the library counter — shown here for the books.',
                style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant)),
            const SizedBox(height: 12),
            SectionLabel('Returned, unpaid · ${formatAmount(locked)}'),
            if (p.returnedUnpaid.isEmpty)
              const EmptyCard(icon: Icons.check_circle_outline, title: 'No unpaid fines on returned books')
            else
              DividedCard(
                children: [
                  for (final f in p.returnedUnpaid)
                    ListTile(
                      title: Text(f.students?.fullName ?? 'Student'),
                      subtitle: Text([f.books?.title, if (f.returnedAt != null) 'returned ${formatDate(f.returnedAt)}']
                          .whereType<String>()
                          .join(' · ')),
                      trailing: Text(formatAmount(f.fineAmount), style: const TextStyle(fontWeight: FontWeight.w700)),
                    ),
                ],
              ),
            const SizedBox(height: 16),
            SectionLabel('Still out, overdue · ${formatAmount(accruing)}'),
            if (p.stillIssuedOverdue.isEmpty)
              const EmptyCard(icon: Icons.check_circle_outline, title: 'No overdue books')
            else
              DividedCard(
                children: [
                  for (final i in p.stillIssuedOverdue)
                    ListTile(
                      title: Text(i.studentName.isEmpty ? 'Student' : i.studentName),
                      subtitle: Text([i.books?.title, '${i.overdueDays} days overdue'].whereType<String>().join(' · ')),
                      trailing: Text(formatAmount(i.fineAmount),
                          style: const TextStyle(fontWeight: FontWeight.w700, color: AppColors.danger)),
                    ),
                ],
              ),
          ],
        );
      },
    );
  }

  Widget _historyView() {
    final value = ref.watch(libraryFineHistoryProvider);
    return AsyncValueView<List<FineRecord>>(
      value: value,
      onRetry: () => ref.invalidate(libraryFineHistoryProvider),
      data: (rows) => ResponsiveListView(
        onRefresh: () => ref.refresh(libraryFineHistoryProvider.future),
        children: [
          if (rows.isEmpty)
            const EmptyCard(icon: Icons.history, title: 'No library fines yet')
          else
            DividedCard(
              children: [
                for (final f in rows)
                  ListTile(
                    title: Text(f.issue?.students?.fullName ?? 'Student'),
                    subtitle: Text([
                      f.issue?.books?.title,
                      f.finePaid ? 'paid ${formatDate(f.finePaidAt)}' : 'raised ${formatDate(f.createdAt)}',
                    ].whereType<String>().join(' · ')),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(formatAmount(f.fineAmount), style: const TextStyle(fontWeight: FontWeight.w700)),
                        f.finePaid
                            ? const StatusBadge(label: 'Paid', variant: BadgeVariant.success)
                            : const StatusBadge(label: 'Unpaid', variant: BadgeVariant.warning),
                      ],
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
