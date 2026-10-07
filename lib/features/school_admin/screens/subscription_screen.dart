import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/school_admin_settings.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/error_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/school_admin_providers.dart';
import 'school_admin_page_scaffold.dart';

/// SubscriptionPage STATUS_VARIANT.
BadgeVariant _statusVariant(String? s) => switch (s) {
  'ACTIVE' => BadgeVariant.success,
  'TRIAL' => BadgeVariant.primary,
  'EXPIRED' => BadgeVariant.danger,
  _ => BadgeVariant.neutral, // INACTIVE, unknown
};

/// Subscription — web features/school-admin/subscription/SubscriptionPage.jsx.
/// Read-only: only Super Admin changes plan/pricing.
class SubscriptionScreen extends ConsumerWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sub = ref.watch(subscriptionProvider);
    return SchoolAdminPageScaffold(
      title: 'Subscription',
      body: sub.when(
        skipLoadingOnRefresh: true,
        loading: () => const LoadingView(label: 'Loading subscription…'),
        error: (_, _) => ErrorView(
          message: 'Failed to load subscription details.',
          onRetry: () => ref.invalidate(subscriptionProvider),
        ),
        data: (data) => ResponsiveListView(
          onRefresh: () => ref.refresh(subscriptionProvider.future).then<void>((_) {}, onError: (_) {}),
          children: [
            const PageHeading(icon: Icons.credit_card_outlined, title: 'Subscription'),
            const SizedBox(height: 16),
            _PlanCard(data: data),
          ],
        ),
      ),
    );
  }
}

class _PlanCard extends StatelessWidget {
  const _PlanCard({required this.data});

  final SchoolSubscription data;

  @override
  Widget build(BuildContext context) {
    final plan = data.subscriptionPlan;
    Widget field(String label, String value) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
        ),
      ],
    );
    String limit(int? v, [String suffix = '']) => v != null ? '$v$suffix' : '—';
    const divider = Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Divider(height: 1, color: AppColors.border),
    );

    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'CURRENT PLAN',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.8,
                        color: AppColors.primary,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      plan?.planName ?? 'No plan assigned',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              StatusBadge(label: data.subscriptionStatus ?? '—', variant: _statusVariant(data.subscriptionStatus)),
            ],
          ),
          const SizedBox(height: 16),
          if (plan == null)
            const Text(
              'No plan assigned — contact your platform administrator.',
              style: TextStyle(color: AppColors.textMuted),
            )
          else ...[
            Text.rich(
              TextSpan(
                text: formatAmount(plan.price),
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: AppColors.primary),
                children: const [
                  TextSpan(
                    text: '/mo',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textMuted),
                  ),
                ],
              ),
            ),
            divider,
            ResponsiveGrid(
              minItemWidth: 130,
              minColumns: 2,
              maxColumns: 4,
              spacing: 16,
              children: [
                field('Max Students', limit(plan.maxStudents)),
                field('Max Teachers', limit(plan.maxTeachers)),
                field('Max Branches', limit(plan.maxBranches)),
                field('Storage', limit(plan.maxStorageGb, ' GB')),
              ],
            ),
            divider,
            Row(
              children: [
                Expanded(
                  child: field(
                    'Start Date',
                    data.subscriptionStartDate != null ? formatDate(data.subscriptionStartDate) : '—',
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: field(
                    'Renewal Date',
                    data.subscriptionEndDate != null ? formatDate(data.subscriptionEndDate) : '—',
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
