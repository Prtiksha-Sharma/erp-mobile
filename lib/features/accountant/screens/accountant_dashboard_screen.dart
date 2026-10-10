import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/models/accountant.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/stat_tile.dart';
import '../providers/accountant_providers.dart';
import 'accountant_page_scaffold.dart';

/// Accountant dashboard — GET /accountant/dashboard: today's and this
/// month's counter collection (PAID receipts only), pending fees, library
/// fines and online-payment issues, plus shortcuts to the daily tasks.
class AccountantDashboardScreen extends ConsumerWidget {
  const AccountantDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(accountantDashboardProvider);
    final name = ref.watch(accountantProfileProvider).value?.fullName ?? ref.watch(authProvider).user?.fullName;

    return AccountantPageScaffold(
      title: 'Dashboard',
      body: AsyncValueView<AccountantDashboard>(
        value: value,
        onRetry: () => ref.invalidate(accountantDashboardProvider),
        data: (d) => ResponsiveListView(
          onRefresh: () => ref.refresh(accountantDashboardProvider.future),
          children: [
            Text(
              name == null || name.isEmpty ? 'Welcome back' : 'Welcome back, $name',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 4),
            Text("Here's today's fee desk at a glance.",
                style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant)),
            const SizedBox(height: 16),
            _StatGrid(
              tiles: [
                StatTile(
                  value: formatAmount(d.todaysCollection),
                  label: "Today's collection",
                  icon: Icons.today_outlined,
                  color: AppColors.success,
                  tinted: true,
                ),
                StatTile(
                  value: formatAmount(d.thisMonthCollection),
                  label: 'This month',
                  icon: Icons.calendar_month_outlined,
                  color: AppColors.primary,
                  tinted: true,
                ),
                StatTile(
                  value: formatAmount(d.pendingFeesAmount),
                  label: '${d.studentsWithPendingFees} students with dues',
                  icon: Icons.pending_actions_outlined,
                  color: AppColors.warning,
                  tinted: true,
                ),
                StatTile(
                  value: formatAmount(d.pendingLibraryFines),
                  label: 'Library fines pending',
                  icon: Icons.local_library_outlined,
                  color: AppColors.violet,
                  tinted: true,
                ),
              ],
            ),
            const SizedBox(height: 12),
            DividedCard(
              children: [
                ListTile(
                  leading: const Icon(Icons.hourglass_top_outlined, color: AppColors.warning),
                  title: const Text('Online payments pending'),
                  trailing: Text('${d.pendingOnlinePayments}',
                      style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                  onTap: () => context.go('/accountant/online-payments'),
                ),
                ListTile(
                  leading: Icon(Icons.error_outline, color: d.failedOnlinePayments > 0 ? AppColors.danger : AppColors.success),
                  title: const Text('Online payments failed'),
                  trailing: Text('${d.failedOnlinePayments}',
                      style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                  onTap: () => context.go('/accountant/online-payments'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const SectionLabel('Quick actions'),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                FilledButton.icon(
                  onPressed: () => context.go('/accountant/collect'),
                  icon: const Icon(Icons.point_of_sale_outlined),
                  label: const Text('Collect fee'),
                ),
                OutlinedButton.icon(
                  onPressed: () => context.go('/accountant/receipts'),
                  icon: const Icon(Icons.receipt_long_outlined),
                  label: const Text('Receipts'),
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
