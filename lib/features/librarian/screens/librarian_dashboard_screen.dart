import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/models/library.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/stat_tile.dart';
import '../providers/librarian_providers.dart';
import 'librarian_page_scaffold.dart';

/// Librarian dashboard — GET /librarian/dashboard: stock and loan totals,
/// pending fines, today's activity, plus shortcuts to the daily tasks.
class LibrarianDashboardScreen extends ConsumerWidget {
  const LibrarianDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(librarianDashboardProvider);
    final user = ref.watch(authProvider).user;
    final name = ref.watch(librarianProfileProvider).value?.fullName ?? user?.fullName;

    return LibrarianPageScaffold(
      title: 'Dashboard',
      body: AsyncValueView<LibrarianDashboard>(
        value: value,
        onRetry: () => ref.invalidate(librarianDashboardProvider),
        data: (d) => ResponsiveListView(
          onRefresh: () => ref.refresh(librarianDashboardProvider.future),
          children: [
            Text(
              name == null || name.isEmpty ? 'Welcome back' : 'Welcome back, $name',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 4),
            Text(
              "Here's the library at a glance.",
              style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
            const SizedBox(height: 16),
            _StatGrid(
              tiles: [
                StatTile(
                  value: '${d.totalBooks}',
                  label: 'Titles',
                  icon: Icons.menu_book_outlined,
                  color: AppColors.primary,
                  tinted: true,
                ),
                StatTile(
                  value: '${d.availableBooks}',
                  label: 'Copies available',
                  icon: Icons.inventory_2_outlined,
                  color: AppColors.success,
                  tinted: true,
                ),
                StatTile(
                  value: '${d.issuedBooks}',
                  label: 'Currently issued',
                  icon: Icons.swap_horiz_outlined,
                  color: AppColors.primary,
                  tinted: true,
                ),
                StatTile(
                  value: '${d.overdueBooks}',
                  label: 'Overdue',
                  icon: Icons.warning_amber_outlined,
                  color: d.overdueBooks > 0 ? AppColors.danger : AppColors.success,
                  tinted: true,
                ),
              ],
            ),
            const SizedBox(height: 12),
            _FinesCard(amount: d.pendingFines, onTap: () => context.go('/librarian/fines')),
            const SizedBox(height: 20),
            const SectionLabel("Today's activity"),
            DividedCard(
              children: [
                _ActivityRow(icon: Icons.arrow_upward, label: 'Books issued today', count: d.todayActivity.issued),
                _ActivityRow(icon: Icons.arrow_downward, label: 'Books returned today', count: d.todayActivity.returned),
              ],
            ),
            const SizedBox(height: 20),
            const SectionLabel('Quick actions'),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                FilledButton.icon(
                  onPressed: () => context.go('/librarian/issue'),
                  icon: const Icon(Icons.library_add_outlined),
                  label: const Text('Issue a book'),
                ),
                OutlinedButton.icon(
                  onPressed: () => context.go('/librarian/records'),
                  icon: const Icon(Icons.assignment_return_outlined),
                  label: const Text('Return a book'),
                ),
                OutlinedButton.icon(
                  onPressed: () => context.go('/librarian/books'),
                  icon: const Icon(Icons.menu_book_outlined),
                  label: const Text('Catalog'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _StatGrid extends StatelessWidget {
  const _StatGrid({required this.tiles});

  final List<Widget> tiles;

  @override
  Widget build(BuildContext context) {
    // Rows sized by their content (not a fixed aspect ratio) so large text
    // scales and narrow phones never clip a tile.
    final columns = context.isTabletWidth ? 4 : 2;
    return Column(
      children: [
        for (var start = 0; start < tiles.length; start += columns) ...[
          if (start > 0) const SizedBox(height: 12),
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (var i = start; i < start + columns; i++) ...[
                  if (i > start) const SizedBox(width: 12),
                  Expanded(child: i < tiles.length ? tiles[i] : const SizedBox.shrink()),
                ],
              ],
            ),
          ),
        ],
      ],
    );
  }
}

class _FinesCard extends StatelessWidget {
  const _FinesCard({required this.amount, required this.onTap});

  final Decimal amount;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.6)),
      ),
      child: ListTile(
        onTap: onTap,
        leading: const Icon(Icons.payments_outlined, color: AppColors.warning),
        title: const Text('Pending fines'),
        subtitle: const Text('Includes fines still accruing on overdue books'),
        trailing: Text(
          formatAmount(amount),
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        ),
      ),
    );
  }
}

class _ActivityRow extends StatelessWidget {
  const _ActivityRow({required this.icon, required this.label, required this.count});

  final IconData icon;
  final String label;
  final int count;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primary),
      title: Text(label),
      trailing: Text('$count', style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
    );
  }
}
